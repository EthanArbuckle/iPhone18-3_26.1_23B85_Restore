@interface REMDisplayDate
- (BOOL)isEqual:(id)a3;
- (REMDisplayDate)initWithCoder:(id)a3;
- (REMDisplayDate)initWithDate:(id)a3 allDay:(BOOL)a4 timeZone:(id)a5 floatingDateSecondsFromGMT:(int64_t)a6;
- (REMDisplayDate)initWithDueDateComponents:(id)a3 alarms:(id)a4;
- (REMDisplayDate)initWithFloatingDateComponents:(id)a3 nonFloatingDateComponents:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dateByAdjustingFloatingDateForDefaultTimeZone;
- (id)dateByAdjustingFloatingDateForTimeZone:(id)a3;
- (id)dateComponentsRepresentation;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMDisplayDate

- (REMDisplayDate)initWithDate:(id)a3 allDay:(BOOL)a4 timeZone:(id)a5 floatingDateSecondsFromGMT:(int64_t)a6
{
  v10 = a3;
  v11 = a5;
  if (v10)
  {
    v18.receiver = self;
    v18.super_class = REMDisplayDate;
    v12 = [(REMDisplayDate *)&v18 init];
    if (v12)
    {
      v13 = [v10 copy];
      date = v12->_date;
      v12->_date = v13;

      v12->_allDay = a4;
      objc_storeStrong(&v12->_timeZone, a5);
      v12->_floatingDateSecondsFromGMT = a6;
    }

    self = v12;
    v15 = self;
  }

  else
  {
    v16 = +[REMLog utility];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [REMDisplayDate initWithDate:allDay:timeZone:floatingDateSecondsFromGMT:];
    }

    v15 = 0;
  }

  return v15;
}

- (REMDisplayDate)initWithFloatingDateComponents:(id)a3 nonFloatingDateComponents:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!(v6 | v7))
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
    v21 = self;
    goto LABEL_29;
  }

  if (v6)
  {
    v8 = MEMORY[0x1E695DF10];
    v9 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v10 = [v8 rem_dateWithDateComponents:v6 timeZone:v9];

    if (v7)
    {
      goto LABEL_5;
    }

LABEL_12:
    v13 = [MEMORY[0x1E695DF00] distantFuture];
    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  v10 = [MEMORY[0x1E695DF00] distantFuture];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_5:
  v11 = MEMORY[0x1E695DF10];
  v12 = [v7 timeZone];
  v13 = [v11 rem_dateWithDateComponents:v7 timeZone:v12];

  if (v10)
  {
LABEL_6:
    if (v13)
    {
      v14 = [MEMORY[0x1E695DFE8] defaultTimeZone];
      self->_floatingDateSecondsFromGMT = [v14 secondsFromGMT];

      [v10 timeIntervalSinceDate:v13];
      p_date = &self->_date;
      if (v16 >= 0.0)
      {
        objc_storeStrong(p_date, v13);
        self->_allDay = [v7 rem_isAllDayDateComponents];
        v22 = [v7 timeZone];
        timeZone = self->_timeZone;
        self->_timeZone = v22;

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
        objc_storeStrong(p_date, v10);
        self->_allDay = [v6 rem_isAllDayDateComponents];
        v17 = [v6 timeZone];
        v18 = self->_timeZone;
        self->_timeZone = v17;

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
  v21 = 0;
LABEL_29:

  return v21;
}

- (REMDisplayDate)initWithDueDateComponents:(id)a3 alarms:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() displayDateWithDueDateComponents:v7 alarms:v6];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMDisplayDate *)self date];
  v6 = [(REMDisplayDate *)self timeZone];
  v7 = [v3 stringWithFormat:@"<%@: %p date: %@, timeZone: %@, floatingDateSecondsFromGMT: %ld, allDay: %ld>", v4, self, v5, v6, -[REMDisplayDate floatingDateSecondsFromGMT](self, "floatingDateSecondsFromGMT"), -[REMDisplayDate isAllDay](self, "isAllDay")];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [(REMDisplayDate *)self date];
  v6 = [v4 date];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMDisplayDate *)self date];
    v9 = [v4 date];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v11 = [(REMDisplayDate *)self isAllDay];
  if (v11 == [v4 isAllDay])
  {
    v12 = [(REMDisplayDate *)self timeZone];
    v13 = [v4 timeZone];
    v14 = v13;
    if (v12 == v13)
    {
    }

    else
    {
      v15 = [(REMDisplayDate *)self timeZone];
      v16 = [v4 timeZone];
      v17 = [v15 isEqual:v16];

      if (!v17)
      {
        goto LABEL_9;
      }
    }

    v20 = [(REMDisplayDate *)self floatingDateSecondsFromGMT];
    v18 = v20 == [v4 floatingDateSecondsFromGMT];
    goto LABEL_10;
  }

