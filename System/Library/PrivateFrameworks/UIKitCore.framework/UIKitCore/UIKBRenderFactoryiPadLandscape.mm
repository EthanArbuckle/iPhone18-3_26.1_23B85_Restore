@interface UIKBRenderFactoryiPadLandscape
- (CGPoint)deleteKeyOffset;
- (CGPoint)dismissKeyOffset;
- (CGPoint)dualStringKeyOffset;
- (CGPoint)shiftKeyOffset;
- (CGPoint)symbolImageControlKeyOffset;
- (CGPoint)tinyPunctuationGlyphOffset;
- (CGRect)dismissKeySymbolFrame;
- (CGRect)shiftKeySymbolFrame;
- (UIEdgeInsets)dynamicInsets;
- (double)bottomRowDefaultFontSize;
- (double)deleteKeyFontSize;
- (double)dictationKeyFontSize;
- (double)dismissKeyFontSize;
- (double)dualStringKeyFontSizeAdjustment;
- (double)dynamicBottomRowMultiplier;
- (double)emailDotKeyFontSize;
- (double)facemarkKeyFontSize;
- (double)fallbackFontSize;
- (double)fontSizeAdjustmentForNonAlphanumericKeycaps;
- (double)internationalKeyFontSize;
- (double)keyCornerRadius;
- (double)messagesTypeKeyplanSwitchKeyFontSize;
- (double)moreKeyFontSize;
- (double)shiftKeyFontSize;
- (double)smallKanaKeyFontSize;
- (double)spaceKeyFontSize;
- (double)stringKeyFontSize;
- (double)symbolImageControlKeyFontSize;
- (double)tinyPunctuationGlyphFontSize;
- (double)zhuyinFirstToneKeyFontSize;
- (id)multitapCompleteKeyImageName;
- (id)muttitapReverseKeyImageName;
@end

@implementation UIKBRenderFactoryiPadLandscape

- (double)keyCornerRadius
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v7 keyCornerRadius];
    return v3;
  }

  else
  {
    v5 = [(UIKBRenderFactory *)self renderConfig];
    if ([v5 colorAdaptiveBackground])
    {
      v4 = 12.0;
    }

    else
    {
      v4 = 7.0;
    }
  }

  return v4;
}

- (CGRect)shiftKeySymbolFrame
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v7 shiftKeySymbolFrame];
  }

  else
  {
    v6 = 23.0;
    v5 = 26.0;
    v3 = 0.0;
    v4 = 0.0;
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)dismissKeySymbolFrame
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v7 dismissKeySymbolFrame];
  }

  else
  {
    v3 = 0.0;
    v6 = 79.0;
    v5 = 83.0;
    v4 = 0.0;
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)stringKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 27.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 stringKeyFontSize];
  }

  return result;
}

- (double)dualStringKeyFontSizeAdjustment
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = -5.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 dualStringKeyFontSizeAdjustment];
  }

  return result;
}

- (double)bottomRowDefaultFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 24.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 bottomRowDefaultFontSize];
  }

  return result;
}

- (double)fontSizeAdjustmentForNonAlphanumericKeycaps
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 6.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 fontSizeAdjustmentForNonAlphanumericKeycaps];
  }

  return result;
}

- (double)shiftKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 20.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 shiftKeyFontSize];
  }

  return result;
}

- (double)deleteKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 17.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 deleteKeyFontSize];
  }

  return result;
}

- (double)moreKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 22.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 moreKeyFontSize];
  }

  return result;
}

- (double)internationalKeyFontSize
{
  if (![(UIKBRenderFactory *)self dynamicFactory])
  {
    return 39.0;
  }

  v4.receiver = self;
  v4.super_class = UIKBRenderFactoryiPadLandscape;
  [(UIKBRenderFactoryiPad *)&v4 internationalKeyFontSize];
  return result;
}

- (double)dictationKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 25.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 dictationKeyFontSize];
  }

  return result;
}

