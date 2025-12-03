@interface _UICalendarDateRange
- (_UICalendarDateRange)initWithStartDate:(id)date endDate:(id)endDate;
- (id)allDatesInRangeForCalendar:(id)calendar;
@end

@implementation _UICalendarDateRange

- (_UICalendarDateRange)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v26.receiver = self;
  v26.super_class = _UICalendarDateRange;
  v10 = [(_UICalendarDateRange *)&v26 init];
  if (v10)
  {
    calendar = [dateCopy calendar];
    calendar2 = [endDateCopy calendar];
    v13 = [calendar isEqual:calendar2];

    if ((v13 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      calendar3 = [(NSDateComponents *)v10->_startDate calendar];
      calendar4 = [(NSDateComponents *)v10->_endDate calendar];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"_UICalendarRangeSelection.m" lineNumber:22 description:{@"startDate.calendar and endDate.calendar must match. Start (%@) != End (%@)", calendar3, calendar4}];
    }

    calendar5 = [dateCopy calendar];
    v15 = calendar5;
    if (calendar5)
    {
      currentCalendar = calendar5;
    }

    else
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    }

    v17 = currentCalendar;

    v18 = [v17 dateFromComponents:dateCopy];
    v19 = [v17 dateFromComponents:endDateCopy];
    v20 = [v18 compare:v19];

    if (v20 == 1)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v10 file:@"_UICalendarRangeSelection.m" lineNumber:25 description:{@"Start Date (%@) must be before End Date (%@)", dateCopy, endDateCopy}];
    }

    objc_storeStrong(&v10->_startDate, date);
    objc_storeStrong(&v10->_endDate, endDate);
  }

  return v10;
}

- (id)allDatesInRangeForCalendar:(id)calendar
{
  calendarCopy = calendar;
  v5 = [calendarCopy dateFromComponents:self->_startDate];
  v6 = [calendarCopy dateFromComponents:self->_endDate];
  if ([v5 compare:v6] == 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UICalendarDateRange allDatesInRangeForCalendar:]"];
    [currentHandler handleFailureInFunction:v14 file:@"_UICalendarRangeSelection.m" lineNumber:37 description:@"Start date must be before the end date"];
  }

  v7 = objc_opt_new();
  v8 = v5;
  v9 = v8;
  if ([v8 compare:v6] != 1)
  {
    v10 = v8;
    do
    {
      v11 = [calendarCopy components:1048606 fromDate:v10];
      [v7 addObject:v11];
      v9 = [calendarCopy dateByAddingUnit:16 value:1 toDate:v10 options:0];

      v10 = v9;
    }

    while ([v9 compare:v6] != 1);
  }

  return v7;
}

@end