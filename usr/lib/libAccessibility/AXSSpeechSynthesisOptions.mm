@interface AXSSpeechSynthesisOptions
@end

@implementation AXSSpeechSynthesisOptions

uint64_t ___AXSSpeechSynthesisOptions_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.speech.synth.options", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSSpeechSynthesisOptionsPreference, &v2);
  if (v2)
  {
    _kAXSCacheSpeechSynthesisOptions = result;
  }

  return result;
}

@end