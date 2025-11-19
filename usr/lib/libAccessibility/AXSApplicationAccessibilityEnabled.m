@interface AXSApplicationAccessibilityEnabled
@end

@implementation AXSApplicationAccessibilityEnabled

uint64_t ___AXSApplicationAccessibilityEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.app.ax", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSApplicationAccessibilityEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheApplicationAccessibilityEnabled = result;
  }

  return result;
}

@end