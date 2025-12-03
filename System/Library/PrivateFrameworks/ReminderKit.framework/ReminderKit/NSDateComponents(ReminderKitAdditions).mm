@interface NSDateComponents(ReminderKitAdditions)
+ (id)rem_dateComponentsWithDate:()ReminderKitAdditions timeZone:isAllDay:;
+ (id)rem_dateComponentsWithDateUsingArchivingTimeZone:()ReminderKitAdditions isAllDay:;
+ (id)rem_dateComponentsWithYear:()ReminderKitAdditions month:day:hour:minute:second:allDay:timeZone:;
- (BOOL)rem_isWeekendDateComponents;
- (id)rem_allDayDateComponents;
- (id)rem_dateComponentsByAddingTimeInterval:()ReminderKitAdditions;
- (id)rem_gregorianEquivalent;
- (id)rem_stringRepresentation;
- (id)rem_strippingTimeZone;
- (uint64_t)rem_compare:()ReminderKitAdditions;
- (uint64_t)rem_isValidDateComponents;
@end

@implementation NSDateComponents(ReminderKitAdditions)

+ (id)rem_dateComponentsWithDateUsingArchivingTimeZone:()ReminderKitAdditions isAllDay:
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = 30;
  }

  else
  {
    v7 = 254;
  }

  v8 = _REMDateGetDateComponents(v5, v7, 0);
  if (!v8)
  {
    v9 = +[REMLog utility];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(NSDateComponents(ReminderKitAdditions) *)v6 rem_dateComponentsWithDateUsingArchivingTimeZone:v7 isAllDay:v9];
    }

    v8 = objc_opt_new();
  }

  return v8;
}

+ (id)rem_dateComponentsWithDate:()ReminderKitAdditions timeZone:isAllDay:
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a5)
  {
    v9 = 30;
  }

  else
  {
    v9 = 254;
  }

  v10 = _REMDateGetDateComponents(v7, v9, v8);
  if (!v10)
  {
    v11 = +[REMLog utility];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
      v15 = 138412802;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v14;
      _os_log_fault_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_FAULT, "Could not get a date component with {date %@, timeZone: %@, flags: %@}", &v15, 0x20u);
    }

    v10 = objc_opt_new();
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)rem_dateComponentsWithYear:()ReminderKitAdditions month:day:hour:minute:second:allDay:timeZone:
{
  v16 = MEMORY[0x1E695DF10];
  v17 = a10;
  v18 = objc_alloc_init(v16);
  [v18 setYear:a3];
  [v18 setMonth:a4];
  [v18 setDay:a5];
  if (a9)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = a6;
  }

  if (a9)
  {
    a7 = 0x7FFFFFFFFFFFFFFFLL;
    a8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [v18 setHour:v19];
  [v18 setMinute:a7];
  [v18 setSecond:a8];
  [v18 setCalendar:0];
  [v18 setTimeZone:v17];

  return v18;
}

- (id)rem_gregorianEquivalent
{
  calendar = [self calendar];
  if (!calendar)
  {
    goto LABEL_3;
  }

  v3 = calendar;
  calendar2 = [self calendar];
  calendarIdentifier = [calendar2 calendarIdentifier];
  v6 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]];

  if ((v6 & 1) == 0)
  {
    timeZone = [self timeZone];
    rem_isAllDayDateComponents = [self rem_isAllDayDateComponents];
    date = [self date];
    v11 = MEMORY[0x1E695DF10];
    if (timeZone)
    {
      v7 = [MEMORY[0x1E695DF10] rem_dateComponentsWithDate:date timeZone:timeZone isAllDay:rem_isAllDayDateComponents];
    }

    else
    {
      defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
      v7 = [v11 rem_dateComponentsWithDate:date timeZone:defaultTimeZone isAllDay:rem_isAllDayDateComponents];
    }

    [v7 setTimeZone:timeZone];
  }

  else
  {
LABEL_3:
    v7 = [self copy];
  }

  return v7;
}

