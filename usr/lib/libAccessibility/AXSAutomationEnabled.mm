@interface AXSAutomationEnabled
@end

@implementation AXSAutomationEnabled

uint64_t ___AXSAutomationEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.automation.enabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAutomationEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheAutomationEnabled = result;
  }

  return result;
}

@end