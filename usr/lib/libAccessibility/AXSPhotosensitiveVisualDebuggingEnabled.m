@interface AXSPhotosensitiveVisualDebuggingEnabled
@end

@implementation AXSPhotosensitiveVisualDebuggingEnabled

uint64_t ___AXSPhotosensitiveVisualDebuggingEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.pse.visual.debugging", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(@"PhotosensitiveVisualDebugging", &v2);
  if (v2)
  {
    _kAXSCachePhotosensitiveVisualDebuggingEnabled = result;
  }

  return result;
}

@end