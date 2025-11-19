@interface AXSHearingAidRingtoneStreamingEnabled
@end

@implementation AXSHearingAidRingtoneStreamingEnabled

uint64_t ___AXSHearingAidRingtoneStreamingEnabled_block_invoke()
{
  if (kAXSHearingAidRingtoneStreamPreferenceChangedNotification && !_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, kAXSHearingAidRingtoneStreamPreferenceChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSHearingAidRingtoneStreamingPreference, &v2);
  if (v2)
  {
    _kAXSCacheHearingAidRingtonStreamingEnabled = result;
  }

  return result;
}

@end