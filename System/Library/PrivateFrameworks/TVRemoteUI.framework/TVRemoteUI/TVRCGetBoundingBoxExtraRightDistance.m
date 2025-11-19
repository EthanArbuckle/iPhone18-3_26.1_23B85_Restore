@interface TVRCGetBoundingBoxExtraRightDistance
@end

@implementation TVRCGetBoundingBoxExtraRightDistance

void ___TVRCGetBoundingBoxExtraRightDistance_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __clearCachedBoundingBoxExtraRightDistance, @"com.apple.TVRemote.BoundingBoxExtraRightDistance", 0, CFNotificationSuspensionBehaviorCoalesce);
}

@end