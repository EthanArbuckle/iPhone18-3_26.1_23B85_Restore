@interface AXSSpeakThisEnabled
@end

@implementation AXSSpeakThisEnabled

uint64_t ___AXSSpeakThisEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.speak.this", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSSpeakThisEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheSpeakThisEnabled = result;
  }

  return result;
}

@end