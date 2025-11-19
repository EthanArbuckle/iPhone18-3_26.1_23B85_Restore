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
- (UIEdgeInsets)dynamicInsetsForNumberOfRows:(unint64_t)a3;
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
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 20.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneChocoLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 stringKeyFontSize];
  }

  return result;
}

- (double)assistKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 14.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPhoneChocoLandscape;
    [(UIKBRenderFactoryiPhone *)&v5 assistKeyFontSize];
  }

  return result;
}

- (double)moreKeyFontSize
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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

- (CGPoint)internationalKeyOffset
{
  v2 = [(UIKBRenderFactory *)self renderConfig];
  if ([v2 usesCompactKeycapsFont])
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self dynamicFactory];
  v6 = -0.5;
  if (v4)
  {
    v6 = -2.0;
  }

  v7 = -1.0;
  if (v5)
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self dynamicFactory];
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  if (v4 & 1 | !v5)
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self dynamicFactory];
  v6 = 0.5;
  v7 = 0.0;
  if (v4)
  {
    v6 = 0.0;
  }

  if ((v4 & 1) == 0 && !v5)
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self dynamicFactory];
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  if ((v4 | v5))
  {
    v6 = 0.0;
  }

  if (v5)
  {
    v7 = -0.5;
  }

  if (v4)
  {
    v7 = 0.0;
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)realEmojiKeyOffset
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self dynamicFactory];
  v6 = -1.0;
  if (!v4)
  {
    v6 = -0.5;
  }

  v7 = 0.0;
  if ((v4 & 1) == 0 && v5)
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
  v2 = [(UIKBRenderFactory *)self dynamicFactory];
  v3 = 4.5;
  if (v2)
  {
    v3 = -7.0;
  }

  v4 = 7.5;
  if (!v2)
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
  v2 = [(UIKBRenderFactory *)self dynamicFactory];
  v3 = 1.0;
  if (!v2)
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
  v2 = [(UIKBRenderFactory *)self dynamicFactory];
  v3 = -7.0;
  if (!v2)
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
  v2 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 0.1;
  if (v2)
  {
    return 0.125;
  }

  return result;
}

- (UIEdgeInsets)dynamicInsetsForNumberOfRows:(unint64_t)a3
{
  if (a3 > 4)
  {
    v8 = [(UIKBRenderFactory *)self dynamicFactory];
    v3 = 0.0;
    v9 = 1.0;
    if (v8)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    if (v8)
    {
      v9 = 2.0;
    }

    if (a3 == 5)
    {
      v5 = v9;
    }

    else
    {
      v5 = v6;
    }

    if (a3 == 5)
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
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = [v3 usesCompactKeycapsFont];

  v5 = [(UIKBRenderFactory *)self boldTextEnabled];
  v6 = @".KeycapsB-Keys";
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
    v2 = @".KeycapsB-Keys";
  }

  return v2;
}

@end