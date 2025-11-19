@interface UIKBRenderFactory_iPhoneTruffleReachable
- (UIEdgeInsets)wideShadowPaddleInsets;
@end

@implementation UIKBRenderFactory_iPhoneTruffleReachable

- (UIEdgeInsets)wideShadowPaddleInsets
{
  v2 = 3.0;
  v3 = 1.0;
  v4 = 3.0;
  v5 = 1.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end