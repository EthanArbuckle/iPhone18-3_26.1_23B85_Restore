@interface TVRCGetBoundingBoxThresholdDistance
@end

@implementation TVRCGetBoundingBoxThresholdDistance

void ___TVRCGetBoundingBoxThresholdDistance_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __clearCachedBoundingBoxThresholdDistance, @"com.apple.TVRemote.BoundingBoxThresholdDistance", 0, CFNotificationSuspensionBehaviorCoalesce);
}

@end