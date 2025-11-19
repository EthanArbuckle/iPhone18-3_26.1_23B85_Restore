@interface AXSGuidedAccessHasPasscode
@end

@implementation AXSGuidedAccessHasPasscode

uint64_t ___AXSGuidedAccessHasPasscode_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.gax.haspasscode", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSGuidedAccessHasPasscodePreference, &v2);
  if (v2)
  {
    _kAXSCacheGuidedAccessHasPasscode = result;
  }

  return result;
}

@end