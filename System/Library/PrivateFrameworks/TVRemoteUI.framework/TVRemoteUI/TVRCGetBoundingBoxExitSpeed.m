@interface TVRCGetBoundingBoxExitSpeed
@end

@implementation TVRCGetBoundingBoxExitSpeed

void ___TVRCGetBoundingBoxExitSpeed_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __clearCachedBoundingBoxExitSpeed, @"com.apple.TVRemote.BoundingBoxExitSpeed", 0, CFNotificationSuspensionBehaviorCoalesce);
}

@end