@interface AXSNocturneAccessibilityModeEnabled
@end

@implementation AXSNocturneAccessibilityModeEnabled

uint64_t ___AXSNocturneAccessibilityModeEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.nocturne.enabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSNocturneAccessibilityModeEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheNocturneAccessibilityModeEnabled = result;
  }

  return result;
}

@end