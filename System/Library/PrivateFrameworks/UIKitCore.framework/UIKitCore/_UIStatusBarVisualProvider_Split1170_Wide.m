@interface _UIStatusBarVisualProvider_Split1170_Wide
+ (CGSize)notchSize;
- (CGSize)expandedPillSize;
- (CGSize)pillSize;
@end

@implementation _UIStatusBarVisualProvider_Split1170_Wide

+ (CGSize)notchSize
{
  v2 = 161.333333;
  v3 = 33.6666667;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)pillSize
{
  v2 = 66.6666667;
  v3 = 23.0;
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