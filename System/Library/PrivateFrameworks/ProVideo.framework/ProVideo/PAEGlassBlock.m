@interface PAEGlassBlock
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEGlassBlock)initWithAPIManager:(id)a3;
- (id)properties;
- (void)dealloc;
@end

@implementation PAEGlassBlock

- (PAEGlassBlock)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEGlassBlock;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEGlassBlock;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEGlassBlock;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"GlassBlock::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"GlassBlock::Scale" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:2.8 parmFlags:{0.0, 10.0, 0.1, 10.0, 0.1}];
    [v3 addAngleSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"GlassBlock::Angle" parameterMin:0 parameterMax:0) parmFlags:{3, 0, 0.0, 0.0, 360.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"GlassBlock::TileSize" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:65.0 parmFlags:{0.0, 1000.0, 0.0, 1000.0, 1.0}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    __asm { FMOV            V0.2D, #0.5 }

    v30 = _Q0;
    [v9 getXValue:&v30 YValue:&v30 + 8 fromParm:1 atFxTime:a5->var0.var1];
    [(PAESharedDefaultBase *)self convertRelativeToPixelCoordinates:&v30 withImage:a4];
    v30 = v20;
    v29 = 0.0;
    [v10 getFloatValue:&v29 fromParm:2 atFxTime:a5->var0.var1];
    v29 = 1.0 / v29;
    v28 = 30.0;
    [v10 getFloatValue:&v28 fromParm:3 atFxTime:a5->var0.var1];
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    if (a3)
    {
      [a3 imageInfo];
      v16 = v28;
      if (*(&v25 + 1))
      {
        v16 = -v28;
        v28 = -v28;
      }
    }

    else
    {
      v16 = v28;
    }

    __sincos_stret(v16);
    v22 = 0.0;
    [v10 getFloatValue:&v22 fromParm:4 atFxTime:a5->var0.var1];
    [(PAESharedDefaultBase *)self getScaleForImage:a4];
    v22 = v21 * v22;
    v17 = [objc_alloc(NSClassFromString(&cfstr_Fxhostcapabili.isa)) initWithAPIManager:self->super.super._apiManager];
    if (a5->var2)
    {
      [v17 upscalesFields];
    }

    LODWORD(v9) = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
    if (v9)
    {
      if ([a4 imageType] == 3)
      {
        if (a4)
        {
          [a4 heliumRef];
        }

        v18 = HGObject::operator new(0x1B0uLL);
        HgcGlassBlock::HgcGlassBlock(v18);
      }

      LOBYTE(v9) = 0;
    }
  }

  return v9;
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