@interface PAEScrape
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEScrape)initWithAPIManager:(id)a3;
- (id)properties;
- (void)dealloc;
@end

@implementation PAEScrape

- (PAEScrape)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEScrape;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
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

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    memset(&v24[2], 0, 32);
    if (a3)
    {
      [a3 imageInfo];
      v10 = *(&v25 + 1) == 0;
    }

    else
    {
      v10 = 1;
    }

    [(PAESharedDefaultBase *)self getScaleForImage:a4];
    __asm { FMOV            V0.2D, #0.5 }

    v24[0] = _Q0;
    [v9 getXValue:v24 YValue:v24 + 8 fromParm:1 atFxTime:a5->var0.var1];
    [(PAESharedDefaultBase *)self convertRelativeToPixelCoordinates:v24 withImage:a4];
    v24[0] = v23;
    *&v23 = 0;
    [v9 getFloatValue:&v23 fromParm:2 atFxTime:a5->var0.var1];
    if (!v10)
    {
      *&v23 = -(*&v23 + -3.14159265);
    }

    v22 = 0.0;
    [v9 getFloatValue:&v22 fromParm:3 atFxTime:a5->var0.var1];
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
    [v9 getIntValue:&v21 fromParm:4 atFxTime:{a5->var0.var1, v18}];
    __sincos_stret(*&v23);
    if (-[PAESharedDefaultBase getRenderMode:](self, "getRenderMode:", a5->var0.var1) && [a4 imageType] == 3)
    {
      if (a4)
      {
        [a4 heliumRef];
      }

      v19 = HGObject::operator new(0x1B0uLL);
      HgcScrape::HgcScrape(v19);
    }
  }

  return v9 != 0;
}

- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6
{
  *a6 = 0;
  *a5 = 0;
  v6 = *&a3->var2;
  v8[0] = *&a3->var0.var0;
  v8[1] = v6;
  v8[2] = *&a3->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:a5 software:a6];
  return 1;
}

@end