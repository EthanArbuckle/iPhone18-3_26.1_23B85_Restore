@interface UIDeviceWhiteColor
- (BOOL)_isDeepColor;
- (BOOL)getHue:(double *)a3 saturation:(double *)a4 brightness:(double *)a5 alpha:(double *)a6;
- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6;
- (BOOL)getWhite:(double *)a3 alpha:(double *)a4;
- (BOOL)isEqual:(id)a3;
- (CGColor)CGColor;
- (UIDeviceWhiteColor)colorWithAlphaComponent:(double)a3;
- (UIDeviceWhiteColor)initWithCGColor:(CGColor *)a3;
- (UIDeviceWhiteColor)initWithWhite:(double)a3 alpha:(double)a4;
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

  v5 = [(UIDeviceWhiteColor *)self CGColor];
  CGContextSetFillColorWithColor(v4, v5);

  CGContextSetStrokeColorWithColor(v4, v5);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UIDeviceWhiteColor *)self colorSpaceName];
  v5 = [v3 stringWithFormat:@"%@ %g %g", v4, *&self->whiteComponent, *&self->alphaComponent];

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

  v5 = [(UIDeviceWhiteColor *)self CGColor];

  CGContextSetFillColorWithColor(v4, v5);
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

  v5 = [(UIDeviceWhiteColor *)self CGColor];

  CGContextSetStrokeColorWithColor(v4, v5);
}

- (UIDeviceWhiteColor)initWithWhite:(double)a3 alpha:(double)a4
{
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    if (a3 == 1.0 && a4 == 1.0)
    {
      v15 = +[UIColor whiteColor];
    }

    else if (a3 == 0.0 && a4 == 1.0)
    {
      v15 = +[UIColor blackColor];
    }

    else if (a3 == 0.0 && a4 == 0.0)
    {
      v15 = +[UIColor clearColor];
    }

    else if (a3 == 0.0 && a4 == 0.5)
    {
      v15 = +[UIColor __halfTransparentBlackColor];
    }

    else
    {
      if (a3 != 1.0 || a4 != 0.5)
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
    if (a3 > 2.0 || a3 < -1.0)
    {
      UIColorBreakForOutOfRangeColorComponents();
    }

    v10 = dyld_program_sdk_at_least();
    v11 = 0.0;
    v12 = 1.0;
    if (a3 <= 1.0)
    {
      v13 = a3;
    }

    else
    {
      v13 = 1.0;
    }

    if (a3 < 0.0)
    {
      v13 = 0.0;
    }

    if (v10)
    {
      v13 = a3;
    }

    v8->whiteComponent = v13;
    if (a4 <= 1.0)
    {
      v12 = a4;
    }

    if (a4 >= 0.0)
    {
      v11 = v12;
    }

    v8->alphaComponent = v11;
  }

  return v8;
}

- (UIDeviceWhiteColor)initWithCGColor:(CGColor *)a3
{
  v8.receiver = self;
  v8.super_class = UIDeviceWhiteColor;
  v4 = [(UIDeviceWhiteColor *)&v8 init];
  if (v4)
  {
    Components = CGColorGetComponents(a3);
    v4->whiteComponent = *Components;
    v4->alphaComponent = Components[1];
    v6 = v4;
  }

  return v4;
}

- (UIDeviceWhiteColor)colorWithAlphaComponent:(double)a3
{
  v3 = 1.0;
  if (a3 <= 1.0)
  {
    v3 = a3;
  }

  if (a3 >= 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  if (v4 == self->alphaComponent)
  {
    v5 = self;
  }

  else
  {
    v5 = [[UIDeviceWhiteColor alloc] initWithWhite:self->whiteComponent alpha:v4];
  }

  return v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(UIColor *)v4 _isDynamic])
  {
    v6 = [(UIDeviceWhiteColor *)v4 colorSpaceName];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self->whiteComponent == v4->whiteComponent)
      {
        alphaComponent = self->alphaComponent;
        v8 = v4->alphaComponent;
LABEL_12:
        v5 = alphaComponent == v8;
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v9 = [(UIDeviceWhiteColor *)self colorSpaceName];
      v10 = [v6 isEqualToString:v9];

      if (v10)
      {
        v12 = 0.0;
        v13 = 0.0;
        [(UIDeviceWhiteColor *)v4 getWhite:&v13 alpha:&v12];
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

- (BOOL)getWhite:(double *)a3 alpha:(double *)a4
{
  if (a3)
  {
    *a3 = self->whiteComponent;
  }

  if (a4)
  {
    *a4 = self->alphaComponent;
  }

  return 1;
}

- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6
{
  if (a3)
  {
    *a3 = self->whiteComponent;
  }

  if (a4)
  {
    *a4 = self->whiteComponent;
  }

  if (a5)
  {
    *a5 = self->whiteComponent;
  }

  if (a6)
  {
    *a6 = self->alphaComponent;
  }

  return 1;
}

- (BOOL)getHue:(double *)a3 saturation:(double *)a4 brightness:(double *)a5 alpha:(double *)a6
{
  if (a3)
  {
    *a3 = 0.0;
  }

  if (a4)
  {
    *a4 = 0.0;
  }

  if (a5)
  {
    *a5 = self->whiteComponent;
  }

  if (a6)
  {
    *a6 = self->alphaComponent;
  }

  return 1;
}

@end