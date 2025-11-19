@interface AXSPreferredFontSize
@end

@implementation AXSPreferredFontSize

void ___AXSPreferredFontSize_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.large.text.change", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  FloatPreference = _getFloatPreference(kAXSPreferredFontSizePreference, 0, &v2);
  if (v2)
  {
    _kAXSCachedPreferredFontSize = LODWORD(FloatPreference);
  }
}

@end