- (double)spaceKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 22.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 spaceKeyFontSize];
  }

  return result;
}

- (double)dismissKeyFontSize
{
  if (![(UIKBRenderFactory *)self dynamicFactory])
  {
    return 47.0;
  }

  v4.receiver = self;
  v4.super_class = UIKBRenderFactoryiPadLandscape;
  [(UIKBRenderFactoryiPad *)&v4 dismissKeyFontSize];
  return result;
}

- (double)smallKanaKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 18.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 smallKanaKeyFontSize];
  }

  return result;
}

- (double)emailDotKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 12.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 emailDotKeyFontSize];
  }

  return result;
}

- (double)facemarkKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 28.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 facemarkKeyFontSize];
  }

  return result;
}

- (double)zhuyinFirstToneKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 22.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 zhuyinFirstToneKeyFontSize];
  }

  return result;
}

- (double)symbolImageControlKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 26.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 symbolImageControlKeyFontSize];
  }

  return result;
}

- (double)fallbackFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 28.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 fallbackFontSize];
  }

  return result;
}

- (double)messagesTypeKeyplanSwitchKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 22.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 messagesTypeKeyplanSwitchKeyFontSize];
  }

  return result;
}

- (double)tinyPunctuationGlyphFontSize
{
  if (![(UIKBRenderFactory *)self dynamicFactory])
  {
    return 50.0;
  }

  v4.receiver = self;
  v4.super_class = UIKBRenderFactoryiPadLandscape;
  [(UIKBRenderFactoryiPad *)&v4 tinyPunctuationGlyphFontSize];
  return result;
}

- (CGPoint)tinyPunctuationGlyphOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 tinyPunctuationGlyphOffset];
  }

  else
  {
    v4 = -2.5;
    v3 = 0.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)dualStringKeyOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 dualStringKeyOffset];
  }

  else
  {
    v4 = 2.0;
    v3 = 0.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)dismissKeyOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 dismissKeyOffset];
  }

  else
  {
    v4 = 1.0;
    v3 = 0.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)deleteKeyOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 deleteKeyOffset];
  }

  else
  {
    v4 = -1.0;
    v3 = 1.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)shiftKeyOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 shiftKeyOffset];
  }

  else
  {
    v4 = -2.0;
    v3 = 0.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)symbolImageControlKeyOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadLandscape;
    [(UIKBRenderFactoryiPad *)&v5 symbolImageControlKeyOffset];
  }

  else
  {
    v4 = -1.0;
    v3 = 1.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (id)multitapCompleteKeyImageName
{
  [(UIKBRenderFactory *)self RivenFactor:1.0];
  if (v2 <= 1.0)
  {
    v3 = @"kana_multitap_complete_arrow.png";
  }

  else
  {
    v3 = @"kana_multitap_complete_arrow-163r.png";
  }

  return v3;
}

- (id)muttitapReverseKeyImageName
{
  [(UIKBRenderFactory *)self RivenFactor:1.0];
  if (v2 <= 1.0)
  {
    v3 = @"kana_multitap_reverse_arrow.png";
  }

  else
  {
    v3 = @"kana_multitap_reverse_arrow-163r.png";
  }

  return v3;
}

- (UIEdgeInsets)dynamicInsets
{
  v2 = [(UIKBRenderFactory *)self dynamicFactory];
  if (v2)
  {
    v3 = 4.0;
  }

  else
  {
    v3 = 6.0;
  }

  if (v2)
  {
    v4 = 6.0;
  }

  else
  {
    v4 = 8.0;
  }

  v5 = 0.0;
  v6 = 0.0;
  result.right = v4;
  result.bottom = v3;
  result.left = v6;
  result.top = v5;
  return result;
}

- (double)dynamicBottomRowMultiplier
{
  v2 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 1.2;
  if (v2)
  {
    return 1.07;
  }

  return result;
}

@end