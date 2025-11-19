@interface AXSAllowsMixToUplink
@end

@implementation AXSAllowsMixToUplink

uint64_t ___AXSAllowsMixToUplink_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.mix.to.uplink.notification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(@"AXSAllowsMixToUplinkPreference", &v2);
  if (v2)
  {
    _kAXSCacheAllowsMixToUplink = result;
  }

  return result;
}

@end