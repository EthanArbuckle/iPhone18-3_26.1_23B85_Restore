@interface PUWatchFaceHelper
+ (CGRect)screenBoundsForWatchType:(int64_t)a3;
@end

@implementation PUWatchFaceHelper

+ (CGRect)screenBoundsForWatchType:(int64_t)a3
{
  sub_1B37ED5F0(a3);
  v5 = 0.0;
  v6 = 0.0;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

@end