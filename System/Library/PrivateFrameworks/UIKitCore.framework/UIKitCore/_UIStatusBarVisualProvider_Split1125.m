@interface _UIStatusBarVisualProvider_Split1125
+ (CGSize)notchSize;
- (CGSize)expandedPillSize;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
- (id)stringForCellularType:(int64_t)a3 condensed:(BOOL)a4;
@end

@implementation _UIStatusBarVisualProvider_Split1125

+ (CGSize)notchSize
{
  v2 = 209.0;
  v3 = 30.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)pillSize
{
  v2 = 54.6666667;
  v3 = 21.3333333;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)smallPillSize
{
  v2 = 19.0;
  v3 = 19.0;
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

- (id)stringForCellularType:(int64_t)a3 condensed:(BOOL)a4
{
  v4 = @"􀛱";
  if (a3 != 9)
  {
    v4 = 0;
  }

  if (a3 == 8)
  {
    v4 = @"􀛰";
  }

  if (a4)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

@end