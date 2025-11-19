@interface PLSearchSuggestionDateUtility
+ (id)_dateFilterFromStartDateComponents:(id)a3 endDateComponents:(id)a4 calendar:(id)a5 numberOfMonthsAgo:(unint64_t)a6;
+ (id)_dateFilterFromStartDateComponents:(id)a3 endDateComponents:(id)a4 calendar:(id)a5 numberOfYearsAgo:(unint64_t)a6;
+ (id)_dateFilterFromStartDateComponents:(id)a3 endDateComponents:(id)a4 calendar:(id)a5 startDayOffset:(unint64_t)a6 startMonthOffset:(unint64_t)a7 startYearOffset:(unint64_t)a8 endDayOffset:(unint64_t)a9 endMonthOffset:(unint64_t)a10 endYearOffset:(unint64_t)a11;
+ (id)allTemplateDateTypes;
+ (id)dateFilterForSearchSuggestionTemplateDateType:(unint64_t)a3 calendar:(id)a4 relativeDate:(id)a5;
+ (id)templateKeyForDateTemplateType:(unint64_t)a3;
@end

@implementation PLSearchSuggestionDateUtility

+ (id)templateKeyForDateTemplateType:(unint64_t)a3
{
  if (a3 - 1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7564C48[a3 - 1];
  }
}

+ (id)_dateFilterFromStartDateComponents:(id)a3 endDateComponents:(id)a4 calendar:(id)a5 startDayOffset:(unint64_t)a6 startMonthOffset:(unint64_t)a7 startYearOffset:(unint64_t)a8 endDayOffset:(unint64_t)a9 endMonthOffset:(unint64_t)a10 endYearOffset:(unint64_t)a11
{
  v16 = a5;
  v17 = a4;
  v18 = a3;
  [v18 setDay:{objc_msgSend(v18, "day") + a6}];
  [v18 setMonth:{objc_msgSend(v18, "month") + a7}];
  [v18 setYear:{objc_msgSend(v18, "year") + a8}];
  [v17 setDay:{objc_msgSend(v17, "day") + a9}];
  [v17 setMonth:{objc_msgSend(v17, "month") + a10}];
  [v17 setYear:{objc_msgSend(v17, "year") + a11}];
  v19 = [v16 dateFromComponents:v18];

  v20 = [v16 dateFromComponents:v17];

  v21 = [v16 components:28 fromDate:v19];
  v22 = [v16 components:28 fromDate:v20];

  v23 = [[PSIDate alloc] initWithDateComponents:v21];
  v24 = [[PSIDate alloc] initWithDateComponents:v22];
  v25 = [[PSIDateFilter alloc] initWithStartDate:v23 endDate:v24];

  return v25;
}

+ (id)_dateFilterFromStartDateComponents:(id)a3 endDateComponents:(id)a4 calendar:(id)a5 numberOfMonthsAgo:(unint64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [v11 setDay:1];
  [v11 setMonth:{objc_msgSend(v11, "month") - a6}];
  v12 = [v9 dateFromComponents:v11];
  [v9 rangeOfUnit:16 inUnit:8 forDate:v12];
  v14 = v13;

  [v10 setDay:v14];
  [v10 setMonth:{objc_msgSend(v10, "month") - a6}];
  v15 = [[PSIDate alloc] initWithDateComponents:v11];

  v16 = [[PSIDate alloc] initWithDateComponents:v10];
  v17 = [[PSIDateFilter alloc] initWithStartDate:v15 endDate:v16];

  return v17;
}

+ (id)_dateFilterFromStartDateComponents:(id)a3 endDateComponents:(id)a4 calendar:(id)a5 numberOfYearsAgo:(unint64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [v11 setDay:1];
  [v11 setMonth:1];
  [v11 setYear:{objc_msgSend(v11, "year") - a6}];
  [v10 setDay:1];
  [v10 setYear:{objc_msgSend(v10, "year") - a6}];
  v12 = [v9 dateFromComponents:v11];
  [v9 rangeOfUnit:8 inUnit:4 forDate:v12];
  v14 = v13;

  [v10 setMonth:v14];
  v15 = [v9 dateFromComponents:v10];
  [v9 rangeOfUnit:16 inUnit:8 forDate:v15];
  v17 = v16;

  [v10 setDay:v17];
  v18 = [[PSIDate alloc] initWithDateComponents:v11];

  v19 = [[PSIDate alloc] initWithDateComponents:v10];
  v20 = [[PSIDateFilter alloc] initWithStartDate:v18 endDate:v19];

  return v20;
}

+ (id)allTemplateDateTypes
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  for (i = 1; i != 10; ++i)
  {
    [v2 addIndex:i];
  }

  return v2;
}

+ (id)dateFilterForSearchSuggestionTemplateDateType:(unint64_t)a3 calendar:(id)a4 relativeDate:(id)a5
{
  v8 = a4;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  v9 = a5;
  v10 = [v8 components:28 fromDate:v9];
  v11 = [v8 components:28 fromDate:v9];

  v12 = 0;
  if (a3 <= 4)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        [a1 _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:v8 numberOfMonthsAgo:1];
      }

      else
      {
        [a1 _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:v8 numberOfYearsAgo:1];
      }

      goto LABEL_22;
    }

    if (a3 == 1)
    {
      [a1 _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:v8 startDayOffset:-3 startMonthOffset:0 startYearOffset:-1 endDayOffset:4 endMonthOffset:0 endYearOffset:-1];
      goto LABEL_22;
    }

    if (a3 == 2)
    {
      [a1 _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:v8 startDayOffset:-8 startMonthOffset:0 startYearOffset:0 endDayOffset:-5 endMonthOffset:0 endYearOffset:0];
      goto LABEL_22;
    }
  }

  else
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        [a1 _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:v8 startDayOffset:-3 startMonthOffset:0 startYearOffset:-2 endDayOffset:4 endMonthOffset:0 endYearOffset:-2];
      }

      else
      {
        [a1 _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:v8 startDayOffset:-3 startMonthOffset:0 startYearOffset:-5 endDayOffset:4 endMonthOffset:0 endYearOffset:-5];
      }

      goto LABEL_22;
    }

    switch(a3)
    {
      case 7uLL:
        [a1 _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:v8 startDayOffset:-3 startMonthOffset:0 startYearOffset:-10 endDayOffset:4 endMonthOffset:0 endYearOffset:-10];
        goto LABEL_22;
      case 8uLL:
        [a1 _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:v8 startDayOffset:-3 startMonthOffset:0 startYearOffset:-15 endDayOffset:4 endMonthOffset:0 endYearOffset:-15];
        goto LABEL_22;
      case 9uLL:
        [a1 _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:v8 startDayOffset:-3 startMonthOffset:0 startYearOffset:-20 endDayOffset:4 endMonthOffset:0 endYearOffset:-20];
        v12 = LABEL_22:;
        break;
    }
  }

LABEL_24:

  return v12;
}

@end