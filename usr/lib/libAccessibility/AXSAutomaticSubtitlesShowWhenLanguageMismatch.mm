@interface AXSAutomaticSubtitlesShowWhenLanguageMismatch
@end

@implementation AXSAutomaticSubtitlesShowWhenLanguageMismatch

uint64_t ___AXSAutomaticSubtitlesShowWhenLanguageMismatch_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.AutomaticSubtitlesShowWhenLanguageMismatch", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAutomaticSubtitlesShowWhenLanguageMismatchPreference, &v2);
  if (v2)
  {
    _kAXSCacheAutomaticSubtitlesShowWhenLanguageMismatch = result;
  }

  return result;
}

@end