@interface AXSLiveHeadphoneLevelEnabled
@end

@implementation AXSLiveHeadphoneLevelEnabled

uint64_t ___AXSLiveHeadphoneLevelEnabled_block_invoke()
{
  if (kAXSLiveHeadphoneLevelEnabledDidChangeNotification && !_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, kAXSLiveHeadphoneLevelEnabledDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSLiveHeadphoneLevelEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheLiveHeadphoneLevelEnabled = result;
  }

  return result;
}

@end