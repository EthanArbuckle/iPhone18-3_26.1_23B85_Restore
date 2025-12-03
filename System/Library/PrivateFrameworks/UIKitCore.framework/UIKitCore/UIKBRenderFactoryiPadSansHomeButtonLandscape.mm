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
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  v4 = 13.0;
  v5 = 13.0;
  if (dynamicFactory)
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
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 20.0;
  if (dynamicFactory)
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
    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    if ([renderConfig colorAdaptiveBackground])
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
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 24.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPadSansHomeButton *)&v5 symbolImageControlKeyFontSize];
  }

  return result;
}

- (double)dualStringKeyBottomFontSize
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 28.0;
  if (dynamicFactory)
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
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 31.0;
  if (dynamicFactory)
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
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 24.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPad *)&v5 bottomRowDefaultFontSize];
  }

  return result;
}

- (double)fontSizeAdjustmentForNonAlphanumericKeycaps
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 6.0;
  if (dynamicFactory)
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
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 22.0;
  if (dynamicFactory)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadSansHomeButtonLandscape;
    [(UIKBRenderFactoryiPad *)&v5 messagesTypeKeyplanSwitchKeyFontSize];
  }

  return result;
}

- (UIEdgeInsets)dynamicInsets
{
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  if (dynamicFactory)
  {
    v3 = 4.0;
  }

  else
  {
    v3 = 7.0;
  }

  if (dynamicFactory)
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
  dynamicFactory = [(UIKBRenderFactory *)self dynamicFactory];
  result = 1.115;
  if (dynamicFactory)
  {
    return 1.08;
  }

  return result;
}

@end