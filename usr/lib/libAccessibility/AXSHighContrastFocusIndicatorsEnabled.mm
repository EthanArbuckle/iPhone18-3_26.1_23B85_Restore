@interface AXSHighContrastFocusIndicatorsEnabled
@end

@implementation AXSHighContrastFocusIndicatorsEnabled

uint64_t ___AXSHighContrastFocusIndicatorsEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.use.prominent.focus.indicators", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSHighContrastFocusIndicatorsEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheHighContrastFocusIndicatorsEnabled = result;
  }

  return result;
}

@end