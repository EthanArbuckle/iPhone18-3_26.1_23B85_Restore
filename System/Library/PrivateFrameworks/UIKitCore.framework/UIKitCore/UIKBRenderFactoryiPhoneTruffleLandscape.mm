@interface UIKBRenderFactoryiPhoneTruffleLandscape
- (CGPoint)boldKeyOffset;
- (CGPoint)copyKeyOffset;
- (CGPoint)cutKeyOffset;
- (CGPoint)deleteKeyOffset;
- (CGPoint)dictationKeyOffset;
- (CGPoint)dismissKeyOffset;
- (CGPoint)internationalKeyOffset;
- (CGPoint)leftArrowKeyOffset;
- (CGPoint)more123KeyOffset;
- (CGPoint)moreABCKeyOffset;
- (CGPoint)pasteKeyOffset;
- (CGPoint)popupSymbolTextOffset;
- (CGPoint)realEmojiKeyOffset;
- (CGPoint)returnKeyOffset;
- (CGPoint)rightArrowKeyOffset;
- (CGPoint)stringKeyOffset;
- (CGPoint)undoKeyOffset;
- (CGPoint)variantAnnotationTextOffset;
- (CGPoint)variantSymbolTextOffset;
- (UIEdgeInsets)dynamicInsets;
- (UIEdgeInsets)dynamicInsetsForNumberOfRows:(unint64_t)rows;
- (UIEdgeInsets)variantPaddedFrameInsets;
- (UIEdgeInsets)variantSymbolFrameInsets;
- (UIEdgeInsets)wideShadowPaddleInsets;
- (double)assistKeyFontSize;
- (double)dynamicBottomRowMultiplier;
- (double)moreABCKeyFontSize;
- (double)moreKeyFontSize;
- (double)popupFontSize;
- (double)stringKeyFontSize;
- (double)symbolImageControlKeyFontSize;
- (id)lightKeycapsFontFallbackName;
- (id)lightKeycapsFontName;
@end

@implementation UIKBRenderFactoryiPhoneTruffleLandscape

- (CGPoint)more123KeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  v5 = 0.0;
  v6 = 0.0;
  if ((usesCompactKeycapsFont & 1) == 0)
  {
    if ([(UIKBRenderFactory *)self dynamicFactory:0.0])
    {
      v5 = *MEMORY[0x1E695EFF8];
      v6 = *(MEMORY[0x1E695EFF8] + 8);
    }

    else
    {
      v7.receiver = self;
      v7.super_class = UIKBRenderFactoryiPhoneTruffleLandscape;
      [(UIKBRenderFactoryiPhoneLandscape *)&v7 more123KeyOffset];
    }
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)stringKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  v5 = 0.0;
  if (usesCompactKeycapsFont)
  {
    v6 = 0.0;
  }

  else if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v6 = 1.3333;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIKBRenderFactoryiPhoneTruffleLandscape;
    [(UIKBRenderFactoryiPhone *)&v9 stringKeyOffset];
    v5 = v7;
  }

  v8 = v5;
  result.y = v6;
  result.x = v8;
  return result;
}

- (id)lightKeycapsFontName
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  boldTextEnabled = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".KeycapsA-Keys";
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
    v2 = @".KeycapsA-Keys";
  }

  return v2;
}

- (double)symbolImageControlKeyFontSize
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  result = 19.0;
  if ((usesCompactKeycapsFont & 1) == 0)
  {
    dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
    result = 19.0;
    if (dynamicFactory)
    {
      return 20.0;
    }
  }

  return result;
}

- (double)stringKeyFontSize
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 20.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneTruffleLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSize];
  }

  return result;
}

- (CGPoint)deleteKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  v5 = 0.0;
  v6 = 0.0;
  if ((usesCompactKeycapsFont & 1) == 0)
  {
    v7 = [(UIKBRenderFactory *)self dynamicFactory:0.0];
    v5 = -0.6;
    if (v7)
    {
      v5 = -0.3333;
    }

    v6 = 0.0;
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (double)moreKeyFontSize
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 16.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneTruffleLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 moreKeyFontSize];
  }

  return result;
}

- (CGPoint)returnKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  v5 = -2.0;
  if ((usesCompactKeycapsFont & 1) == 0)
  {
    dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
    v5 = -1.3333;
    if (!dynamicFactory)
    {
      v5 = -0.6666;
    }
  }

  v7 = 0.0;
  result.y = v5;
  result.x = v7;
  return result;
}

- (CGPoint)dictationKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  if (usesCompactKeycapsFont)
  {
    v5 = -1.0;
    v6 = 0.0;
  }

  else
  {
    dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
    v6 = -0.3333;
    if (dynamicFactory)
    {
      v6 = 0.0;
    }

    v5 = v6;
  }

  result.y = v5;
  result.x = v6;
  return result;
}

