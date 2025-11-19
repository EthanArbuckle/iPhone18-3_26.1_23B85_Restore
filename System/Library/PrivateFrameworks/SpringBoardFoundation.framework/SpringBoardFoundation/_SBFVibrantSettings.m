@interface _SBFVibrantSettings
+ (id)vibrantSettingsWithReferenceColor:(id)a3 referenceContrast:(double)a4 legibilitySettings:(id)a5;
- (BOOL)isEqual:(id)a3;
- (UIColor)chevronShimmerColor;
- (UIColor)highlightColor;
- (UIColor)highlightLimitingColor;
- (UIColor)shimmerColor;
- (UIColor)tintColor;
- (_SBFVibrantSettings)initWithReferenceColor:(id)a3 referenceContrast:(double)a4 legibilitySettings:(id)a5;
- (id)_computeSourceColorDodgeColorForDestinationColor:(id)a3 producingLuminanceChange:(double)a4;
- (id)highlightLimitingViewWithFrame:(CGRect)a3;
- (id)tintViewWithFrame:(CGRect)a3;
- (int64_t)_style;
@end

@implementation _SBFVibrantSettings

+ (id)vibrantSettingsWithReferenceColor:(id)a3 referenceContrast:(double)a4 legibilitySettings:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithReferenceColor:v9 referenceContrast:v8 legibilitySettings:a4];

  return v10;
}

- (_SBFVibrantSettings)initWithReferenceColor:(id)a3 referenceContrast:(double)a4 legibilitySettings:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = _SBFVibrantSettings;
  v10 = [(_SBFVibrantSettings *)&v14 init];
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
      if (!UIAccessibilityIsReduceTransparencyEnabled())
      {
        v12 = 0;
        v10 = 0;
        v11 = 0;
        _SBFGetRGBAValuesForColor(self->_referenceColor, &v12, &v11, &v10, 0);
        v8 = 0;
        v9 = 0;
        v7 = 0;
        _SBFGetHSBAValuesForColor(self->_referenceColor, &v9, &v8, &v7, 0);
        legibilitySettings = self->_legibilitySettings;
        if (!legibilitySettings || [(_UILegibilitySettings *)legibilitySettings style]== 1)
        {
          v5 = 1;
LABEL_8:
          self->_style = v5;
          return self->_style;
        }

        v6 = self->_legibilitySettings;
        if (v6 && [(_UILegibilitySettings *)v6 style]== 2)
        {
          v5 = 2;
          goto LABEL_8;
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
    v4 = [(_SBFVibrantSettings *)self _style];
    if (v4 == -1)
    {
      legibilitySettings = self->_legibilitySettings;
      if (legibilitySettings && [(_UILegibilitySettings *)legibilitySettings style]== 2)
      {
        v11 = MEMORY[0x1E69DC888];
        v12 = 0.0;
        v13 = 0.5;
      }

      else
      {
        v11 = MEMORY[0x1E69DC888];
        v13 = 0.3;
        v12 = 1.0;
      }

      v14 = [v11 colorWithWhite:v12 alpha:v13];
      v7 = self->_tintColor;
      self->_tintColor = v14;
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
          [MEMORY[0x1E69DC888] blackColor];
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
        v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
        v7 = [(UIColor *)referenceColor _colorBlendedWithColor:v6];

        v8 = [(_SBFVibrantSettings *)self _computeSourceColorDodgeColorForDestinationColor:v7 producingLuminanceChange:fmin(self->_referenceContrast * self->_referenceContrast * 3.0 + 0.05, 0.35)];
      }

      v15 = self->_tintColor;
      self->_tintColor = v8;
    }

    goto LABEL_17;
  }

LABEL_18:
  v16 = tintColor;

  return v16;
}

