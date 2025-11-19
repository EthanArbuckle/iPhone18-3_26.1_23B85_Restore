@interface AXSPhotosensitiveSourceCopyDebuggingEnabled
@end

@implementation AXSPhotosensitiveSourceCopyDebuggingEnabled

uint64_t ___AXSPhotosensitiveSourceCopyDebuggingEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.pse.source.copy.debugging", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(@"PhotosensitiveSourceCopyDebugging", &v2);
  if (v2)
  {
    _kAXSCachePhotosensitiveSourceCopyDebuggingEnabled = result;
  }

  return result;
}

@end