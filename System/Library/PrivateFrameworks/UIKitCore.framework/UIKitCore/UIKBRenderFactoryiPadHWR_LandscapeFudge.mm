@interface UIKBRenderFactoryiPadHWR_LandscapeFudge
- (CGPoint)_controlKeyOffset;
- (UIEdgeInsets)symbolFrameInsets;
@end

@implementation UIKBRenderFactoryiPadHWR_LandscapeFudge

- (UIEdgeInsets)symbolFrameInsets
{
  v2 = 3.0;
  v3 = 3.0;
  v4 = 3.0;
  v5 = 3.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGPoint)_controlKeyOffset
{
  [(UIKBRenderFactory *)self RivenFactor:18.0];
  v4 = v3;
  [(UIKBRenderFactory *)self RivenFactor:8.0];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

@end