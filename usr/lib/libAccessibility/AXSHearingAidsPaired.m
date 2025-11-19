@interface AXSHearingAidsPaired
@end

@implementation AXSHearingAidsPaired

uint64_t ___AXSHearingAidsPaired_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.hearing.aid.paired", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSHearingAidPairedPreference, &v2);
  if (v2)
  {
    _kAXSCacheHearingAidPaired = result;
  }

  return result;
}

@end