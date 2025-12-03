@interface UIKBRenderFactoryiPadHWR_Landscape
- (CGPoint)dismissKeyOffset;
- (CGPoint)spaceReturnKeyTextOffset;
- (double)keyCornerRadius;
@end

@implementation UIKBRenderFactoryiPadHWR_Landscape

- (CGPoint)dismissKeyOffset
{
  v2 = 0.0;
  v3 = 8.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)spaceReturnKeyTextOffset
{
  [(UIKBRenderFactory *)self scale];
  v2 = 2.0;
  if (v3 == 2.0)
  {
    v2 = 2.5;
  }

  v4 = 0.0;
  result.y = v2;
  result.x = v4;
  return result;
}

- (double)keyCornerRadius
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig colorAdaptiveBackground])
  {
    v3 = 10.0;
  }

  else
  {
    v3 = 5.0;
  }

  return v3;
}

@end