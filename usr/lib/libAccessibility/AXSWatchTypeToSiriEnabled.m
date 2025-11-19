@interface AXSWatchTypeToSiriEnabled
@end

@implementation AXSWatchTypeToSiriEnabled

uint64_t ___AXSWatchTypeToSiriEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.watch.typetosiri.enabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSWatchTypeToSiriEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheWatchTypeToSiriEnabled = result;
  }

  return result;
}

@end