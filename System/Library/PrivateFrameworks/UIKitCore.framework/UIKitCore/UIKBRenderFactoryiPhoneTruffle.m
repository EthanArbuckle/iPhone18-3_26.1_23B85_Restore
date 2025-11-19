@interface UIKBRenderFactoryiPhoneTruffle
- (CGPoint)deleteKeyOffset;
- (CGPoint)dictationKeyOffset;
- (CGPoint)internationalKeyOffset;
- (CGPoint)more123KeyOffset;
- (CGPoint)moreABCKeyOffset;
- (CGPoint)popupSymbolTextOffset;
- (CGPoint)returnKeyOffset;
- (CGPoint)stringKeyOffset;
- (CGPoint)variantAnnotationTextOffset;
- (CGPoint)variantSymbolTextOffset;
- (UIEdgeInsets)variantPaddedFrameInsets;
- (UIEdgeInsets)variantSymbolFrameInsets;
- (UIEdgeInsets)wideShadowPaddleInsets;
- (double)moreABCKeyFontSize;
- (id)lightKeycapsFontFallbackName;
- (id)lightKeycapsFontName;
@end

@implementation UIKBRenderFactoryiPhoneTruffle

- (double)moreABCKeyFontSize
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
  {
    v3 = 19.0;
  }

  else
  {
    v3 = 14.0;
  }

  return v3;
}

- (CGPoint)stringKeyOffset
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.3333;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)returnKeyOffset
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
  {
    v3 = -2.0;
  }

  else
  {
    v3 = -1.3333;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)internationalKeyOffset
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  v3 = [v2 usesCompactKeycapsFont];
  if (v3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = -0.3333;
  }

  if (v3)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = -0.3333;
  }

  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)dictationKeyOffset
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)more123KeyOffset
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  [v2 usesCompactKeycapsFont];

  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)moreABCKeyOffset
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = 0.6666;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)deleteKeyOffset
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = -0.3333;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v4;
  result.x = v5;
  return result;
}

- (UIEdgeInsets)wideShadowPaddleInsets
{
  v2 = 18.0;
  v3 = 6.0;
  v4 = 29.0;
  v5 = 4.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)variantPaddedFrameInsets
{
  v2 = 5.0;
  v3 = 0.0;
  v4 = -5.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)variantSymbolFrameInsets
{
  v2 = -11.0;
  v3 = 0.0;
  v4 = 9.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGPoint)variantSymbolTextOffset
{
  v2 = 0.0;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)variantAnnotationTextOffset
{
  v2 = 4.0;
  v3 = 4.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)popupSymbolTextOffset
{
  v2 = 0.0;
  v3 = -6.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)lightKeycapsFontName
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".KeycapsA-Keys";
  if (v5)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = @"UIKBRenderFactorySystemCompactFontName";
  if (v5)
  {
    v7 = @".SFCompact-Bold";
  }

  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (id)lightKeycapsFontFallbackName
{
  if ([(UIKBRenderFactory *)self boldTextEnabled])
  {
    v2 = @".PhoneKeyCaps";
  }

  else
  {
    v2 = @".KeycapsA-Keys";
  }

  return v2;
}

@end