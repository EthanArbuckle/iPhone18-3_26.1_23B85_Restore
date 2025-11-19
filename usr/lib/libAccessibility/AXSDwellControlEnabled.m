@interface AXSDwellControlEnabled
@end

@implementation AXSDwellControlEnabled

uint64_t ___AXSDwellControlEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.dwell.control", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSDwellControlEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheDwellControlEnabled = result;
  }

  return result;
}

@end