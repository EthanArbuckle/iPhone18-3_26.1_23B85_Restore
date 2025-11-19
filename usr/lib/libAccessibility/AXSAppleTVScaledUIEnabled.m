@interface AXSAppleTVScaledUIEnabled
@end

@implementation AXSAppleTVScaledUIEnabled

uint64_t ___AXSAppleTVScaledUIEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.AppleTVScaledUIEnabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAppleTVScaledUIEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheAppleTVScaledUIEnabled = result;
  }

  return result;
}

@end