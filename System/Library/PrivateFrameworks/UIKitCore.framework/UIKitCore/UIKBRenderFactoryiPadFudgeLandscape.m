@interface UIKBRenderFactoryiPadFudgeLandscape
- (CGPoint)deleteKeyOffset:(unint64_t)a3;
- (CGPoint)dictationKeyOffset;
- (CGPoint)dismissKeyOffset;
- (CGPoint)dualStringKeyBottomTextOffset:(unint64_t)a3;
- (CGPoint)dualStringKeyTopTextOffset:(unint64_t)a3;
- (CGPoint)iPadFudgeControlKeyOffset;
- (CGPoint)internationalKeyOffset;
- (CGPoint)moreKeyOffset;
- (CGPoint)symbolImageControlKeyOffset;
- (CGSize)defaultVariantGeometrySize;
- (UIEdgeInsets)dynamicInsets;
- (double)_row4ControlSegmentWidthRight;
- (double)controlKeyFontSize;
- (double)deleteKeyFontSize;
- (double)dualStringKeyBottomFontSize:(unint64_t)a3;
- (double)dualStringKeyTopFontSize:(unint64_t)a3;
- (double)dynamicBottomRowMultiplier;
- (double)keyCornerRadius;
- (double)moreKeyFontSize;
- (double)spaceKeyFontSize;
- (double)stringKeyFontSize:(unint64_t)a3;
- (double)symbolImageControlKeyFontSize;
- (id)messagesWriteboardKeyImageName;
@end

@implementation UIKBRenderFactoryiPadFudgeLandscape

- (double)spaceKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 19.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v5 spaceKeyFontSize];
  }

  return result;
}

- (double)moreKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 20.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v5 moreKeyFontSize];
  }

  return result;
}

- (double)deleteKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 20.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v5 deleteKeyFontSize];
  }

  return result;
}

- (double)controlKeyFontSize
{
  v3 = [(UIKBRenderFactory *)self dynamicFactory];
  result = 20.0;
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v5 controlKeyFontSize];
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
    v5.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v5 symbolImageControlKeyFontSize];
  }

  return result;
}

- (CGPoint)symbolImageControlKeyOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v5 symbolImageControlKeyOffset];
  }

  else
  {
    v4 = 16.0;
    v3 = 20.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)internationalKeyOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v5 internationalKeyOffset];
  }

  else
  {
    v4 = 17.0;
    v3 = 20.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)moreKeyOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v5 moreKeyOffset];
  }

  else
  {
    v4 = 15.0;
    v3 = 19.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)dictationKeyOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v5 dictationKeyOffset];
  }

  else
  {
    v4 = 17.0;
    v3 = 20.0;
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
    v5.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v5 dismissKeyOffset];
  }

  else
  {
    v4 = 12.0;
    v3 = 20.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGSize)defaultVariantGeometrySize
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v5 defaultVariantGeometrySize];
  }

  else
  {
    v4 = 79.0;
    v3 = 85.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (double)keyCornerRadius
{
  v3 = [(UIKBRenderFactory *)self renderConfig];
  v4 = 12.0;
  if (([v3 colorAdaptiveBackground] & 1) == 0)
  {
    v4 = 8.0;
    if ([(UIKBRenderFactory *)self dynamicFactory])
    {
      v7.receiver = self;
      v7.super_class = UIKBRenderFactoryiPadFudgeLandscape;
      [(UIKBRenderFactoryiPad *)&v7 keyCornerRadius];
      v4 = v5;
    }
  }

  return v4;
}

- (id)messagesWriteboardKeyImageName
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v5.receiver = self;
    v5.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    v3 = [(UIKBRenderFactoryiPadFudge *)&v5 messagesWriteboardKeyImageName];
  }

  else
  {
    v3 = @"messages_writeboard_fudge_landscape.png";
  }

  return v3;
}

- (UIEdgeInsets)dynamicInsets
{
  v2 = [(UIKBRenderFactory *)self dynamicFactory];
  if (v2)
  {
    v3 = 2.0;
  }

  else
  {
    v3 = 4.0;
  }

  if (v2)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 4.0;
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
  result = 1.07;
  if (v2)
  {
    return 1.04;
  }

  return result;
}

- (double)stringKeyFontSize:(unint64_t)a3
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v6.receiver = self;
    v6.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v6 stringKeyFontSize:a3];
  }

  else
  {
    result = 24.0;
    if (a3 == 1)
    {
      result = 23.0;
    }

    if (a3 == 4)
    {
      return 27.0;
    }
  }

  return result;
}

- (CGPoint)iPadFudgeControlKeyOffset
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v6.receiver = self;
    v6.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v6 iPadFudgeControlKeyOffset];
  }

  else
  {
    v5 = [(UIKBRenderFactory *)self preferStringKeycapOverImage];
    v3 = 20.0;
    if (v5)
    {
      v3 = 19.0;
    }

    v4 = 14.5;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)deleteKeyOffset:(unint64_t)a3
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v7 deleteKeyOffset:a3];
  }

  else
  {
    v6 = 15.5;
    if (a3 != 1)
    {
      v6 = 17.0;
    }

    v5 = 20.0;
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (double)dualStringKeyBottomFontSize:(unint64_t)a3
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v6.receiver = self;
    v6.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v6 dualStringKeyBottomFontSize:a3];
  }

  else
  {
    result = 22.0;
    if (a3 == 1)
    {
      result = 20.0;
    }

    if (a3 == 4)
    {
      return 26.0;
    }
  }

  return result;
}

- (CGPoint)dualStringKeyBottomTextOffset:(unint64_t)a3
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v7 dualStringKeyBottomTextOffset:a3];
  }

  else
  {
    v5 = 0.0;
    if (a3 == 4)
    {
      v6 = 18.5;
    }

    else if (a3 == 1)
    {
      v6 = 12.0;
    }

    else
    {
      v6 = 17.5;
    }
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (double)dualStringKeyTopFontSize:(unint64_t)a3
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v6.receiver = self;
    v6.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v6 dualStringKeyTopFontSize:a3];
  }

  else
  {
    result = 22.0;
    if (a3 == 1)
    {
      result = 20.0;
    }

    if (a3 == 4)
    {
      return 25.0;
    }
  }

  return result;
}

- (CGPoint)dualStringKeyTopTextOffset:(unint64_t)a3
{
  if ([(UIKBRenderFactory *)self dynamicFactory])
  {
    v7.receiver = self;
    v7.super_class = UIKBRenderFactoryiPadFudgeLandscape;
    [(UIKBRenderFactoryiPadFudge *)&v7 dualStringKeyTopTextOffset:a3];
  }

  else
  {
    v6 = -12.0;
    if (a3 != 1)
    {
      v6 = -15.0;
    }

    v5 = 0.0;
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (double)_row4ControlSegmentWidthRight
{
  v2 = [(UIKBRenderFactory *)self renderingContext];
  v3 = dbl_18A67EFA0[[v2 keyboardType] == 126];

  return v3;
}

@end