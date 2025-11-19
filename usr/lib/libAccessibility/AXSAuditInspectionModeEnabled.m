@interface AXSAuditInspectionModeEnabled
@end

@implementation AXSAuditInspectionModeEnabled

uint64_t ___AXSAuditInspectionModeEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.audit.inspection.mode", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAuditInspectionModeEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheAuditInspectionModeModeEnabled = result;
  }

  return result;
}

@end