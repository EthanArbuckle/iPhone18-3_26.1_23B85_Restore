@interface PAEChannelMixer
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)constrainMonoParams:(int)params atTime:(id)time;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)monochromeChanged:(id)changed;
- (PAEChannelMixer)initWithAPIManager:(id)manager;
- (id)properties;
- (void)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha fromParam:(int)param atFxTime:(id)time;
@end

@implementation PAEChannelMixer

- (PAEChannelMixer)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEChannelMixer;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  if ([PAEChannelMixer properties]::once != -1)
  {
    [PAEChannelMixer properties];
  }

  return [PAEChannelMixer properties]::sPropertiesDict;
}

uint64_t __29__PAEChannelMixer_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  result = [v0 initWithObjectsAndKeys:{&unk_28732D4C0, @"PixelTransformSupport", v1, @"PixelIndependent", v2, @"PositionIndependent", v3, @"MayRemapTime", v4, @"SupportsLargeRenderScale", v5, @"SupportsHeliumRendering", v6, @"SupportsInternalMixing", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
  [PAEChannelMixer properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEChannelMixer;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 startParameterSubGroup:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" parmFlags:{@"ChannelMixer::RedOutput", @"Red Output", 0), 1, 0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::RedInputRed" parameterMin:@"Red - Red" parameterMax:0) sliderMin:2 sliderMax:0 delta:1.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::RedInputGreen" parameterMin:@"Red - Green" parameterMax:0) sliderMin:3 sliderMax:0 delta:0.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::RedInputBlue" parameterMin:@"Red - Blue" parameterMax:0) sliderMin:4 sliderMax:0 delta:0.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::RedInputAlpha" parameterMin:@"Red - Alpha" parameterMax:0) sliderMin:5 sliderMax:0 delta:0.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 endParameterSubGroup];
    [v3 startParameterSubGroup:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" parmFlags:{@"ChannelMixer::GreenOutput", @"Green Output", 0), 6, 0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::GreenInputRed" parameterMin:@"Green - Red" parameterMax:0) sliderMin:7 sliderMax:0 delta:0.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::GreenInputGreen" parameterMin:@"Green - Green" parameterMax:0) sliderMin:8 sliderMax:0 delta:1.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::GreenInputBlue" parameterMin:@"Green - Blue" parameterMax:0) sliderMin:9 sliderMax:0 delta:0.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::GreenInputAlpha" parameterMin:@"Green - Alpha" parameterMax:0) sliderMin:10 sliderMax:0 delta:0.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 endParameterSubGroup];
    [v3 startParameterSubGroup:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" parmFlags:{@"ChannelMixer::BlueOutput", @"Blue Output", 0), 11, 0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::BlueInputRed" parameterMin:@"Blue - Red" parameterMax:0) sliderMin:12 sliderMax:0 delta:0.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::BlueInputGreen" parameterMin:@"Blue - Green" parameterMax:0) sliderMin:13 sliderMax:0 delta:0.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::BlueInputBlue" parameterMin:@"Blue - Blue" parameterMax:0) sliderMin:14 sliderMax:0 delta:1.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::BlueInputAlpha" parameterMin:@"Blue - Alpha" parameterMax:0) sliderMin:15 sliderMax:0 delta:0.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 endParameterSubGroup];
    [v3 startParameterSubGroup:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" parmFlags:{@"ChannelMixer::AlphaOutput", @"Alpha Output", 0), 16, 0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::AlphaInputRed" parameterMin:@"Alpha - Red" parameterMax:0) sliderMin:17 sliderMax:0 delta:0.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::AlphaInputGreen" parameterMin:@"Alpha - Green" parameterMax:0) sliderMin:18 sliderMax:0 delta:0.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::AlphaInputBlue" parameterMin:@"Alpha - Blue" parameterMax:0) sliderMin:19 sliderMax:0 delta:0.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::AlphaInputAlpha" parameterMin:@"Alpha - Alpha" parameterMax:0) sliderMin:20 sliderMax:0 delta:1.0 parmFlags:{-2.0, 2.0, -2.0, 2.0, 0.1}];
    [v3 endParameterSubGroup];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::Monochrome" parmFlags:{@"Monochrome", 0), 21, 0, 1}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::AllowOverMax" parmFlags:{@"Allow Values Over Maximum", 0), 22, 1, 5}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::IncludeAlpha" parmFlags:{@"Include Alpha When Constraining", 0), 23, 0, 5}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelMixer::ProcessInGamma" parmFlags:{0, 0), 24, 0, 0}];
  }

  return v3 != 0;
}

