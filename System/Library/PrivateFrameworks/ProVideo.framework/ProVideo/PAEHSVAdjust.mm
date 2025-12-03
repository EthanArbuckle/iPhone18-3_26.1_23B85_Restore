@interface PAEHSVAdjust
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEHSVAdjust)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAEHSVAdjust

- (PAEHSVAdjust)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEHSVAdjust;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  if ([PAEHSVAdjust properties]::once != -1)
  {
    [PAEHSVAdjust properties];
  }

  return [PAEHSVAdjust properties]::sPropertiesDict;
}

uint64_t __26__PAEHSVAdjust_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:65792];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:590080];
  result = [v0 initWithObjectsAndKeys:{&unk_28732D538, @"PixelTransformSupport", v1, @"PixelIndependent", v2, @"PositionIndependent", v3, @"MayRemapTime", v4, @"SupportsLargeRenderScale", v5, @"SupportsHeliumRendering", v6, @"SDRWorkingSpace", v7, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
  [PAEHSVAdjust properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEHSVAdjust;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addAngleSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"HSVAdjust::Hue" parameterMin:0 parameterMax:0) parmFlags:{1, 0, 0.0, 0.0, 6.28318531}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"HSVAdjust::Saturation" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.0 parmFlags:{-1.0, 3.0, -1.0, 3.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"HSVAdjust::Value" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:1.0 parmFlags:{0.0, 2.0, 0.0, 2.0, 0.1}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v29[10] = *MEMORY[0x277D85DE8];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  v11 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12 || v11 == 0;
  v14 = !v13;
  if (!v13)
  {
    dynamicRangeType = [input dynamicRangeType];
    if ([v10 versionAtCreation])
    {
      v16 = 0;
    }

    else
    {
      v16 = dynamicRangeType == 0;
    }

    v17 = v16;
    v28 = 0.0;
    v29[0] = 0.0;
    v27 = 0.0;
    [v9 getFloatValue:v29 fromParm:1 atFxTime:info->var0.var1];
    [v9 getFloatValue:&v28 fromParm:2 atFxTime:info->var0.var1];
    v28 = v28 + 1.0;
    [v9 getFloatValue:&v27 fromParm:3 atFxTime:info->var0.var1];
    if (v17)
    {
      v29[0] = v29[0] * 180.0 / 3.14159265;
    }

    if (input)
    {
      [input heliumRef];
    }

    else
    {
      v26 = 0;
    }

    v18 = v29[0];
    if (!v17)
    {
      if (v29[0] < 0.0)
      {
        do
        {
          v18 = v18 + 6.28318531;
        }

        while (v18 < 0.0);
        v29[0] = v18;
      }

      if (v18 > 6.28318531)
      {
        do
        {
          v18 = v18 + -6.28318531;
        }

        while (v18 > 6.28318531);
        v29[0] = v18;
      }

      v23 = HGObject::operator new(0x1F0uLL);
      HGColorMatrix::HGColorMatrix(v23);
    }

    if (v29[0] < 0.0)
    {
      do
      {
        v18 = v18 + 360.0;
      }

      while (v18 < 0.0);
      v29[0] = v18;
    }

    if (v18 > 360.0)
    {
      do
      {
        v18 = v18 + -360.0;
      }

      while (v18 > 360.0);
      v29[0] = v18;
    }

    v19 = HGObject::operator new(0x1A0uLL);
    HgcHSVAdjust::HgcHSVAdjust(v19);
    v25 = v19;
    (*(*v19 + 120))(v19, 0, v26);
    v20 = v29[0] / 360.0 + 1.0;
    v21 = v28;
    v22 = v27;
    (*(*v19 + 96))(v19, 0, v20, v21, v22, 0.0);
    [output setHeliumRef:&v25];
    if (v25)
    {
      (*(*v25 + 24))(v25);
    }

    if (v26)
    {
      (*(*v26 + 24))(v26);
    }
  }

  return v14;
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

@end