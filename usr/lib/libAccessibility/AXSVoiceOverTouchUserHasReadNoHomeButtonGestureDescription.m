@interface AXSVoiceOverTouchUserHasReadNoHomeButtonGestureDescription
@end

@implementation AXSVoiceOverTouchUserHasReadNoHomeButtonGestureDescription

uint64_t ___AXSVoiceOverTouchUserHasReadNoHomeButtonGestureDescription_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.vo.user.has.read.no.home.button.gesture", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSVoiceOverTouchUserHasReadNoHomeButtonGesturePreference, &v2);
  if (v2)
  {
    _kAXSCacheVOTUserHasReadNoHomeButtonGesture = result;
  }

  return result;
}

@end