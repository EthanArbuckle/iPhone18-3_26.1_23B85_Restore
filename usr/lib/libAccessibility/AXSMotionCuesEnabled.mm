@interface AXSMotionCuesEnabled
@end

@implementation AXSMotionCuesEnabled

uint64_t ___AXSMotionCuesEnabled_block_invoke()
{
  if (_kAXSCacheMotionCuesDidChangeNotification && !_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, _kAXSCacheMotionCuesDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSMotionCuesEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheMotionCuesEnabled = result;
  }

  return result;
}

@end