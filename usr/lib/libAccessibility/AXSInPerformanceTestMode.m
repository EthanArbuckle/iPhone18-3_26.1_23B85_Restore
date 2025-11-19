@interface AXSInPerformanceTestMode
@end

@implementation AXSInPerformanceTestMode

uint64_t ___AXSInPerformanceTestMode_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.performance.testing.mode", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSInPerformanceTestModePreference, &v2);
  if (v2)
  {
    _kAXSCacheInPerformanceTestMode = result;
  }

  return result;
}

@end