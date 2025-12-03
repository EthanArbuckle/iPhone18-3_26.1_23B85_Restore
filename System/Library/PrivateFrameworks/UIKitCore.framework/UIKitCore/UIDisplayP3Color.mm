@interface UIDisplayP3Color
- (BOOL)_isDeepColor;
- (BOOL)getHue:(double *)hue saturation:(double *)saturation brightness:(double *)brightness alpha:(double *)alpha;
- (BOOL)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha;
- (BOOL)getWhite:(double *)white alpha:(double *)alpha;
- (BOOL)isEqual:(id)equal;
- (CGColor)CGColor;
- (UIDisplayP3Color)colorWithAlphaComponent:(double)component;
- (UIDisplayP3Color)initWithDisplayP3Red:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (id)description;
- (void)dealloc;
- (void)set;
- (void)setFill;
- (void)setStroke;
@end

@implementation UIDisplayP3Color

- (UIDisplayP3Color)initWithDisplayP3Red:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v18.receiver = self;
  v18.super_class = UIDisplayP3Color;
  v10 = [(UIDisplayP3Color *)&v18 init];
  if (v10)
  {
    v11 = blue >= 0.0 && blue <= 1.0;
    if (!v11 || green < 0.0 || red > 1.0 || red < 0.0 || green > 1.0)
    {
      UIColorBreakForOutOfRangeColorComponents();
    }

    alphaCopy = 1.0;
    if (red <= 1.0)
    {
      redCopy = red;
    }

    else
    {
      redCopy = 1.0;
    }

    if (red < 0.0)
    {
      redCopy = 0.0;
    }

    v10->redComponent = redCopy;
    if (green <= 1.0)
    {
      greenCopy = green;
    }

    else
    {
      greenCopy = 1.0;
    }

    if (green < 0.0)
    {
      greenCopy = 0.0;
    }

    v10->greenComponent = greenCopy;
    if (blue <= 1.0)
    {
      blueCopy = blue;
    }

    else
    {
      blueCopy = 1.0;
    }

    if (blue < 0.0)
    {
      blueCopy = 0.0;
    }

    v10->blueComponent = blueCopy;
    if (alpha <= 1.0)
    {
      alphaCopy = alpha;
    }

    if (alpha < 0.0)
    {
      alphaCopy = 0.0;
    }

    v10->alphaComponent = alphaCopy;
    v16 = v10;
  }

  return v10;
}

- (void)dealloc
{
  CGColorRelease(self->_cachedColor);
  v3.receiver = self;
  v3.super_class = UIDisplayP3Color;
  [(UIDisplayP3Color *)&v3 dealloc];
}

- (UIDisplayP3Color)colorWithAlphaComponent:(double)component
{
  componentCopy = 1.0;
  if (component <= 1.0)
  {
    componentCopy = component;
  }

  if (component >= 0.0)
  {
    v4 = componentCopy;
  }

  else
  {
    v4 = 0.0;
  }

  if (v4 == self->alphaComponent)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [[UIDisplayP3Color alloc] initWithDisplayP3Red:self->redComponent green:self->greenComponent blue:self->blueComponent alpha:v4];
  }

  return selfCopy;
}

- (void)set
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  cGColor = [(UIDisplayP3Color *)self CGColor];
  CGContextSetFillColorWithColor(v4, cGColor);

  CGContextSetStrokeColorWithColor(v4, cGColor);
}

- (void)setFill
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  cGColor = [(UIDisplayP3Color *)self CGColor];

  CGContextSetFillColorWithColor(v4, cGColor);
}

- (void)setStroke
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  cGColor = [(UIDisplayP3Color *)self CGColor];

  CGContextSetStrokeColorWithColor(v4, cGColor);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  colorSpaceName = [(UIDisplayP3Color *)self colorSpaceName];
  v5 = [v3 stringWithFormat:@"%@ %g %g %g %g", colorSpaceName, *&self->redComponent, *&self->greenComponent, *&self->blueComponent, *&self->alphaComponent];

  return v5;
}

- (BOOL)_isDeepColor
{
  v9 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v6 = 0;
  [(UIDisplayP3Color *)self getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  v2 = 1.0;
  if (v9 <= 1.0)
  {
    v3 = v9;
  }

  else
  {
    v3 = 1.0;
  }

  if (v9 < 0.0)
  {
    v3 = 0.0;
  }

  if (v9 != v3)
  {
    return 1;
  }

  if (v8 <= 1.0)
  {
    v2 = v8;
  }

  if (v8 < 0.0)
  {
    v2 = 0.0;
  }

  if (v8 != v2)
  {
    return 1;
  }

  v5 = 1.0;
  if (v7 <= 1.0)
  {
    v5 = v7;
  }

  if (v7 < 0.0)
  {
    v5 = 0.0;
  }

  return v7 != v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(UIColor *)equalCopy _isDynamic])
  {
    colorSpaceName = [(UIDisplayP3Color *)equalCopy colorSpaceName];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self->redComponent == equalCopy->redComponent && self->greenComponent == equalCopy->greenComponent && self->blueComponent == equalCopy->blueComponent)
      {
        alphaComponent = self->alphaComponent;
LABEL_18:
        v5 = alphaComponent == equalCopy->alphaComponent;
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      colorSpaceName2 = [(UIDisplayP3Color *)self colorSpaceName];
      v9 = [colorSpaceName isEqualToString:colorSpaceName2];

      if (v9 || ([colorSpaceName isEqualToString:@"UIExtendedSRGBColorSpace"] & 1) != 0 || objc_msgSend(colorSpaceName, "isEqualToString:", @"UIDeviceRGBColorSpace"))
      {
        v13 = 0.0;
        v14 = 0.0;
        v11 = 0.0;
        v12 = 0.0;
        [(UIDisplayP3Color *)self getRed:&v14 green:&v13 blue:&v12 alpha:&v11];
        if (v14 == equalCopy->redComponent && v13 == equalCopy->greenComponent && v12 == equalCopy->blueComponent)
        {
          alphaComponent = v11;
          goto LABEL_18;
        }
      }
    }

    v5 = 0;
    goto LABEL_20;
  }

  v5 = 0;
