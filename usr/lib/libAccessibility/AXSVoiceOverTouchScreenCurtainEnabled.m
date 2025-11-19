@interface AXSVoiceOverTouchScreenCurtainEnabled
@end

@implementation AXSVoiceOverTouchScreenCurtainEnabled

uint64_t ___AXSVoiceOverTouchScreenCurtainEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.vo.screen.curtain", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSVoiceOverTouchScreenCurtainPreference, &v2);
  if (v2)
  {
    _kAXSCacheVoiceOverScreenCurtain = result;
  }

  return result;
}

@end