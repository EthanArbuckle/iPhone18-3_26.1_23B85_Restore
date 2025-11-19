@interface AXSVoiceOverSpeakUnderPointerDelay
@end

@implementation AXSVoiceOverSpeakUnderPointerDelay

void ___AXSVoiceOverSpeakUnderPointerDelay_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.voiceover.speak.under.pointer", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  FloatPreference = _getFloatPreference(kAXSVoiceOverSpeakUnderPointerDelayPreference, 0, &v2);
  if (v2)
  {
    _kAXSCacheVoiceOverSpeakUnderPointerDelay = LODWORD(FloatPreference);
  }
}

@end