LABEL_21:

  return v5;
}

- (CGColor)CGColor
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_cachedColor);
  if (!v2)
  {
    alphaComponent = self->alphaComponent;
    greenComponent = self->greenComponent;
    redComponent = self->redComponent;
    v11 = greenComponent;
    blueComponent = self->blueComponent;
    v13 = alphaComponent;
    v8 = 0u;
    v9 = 0u;
    UISCreateCachedColorTransform();
    if (qword_1ED49BEF0 != -1)
    {
      dispatch_once(&qword_1ED49BEF0, &__block_literal_global_2249);
    }

    if (CGColorTransformConvertColorComponents())
    {
      *(&v9 + 1) = alphaComponent;
      if (qword_1ED49BED0 != -1)
      {
        dispatch_once(&qword_1ED49BED0, &__block_literal_global_2245);
      }

      v2 = CGColorCreate(qword_1ED49BEC8, &v8);
    }

    else
    {
      v2 = 0;
    }

    CGColorTransformRelease();
    v6 = 0;
    atomic_compare_exchange_strong(&self->_cachedColor, &v6, v2);
    if (v6)
    {
      CGColorRelease(v2);
      return v6;
    }
  }

  return v2;
}

- (BOOL)getHue:(double *)hue saturation:(double *)saturation brightness:(double *)brightness alpha:(double *)alpha
{
  v18 = 0;
  v19 = 0;
  v17 = 0.0;
  [(UIDisplayP3Color *)self getRed:&v19 green:&v18 blue:&v17 alpha:0];
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v12.i64[0] = v18;
  v11.i64[0] = v19;
  _NXRGBToHSB(&v16, &v15, &v14, v11, v12, v17);
  if (hue)
  {
    *hue = v16;
  }

  if (saturation)
  {
    *saturation = v15;
  }

  if (brightness)
  {
    *brightness = v14;
  }

  if (alpha)
  {
    *alpha = self->alphaComponent;
  }

  return 1;
}

- (BOOL)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha
{
  v19 = *MEMORY[0x1E69E9840];
  greenComponent = self->greenComponent;
  blueComponent = self->blueComponent;
  alphaComponent = self->alphaComponent;
  v16[0] = *&self->redComponent;
  *&v16[1] = greenComponent;
  *&v16[2] = blueComponent;
  *&v16[3] = alphaComponent;
  if (qword_1ED49BEF0 != -1)
  {
    dispatch_once(&qword_1ED49BEF0, &__block_literal_global_2249);
  }

  v13 = qword_1ED49BEE8;
  v17 = 0u;
  v18 = 0u;
  if (qword_1ED49BED0 != -1)
  {
    dispatch_once(&qword_1ED49BED0, &__block_literal_global_2245);
  }

  if (qword_1ED49BEC8 == v13)
  {
    goto LABEL_12;
  }

  if (qword_1ED49BF00 != -1)
  {
    dispatch_once(&qword_1ED49BF00, &__block_literal_global_2251);
  }

  if (qword_1ED49BEF8 == v13)
  {
LABEL_12:
    v14 = v16;
    if (!red)
    {
      goto LABEL_14;
    }

LABEL_13:
    *red = *v14;
    goto LABEL_14;
  }

  UISCreateCachedColorTransform();
  if (!CGColorTransformConvertColorComponents())
  {
    CGColorTransformRelease();
    return 0;
  }

  *(&v18 + 1) = alphaComponent;
  CGColorTransformRelease();
  v14 = &v17;
  if (red)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (green)
  {
    *green = v14[1];
  }

  if (blue)
  {
    *blue = v14[2];
  }

  if (alpha)
  {
    *alpha = v14[3];
  }

  return 1;
}

- (BOOL)getWhite:(double *)white alpha:(double *)alpha
{
  v15 = *MEMORY[0x1E69E9840];
  greenComponent = self->greenComponent;
  blueComponent = self->blueComponent;
  alphaComponent = self->alphaComponent;
  v12[0] = *&self->redComponent;
  *&v12[1] = greenComponent;
  *&v12[2] = blueComponent;
  *&v12[3] = alphaComponent;
  if (qword_1ED49BEF0 != -1)
  {
    dispatch_once(&qword_1ED49BEF0, &__block_literal_global_2249);
  }

  v9 = qword_1ED49BEE8;
  v13 = 0;
  v14 = 0.0;
  if (qword_1ED49BEC0 != -1)
  {
    dispatch_once(&qword_1ED49BEC0, &__block_literal_global_2243);
  }

  if (qword_1ED49BEB8 == v9)
  {
    goto LABEL_12;
  }

  if (qword_1ED49BEE0 != -1)
  {
    dispatch_once(&qword_1ED49BEE0, &__block_literal_global_2247);
  }

  if (qword_1ED49BED8 == v9)
  {
LABEL_12:
    v10 = v12;
    if (!white)
    {
      goto LABEL_14;
    }

LABEL_13:
    *white = *v10;
    goto LABEL_14;
  }

  UISCreateCachedColorTransform();
  if (!CGColorTransformConvertColorComponents())
  {
    CGColorTransformRelease();
    return 0;
  }

  v14 = alphaComponent;
  CGColorTransformRelease();
  v10 = &v13;
  if (white)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (alpha)
  {
    *alpha = v10[1];
  }

  return 1;
}

@end