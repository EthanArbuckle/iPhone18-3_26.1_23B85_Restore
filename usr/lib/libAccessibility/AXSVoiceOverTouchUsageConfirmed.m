@interface AXSVoiceOverTouchUsageConfirmed
@end

@implementation AXSVoiceOverTouchUsageConfirmed

uint64_t ___AXSVoiceOverTouchUsageConfirmed_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.vo.usage.confirm", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSVoiceOverTouchUsageConfirmedPreference, &v2);
  if (v2)
  {
    _kAXSCacheVoiceOverUsageConfirmation = result;
  }

  return result;
}

@end