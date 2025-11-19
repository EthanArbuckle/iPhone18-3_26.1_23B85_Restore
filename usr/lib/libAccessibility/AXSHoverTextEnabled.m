@interface AXSHoverTextEnabled
@end

@implementation AXSHoverTextEnabled

uint64_t ___AXSHoverTextEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.hovertext", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSHoverTextEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheHoverTextEnabled = result;
  }

  return result;
}

@end