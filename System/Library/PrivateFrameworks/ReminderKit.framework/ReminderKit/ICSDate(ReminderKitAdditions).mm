@interface ICSDate(ReminderKitAdditions)
- (id)rem_dateAsUTC;
- (id)rem_dateWithICSCalendar:()ReminderKitAdditions;
@end

@implementation ICSDate(ReminderKitAdditions)

- (id)rem_dateAsUTC
{
  v2 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  v3 = MEMORY[0x1E695DF10];
  components = [self components];
  v5 = [v3 rem_dateWithDateComponents:components timeZone:v2];

  return v5;
}

- (id)rem_dateWithICSCalendar:()ReminderKitAdditions
{
  v4 = [a3 systemTimeZoneForDate:self];
  v5 = MEMORY[0x1E695DF10];
  components = [self components];
  if (v4)
  {
    [v5 rem_dateWithDateComponents:components timeZone:v4];
  }

  else
  {
    [v5 rem_dateWithDateComponentsUsingArchivingTimeZone:components];
  }
  v7 = ;

  return v7;
}

@end