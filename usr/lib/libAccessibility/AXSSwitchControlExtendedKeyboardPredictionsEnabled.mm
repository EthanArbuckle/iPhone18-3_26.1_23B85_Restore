@interface AXSSwitchControlExtendedKeyboardPredictionsEnabled
@end

@implementation AXSSwitchControlExtendedKeyboardPredictionsEnabled

uint64_t ___AXSSwitchControlExtendedKeyboardPredictionsEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.switch.control.useextendedkeyboardpredictions", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSSwitchControlUseExtendedKeyboardPredictionsEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheSwitchControlUseExtendedKeyboardPredictionsEnabled = result;
  }

  return result;
}

@end