@interface AXSAssistiveTouchScannerEnabled
@end

@implementation AXSAssistiveTouchScannerEnabled

uint64_t ___AXSAssistiveTouchScannerEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.switch.control", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAssistiveTouchScannerEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheSwitchControlEnabled = result;
  }

  return result;
}

@end