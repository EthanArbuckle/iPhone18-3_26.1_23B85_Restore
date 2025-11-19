@interface AXSPearlRestingUnlockEverSet
@end

@implementation AXSPearlRestingUnlockEverSet

uint64_t ___AXSPearlRestingUnlockEverSet_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.resting.pearl.unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSRestingPearlUnlockPreference, &v2);
  if (v2)
  {
    _kAXSCacheRestingPearlUnlockEnabled = result;
  }

  return result;
}

@end