@interface _UIDatePickerDateRange
- (BOOL)_containsDate:(id)date withAccuracy:(unint64_t)accuracy inCalendar:(id)calendar;
- (BOOL)containsDate:(id)date;
- (BOOL)containsDay:(id)day;
- (BOOL)containsMonth:(id)month;
- (_UIDatePickerDateRange)initWithStartDate:(id)date endDate:(id)endDate;
- (id)copyWithEndDate:(id)date;
- (id)copyWithStartDate:(id)date;
- (id)dateInRangeForDate:(id)date;
@end

@implementation _UIDatePickerDateRange

- (_UIDatePickerDateRange)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v11.receiver = self;
  v11.super_class = _UIDatePickerDateRange;
  v9 = [(_UIDatePickerDateRange *)&v11 init];
  if (v9)
  {
    if (dateCopy && endDateCopy && [dateCopy compare:endDateCopy] == 1)
    {
      *&v9->_flags |= 1u;
    }

    objc_storeStrong(&v9->_startDate, date);
    objc_storeStrong(&v9->_endDate, endDate);
  }

  return v9;
}

- (id)copyWithStartDate:(id)date
{
  dateCopy = date;
  v5 = [[_UIDatePickerDateRange alloc] initWithStartDate:dateCopy endDate:self->_endDate];

  return v5;
}

- (id)copyWithEndDate:(id)date
{
  dateCopy = date;
  v5 = [[_UIDatePickerDateRange alloc] initWithStartDate:self->_startDate endDate:dateCopy];

  return v5;
}

- (BOOL)containsDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerDateRange.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  if (*&self->_flags)
  {
    v7 = 1;
  }

  else
  {
    startDate = self->_startDate;
    if (startDate)
    {
      v7 = [(NSDate *)startDate compare:dateCopy]!= NSOrderedDescending;
    }

    else
    {
      v7 = 1;
    }

    if (self->_endDate && [dateCopy compare:?] == 1)
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)_containsDate:(id)date withAccuracy:(unint64_t)accuracy inCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  if ([(_UIDatePickerDateRange *)self containsDate:dateCopy])
  {
    v11 = 1;
  }

  else
  {
    v18 = 0;
    v19 = 0.0;
    v12 = [calendarCopy rangeOfUnit:accuracy startDate:&v18 interval:&v19 forDate:dateCopy];
    v13 = v18;
    if ((v12 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerDateRange.m" lineNumber:80 description:{@"Unable to calculate range for date %@ in calendar %@ with accuracy %tu.", dateCopy, calendarCopy, accuracy}];
    }

    startDate = self->_startDate;
    if (startDate)
    {
      v15 = [v13 dateByAddingTimeInterval:v19];
      v11 = [(NSDate *)startDate compare:v15]== NSOrderedAscending;
    }

    else
    {
      v11 = 1;
    }

    if (self->_endDate)
    {
      v11 &= [v13 compare:?] != 1;
    }
  }

  return v11;
}

- (id)dateInRangeForDate:(id)date
{
  dateCopy = date;
  if ([(_UIDatePickerDateRange *)self containsDate:dateCopy])
  {
    v6 = dateCopy;
    goto LABEL_11;
  }

  if (self->_startDate && [dateCopy compare:?] == -1)
  {
    startDate = self->_startDate;
  }

  else
  {
    endDate = self->_endDate;
    if (!endDate || [(NSDate *)endDate compare:dateCopy]!= NSOrderedAscending)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerDateRange.m" lineNumber:102 description:{@"Invalid state. Unable to find closest valid date to date %@ with lower bounds %@ and upper bounds %@.", dateCopy, self->_startDate, self->_endDate}];

      v6 = objc_opt_new();
      goto LABEL_11;
    }

    startDate = self->_endDate;
  }

  v6 = startDate;
LABEL_11:
  v10 = v6;

  return v10;
}

- (BOOL)containsMonth:(id)month
{
  monthCopy = month;
  date = [monthCopy date];
  calendar = [monthCopy calendar];

  LOBYTE(self) = [(_UIDatePickerDateRange *)self _containsDate:date withAccuracy:8 inCalendar:calendar];
  return self;
}

- (BOOL)containsDay:(id)day
{
  dayCopy = day;
  date = [dayCopy date];
  calendar = [dayCopy calendar];

  LOBYTE(self) = [(_UIDatePickerDateRange *)self _containsDate:date withAccuracy:16 inCalendar:calendar];
  return self;
}

@end