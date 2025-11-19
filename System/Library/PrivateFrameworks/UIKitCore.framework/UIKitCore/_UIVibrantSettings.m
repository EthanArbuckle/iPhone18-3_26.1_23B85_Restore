@interface _UIVibrantSettings
+ (_UIVibrantSettings)vibrantSettingsWithReferenceColor:(id)a3 referenceContrast:(double)a4 legibilitySettings:(id)a5;
- (BOOL)isEqual:(id)a3;
- (UIColor)chevronShimmerColor;
- (UIColor)highlightColor;
- (UIColor)highlightLimitingColor;
- (UIColor)shimmerColor;
- (UIColor)tintColor;
- (_UIVibrantSettings)initWithReferenceColor:(id)a3 referenceContrast:(double)a4 legibilitySettings:(id)a5;
- (id)_computeSourceColorDodgeColorForDestinationColor:(id)a3 producingLuminanceChange:(double)a4;
- (id)highlightLimitingViewWithFrame:(CGRect)a3;
- (id)tintViewWithFrame:(CGRect)a3;
- (int64_t)_style;
@end

@implementation _UIVibrantSettings

+ (_UIVibrantSettings)vibrantSettingsWithReferenceColor:(id)a3 referenceContrast:(double)a4 legibilitySettings:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithReferenceColor:v9 referenceContrast:v8 legibilitySettings:a4];

  return v10;
}

