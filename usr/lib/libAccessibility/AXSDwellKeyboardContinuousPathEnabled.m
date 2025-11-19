@interface AXSDwellKeyboardContinuousPathEnabled
@end

@implementation AXSDwellKeyboardContinuousPathEnabled

uint64_t ___AXSDwellKeyboardContinuousPathEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.dwell.keyboardcontinuouspath", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSDwellKeyboardContinuousPathEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheDwellKeyboardContinuousPathEnabled = result;
  }

  return result;
}

@end