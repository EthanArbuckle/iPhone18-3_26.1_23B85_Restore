@interface REMRecurrenceDayOfWeek
+ (id)dayOfWeek:(int64_t)a3;
+ (id)dayOfWeek:(int64_t)a3 weekNumber:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (REMRecurrenceDayOfWeek)initWithCoder:(id)a3;
- (REMRecurrenceDayOfWeek)initWithDayOfTheWeek:(int64_t)a3 weekNumber:(int64_t)a4;
- (id)description;
- (id)iCalendarDescription;
- (id)iCalendarValueFromDayOfTheWeek:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRecurrenceDayOfWeek

+ (id)dayOfWeek:(int64_t)a3
{
  v3 = [[a1 alloc] initWithDayOfTheWeek:a3 weekNumber:0];

  return v3;
}

+ (id)dayOfWeek:(int64_t)a3 weekNumber:(int64_t)a4
{
  v4 = [[a1 alloc] initWithDayOfTheWeek:a3 weekNumber:a4];

  return v4;
}

- (REMRecurrenceDayOfWeek)initWithDayOfTheWeek:(int64_t)a3 weekNumber:(int64_t)a4
{
  if (a3 < 1 || a3 >= 8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid day number"];
  }

  v8.receiver = self;
  v8.super_class = REMRecurrenceDayOfWeek;
  result = [(REMRecurrenceDayOfWeek *)&v8 init];
  if (result)
  {
    result->_dayOfTheWeek = a3;
    result->_weekNumber = a4;
  }

  return result;
}

- (REMRecurrenceDayOfWeek)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REMRecurrenceDayOfWeek;
  v5 = [(REMRecurrenceDayOfWeek *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"dayOfTheWeek"];
    if ((v6 - 1) >= 7)
    {
      v7 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(REMRecurrenceDayOfWeek *)v6 initWithCoder:v7];
      }

      v6 = 1;
    }

    v5->_dayOfTheWeek = v6;
    v5->_weekNumber = [v4 decodeIntegerForKey:@"weekNumber"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[REMRecurrenceDayOfWeek dayOfTheWeek](self forKey:{"dayOfTheWeek"), @"dayOfTheWeek"}];
  [v4 encodeInteger:-[REMRecurrenceDayOfWeek weekNumber](self forKey:{"weekNumber"), @"weekNumber"}];
}

- (id)iCalendarValueFromDayOfTheWeek:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return &stru_1F0D67F00;
  }

  else
  {
    return off_1E7507710[a3 - 1];
  }
}

- (id)iCalendarDescription
{
  if ([(REMRecurrenceDayOfWeek *)self weekNumber])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(REMRecurrenceDayOfWeek *)self weekNumber];
    v5 = [(REMRecurrenceDayOfWeek *)self iCalendarValueFromDayOfTheWeek:[(REMRecurrenceDayOfWeek *)self dayOfTheWeek]];
    v6 = [v3 stringWithFormat:@"%ld%@", v4, v5];
  }

  else
  {
    v6 = [(REMRecurrenceDayOfWeek *)self iCalendarValueFromDayOfTheWeek:[(REMRecurrenceDayOfWeek *)self dayOfTheWeek]];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMRecurrenceDayOfWeek *)self iCalendarDescription];
  v6 = [v3 stringWithFormat:@"%@ <0x%x> { %@ }", v4, self, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (v6 = [(REMRecurrenceDayOfWeek *)self dayOfTheWeek], v6 == [(REMRecurrenceDayOfWeek *)v4 dayOfTheWeek]))
    {
      v7 = [(REMRecurrenceDayOfWeek *)self weekNumber];
      v8 = v7 == [(REMRecurrenceDayOfWeek *)v4 weekNumber];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMWeekday %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end