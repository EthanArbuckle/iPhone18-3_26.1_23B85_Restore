@interface AXSPhoneLockToEndCallEnabled
@end

@implementation AXSPhoneLockToEndCallEnabled

uint64_t ___AXSPhoneLockToEndCallEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.lock.to.end.call", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSPhoneLockToEndCallPreference, &v2);
  if (v2)
  {
    _kAXSCachePhoneLockToEndCall = result;
  }

  return result;
}

@end