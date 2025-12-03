@interface PAEiOSStretch
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEiOSStretch)initWithAPIManager:(id)manager;
- (id)properties;
- (void)handleUIEventWithPosition:(CGPoint)position velocity:(CGPoint)velocity scale:(double)scale scaleVelocity:(double)scaleVelocity rotation:(double)rotation rotationVelocity:(double)rotationVelocity;
@end

@implementation PAEiOSStretch

- (PAEiOSStretch)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEiOSStretch;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
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

- (void)handleUIEventWithPosition:(CGPoint)position velocity:(CGPoint)velocity scale:(double)scale scaleVelocity:(double)scaleVelocity rotation:(double)rotation rotationVelocity:(double)rotationVelocity
{
  y = position.y;
  x = position.x;
  rotationVelocity = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448, position.x, position.y, velocity.x, velocity.y, scale, scaleVelocity, rotation, rotationVelocity];
  if (rotationVelocity)
  {
    v12 = rotationVelocity;
    v13 = *MEMORY[0x277CC08F0];
    v14 = *(MEMORY[0x277CC08F0] + 16);
    [rotationVelocity setFloatValue:2 toParm:&v13 atFxTime:scale * 400.0];
    [v12 setXValue:1 YValue:&v13 toParm:x atFxTime:y];
  }
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = v7;
  if (v7)
  {
    v26 = 0.5;
    v27 = 0.5;
    [v7 getXValue:&v27 YValue:&v26 fromParm:1 atFxTime:info->var0.var1];
    v9 = v27 + -0.5;
    v27 = v9 * [input width];
    v10 = v26 + -0.5;
    v26 = v10 * [input height];
    v25 = 100.0;
    [v8 getFloatValue:&v25 fromParm:2 atFxTime:info->var0.var1];
    v11 = v25;
    v12 = hypot(v25, v25);
    if (v11 == 0.0)
    {
      hypot([input width], objc_msgSend(input, "height"));
    }

    v13 = HGObject::operator new(0x1D0uLL);
    HGTextureWrap::HGTextureWrap(v13);
    (*(*v13 + 120))(v13, 0, [input heliumNode]);
    HGTextureWrap::SetTextureWrapMode(v13, 2, v14);
    v15 = HGObject::operator new(0x1A0uLL);
    HGCrop::HGCrop(v15);
    width = [input width];
    height = [input height];
    width2 = [input width];
    height2 = [input height];
    v20 = HGRectMake4i(-width, -height, (width2 + width2), (height2 + height2));
    (*(*v15 + 96))(v15, 0, v20, SHIDWORD(v20), v21, v22);
    (*(*v15 + 120))(v15, 0, v13);
    v23 = HGObject::operator new(0x1A0uLL);
    HgciOSStretch::HgciOSStretch(v23);
  }

  return 0;
}

- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software
{
  v6 = *&setup->var2;
  v8[0] = *&setup->var0.var0;
  v8[1] = v6;
  v8[2] = *&setup->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:hardware software:software];
  return 1;
}

@end