- (id)rem_dateComponentsByAddingTimeInterval:()ReminderKitAdditions
{
  timeZone = [self timeZone];
  v5 = timeZone;
  if (timeZone)
  {
    defaultTimeZone = timeZone;
  }

  else
  {
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  v7 = defaultTimeZone;
  v8 = [MEMORY[0x1E695DF10] rem_dateWithDateComponents:self timeZone:defaultTimeZone];
  v9 = [v8 dateByAddingTimeInterval:a2];
  v10 = [MEMORY[0x1E695DF10] rem_dateComponentsWithDate:v9 timeZone:v7 isAllDay:{objc_msgSend(self, "rem_isAllDayDateComponents")}];
  [v10 setTimeZone:v5];

  return v10;
}

- (id)rem_strippingTimeZone
{
  v1 = [self copy];
  [v1 setTimeZone:0];

  return v1;
}

- (id)rem_allDayDateComponents
{
  v1 = [self copy];
  [v1 setHour:0x7FFFFFFFFFFFFFFFLL];
  [v1 setMinute:0x7FFFFFFFFFFFFFFFLL];
  [v1 setSecond:0x7FFFFFFFFFFFFFFFLL];
  [v1 setNanosecond:0x7FFFFFFFFFFFFFFFLL];

  return v1;
}

- (uint64_t)rem_isValidDateComponents
{
  calendar = [self calendar];
  v3 = calendar;
  if (calendar && ([calendar calendarIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695D850]), v4, (v5 & 1) == 0))
  {
    v6 = +[REMLog utility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [NSDateComponents(ReminderKitAdditions) rem_isValidDateComponents];
    }
  }

  else
  {
    if ([self year] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(self, "month") != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(self, "day") != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 1;
      goto LABEL_11;
    }

    v6 = +[REMLog utility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [NSDateComponents(ReminderKitAdditions) rem_isValidDateComponents];
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (BOOL)rem_isWeekendDateComponents
{
  calendar = [self calendar];
  v3 = calendar;
  if (calendar)
  {
    calendarIdentifier = [calendar calendarIdentifier];
    v5 = *MEMORY[0x1E695D850];
    v6 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]];

    if ((v6 & 1) == 0)
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Calendar must be nil or Gregorian" userInfo:0];
      objc_exception_throw(v7);
    }
  }

  else
  {
    v5 = *MEMORY[0x1E695D850];
  }

  v8 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v5];

  v9 = MEMORY[0x1E695DF10];
  timeZone = [self timeZone];
  if (timeZone)
  {
    v11 = [v9 rem_dateWithDateComponents:self timeZone:timeZone];
  }

  else
  {
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v11 = [v9 rem_dateWithDateComponents:self timeZone:defaultTimeZone];
  }

  v13 = [v8 component:512 fromDate:v11];
  v15 = v13 == 1 || v13 == 7;

  return v15;
}

- (uint64_t)rem_compare:()ReminderKitAdditions
{
  v4 = a3;
  timeZone = [self timeZone];

  timeZone2 = [v4 timeZone];
  v7 = timeZone2;
  if (timeZone)
  {

    if (v7)
    {
      timeZone3 = [self timeZone];
      v9 = _REMSharedGregorianCalendarForTimeZone(timeZone3);
      v10 = [v9 dateFromComponents:self];

      timeZone4 = [v4 timeZone];
      v12 = _REMSharedGregorianCalendarForTimeZone(timeZone4);
      v13 = [v12 dateFromComponents:v4];

      if (v10 && v13)
      {
        v14 = [v10 compare:v13];
      }

      else
      {
        v16 = +[REMLog utility];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [NSDateComponents(ReminderKitAdditions) rem_compare:];
        }

        v14 = 0;
      }

      goto LABEL_17;
    }

    v15 = +[REMLog utility];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [NSDateComponents(ReminderKitAdditions) rem_compare:];
    }
  }

  else
  {

    if (!v7)
    {
      v10 = [self copy];
      v17 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
      [v10 setTimeZone:v17];

      v18 = [v4 copy];
      v19 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
      [v18 setTimeZone:v19];

      v14 = [v10 rem_compare:v18];
LABEL_17:

      goto LABEL_18;
    }

    v15 = +[REMLog utility];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [NSDateComponents(ReminderKitAdditions) rem_compare:];
    }
  }

  v14 = 0;
LABEL_18:

  return v14;
}

- (id)rem_stringRepresentation
{
  v6 = MEMORY[0x1E696AEC0];
  timeZone = [self timeZone];
  name = [timeZone name];
  v4 = [v6 stringWithFormat:@"%@_%ld_%ld_%ld_%ld_%ld_%ld_%ld_%ld", name, objc_msgSend(self, "era"), objc_msgSend(self, "year"), objc_msgSend(self, "month"), objc_msgSend(self, "day"), objc_msgSend(self, "hour"), objc_msgSend(self, "minute"), objc_msgSend(self, "second"), objc_msgSend(self, "nanosecond")];

  return v4;
}

+ (void)rem_dateComponentsWithDateUsingArchivingTimeZone:()ReminderKitAdditions isAllDay:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_fault_impl(&dword_19A0DB000, a3, OS_LOG_TYPE_FAULT, "Could not get a date component with floating time zone {date %@, flags: %@}", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end