@interface _UIBackdropViewSettingsCombiner
- (void)computeOutputSettingsUsingModel:(id)a3;
- (void)copyAdditionalSettingsFromSettings:(id)a3;
- (void)setDefaultValues;
- (void)setRequiresColorStatistics:(BOOL)a3;
@end

@implementation _UIBackdropViewSettingsCombiner

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIBackdropViewSettingsCombiner;
  [(_UIBackdropViewSettings *)&v3 setDefaultValues];
  self->super._requiresColorStatistics = 0;
}

- (void)copyAdditionalSettingsFromSettings:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UIBackdropViewSettingsCombiner;
  [(_UIBackdropViewSettings *)&v12 copyAdditionalSettingsFromSettings:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 inputSettingsA];
    v7 = [_UIBackdropViewSettings settingsPreservingHintsFromSettings:v6 graphicsQuality:[(_UIBackdropViewSettings *)self graphicsQuality]];
    [(_UIBackdropViewSettingsCombiner *)self setInputSettingsA:v7];

    v8 = [v5 inputSettingsB];
    v9 = [_UIBackdropViewSettings settingsPreservingHintsFromSettings:v8 graphicsQuality:[(_UIBackdropViewSettings *)self graphicsQuality]];
    [(_UIBackdropViewSettingsCombiner *)self setInputSettingsB:v9];

    [v5 weighting];
    v11 = v10;

    [(_UIBackdropViewSettingsCombiner *)self setWeighting:v11];
  }
}

- (void)setRequiresColorStatistics:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = _UIBackdropViewSettingsCombiner;
  [(_UIBackdropViewSettings *)&v3 setRequiresColorStatistics:0];
}

- (void)computeOutputSettingsUsingModel:(id)a3
{
  v4 = a3;
  if (!self->_outputSettingsA)
  {
    v5 = objc_alloc_init(objc_opt_class());
    outputSettingsA = self->_outputSettingsA;
    self->_outputSettingsA = v5;
  }

  if (self->_outputSettingsB)
  {
    if (v4)
    {
LABEL_5:
      v7 = v4[6];
      goto LABEL_8;
    }
  }

  else
  {
    v8 = objc_alloc_init(objc_opt_class());
    outputSettingsB = self->_outputSettingsB;
    self->_outputSettingsB = v8;

    if (v4)
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_8:
  objc_storeStrong(&self->super._colorSettings, v7);
  inputSettingsA = self->_inputSettingsA;
  if (inputSettingsA)
  {
    objc_storeStrong(&inputSettingsA->_colorSettings, self->super._colorSettings);
  }

  inputSettingsB = self->_inputSettingsB;
  if (inputSettingsB)
  {
    objc_storeStrong(&inputSettingsB->_colorSettings, self->super._colorSettings);
  }

  [(_UIBackdropViewSettings *)self->_outputSettingsA computeOutputSettingsUsingModel:self->_inputSettingsA];
  [(_UIBackdropViewSettings *)self->_outputSettingsB computeOutputSettingsUsingModel:self->_inputSettingsB];
  v12 = 0.0;
  v13 = 1.0;
  self->_weighting = fmin(fmax(self->_weighting, 0.0), 1.0);
  v14 = self->_outputSettingsA;
  if (v14)
  {
    grayscaleTintLevel = v14->_grayscaleTintLevel;
    grayscaleTintAlpha = v14->_grayscaleTintAlpha;
    v17 = v14->_colorTint;
    v18 = self->_outputSettingsA;
    colorTintAlpha = v18->_colorTintAlpha;
    blurRadius = v18->_blurRadius;
    saturationDeltaFactor = v18->_saturationDeltaFactor;
    zoom = v18->_zoom;
  }

  else
  {
    v17 = 0;
    grayscaleTintLevel = 0.0;
    grayscaleTintAlpha = 0.0;
    colorTintAlpha = 0.0;
    blurRadius = 0.0;
    saturationDeltaFactor = 1.0;
    zoom = 0.0;
  }

  v43 = zoom;
  v20 = self->_outputSettingsB;
  if (v20)
  {
    v12 = v20->_grayscaleTintLevel;
    v21 = v20->_grayscaleTintAlpha;
    v22 = v20->_colorTint;
    v23 = self->_outputSettingsB;
    v24 = v23->_colorTintAlpha;
    v25 = v23->_blurRadius;
    v13 = v23->_saturationDeltaFactor;
    v26 = v23->_zoom;
  }

  else
  {
    v22 = 0;
    v21 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
  }

  v38 = v26;
  self->super._grayscaleTintLevel = v12 * self->_weighting + grayscaleTintLevel * (1.0 - self->_weighting);
  self->super._grayscaleTintAlpha = v21 * self->_weighting + grayscaleTintAlpha * (1.0 - self->_weighting);
  weighting = self->_weighting;
  v28 = v17;
  v29 = v22;
  v51 = 0.0;
  v52 = 0.0;
  v49 = 0.0;
  v50 = 0.0;
  if (![(UIColor *)v28 getRed:&v52 green:&v51 blue:&v50 alpha:&v49])
  {
    v48 = 0.0;
    [(UIColor *)v28 getWhite:&v48 alpha:&v49];
    v50 = v48;
    v51 = v48;
    v52 = v48;
  }

  v30 = 1.0 - weighting;
  v47 = 0.0;
  v48 = 0.0;
  v45 = 0.0;
  v46 = 0.0;
  if ([(UIColor *)v29 getRed:&v48 green:&v47 blue:&v46 alpha:&v45, *&v38])
  {
    v32 = v47;
    v31 = v48;
    v33 = v46;
  }

  else
  {
    v44 = 0.0;
    [(UIColor *)v29 getWhite:&v44 alpha:&v45];
    v32 = v44;
    v46 = v44;
    v47 = v44;
    v48 = v44;
    v33 = v44;
    v31 = v44;
  }

  v34 = [UIColor colorWithRed:(1.0 - v30) * v31 + v30 * v52 green:(1.0 - v30) * v33 + v30 * v51 blue:(1.0 - v30) * v32 + v30 * v50 alpha:v30 * v49 + (1.0 - v30) * v45];

  colorTint = self->super._colorTint;
  self->super._colorTint = v34;

  self->super._colorTintAlpha = v24 * self->_weighting + colorTintAlpha * (1.0 - self->_weighting);
  self->super._blurRadius = v25 * self->_weighting + blurRadius * (1.0 - self->_weighting);
  self->super._saturationDeltaFactor = v13 * self->_weighting + saturationDeltaFactor * (1.0 - self->_weighting);
  self->super._zoom = v39 * self->_weighting + v43 * (1.0 - self->_weighting);
  if (!self->_outputSettingsA && !self->_outputSettingsB)
  {
    self->super._scale = 1.0;
  }

  _UIBackdropViewComputeLegibleColorWithColorSettings(self->super._colorSettings);
  v36 = [UIColor colorWithWhite:"colorWithWhite:alpha:" alpha:?];
  legibleColor = self->super._legibleColor;
  self->super._legibleColor = v36;

  [(_UIBackdropViewSettings *)self scheduleSettingsDidChangeIfNeeded];
}

@end