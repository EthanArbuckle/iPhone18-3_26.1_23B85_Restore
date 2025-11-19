@interface _UILegacyEffectConverterTVOS
- (id)backdropSettingsForBlurStyle:(int64_t)a3;
- (id)vibrancyConfigForHighQualityVibrancyStyle:(int64_t)a3;
- (id)vibrancyConfigForLowQualityVibrancyStyle:(int64_t)a3;
- (id)vibrancyConfigForReducedTransperancyVibrancyStyle:(int64_t)a3;
@end

@implementation _UILegacyEffectConverterTVOS

- (id)backdropSettingsForBlurStyle:(int64_t)a3
{
  v3 = -2;
  if (a3 <= 500)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
LABEL_19:
        a3 = 4008;
      }

      else
      {
        v4 = 2050;
        if (a3 == 100)
        {
          v3 = 2080;
        }

        v5 = a3 == 99;
LABEL_16:
        if (v5)
        {
          a3 = v4;
        }

        else
        {
          a3 = v3;
        }
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
LABEL_20:
        a3 = 4001;
      }

      else if (a3 == 2)
      {
LABEL_8:
        a3 = 4006;
      }

      else
      {
        a3 = -2;
      }
    }

    else
    {
LABEL_21:
      a3 = 4003;
    }
  }

  else
  {
    switch(a3)
    {
      case 4000:
      case 4012:
        a3 = 4000;
        break;
      case 4001:
        goto LABEL_20;
      case 4002:
      case 4004:
      case 4007:
      case 4009:
      case 4010:
      case 4011:
        return [_UIBackdropViewSettings settingsForPrivateStyle:a3];
      case 4003:
        goto LABEL_21;
      case 4005:
      case 4013:
      case 4016:
        a3 = 4005;
        break;
      case 4006:
        goto LABEL_8;
      case 4008:
        goto LABEL_19;
      case 4014:
        a3 = 4012;
        break;
      case 4015:
        a3 = 4013;
        break;
      case 4017:
        a3 = 4014;
        break;
      case 4018:
        a3 = 4015;
        break;
      default:
        v4 = 3901;
        if (a3 == 502)
        {
          v3 = 3902;
        }

        v5 = a3 == 501;
        goto LABEL_16;
    }
  }

  return [_UIBackdropViewSettings settingsForPrivateStyle:a3];
}

