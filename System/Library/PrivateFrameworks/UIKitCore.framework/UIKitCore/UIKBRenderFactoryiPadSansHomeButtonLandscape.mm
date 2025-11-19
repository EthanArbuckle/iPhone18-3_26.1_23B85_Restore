@interface UIKBRenderFactoryiPadSansHomeButtonLandscape
- (CGPoint)dualStringKeyBottomTextOffset;
- (CGPoint)dualStringKeyTopTextOffset;
- (CGPoint)iPadFudgeControlKeyOffset;
- (CGPoint)symbolImageControlKeyOffset;
- (UIEdgeInsets)dynamicInsets;
- (double)bottomRowDefaultFontSize;
- (double)controlKeyFontSize;
- (double)dualStringKeyBottomFontSize;
- (double)dualStringKeyTopFontSize;
- (double)dynamicBottomRowMultiplier;
- (double)fallbackFontSize;
- (double)fontSizeAdjustmentForNonAlphanumericKeycaps;
- (double)keyCornerRadius;
- (double)messagesTypeKeyplanSwitchKeyFontSize;
- (double)stringKeyFontSize;
- (double)symbolImageControlKeyFontSize;
@end

@implementation UIKBRenderFactoryiPadSansHomeButtonLandscape

- (CGPoint)iPadFudgeControlKeyOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPadSansHomeButton *)&v5 iPadFudgeControlKeyOffset];
  }

  else
  {
    v4 = 11.0;
    v3 = 13.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)symbolImageControlKeyOffset
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  v4 = 13.0;
  v5 = 13.0;
  if (v3)
  {
    v6.receiver = self;
    v6.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPadSansHomeButton *)&v6 symbolImageControlKeyOffset:13.0];
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (double)controlKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 20.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPadSansHomeButton *)&v5 controlKeyFontSize];
  }

  return result;
}

- (double)keyCornerRadius
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
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
      v4 = 8.0;
    }
  }

  return v4;
}

- (double)stringKeyFontSize
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v4.receiver = self;
    v4.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPadSansHomeButton *)&v4 stringKeyFontSize];
  }

  else
  {

    [(UIKBRenderFactory *)self RivenFactor:27.0];
  }

  return result;
}

- (double)symbolImageControlKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 24.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPadSansHomeButton *)&v5 symbolImageControlKeyFontSize];
  }

  return result;
}

- (double)dualStringKeyBottomFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 28.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPadSansHomeButton *)&v5 dualStringKeyBottomFontSize];
  }

  return result;
}

- (CGPoint)dualStringKeyBottomTextOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPadSansHomeButton *)&v5 dualStringKeyBottomTextOffset];
  }

  else
  {
    v4 = 11.0;
    v3 = 0.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (double)dualStringKeyTopFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 31.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPadSansHomeButton *)&v5 dualStringKeyTopFontSize];
  }

  return result;
}

- (CGPoint)dualStringKeyTopTextOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPadSansHomeButton *)&v5 dualStringKeyTopTextOffset];
  }

  else
  {
    v4 = -11.0;
    v3 = 0.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (double)bottomRowDefaultFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 24.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
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
    v5.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPad *)&v5 fontSizeAdjustmentForNonAlphanumericKeycaps];
  }

  return result;
}

- (double)fallbackFontSize
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v4.receiver = self;
    v4.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPad *)&v4 fallbackFontSize];
  }

  else
  {

    [(UIKBRenderFactory *)self RivenFactor:28.0];
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
    v5.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPad *)&v5 messagesTypeKeyplanSwitchKeyFontSize];
  }

  return result;
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
    v3 = 7.0;
  }

  if (v2)
  {
    v4 = 4.0;
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
  result = 1.115;
  if (v2)
  {
    return 1.08;
  }

  return result;
}

@end