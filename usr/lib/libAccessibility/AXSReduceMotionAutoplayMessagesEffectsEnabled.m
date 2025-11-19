@interface AXSReduceMotionAutoplayMessagesEffectsEnabled
@end

@implementation AXSReduceMotionAutoplayMessagesEffectsEnabled

uint64_t ___AXSReduceMotionAutoplayMessagesEffectsEnabled_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.reduce.motion.autoplay.messages.effects", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v2 = 0;
  result = _getBooleanPreference(kAXSReduceMotionAutoplayMessagesEffectsPreference, &v2);
  if (!v2)
  {
    result = !_AXSReduceMotionEnabled();
  }

  _kAXSCacheReduceMotionAutoplayMessagesEffectsEnabled = result;
  return result;
}

@end