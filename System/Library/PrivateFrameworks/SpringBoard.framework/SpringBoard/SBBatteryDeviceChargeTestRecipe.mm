@interface SBBatteryDeviceChargeTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBBatteryDeviceChargeTestRecipe

- (void)handleVolumeIncrease
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SBBatteryDeviceChargeTestRecipeIncreaseNotification", 0, 0, 0);
}

- (void)handleVolumeDecrease
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SBBatteryDeviceChargeTestRecipeDecreaseNotification", 0, 0, 0);
}

@end