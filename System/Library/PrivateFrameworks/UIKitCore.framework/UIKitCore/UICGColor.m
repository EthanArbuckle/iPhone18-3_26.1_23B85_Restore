@interface UICGColor
- (BOOL)_isDeepColor;
- (BOOL)getHue:(double *)a3 saturation:(double *)a4 brightness:(double *)a5 alpha:(double *)a6;
- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6;
- (BOOL)getWhite:(double *)a3 alpha:(double *)a4;
- (BOOL)isEqual:(id)a3;
- (UICGColor)colorWithAlphaComponent:(double)a3;
- (UICGColor)initWithCGColor:(CGColor *)a3;
- (id)colorSpaceName;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)set;
- (void)setFill;
- (void)setStroke;
@end

@implementation UICGColor

- (void)dealloc
{
  CGColorRelease(self->_cachedColor);
  v3.receiver = self;
  v3.super_class = UICGColor;
  [(UICGColor *)&v3 dealloc];
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

  CGContextSetFillColorWithColor(v4, self->_cachedColor);
  cachedColor = self->_cachedColor;

  CGContextSetStrokeColorWithColor(v4, cachedColor);
}

- (unint64_t)hash
{
  result = self->_cachedColor;
  if (result)
  {
    return CFHash(result);
  }

  return result;
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

  cachedColor = self->_cachedColor;

  CGContextSetFillColorWithColor(v4, cachedColor);
}

- (id)colorSpaceName
{
  ColorSpace = CGColorGetColorSpace(self->_cachedColor);
  v4 = CGColorSpaceGetModel(ColorSpace) + 1;
  if (v4 >= 8)
  {
    v7.receiver = self;
    v7.super_class = UICGColor;
    v5 = [(UIColor *)&v7 colorSpaceName];
  }

  else
  {
    v5 = off_1E710BD60[v4];
  }

  return v5;
}

- (UICGColor)initWithCGColor:(CGColor *)a3
{
  v3 = self;
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = UICGColor;
    v3 = [(UICGColor *)&v6 init];
    if (v3)
    {
      v3->_cachedColor = CGColorRetain(a3);
    }
  }

  return v3;
}

- (UICGColor)colorWithAlphaComponent:(double)a3
{
  CopyWithAlpha = CGColorCreateCopyWithAlpha(self->_cachedColor, a3);
  v4 = [UIColor colorWithCGColor:CopyWithAlpha];
  CGColorRelease(CopyWithAlpha);

  return v4;
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

  cachedColor = self->_cachedColor;

  CGContextSetStrokeColorWithColor(v4, cachedColor);
}

- (id)description
{
  v3 = [(UICGColor *)self colorSpaceName];
  v4 = [v3 mutableCopy];

  NumberOfComponents = CGColorGetNumberOfComponents(self->_cachedColor);
  Components = CGColorGetComponents(self->_cachedColor);
  if (NumberOfComponents)
  {
    v7 = Components;
    do
    {
      v8 = *v7++;
      [v4 appendFormat:@" %g", v8];
      --NumberOfComponents;
    }

    while (NumberOfComponents);
  }

  CGColorGetContentHeadroom();
  if (v9 >= 1.0)
  {
    if (v9 > 1.0)
    {
      [v4 appendFormat:@" contentHeadroom=%g", v9];
    }
  }

  else
  {
    [v4 appendString:@" contentHeadroom=undefined"];
  }

  return v4;
}

