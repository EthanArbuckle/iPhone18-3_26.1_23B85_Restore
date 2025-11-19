@interface AXSMotionCuesShouldShowBanner
@end

@implementation AXSMotionCuesShouldShowBanner

uint64_t ___AXSMotionCuesShouldShowBanner_block_invoke()
{
  if (_kAXSCacheMotionCuesShouldShowBannerDidChangeNotification && !_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, _kAXSCacheMotionCuesShouldShowBannerDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(@"AXSMotionCuesShouldShowBanner", &v2);
  if (v2)
  {
    _kAXSCacheMotionCuesShouldShowBanner = result;
  }

  return result;
}

@end