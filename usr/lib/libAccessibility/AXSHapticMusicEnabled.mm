@interface AXSHapticMusicEnabled
@end

@implementation AXSHapticMusicEnabled

uint64_t ___AXSHapticMusicEnabled_block_invoke()
{
  if (_kAXSCacheHapticMusicDidChangeNotification && !_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, _kAXSCacheHapticMusicDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSHapticMusicEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheHapticMusicEnabled = result;
  }

  return result;
}

@end