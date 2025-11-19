@interface AXSAutomaticSubtitlesShowWhenMuted
@end

@implementation AXSAutomaticSubtitlesShowWhenMuted

uint64_t ___AXSAutomaticSubtitlesShowWhenMuted_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.AutomationSubtitlesShowWhenMuted", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAutomaticSubtitlesShowWhenMutedPreference, &v2);
  if (v2)
  {
    _kAXSCacheAutomaticSubtitlesShowWhenMuted = result;
  }

  return result;
}

@end