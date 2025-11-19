@interface AXSHoverTextFontSize
@end

@implementation AXSHoverTextFontSize

void ___AXSHoverTextFontSize_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.hovertext.fontsize.change", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  FloatPreference = _getFloatPreference(kAXSHoverTextFontSizePreference, 0, &v2);
  if (v2)
  {
    _kAXSCachedHoverTextFontSize = LODWORD(FloatPreference);
  }
}

@end