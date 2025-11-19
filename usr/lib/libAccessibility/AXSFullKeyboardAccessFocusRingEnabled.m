@interface AXSFullKeyboardAccessFocusRingEnabled
@end

@implementation AXSFullKeyboardAccessFocusRingEnabled

uint64_t ___AXSFullKeyboardAccessFocusRingEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.full.keyboard.access.focus.ring", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSFullKeyboardAccessFocusRingEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheFullKeyboardAccessFocusRingEnabled = result;
  }

  return result;
}

@end