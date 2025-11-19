@interface AXSPointerAutoHideEnabled
@end

@implementation AXSPointerAutoHideEnabled

uint64_t ___AXSPointerAutoHideEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.pointer.auto.hide", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSPointerAutoHideEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCachePointerAutoHideEnabled = result;
  }

  return result;
}

@end