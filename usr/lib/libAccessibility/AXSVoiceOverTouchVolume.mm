@interface AXSVoiceOverTouchVolume
@end

@implementation AXSVoiceOverTouchVolume

void ___AXSVoiceOverTouchVolume_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.vot.volume", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  FloatPreference = _getFloatPreference(kAXSVoiceOverTouchVolumePreference, 0, &v2);
  if (v2)
  {
    _kAXSCachedVoiceOverVolume = LODWORD(FloatPreference);
  }
}

@end