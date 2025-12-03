@interface RTDataProtectionManagerNotificationUnlockedSinceBoot
- (RTDataProtectionManagerNotificationUnlockedSinceBoot)initWithUnlockedSinceBoot:(BOOL)boot;
@end

@implementation RTDataProtectionManagerNotificationUnlockedSinceBoot

- (RTDataProtectionManagerNotificationUnlockedSinceBoot)initWithUnlockedSinceBoot:(BOOL)boot
{
  v5.receiver = self;
  v5.super_class = RTDataProtectionManagerNotificationUnlockedSinceBoot;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_unlockedSinceBoot = boot;
  }

  return result;
}

@end