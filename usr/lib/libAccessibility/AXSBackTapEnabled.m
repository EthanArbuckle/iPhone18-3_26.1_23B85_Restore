@interface AXSBackTapEnabled
@end

@implementation AXSBackTapEnabled

uint64_t ___AXSBackTapEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.back.tap.enabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSBackTapEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheBackTapEnabled = result;
  }

  return result;
}

@end