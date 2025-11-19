@interface TVRCGetTouchToSelectTravelDistance
@end

@implementation TVRCGetTouchToSelectTravelDistance

void ___TVRCGetTouchToSelectTravelDistance_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __clearCachedTouchToSelectTravelDistance, @"com.apple.TVRemote.TouchToSelectTravelDistance", 0, CFNotificationSuspensionBehaviorCoalesce);
}

@end