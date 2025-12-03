@interface _UIDatePickerCalendarMonth
- (_UIDatePickerCalendarMonth)nextMonth;
- (_UIDatePickerCalendarMonth)previousMonth;
- (id)_monthWithOffset:(int64_t)offset;
- (id)dayMatchingOrdinalDay:(id)day;
- (id)dayWithDate:(id)date assignedMonth:(id)month;
@end

@implementation _UIDatePickerCalendarMonth

- (id)dayWithDate:(id)date assignedMonth:(id)month
{
  monthCopy = month;
  dateCopy = date;
  v8 = [_UIDatePickerCalendarDay alloc];
  calendar = [(NSDateComponents *)self->super._components calendar];
  v10 = [(_UIDatePickerCalendarDay *)v8 initWithDate:dateCopy calendar:calendar month:self assignedMonth:monthCopy];

  return v10;
}

- (id)dayMatchingOrdinalDay:(id)day
{
  components = [day components];
  components2 = [(_UIDatePickerCalendarDateComponent *)self components];
  calendar = [(_UIDatePickerCalendarDateComponent *)self calendar];
  date = [(_UIDatePickerCalendarDateComponent *)self date];
  v8 = [calendar rangeOfUnit:16 inUnit:8 forDate:date];
  v10 = v9;

  v11 = [components day];
  v12 = v10 + v8 - 1;
  if (v11 < v12)
  {
    v12 = v11;
  }

  if (v8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  [components2 setDay:v13];
  calendar2 = [(_UIDatePickerCalendarDateComponent *)self calendar];
  v15 = [calendar2 dateFromComponents:components2];

  v16 = [(_UIDatePickerCalendarMonth *)self dayWithDate:v15 assignedMonth:0];

  return v16;
}

- (id)_monthWithOffset:(int64_t)offset
{
  if (offset)
  {
    calendar = [(NSDateComponents *)self->super._components calendar];
    v6 = objc_opt_new();
    [v6 setMonth:offset];
    date = [(_UIDatePickerCalendarDateComponent *)self date];
    v8 = [calendar dateByAddingComponents:v6 toDate:date options:0];

    selfCopy = [(_UIDatePickerCalendarDateComponent *)[_UIDatePickerCalendarMonth alloc] initWithDate:v8 calendar:calendar];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (_UIDatePickerCalendarMonth)previousMonth
{
  previousMonth = self->_previousMonth;
  if (!previousMonth)
  {
    v4 = [(_UIDatePickerCalendarMonth *)self _monthWithOffset:-1];
    v5 = self->_previousMonth;
    self->_previousMonth = v4;

    previousMonth = self->_previousMonth;
  }

  return previousMonth;
}

- (_UIDatePickerCalendarMonth)nextMonth
{
  nextMonth = self->_nextMonth;
  if (!nextMonth)
  {
    v4 = [(_UIDatePickerCalendarMonth *)self _monthWithOffset:1];
    v5 = self->_nextMonth;
    self->_nextMonth = v4;

    nextMonth = self->_nextMonth;
  }

  return nextMonth;
}

@end