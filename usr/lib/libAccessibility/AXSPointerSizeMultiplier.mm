@interface AXSPointerSizeMultiplier
@end

@implementation AXSPointerSizeMultiplier

void ___AXSPointerSizeMultiplier_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.pointer.size.multiplier", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  FloatPreference = _getFloatPreference(kAXSPointerSizeMultiplierPreference, 0, &v2);
  if (v2)
  {
    _kAXSCachePointerSizeMultiplier = LODWORD(FloatPreference);
  }
}

@end