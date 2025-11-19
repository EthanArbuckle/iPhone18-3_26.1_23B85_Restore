@interface AXSAirPodsSpatialAudioLockToDevice
@end

@implementation AXSAirPodsSpatialAudioLockToDevice

uint64_t ___AXSAirPodsSpatialAudioLockToDevice_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.airpod.spatial.audio.lock.to.device", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(@"AXSAirPodsSpatialAudioLockToDevice", &v2);
  if (v2)
  {
    _kAXSCacheAirPodsSpatialAudioLockToDeviceEnabled = result;
  }

  return result;
}

@end