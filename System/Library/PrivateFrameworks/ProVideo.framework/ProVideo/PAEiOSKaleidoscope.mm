@interface PAEiOSKaleidoscope
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEiOSKaleidoscope)initWithAPIManager:(id)a3;
- (id)properties;
- (void)handleUIEventWithPosition:(CGPoint)a3 velocity:(CGPoint)a4 scale:(double)a5 scaleVelocity:(double)a6 rotation:(double)a7 rotationVelocity:(double)a8;
@end

@implementation PAEiOSKaleidoscope

- (PAEiOSKaleidoscope)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEiOSKaleidoscope;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1), @"SupportsHeliumRendering", 0}];
}

- (BOOL)addParameters
{
  v9.receiver = self;
  v9.super_class = PAEiOSKaleidoscope;
  [(PAESharedDefaultBase *)&v9 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 1;
  [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"iOSKaleidoscope::Count" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:6.0 parmFlags:{2.0, 100.0, 2.0, 100.0, 1.0}];
  [v4 addPointParameterWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultX:@"iOSKaleidoscope::Center" defaultY:0 parmFlags:{0), 2, 0, 0.5, 0.5}];
  [v4 addAngleSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"iOSKaleidoscope::Angle" parameterMin:0 parameterMax:0) parmFlags:{3, 0, 22.5, 0.0, 6.28318531}];
  return v7;
}

- (void)handleUIEventWithPosition:(CGPoint)a3 velocity:(CGPoint)a4 scale:(double)a5 scaleVelocity:(double)a6 rotation:(double)a7 rotationVelocity:(double)a8
{
  y = a3.y;
  x = a3.x;
  v12 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448, a3.x, a3.y, a4.x, a4.y, a5, a6, a7, a8];
  if (v12)
  {
    v13 = v12;
    v14 = *MEMORY[0x277CC08F0];
    v15 = *(MEMORY[0x277CC08F0] + 16);
    [v12 setFloatValue:1 toParm:&v14 atFxTime:a5 * 6.0];
    [v13 setFloatValue:3 toParm:&v14 atFxTime:a7];
    [v13 setXValue:2 YValue:&v14 toParm:x atFxTime:y];
  }
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = v7;
  if (v7)
  {
    v18 = 2.0;
    [v7 getFloatValue:&v18 fromParm:1 atFxTime:a5->var0.var1];
    v16 = 0x3FE0000000000000;
    v17 = 0x3FE0000000000000;
    [v8 getXValue:&v17 YValue:&v16 fromParm:2 atFxTime:a5->var0.var1];
    v15 = 0.392699082;
    [v8 getFloatValue:&v15 fromParm:3 atFxTime:a5->var0.var1];
    [a4 width];
    [a4 height];
    __sincos_stret(v15);
    v9 = floor(v18);
    if (v9 >= 1.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1.0;
    }

    v18 = v10;
    v11 = HGObject::operator new(0x1D0uLL);
    HGTextureWrap::HGTextureWrap(v11);
    (*(*v11 + 120))(v11, 0, [a4 heliumNode]);
    HGTextureWrap::SetTextureWrapMode(v11, 2, v12);
    v13 = HGObject::operator new(0x1B0uLL);
    HgciOSKaleidoscope::HgciOSKaleidoscope(v13);
  }

  return 0;
}

- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6
{
  v6 = *&a3->var2;
  v8[0] = *&a3->var0.var0;
  v8[1] = v6;
  v8[2] = *&a3->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:a5 software:a6];
  return 1;
}

@end