@interface AXSFullKeyboardAccessEnabled
@end

@implementation AXSFullKeyboardAccessEnabled

uint64_t ___AXSFullKeyboardAccessEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.full.keyboard.access", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSFullKeyboardAccessEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheFullKeyboardAccessEnabled = result;
  }

  return result;
}

@end