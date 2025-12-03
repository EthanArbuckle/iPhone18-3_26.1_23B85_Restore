@interface REMDisplayDate
- (BOOL)isEqual:(id)equal;
- (REMDisplayDate)initWithCoder:(id)coder;
- (REMDisplayDate)initWithDate:(id)date allDay:(BOOL)day timeZone:(id)zone floatingDateSecondsFromGMT:(int64_t)t;
- (REMDisplayDate)initWithDueDateComponents:(id)components alarms:(id)alarms;
- (REMDisplayDate)initWithFloatingDateComponents:(id)components nonFloatingDateComponents:(id)dateComponents;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateByAdjustingFloatingDateForDefaultTimeZone;
- (id)dateByAdjustingFloatingDateForTimeZone:(id)zone;
- (id)dateComponentsRepresentation;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMDisplayDate

- (REMDisplayDate)initWithDate:(id)date allDay:(BOOL)day timeZone:(id)zone floatingDateSecondsFromGMT:(int64_t)t
{
  dateCopy = date;
  zoneCopy = zone;
  if (dateCopy)
  {
    v18.receiver = self;
    v18.super_class = REMDisplayDate;
    v12 = [(REMDisplayDate *)&v18 init];
    if (v12)
    {
      v13 = [dateCopy copy];
      date = v12->_date;
      v12->_date = v13;

      v12->_allDay = day;
      objc_storeStrong(&v12->_timeZone, zone);
      v12->_floatingDateSecondsFromGMT = t;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    v16 = +[REMLog utility];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [REMDisplayDate initWithDate:allDay:timeZone:floatingDateSecondsFromGMT:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (REMDisplayDate)initWithFloatingDateComponents:(id)components nonFloatingDateComponents:(id)dateComponents
{
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  if (!(componentsCopy | dateComponentsCopy))
  {
    goto LABEL_18;
  }

  v26.receiver = self;
  v26.super_class = REMDisplayDate;
  self = [(REMDisplayDate *)&v26 init];
  if (!self)
  {
LABEL_28:
    self = self;
    selfCopy = self;
    goto LABEL_29;
  }

  if (componentsCopy)
  {
    v8 = MEMORY[0x1E695DF10];
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    distantFuture2 = [v8 rem_dateWithDateComponents:componentsCopy timeZone:defaultTimeZone];

    if (dateComponentsCopy)
    {
      goto LABEL_5;
    }

LABEL_12:
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    if (distantFuture2)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  distantFuture2 = [MEMORY[0x1E695DF00] distantFuture];
  if (!dateComponentsCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  v11 = MEMORY[0x1E695DF10];
  timeZone = [dateComponentsCopy timeZone];
  distantFuture = [v11 rem_dateWithDateComponents:dateComponentsCopy timeZone:timeZone];

  if (distantFuture2)
  {
LABEL_6:
    if (distantFuture)
    {
      defaultTimeZone2 = [MEMORY[0x1E695DFE8] defaultTimeZone];
      self->_floatingDateSecondsFromGMT = [defaultTimeZone2 secondsFromGMT];

      [distantFuture2 timeIntervalSinceDate:distantFuture];
      p_date = &self->_date;
      if (v16 >= 0.0)
      {
        objc_storeStrong(p_date, distantFuture);
        self->_allDay = [dateComponentsCopy rem_isAllDayDateComponents];
        timeZone2 = [dateComponentsCopy timeZone];
        timeZone = self->_timeZone;
        self->_timeZone = timeZone2;

        if (!self->_timeZone)
        {
          v24 = +[REMLog utility];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            [REMDisplayDate initWithFloatingDateComponents:nonFloatingDateComponents:];
          }
        }

        if (!self->_allDay)
        {
          goto LABEL_27;
        }

        v19 = +[REMLog utility];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          [REMDisplayDate initWithFloatingDateComponents:nonFloatingDateComponents:];
        }
      }

      else
      {
        objc_storeStrong(p_date, distantFuture2);
        self->_allDay = [componentsCopy rem_isAllDayDateComponents];
        timeZone3 = [componentsCopy timeZone];
        v18 = self->_timeZone;
        self->_timeZone = timeZone3;

        if (!self->_timeZone)
        {
LABEL_27:

          goto LABEL_28;
        }

        v19 = +[REMLog utility];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          [REMDisplayDate initWithFloatingDateComponents:nonFloatingDateComponents:];
        }
      }

      goto LABEL_27;
    }

    v20 = +[REMLog utility];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [REMDisplayDate initWithFloatingDateComponents:nonFloatingDateComponents:];
    }

    goto LABEL_17;
  }

LABEL_13:
  v20 = +[REMLog utility];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    [REMDisplayDate initWithFloatingDateComponents:nonFloatingDateComponents:];
  }

LABEL_17:

LABEL_18:
  selfCopy = 0;
LABEL_29:

  return selfCopy;
}

- (REMDisplayDate)initWithDueDateComponents:(id)components alarms:(id)alarms
{
  alarmsCopy = alarms;
  componentsCopy = components;
  v8 = [objc_opt_class() displayDateWithDueDateComponents:componentsCopy alarms:alarmsCopy];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  date = [(REMDisplayDate *)self date];
  timeZone = [(REMDisplayDate *)self timeZone];
  v7 = [v3 stringWithFormat:@"<%@: %p date: %@, timeZone: %@, floatingDateSecondsFromGMT: %ld, allDay: %ld>", v4, self, date, timeZone, -[REMDisplayDate floatingDateSecondsFromGMT](self, "floatingDateSecondsFromGMT"), -[REMDisplayDate isAllDay](self, "isAllDay")];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  date = [(REMDisplayDate *)self date];
  date2 = [equalCopy date];
  v7 = date2;
  if (date == date2)
  {
  }

  else
  {
    date3 = [(REMDisplayDate *)self date];
    date4 = [equalCopy date];
    v10 = [date3 isEqual:date4];

    if (!v10)
    {
      goto LABEL_9;
    }
  }

  isAllDay = [(REMDisplayDate *)self isAllDay];
  if (isAllDay == [equalCopy isAllDay])
  {
    timeZone = [(REMDisplayDate *)self timeZone];
    timeZone2 = [equalCopy timeZone];
    v14 = timeZone2;
    if (timeZone == timeZone2)
    {
    }

    else
    {
      timeZone3 = [(REMDisplayDate *)self timeZone];
      timeZone4 = [equalCopy timeZone];
      v17 = [timeZone3 isEqual:timeZone4];

      if (!v17)
      {
        goto LABEL_9;
      }
    }

    floatingDateSecondsFromGMT = [(REMDisplayDate *)self floatingDateSecondsFromGMT];
    v18 = floatingDateSecondsFromGMT == [equalCopy floatingDateSecondsFromGMT];
    goto LABEL_10;
  }

LABEL_9:
  v18 = 0;
LABEL_10:

  return v18;
}

- (unint64_t)hash
{
  date = [(REMDisplayDate *)self date];
  v4 = [date hash];
  v5 = v4 + [(REMDisplayDate *)self isAllDay];
  timeZone = [(REMDisplayDate *)self timeZone];
  v7 = [timeZone hash];
  v8 = v7 ^ [(REMDisplayDate *)self floatingDateSecondsFromGMT];

  return v8 ^ v5;
}

- (id)dateByAdjustingFloatingDateForDefaultTimeZone
{
  defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v4 = [(REMDisplayDate *)self dateByAdjustingFloatingDateForTimeZone:defaultTimeZone];

  return v4;
}

- (id)dateByAdjustingFloatingDateForTimeZone:(id)zone
{
  zoneCopy = zone;
  date = [(REMDisplayDate *)self date];
  if ([(REMDisplayDate *)self isAllDay])
  {
    v6 = [date dateByAddingTimeInterval:{(-[REMDisplayDate floatingDateSecondsFromGMT](self, "floatingDateSecondsFromGMT") - objc_msgSend(zoneCopy, "secondsFromGMT"))}];

    date = v6;
  }

  return date;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMDisplayDate alloc];
  date = [(REMDisplayDate *)self date];
  isAllDay = [(REMDisplayDate *)self isAllDay];
  timeZone = [(REMDisplayDate *)self timeZone];
  v8 = [(REMDisplayDate *)v4 initWithDate:date allDay:isAllDay timeZone:timeZone floatingDateSecondsFromGMT:[(REMDisplayDate *)self floatingDateSecondsFromGMT]];

  return v8;
}

