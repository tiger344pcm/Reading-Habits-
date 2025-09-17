-- Here's a short structured project plan you can get on your workbench

SELECT * FROM 30_06.students_performance;

-- MySQL 
-- Count the number of students..
SELECT 
    COUNT(*) AS Number_Of_Students
FROM
    students_performance;
    
-- Gender distribution...
SELECT 
    COUNT(lunch) AS Total_in_numbers, gender
FROM
    students_performance
GROUP BY Gender;   

-- Performance In Gender
SELECT 
    gender,
    AVG(Math_score) AS Avg_Math_Score,
    AVG(Reading_score) AS Avg_reading_score,
    AVG(Writing_score) AS Avg_writing_score,
    AVG(total_score) AS Avg_total_score
FROM
    students_performance
GROUP BY gender;

-- Average score difference beteween prepared and not prepared.
SELECT 
    test_preparation_course,
    COUNT(average_score) AS Acerage_Score
FROM
    students_performance
GROUP BY test_preparation_course;

-- How Parental education impact students performance
SELECT 
    Parental_level_of_education,
    ROUND(AVG(average_score), 2) AS Avg_score
FROM
    students_performance
GROUP BY Parental_level_of_education;

-- Top 5 Students with their Marks--
SELECT 
    *
FROM
    students_performance
ORDER BY total_score DESC
LIMIT 5;

-- Bottom 5 students--
 SELECT 
    *
FROM
    students_performance
ORDER BY total_score ASC
LIMIT 5;

-- 
SELECT 
    race_ethnicity,
    AVG(Math_score) AS Avg_Math_Score,
    AVG(Reading_score) AS Avg_reading_score,
    AVG(Writing_score) AS Avg_writing_score,
    AVG(total_score) AS Avg_total_score
FROM
    students_performance
GROUP BY race_ethnicity;

-- 📌 Conclusion

-- Through this exploratory data analysis project using MySQL, I examined student performance across multiple 
-- dimensions including gender, parental education, race/ethnicity, and test preparation courses. 
-- The analysis revealed meaningful insights such as differences in average scores between male and female students, 
-- the positive impact of test preparation on performance, and the influence of parental education levels on student outcomes. 
-- Additionally, the study highlighted the top and bottom performers and provided a comparative view of performance 
-- across different ethnic groups.

-- This project demonstrates how SQL can be applied to uncover patterns and insights from educational data, 
-- which can be valuable for educators, policymakers, and students themselves. It also reflects my 
-- ability to work with relational databases, write structured queries, and translate raw data into actionable findings.

