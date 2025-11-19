@interface AXSFullKeyboardAccessPassthroughModeEnabled
@end

@implementation AXSFullKeyboardAccessPassthroughModeEnabled

uint64_t ___AXSFullKeyboardAccessPassthroughModeEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.full.keyboard.access.passthrough.mode", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSFullKeyboardAccessPassthroughModeEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheFullKeyboardAccessPassthroughModeEnabled = result;
  }

  return result;
}

@end