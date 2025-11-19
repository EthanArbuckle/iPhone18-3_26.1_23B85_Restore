@interface AXSBrailleScreenInputEnabled
@end

@implementation AXSBrailleScreenInputEnabled

uint64_t ___AXSBrailleScreenInputEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.bsi", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSBrailleScreenInputEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheBrailleScreenInputEnabled = result;
  }

  return result;
}

@end