@interface AXSPearlAuthenticationHapticsEnabled
@end

@implementation AXSPearlAuthenticationHapticsEnabled

uint64_t ___AXSPearlAuthenticationHapticsEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.perl.auth.haptics", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSPearlAuthenticationHapticsPreference, &v2);
  if (v2)
  {
    _kAXSCachePearlAuthenticationHapticsEnabled = result;
  }

  return result;
}

@end