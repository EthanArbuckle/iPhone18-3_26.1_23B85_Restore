@interface AXSWebProcessAllowsSecondaryThreadAccess
@end

@implementation AXSWebProcessAllowsSecondaryThreadAccess

uint64_t ___AXSWebProcessAllowsSecondaryThreadAccess_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.allows.notification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSWebProcessAllowsSecondaryThreadEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheWebProcessAllowsSecondaryThreadEnabled = result;
  }

  return result;
}

@end