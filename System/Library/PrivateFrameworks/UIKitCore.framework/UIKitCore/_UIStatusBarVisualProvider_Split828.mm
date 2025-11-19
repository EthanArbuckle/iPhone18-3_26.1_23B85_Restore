@interface _UIStatusBarVisualProvider_Split828
+ (CGSize)notchSize;
- (CGSize)expandedPillSize;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
- (double)condensedPointSizeForCellularType:(int64_t)a3 defaultPointSize:(double)a4 baselineOffset:(double *)a5;
- (id)stringForCellularType:(int64_t)a3 condensed:(BOOL)a4;
@end

@implementation _UIStatusBarVisualProvider_Split828

+ (CGSize)notchSize
{
  v2 = 227.0;
  v3 = 32.0;
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

- (CGSize)smallPillSize
{
  v2 = 20.5;
  v3 = 20.5;
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

- (id)stringForCellularType:(int64_t)a3 condensed:(BOOL)a4
{
  v4 = @"􀛵";
  if (a3 != 9)
  {
    v4 = 0;
  }

  if (a3 == 8)
  {
    v4 = @"􀛴";
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

- (double)condensedPointSizeForCellularType:(int64_t)a3 defaultPointSize:(double)a4 baselineOffset:(double *)a5
{
  if ((a3 - 8) < 2)
  {
    *a5 = 1.5;
    v9 = objc_opt_class();

    [v9 LTEAPlusFontSize];
  }

  else if ((a3 - 2) > 1)
  {
    *a5 = 1.0;
    return a4 + -2.0;
  }

  else
  {
    v6 = [objc_opt_class() shrinksSingleCharacterTypes];
    v7 = 0.0;
    if (v6)
    {
      v7 = 1.0;
    }

    return a4 - v7;
  }

  return result;
}

@end