LABEL_9:
  v18 = 0;
LABEL_10:

  return v18;
}

- (unint64_t)hash
{
  v3 = [(REMDisplayDate *)self date];
  v4 = [v3 hash];
  v5 = v4 + [(REMDisplayDate *)self isAllDay];
  v6 = [(REMDisplayDate *)self timeZone];
  v7 = [v6 hash];
  v8 = v7 ^ [(REMDisplayDate *)self floatingDateSecondsFromGMT];

  return v8 ^ v5;
}

- (id)dateByAdjustingFloatingDateForDefaultTimeZone
{
  v3 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v4 = [(REMDisplayDate *)self dateByAdjustingFloatingDateForTimeZone:v3];

  return v4;
}

- (id)dateByAdjustingFloatingDateForTimeZone:(id)a3
{
  v4 = a3;
  v5 = [(REMDisplayDate *)self date];
  if ([(REMDisplayDate *)self isAllDay])
  {
    v6 = [v5 dateByAddingTimeInterval:{(-[REMDisplayDate floatingDateSecondsFromGMT](self, "floatingDateSecondsFromGMT") - objc_msgSend(v4, "secondsFromGMT"))}];

    v5 = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMDisplayDate alloc];
  v5 = [(REMDisplayDate *)self date];
  v6 = [(REMDisplayDate *)self isAllDay];
  v7 = [(REMDisplayDate *)self timeZone];
  v8 = [(REMDisplayDate *)v4 initWithDate:v5 allDay:v6 timeZone:v7 floatingDateSecondsFromGMT:[(REMDisplayDate *)self floatingDateSecondsFromGMT]];

  return v8;
}

- (REMDisplayDate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isAllDay"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
  v8 = [v4 decodeIntegerForKey:@"floatingDateSecondsFromGMT"];

  v9 = -[REMDisplayDate initWithDate:allDay:timeZone:floatingDateSecondsFromGMT:](self, "initWithDate:allDay:timeZone:floatingDateSecondsFromGMT:", v5, [v6 BOOLValue], v7, v8);
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(REMDisplayDate *)self date];
  [v7 encodeObject:v4 forKey:@"date"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMDisplayDate isAllDay](self, "isAllDay")}];
  [v7 encodeObject:v5 forKey:@"isAllDay"];

  v6 = [(REMDisplayDate *)self timeZone];
  [v7 encodeObject:v6 forKey:@"timeZone"];

  [v7 encodeInteger:-[REMDisplayDate floatingDateSecondsFromGMT](self forKey:{"floatingDateSecondsFromGMT"), @"floatingDateSecondsFromGMT"}];
}

- (id)dateComponentsRepresentation
{
  v3 = [(REMDisplayDate *)self timeZone];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  v6 = v5;

  v7 = MEMORY[0x1E695DF10];
  v8 = [(REMDisplayDate *)self date];
  v9 = [v7 rem_dateComponentsWithDate:v8 timeZone:v6 isAllDay:{-[REMDisplayDate isAllDay](self, "isAllDay")}];

  v10 = [(REMDisplayDate *)self timeZone];

  if (!v10)
  {
    v11 = [v9 rem_strippingTimeZone];

    v9 = v11;
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