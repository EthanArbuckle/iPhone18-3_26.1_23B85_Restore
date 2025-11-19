@interface UIKBRenderFactory_iPhoneChocoReachable
- (UIEdgeInsets)wideShadowPaddleInsets;
@end

@implementation UIKBRenderFactory_iPhoneChocoReachable

- (UIEdgeInsets)wideShadowPaddleInsets
{
  v2 = 5.0;
  v3 = 2.0;
  v4 = 10.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end