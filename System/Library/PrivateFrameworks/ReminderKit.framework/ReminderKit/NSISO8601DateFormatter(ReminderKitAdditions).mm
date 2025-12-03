@interface NSISO8601DateFormatter(ReminderKitAdditions)
+ (id)rem_formatterWithTimeZone:()ReminderKitAdditions;
- (id)rem_dateComponentsFromString:()ReminderKitAdditions;
- (id)rem_stringFromDateComponents:()ReminderKitAdditions;
@end

@implementation NSISO8601DateFormatter(ReminderKitAdditions)

+ (id)rem_formatterWithTimeZone:()ReminderKitAdditions
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v5 = v4;
  if (v4)
  {
    [v4 setTimeZone:v3];
    [v5 setFormatOptions:{objc_msgSend(v5, "formatOptions") | 0x80}];
  }

  return v5;
}

- (id)rem_dateComponentsFromString:()ReminderKitAdditions
{
  v2 = [self dateFromString:?];
  if (v2)
  {
    v3 = MEMORY[0x1E695DF10];
    timeZone = [self timeZone];
    v5 = [v3 rem_dateComponentsWithDate:v2 timeZone:timeZone isAllDay:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)rem_stringFromDateComponents:()ReminderKitAdditions
{
  v4 = MEMORY[0x1E695DF10];
  v5 = a3;
  timeZone = [self timeZone];
  v7 = [v4 rem_dateWithDateComponents:v5 timeZone:timeZone];

  v8 = [self stringFromDate:v7];

  return v8;
}

@end