@interface AXSVoiceOverSpeakUnderPointerEnabled
@end

@implementation AXSVoiceOverSpeakUnderPointerEnabled

uint64_t ___AXSVoiceOverSpeakUnderPointerEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.voiceover.speak.under.pointer", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSVoiceOverSpeakUnderPointerPreference, &v2);
  if (v2)
  {
    _kAXSCacheVoiceOverSpeakUnderPointer = result;
  }

  return result;
}

@end