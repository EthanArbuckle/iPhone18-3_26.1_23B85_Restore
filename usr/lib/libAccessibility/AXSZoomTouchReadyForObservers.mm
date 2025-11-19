@interface AXSZoomTouchReadyForObservers
@end

@implementation AXSZoomTouchReadyForObservers

uint64_t ___AXSZoomTouchReadyForObservers_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.zoom.readyForObservers", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSZoomTouchReadyForObserversPreference, &v2);
  if (v2)
  {
    _kAXSCacheZoomTouchReadyForObservers = result;
  }

  return result;
}

@end