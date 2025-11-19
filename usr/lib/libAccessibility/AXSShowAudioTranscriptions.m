@interface AXSShowAudioTranscriptions
@end

@implementation AXSShowAudioTranscriptions

uint64_t ___AXSShowAudioTranscriptions_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.show.audio.transcriptions", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSShowAudioTranscriptionsEnabled, &v2);
  if (v2)
  {
    _kAXSCacheShowAudioTranscriptionsEnabled = result;
  }

  return result;
}

@end