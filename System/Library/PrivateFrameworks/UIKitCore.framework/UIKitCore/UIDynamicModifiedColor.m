@interface UIDynamicModifiedColor
- (BOOL)isEqual:(id)a3;
- (UIDynamicModifiedColor)colorWithAlphaComponent:(double)a3;
- (UIDynamicModifiedColor)colorWithProminence:(int64_t)a3;
- (id)_highContrastDynamicColor;
- (id)_resolvedColorWithTraitCollection:(id)a3;
- (id)_resolvedMaterialWithTraitCollection:(id)a3;
- (id)description;
- (id)initWithBaseColor:(void *)a3 alphaComponent:(double)a4 contrast:;
- (id)initWithBaseColor:(void *)a3 alphaComponent:(void *)a4 contrast:(double)a5 prominence:;
- (int64_t)prominence;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIDynamicModifiedColor

- (id)initWithBaseColor:(void *)a3 alphaComponent:(void *)a4 contrast:(double)a5 prominence:
{
  v10 = a2;
  v11 = v10;
  if (a1)
  {
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:sel_initWithBaseColor_alphaComponent_contrast_prominence_ object:a1 file:@"UIColor.m" lineNumber:4168 description:{@"Invalid baseColor: %@", v11}];
    }

    v15.receiver = a1;
    v15.super_class = UIDynamicModifiedColor;
    v12 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 3, a2);
      *(a1 + 4) = a5;
      a1[5] = a3;
      a1[6] = a4;
    }
  }

  return a1;
}

- (id)initWithBaseColor:(void *)a3 alphaComponent:(double)a4 contrast:
{
  v8 = a2;
  v9 = v8;
  if (a1)
  {
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:sel_initWithBaseColor_alphaComponent_contrast_ object:a1 file:@"UIColor.m" lineNumber:4182 description:{@"Invalid baseColor: %@", v9}];
    }

    v13.receiver = a1;
    v13.super_class = UIDynamicModifiedColor;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 3, a2);
      *(a1 + 4) = a4;
      a1[5] = a3;
      a1[6] = -1;
    }
  }

  return a1;
}

