@interface AXSCarPlayEnhanceTextLegibilityEnabled
@end

@implementation AXSCarPlayEnhanceTextLegibilityEnabled

uint64_t ___AXSCarPlayEnhanceTextLegibilityEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.carplay.enhance.text.legibility", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(@"CarPlayEnhancedTextLegibilityEnabled", &v2);
  if (v2)
  {
    _kAXSCacheCarPlayEnhanceTextLegibility = result;
  }

  return result;
}

@end