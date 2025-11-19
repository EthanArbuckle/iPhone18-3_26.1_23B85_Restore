@interface UIKBRenderFactoryHWR_PortraitTruffle
- (CGPoint)globeKeyTextOffset;
- (CGPoint)moreKeyTextOffset;
- (UIEdgeInsets)symbolFrameInsets;
@end

@implementation UIKBRenderFactoryHWR_PortraitTruffle

- (CGPoint)moreKeyTextOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)globeKeyTextOffset
{
  v2 = -0.3333;
  v3 = -0.3333;
  result.y = v3;
  result.x = v2;
  return result;
}

- (UIEdgeInsets)symbolFrameInsets
{
  v2 = 1.0;
  v3 = 2.0;
  v4 = 4.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end