@interface AXSPencilExtendedSqueezeRangeEnabled
@end

@implementation AXSPencilExtendedSqueezeRangeEnabled

uint64_t ___AXSPencilExtendedSqueezeRangeEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.pencil.extended.squeeze.range", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(@"AXSPencilExtendedSqueezeRangeEnabledPreference", &v2);
  if (v2)
  {
    _kAXSCachePencilExtendedSqueezeRangeEnabled = result;
  }

  return result;
}

@end