- (id)vibrancyConfigForHighQualityVibrancyStyle:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 4004)
  {
    if ((a3 - 4000) >= 5 && a3 >= 2)
    {
      v4 = 0;
      v5 = 0;
      if ((a3 - 2) >= 2)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (a3 < 4012)
  {
LABEL_14:
    v5 = [UIColor colorWithRed:0.274509804 green:0.274509804 blue:0.274509804 alpha:1.0];
    v8 = MEMORY[0x1E6979CF8];
LABEL_17:
    v4 = v3;
    v3 = *v8;
    goto LABEL_18;
  }

  if (a3 <= 4013)
  {
    if (a3 != 4012)
    {
      v7 = [UIColor colorWithWhite:0.156862745 alpha:0.3];
      v3 = [_UIVisualEffectLayerConfig layerWithFillColor:v7 opacity:*MEMORY[0x1E6979CF8] filterType:1.0];

      goto LABEL_14;
    }

    v9 = [UIColor colorWithWhite:0.156862745 alpha:0.3];
    v3 = [_UIVisualEffectLayerConfig layerWithFillColor:v9 opacity:*MEMORY[0x1E6979CF8] filterType:1.0];

LABEL_16:
    v5 = [UIColor colorWithRed:0.666666667 green:0.666666667 blue:0.666666667 alpha:1.0];
    v8 = MEMORY[0x1E6979CE8];
    goto LABEL_17;
  }

  if (a3 == 4014)
  {
    goto LABEL_16;
  }

  if (a3 == 4015)
  {
    goto LABEL_14;
  }

  v4 = 0;
  v5 = 0;
  if (a3 == 4016)
  {
    v6 = [(_UILegacyEffectConverterTVOS *)self vibrancyConfigForLowQualityVibrancyStyle:?];
    goto LABEL_21;
  }

LABEL_18:
  v10 = [_UIVisualEffectTintLayerConfig layerWithTintColor:v5 filterType:v3];
  v11 = [_UIVisualEffectConfig configWithContentConfig:v10];
  v6 = v11;
  if (v4)
  {
    [v11 addLayerConfig:v4];
  }

LABEL_21:

  return v6;
}

- (id)vibrancyConfigForLowQualityVibrancyStyle:(int64_t)a3
{
  v3 = 0;
  if (a3 > 4004)
  {
    if (a3 >= 4012)
    {
      if (a3 > 4013)
      {
        if (a3 != 4014)
        {
          if (a3 != 4015)
          {
            v4 = 0;
            if (a3 != 4016)
            {
              goto LABEL_24;
            }

            v3 = [UIColor colorWithWhite:1.0 alpha:0.2];
            v5 = +[UIColor whiteColor];
            goto LABEL_23;
          }

          goto LABEL_19;
        }

LABEL_22:
        v5 = [UIColor colorWithRed:0.0352941176 green:0.0784313725 blue:0.121568627 alpha:0.6];
        goto LABEL_23;
      }

      if (a3 == 4012)
      {
        v3 = [UIColor colorWithWhite:1.0 alpha:0.2];
        goto LABEL_22;
      }

      v3 = [UIColor colorWithWhite:1.0 alpha:0.2];
    }

LABEL_19:
    v5 = [UIColor colorWithWhite:1.0 alpha:0.65];
LABEL_23:
    v4 = v5;
    goto LABEL_24;
  }

  if (a3 <= 3999)
  {
    if ((a3 - 2) < 2)
    {
      goto LABEL_19;
    }

    if (a3)
    {
      v4 = 0;
      if (a3 == 1)
      {
        goto LABEL_22;
      }

      goto LABEL_24;
    }

LABEL_20:
    v4 = [UIColor colorWithRed:0.0352941176 green:0.0784313725 blue:0.121568627 alpha:0.45];
    v3 = 0;
    goto LABEL_24;
  }

  if ((a3 - 4000) < 3)
  {
    goto LABEL_22;
  }

  if (a3 == 4003)
  {
    goto LABEL_20;
  }

  v4 = 0;
  if (a3 == 4004)
  {
    goto LABEL_22;
  }

LABEL_24:
  v6 = [_UIVisualEffectTintLayerConfig layerWithTintColor:v4];
  v7 = [_UIVisualEffectConfig configWithContentConfig:v6];

  if (v3)
  {
    v8 = [_UIVisualEffectLayerConfig layerWithFillColor:v3 opacity:0 filterType:1.0];
    [v7 addLayerConfig:v8];
  }

  return v7;
}

- (id)vibrancyConfigForReducedTransperancyVibrancyStyle:(int64_t)a3
{
  if (a3 > 2)
  {
    v3 = 0;
    v4 = 0;
    switch(a3)
    {
      case 4000:
        goto LABEL_35;
      case 4001:
      case 4014:
        goto LABEL_9;
      case 4002:
        v5 = 0.4;
        v6 = 0.431372549;
        v7 = 0.447058824;
        goto LABEL_22;
      case 4003:
        goto LABEL_10;
      case 4004:
        v5 = 0.235294118;
        v6 = 0.254901961;
        v7 = 0.262745098;
        goto LABEL_22;
      case 4005:
        goto LABEL_32;
      case 4006:
      case 4015:
        goto LABEL_8;
      case 4007:
        v5 = 0.470588235;
        v6 = 0.509803922;
        v7 = 0.529411765;
        goto LABEL_22;
      case 4008:
        goto LABEL_12;
      case 4009:
        v5 = 0.435294118;
        v6 = 0.466666667;
        v7 = 0.48627451;
        goto LABEL_22;
      case 4010:
        v9 = +[UIColor whiteColor];
        goto LABEL_23;
      case 4011:
        v9 = +[UIColor blackColor];
        goto LABEL_23;
      case 4012:
        if (_AXSEnhanceBackgroundContrastEnabled())
        {
          +[UIColor whiteColor];
        }

        else
        {
          [UIColor colorWithWhite:1.0 alpha:0.3];
        }
        v3 = ;
LABEL_35:
        v10 = [UIColor colorWithRed:0.207843137 green:0.223529412 blue:0.231372549 alpha:1.0];
        goto LABEL_24;
      case 4013:
      case 4016:
        if (_AXSEnhanceBackgroundContrastEnabled())
        {
          +[UIColor lightGrayColor];
        }

        else
        {
          [UIColor colorWithWhite:1.0 alpha:0.05];
        }
        v4 = ;
LABEL_32:
        v10 = [UIColor colorWithRed:0.584313725 green:0.611764706 blue:0.62745098 alpha:1.0];
        v3 = v4;
        goto LABEL_24;
      default:
        if (a3 != 3)
        {
          goto LABEL_13;
        }

LABEL_12:
        v5 = 0.392156863;
        v6 = 0.423529412;
        v7 = 0.439215686;
        goto LABEL_22;
    }
  }

  if (a3)
  {
    if (a3 == 1)
    {
LABEL_9:
      v5 = 0.368627451;
      v6 = 0.396078431;
      v7 = 0.411764706;
    }

    else
    {
      if (a3 != 2)
      {
LABEL_13:
        v8 = [(_UILegacyEffectConverterTVOS *)self vibrancyConfigForLowQualityVibrancyStyle:?];
        goto LABEL_27;
      }

LABEL_8:
      v5 = 0.450980392;
      v6 = 0.48627451;
      v7 = 0.505882353;
    }
  }

  else
  {
LABEL_10:
    v5 = 0.490196078;
    v6 = 0.525490196;
    v7 = 0.545098039;
  }

LABEL_22:
  v9 = [UIColor colorWithRed:v5 green:v6 blue:v7 alpha:1.0];
LABEL_23:
  v10 = v9;
  v3 = 0;
LABEL_24:
  v11 = [_UIVisualEffectTintLayerConfig layerWithTintColor:v10];
  v8 = [_UIVisualEffectConfig configWithContentConfig:v11];

  if (v3)
  {
    v12 = [_UIVisualEffectLayerConfig layerWithFillColor:v3 opacity:0 filterType:1.0];
    [v8 addLayerConfig:v12];
  }

LABEL_27:

  return v8;
}

@end