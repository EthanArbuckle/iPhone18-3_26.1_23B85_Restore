@interface UIKBRenderFactory10Key_Landscape
- (CGPoint)abcKeyTextOffset;
- (CGPoint)longVowelSignKeyTextOffset;
- (CGPoint)numberPadKeyPrimaryTextOffset;
- (CGPoint)numberPadKeySecondaryTextOffset;
- (CGPoint)numberPadVBarSecondaryTextOffset;
- (UIEdgeInsets)wideShadowPaddleInsets;
- (double)capitalAbcSymbolSize;
- (double)numberPadKeyPrimarySymbolSize;
- (double)symbolImageControlKeyFontSize;
- (void)setupColumnLayoutSegmentsWithControlWidth:(double)a3;
@end

@implementation UIKBRenderFactory10Key_Landscape

- (UIEdgeInsets)wideShadowPaddleInsets
{
  v2 = 18.0;
  v3 = 6.0;
  v4 = 22.0;
  v5 = 6.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGPoint)abcKeyTextOffset
{
  v2 = 0.0;
  v3 = 0.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (double)capitalAbcSymbolSize
{
  v2 = [(UIKBRenderFactory *)self renderingContext];
  if ([v2 isColorAdaptiveNonLinearCarplayKeyboard])
  {
    v3 = 14.0;
  }

  else
  {
    v3 = 13.0;
  }

  return v3;
}

- (double)symbolImageControlKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self renderingContext];
  v4 = 14.0;
  if (([v3 isColorAdaptiveNonLinearCarplayKeyboard] & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactory10Key_Landscape;
    [(UIKBRenderFactory10Key *)&v7 symbolImageControlKeyFontSize];
    v4 = v5;
  }

  return v4;
}

- (CGPoint)longVowelSignKeyTextOffset
{
  v2 = [(UIKBRenderFactory *)self renderingContext];
  if ([v2 isColorAdaptiveNonLinearCarplayKeyboard])
  {
    v3 = 7.0;
  }

  else
  {
    v3 = 13.0;
  }

  v4 = 8.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (double)numberPadKeyPrimarySymbolSize
{
  v2 = [(UIKBRenderFactory *)self renderingContext];
  if ([v2 isColorAdaptiveNonLinearCarplayKeyboard])
  {
    v3 = 14.0;
  }

  else
  {
    v3 = 18.5;
  }

  return v3;
}

- (CGPoint)numberPadKeyPrimaryTextOffset
{
  v2 = [(UIKBRenderFactory *)self renderingContext];
  v3 = [v2 isColorAdaptiveNonLinearCarplayKeyboard];
  if (v3)
  {
    v4 = -10.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (v3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = -6.0;
  }

  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)numberPadKeySecondaryTextOffset
{
  v2 = [(UIKBRenderFactory *)self renderingContext];
  v3 = [v2 isColorAdaptiveNonLinearCarplayKeyboard];
  if (v3)
  {
    v4 = 12.0;
  }

  else
  {
    v4 = 1.0;
  }

  if (v3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 8.0;
  }

  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)numberPadVBarSecondaryTextOffset
{
  v3 = [(UIKBRenderFactory *)self renderingContext];
  if ([v3 isColorAdaptiveNonLinearCarplayKeyboard])
  {
    v4 = 0.0;
    v5 = 12.0;
  }

  else
  {
    [(UIKBRenderFactory *)self scale];
    if (v6 == 2.0)
    {
      v4 = 8.5;
    }

    else
    {
      v4 = 9.0;
    }

    v5 = 1.0;
  }

  v7 = v5;
  v8 = v4;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setupColumnLayoutSegmentsWithControlWidth:(double)a3
{
  v11.receiver = self;
  v11.super_class = UIKBRenderFactory10Key_Landscape;
  [(UIKBRenderFactory10Key *)&v11 setupColumnLayoutSegmentsWithControlWidth:?];
  [(UIKBRenderFactory10Key_Landscape *)self centerColumnWidthFactor];
  v6 = v5 * a3;
  v7 = [(UIKBRenderFactory10Key_Round *)self controlKeyTraits];
  v8 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v7];

  [v8 setKeyStates:3];
  [v8 addLayoutRect:0 asTriangle:{0.5 - v6 * 0.5, 0.0, v6, 1.0}];
  [(UIKBRenderFactory *)self addLayoutSegment:v8];
  v9 = [(UIKBRenderFactory10Key_Round *)self activeControlKeyTraits];
  v10 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:v9];

  [v10 setKeyStates:4];
  [v10 addLayoutRect:0 asTriangle:{0.5 - v6 * 0.5, 0.0, v6, 1.0}];
  [(UIKBRenderFactory *)self addLayoutSegment:v10];
}

@end