@interface PAEiOSTwirl
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6;
- (PAEiOSTwirl)initWithAPIManager:(id)a3;
- (id)properties;
- (void)handleUIEventWithPosition:(CGPoint)a3 velocity:(CGPoint)a4 scale:(double)a5 scaleVelocity:(double)a6 rotation:(double)a7 rotationVelocity:(double)a8;
@end

@implementation PAEiOSTwirl

- (PAEiOSTwirl)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEiOSTwirl;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"PositionIndependent", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1), @"SupportsHeliumRendering", 0}];
}

- (BOOL)addParameters
{
  v9.receiver = self;
  v9.super_class = PAEiOSTwirl;
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
  [v4 addPointParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultX:@"iOSTwirl::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
  [v4 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"iOSTwirl::Radius" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:300.0 parmFlags:{0.0, 500.0, 0.0, 500.0, 1.0}];
  [v4 addAngleSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"iOSTwirl::Angle" parameterMin:0 parameterMax:0) parmFlags:{3, 0, 180.0, -12.5663706, 12.5663706}];
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
    [v12 setFloatValue:2 toParm:&v14 atFxTime:a5 * 300.0];
    [v13 setFloatValue:3 toParm:&v14 atFxTime:-a7];
    [v13 setXValue:1 YValue:&v14 toParm:x atFxTime:y];
  }
}

- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v11 = 0;
  if (v10 && a3 && a4)
  {
    v16 = 0.0;
    [v10 getFloatValue:&v16 fromParm:2 atFxTime:a6->var0.var1];
    var1 = a5->var1;
    v13 = v16 * a5->var0;
    v14 = 2 * vcvtps_s32_f32(v13);
    *a3 = a5->var0 + v14;
    *a4 = var1 + v14;
    return 1;
  }

  return v11;
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

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = v7;
  if (v7)
  {
    v17 = 0.5;
    v18 = 0.5;
    [v7 getXValue:&v18 YValue:&v17 fromParm:1 atFxTime:a5->var0.var1];
    v9 = v18 + -0.5;
    v18 = v9 * [a4 width];
    v10 = v17 + -0.5;
    v17 = v10 * [a4 height];
    v16 = 0x4072C00000000000;
    [v8 getFloatValue:&v16 fromParm:2 atFxTime:a5->var0.var1];
    v15 = 0x400921FB54442D18;
    [v8 getFloatValue:&v15 fromParm:3 atFxTime:a5->var0.var1];
    v11 = HGObject::operator new(0x1D0uLL);
    HGTextureWrap::HGTextureWrap(v11);
    (*(*v11 + 120))(v11, 0, [a4 heliumNode]);
    HGTextureWrap::SetTextureWrapMode(v11, 2, v12);
    v13 = HGObject::operator new(0x1A0uLL);
    HgciOSTwirl::HgciOSTwirl(v13);
  }

  return 0;
}

@end