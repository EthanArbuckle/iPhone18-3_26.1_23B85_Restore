@interface AXSReduceMotionAutoplayAnimatedImagesEnabled
@end

@implementation AXSReduceMotionAutoplayAnimatedImagesEnabled

uint64_t ___AXSReduceMotionAutoplayAnimatedImagesEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.reduce.motion.autoplay.animated.images", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSReduceMotionAutoplayAnimatedImagesPreference, &v2);
  if (v2)
  {
    _kAXSCacheReduceMotionAutoplayAnimatedImagesEnabled = result;
  }

  return result;
}

@end