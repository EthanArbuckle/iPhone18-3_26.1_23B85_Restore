@interface SBBatteryDeviceCountTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBBatteryDeviceCountTestRecipe

- (void)handleVolumeIncrease
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SBBatteryDeviceCountTestRecipeIncreaseNotification", 0, 0, 0);
}

- (void)handleVolumeDecrease
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SBBatteryDeviceCountTestRecipeDecreaseNotification", 0, 0, 0);
}

@end