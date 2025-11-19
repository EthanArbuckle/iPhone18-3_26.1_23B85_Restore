@interface AXSVoiceOverTouchSpeakTimeOnWake
@end

@implementation AXSVoiceOverTouchSpeakTimeOnWake

uint64_t ___AXSVoiceOverTouchSpeakTimeOnWake_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.AXSCacheVoiceOverSpeakTimeOnWakeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSVoiceOverTouchSpeakTimeOnWakePreference, &v2);
  if (v2)
  {
    _kAXSCacheVoiceOverSpeakTimeOnWake = result;
  }

  return result;
}

@end