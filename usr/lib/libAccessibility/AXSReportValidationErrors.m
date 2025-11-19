@interface AXSReportValidationErrors
@end

@implementation AXSReportValidationErrors

uint64_t ___AXSReportValidationErrors_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.internal.reportvalidationerrors", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSReportValidationErrorsPreference, &v2);
  if (v2)
  {
    _kAXSCacheReportValidationErrors = result;
  }

  return result;
}

@end