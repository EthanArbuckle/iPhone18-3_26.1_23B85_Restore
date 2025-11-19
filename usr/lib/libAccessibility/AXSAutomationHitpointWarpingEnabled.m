@interface AXSAutomationHitpointWarpingEnabled
@end

@implementation AXSAutomationHitpointWarpingEnabled

uint64_t ___AXSAutomationHitpointWarpingEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.automation.hitpoint_warping.enabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAutomationHitpointWarpingEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheAutomationHitpointWarpingEnabled = result;
  }

  return result;
}

@end