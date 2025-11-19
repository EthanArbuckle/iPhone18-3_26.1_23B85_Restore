@interface AXSSwitchControlEnabledAndNeedsMicrophoneOnLockScreen
@end

@implementation AXSSwitchControlEnabledAndNeedsMicrophoneOnLockScreen

void ___AXSSwitchControlEnabledAndNeedsMicrophoneOnLockScreen_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsSCNeedsMicrophoneAccessibilityPrefChanged, @"com.apple.accessibility.cache.switch.control", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v1 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v1, 0, _axsSCNeedsMicrophoneAccessibilityPrefChanged, @"com.apple.accessibility.needs.microphone.cache", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

@end