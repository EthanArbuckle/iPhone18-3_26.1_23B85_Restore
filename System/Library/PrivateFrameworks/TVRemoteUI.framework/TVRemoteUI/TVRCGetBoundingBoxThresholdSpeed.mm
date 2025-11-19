@interface TVRCGetBoundingBoxThresholdSpeed
@end

@implementation TVRCGetBoundingBoxThresholdSpeed

void ___TVRCGetBoundingBoxThresholdSpeed_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __clearCachedBoundingBoxThresholdSpeed, @"com.apple.TVRemote.BoundingBoxThresholdSpeed", 0, CFNotificationSuspensionBehaviorCoalesce);
}

@end