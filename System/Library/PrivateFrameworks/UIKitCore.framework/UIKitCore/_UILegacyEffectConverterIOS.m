@interface _UILegacyEffectConverterIOS
- (id)backdropSettingsForBlurStyle:(int64_t)a3;
- (id)vibrancyConfigForHighQualityVibrancyStyle:(int64_t)a3;
- (id)vibrancyConfigForLowQualityVibrancyStyle:(int64_t)a3;
@end

@implementation _UILegacyEffectConverterIOS

- (id)backdropSettingsForBlurStyle:(int64_t)a3
{
  v3 = -2;
  v4 = 3901;
  v5 = 3902;
  if (a3 != 502)
  {
    v5 = -2;
  }

  if (a3 != 501)
  {
    v4 = v5;
  }

  v6 = 2050;
  v7 = 2080;
  if (a3 != 100)
  {
    v7 = -2;
  }

  if (a3 != 99)
  {
    v6 = v7;
  }

  if (a3 <= 500)
  {
    v4 = v6;
  }

  if (a3 == 1)
  {
    v3 = 2020;
  }

  if (!a3)
  {
    v3 = 2010;
  }

  if ((a3 - 2) < 2)
  {
    v3 = 2030;
  }

  if (a3 <= 98)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  return [_UIBackdropViewSettings settingsForPrivateStyle:v8];
}

- (id)vibrancyConfigForHighQualityVibrancyStyle:(int64_t)a3
{
  if (!a3)
  {
    v3 = +[UIColor _vibrantLightDividerBurnColor];
    v6 = +[UIColor _vibrantLightDividerDarkeningColor];
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v3 = +[UIColor _vibrantLightFillBurnColor];
    v6 = +[UIColor _vibrantLightFillDarkeningColor];
LABEL_7:
    v4 = v6;
    v5 = MEMORY[0x1E6979D90];
    goto LABEL_8;
  }

  if (a3 != 2)
  {
    v3 = 0;
    v7 = 0;
    v4 = 0;
    goto LABEL_11;
  }

  v3 = +[UIColor _vibrantDarkFillDodgeColor];
  v4 = [UIColor colorWithWhite:0.0 alpha:0.0];
  v5 = MEMORY[0x1E6979D88];
LABEL_8:
  v7 = *v5;
  if (v7)
  {
    v8 = [_UIVisualEffectVibrantLayerConfig layerWithVibrantColor:v3 tintColor:v4 filterType:v7 filterAttributes:0];
    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
LABEL_12:
  v9 = [_UIVisualEffectConfig configWithContentConfig:v8];

  return v9;
}

- (id)vibrancyConfigForLowQualityVibrancyStyle:(int64_t)a3
{
  switch(a3)
  {
    case 0:
      v4 = 0.45;
      goto LABEL_7;
    case 1:
      v4 = 0.6;
LABEL_7:
      v3 = [UIColor colorWithRed:0.0352941176 green:0.0784313725 blue:0.121568627 alpha:v4];
      goto LABEL_8;
    case 2:
      v3 = [UIColor colorWithWhite:1.0 alpha:0.65];
LABEL_8:
      v5 = v3;
      goto LABEL_10;
  }

  v5 = 0;
LABEL_10:
  v6 = [_UIVisualEffectTintLayerConfig layerWithTintColor:v5];
  v7 = [_UIVisualEffectConfig configWithContentConfig:v6];

  return v7;
}

@end