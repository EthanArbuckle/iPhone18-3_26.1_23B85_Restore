@interface UIDeviceRGBColor
- (BOOL)_isDeepColor;
- (BOOL)getHue:(double *)a3 saturation:(double *)a4 brightness:(double *)a5 alpha:(double *)a6;
- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6;
- (BOOL)getWhite:(double *)a3 alpha:(double *)a4;
- (BOOL)isEqual:(id)a3;
- (CGColor)CGColor;
- (UIDeviceRGBColor)colorWithAlphaComponent:(double)a3;
- (UIDeviceRGBColor)initWithCGColor:(CGColor *)a3;
- (UIDeviceRGBColor)initWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6;
- (UIDeviceRGBColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
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

  v5 = [(UIDeviceRGBColor *)self CGColor];
  CGContextSetFillColorWithColor(v4, v5);

  CGContextSetStrokeColorWithColor(v4, v5);
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

  v5 = [(UIDeviceRGBColor *)self CGColor];

  CGContextSetFillColorWithColor(v4, v5);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UIDeviceRGBColor *)self colorSpaceName];
  v5 = [v3 stringWithFormat:@"%@ %g %g %g %g", v4, *&self->redComponent, *&self->greenComponent, *&self->blueComponent, *&self->alphaComponent];

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

  v5 = [(UIDeviceRGBColor *)self CGColor];

  CGContextSetStrokeColorWithColor(v4, v5);
}

- (UIDeviceRGBColor)initWithHue:(double)a3 saturation:(double)a4 brightness:(double)a5 alpha:(double)a6
{
  if (dyld_program_sdk_at_least())
  {
    *v11.i64 = a3;
  }

  else
  {
    v11.i64[0] = 0;
    if (a3 >= 0.0)
    {
      v11.i64[0] = 1.0;
      if (a3 <= 1.0)
      {
        *v11.i64 = a3;
      }
    }
  }

  v31 = v11;
  v12 = dyld_program_sdk_at_least();
  v13 = 0.0;
  if (a4 <= 1.0)
  {
    v14 = a4;
  }

  else
  {
    v14 = 1.0;
  }

  if (a4 < 0.0)
  {
    v14 = 0.0;
  }

  if ((v12 & 1) == 0)
  {
    a4 = v14;
  }

  v15 = dyld_program_sdk_at_least();
  *v18.i64 = *v31.i64 - trunc(*v31.i64);
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  *&v20 = vbslq_s8(vnegq_f64(v19), v18, v31).u64[0];
  if (a5 <= 1.0)
  {
    v21 = a5;
  }

  else
  {
    v21 = 1.0;
  }

  if (a5 < 0.0)
  {
    v21 = 0.0;
  }

  v22 = v20 * 6.0;
  v23 = (v20 * 6.0);
  if (v15)
  {
    v24 = a5;
  }

  else
  {
    v24 = v21;
  }

  v25 = v22 - v23;
  v26 = (1.0 - v25 * a4) * v24;
  v27 = (1.0 - (1.0 - v25) * a4) * v24;
  if (v23 > 2)
  {
    if (v23 == 3)
    {
      v16 = (1.0 - a4) * v24;
      v17 = (1.0 - v25 * a4) * v24;
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

        v16 = v24;
        v17 = (1.0 - a4) * v24;
        v27 = v26;
        goto LABEL_36;
      }

      v16 = (1.0 - (1.0 - v25) * a4) * v24;
      v17 = (1.0 - a4) * v24;
    }

    v27 = v24;
LABEL_36:
    v13 = v16;
    v28 = v17;
    v29 = v27;
    goto LABEL_37;
  }

  if (!v23)
  {
    v16 = v24;
    v17 = (1.0 - (1.0 - v25) * a4) * v24;
LABEL_33:
    v27 = (1.0 - a4) * v24;
    goto LABEL_36;
  }

  if (v23 == 1)
  {
    v16 = (1.0 - v25 * a4) * v24;
    v17 = v24;
    goto LABEL_33;
  }

  v16 = (1.0 - a4) * v24;
  v17 = v24;
  v28 = 0.0;
  v29 = 0.0;
  if (v23 == 2)
  {
    goto LABEL_36;
  }

LABEL_37:

  return [(UIDeviceRGBColor *)self initWithRed:v13 green:v28 blue:v29 alpha:a6, v27, v26, v16, v17];
}

