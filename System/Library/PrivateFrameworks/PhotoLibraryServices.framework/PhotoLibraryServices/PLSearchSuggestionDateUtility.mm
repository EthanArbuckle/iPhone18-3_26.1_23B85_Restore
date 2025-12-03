@interface PLSearchSuggestionDateUtility
+ (id)_dateFilterFromStartDateComponents:(id)components endDateComponents:(id)dateComponents calendar:(id)calendar numberOfMonthsAgo:(unint64_t)ago;
+ (id)_dateFilterFromStartDateComponents:(id)components endDateComponents:(id)dateComponents calendar:(id)calendar numberOfYearsAgo:(unint64_t)ago;
+ (id)_dateFilterFromStartDateComponents:(id)components endDateComponents:(id)dateComponents calendar:(id)calendar startDayOffset:(unint64_t)offset startMonthOffset:(unint64_t)monthOffset startYearOffset:(unint64_t)yearOffset endDayOffset:(unint64_t)dayOffset endMonthOffset:(unint64_t)self0 endYearOffset:(unint64_t)self1;
+ (id)allTemplateDateTypes;
+ (id)dateFilterForSearchSuggestionTemplateDateType:(unint64_t)type calendar:(id)calendar relativeDate:(id)date;
+ (id)templateKeyForDateTemplateType:(unint64_t)type;
@end

@implementation PLSearchSuggestionDateUtility

+ (id)templateKeyForDateTemplateType:(unint64_t)type
{
  if (type - 1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7564C48[type - 1];
  }
}

+ (id)_dateFilterFromStartDateComponents:(id)components endDateComponents:(id)dateComponents calendar:(id)calendar startDayOffset:(unint64_t)offset startMonthOffset:(unint64_t)monthOffset startYearOffset:(unint64_t)yearOffset endDayOffset:(unint64_t)dayOffset endMonthOffset:(unint64_t)self0 endYearOffset:(unint64_t)self1
{
  calendarCopy = calendar;
  dateComponentsCopy = dateComponents;
  componentsCopy = components;
  [componentsCopy setDay:{objc_msgSend(componentsCopy, "day") + offset}];
  [componentsCopy setMonth:{objc_msgSend(componentsCopy, "month") + monthOffset}];
  [componentsCopy setYear:{objc_msgSend(componentsCopy, "year") + yearOffset}];
  [dateComponentsCopy setDay:{objc_msgSend(dateComponentsCopy, "day") + dayOffset}];
  [dateComponentsCopy setMonth:{objc_msgSend(dateComponentsCopy, "month") + endMonthOffset}];
  [dateComponentsCopy setYear:{objc_msgSend(dateComponentsCopy, "year") + endYearOffset}];
  v19 = [calendarCopy dateFromComponents:componentsCopy];

  v20 = [calendarCopy dateFromComponents:dateComponentsCopy];

  v21 = [calendarCopy components:28 fromDate:v19];
  v22 = [calendarCopy components:28 fromDate:v20];

  v23 = [[PSIDate alloc] initWithDateComponents:v21];
  v24 = [[PSIDate alloc] initWithDateComponents:v22];
  v25 = [[PSIDateFilter alloc] initWithStartDate:v23 endDate:v24];

  return v25;
}

+ (id)_dateFilterFromStartDateComponents:(id)components endDateComponents:(id)dateComponents calendar:(id)calendar numberOfMonthsAgo:(unint64_t)ago
{
  calendarCopy = calendar;
  dateComponentsCopy = dateComponents;
  componentsCopy = components;
  [componentsCopy setDay:1];
  [componentsCopy setMonth:{objc_msgSend(componentsCopy, "month") - ago}];
  v12 = [calendarCopy dateFromComponents:componentsCopy];
  [calendarCopy rangeOfUnit:16 inUnit:8 forDate:v12];
  v14 = v13;

  [dateComponentsCopy setDay:v14];
  [dateComponentsCopy setMonth:{objc_msgSend(dateComponentsCopy, "month") - ago}];
  v15 = [[PSIDate alloc] initWithDateComponents:componentsCopy];

  v16 = [[PSIDate alloc] initWithDateComponents:dateComponentsCopy];
  v17 = [[PSIDateFilter alloc] initWithStartDate:v15 endDate:v16];

  return v17;
}

