@interface NSDate(UserNotificationsUIKitAdditions)
- (uint64_t)_nc_hour;
@end

@implementation NSDate(UserNotificationsUIKitAdditions)

- (uint64_t)_nc_hour
{
  v2 = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [v2 components:32 fromDate:a1];

  v4 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v3 setTimeZone:v4];

  v5 = [v3 hour];
  return v5;
}

@end