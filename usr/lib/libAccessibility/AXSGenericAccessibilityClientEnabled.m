@interface AXSGenericAccessibilityClientEnabled
@end

@implementation AXSGenericAccessibilityClientEnabled

uint64_t ___AXSGenericAccessibilityClientEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.generic.accessibility.client", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSGenericAccessibilityClientEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheGenericAccessibilityClientEnabled = result;
  }

  return result;
}

@end