+ (id)_dateFilterFromStartDateComponents:(id)components endDateComponents:(id)dateComponents calendar:(id)calendar numberOfYearsAgo:(unint64_t)ago
{
  calendarCopy = calendar;
  dateComponentsCopy = dateComponents;
  componentsCopy = components;
  [componentsCopy setDay:1];
  [componentsCopy setMonth:1];
  [componentsCopy setYear:{objc_msgSend(componentsCopy, "year") - ago}];
  [dateComponentsCopy setDay:1];
  [dateComponentsCopy setYear:{objc_msgSend(dateComponentsCopy, "year") - ago}];
  v12 = [calendarCopy dateFromComponents:componentsCopy];
  [calendarCopy rangeOfUnit:8 inUnit:4 forDate:v12];
  v14 = v13;

  [dateComponentsCopy setMonth:v14];
  v15 = [calendarCopy dateFromComponents:dateComponentsCopy];
  [calendarCopy rangeOfUnit:16 inUnit:8 forDate:v15];
  v17 = v16;

  [dateComponentsCopy setDay:v17];
  v18 = [[PSIDate alloc] initWithDateComponents:componentsCopy];

  v19 = [[PSIDate alloc] initWithDateComponents:dateComponentsCopy];
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

+ (id)dateFilterForSearchSuggestionTemplateDateType:(unint64_t)type calendar:(id)calendar relativeDate:(id)date
{
  calendarCopy = calendar;
  if (!type)
  {
    v12 = 0;
    goto LABEL_24;
  }

  dateCopy = date;
  v10 = [calendarCopy components:28 fromDate:dateCopy];
  v11 = [calendarCopy components:28 fromDate:dateCopy];

  v12 = 0;
  if (type <= 4)
  {
    if (type > 2)
    {
      if (type == 3)
      {
        [self _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:calendarCopy numberOfMonthsAgo:1];
      }

      else
      {
        [self _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:calendarCopy numberOfYearsAgo:1];
      }

      goto LABEL_22;
    }

    if (type == 1)
    {
      [self _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:calendarCopy startDayOffset:-3 startMonthOffset:0 startYearOffset:-1 endDayOffset:4 endMonthOffset:0 endYearOffset:-1];
      goto LABEL_22;
    }

    if (type == 2)
    {
      [self _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:calendarCopy startDayOffset:-8 startMonthOffset:0 startYearOffset:0 endDayOffset:-5 endMonthOffset:0 endYearOffset:0];
      goto LABEL_22;
    }
  }

  else
  {
    if (type <= 6)
    {
      if (type == 5)
      {
        [self _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:calendarCopy startDayOffset:-3 startMonthOffset:0 startYearOffset:-2 endDayOffset:4 endMonthOffset:0 endYearOffset:-2];
      }

      else
      {
        [self _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:calendarCopy startDayOffset:-3 startMonthOffset:0 startYearOffset:-5 endDayOffset:4 endMonthOffset:0 endYearOffset:-5];
      }

      goto LABEL_22;
    }

    switch(type)
    {
      case 7uLL:
        [self _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:calendarCopy startDayOffset:-3 startMonthOffset:0 startYearOffset:-10 endDayOffset:4 endMonthOffset:0 endYearOffset:-10];
        goto LABEL_22;
      case 8uLL:
        [self _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:calendarCopy startDayOffset:-3 startMonthOffset:0 startYearOffset:-15 endDayOffset:4 endMonthOffset:0 endYearOffset:-15];
        goto LABEL_22;
      case 9uLL:
        [self _dateFilterFromStartDateComponents:v10 endDateComponents:v11 calendar:calendarCopy startDayOffset:-3 startMonthOffset:0 startYearOffset:-20 endDayOffset:4 endMonthOffset:0 endYearOffset:-20];
        v12 = LABEL_22:;
        break;
    }
  }

LABEL_24:

  return v12;
}

@end