@interface PAEiOSTwirl
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAEiOSTwirl)initWithAPIManager:(id)manager;
- (id)properties;
- (void)handleUIEventWithPosition:(CGPoint)position velocity:(CGPoint)velocity scale:(double)scale scaleVelocity:(double)scaleVelocity rotation:(double)rotation rotationVelocity:(double)rotationVelocity;
@end

@implementation PAEiOSTwirl

- (PAEiOSTwirl)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEiOSTwirl;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
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

- (void)handleUIEventWithPosition:(CGPoint)position velocity:(CGPoint)velocity scale:(double)scale scaleVelocity:(double)scaleVelocity rotation:(double)rotation rotationVelocity:(double)rotationVelocity
{
  y = position.y;
  x = position.x;
  rotationVelocity = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448, position.x, position.y, velocity.x, velocity.y, scale, scaleVelocity, rotation, rotationVelocity];
  if (rotationVelocity)
  {
    v13 = rotationVelocity;
    v14 = *MEMORY[0x277CC08F0];
    v15 = *(MEMORY[0x277CC08F0] + 16);
    [rotationVelocity setFloatValue:2 toParm:&v14 atFxTime:scale * 300.0];
    [v13 setFloatValue:3 toParm:&v14 atFxTime:-rotation];
    [v13 setXValue:1 YValue:&v14 toParm:x atFxTime:y];
  }
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v11 = 0;
  if (v10 && width && height)
  {
    v16 = 0.0;
    [v10 getFloatValue:&v16 fromParm:2 atFxTime:info->var0.var1];
    var1 = input->var1;
    v13 = v16 * input->var0;
    v14 = 2 * vcvtps_s32_f32(v13);
    *width = input->var0 + v14;
    *height = var1 + v14;
    return 1;
  }

  return v11;
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

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = v7;
  if (v7)
  {
    v17 = 0.5;
    v18 = 0.5;
    [v7 getXValue:&v18 YValue:&v17 fromParm:1 atFxTime:info->var0.var1];
    v9 = v18 + -0.5;
    v18 = v9 * [input width];
    v10 = v17 + -0.5;
    v17 = v10 * [input height];
    v16 = 0x4072C00000000000;
    [v8 getFloatValue:&v16 fromParm:2 atFxTime:info->var0.var1];
    v15 = 0x400921FB54442D18;
    [v8 getFloatValue:&v15 fromParm:3 atFxTime:info->var0.var1];
    v11 = HGObject::operator new(0x1D0uLL);
    HGTextureWrap::HGTextureWrap(v11);
    (*(*v11 + 120))(v11, 0, [input heliumNode]);
    HGTextureWrap::SetTextureWrapMode(v11, 2, v12);
    v13 = HGObject::operator new(0x1A0uLL);
    HgciOSTwirl::HgciOSTwirl(v13);
  }

  return 0;
}

@end