@interface PAESoftGradient
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAESoftGradient)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAESoftGradient

- (PAESoftGradient)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAESoftGradient;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (BOOL)addParameters
{
  v8.receiver = self;
  v8.super_class = PAESoftGradient;
  [(PAESharedDefaultBase *)&v8 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"SoftGradient::Center" defaultY:0 parmFlags:{0), 310, 0, 0.5, 0.5}];
    v5 = [-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F2C8), "versionAtCreation"}];
    v6 = [v4 localizedStringForKey:@"SoftGradient::Color" value:0 table:0];
    if (v5 < 2)
    {
      [v3 addColorParameterWithName:v6 parmId:311 defaultRed:0 defaultGreen:1.0 defaultBlue:1.0 defaultAlpha:1.0 parmFlags:1.0];
    }

    else
    {
      [v3 addColorParameterWithName:v6 parmId:311 defaultRed:0 defaultGreen:1.0 defaultBlue:1.0 parmFlags:1.0];
    }

    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"SoftGradient::Radius" parameterMin:0 parameterMax:0) sliderMin:312 sliderMax:0 delta:240.0 parmFlags:{0.0, dbl_2603432A0[v5 < 3], 0.0, 1000.0, 10.0}];
  }

  return v3 != 0;
}

- (id)properties
{
  if ([PAESoftGradient properties]::once != -1)
  {
    [PAESoftGradient properties];
  }

  return [PAESoftGradient properties]::sPropertiesDict;
}

uint64_t __29__PAESoftGradient_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:6];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  result = [v0 initWithObjectsAndKeys:{v1, @"MayRemapTime", v2, @"PreservesAlpha", v3, @"PixelTransformSupport", v4, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
  [PAESoftGradient properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)canThrowRenderOutput:(id)output withInfo:(id *)info
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9)
  {
    v11 = v8;
    v24 = 0.5;
    v25 = 0.5;
    v22 = 1.0;
    v23 = 1.0;
    *&v20 = 1.0;
    v21 = 1.0;
    v19 = 300.0;
    [output bounds];
    v13 = v12;
    v15 = v14;
    [v7 getXValue:&v25 YValue:&v24 fromParm:310 atFxTime:info->var0.var1];
    v24 = v15 * (v24 + -0.5);
    v25 = v13 * (v25 + -0.5);
    if ([v11 versionAtCreation] < 2)
    {
      [v7 getRedValue:&v23 greenValue:&v22 blueValue:&v21 alphaValue:&v20 fromParm:311 atFxTime:info->var0.var1];
      v16 = *&v20;
    }

    else
    {
      [v7 getRedValue:&v23 greenValue:&v22 blueValue:&v21 fromParm:311 atFxTime:info->var0.var1];
      v16 = 1.0;
    }

    v22 = v16 * v22;
    v23 = v16 * v23;
    v21 = v16 * v21;
    [v7 getFloatValue:&v19 fromParm:312 atFxTime:info->var0.var1];
    v19 = 1.0 / v19;
    v17 = HGObject::operator new(0x1A0uLL);
    HgcSoftGradient::HgcSoftGradient(v17);
  }

  return v10;
}

- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 1;
  v5 = *&setup->var2;
  v7[0] = *&setup->var0.var0;
  v7[1] = v5;
  v7[2] = *&setup->var4;
  [PAESharedDefaultBase overrideFrameSetupForRenderMode:"overrideFrameSetupForRenderMode:hardware:software:" hardware:v7 software:?];
  return 1;
}

@end