- (UIDeviceRGBColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v25.receiver = self;
  v25.super_class = UIDeviceRGBColor;
  v10 = [(UIDeviceRGBColor *)&v25 init];
  if (v10)
  {
    if (a5 < -1.0 || a5 > 2.0 || a4 < -1.0 || a3 > 2.0 || a3 < -1.0 || a4 > 2.0)
    {
      UIColorBreakForOutOfRangeColorComponents();
    }

    v16 = dyld_program_sdk_at_least();
    if (a3 <= 1.0)
    {
      v17 = a3;
    }

    else
    {
      v17 = 1.0;
    }

    if (a3 < 0.0)
    {
      v17 = 0.0;
    }

    if (v16)
    {
      v17 = a3;
    }

    v10->redComponent = v17;
    v18 = dyld_program_sdk_at_least();
    if (a4 <= 1.0)
    {
      v19 = a4;
    }

    else
    {
      v19 = 1.0;
    }

    if (a4 < 0.0)
    {
      v19 = 0.0;
    }

    if (v18)
    {
      v19 = a4;
    }

    v10->greenComponent = v19;
    v20 = dyld_program_sdk_at_least();
    if (a5 <= 1.0)
    {
      v21 = a5;
    }

    else
    {
      v21 = 1.0;
    }

    if (a5 < 0.0)
    {
      v21 = 0.0;
    }

    if (v20)
    {
      v21 = a5;
    }

    v10->blueComponent = v21;
    if (a6 <= 1.0)
    {
      v22 = a6;
    }

    else
    {
      v22 = 1.0;
    }

    if (a6 < 0.0)
    {
      v22 = 0.0;
    }

    v10->alphaComponent = v22;
    v23 = v10;
  }

  return v10;
}

- (UIDeviceRGBColor)initWithCGColor:(CGColor *)a3
{
  v8.receiver = self;
  v8.super_class = UIDeviceRGBColor;
  v4 = [(UIDeviceRGBColor *)&v8 init];
  if (v4)
  {
    Components = CGColorGetComponents(a3);
    v4->redComponent = *Components;
    v4->greenComponent = Components[1];
    v4->blueComponent = Components[2];
    v4->alphaComponent = Components[3];
    v6 = v4;
  }

  return v4;
}

- (UIDeviceRGBColor)colorWithAlphaComponent:(double)a3
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
    v5 = [[UIDeviceRGBColor alloc] initWithRed:self->redComponent green:self->greenComponent blue:self->blueComponent alpha:v4];
  }

  return v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(UIColor *)v4 _isDynamic])
  {
    v6 = [(UIDeviceRGBColor *)v4 colorSpaceName];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self->redComponent == v4->redComponent && self->greenComponent == v4->greenComponent && self->blueComponent == v4->blueComponent)
      {
        alphaComponent = self->alphaComponent;
        v8 = v4->alphaComponent;
LABEL_17:
        v5 = alphaComponent == v8;
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v9 = [(UIDeviceRGBColor *)self colorSpaceName];
      v10 = [v6 isEqualToString:v9];

      if (v10 || [v6 isEqualToString:@"UIDisplayP3ColorSpace"])
      {
        v14 = 0.0;
        v15 = 0.0;
        v12 = 0.0;
        v13 = 0.0;
        [(UIDeviceRGBColor *)v4 getRed:&v15 green:&v14 blue:&v13 alpha:&v12];
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

- (BOOL)getHue:(double *)a3 saturation:(double *)a4 brightness:(double *)a5 alpha:(double *)a6
{
  v15 = 0;
  v16 = 0;
  v6.i64[0] = *&self->redComponent;
  v14 = 0;
  v7.i64[0] = *&self->greenComponent;
  _NXRGBToHSB(&v16, &v15, &v14, v6, v7, self->blueComponent);
  if (a3)
  {
    *a3 = v16;
  }

  if (a4)
  {
    *a4 = v15;
  }

  if (a5)
  {
    *a5 = v14;
  }

  if (a6)
  {
    *a6 = self->alphaComponent;
  }

  return 1;
}

- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6
{
  if (a3)
  {
    *a3 = self->redComponent;
  }

  if (a4)
  {
    *a4 = self->greenComponent;
  }

  if (a5)
  {
    *a5 = self->blueComponent;
  }

  if (a6)
  {
    *a6 = self->alphaComponent;
  }

  return 1;
}

- (BOOL)getWhite:(double *)a3 alpha:(double *)a4
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
    if (!a3)
    {
      goto LABEL_14;
    }

LABEL_13:
    *a3 = *v10;
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
  if (a3)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (a4)
  {
    *a4 = v10[1];
  }

  return 1;
}

@end