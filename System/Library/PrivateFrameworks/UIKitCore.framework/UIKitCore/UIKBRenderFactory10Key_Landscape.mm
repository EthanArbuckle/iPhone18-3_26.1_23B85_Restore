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
- (void)setupColumnLayoutSegmentsWithControlWidth:(double)width;
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
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  if ([renderingContext isColorAdaptiveNonLinearCarplayKeyboard])
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
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  v4 = 14.0;
  if (([renderingContext isColorAdaptiveNonLinearCarplayKeyboard] & 1) == 0)
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
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  if ([renderingContext isColorAdaptiveNonLinearCarplayKeyboard])
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
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  if ([renderingContext isColorAdaptiveNonLinearCarplayKeyboard])
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
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  isColorAdaptiveNonLinearCarplayKeyboard = [renderingContext isColorAdaptiveNonLinearCarplayKeyboard];
  if (isColorAdaptiveNonLinearCarplayKeyboard)
  {
    v4 = -10.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (isColorAdaptiveNonLinearCarplayKeyboard)
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
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  isColorAdaptiveNonLinearCarplayKeyboard = [renderingContext isColorAdaptiveNonLinearCarplayKeyboard];
  if (isColorAdaptiveNonLinearCarplayKeyboard)
  {
    v4 = 12.0;
  }

  else
  {
    v4 = 1.0;
  }

  if (isColorAdaptiveNonLinearCarplayKeyboard)
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
  renderingContext = [(UIKBRenderFactory *)self renderingContext];
  if ([renderingContext isColorAdaptiveNonLinearCarplayKeyboard])
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

- (void)setupColumnLayoutSegmentsWithControlWidth:(double)width
{
  v11.receiver = self;
  v11.super_class = UIKBRenderFactory10Key_Landscape;
  [(UIKBRenderFactory10Key *)&v11 setupColumnLayoutSegmentsWithControlWidth:?];
  [(UIKBRenderFactory10Key_Landscape *)self centerColumnWidthFactor];
  v6 = v5 * width;
  controlKeyTraits = [(UIKBRenderFactory10Key_Round *)self controlKeyTraits];
  v8 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:controlKeyTraits];

  [v8 setKeyStates:3];
  [v8 addLayoutRect:0 asTriangle:{0.5 - v6 * 0.5, 0.0, v6, 1.0}];
  [(UIKBRenderFactory *)self addLayoutSegment:v8];
  activeControlKeyTraits = [(UIKBRenderFactory10Key_Round *)self activeControlKeyTraits];
  v10 = [UIKBRenderFactoryLayoutSegment segmentWithTraits:activeControlKeyTraits];

  [v10 setKeyStates:4];
  [v10 addLayoutRect:0 asTriangle:{0.5 - v6 * 0.5, 0.0, v6, 1.0}];
  [(UIKBRenderFactory *)self addLayoutSegment:v10];
}

@end