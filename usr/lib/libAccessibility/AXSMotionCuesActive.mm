@interface AXSMotionCuesActive
@end

@implementation AXSMotionCuesActive

uint64_t ___AXSMotionCuesActive_block_invoke()
{
  if (_kAXSCacheMotionCuesActiveDidChangeNotification && !_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, _kAXSCacheMotionCuesActiveDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(@"AXSMotionCuesActive", &v2);
  if (v2)
  {
    _kAXSCacheMotionCuesActive = result;
  }

  return result;
}

@end