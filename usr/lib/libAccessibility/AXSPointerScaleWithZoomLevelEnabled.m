@interface AXSPointerScaleWithZoomLevelEnabled
@end

@implementation AXSPointerScaleWithZoomLevelEnabled

uint64_t ___AXSPointerScaleWithZoomLevelEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.pointer.scale.with.zoom.level", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSPointerScaleWithZoomLevelEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCachePointerScaleWithZoomLevelEnabled = result;
  }

  return result;
}

@end