- (REMDisplayDate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isAllDay"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
  v8 = [coderCopy decodeIntegerForKey:@"floatingDateSecondsFromGMT"];

  v9 = -[REMDisplayDate initWithDate:allDay:timeZone:floatingDateSecondsFromGMT:](self, "initWithDate:allDay:timeZone:floatingDateSecondsFromGMT:", v5, [v6 BOOLValue], v7, v8);
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  date = [(REMDisplayDate *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMDisplayDate isAllDay](self, "isAllDay")}];
  [coderCopy encodeObject:v5 forKey:@"isAllDay"];

  timeZone = [(REMDisplayDate *)self timeZone];
  [coderCopy encodeObject:timeZone forKey:@"timeZone"];

  [coderCopy encodeInteger:-[REMDisplayDate floatingDateSecondsFromGMT](self forKey:{"floatingDateSecondsFromGMT"), @"floatingDateSecondsFromGMT"}];
}

- (id)dateComponentsRepresentation
{
  timeZone = [(REMDisplayDate *)self timeZone];
  v4 = timeZone;
  if (timeZone)
  {
    defaultTimeZone = timeZone;
  }

  else
  {
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  v6 = defaultTimeZone;

  v7 = MEMORY[0x1E695DF10];
  date = [(REMDisplayDate *)self date];
  v9 = [v7 rem_dateComponentsWithDate:date timeZone:v6 isAllDay:{-[REMDisplayDate isAllDay](self, "isAllDay")}];

  timeZone2 = [(REMDisplayDate *)self timeZone];

  if (!timeZone2)
  {
    rem_strippingTimeZone = [v9 rem_strippingTimeZone];

    v9 = rem_strippingTimeZone;
  }

  return v9;
}

- (void)initWithFloatingDateComponents:nonFloatingDateComponents:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithFloatingDateComponents:nonFloatingDateComponents:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithFloatingDateComponents:nonFloatingDateComponents:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end