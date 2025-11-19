@interface PGControlsViewLayoutMetrics
+ (CGSize)defaultActionButtonSize;
+ (CGSize)defaultRestoreCancelButtonsSize;
+ (CGSize)defaultSkipButtonsSize;
+ (double)concentricCornerRadiusForViewSize:(CGSize)a3;
+ (double)scaleForViewSize:(CGSize)a3;
+ (double)spacingScaleForViewSize:(CGSize)a3;
@end

@implementation PGControlsViewLayoutMetrics

+ (CGSize)defaultRestoreCancelButtonsSize
{
  v2 = 36.0;
  v3 = 36.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)defaultActionButtonSize
{
  v2 = 73.0;
  v3 = 73.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)defaultSkipButtonsSize
{
  v2 = 53.0;
  v3 = 53.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (double)concentricCornerRadiusForViewSize:(CGSize)a3
{
  [a1 scaleForViewSize:{a3.width, a3.height}];
  v5 = v4;
  [a1 defaultRestoreCancelButtonsSize];
  v7 = v6;
  [a1 defaultControlsViewPadding];
  return v5 * (v8 + v7 * 0.5);
}

+ (double)scaleForViewSize:(CGSize)a3
{
  result = a3.width / 278.0;
  if (result > 1.0)
  {
    result = 1.0;
  }

  v4 = a3.height / 208.0;
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  if (result >= v4)
  {
    result = v4;
  }

  if (result <= 0.7 || result > 1.0)
  {
    v6 = result > 0.7 || result < 0.6;
    result = result + 0.1;
    if (!v6)
    {
      return 0.7;
    }
  }

  return result;
}

+ (double)spacingScaleForViewSize:(CGSize)a3
{
  result = a3.width / 278.0;
  if (result > 1.0)
  {
    result = 1.0;
  }

  v4 = a3.height / 208.0;
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  if (result >= v4)
  {
    result = v4;
  }

  if (result <= 0.7 || result > 1.0)
  {
    if (result < 0.6 || result > 0.7)
    {
      return result + -0.1;
    }

    else
    {
      return result - (0.7 - result);
    }
  }

  return result;
}

@end