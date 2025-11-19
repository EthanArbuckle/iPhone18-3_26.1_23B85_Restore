@interface AXSForceTouchEnabled
@end

@implementation AXSForceTouchEnabled

uint64_t ___AXSForceTouchEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.forcetouch.enabled.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSForceTouchEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCachedForceTouchEnabled = result;
  }

  return result;
}

@end