- (void)encodeWithCoder:(id)a3
{
  baseColor = self->_baseColor;
  v5 = a3;
  [v5 encodeObject:baseColor forKey:@"UIDynamicModifiedBaseColor"];
  [v5 encodeDouble:@"UIDynamicModifiedAlphaComponent" forKey:self->_alphaComponent];
  [v5 encodeInteger:self->_contrast forKey:@"UIDynamicModifiedContrast"];
  [v5 encodeInteger:self->_prominence forKey:@"UIDynamicModifiedProminence"];
  v6.receiver = self;
  v6.super_class = UIDynamicModifiedColor;
  [(UIColor *)&v6 encodeWithCoder:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (v5->_alphaComponent == self->_alphaComponent && v5->_contrast == self->_contrast && v5->_prominence == self->_prominence)
      {
        v7 = [(UIColor *)v5->_baseColor isEqual:self->_baseColor];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_resolvedColorWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = v4;
  contrast = self->_contrast;
  baseColor = self->_baseColor;
  if (contrast)
  {
    if (contrast != 1)
    {
      v13 = [(UIDynamicColor *)self->_baseColor _resolvedColorWithTraitCollection:v4];
      goto LABEL_18;
    }

    v8 = v4;
    v9 = baseColor;
    v25 = MEMORY[0x1E69E9820];
    v26 = ___UIResolvedDynamicColorWithHighContrast_block_invoke;
    v27 = &unk_1E710BD40;
    v28 = v8;
    v10 = v9;
    v29 = v10;
    v11 = [v8 accessibilityContrast];
    v12 = [(UIDynamicColor *)v10 _resolvedColorWithTraitCollection:v8];
    if (v11 == 1)
    {
      v26(&v25, 0);
      v12 = v13 = v12;
    }

    else
    {
      v13 = v26(&v25, 1);
    }

    if ([v13 isEqual:v12])
    {
      if ([v8 userInterfaceStyle] == 2)
      {
        [UIColor _accessibilityLightenedColorForColor:v12];
      }

      else
      {
        [UIColor _accessibilityDarkenedColorForColor:v12];
      }
      v17 = ;

      v13 = v17;
    }
  }

  else
  {
    v10 = v4;
    v14 = baseColor;
    if ([(UIDynamicColor *)v10 accessibilityContrast]== 1)
    {
      v15 = [(UIDynamicColor *)v10 _traitCollectionByReplacingNSIntegerValue:0 forTraitToken:0x1EFE32470];
    }

    else
    {
      v15 = v10;
    }

    v16 = v15;
    v13 = [(UIDynamicColor *)v14 _resolvedColorWithTraitCollection:v15];
  }

LABEL_18:
  if (self->_alphaComponent != 1.79769313e308)
  {
    v18 = [v13 colorWithAlphaComponent:?];

    v13 = v18;
  }

  if ([v5 _vibrancy] != 2)
  {
    prominence = self->_prominence;
    if (prominence >= 1)
    {
      v20 = 0.180000007;
      if (prominence == 2)
      {
        v20 = 0.25;
      }

      if (prominence == 1)
      {
        v21 = 0.5;
      }

      else
      {
        v21 = v20;
      }

      [v13 alphaComponent];
      v23 = [v13 colorWithAlphaComponent:v21 * v22];

      v13 = v23;
    }
  }

  return v13;
}

- (id)_resolvedMaterialWithTraitCollection:(id)a3
{
  v4 = a3;
  if (self->_alphaComponent == 1.79769313e308 && self->_contrast == -1)
  {
    v5 = [(UIColor *)self->_baseColor _resolvedMaterialWithTraitCollection:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIDynamicModifiedColor)colorWithAlphaComponent:(double)a3
{
  if (self->_alphaComponent == a3)
  {
    v3 = self;
  }

  else
  {
    v3 = [[UIDynamicModifiedColor alloc] initWithBaseColor:self->_contrast alphaComponent:self->_prominence contrast:a3 prominence:?];
  }

  return v3;
}

- (id)_highContrastDynamicColor
{
  if (self->_contrast == 1)
  {
    v2 = self;
  }

  else
  {
    v2 = [[UIDynamicModifiedColor alloc] initWithBaseColor:1 alphaComponent:self->_prominence contrast:self->_alphaComponent prominence:?];
  }

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = v3;
  contrast = self->_contrast;
  if (contrast == 1)
  {
    v6 = @"contrast = high, ";
  }

  else
  {
    if (contrast)
    {
      goto LABEL_6;
    }

    v6 = @"contrast = normal, ";
  }

  [v3 appendString:v6];
LABEL_6:
  if (self->_alphaComponent != 1.79769313e308)
  {
    [v4 appendFormat:@"alpha = %g, ", *&self->_alphaComponent];
  }

  prominence = self->_prominence;
  if (prominence <= 3)
  {
    [v4 appendString:off_1E710BDA0[prominence]];
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"<%@: %p %@baseColor = %@>", v10, self, v4, self->_baseColor];;

  return v11;
}

- (UIDynamicModifiedColor)colorWithProminence:(int64_t)a3
{
  if ([(UIDynamicModifiedColor *)self prominence]== a3)
  {
    v5 = self;
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[UIDynamicModifiedColor alloc] initWithBaseColor:self->_contrast alphaComponent:a3 contrast:self->_alphaComponent prominence:?];
    goto LABEL_5;
  }

  v7 = [(UIDynamicColor *)self->_baseColor colorWithProminence:a3];
  v8 = [v7 colorWithAlphaComponent:self->_alphaComponent];
  v6 = v8;
  if (v8)
  {
    v9 = v8;
  }

LABEL_9:

  return v6;
}

- (int64_t)prominence
{
  if (self->_prominence == -1)
  {
    return [(UIDynamicColor *)self->_baseColor prominence];
  }

  else
  {
    return self->_prominence;
  }
}

@end