- (BOOL)monochromeChanged:(id)changed
{
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  v9 = v6;
  v15 = 0;
  v10 = [v5 getBoolValue:&v15 fromParm:21 atFxTime:changed.var1];
  result = 0;
  if (v10)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    if ([v5 getParameterFlags:&v14 fromParm:22] && objc_msgSend(v5, "getParameterFlags:fromParm:", &v13 + 4, 23) && objc_msgSend(v5, "getParameterFlags:fromParm:", &v13, 6) && objc_msgSend(v5, "getParameterFlags:fromParm:", &v12, 11))
    {
      if (v15 == 1)
      {
        if ((v14 & 4) != 0)
        {
          [v9 setParameterFlags:v14 & 0xFFFFFFFB toParm:22];
        }

        if ((v13 & 0x400000000) != 0)
        {
          [v9 setParameterFlags:HIDWORD(v13) & 0xFFFFFFFB toParm:23];
        }

        if ((v13 & 4) == 0)
        {
          [v9 setParameterFlags:v13 | 4 toParm:6];
        }

        if ((v12 & 4) != 0)
        {
          return [(PAEChannelMixer *)self constrainMonoParams:2 atTime:changed.var1];
        }

        v11 = v12 | 4u;
      }

      else
      {
        if ((v14 & 4) == 0)
        {
          [v9 setParameterFlags:v14 | 4u toParm:22];
        }

        if ((v13 & 0x400000000) == 0)
        {
          [v9 setParameterFlags:HIDWORD(v13) | 4u toParm:23];
        }

        if ((v13 & 4) != 0)
        {
          [v9 setParameterFlags:v13 & 0xFFFFFFFB toParm:6];
        }

        if ((v12 & 4) == 0)
        {
          return [(PAEChannelMixer *)self constrainMonoParams:2 atTime:changed.var1];
        }

        v11 = v12 & 0xFFFFFFFB;
      }

      [v9 setParameterFlags:v11 toParm:11];
    }

    return [(PAEChannelMixer *)self constrainMonoParams:2 atTime:changed.var1];
  }

  return result;
}

