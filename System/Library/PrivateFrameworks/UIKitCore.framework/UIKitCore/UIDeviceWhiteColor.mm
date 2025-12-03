@interface UIDeviceWhiteColor
- (BOOL)_isDeepColor;
- (BOOL)getHue:(double *)hue saturation:(double *)saturation brightness:(double *)brightness alpha:(double *)alpha;
- (BOOL)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha;
- (BOOL)getWhite:(double *)white alpha:(double *)alpha;
- (BOOL)isEqual:(id)equal;
- (CGColor)CGColor;
- (UIDeviceWhiteColor)colorWithAlphaComponent:(double)component;
- (UIDeviceWhiteColor)initWithCGColor:(CGColor *)color;
- (UIDeviceWhiteColor)initWithWhite:(double)white alpha:(double)alpha;
- (id)colorSpaceName;
- (id)description;
- (void)dealloc;
- (void)set;
- (void)setFill;
- (void)setStroke;
@end

@implementation UIDeviceWhiteColor

- (CGColor)CGColor
{
  components[2] = *MEMORY[0x1E69E9840];
  result = atomic_load(&self->_cachedColor);
  if (!result)
  {
    alphaComponent = self->alphaComponent;
    components[0] = self->whiteComponent;
    components[1] = alphaComponent;
    if (qword_1ED49BEC0 != -1)
    {
      dispatch_once(&qword_1ED49BEC0, &__block_literal_global_2243);
    }

    result = CGColorCreate(qword_1ED49BEB8, components);
    v5 = 0;
    atomic_compare_exchange_strong(&self->_cachedColor, &v5, result);
    if (v5)
    {
      CGColorRelease(result);
      return v5;
    }
  }

  return result;
}

- (void)dealloc
{
  CGColorRelease(self->_cachedColor);
  v3.receiver = self;
  v3.super_class = UIDeviceWhiteColor;
  [(UIDeviceWhiteColor *)&v3 dealloc];
}

- (id)colorSpaceName
{
  if (dyld_program_sdk_at_least())
  {
    v2 = @"UIExtendedGrayColorSpace";
  }

  else
  {
    v2 = @"UIDeviceWhiteColorSpace";
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

  cGColor = [(UIDeviceWhiteColor *)self CGColor];
  CGContextSetFillColorWithColor(v4, cGColor);

  CGContextSetStrokeColorWithColor(v4, cGColor);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  colorSpaceName = [(UIDeviceWhiteColor *)self colorSpaceName];
  v5 = [v3 stringWithFormat:@"%@ %g %g", colorSpaceName, *&self->whiteComponent, *&self->alphaComponent];

  return v5;
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

  cGColor = [(UIDeviceWhiteColor *)self CGColor];

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

  cGColor = [(UIDeviceWhiteColor *)self CGColor];

  CGContextSetStrokeColorWithColor(v4, cGColor);
}

- (UIDeviceWhiteColor)initWithWhite:(double)white alpha:(double)alpha
{
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    if (white == 1.0 && alpha == 1.0)
    {
      v15 = +[UIColor whiteColor];
    }

    else if (white == 0.0 && alpha == 1.0)
    {
      v15 = +[UIColor blackColor];
    }

    else if (white == 0.0 && alpha == 0.0)
    {
      v15 = +[UIColor clearColor];
    }

    else if (white == 0.0 && alpha == 0.5)
    {
      v15 = +[UIColor __halfTransparentBlackColor];
    }

    else
    {
      if (white != 1.0 || alpha != 0.5)
      {
        goto LABEL_2;
      }

      v15 = +[UIColor __halfTransparentWhiteColor];
    }

    v8 = v15;
    if (v15)
    {

      return v8;
    }
  }

LABEL_2:
  v17.receiver = self;
  v17.super_class = UIDeviceWhiteColor;
  v8 = [(UIDeviceWhiteColor *)&v17 init];
  if (v8)
  {
    if (white > 2.0 || white < -1.0)
    {
      UIColorBreakForOutOfRangeColorComponents();
    }

    v10 = dyld_program_sdk_at_least();
    v11 = 0.0;
    alphaCopy = 1.0;
    if (white <= 1.0)
    {
      whiteCopy2 = white;
    }

    else
    {
      whiteCopy2 = 1.0;
    }

    if (white < 0.0)
    {
      whiteCopy2 = 0.0;
    }

    if (v10)
    {
      whiteCopy2 = white;
    }

    v8->whiteComponent = whiteCopy2;
    if (alpha <= 1.0)
    {
      alphaCopy = alpha;
    }

    if (alpha >= 0.0)
    {
      v11 = alphaCopy;
    }

    v8->alphaComponent = v11;
  }

  return v8;
}

- (UIDeviceWhiteColor)initWithCGColor:(CGColor *)color
{
  v8.receiver = self;
  v8.super_class = UIDeviceWhiteColor;
  v4 = [(UIDeviceWhiteColor *)&v8 init];
  if (v4)
  {
    Components = CGColorGetComponents(color);
    v4->whiteComponent = *Components;
    v4->alphaComponent = Components[1];
    v6 = v4;
  }

  return v4;
}

- (UIDeviceWhiteColor)colorWithAlphaComponent:(double)component
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
    selfCopy = [[UIDeviceWhiteColor alloc] initWithWhite:self->whiteComponent alpha:v4];
  }

  return selfCopy;
}

- (BOOL)_isDeepColor
{
  whiteComponent = self->whiteComponent;
  v3 = 0.0;
  if (whiteComponent >= 0.0)
  {
    v3 = 1.0;
    if (whiteComponent <= 1.0)
    {
      v3 = self->whiteComponent;
    }
  }

  return whiteComponent != v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(UIColor *)equalCopy _isDynamic])
  {
    colorSpaceName = [(UIDeviceWhiteColor *)equalCopy colorSpaceName];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self->whiteComponent == equalCopy->whiteComponent)
      {
        alphaComponent = self->alphaComponent;
        v8 = equalCopy->alphaComponent;
LABEL_12:
        v5 = alphaComponent == v8;
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      colorSpaceName2 = [(UIDeviceWhiteColor *)self colorSpaceName];
      v10 = [colorSpaceName isEqualToString:colorSpaceName2];

      if (v10)
      {
        v12 = 0.0;
        v13 = 0.0;
        [(UIDeviceWhiteColor *)equalCopy getWhite:&v13 alpha:&v12];
        if (self->whiteComponent == v13)
        {
          alphaComponent = self->alphaComponent;
          v8 = v12;
          goto LABEL_12;
        }
      }
    }

    v5 = 0;
    goto LABEL_14;
  }

  v5 = 0;
LABEL_15:

  return v5;
}

- (BOOL)getWhite:(double *)white alpha:(double *)alpha
{
  if (white)
  {
    *white = self->whiteComponent;
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
    *red = self->whiteComponent;
  }

  if (green)
  {
    *green = self->whiteComponent;
  }

  if (blue)
  {
    *blue = self->whiteComponent;
  }

  if (alpha)
  {
    *alpha = self->alphaComponent;
  }

  return 1;
}

- (BOOL)getHue:(double *)hue saturation:(double *)saturation brightness:(double *)brightness alpha:(double *)alpha
{
  if (hue)
  {
    *hue = 0.0;
  }

  if (saturation)
  {
    *saturation = 0.0;
  }

  if (brightness)
  {
    *brightness = self->whiteComponent;
  }

  if (alpha)
  {
    *alpha = self->alphaComponent;
  }

  return 1;
}

@end