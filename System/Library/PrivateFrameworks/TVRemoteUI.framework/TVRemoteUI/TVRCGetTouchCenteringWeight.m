@interface TVRCGetTouchCenteringWeight
@end

@implementation TVRCGetTouchCenteringWeight

void ___TVRCGetTouchCenteringWeight_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __clearCachedTouchCenteringWeight, @"com.apple.TVRemote.TouchCenteringWeight", 0, CFNotificationSuspensionBehaviorCoalesce);
}

@end