- (BOOL)constrainMonoParams:(int)params atTime:(id)time
{
  if ((params - 2) > 3)
  {
    LOBYTE(v13) = 1;
    return v13;
  }

  v41 = v4;
  v42 = v5;
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    goto LABEL_7;
  }

  v12 = v10;
  v40 = 0;
  v39 = 1;
  v38 = 0;
  v13 = [v9 getBoolValue:&v40 fromParm:21 atFxTime:time.var1];
  if (v13)
  {
    v13 = [v9 getBoolValue:&v39 fromParm:22 atFxTime:time.var1];
    if (v13)
    {
      v13 = [v9 getBoolValue:&v38 fromParm:23 atFxTime:time.var1];
      if (v13)
      {
        if (v40 == 1 && (v39 & 1) == 0 && (params != 5 || (v38 & 1) != 0))
        {
          v36 = 0.0;
          v37 = 0.0;
          v34 = 0.0;
          v35 = 0.0;
          [v9 getFloatValue:&v37 fromParm:2 atFxTime:time.var1];
          [v9 getFloatValue:&v36 fromParm:3 atFxTime:time.var1];
          [v9 getFloatValue:&v35 fromParm:4 atFxTime:time.var1];
          [v9 getFloatValue:&v34 fromParm:5 atFxTime:time.var1];
          *&v14 = v37;
          HIDWORD(v15) = HIDWORD(v35);
          if (v38 == 1)
          {
            if (params > 3)
            {
              if (params == 4)
              {
                v16 = v34;
                v17 = v36;
                v18 = v37;
                *&v14 = v35;
              }

              else
              {
                v18 = v37;
                *&v14 = v34;
                v17 = v36;
                v16 = v35;
              }
            }

            else
            {
              v16 = v34;
              v17 = v35;
              if (params == 2)
              {
                v18 = v36;
              }

              else
              {
                v18 = v37;
                *&v14 = v36;
              }
            }

            v25 = 1.0 - *&v14;
            if (v16 == 0.0 || v16 == -(v17 + v18))
            {
              v26 = v25 / 3.0;
              v27 = v25 / 3.0;
              v28 = v25 / 3.0;
            }

            else
            {
              v28 = v25 / (((v17 + v18) / v16) + 1.0);
              v27 = (v17 * v28) / v16;
              v26 = (v18 * v28) / v16;
            }

            v29 = *&v14;
            if (params <= 3)
            {
              if (params == 2)
              {
                v36 = v26;
                v37 = v29;
                v34 = v28;
                v35 = v27;
                goto LABEL_60;
              }

              v36 = v29;
              v37 = v26;
              v34 = v28;
              v35 = v27;
              goto LABEL_55;
            }

            if (params == 4)
            {
              v35 = v29;
              v36 = v27;
              v37 = v26;
              v34 = v28;
            }

            else
            {
              v34 = v29;
              v36 = v27;
              v37 = v26;
              v35 = v28;
            }
          }

          else
          {
            if (params == 3)
            {
              v19 = v37;
            }

            else
            {
              v19 = v36;
            }

            if (params == 3)
            {
              v20 = v36;
            }

            else
            {
              v20 = v37;
            }

            if (params == 4)
            {
              v21 = v36;
            }

            else
            {
              v21 = v35;
            }

            if (params == 4)
            {
              v22 = v35;
            }

            else
            {
              *&v14 = v19;
              v22 = v20;
            }

            v23 = 1.0 - v22;
            if (*&v14 == 0.0 || *&v14 == -v21)
            {
              *&v15 = v23 * 0.5;
              LODWORD(v14) = LODWORD(v15);
            }

            else
            {
              v14 = v23 / ((*&v14 / v21) + 1.0);
              *&v14 = v14;
              *&v15 = v23 - *&v14;
            }

            v24 = v22;
            if (params == 2)
            {
              v36 = *&v15;
              v37 = v24;
              v35 = *&v14;
              goto LABEL_60;
            }

            if (params == 3)
            {
              v36 = v24;
              v37 = *&v15;
              v35 = *&v14;
LABEL_55:
              [v12 setFloatValue:2 toParm:time.var1 atFxTime:?];
              [v12 setFloatValue:4 toParm:time.var1 atFxTime:v35];
LABEL_61:
              if (v38 == 1)
              {
                v30 = v34;
                v31 = v12;
                v32 = 5;
                goto LABEL_63;
              }

LABEL_64:
              LOBYTE(v13) = 1;
              return v13;
            }

            if (params != 4)
            {
              [v12 setFloatValue:2 toParm:time.var1 atFxTime:{v37, v14, v24, v15}];
LABEL_60:
              [v12 setFloatValue:3 toParm:time.var1 atFxTime:?];
              [v12 setFloatValue:4 toParm:time.var1 atFxTime:v35];
              if (params == 5)
              {
                goto LABEL_64;
              }

              goto LABEL_61;
            }

            v37 = *&v15;
            v35 = v24;
            v36 = *&v14;
          }

          [v12 setFloatValue:2 toParm:time.var1 atFxTime:?];
          [v12 setFloatValue:3 toParm:time.var1 atFxTime:v36];
          if (params != 4)
          {
            v30 = v35;
            v31 = v12;
            v32 = 4;
LABEL_63:
            [v31 setFloatValue:v32 toParm:time.var1 atFxTime:v30];
            goto LABEL_64;
          }

          goto LABEL_61;
        }

LABEL_7:
        LOBYTE(v13) = 0;
      }
    }
  }

  return v13;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v8)
  {
    v9 = v8;
    v27 = 0;
    v28 = 0x3FF0000000000000;
    v25 = 0;
    v26 = 0;
    v23 = 0x3FF0000000000000;
    v24 = 0;
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v17 = 0;
    v18 = 0x3FF0000000000000;
    v15 = 0;
    v16 = 0;
    v13 = 0x3FF0000000000000;
    v14 = 0;
    v12 = 0;
    [(PAEChannelMixer *)self getRed:&v28 green:&v27 blue:&v26 alpha:&v25 fromParam:2 atFxTime:info->var0.var1];
    [(PAEChannelMixer *)self getRed:&v24 green:&v23 blue:&v22 alpha:&v21 fromParam:7 atFxTime:info->var0.var1];
    [(PAEChannelMixer *)self getRed:&v20 green:&v19 blue:&v18 alpha:&v17 fromParam:12 atFxTime:info->var0.var1];
    [(PAEChannelMixer *)self getRed:&v16 green:&v15 blue:&v14 alpha:&v13 fromParam:17 atFxTime:info->var0.var1];
    [v9 getBoolValue:&v12 fromParm:21 atFxTime:info->var0.var1];
    [v9 mixAmountAtTime:info->var0.var1];
    LODWORD(v8) = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
    if (v8)
    {
      if ([input imageType] == 3)
      {
        if (input)
        {
          [input heliumRef];
        }

        v10 = HGObject::operator new(0x1A0uLL);
        HChannelMixer::HChannelMixer(v10);
      }

      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 0;
  v6 = *&setup->var2;
  v8[0] = *&setup->var0.var0;
  v8[1] = v6;
  v8[2] = *&setup->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:hardware software:software];
  return 1;
}

- (void)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha fromParam:(int)param atFxTime:(id)time
{
  v9 = *&param;
  v14 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  [v14 getFloatValue:red fromParm:v9 atFxTime:time.var1];
  [v14 getFloatValue:green fromParm:(v9 + 1) atFxTime:time.var1];
  [v14 getFloatValue:blue fromParm:(v9 + 2) atFxTime:time.var1];

  [v14 getFloatValue:alpha fromParm:(v9 + 3) atFxTime:time.var1];
}

@end