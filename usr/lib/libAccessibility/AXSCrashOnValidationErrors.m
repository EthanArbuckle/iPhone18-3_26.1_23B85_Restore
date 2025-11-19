@interface AXSCrashOnValidationErrors
@end

@implementation AXSCrashOnValidationErrors

uint64_t ___AXSCrashOnValidationErrors_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.internal.crashonvalidationerrors", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSCrashOnValidationErrorsPreference, &v2);
  if (v2)
  {
    _kAXSCacheCrashOnValidationErrors = result;
  }

  return result;
}

@end