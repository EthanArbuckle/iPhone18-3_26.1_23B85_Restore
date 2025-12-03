@interface PAEScrape
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEScrape)initWithAPIManager:(id)manager;
- (id)properties;
- (void)dealloc;
@end

@implementation PAEScrape

- (PAEScrape)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEScrape;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEScrape;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"PositionIndependent", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEScrape;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"Scrape::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addAngleSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Scrape::Rotation" parameterMin:0 parameterMax:0) parmFlags:{2, 0, 0.0, 0.0, 6.28318531}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Scrape::Amount" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:50.0 parmFlags:{0.0, 200.0, 0.0, 200.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Scrape::Crop" parmFlags:{0, 0), 4, 1, 33}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    [(PAESharedDefaultBase *)self getPixelTransformForImage:input];
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    memset(&v24[2], 0, 32);
    if (output)
    {
      [output imageInfo];
      v10 = *(&v25 + 1) == 0;
    }

    else
    {
      v10 = 1;
    }

    [(PAESharedDefaultBase *)self getScaleForImage:input];
    __asm { FMOV            V0.2D, #0.5 }

    v24[0] = _Q0;
    [v9 getXValue:v24 YValue:v24 + 8 fromParm:1 atFxTime:info->var0.var1];
    [(PAESharedDefaultBase *)self convertRelativeToPixelCoordinates:v24 withImage:input];
    v24[0] = v23;
    *&v23 = 0;
    [v9 getFloatValue:&v23 fromParm:2 atFxTime:info->var0.var1];
    if (!v10)
    {
      *&v23 = -(*&v23 + -3.14159265);
    }

    v22 = 0.0;
    [v9 getFloatValue:&v22 fromParm:3 atFxTime:info->var0.var1];
    if (v22 <= 200.0)
    {
      v16 = v22;
    }

    else
    {
      v16 = 200.0;
    }

    v17 = 200.0 - v16;
    if (v22 >= 0.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 200.0;
    }

    v22 = v18;
    if (v18 > 0.0)
    {
      v18 = 1.0 / v18;
    }

    v21 = 0;
    [v9 getIntValue:&v21 fromParm:4 atFxTime:{info->var0.var1, v18}];
    __sincos_stret(*&v23);
    if (-[PAESharedDefaultBase getRenderMode:](self, "getRenderMode:", info->var0.var1) && [input imageType] == 3)
    {
      if (input)
      {
        [input heliumRef];
      }

      v19 = HGObject::operator new(0x1B0uLL);
      HgcScrape::HgcScrape(v19);
    }
  }

  return v9 != 0;
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