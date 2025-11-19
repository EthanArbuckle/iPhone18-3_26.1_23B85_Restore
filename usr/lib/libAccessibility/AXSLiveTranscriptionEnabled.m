@interface AXSLiveTranscriptionEnabled
@end

@implementation AXSLiveTranscriptionEnabled

uint64_t ___AXSLiveTranscriptionEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"_AXSCacheLiveTranscriptionNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSLiveTranscriptionEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheLiveTranscriptionEnabled = result;
  }

  return result;
}

@end