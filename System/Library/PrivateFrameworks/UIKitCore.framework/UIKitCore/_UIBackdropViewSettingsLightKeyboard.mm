@interface _UIBackdropViewSettingsLightKeyboard
- (id)_defaultColorTintColorWithOpacity:(double)opacity;
- (void)setDefaultValues;
@end

@implementation _UIBackdropViewSettingsLightKeyboard

- (id)_defaultColorTintColorWithOpacity:(double)opacity
{
  if ([(_UIBackdropViewSettings *)self graphicsQuality]== 40 || [(_UIBackdropViewSettings *)self graphicsQuality]== 10)
  {
    v5 = 0.82745098;
    v6 = 0.843137255;
    v7 = 0.870588235;
  }

  else
  {
    v5 = 0.921568627;
    v6 = 0.941176471;
    v7 = 0.968627451;
  }

  v8 = [UIColor colorWithRed:v5 green:v6 blue:v7 alpha:opacity];

  return v8;
}

- (void)setDefaultValues
{
  v14.receiver = self;
  v14.super_class = _UIBackdropViewSettingsLightKeyboard;
  [(_UIBackdropViewSettings *)&v14 setDefaultValues];
  v3 = +[UIDevice currentDevice];
  -[_UIBackdropViewSettings setGraphicsQuality:](self, "setGraphicsQuality:", [v3 _keyboardGraphicsQuality]);

  if (_AXSEnhanceBackgroundContrastEnabled() || [(_UIBackdropViewSettings *)self graphicsQuality]== 10)
  {
    v4 = 0;
    v5 = 1.0;
  }

  else
  {
    v4 = 1;
    v5 = 0.9;
  }

  [(_UIBackdropViewSettings *)self setRequiresColorStatistics:0];
  [(_UIBackdropViewSettings *)self setUsesColorTintView:1];
  graphicsQuality = [(_UIBackdropViewSettings *)self graphicsQuality];
  v7 = graphicsQuality == 100;
  [(_UIBackdropViewSettings *)self setUsesGrayscaleTintView:v7];
  [(_UIBackdropViewSettings *)self setUsesColorBurnTintView:v7];
  _shouldUseDarkeningTintLayer = 0;
  if (graphicsQuality == 100)
  {
    _shouldUseDarkeningTintLayer = [(_UIBackdropViewSettingsLightKeyboard *)self _shouldUseDarkeningTintLayer];
  }

  [(_UIBackdropViewSettings *)self setUsesDarkeningTintView:_shouldUseDarkeningTintLayer];
  [(_UIBackdropViewSettings *)self setGrayscaleTintLevel:1.0];
  [(_UIBackdropViewSettings *)self setGrayscaleTintAlpha:0.5];
  [(_UIBackdropViewSettings *)self setLightenGrayscaleWithSourceOver:v4];
  v9 = [(_UIBackdropViewSettingsLightKeyboard *)self _defaultColorTintColorWithOpacity:v5];
  [(_UIBackdropViewSettings *)self setColorTint:v9];

  [(_UIBackdropViewSettings *)self setColorTintAlpha:1.0];
  [(_UIBackdropViewSettings *)self setColorBurnTintLevel:0.87];
  [(_UIBackdropViewSettings *)self setColorBurnTintAlpha:1.0];
  if ([(_UIBackdropViewSettingsLightKeyboard *)self _shouldUseDarkeningTintLayer])
  {
    [(_UIBackdropViewSettings *)self setDarkeningTintAlpha:0.3];
    [(_UIBackdropViewSettings *)self setDarkeningTintHue:0.602777778];
    [(_UIBackdropViewSettings *)self setDarkeningTintSaturation:0.0];
    [(_UIBackdropViewSettings *)self setDarkeningTintBrightness:0.5];
    [(_UIBackdropViewSettings *)self setDarkenWithSourceOver:1];
  }

  graphicsQuality2 = [(_UIBackdropViewSettings *)self graphicsQuality];
  v11 = &_UIBackdropViewSettingsSaturationDeltaFactorStrong;
  v12 = &_UIBackdropViewSettingsBlurRadiusMedium;
  v13 = 1;
  if (graphicsQuality2 != 100 && graphicsQuality2 != 40)
  {
    if (graphicsQuality2 != 10)
    {
      return;
    }

    v13 = 0;
    v11 = &_UIBackdropViewSettingsSaturationDeltaFactorNone;
    v12 = &_UIBackdropViewSettingsBlurRadiusNone;
  }

  [(_UIBackdropViewSettings *)self setBackdropVisible:v13];
  [(_UIBackdropViewSettings *)self setUsesBackdropEffectView:v13];
  [(_UIBackdropViewSettings *)self setBlurRadius:*v12];
  [(_UIBackdropViewSettings *)self setSaturationDeltaFactor:*v11];
  [(_UIBackdropViewSettings *)self setFilterMaskAlpha:1.0];
  [(_UIBackdropViewSettings *)self setFilterMaskImage:0];
}

@end