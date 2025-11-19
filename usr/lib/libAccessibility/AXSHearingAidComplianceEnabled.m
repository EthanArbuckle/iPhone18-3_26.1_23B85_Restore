@interface AXSHearingAidComplianceEnabled
@end

@implementation AXSHearingAidComplianceEnabled

uint64_t ___AXSHearingAidComplianceEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.hac.audio", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSHearingAidCompliancePreference, &v2);
  if (v2)
  {
    _kAXSCacheHearingAidComplianceEnabled = result;
  }

  return result;
}

@end