@interface RTDataProtectionManagerNotificationUnlockedSinceBoot
- (RTDataProtectionManagerNotificationUnlockedSinceBoot)initWithUnlockedSinceBoot:(BOOL)a3;
@end

@implementation RTDataProtectionManagerNotificationUnlockedSinceBoot

- (RTDataProtectionManagerNotificationUnlockedSinceBoot)initWithUnlockedSinceBoot:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RTDataProtectionManagerNotificationUnlockedSinceBoot;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_unlockedSinceBoot = a3;
  }

  return result;
}

@end