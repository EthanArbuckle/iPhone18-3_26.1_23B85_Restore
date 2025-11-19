@interface AXSAppleTVRemoteForceLiveTVButtons
@end

@implementation AXSAppleTVRemoteForceLiveTVButtons

uint64_t ___AXSAppleTVRemoteForceLiveTVButtons_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.apple.tv.live.tv.buttons", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAppleTVForceLiveTVButtonsEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheAppleTVForceLiveTVButtonsEnabled = result;
  }

  return result;
}

@end