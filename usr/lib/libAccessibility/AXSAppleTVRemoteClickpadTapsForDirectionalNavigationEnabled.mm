@interface AXSAppleTVRemoteClickpadTapsForDirectionalNavigationEnabled
@end

@implementation AXSAppleTVRemoteClickpadTapsForDirectionalNavigationEnabled

uint64_t ___AXSAppleTVRemoteClickpadTapsForDirectionalNavigationEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.AppleTVRemoteClickpadTapsForDirectionalNavigationEnabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAppleTVRemoteClickpadTapsForDirectionalNavigationEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheAppleTVRemoteClickpadTapsForDirectionalNavigationEnabled = result;
  }

  return result;
}

@end