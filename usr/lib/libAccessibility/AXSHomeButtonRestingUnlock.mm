@interface AXSHomeButtonRestingUnlock
@end

@implementation AXSHomeButtonRestingUnlock

uint64_t ___AXSHomeButtonRestingUnlock_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.resting.home.button.unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSRestingHomeButtonUnlockPreference, &v2);
  if (v2)
  {
    _kAXSCacheRestingHomeButtonUnlockEnabled = result;
  }

  return result;
}

@end