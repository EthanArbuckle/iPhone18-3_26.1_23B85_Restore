@interface AXSEarpieceNoiseCancellationEnabled
@end

@implementation AXSEarpieceNoiseCancellationEnabled

uint64_t ___AXSEarpieceNoiseCancellationEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.earpiece.noise", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSEarpieceNoiseCancellationPreference, &v2);
  if (v2)
  {
    _kAXSCacheEarpieceNoiseCancellation = result;
  }

  return result;
}

@end