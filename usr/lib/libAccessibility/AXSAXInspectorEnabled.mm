@interface AXSAXInspectorEnabled
@end

@implementation AXSAXInspectorEnabled

uint64_t ___AXSAXInspectorEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.internal.axinspector", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAXInspectorPreference, &v2);
  if (v2)
  {
    _kAXSCacheAXInspectorEnabled = result;
  }

  return result;
}

@end