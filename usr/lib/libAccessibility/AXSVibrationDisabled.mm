@interface AXSVibrationDisabled
@end

@implementation AXSVibrationDisabled

uint64_t ___AXSVibrationDisabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.VibrationDisabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSVibrationDisabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheVibrationDisabled = result;
  }

  return result;
}

@end