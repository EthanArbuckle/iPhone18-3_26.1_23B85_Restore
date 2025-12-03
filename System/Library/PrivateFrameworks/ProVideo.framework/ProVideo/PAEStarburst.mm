@interface PAEStarburst
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEStarburst)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAEStarburst

- (PAEStarburst)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEStarburst;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"SupportsHeliumRendering", v5, @"MayRemapTime", v6, @"SupportsLargeRenderScale", v7, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEStarburst;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"Starburst::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Starburst::Radius" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:50.0 parmFlags:{0.01, 200.0, 0.01, 200.0, 10.0}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v8)
  {
    _ZF = v9 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
LABEL_9:
    LOBYTE(v15) = 0;
    return v15;
  }

  [(PAESharedDefaultBase *)self getPixelTransformForImage:input];
  __asm { FMOV            V0.2D, #0.5 }

  v20 = _Q0;
  [v8 getXValue:&v20 YValue:&v20 + 8 fromParm:1 atFxTime:info->var0.var1];
  [(PAESharedDefaultBase *)self convertRelativeToPixelCoordinates:&v20 withImage:input];
  v20 = v18;
  v19 = 0x4049000000000000;
  [v8 getFloatValue:&v19 fromParm:2 atFxTime:info->var0.var1];
  v15 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
  if (v15)
  {
    if ([input imageType] == 3)
    {
      if (input)
      {
        [input heliumRef];
      }

      v16 = HGObject::operator new(0x1B0uLL);
      HgcStarburst::HgcStarburst(v16);
    }

    goto LABEL_9;
  }

  return v15;
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