@interface _UIStatusBarVisualProvider_Split1242
+ (CGSize)notchSize;
- (CGSize)expandedPillSize;
- (CGSize)pillSize;
@end

@implementation _UIStatusBarVisualProvider_Split1242

+ (CGSize)notchSize
{
  v2 = 209.333333;
  v3 = 30.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)pillSize
{
  v2 = 61.0;
  v3 = 22.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)expandedPillSize
{
  v2 = 47.0;
  v3 = 17.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end