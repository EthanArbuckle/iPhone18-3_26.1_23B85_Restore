@interface AXSUIFocusRingEnabled
@end

@implementation AXSUIFocusRingEnabled

uint64_t ___AXSUIFocusRingEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.ui.focus.ring", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSUIFocusRingEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheUIFocusRingEnabled = result;
  }

  return result;
}

@end