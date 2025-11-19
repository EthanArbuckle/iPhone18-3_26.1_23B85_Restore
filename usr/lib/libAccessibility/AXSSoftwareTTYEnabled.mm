@interface AXSSoftwareTTYEnabled
@end

@implementation AXSSoftwareTTYEnabled

uint64_t ___AXSSoftwareTTYEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.softwaretty", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSSoftwareTTYPreference, &v2);
  if (v2)
  {
    _kAXSCacheSoftwareTTYEnabled = result;
  }

  return result;
}

@end