- (_UIVibrantSettings)initWithReferenceColor:(id)a3 referenceContrast:(double)a4 legibilitySettings:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = _UIVibrantSettings;
  v10 = [(_UIVibrantSettings *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    referenceColor = v10->_referenceColor;
    v10->_referenceColor = v11;

    v10->_referenceContrast = a4;
    objc_storeStrong(&v10->_legibilitySettings, a5);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      referenceColor = self->_referenceColor;
      if (referenceColor | v4->_referenceColor)
      {
        v6 = [(UIColor *)referenceColor isEqual:?];
      }

      else
      {
        v6 = 1;
      }

      v8 = vabdd_f64(self->_referenceContrast, v4->_referenceContrast);
      legibilitySettings = self->_legibilitySettings;
      if (legibilitySettings | v4->_legibilitySettings)
      {
        v10 = [(_UILegibilitySettings *)legibilitySettings isEqual:?];
      }

      else
      {
        v10 = 1;
      }

      if (v8 < 0.00000011920929)
      {
        v11 = v6;
      }

      else
      {
        v11 = 0;
      }

      v7 = v11 & v10;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)_style
{
  if (!self->_style)
  {
    self->_style = -1;
    if (self->_referenceColor)
    {
      if (!_AXSEnhanceBackgroundContrastEnabled())
      {
        referenceColor = self->_referenceColor;
        v12 = 0;
        v13 = 0;
        v11 = 0;
        v5 = referenceColor;
        if (CGColorGetNumberOfComponents([(UIColor *)v5 CGColor]) == 2)
        {
          v14 = 0;
          [(UIColor *)v5 getWhite:&v14 alpha:0];

          v11 = v14;
          v12 = v14;
          v13 = v14;
        }

        else
        {
          [(UIColor *)v5 getRed:&v13 green:&v12 blue:&v11 alpha:0];
        }

        v14 = 0;
        v9 = 0;
        v10 = 0;
        _UIGetHSBValuesForColor(self->_referenceColor, &v14, &v10, &v9);
        legibilitySettings = self->_legibilitySettings;
        if (!legibilitySettings || [(_UILegibilitySettings *)legibilitySettings style]== 1)
        {
          v7 = 1;
LABEL_11:
          self->_style = v7;
          return self->_style;
        }

        v8 = self->_legibilitySettings;
        if (v8 && [(_UILegibilitySettings *)v8 style]== 2)
        {
          v7 = 2;
          goto LABEL_11;
        }
      }
    }
  }

  return self->_style;
}

- (UIColor)tintColor
{
  tintColor = self->_tintColor;
  if (!tintColor)
  {
    v4 = [(_UIVibrantSettings *)self _style];
    if (v4 == -1)
    {
      legibilitySettings = self->_legibilitySettings;
      if (legibilitySettings && [(_UILegibilitySettings *)legibilitySettings style]== 2)
      {
        v11 = 0.0;
        v12 = 0.5;
      }

      else
      {
        v12 = 0.3;
        v11 = 1.0;
      }

      v13 = [UIColor colorWithWhite:v11 alpha:v12];
      v7 = self->_tintColor;
      self->_tintColor = v13;
    }

    else
    {
      if (v4 == 2)
      {
        v9 = self->_legibilitySettings;
        if (v9)
        {
          [(_UILegibilitySettings *)v9 primaryColor];
        }

        else
        {
          +[UIColor blackColor];
        }
        v7 = ;
        v8 = [v7 colorWithAlphaComponent:0.7];
      }

      else
      {
        if (v4 != 1)
        {
LABEL_17:
          tintColor = self->_tintColor;
          goto LABEL_18;
        }

        referenceColor = self->_referenceColor;
        v6 = [UIColor colorWithWhite:1.0 alpha:0.2];
        v7 = [(UIColor *)referenceColor _colorBlendedWithColor:v6];

        v8 = [(_UIVibrantSettings *)self _computeSourceColorDodgeColorForDestinationColor:v7 producingLuminanceChange:fmin(self->_referenceContrast * self->_referenceContrast * 3.0 + 0.05, 0.35)];
      }

      v14 = self->_tintColor;
      self->_tintColor = v8;
    }

    goto LABEL_17;
  }

LABEL_18:
  v15 = tintColor;

  return v15;
}

- (UIColor)highlightLimitingColor
{
  highlightLimitingColor = self->_highlightLimitingColor;
  if (!highlightLimitingColor)
  {
    if (([(_UIVibrantSettings *)self _style]- 1) <= 1)
    {
      v4 = [UIColor colorWithWhite:0.87 alpha:1.0];
      v5 = self->_highlightLimitingColor;
      self->_highlightLimitingColor = v4;
    }

    highlightLimitingColor = self->_highlightLimitingColor;
  }

  v6 = highlightLimitingColor;

  return v6;
}

- (UIColor)shimmerColor
{
  shimmerColor = self->_shimmerColor;
  if (!shimmerColor)
  {
    if ([(_UIVibrantSettings *)self _style]== 1)
    {
      referenceColor = self->_referenceColor;
      v5 = [UIColor colorWithWhite:1.0 alpha:0.2];
      v6 = [(UIColor *)referenceColor _colorBlendedWithColor:v5];

      v7 = [(_UIVibrantSettings *)self tintColor];
      v8 = [v6 _colorBlendedWithColor:v7 compositingFilter:*MEMORY[0x1E6979860]];
      [v8 _luminance];
      v10 = [(_UIVibrantSettings *)self _computeSourceColorDodgeColorForDestinationColor:v8 producingLuminanceChange:fmax(0.98 - v9, 0.2)];
      v11 = self->_shimmerColor;
      self->_shimmerColor = v10;
    }

    shimmerColor = self->_shimmerColor;
  }

  v12 = shimmerColor;

  return v12;
}

- (UIColor)chevronShimmerColor
{
  chevronShimmerColor = self->_chevronShimmerColor;
  if (!chevronShimmerColor)
  {
    v4 = [(_UIVibrantSettings *)self _style];
    if (v4 == 2)
    {
      v11 = [UIColor colorWithWhite:0.6 alpha:1.0];
      v7 = self->_chevronShimmerColor;
      self->_chevronShimmerColor = v11;
    }

    else
    {
      if (v4 != 1)
      {
LABEL_7:
        chevronShimmerColor = self->_chevronShimmerColor;
        goto LABEL_8;
      }

      referenceColor = self->_referenceColor;
      v6 = [UIColor colorWithWhite:1.0 alpha:0.2];
      v7 = [(UIColor *)referenceColor _colorBlendedWithColor:v6];

      [v7 _luminance];
      v9 = [(_UIVibrantSettings *)self _computeSourceColorDodgeColorForDestinationColor:v7 producingLuminanceChange:fmax(0.95 - v8, 0.2)];
      v10 = self->_chevronShimmerColor;
      self->_chevronShimmerColor = v9;
    }

    goto LABEL_7;
  }

LABEL_8:
  v12 = chevronShimmerColor;

  return v12;
}

- (UIColor)highlightColor
{
  highlightColor = self->_highlightColor;
  if (!highlightColor)
  {
    v4 = [(_UIVibrantSettings *)self _style];
    if (v4 == 2)
    {
      legibilitySettings = self->_legibilitySettings;
      if (legibilitySettings)
      {
        [(_UILegibilitySettings *)legibilitySettings primaryColor];
      }

      else
      {
        +[UIColor blackColor];
      }
      v7 = ;
      v14 = [v7 colorWithAlphaComponent:0.7];
      v8 = self->_highlightColor;
      self->_highlightColor = v14;
    }

    else
    {
      if (v4 != 1)
      {
LABEL_10:
        highlightColor = self->_highlightColor;
        goto LABEL_11;
      }

      referenceColor = self->_referenceColor;
      v6 = [UIColor colorWithWhite:1.0 alpha:0.2];
      v7 = [(UIColor *)referenceColor _colorBlendedWithColor:v6];

      v8 = [(_UIVibrantSettings *)self tintColor];
      v9 = [v7 _colorBlendedWithColor:v8 compositingFilter:*MEMORY[0x1E6979860]];
      [v9 _luminance];
      v11 = [(_UIVibrantSettings *)self _computeSourceColorDodgeColorForDestinationColor:v9 producingLuminanceChange:fmax(0.98 - v10, 0.2) * 0.75];
      v12 = self->_highlightColor;
      self->_highlightColor = v11;
    }

    goto LABEL_10;
  }

LABEL_11:
  v15 = highlightColor;

  return v15;
}

- (id)_computeSourceColorDodgeColorForDestinationColor:(id)a3 producingLuminanceChange:(double)a4
{
  v5 = a3;
  [v5 _luminance];
  v28 = 0.0;
  v29 = 0.0;
  v18 = fmin(v6 + a4, 1.0);
  v27 = 0.0;
  [v5 getRed:&v29 green:&v28 blue:&v27 alpha:0];
  v25 = 0.0;
  v26 = 0.0;
  v24 = 0;
  _UIGetHSBValuesForColor(v5, &v26, &v25, &v24);
  v25 = v25 * 0.15;
  v7 = [UIColor colorWithHue:"colorWithHue:saturation:brightness:alpha:" saturation:v26 brightness:? alpha:?];
  v22 = 0.0;
  v23 = 0.0;
  v21 = 0.0;
  [v7 getRed:&v23 green:&v22 blue:&v21 alpha:0];
  v19 = v22 + a4;
  v20 = v23 + a4;
  v8 = v21 + a4;
  v9 = 0.0;
  do
  {
    v10 = v9 + 1.0 - v23 / v20;
    v11 = v9 + 1.0 - v22 / v19;
    v12 = v9 + 1.0 - v21 / v8;
    v13 = [UIColor colorWithRed:v29 / (1.0 - v10) green:v28 / (1.0 - v11) blue:v27 / (1.0 - v12) alpha:1.0];
    [v13 _luminance];
    v15 = v14;

    v9 = v9 + 0.01;
  }

  while (v9 < 1.0 && v15 < v18);
  v16 = [UIColor colorWithRed:v10 green:v11 blue:v12 alpha:1.0];

  return v16;
}

- (id)tintViewWithFrame:(CGRect)a3
{
  v4 = [[UIView alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [(_UIVibrantSettings *)self tintColor];
  [(UIView *)v4 setBackgroundColor:v5];

  if ([(_UIVibrantSettings *)self _style]== 1)
  {
    v6 = [(UIView *)v4 layer];
    [v6 setCompositingFilter:*MEMORY[0x1E6979860]];
  }

  return v4;
}

- (id)highlightLimitingViewWithFrame:(CGRect)a3
{
  v4 = [[UIView alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [(_UIVibrantSettings *)self highlightLimitingColor];
  [(UIView *)v4 setBackgroundColor:v5];

  v6 = [(UIView *)v4 layer];
  [v6 setCompositingFilter:*MEMORY[0x1E69798C0]];

  return v4;
}

@end