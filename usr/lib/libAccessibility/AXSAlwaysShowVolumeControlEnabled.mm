@interface AXSAlwaysShowVolumeControlEnabled
@end

@implementation AXSAlwaysShowVolumeControlEnabled

uint64_t ___AXSAlwaysShowVolumeControlEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.alwaysshowvolume", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAlwaysShowVolumeControlEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheAlwaysShowVolumeControlsEnabled = result;
  }

  return result;
}

@end