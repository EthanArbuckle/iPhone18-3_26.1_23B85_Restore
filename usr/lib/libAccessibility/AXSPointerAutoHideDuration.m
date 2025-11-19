@interface AXSPointerAutoHideDuration
@end

@implementation AXSPointerAutoHideDuration

void ___AXSPointerAutoHideDuration_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.pointer.auto.hide.duration", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  FloatPreference = _getFloatPreference(kAXSPointerAutoHideDurationPreference, 0, &v2);
  if (v2)
  {
    _kAXSCachePointerAutoHideDuration = LODWORD(FloatPreference);
  }
}

@end