@interface AXSClarityUIEnabled
@end

@implementation AXSClarityUIEnabled

uint64_t ___AXSClarityUIEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.clarityui", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSClarityUIEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheClarityUIEnabled = result;
  }

  return result;
}

@end