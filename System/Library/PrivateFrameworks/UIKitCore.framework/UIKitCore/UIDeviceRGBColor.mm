@interface UIDeviceRGBColor
- (BOOL)_isDeepColor;
- (BOOL)getHue:(double *)hue saturation:(double *)saturation brightness:(double *)brightness alpha:(double *)alpha;
- (BOOL)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha;
- (BOOL)getWhite:(double *)white alpha:(double *)alpha;
- (BOOL)isEqual:(id)equal;
- (CGColor)CGColor;
- (UIDeviceRGBColor)colorWithAlphaComponent:(double)component;
- (UIDeviceRGBColor)initWithCGColor:(CGColor *)color;
- (UIDeviceRGBColor)initWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha;
- (UIDeviceRGBColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (id)colorSpaceName;
- (id)description;
- (void)dealloc;
- (void)set;
- (void)setFill;
- (void)setStroke;
@end

@implementation UIDeviceRGBColor

- (CGColor)CGColor
{
  components[4] = *MEMORY[0x1E69E9840];
  result = atomic_load(&self->_cachedColor);
  if (!result)
  {
    alphaComponent = self->alphaComponent;
    greenComponent = self->greenComponent;
    blueComponent = self->blueComponent;
    components[0] = self->redComponent;
    components[1] = greenComponent;
    components[2] = blueComponent;
    components[3] = alphaComponent;
    if (qword_1ED49BED0 != -1)
    {
      dispatch_once(&qword_1ED49BED0, &__block_literal_global_2245);
    }

    result = CGColorCreate(qword_1ED49BEC8, components);
    v7 = 0;
    atomic_compare_exchange_strong(&self->_cachedColor, &v7, result);
    if (v7)
    {
      CGColorRelease(result);
      return v7;
    }
  }

  return result;
}

- (void)dealloc
{
  CGColorRelease(self->_cachedColor);
  v3.receiver = self;
  v3.super_class = UIDeviceRGBColor;
  [(UIDeviceRGBColor *)&v3 dealloc];
}

- (id)colorSpaceName
{
  if (dyld_program_sdk_at_least())
  {
    v2 = @"UIExtendedSRGBColorSpace";
  }

  else
  {
    v2 = @"UIDeviceRGBColorSpace";
  }

  return v2;
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

  cGColor = [(UIDeviceRGBColor *)self CGColor];
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

  cGColor = [(UIDeviceRGBColor *)self CGColor];

  CGContextSetFillColorWithColor(v4, cGColor);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  colorSpaceName = [(UIDeviceRGBColor *)self colorSpaceName];
  v5 = [v3 stringWithFormat:@"%@ %g %g %g %g", colorSpaceName, *&self->redComponent, *&self->greenComponent, *&self->blueComponent, *&self->alphaComponent];

  return v5;
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

  cGColor = [(UIDeviceRGBColor *)self CGColor];

  CGContextSetStrokeColorWithColor(v4, cGColor);
}

- (UIDeviceRGBColor)initWithHue:(double)hue saturation:(double)saturation brightness:(double)brightness alpha:(double)alpha
{
  if (dyld_program_sdk_at_least())
  {
    *v11.i64 = hue;
  }

  else
  {
    v11.i64[0] = 0;
    if (hue >= 0.0)
    {
      v11.i64[0] = 1.0;
      if (hue <= 1.0)
      {
        *v11.i64 = hue;
      }
    }
  }

  v31 = v11;
  v12 = dyld_program_sdk_at_least();
  v13 = 0.0;
  if (saturation <= 1.0)
  {
    saturationCopy = saturation;
  }

  else
  {
    saturationCopy = 1.0;
  }

  if (saturation < 0.0)
  {
    saturationCopy = 0.0;
  }

  if ((v12 & 1) == 0)
  {
    saturation = saturationCopy;
  }

  v15 = dyld_program_sdk_at_least();
  *v18.i64 = *v31.i64 - trunc(*v31.i64);
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  *&v20 = vbslq_s8(vnegq_f64(v19), v18, v31).u64[0];
  if (brightness <= 1.0)
  {
    brightnessCopy = brightness;
  }

  else
  {
    brightnessCopy = 1.0;
  }

  if (brightness < 0.0)
  {
    brightnessCopy = 0.0;
  }

  v22 = v20 * 6.0;
  v23 = (v20 * 6.0);
  if (v15)
  {
    brightnessCopy2 = brightness;
  }

  else
  {
    brightnessCopy2 = brightnessCopy;
  }

  v25 = v22 - v23;
  v26 = (1.0 - v25 * saturation) * brightnessCopy2;
  v27 = (1.0 - (1.0 - v25) * saturation) * brightnessCopy2;
  if (v23 > 2)
  {
    if (v23 == 3)
    {
      v16 = (1.0 - saturation) * brightnessCopy2;
      v17 = (1.0 - v25 * saturation) * brightnessCopy2;
    }

    else
    {
      if (v23 != 4)
      {
        v28 = 0.0;
        v29 = 0.0;
        if (v23 != 5)
        {
          goto LABEL_37;
        }

        v16 = brightnessCopy2;
        v17 = (1.0 - saturation) * brightnessCopy2;
        v27 = v26;
        goto LABEL_36;
      }

      v16 = (1.0 - (1.0 - v25) * saturation) * brightnessCopy2;
      v17 = (1.0 - saturation) * brightnessCopy2;
    }

    v27 = brightnessCopy2;
LABEL_36:
    v13 = v16;
    v28 = v17;
    v29 = v27;
    goto LABEL_37;
  }

  if (!v23)
  {
    v16 = brightnessCopy2;
    v17 = (1.0 - (1.0 - v25) * saturation) * brightnessCopy2;
LABEL_33:
    v27 = (1.0 - saturation) * brightnessCopy2;
    goto LABEL_36;
  }

  if (v23 == 1)
  {
    v16 = (1.0 - v25 * saturation) * brightnessCopy2;
    v17 = brightnessCopy2;
    goto LABEL_33;
  }

  v16 = (1.0 - saturation) * brightnessCopy2;
  v17 = brightnessCopy2;
  v28 = 0.0;
  v29 = 0.0;
  if (v23 == 2)
  {
    goto LABEL_36;
  }

LABEL_37:

  return [(UIDeviceRGBColor *)self initWithRed:v13 green:v28 blue:v29 alpha:alpha, v27, v26, v16, v17];
}

- (UIDeviceRGBColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v25.receiver = self;
  v25.super_class = UIDeviceRGBColor;
  v10 = [(UIDeviceRGBColor *)&v25 init];
  if (v10)
  {
    if (blue < -1.0 || blue > 2.0 || green < -1.0 || red > 2.0 || red < -1.0 || green > 2.0)
    {
      UIColorBreakForOutOfRangeColorComponents();
    }

    v16 = dyld_program_sdk_at_least();
    if (red <= 1.0)
    {
      redCopy2 = red;
    }

    else
    {
      redCopy2 = 1.0;
    }

    if (red < 0.0)
    {
      redCopy2 = 0.0;
    }

    if (v16)
    {
      redCopy2 = red;
    }

    v10->redComponent = redCopy2;
    v18 = dyld_program_sdk_at_least();
    if (green <= 1.0)
    {
      greenCopy2 = green;
    }

    else
    {
      greenCopy2 = 1.0;
    }

    if (green < 0.0)
    {
      greenCopy2 = 0.0;
    }

    if (v18)
    {
      greenCopy2 = green;
    }

    v10->greenComponent = greenCopy2;
    v20 = dyld_program_sdk_at_least();
    if (blue <= 1.0)
    {
      blueCopy2 = blue;
    }

    else
    {
      blueCopy2 = 1.0;
    }

    if (blue < 0.0)
    {
      blueCopy2 = 0.0;
    }

    if (v20)
    {
      blueCopy2 = blue;
    }

    v10->blueComponent = blueCopy2;
    if (alpha <= 1.0)
    {
      alphaCopy = alpha;
    }

    else
    {
      alphaCopy = 1.0;
    }

    if (alpha < 0.0)
    {
      alphaCopy = 0.0;
    }

    v10->alphaComponent = alphaCopy;
    v23 = v10;
  }

  return v10;
}

- (UIDeviceRGBColor)initWithCGColor:(CGColor *)color
{
  v8.receiver = self;
  v8.super_class = UIDeviceRGBColor;
  v4 = [(UIDeviceRGBColor *)&v8 init];
  if (v4)
  {
    Components = CGColorGetComponents(color);
    v4->redComponent = *Components;
    v4->greenComponent = Components[1];
    v4->blueComponent = Components[2];
    v4->alphaComponent = Components[3];
    v6 = v4;
  }

  return v4;
}

- (UIDeviceRGBColor)colorWithAlphaComponent:(double)component
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
    selfCopy = [[UIDeviceRGBColor alloc] initWithRed:self->redComponent green:self->greenComponent blue:self->blueComponent alpha:v4];
  }

  return selfCopy;
}