- (UIEdgeInsets)dynamicInsets
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v2 = 7.0;
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

- (CGPoint)internationalKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  if (usesCompactKeycapsFont)
  {
    v5 = -1.0;
    v6 = 0.0;
  }

  else
  {
    dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
    v5 = -0.3333;
    v6 = 0.0;
    if (dynamicFactory)
    {
      v6 = -0.3333;
    }
  }

  result.y = v5;
  result.x = v6;
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

- (double)assistKeyFontSize
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneTruffleLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 assistKeyFontSize];
  }

  return result;
}

- (CGPoint)moreABCKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  v5 = 0.0;
  if (usesCompactKeycapsFont)
  {
    v6 = 0.0;
  }

  else if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v6 = 0.6666;
  }

  else
  {
    v5 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v7 = v5;
  result.y = v6;
  result.x = v7;
  return result;
}

- (CGPoint)realEmojiKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];

  v5 = -1.0;
  v6 = 0.0;
  if ((usesCompactKeycapsFont & 1) == 0)
  {
    if ([(UIKBRenderFactory *)self dynamicFactory])
    {
      v9.receiver = self;
      v9.super_class = UIKBRenderFactoryiPhoneTruffleLandscape;
      [(UIKBRenderFactoryiPhone *)&v9 realEmojiKeyOffset];
      v6 = v7;
    }

    else
    {
      v5 = -0.3333;
    }
  }

  v8 = v6;
  result.y = v5;
  result.x = v8;
  return result;
}

- (CGPoint)cutKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];
  if (usesCompactKeycapsFont)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = -0.3333;
  }

  if (usesCompactKeycapsFont)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = 0.3333;
  }

  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)copyKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = -0.3333;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)pasteKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];
  if (usesCompactKeycapsFont)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 0.3333;
  }

  if (usesCompactKeycapsFont)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = -0.6666;
  }

  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)boldKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = -0.6666;
  }

  v4 = 0.0;
  v5 = v3;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)undoKeyOffset
{
  v2 = 0.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)leftArrowKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];
  if (usesCompactKeycapsFont)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = -0.3333;
  }

  if (usesCompactKeycapsFont)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = -0.6666;
  }

  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)rightArrowKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  usesCompactKeycapsFont = [renderConfig usesCompactKeycapsFont];
  if (usesCompactKeycapsFont)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 0.6666;
  }

  if (usesCompactKeycapsFont)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = -0.6666;
  }

  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)dismissKeyOffset
{
  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  if ([renderConfig usesCompactKeycapsFont])
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

- (UIEdgeInsets)variantSymbolFrameInsets
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  v3 = 4.3333;
  if (dynamicFactory)
  {
    v3 = -11.0;
  }

  v4 = 9.0;
  if (!dynamicFactory)
  {
    v4 = -3.0;
  }

  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v4;
  result.left = v5;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)wideShadowPaddleInsets
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v3 = 4.0;
    v4 = 29.0;
    v5 = 6.0;
    v6 = 18.0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryiPhoneTruffleLandscape;
    [(UIKBRenderFactoryiPhoneLandscape *)&v7 wideShadowPaddleInsets];
  }

  result.right = v3;
  result.bottom = v4;
  result.left = v5;
  result.top = v6;
  return result;
}

- (UIEdgeInsets)variantPaddedFrameInsets
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v3 = 0.0;
    v4 = -5.0;
    v5 = 5.0;
    v6 = 0.0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryiPhoneTruffleLandscape;
    [(UIKBRenderFactoryiPhoneLandscape *)&v7 variantPaddedFrameInsets];
  }

  result.right = v6;
  result.bottom = v4;
  result.left = v3;
  result.top = v5;
  return result;
}

- (CGPoint)variantSymbolTextOffset
{
  [(UIKBRenderFactory *)self dynamicFactory];
  v2 = 0.0;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)variantAnnotationTextOffset
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  v4 = 4.0;
  v5 = 4.0;
  if (!dynamicFactory)
  {
    v6.receiver = self;
    v6.super_class = UIKBRenderFactoryiPhoneTruffleLandscape;
    [(UIKBRenderFactoryiPhoneLandscape *)&v6 variantAnnotationTextOffset:4.0];
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)popupSymbolTextOffset
{
  [(UIKBRenderFactory *)self dynamicFactory];
  v2 = 0.0;
  v3 = -6.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (double)popupFontSize
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 46.0;
  if (dynamicFactory)
  {
    return 38.0;
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
    [(UIKBRenderFactoryiPhoneTruffleLandscape *)self dynamicInsets];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end