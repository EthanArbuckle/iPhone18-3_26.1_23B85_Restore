@interface UIKBRenderFactory50On_Landscape
- (UIEdgeInsets)symbolFrameInsets;
- (double)keyCornerRadius;
@end

@implementation UIKBRenderFactory50On_Landscape

- (double)keyCornerRadius
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 colorAdaptiveBackground])
  {
    v3 = 10.0;
  }

  else
  {
    v3 = 5.0;
  }

  return v3;
}

- (UIEdgeInsets)symbolFrameInsets
{
  v2 = 6.0;
  v3 = 6.0;
  v4 = 6.0;
  v5 = 6.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end