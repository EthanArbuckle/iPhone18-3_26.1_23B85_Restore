@interface AXSWatchControlEnabled
@end

@implementation AXSWatchControlEnabled

uint64_t ___AXSWatchControlEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.watch.control.enabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSWatchControlEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheWatchControlEnabled = result;
  }

  return result;
}

@end