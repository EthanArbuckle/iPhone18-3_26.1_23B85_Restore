@interface AXSPointerEffectScalingEnabled
@end

@implementation AXSPointerEffectScalingEnabled

uint64_t ___AXSPointerEffectScalingEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.pointer.effect.scaling", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSPointerEffectScalingEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCachePointerEffectScalingEnabled = result;
  }

  return result;
}

@end