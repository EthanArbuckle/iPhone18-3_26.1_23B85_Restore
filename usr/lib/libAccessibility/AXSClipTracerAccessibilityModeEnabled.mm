@interface AXSClipTracerAccessibilityModeEnabled
@end

@implementation AXSClipTracerAccessibilityModeEnabled

uint64_t ___AXSClipTracerAccessibilityModeEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.clip.tracer.enabled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSClipTracerAccessibilityModeEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheClipTracerAccessibilityModeEnabled = result;
  }

  return result;
}

@end