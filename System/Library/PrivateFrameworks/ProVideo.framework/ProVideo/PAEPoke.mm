@interface PAEPoke
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEPoke)initWithAPIManager:(id)manager;
- (id)properties;
- (void)handleUIEventWithPosition:(CGPoint)position velocity:(CGPoint)velocity scale:(double)scale scaleVelocity:(double)scaleVelocity rotation:(double)rotation rotationVelocity:(double)rotationVelocity;
@end

@implementation PAEPoke

- (PAEPoke)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEPoke;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
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
    [rotationVelocity setFloatValue:3 toParm:&v13 atFxTime:scale * 0.5];
    [v12 setXValue:1 YValue:&v13 toParm:x atFxTime:y];
  }
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

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v8)
  {
    v9 = v8;
    [(PAESharedDefaultBase *)self getPixelTransformForImage:input];
    __asm { FMOV            V0.2D, #0.5 }

    v22 = _Q0;
    [v9 getXValue:&v22 YValue:&v22 + 8 fromParm:1 atFxTime:info->var0.var1];
    v21 = 300.0;
    [v9 getFloatValue:&v21 fromParm:2 atFxTime:info->var0.var1];
    v15 = v21;
    if (v21 < 0.00001)
    {
      v15 = 0.00001;
    }

    v21 = v15;
    v20 = 0x3FE0000000000000;
    [v9 getFloatValue:&v20 fromParm:3 atFxTime:info->var0.var1];
    v16 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
    [(PAESharedDefaultBase *)self convertRelativeToImageCoordinates:&v22 withImage:input];
    v22 = v19;
    if (v16 && [input imageType] == 3)
    {
      v17 = HGObject::operator new(0x2A0uLL);
      HPoke::HPoke(v17);
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

@end