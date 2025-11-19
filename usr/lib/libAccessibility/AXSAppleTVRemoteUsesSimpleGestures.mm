@interface AXSAppleTVRemoteUsesSimpleGestures
@end

@implementation AXSAppleTVRemoteUsesSimpleGestures

uint64_t ___AXSAppleTVRemoteUsesSimpleGestures_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.apple.tv.simple.gestures", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAppleTVSimpleGesturesEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheAppleTVSimpleGesturesEnabled = result;
  }

  return result;
}

@end