- (BOOL)_isDeepColor
{
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  if ([(UICGColor *)self getRed:&v11 green:&v10 blue:&v9 alpha:0])
  {
    v3 = 1.0;
    if (v11 <= 1.0)
    {
      v4 = v11;
    }

    else
    {
      v4 = 1.0;
    }

    if (v11 < 0.0)
    {
      v4 = 0.0;
    }

    if (v11 != v4)
    {
      goto LABEL_13;
    }

    if (v10 <= 1.0)
    {
      v3 = v10;
    }

    if (v10 < 0.0)
    {
      v3 = 0.0;
    }

    if (v10 != v3)
    {
LABEL_13:
      LOBYTE(v5) = 1;
      return v5;
    }

    v6 = v9;
  }

  else
  {
    v5 = [(UICGColor *)self getWhite:&v12 alpha:0];
    if (!v5)
    {
      return v5;
    }

    v6 = v12;
  }

  v7 = 1.0;
  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  if (v6 < 0.0)
  {
    v7 = 0.0;
  }

  LOBYTE(v5) = v6 != v7;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![(UIColor *)v4 _isDynamic])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      cachedColor = self->_cachedColor;
      if (isKindOfClass)
      {
        v8 = v4->_cachedColor;
      }

      else
      {
        v8 = [(UICGColor *)v4 CGColor];
      }

      v5 = CGColorEqualToColor(cachedColor, v8);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)getWhite:(double *)a3 alpha:(double *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  cachedColor = self->_cachedColor;
  if (!cachedColor)
  {
    return 0;
  }

  Components = CGColorGetComponents(self->_cachedColor);
  Alpha = CGColorGetAlpha(cachedColor);
  ColorSpace = CGColorGetColorSpace(cachedColor);
  if (!Components)
  {
    return 0;
  }

  v10 = ColorSpace;
  v13 = 0;
  v14 = 0.0;
  if (qword_1ED49BEC0 != -1)
  {
    dispatch_once(&qword_1ED49BEC0, &__block_literal_global_2243);
  }

  if (qword_1ED49BEB8 == v10)
  {
    goto LABEL_11;
  }

  if (qword_1ED49BEE0 != -1)
  {
    dispatch_once(&qword_1ED49BEE0, &__block_literal_global_2247);
  }

  if (qword_1ED49BED8 == v10)
  {
    goto LABEL_11;
  }

  UISCreateCachedColorTransform();
  if (!CGColorTransformConvertColorComponents())
  {
    CGColorTransformRelease();
    return 0;
  }

  v14 = Alpha;
  CGColorTransformRelease();
  Components = &v13;
LABEL_11:
  v11 = *(Components + 1);
  if (a3)
  {
    *a3 = *Components;
  }

  if (a4)
  {
    *a4 = v11;
  }

  return 1;
}

- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6
{
  v21 = *MEMORY[0x1E69E9840];
  cachedColor = self->_cachedColor;
  if (!cachedColor)
  {
    return 0;
  }

  Components = CGColorGetComponents(self->_cachedColor);
  Alpha = CGColorGetAlpha(cachedColor);
  ColorSpace = CGColorGetColorSpace(cachedColor);
  if (!Components)
  {
    return 0;
  }

  v14 = ColorSpace;
  v19 = 0u;
  v20 = 0u;
  if (qword_1ED49BED0 != -1)
  {
    dispatch_once(&qword_1ED49BED0, &__block_literal_global_2245);
  }

  if (qword_1ED49BEC8 == v14)
  {
    goto LABEL_11;
  }

  if (qword_1ED49BF00 != -1)
  {
    dispatch_once(&qword_1ED49BF00, &__block_literal_global_2251);
  }

  if (qword_1ED49BEF8 == v14)
  {
    goto LABEL_11;
  }

  UISCreateCachedColorTransform();
  if (!CGColorTransformConvertColorComponents())
  {
    CGColorTransformRelease();
    return 0;
  }

  *(&v20 + 1) = Alpha;
  CGColorTransformRelease();
  Components = &v19;
LABEL_11:
  v16 = *(Components + 1);
  v15 = *(Components + 2);
  v17 = *(Components + 3);
  if (a3)
  {
    *a3 = *Components;
  }

  if (a4)
  {
    *a4 = v16;
  }

  if (a5)
  {
    *a5 = v15;
  }

  if (a6)
  {
    *a6 = v17;
  }

  return 1;
}

- (BOOL)getHue:(double *)a3 saturation:(double *)a4 brightness:(double *)a5 alpha:(double *)a6
{
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0.0;
  v10 = [(UICGColor *)self getRed:&v20 green:&v19 blue:&v18 alpha:&v17];
  if (v10)
  {
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v12.i64[0] = v19;
    v11.i64[0] = v20;
    _NXRGBToHSB(&v16, &v15, &v14, v11, v12, v18);
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
      *a6 = v17;
    }
  }

  return v10;
}

@end