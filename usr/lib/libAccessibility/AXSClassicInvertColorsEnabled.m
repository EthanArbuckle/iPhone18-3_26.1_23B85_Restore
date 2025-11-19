@interface AXSClassicInvertColorsEnabled
@end

@implementation AXSClassicInvertColorsEnabled

uint64_t ___AXSClassicInvertColorsEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.classic.invert.colors", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSClassicInvertColorsPreference, &v2);
  if (v2)
  {
    _kAXSCacheClassicInvertColorsEnabled = result;
  }

  return result;
}

@end