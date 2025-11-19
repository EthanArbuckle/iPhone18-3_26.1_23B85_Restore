@interface AXSLowercaseKeyboardDisplayEnabled
@end

@implementation AXSLowercaseKeyboardDisplayEnabled

uint64_t ___AXSLowercaseKeyboardDisplayEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.lower.case.keyboard.enabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSLowerCaseKeyboardEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheLowercaseKeyboardEnabled = result;
  }

  return result;
}

@end