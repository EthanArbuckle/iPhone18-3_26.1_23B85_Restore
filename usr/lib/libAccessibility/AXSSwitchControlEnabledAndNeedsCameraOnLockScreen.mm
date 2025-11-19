@interface AXSSwitchControlEnabledAndNeedsCameraOnLockScreen
@end

@implementation AXSSwitchControlEnabledAndNeedsCameraOnLockScreen

void ___AXSSwitchControlEnabledAndNeedsCameraOnLockScreen_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsSCNeedsCameraAccessibilityPrefChanged, @"com.apple.accessibility.cache.switch.control", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v1 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v1, 0, _axsSCNeedsCameraAccessibilityPrefChanged, @"com.apple.accessibility.needs.camera.cache", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

@end