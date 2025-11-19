@interface UIDisplayP3Color
- (BOOL)_isDeepColor;
- (BOOL)getHue:(double *)a3 saturation:(double *)a4 brightness:(double *)a5 alpha:(double *)a6;
- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6;
- (BOOL)getWhite:(double *)a3 alpha:(double *)a4;
- (BOOL)isEqual:(id)a3;
- (CGColor)CGColor;
- (UIDisplayP3Color)colorWithAlphaComponent:(double)a3;
- (UIDisplayP3Color)initWithDisplayP3Red:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (id)description;
- (void)dealloc;
- (void)set;
- (void)setFill;
- (void)setStroke;
@end

@implementation UIDisplayP3Color

- (UIDisplayP3Color)initWithDisplayP3Red:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v18.receiver = self;
  v18.super_class = UIDisplayP3Color;
  v10 = [(UIDisplayP3Color *)&v18 init];
  if (v10)
  {
    v11 = a5 >= 0.0 && a5 <= 1.0;
    if (!v11 || a4 < 0.0 || a3 > 1.0 || a3 < 0.0 || a4 > 1.0)
    {
      UIColorBreakForOutOfRangeColorComponents();
    }

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

    v10->redComponent = v13;
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

    v10->greenComponent = v14;
    if (a5 <= 1.0)
    {
      v15 = a5;
    }

    else
    {
      v15 = 1.0;
    }

    if (a5 < 0.0)
    {
      v15 = 0.0;
    }

    v10->blueComponent = v15;
    if (a6 <= 1.0)
    {
      v12 = a6;
    }

    if (a6 < 0.0)
    {
      v12 = 0.0;
    }

    v10->alphaComponent = v12;
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

- (UIDisplayP3Color)colorWithAlphaComponent:(double)a3
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
    v5 = [[UIDisplayP3Color alloc] initWithDisplayP3Red:self->redComponent green:self->greenComponent blue:self->blueComponent alpha:v4];
  }

  return v5;
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

  v5 = [(UIDisplayP3Color *)self CGColor];
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

  v5 = [(UIDisplayP3Color *)self CGColor];

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

  v5 = [(UIDisplayP3Color *)self CGColor];

  CGContextSetStrokeColorWithColor(v4, v5);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UIDisplayP3Color *)self colorSpaceName];
  v5 = [v3 stringWithFormat:@"%@ %g %g %g %g", v4, *&self->redComponent, *&self->greenComponent, *&self->blueComponent, *&self->alphaComponent];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(UIColor *)v4 _isDynamic])
  {
    v6 = [(UIDisplayP3Color *)v4 colorSpaceName];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self->redComponent == v4->redComponent && self->greenComponent == v4->greenComponent && self->blueComponent == v4->blueComponent)
      {
        alphaComponent = self->alphaComponent;
LABEL_18:
        v5 = alphaComponent == v4->alphaComponent;
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v8 = [(UIDisplayP3Color *)self colorSpaceName];
      v9 = [v6 isEqualToString:v8];

      if (v9 || ([v6 isEqualToString:@"UIExtendedSRGBColorSpace"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"UIDeviceRGBColorSpace"))
      {
        v13 = 0.0;
        v14 = 0.0;
        v11 = 0.0;
        v12 = 0.0;
        [(UIDisplayP3Color *)self getRed:&v14 green:&v13 blue:&v12 alpha:&v11];
        if (v14 == v4->redComponent && v13 == v4->greenComponent && v12 == v4->blueComponent)
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

- (BOOL)getHue:(double *)a3 saturation:(double *)a4 brightness:(double *)a5 alpha:(double *)a6
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
    if (!a3)
    {
      goto LABEL_14;
    }

LABEL_13:
    *a3 = *v14;
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
  if (a3)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (a4)
  {
    *a4 = v14[1];
  }

  if (a5)
  {
    *a5 = v14[2];
  }

  if (a6)
  {
    *a6 = v14[3];
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