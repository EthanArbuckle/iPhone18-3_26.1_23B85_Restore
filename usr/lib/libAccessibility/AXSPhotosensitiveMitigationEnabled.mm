@interface AXSPhotosensitiveMitigationEnabled
@end

@implementation AXSPhotosensitiveMitigationEnabled

uint64_t ___AXSPhotosensitiveMitigationEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.pse.mitigation", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(@"PhotosensitiveMitigation", &v2);
  if (v2)
  {
    _kAXSCachePhotosensitiveMitigationEnabled = result;
  }

  return result;
}

@end