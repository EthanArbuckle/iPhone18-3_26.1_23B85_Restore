@interface _UIDatePickerCalendarDay
- (BOOL)isEqual:(id)equal;
- (BOOL)isToday;
- (_UIDatePickerCalendarDay)initWithDate:(id)date calendar:(id)calendar;
- (_UIDatePickerCalendarDay)initWithDate:(id)date calendar:(id)calendar month:(id)month assignedMonth:(id)assignedMonth;
- (id)copyWithAssignedMonth:(id)month;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIDatePickerCalendarDay

- (_UIDatePickerCalendarDay)initWithDate:(id)date calendar:(id)calendar
{
  calendarCopy = calendar;
  dateCopy = date;
  v8 = [(_UIDatePickerCalendarDateComponent *)[_UIDatePickerCalendarMonth alloc] initWithDate:dateCopy calendar:calendarCopy];
  v9 = [(_UIDatePickerCalendarDay *)self initWithDate:dateCopy calendar:calendarCopy month:v8 assignedMonth:0];

  return v9;
}

- (_UIDatePickerCalendarDay)initWithDate:(id)date calendar:(id)calendar month:(id)month assignedMonth:(id)assignedMonth
{
  monthCopy = month;
  assignedMonthCopy = assignedMonth;
  v16.receiver = self;
  v16.super_class = _UIDatePickerCalendarDay;
  v13 = [(_UIDatePickerCalendarDateComponent *)&v16 initWithDate:date calendar:calendar];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_month, month);
    objc_storeStrong(&v14->_assignedMonth, assignedMonth);
  }

  return v14;
}

- (id)copyWithAssignedMonth:(id)month
{
  monthCopy = month;
  if (self->_assignedMonth != monthCopy)
  {
    selfCopy = [(_UIDatePickerCalendarDay *)self copy];
    v6 = self->_month;
    v7 = monthCopy;
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      if (!v7 || !v6)
      {

        goto LABEL_11;
      }

      v9 = [(_UIDatePickerCalendarDateComponent *)v6 isEqual:v7];

      if (!v9)
      {
        goto LABEL_11;
      }
    }

    v8 = 0;
LABEL_11:
    objc_storeStrong(&selfCopy->_assignedMonth, v8);
    goto LABEL_12;
  }

  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (BOOL)isToday
{
  calendar = [(NSDateComponents *)self->super._components calendar];
  date = [(_UIDatePickerCalendarDateComponent *)self date];
  v5 = [calendar isDateInToday:date];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIDatePickerCalendarDay;
  v4 = [(_UIDatePickerCalendarDateComponent *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 3, self->_month);
  objc_storeStrong(v4 + 4, self->_assignedMonth);
  return v4;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = _UIDatePickerCalendarDay;
  v3 = [(_UIDatePickerCalendarDateComponent *)&v7 hash];
  v4 = [(_UIDatePickerCalendarDateComponent *)self->_month hash]^ v3;
  assignedMonth = self->_assignedMonth;
  if (assignedMonth)
  {
    v4 ^= [(_UIDatePickerCalendarDateComponent *)assignedMonth hash];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = _UIDatePickerCalendarDay;
  if ([(_UIDatePickerCalendarDateComponent *)&v13 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if ([(_UIDatePickerCalendarDateComponent *)self->_month isEqual:v5[3]])
    {
      v6 = v5[4];
      v7 = self->_assignedMonth;
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        if (v7)
        {
          v10 = v8 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = [(_UIDatePickerCalendarDateComponent *)v7 isEqual:v8];
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [objc_opt_class() inlineDescriptionForComponents:self->super._components];
  v7 = [v3 stringWithFormat:@"<%@: %p components: %@; month: %@; assignedMonth: %@>", v5, self, v6, self->_month, self->_assignedMonth];;

  return v7;
}

@end