@interface PUWatchFaceView
+ (CGRect)screenBoundsForWatchType:(int64_t)a3;
@end

@implementation PUWatchFaceView

+ (CGRect)screenBoundsForWatchType:(int64_t)a3
{
  [PUWatchFaceHelper screenBoundsForWatchType:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end