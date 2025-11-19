@interface AXSGuidedAccessEnabled
@end

@implementation AXSGuidedAccessEnabled

uint64_t ___AXSGuidedAccessEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.guided.access", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSGuidedAccessEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheGuidedAccessEnabled = result;
  }

  return result;
}

@end