@interface AXSPointerStrokeColorWidth
@end

@implementation AXSPointerStrokeColorWidth

void ___AXSPointerStrokeColorWidth_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.pointer.stroke.color.width", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  FloatPreference = _getFloatPreference(kAXSPointerStrokeColorWidthPreference, 0, &v2);
  if (v2)
  {
    _kAXSCachePointerStrokeColorWidth = LODWORD(FloatPreference);
  }
}

@end