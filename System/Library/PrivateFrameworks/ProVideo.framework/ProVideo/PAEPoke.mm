@interface PAEPoke
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEPoke)initWithAPIManager:(id)a3;
- (id)properties;
- (void)handleUIEventWithPosition:(CGPoint)a3 velocity:(CGPoint)a4 scale:(double)a5 scaleVelocity:(double)a6 rotation:(double)a7 rotationVelocity:(double)a8;
@end

@implementation PAEPoke

- (PAEPoke)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEPoke;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"SupportsHeliumRendering", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEPoke;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"Poke::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Poke::Radius" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:300.0 parmFlags:{0.0, 1000.0, 0.0, 1000.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Poke::Scale" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.5 parmFlags:{0.0, 1.0, 0.0, 1.0, 1.0}];
  }

  return v3 != 0;
}

- (void)handleUIEventWithPosition:(CGPoint)a3 velocity:(CGPoint)a4 scale:(double)a5 scaleVelocity:(double)a6 rotation:(double)a7 rotationVelocity:(double)a8
{
  y = a3.y;
  x = a3.x;
  v11 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448, a3.x, a3.y, a4.x, a4.y, a5, a6, a7, a8];
  if (v11)
  {
    v12 = v11;
    v13 = *MEMORY[0x277CC08F0];
    v14 = *(MEMORY[0x277CC08F0] + 16);
    [v11 setFloatValue:3 toParm:&v13 atFxTime:a5 * 0.5];
    [v12 setXValue:1 YValue:&v13 toParm:x atFxTime:y];
  }
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

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v8)
  {
    v9 = v8;
    [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
    __asm { FMOV            V0.2D, #0.5 }

    v22 = _Q0;
    [v9 getXValue:&v22 YValue:&v22 + 8 fromParm:1 atFxTime:a5->var0.var1];
    v21 = 300.0;
    [v9 getFloatValue:&v21 fromParm:2 atFxTime:a5->var0.var1];
    v15 = v21;
    if (v21 < 0.00001)
    {
      v15 = 0.00001;
    }

    v21 = v15;
    v20 = 0x3FE0000000000000;
    [v9 getFloatValue:&v20 fromParm:3 atFxTime:a5->var0.var1];
    v16 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
    [(PAESharedDefaultBase *)self convertRelativeToImageCoordinates:&v22 withImage:a4];
    v22 = v19;
    if (v16 && [a4 imageType] == 3)
    {
      v17 = HGObject::operator new(0x2A0uLL);
      HPoke::HPoke(v17);
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

@end