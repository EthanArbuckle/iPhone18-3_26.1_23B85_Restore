@interface AXSScreenFilterShowInitialAlert
@end

@implementation AXSScreenFilterShowInitialAlert

uint64_t ___AXSScreenFilterShowInitialAlert_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.displayfilter.showinitialalert", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSDisplayFilterShowInitialAlertPreference, &v2);
  if (v2)
  {
    _kAXSCacheDisplayFilterShowInitialAlert = result;
  }

  return result;
}

@end