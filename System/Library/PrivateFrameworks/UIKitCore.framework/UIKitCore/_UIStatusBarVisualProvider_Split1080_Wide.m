@interface _UIStatusBarVisualProvider_Split1080_Wide
+ (CGSize)notchSize;
- (CGSize)expandedPillSize;
@end

@implementation _UIStatusBarVisualProvider_Split1080_Wide

+ (CGSize)notchSize
{
  v2 = 174.0;
  v3 = 37.3333333;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)expandedPillSize
{
  v2 = 44.0;
  v3 = 16.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end