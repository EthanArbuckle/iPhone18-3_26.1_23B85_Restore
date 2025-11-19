@interface AXSUseSingleSystemColor
@end

@implementation AXSUseSingleSystemColor

uint64_t ___AXSUseSingleSystemColor_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.use.single.system.color.enabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSUseSingleSystemColorPreference, &v2);
  if (v2)
  {
    _kAXSCacheUseSingleSystemColor = result;
  }

  return result;
}

@end