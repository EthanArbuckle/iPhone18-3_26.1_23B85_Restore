@interface AXSZoomTouchEnabled
@end

@implementation AXSZoomTouchEnabled

uint64_t ___AXSZoomTouchEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.zoom", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSZoomTouchEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheZoomTouchEnabled = result;
  }

  return result;
}

@end