- (BOOL)_isDeepColor
{
  redComponent = self->redComponent;
  v3 = 0.0;
  if (redComponent >= 0.0)
  {
    v3 = 1.0;
    if (redComponent <= 1.0)
    {
      v3 = self->redComponent;
    }
  }

  if (redComponent != v3)
  {
    return 1;
  }

  greenComponent = self->greenComponent;
  v5 = 0.0;
  if (greenComponent >= 0.0)
  {
    v5 = 1.0;
    if (greenComponent <= 1.0)
    {
      v5 = self->greenComponent;
    }
  }

  if (greenComponent != v5)
  {
    return 1;
  }

  blueComponent = self->blueComponent;
  v8 = 0.0;
  if (blueComponent >= 0.0)
  {
    v8 = 1.0;
    if (blueComponent <= 1.0)
    {
      v8 = self->blueComponent;
    }
  }

  return blueComponent != v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(UIColor *)equalCopy _isDynamic])
  {
    colorSpaceName = [(UIDeviceRGBColor *)equalCopy colorSpaceName];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self->redComponent == equalCopy->redComponent && self->greenComponent == equalCopy->greenComponent && self->blueComponent == equalCopy->blueComponent)
      {
        alphaComponent = self->alphaComponent;
        v8 = equalCopy->alphaComponent;
LABEL_17:
        v5 = alphaComponent == v8;
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      colorSpaceName2 = [(UIDeviceRGBColor *)self colorSpaceName];
      v10 = [colorSpaceName isEqualToString:colorSpaceName2];

      if (v10 || [colorSpaceName isEqualToString:@"UIDisplayP3ColorSpace"])
      {
        v14 = 0.0;
        v15 = 0.0;
        v12 = 0.0;
        v13 = 0.0;
        [(UIDeviceRGBColor *)equalCopy getRed:&v15 green:&v14 blue:&v13 alpha:&v12];
        if (self->redComponent == v15 && self->greenComponent == v14 && self->blueComponent == v13)
        {
          alphaComponent = self->alphaComponent;
          v8 = v12;
          goto LABEL_17;
        }
      }
    }

    v5 = 0;
    goto LABEL_19;
  }

  v5 = 0;
LABEL_20:

  return v5;
}

- (BOOL)getHue:(double *)hue saturation:(double *)saturation brightness:(double *)brightness alpha:(double *)alpha
{
  v15 = 0;
  v16 = 0;
  v6.i64[0] = *&self->redComponent;
  v14 = 0;
  v7.i64[0] = *&self->greenComponent;
  _NXRGBToHSB(&v16, &v15, &v14, v6, v7, self->blueComponent);
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
  if (red)
  {
    *red = self->redComponent;
  }

  if (green)
  {
    *green = self->greenComponent;
  }

  if (blue)
  {
    *blue = self->blueComponent;
  }

  if (alpha)
  {
    *alpha = self->alphaComponent;
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
  if (qword_1ED49BED0 != -1)
  {
    dispatch_once(&qword_1ED49BED0, &__block_literal_global_2245);
  }

  v13 = 0;
  v14 = 0.0;
  v9 = qword_1ED49BEC8;
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