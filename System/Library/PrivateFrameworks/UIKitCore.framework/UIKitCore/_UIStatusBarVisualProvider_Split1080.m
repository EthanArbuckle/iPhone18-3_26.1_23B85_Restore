@interface _UIStatusBarVisualProvider_Split1080
+ (CGSize)notchSize;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
- (id)stringForCellularType:(int64_t)a3 condensed:(BOOL)a4;
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

- (id)stringForCellularType:(int64_t)a3 condensed:(BOOL)a4
{
  v4 = @"􀛳";
  if (a3 != 9)
  {
    v4 = 0;
  }

  if (a3 == 8)
  {
    v4 = @"􀛲";
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