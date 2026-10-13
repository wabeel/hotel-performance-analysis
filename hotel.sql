use hotel_importado;

with hotel as (
select * from t_2018
union all
select * from t_2019
union all
select * from t_2020
)

select * from hotel
left join market_segment
on hotel.market_segment = market_segment.market_segment
left join meal_cost
on meal_cost.meal = hotel.meal

