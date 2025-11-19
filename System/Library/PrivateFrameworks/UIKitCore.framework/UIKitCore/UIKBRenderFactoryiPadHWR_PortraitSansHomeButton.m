@interface UIKBRenderFactoryiPadHWR_PortraitSansHomeButton
- (CGPoint)_controlKeyOffset;
@end

@implementation UIKBRenderFactoryiPadHWR_PortraitSansHomeButton

- (CGPoint)_controlKeyOffset
{
  [(UIKBRenderFactory *)self RivenFactor:9.0];
  v4 = v3;
  [(UIKBRenderFactory *)self RivenFactor:8.0];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

@end