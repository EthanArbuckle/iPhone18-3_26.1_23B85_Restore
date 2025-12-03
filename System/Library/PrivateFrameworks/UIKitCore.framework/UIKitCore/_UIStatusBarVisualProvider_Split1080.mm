@interface _UIStatusBarVisualProvider_Split1080
+ (CGSize)notchSize;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
- (id)stringForCellularType:(int64_t)type condensed:(BOOL)condensed;
@end

@implementation _UIStatusBarVisualProvider_Split1080

+ (CGSize)notchSize
{
  v2 = 226.0;
  v3 = 34.3333333;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)pillSize
{
  v2 = 53.6666667;
  v3 = 21.3333333;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)smallPillSize
{
  v2 = 18.0;
  v3 = 18.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)stringForCellularType:(int64_t)type condensed:(BOOL)condensed
{
  v4 = @"􀛳";
  if (type != 9)
  {
    v4 = 0;
  }

  if (type == 8)
  {
    v4 = @"􀛲";
  }

  if (condensed)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

@end