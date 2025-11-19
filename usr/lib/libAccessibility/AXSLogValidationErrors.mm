@interface AXSLogValidationErrors
@end

@implementation AXSLogValidationErrors

uint64_t ___AXSLogValidationErrors_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.internal.logvalidationerrors", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSLogValidationErrorsPreference, &v2);
  if (v2)
  {
    _kAXSCacheLogValidationErrors = result;
  }

  return result;
}

@end