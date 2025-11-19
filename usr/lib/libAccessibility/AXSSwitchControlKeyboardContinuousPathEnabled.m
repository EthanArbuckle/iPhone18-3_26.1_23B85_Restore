@interface AXSSwitchControlKeyboardContinuousPathEnabled
@end

@implementation AXSSwitchControlKeyboardContinuousPathEnabled

uint64_t ___AXSSwitchControlKeyboardContinuousPathEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.switch.control.keyboardcontinuouspath", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSSwitchControlKeyboardContinuousPathEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheSwitchControlKeyboardContinuousPathEnabled = result;
  }

  return result;
}

@end