@interface AXSHoverTextBackgroundOpacity
@end

@implementation AXSHoverTextBackgroundOpacity

void ___AXSHoverTextBackgroundOpacity_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.hovertext.backgroundopacity.change", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  FloatPreference = _getFloatPreference(kAXSHoverTextBackgroundOpacityPreference, 0, &v2);
  if (v2)
  {
    _kAXSCachedHoverTextBackgroundOpacity = LODWORD(FloatPreference);
  }
}

@end