@interface PUWatchFaceView
+ (CGRect)screenBoundsForWatchType:(int64_t)type;
@end

@implementation PUWatchFaceView

+ (CGRect)screenBoundsForWatchType:(int64_t)type
{
  [PUWatchFaceHelper screenBoundsForWatchType:type];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end