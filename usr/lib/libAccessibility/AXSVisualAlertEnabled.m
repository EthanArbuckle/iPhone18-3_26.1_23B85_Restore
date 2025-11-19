@interface AXSVisualAlertEnabled
@end

@implementation AXSVisualAlertEnabled

uint64_t ___AXSVisualAlertEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.visual.alert", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSVisualAlertEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheVisualAlertEnabled = result;
  }

  return result;
}

@end