@interface PAETint
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAETint)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAETint

- (PAETint)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAETint;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:65792];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:590080];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PixelTransformSupport", v4, @"PixelIndependent", v5, @"PositionIndependent", v6, @"MayRemapTime", v7, @"SupportsLargeRenderScale", v8, @"SupportsHeliumRendering", v9, @"SDRWorkingSpace", v10, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v7.receiver = self;
  v7.super_class = PAETint;
  [(PAESharedDefaultBase *)&v7 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v4 addColorParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultRed:@"TintFx::Color" defaultGreen:0 defaultBlue:0) parmFlags:{1, 0, 0.360784314, 0.203921569, 0.0901960784}];
    [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"TintFx::Intensity" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:1.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
  }

  return 1;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  if ([input imageType] - 4 < 0xFFFFFFFE)
  {
    return 0;
  }

  v29 = 0.0;
  v30 = 0.0;
  v28 = 0.0;
  v13 = 1;
  [v10 getRedValue:&v30 greenValue:&v29 blueValue:&v28 fromParm:1 atFxTime:info->var0.var1];
  v27 = 0.0;
  [v10 getFloatValue:&v27 fromParm:2 atFxTime:info->var0.var1];
  if (-[PAESharedDefaultBase getRenderMode:](self, "getRenderMode:", info->var0.var1) && [input imageType] == 3)
  {
    v15 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
    if (!v15)
    {
      return 0;
    }

    if (![v15 versionAtCreation])
    {
      v29 = v29 * 0.78;
      v30 = v30 * 0.78;
      v28 = v28 * 0.78;
    }

    if (input)
    {
      [input heliumRef];
    }

    else
    {
      v26 = 0;
    }

    v16 = HGObject::operator new(0x1A0uLL);
    HgcTint::HgcTint(v16);
    (*(*v16 + 120))(v16, 0, v26);
    v17 = v30;
    v18 = v29;
    v19 = v28;
    (*(*v16 + 96))(v16, 0, v17, v18, v19, 0.0);
    v20 = v27;
    (*(*v16 + 96))(v16, 1, v20, 0.0, 0.0, 0.0);
    v21 = [objc_msgSend(v12 colorMatrixFromDesiredRGBToYCbCrAtTime:{info->var0.var1), "matrix"}];
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    (*(*v16 + 96))(v16, 2, v22, v23, v24, 0.0);
    v25 = v16;
    (*(*v16 + 16))(v16);
    [output setHeliumRef:&v25];
    if (v25)
    {
      (*(*v25 + 24))(v25);
    }

    (*(*v16 + 24))(v16);
    if (v26)
    {
      (*(*v26 + 24))(v26);
    }
  }

  return v13;
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