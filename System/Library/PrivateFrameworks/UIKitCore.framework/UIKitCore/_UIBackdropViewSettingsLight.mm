@interface _UIBackdropViewSettingsLight
- (void)computeOutputSettingsUsingModel:(id)model;
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsLight

- (void)setDefaultValues
{
  v17.receiver = self;
  v17.super_class = _UIBackdropViewSettingsLight;
  [(_UIBackdropViewSettings *)&v17 setDefaultValues];
  self->super._requiresColorStatistics = 0;
  graphicsQuality = self->super._graphicsQuality;
  if (graphicsQuality == 10)
  {
    self->super._backdropVisible = 0;
    self->super._usesBackdropEffectView = 0;
    self->super._usesColorTintView = 0;
    *&self->super._grayscaleTintLevel = xmmword_18A677D80;
    if (_AXSEnhanceBackgroundContrastEnabled())
    {
      self->super._grayscaleTintAlpha = 1.0;
    }

    v4 = &_UIBackdropViewSettingsSaturationDeltaFactorNone;
    v5 = &_UIBackdropViewSettingsBlurRadiusNone;
    goto LABEL_7;
  }

  if (graphicsQuality == 100)
  {
    self->super._backdropVisible = 1;
    self->super._usesColorTintView = 0;
    *&self->super._grayscaleTintLevel = xmmword_18A677D90;
    v4 = &_UIBackdropViewSettingsSaturationDeltaFactorStrong;
    v5 = &_UIBackdropViewSettingsBlurRadiusLarge;
LABEL_7:
    grayscaleTintMaskImage = self->super._grayscaleTintMaskImage;
    self->super._grayscaleTintMaskAlpha = 1.0;
    self->super._grayscaleTintMaskImage = 0;

    colorTint = self->super._colorTint;
    self->super._colorTint = 0;

    __asm { FMOV            V0.2D, #1.0 }

    *&self->super._colorTintAlpha = _Q0;
    colorTintMaskImage = self->super._colorTintMaskImage;
    self->super._colorTintMaskImage = 0;

    *&self->super._blurRadius = *v5;
    *&self->super._saturationDeltaFactor = *v4;
    filterMaskImage = self->super._filterMaskImage;
    self->super._filterMaskAlpha = 1.0;
    self->super._filterMaskImage = 0;
  }

  v15 = +[UIColor whiteColor];
  legibleColor = self->super._legibleColor;
  self->super._legibleColor = v15;
}

- (void)computeOutputSettingsUsingModel:(id)model
{
  modelCopy = model;
  v24.receiver = self;
  v24.super_class = _UIBackdropViewSettingsLight;
  [(_UIBackdropViewSettings *)&v24 computeOutputSettingsUsingModel:modelCopy];
  if (self->super._enabled)
  {
    if (self->super._selected)
    {
      if (!self->super._highlighted)
      {
        if (qword_1ED49C830 != -1)
        {
          dispatch_once(&qword_1ED49C830, &__block_literal_global_25);
        }

        objc_storeStrong(&self->super._colorTint, qword_1ED49C838);
        graphicsQuality = self->super._graphicsQuality;
        if (graphicsQuality == 10)
        {
          v7 = 0.96;
          goto LABEL_17;
        }

        if (graphicsQuality != 100)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (self->super._highlighted)
    {
LABEL_15:
      objc_storeStrong(&self->super._colorTint, *(modelCopy + 16));
      self->super._colorTintAlpha = *(modelCopy + 17) * 0.6;
      goto LABEL_18;
    }

    p_colorTint = &self->super._colorTint;
    colorTint = self->super._colorTint;
    self->super._colorTint = 0;

    self->super._colorTintAlpha = 0.0;
    self->super._grayscaleTintAlpha = *(modelCopy + 12);
    v16 = *(modelCopy + 16);
    if (v16)
    {
      objc_storeStrong(&self->super._colorTint, v16);
      v17 = *(modelCopy + 17);
    }

    else
    {
      if (*(modelCopy + 7) != 1 || (v18 = *(modelCopy + 8), (v18 & 0x8000000000000000) != 0) || (v19 = v18 * 0.04 + 0.08, v19 <= 0.0))
      {
LABEL_34:
        v22 = self->super._graphicsQuality;
        if (v22 == 10)
        {
          self->super._grayscaleTintLevel = fmin(self->super._grayscaleTintLevel + *(modelCopy + 8) * 0.1, 1.0);
        }

        else if (v22 == 100)
        {
          self->super._grayscaleTintAlpha = fmin(self->super._grayscaleTintAlpha * (*(modelCopy + 8) * 0.5 + 1.0), 1.0);
        }

        goto LABEL_18;
      }

      v20 = +[_UIBackdropViewSettings darkeningTintColor];
      v21 = *p_colorTint;
      *p_colorTint = v20;

      v17 = v19 * *(modelCopy + 17);
    }

    self->super._colorTintAlpha = v17;
    goto LABEL_34;
  }

  if (_MergedGlobals_990 != -1)
  {
    dispatch_once(&_MergedGlobals_990, &__block_literal_global_33);
  }

  objc_storeStrong(&self->super._colorTint, qword_1ED49C828);
  v6 = self->super._graphicsQuality;
  if (v6 == 10)
  {
LABEL_16:
    v7 = 0.75;
    goto LABEL_17;
  }

  if (v6 == 100)
  {
    v7 = 0.2;
LABEL_17:
    self->super._colorTintAlpha = v7;
  }

LABEL_18:
  [*(modelCopy + 6) averageBrightness];
  v9 = v8;
  v10 = *(modelCopy + 16);
  v11 = v10;
  if (v10)
  {
    if ((v23 = 0.0, CGColorGetNumberOfComponents([v10 CGColor]) == 2) && (objc_msgSend(v11, "getWhite:alpha:", &v23, 0) & 1) != 0 || objc_msgSend(v11, "getHue:saturation:brightness:alpha:", 0, 0, &v23, 0))
    {
      v9 = v23;
    }
  }

  if (v9 <= 0.65)
  {
    v12 = +[UIColor whiteColor];
  }

  else
  {
    v12 = [[UIColor alloc] initWithWhite:0.0 alpha:0.6];
  }

  legibleColor = self->super._legibleColor;
  self->super._legibleColor = v12;
}

@end