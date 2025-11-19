@interface AXSZoomSpeakUnderFingerEnabled
@end

@implementation AXSZoomSpeakUnderFingerEnabled

uint64_t ___AXSZoomSpeakUnderFingerEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.zoom.speakunderfinger", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSZoomSpeakUnderFingerEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheZoomSpeakUnderFingerEnabled = result;
  }

  return result;
}

@end