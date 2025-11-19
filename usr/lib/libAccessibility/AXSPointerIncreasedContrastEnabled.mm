@interface AXSPointerIncreasedContrastEnabled
@end

@implementation AXSPointerIncreasedContrastEnabled

uint64_t ___AXSPointerIncreasedContrastEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.pointer.increased.contrast", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSPointerIncreasedContrastEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCachePointerIncreasedContrastEnabled = result;
  }

  return result;
}

@end