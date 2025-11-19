@interface AXSLocalizationCaptionMode
@end

@implementation AXSLocalizationCaptionMode

uint64_t ___AXSLocalizationCaptionMode_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.loc.caption.mode.enabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSLocalizationCaptionModeEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheLocalizationCaptionModeEnabled = result;
  }

  return result;
}

@end