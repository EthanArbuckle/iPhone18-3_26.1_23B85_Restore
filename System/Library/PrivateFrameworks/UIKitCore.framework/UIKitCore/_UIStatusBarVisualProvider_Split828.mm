@interface _UIStatusBarVisualProvider_Split828
+ (CGSize)notchSize;
- (CGSize)expandedPillSize;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
- (double)condensedPointSizeForCellularType:(int64_t)type defaultPointSize:(double)size baselineOffset:(double *)offset;
- (id)stringForCellularType:(int64_t)type condensed:(BOOL)condensed;
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

- (id)stringForCellularType:(int64_t)type condensed:(BOOL)condensed
{
  v4 = @"􀛵";
  if (type != 9)
  {
    v4 = 0;
  }

  if (type == 8)
  {
    v4 = @"􀛴";
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

- (double)condensedPointSizeForCellularType:(int64_t)type defaultPointSize:(double)size baselineOffset:(double *)offset
{
  if ((type - 8) < 2)
  {
    *offset = 1.5;
    v9 = objc_opt_class();

    [v9 LTEAPlusFontSize];
  }

  else if ((type - 2) > 1)
  {
    *offset = 1.0;
    return size + -2.0;
  }

  else
  {
    shrinksSingleCharacterTypes = [objc_opt_class() shrinksSingleCharacterTypes];
    v7 = 0.0;
    if (shrinksSingleCharacterTypes)
    {
      v7 = 1.0;
    }

    return size - v7;
  }

  return result;
}

@end