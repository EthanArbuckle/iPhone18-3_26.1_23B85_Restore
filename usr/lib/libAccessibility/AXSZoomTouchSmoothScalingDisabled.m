@interface AXSZoomTouchSmoothScalingDisabled
@end

@implementation AXSZoomTouchSmoothScalingDisabled

uint64_t ___AXSZoomTouchSmoothScalingDisabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.zoom.smoothscaling", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSZoomTouchSmoothScalingPreference, &v2);
  if (v2)
  {
    _kAXSCacheZoomTouchSmoothScalingDisabled = result;
  }

  return result;
}

@end