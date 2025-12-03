@interface PAEStripesGenerator
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEStripesGenerator)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAEStripesGenerator

- (PAEStripesGenerator)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEStripesGenerator;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEStripesGenerator;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"StripesGenerator::Center" defaultY:0 parmFlags:{0), 310, 0, 0.5, 0.5}];
    [v3 addColorParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultRed:@"StripesGenerator::Color 1" defaultGreen:0 defaultBlue:0) defaultAlpha:311 parmFlags:{0, 1.0, 1.0, 1.0, 1.0}];
    [v3 addColorParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultRed:@"StripesGenerator::Color 2" defaultGreen:0 defaultBlue:0) defaultAlpha:312 parmFlags:{0, 0.0, 0.0, 0.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"StripesGenerator::Size" parameterMin:0 parameterMax:0) sliderMin:313 sliderMax:0 delta:80.0 parmFlags:{0.0, 800.0, 0.0, 800.0, 10.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"StripesGenerator::Contrast" parameterMin:0 parameterMax:0) sliderMin:314 sliderMax:0 delta:1.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
  }

  return v3 != 0;
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"PreservesAlpha", v5, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
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
    v23 = 0x3FE0000000000000;
    v24 = 0x3FE0000000000000;
    v21 = 1.0;
    v22 = 1.0;
    v19 = 1.0;
    v20 = 1.0;
    v17 = 0.0;
    v18 = 0.0;
    v15 = 1.0;
    v16 = 0.0;
    v13 = 1.0;
    v14 = 80.0;
    [output height];
    [output width];
    [v7 getXValue:&v24 YValue:&v23 fromParm:310 atFxTime:info->var0.var1];
    [v7 getRedValue:&v22 greenValue:&v21 blueValue:&v20 alphaValue:&v19 fromParm:311 atFxTime:info->var0.var1];
    v21 = v19 * v21;
    v22 = v19 * v22;
    v20 = v19 * v20;
    [v7 getRedValue:&v18 greenValue:&v17 blueValue:&v16 alphaValue:&v15 fromParm:312 atFxTime:info->var0.var1];
    v17 = v15 * v17;
    v18 = v15 * v18;
    v16 = v15 * v16;
    [v7 getFloatValue:&v14 fromParm:313 atFxTime:info->var0.var1];
    [v7 getFloatValue:&v13 fromParm:314 atFxTime:info->var0.var1];
    v13 = v13 * (v14 * 0.5);
    [(PAESharedDefaultBase *)self getInversePixelTransformForImage:output];
    if ([(PAESharedDefaultBase *)self getRenderMode:info->var0.var1])
    {
      if ([output imageType] == 3)
      {
        v11 = HGObject::operator new(0x1A0uLL);
        HgcStripes::HgcStripes(v11);
      }
    }
  }

  return v10;
}

- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 0;
  v5 = *&setup->var2;
  v7[0] = *&setup->var0.var0;
  v7[1] = v5;
  v7[2] = *&setup->var4;
  [PAESharedDefaultBase overrideFrameSetupForRenderMode:"overrideFrameSetupForRenderMode:hardware:software:" hardware:v7 software:?];
  return 1;
}

@end