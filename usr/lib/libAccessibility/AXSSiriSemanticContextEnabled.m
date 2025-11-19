@interface AXSSiriSemanticContextEnabled
@end

@implementation AXSSiriSemanticContextEnabled

uint64_t ___AXSSiriSemanticContextEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.siri.semantic.context.enabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSSiriSemanticContextEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheSiriSemanticContextEnabled = result;
  }

  return result;
}

@end