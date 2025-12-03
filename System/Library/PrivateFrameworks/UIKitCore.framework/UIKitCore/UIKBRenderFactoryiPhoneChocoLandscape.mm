@interface UIKBRenderFactoryiPhoneChocoLandscape
- (CGPoint)dictationKeyOffset;
- (CGPoint)dismissKeyOffset;
- (CGPoint)internationalKeyOffset;
- (CGPoint)leftArrowKeyOffset;
- (CGPoint)more123KeyOffset;
- (CGPoint)moreABCKeyOffset;
- (CGPoint)popupSymbolTextOffset;
- (CGPoint)realEmojiKeyOffset;
- (CGPoint)returnKeyOffset;
- (CGPoint)rightArrowKeyOffset;
- (CGPoint)undoKeyOffset;
- (CGPoint)variantSymbolTextOffset;
- (UIEdgeInsets)dynamicInsets;
- (UIEdgeInsets)dynamicInsetsForNumberOfRows:(unint64_t)rows;
- (UIEdgeInsets)variantSymbolFrameInsets;
- (UIEdgeInsets)wideShadowPaddleInsets;
- (UIEdgeInsets)wideShadowPopupMenuInsets;
- (double)assistKeyFontSize;
- (double)dynamicBottomRowMultiplier;
- (double)moreABCKeyFontSize;
- (double)moreKeyFontSize;
- (double)popupFontSize;
- (double)stringKeyFontSize;
- (id)lightKeycapsFontFallbackName;
- (id)lightKeycapsFontName;
@end

@implementation UIKBRenderFactoryiPhoneChocoLandscape

- (double)stringKeyFontSize
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 20.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneChocoLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSize];
  }

  return result;
}

- (double)assistKeyFontSize
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneChocoLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 assistKeyFontSize];
  }

  return result;
}

- (double)moreKeyFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 19.0;
  }

  else
  {
    v3 = 16.0;
  }

  return v3;
}

- (double)moreABCKeyFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = 19.0;
  }

  else
  {
    v3 = 14.0;
  }

  return v3;
}

- (CGPoint)internationalKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = -0.5;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)returnKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  v6 = -0.5;
  if (usesCompactKeycapsFont)
  {
    v6 = -2.0;
  }

  v7 = -1.0;
  if (dynamicFactory)
  {
    v7 = v6;
  }

  v8 = 0.0;
  result.y = v7;
  result.x = v8;
  return result;
}

- (CGPoint)dictationKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  if (usesCompactKeycapsFont & 1 | !dynamicFactory)
  {
    v6 = 0.0;
    v7 = -1.0;
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)more123KeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  v6 = 0.5;
  v7 = 0.0;
  if (usesCompactKeycapsFont)
  {
    v6 = 0.0;
  }

  if ((usesCompactKeycapsFont & 1) == 0 && !dynamicFactory)
  {
    v8.receiver = self;
    v8.super_class = UIKBRenderFactoryiPhoneChocoLandscape;
    [(UIKBRenderFactoryiPhoneLandscape *)&v8 more123KeyOffset:0.0];
  }

  result.y = v6;
  result.x = v7;
  return result;
}

- (CGPoint)moreABCKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  if ((usesCompactKeycapsFont | dynamicFactory))
  {
    v6 = 0.0;
  }

  if (dynamicFactory)
  {
    v7 = -0.5;
  }

  if (usesCompactKeycapsFont)
  {
    v7 = 0.0;
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)realEmojiKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  v6 = -1.0;
  if (!usesCompactKeycapsFont)
  {
    v6 = -0.5;
  }

  v7 = 0.0;
  if ((usesCompactKeycapsFont & 1) == 0 && dynamicFactory)
  {
    v8.receiver = self;
    v8.super_class = UIKBRenderFactoryiPhoneChocoLandscape;
    [(UIKBRenderFactoryiPhone *)&v8 realEmojiKeyOffset:0.0];
  }

  result.y = v6;
  result.x = v7;
  return result;
}

- (CGPoint)undoKeyOffset
{
  v2 = -0.5;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)leftArrowKeyOffset
{
  v2 = 0.5;
  v3 = -0.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)rightArrowKeyOffset
{
  v2 = 1.5;
  v3 = -0.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)dismissKeyOffset
{
  v2 = 0.0;
  v3 = 0.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (UIEdgeInsets)wideShadowPaddleInsets
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v3 = 4.0;
    v4 = 28.0;
    v5 = 6.0;
    v6 = 18.0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryiPhoneChocoLandscape;
    [(UIKBRenderFactoryiPhoneLandscape *)&v7 wideShadowPaddleInsets];
  }

  result.right = v3;
  result.bottom = v4;
  result.left = v5;
  result.top = v6;
  return result;
}

- (UIEdgeInsets)wideShadowPopupMenuInsets
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v2 = 28.0;
  }

  else
  {
    v2 = 22.0;
  }

  v3 = 18.0;
  v4 = 6.0;
  v5 = 8.0;
  result.right = v5;
  result.bottom = v2;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)variantSymbolFrameInsets
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  v3 = 4.5;
  if (dynamicFactory)
  {
    v3 = -7.0;
  }

  v4 = 7.5;
  if (!dynamicFactory)
  {
    v4 = -1.5;
  }

  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v4;
  result.left = v5;
  result.top = v3;
  return result;
}

- (CGPoint)variantSymbolTextOffset
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  v3 = 1.0;
  if (!dynamicFactory)
  {
    v3 = 2.0;
  }

  v4 = 0.0;
  result.y = v3;
  result.x = v4;
  return result;
}

- (CGPoint)popupSymbolTextOffset
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  v3 = -7.0;
  if (!dynamicFactory)
  {
    v3 = -6.0;
  }

  v4 = 0.0;
  result.y = v3;
  result.x = v4;
  return result;
}

- (double)popupFontSize
{
  if (![(UIKBRenderFactory *)self dynamicFactory])
  {
    return 46.0;
  }

  v4.receiver = self;
  v4.super_class = UIKBRenderFactoryiPhoneChocoLandscape;
  [(UIKBRenderFactoryiPhoneLandscape *)&v4 popupFontSize];
  return result;
}

- (UIEdgeInsets)dynamicInsets
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v2 = 8.0;
  }

  else
  {
    v2 = 4.0;
  }

  v3 = 0.0;
  v4 = 0.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v2;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)dynamicBottomRowMultiplier
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 0.1;
  if (dynamicFactory)
  {
    return 0.125;
  }

  return result;
}

- (UIEdgeInsets)dynamicInsetsForNumberOfRows:(unint64_t)rows
{
  if (rows > 4)
  {
    dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
    v3 = 0.0;
    v9 = 1.0;
    if (dynamicFactory)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    if (dynamicFactory)
    {
      v9 = 2.0;
    }

    if (rows == 5)
    {
      v5 = v9;
    }

    else
    {
      v5 = v6;
    }

    if (rows == 5)
    {
      v6 = v9;
    }

    v4 = 0.0;
  }

  else
  {
    [(UIKBRenderFactoryiPhoneChocoLandscape *)self dynamicInsets];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)lightKeycapsFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  boldTextEnabled = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".KeycapsB-Keys";
  if (boldTextEnabled)
  {
    v6 = @".PhoneKeyCaps";
  }

  v7 = @"UIKBRenderFactorySystemCompactFontName";
  if (boldTextEnabled)
  {
    v7 = @".SFCompact-Bold";
  }

  if (usesCompactKeycapsFont)
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
    v2 = @".KeycapsB-Keys";
  }

  return v2;
}

@end