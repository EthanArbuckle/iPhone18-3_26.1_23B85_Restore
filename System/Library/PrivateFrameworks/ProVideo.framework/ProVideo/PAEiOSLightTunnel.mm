@interface PAEiOSLightTunnel
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEiOSLightTunnel)initWithAPIManager:(id)manager;
- (id)properties;
- (void)handleUIEventWithPosition:(CGPoint)position velocity:(CGPoint)velocity scale:(double)scale scaleVelocity:(double)scaleVelocity rotation:(double)rotation rotationVelocity:(double)rotationVelocity;
@end

@implementation PAEiOSLightTunnel

- (PAEiOSLightTunnel)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEiOSLightTunnel;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0), @"MayRemapTime", 0}];
}

- (BOOL)addParameters
{
  v9.receiver = self;
  v9.super_class = PAEiOSLightTunnel;
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
  [v4 addPointParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultX:@"iOSLightTunnel::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
  [v4 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"iOSLightTunnel::Radius" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:100.0 parmFlags:{1.0, 500.0, 1.0, 500.0, 1.0}];
  [v4 addAngleSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"iOSLightTunnel::Rotation" parameterMin:0 parameterMax:0) parmFlags:{3, 0, 0.0, 0.0, 6.28318531}];
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
    [rotationVelocity setFloatValue:2 toParm:&v14 atFxTime:scale * 100.0];
    [v13 setFloatValue:3 toParm:&v14 atFxTime:rotation];
    [v13 setXValue:1 YValue:&v14 toParm:x atFxTime:y];
  }
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = v7;
  if (v7)
  {
    v15 = 0.5;
    v16 = 0.5;
    [v7 getXValue:&v16 YValue:&v15 fromParm:1 atFxTime:info->var0.var1];
    v9 = v16 + -0.5;
    v16 = v9 * [input width];
    v10 = v15 + -0.5;
    v15 = v10 * [input height];
    v14 = 0x4059000000000000;
    [v8 getFloatValue:&v14 fromParm:2 atFxTime:info->var0.var1];
    v13 = 0;
    [v8 getFloatValue:&v13 fromParm:3 atFxTime:info->var0.var1];
    v11 = HGObject::operator new(0x1A0uLL);
    HgciOSLightTunnel::HgciOSLightTunnel(v11);
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