- (UIColor)highlightLimitingColor
{
  highlightLimitingColor = self->_highlightLimitingColor;
  if (!highlightLimitingColor)
  {
    if (([(_SBFVibrantSettings *)self _style]- 1) <= 1)
    {
      v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.87 alpha:1.0];
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
    if ([(_SBFVibrantSettings *)self _style]== 1)
    {
      referenceColor = self->_referenceColor;
      v5 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
      v6 = [(UIColor *)referenceColor _colorBlendedWithColor:v5];

      v7 = [(_SBFVibrantSettings *)self tintColor];
      v8 = [v6 _colorBlendedWithColor:v7 compositingFilter:*MEMORY[0x1E6979860]];
      [v8 _luminance];
      v10 = [(_SBFVibrantSettings *)self _computeSourceColorDodgeColorForDestinationColor:v8 producingLuminanceChange:fmax(0.98 - v9, 0.2)];
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
    v4 = [(_SBFVibrantSettings *)self _style];
    if (v4 == 2)
    {
      v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.6 alpha:1.0];
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
      v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
      v7 = [(UIColor *)referenceColor _colorBlendedWithColor:v6];

      [v7 _luminance];
      v9 = [(_SBFVibrantSettings *)self _computeSourceColorDodgeColorForDestinationColor:v7 producingLuminanceChange:fmax(0.95 - v8, 0.2)];
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
    v4 = [(_SBFVibrantSettings *)self _style];
    if (v4 == 2)
    {
      legibilitySettings = self->_legibilitySettings;
      if (legibilitySettings)
      {
        [(_UILegibilitySettings *)legibilitySettings primaryColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] blackColor];
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
      v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
      v7 = [(UIColor *)referenceColor _colorBlendedWithColor:v6];

      v8 = [(_SBFVibrantSettings *)self tintColor];
      v9 = [v7 _colorBlendedWithColor:v8 compositingFilter:*MEMORY[0x1E6979860]];
      [v9 _luminance];
      v11 = [(_SBFVibrantSettings *)self _computeSourceColorDodgeColorForDestinationColor:v9 producingLuminanceChange:fmax(0.98 - v10, 0.2) * 0.75];
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
  v29 = 0.0;
  v30 = 0.0;
  v21 = fmin(v6 + a4, 1.0);
  v28 = 0.0;
  [v5 getRed:&v30 green:&v29 blue:&v28 alpha:0];
  v26 = 0.0;
  v27 = 0.0;
  v25 = 0;
  _SBFGetHSBAValuesForColor(v5, &v27, &v26, &v25, 0);
  v26 = v26 * 0.15;
  v7 = [MEMORY[0x1E69DC888] colorWithHue:v27 saturation:? brightness:? alpha:?];
  v23 = 0.0;
  v24 = 0.0;
  v22 = 0.0;
  [v7 getRed:&v24 green:&v23 blue:&v22 alpha:0];
  v19 = v23 + a4;
  v20 = v24 + a4;
  v8 = v22 + a4;
  v9 = 0.0;
  do
  {
    v10 = v9 + 1.0 - v24 / v20;
    v11 = v9 + 1.0 - v23 / v19;
    v12 = v9 + 1.0 - v22 / v8;
    v13 = [MEMORY[0x1E69DC888] colorWithRed:v30 / (1.0 - v10) green:v29 / (1.0 - v11) blue:v28 / (1.0 - v12) alpha:{1.0, *&v19, *&v20}];
    [v13 _luminance];
    v15 = v14;

    v9 = v9 + 0.01;
  }

  while (v15 < v21 && v9 < 1.0);
  v17 = [MEMORY[0x1E69DC888] colorWithRed:v10 green:v11 blue:v12 alpha:1.0];

  return v17;
}

- (id)tintViewWithFrame:(CGRect)a3
{
  v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  v5 = [(_SBFVibrantSettings *)self tintColor];
  [v4 setBackgroundColor:v5];

  if ([(_SBFVibrantSettings *)self _style]== 1)
  {
    v6 = [v4 layer];
    [v6 setCompositingFilter:*MEMORY[0x1E6979860]];
  }

  return v4;
}

- (id)highlightLimitingViewWithFrame:(CGRect)a3
{
  v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  v5 = [(_SBFVibrantSettings *)self highlightLimitingColor];
  [v4 setBackgroundColor:v5];

  v6 = [v4 layer];
  [v6 setCompositingFilter:*MEMORY[0x1E69798C0]];

  return v4;
}

@end