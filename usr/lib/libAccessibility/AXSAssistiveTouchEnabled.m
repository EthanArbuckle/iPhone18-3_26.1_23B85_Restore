@interface AXSAssistiveTouchEnabled
@end

@implementation AXSAssistiveTouchEnabled

uint64_t ___AXSAssistiveTouchEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.ast", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAssistiveTouchEnabledPreference, &v2);
  if (v2)
  {
    _kAXSAssistiveTouchEnabledCache = result;
  }

  return result;
}

@end