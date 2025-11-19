@interface AXSVoiceOverTouchTutorialUsageConfirmed
@end

@implementation AXSVoiceOverTouchTutorialUsageConfirmed

uint64_t ___AXSVoiceOverTouchTutorialUsageConfirmed_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.vo.usage.tutorial.confirm", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSVoiceOverTouchTutorialUsageConfirmedPreference, &v2);
  if (v2)
  {
    _kAXSCacheVoiceOverTutorialUsageConfirmation = result;
  }

  return result;
}

@end