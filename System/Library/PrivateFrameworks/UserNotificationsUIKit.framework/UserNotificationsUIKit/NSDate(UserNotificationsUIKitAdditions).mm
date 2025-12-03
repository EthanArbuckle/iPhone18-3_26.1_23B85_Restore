@interface NSDate(UserNotificationsUIKitAdditions)
- (uint64_t)_nc_hour;
@end

@implementation NSDate(UserNotificationsUIKitAdditions)

- (uint64_t)_nc_hour
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [currentCalendar components:32 fromDate:self];

  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  [v3 setTimeZone:localTimeZone];

  hour = [v3 hour];
  return hour;
}

@end