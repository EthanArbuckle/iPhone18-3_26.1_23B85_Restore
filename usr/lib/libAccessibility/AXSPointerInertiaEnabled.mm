@interface AXSPointerInertiaEnabled
@end

@implementation AXSPointerInertiaEnabled

uint64_t ___AXSPointerInertiaEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.pointer.inertia", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSPointerInertiaEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCachePointerInertiaEnabled = result;
  }

  return result;
}

@end