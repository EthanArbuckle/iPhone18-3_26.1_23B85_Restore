@interface AXSHoverTextTypingEnabled
@end

@implementation AXSHoverTextTypingEnabled

uint64_t ___AXSHoverTextTypingEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.hovertext.typing", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSHoverTextTypingEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheHoverTextTypingEnabled = result;
  }

  return result;
}

@end