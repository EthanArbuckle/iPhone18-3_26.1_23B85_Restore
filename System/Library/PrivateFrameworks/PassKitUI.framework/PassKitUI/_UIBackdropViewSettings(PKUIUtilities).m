@interface _UIBackdropViewSettings(PKUIUtilities)
+ (void)pkui_createTransparentSettingsFromSettings:()PKUIUtilities;
@end

@implementation _UIBackdropViewSettings(PKUIUtilities)

+ (void)pkui_createTransparentSettingsFromSettings:()PKUIUtilities
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v5 = 0;
    goto LABEL_20;
  }

  v5 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:-2 graphicsQuality:{objc_msgSend(v3, "graphicsQuality")}];
  [v4 grayscaleTintAlpha];
  if (v6 > 0.0)
  {
    [v4 grayscaleTintLevel];
    [v5 setGrayscaleTintLevel:?];
    [v5 setGrayscaleTintAlpha:0.0];
    [v4 grayscaleTintMaskAlpha];
    if (v7 <= 0.0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [v4 grayscaleTintMaskAlpha];
  if (v7 > 0.0)
  {
LABEL_7:
    v8 = v7;
    v9 = [v4 grayscaleTintMaskImage];
    [v5 setGrayscaleTintMaskImage:v9];

    [v5 setGrayscaleTintMaskAlpha:v8];
LABEL_8:
    [v5 setLightenGrayscaleWithSourceOver:{objc_msgSend(v4, "lightenGrayscaleWithSourceOver")}];
  }

  v10 = [v4 colorTint];
  [v5 setColorTint:v10];
  if (v10)
  {
    [v5 setColorTintAlpha:0.0];
  }

  [v4 colorBurnTintAlpha];
  if (v11 > 0.0)
  {
    [v4 colorBurnTintLevel];
    [v5 setColorBurnTintLevel:?];
    [v5 setColorBurnTintAlpha:0.0];
  }

  [v4 darkeningTintAlpha];
  if (v12 > 0.0)
  {
    [v5 setDarkenWithSourceOver:{objc_msgSend(v4, "darkenWithSourceOver")}];
    [v4 darkeningTintHue];
    [v5 setDarkeningTintHue:?];
    [v4 darkeningTintSaturation];
    [v5 setDarkeningTintSaturation:?];
    [v4 darkeningTintBrightness];
    [v5 setDarkeningTintBrightness:?];
    [v5 setDarkeningTintAlpha:0.0];
  }

  [v4 filterMaskAlpha];
  if (v13 > 0.0)
  {
    v14 = v13;
    v15 = [v4 filterMaskImage];
    [v5 setFilterMaskImage:v15];

    [v5 setFilterMaskAlpha:v14];
  }

  [v4 saturationDeltaFactor];
  if (v16 < 1.0)
  {
    [v5 setSaturationDeltaFactor:1.0];
  }

  v17 = [v4 legibleColor];
  [v5 setLegibleColor:v17];

LABEL_20:
  return v5;
}

@end