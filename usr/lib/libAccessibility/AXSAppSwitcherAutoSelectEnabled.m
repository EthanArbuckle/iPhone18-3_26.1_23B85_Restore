@interface AXSAppSwitcherAutoSelectEnabled
@end

@implementation AXSAppSwitcherAutoSelectEnabled

uint64_t ___AXSAppSwitcherAutoSelectEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.AXSCacheAppSwitcherAutoSelectNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAppSwitcherAutoSelectPreference, &v2);
  if (v2)
  {
    _kAXSCacheAppSwitcherAutoSelect = result;
  }

  return result;
}

@end