@interface AXSPointerAllowAppCustomizationEnabled
@end

@implementation AXSPointerAllowAppCustomizationEnabled

uint64_t ___AXSPointerAllowAppCustomizationEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.pointer.allow.app.customization", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSPointerAllowAppCustomizationEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCachePointerAllowAppCustomizationEnabled = result;
  }

  return result;
}

@end