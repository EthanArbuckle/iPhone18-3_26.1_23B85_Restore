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
  v2 = [a1 dateFromString:?];
  if (v2)
  {
    v3 = MEMORY[0x1E695DF10];
    v4 = [a1 timeZone];
    v5 = [v3 rem_dateComponentsWithDate:v2 timeZone:v4 isAllDay:0];
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
  v6 = [a1 timeZone];
  v7 = [v4 rem_dateWithDateComponents:v5 timeZone:v6];

  v8 = [a1 stringFromDate:v7];

  return v8;
}

@end