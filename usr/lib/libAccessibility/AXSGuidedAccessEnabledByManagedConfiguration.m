@interface AXSGuidedAccessEnabledByManagedConfiguration
@end

@implementation AXSGuidedAccessEnabledByManagedConfiguration

uint64_t ___AXSGuidedAccessEnabledByManagedConfiguration_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.guided.access.via.mdm", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSGuidedAccessEnabledByManagedConfigurationPreference, &v2);
  if (v2)
  {
    _kAXSCacheGuidedAccessEnabledByManagedConfiguration = result;
  }

  return result;
}

@end