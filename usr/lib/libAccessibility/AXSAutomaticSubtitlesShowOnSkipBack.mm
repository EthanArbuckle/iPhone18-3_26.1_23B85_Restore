@interface AXSAutomaticSubtitlesShowOnSkipBack
@end

@implementation AXSAutomaticSubtitlesShowOnSkipBack

uint64_t ___AXSAutomaticSubtitlesShowOnSkipBack_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.AutomationSubtitlesShowOnSkipBack", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAutomaticSubtitlesShowOnSkipBackPreference, &v2);
  if (v2)
  {
    _kAXSCacheAutomaticSubtitlesShowOnSkipBack = result;
  }

  return result;
}

@end