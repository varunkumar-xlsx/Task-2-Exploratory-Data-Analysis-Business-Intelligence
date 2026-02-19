select count(*) from cleaned_data

--> What is the total sales?
Select sum(Sales) 
from cleaned_data;  

--> Which are the top 5 products by sales?
select Product_Name,
sum(Sales) as Total_sales
from cleaned_data
group by product_name
order by Total_sales desc
limit 5 

-->Which category genarates highest sales?
select category,sum(sales) as Totalsales
from cleaned_data
group by category
order by totalsales desc
limit 5;

--> How do sales vary over time(Monthly trend)?
select 
date_format(Order_Date,'%Y-%m') as Month,
sum(sales) as Monthly_sales
from cleaned_data
group by month
order by month;

--> Which region can did best performance?
select region,sum(sales) as Sales_by_region
from cleaned_data
group by region
order by region desc;


