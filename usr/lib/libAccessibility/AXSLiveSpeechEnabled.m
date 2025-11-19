@interface AXSLiveSpeechEnabled
@end

@implementation AXSLiveSpeechEnabled

uint64_t ___AXSLiveSpeechEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.livespeech", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSLiveSpeechEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheLiveSpeechEnabled = result;
  }

  return result;
}

@end