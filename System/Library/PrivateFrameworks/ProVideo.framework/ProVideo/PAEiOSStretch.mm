@interface PAEiOSStretch
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEiOSStretch)initWithAPIManager:(id)a3;
- (id)properties;
- (void)handleUIEventWithPosition:(CGPoint)a3 velocity:(CGPoint)a4 scale:(double)a5 scaleVelocity:(double)a6 rotation:(double)a7 rotationVelocity:(double)a8;
@end

@implementation PAEiOSStretch

- (PAEiOSStretch)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEiOSStretch;
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
  v6.receiver = self;
  v6.super_class = PAEiOSStretch;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"iOSStretch::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"iOSStretch::Size" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:400.0 parmFlags:{0.0, 1000.0, 1.0, 1000.0, 1.0}];
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
    [v11 setFloatValue:2 toParm:&v13 atFxTime:a5 * 400.0];
    [v12 setXValue:1 YValue:&v13 toParm:x atFxTime:y];
  }
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = v7;
  if (v7)
  {
    v26 = 0.5;
    v27 = 0.5;
    [v7 getXValue:&v27 YValue:&v26 fromParm:1 atFxTime:a5->var0.var1];
    v9 = v27 + -0.5;
    v27 = v9 * [a4 width];
    v10 = v26 + -0.5;
    v26 = v10 * [a4 height];
    v25 = 100.0;
    [v8 getFloatValue:&v25 fromParm:2 atFxTime:a5->var0.var1];
    v11 = v25;
    v12 = hypot(v25, v25);
    if (v11 == 0.0)
    {
      hypot([a4 width], objc_msgSend(a4, "height"));
    }

    v13 = HGObject::operator new(0x1D0uLL);
    HGTextureWrap::HGTextureWrap(v13);
    (*(*v13 + 120))(v13, 0, [a4 heliumNode]);
    HGTextureWrap::SetTextureWrapMode(v13, 2, v14);
    v15 = HGObject::operator new(0x1A0uLL);
    HGCrop::HGCrop(v15);
    v16 = [a4 width];
    v17 = [a4 height];
    v18 = [a4 width];
    v19 = [a4 height];
    v20 = HGRectMake4i(-v16, -v17, (v18 + v18), (v19 + v19));
    (*(*v15 + 96))(v15, 0, v20, SHIDWORD(v20), v21, v22);
    (*(*v15 + 120))(v15, 0, v13);
    v23 = HGObject::operator new(0x1A0uLL);
    HgciOSStretch::HgciOSStretch(v23);
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