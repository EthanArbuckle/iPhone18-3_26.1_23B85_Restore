@interface PAEMirror
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEMirror)initWithAPIManager:(id)manager;
- (id)properties;
- (void)handleUIEventWithPosition:(CGPoint)position velocity:(CGPoint)velocity scale:(double)scale scaleVelocity:(double)scaleVelocity rotation:(double)rotation rotationVelocity:(double)rotationVelocity;
@end

@implementation PAEMirror

- (PAEMirror)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEMirror;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
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
  v6.super_class = PAEMirror;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"Mirror::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addAngleSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Mirror::Angle" parameterMin:0 parameterMax:0) parmFlags:{2, 0, 0.0, 0.0, 6.28318531}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Mirror::Repeat Border Pixels" parmFlags:{0, 0), 3, 1, 33}];
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
    v11 = *MEMORY[0x277CC08F0];
    v12 = *(MEMORY[0x277CC08F0] + 16);
    [rotationVelocity setXValue:1 YValue:&v11 toParm:x atFxTime:y];
  }
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    v24 = 0;
    v25 = 0;
    v23 = 0.0;
    [v9 getXValue:&v25 YValue:&v24 fromParm:1 atFxTime:info->var0.var1];
    [v10 getFloatValue:&v23 fromParm:2 atFxTime:info->var0.var1];
    v22 = 0;
    [v10 getIntValue:&v22 fromParm:3 atFxTime:info->var0.var1];
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    if (output)
    {
      [output imageInfo];
      if (*(&v19 + 1))
      {
        v23 = -v23;
      }
    }

    LODWORD(v9) = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
    if (v9)
    {
      if ([input imageType] == 3)
      {
        if (input)
        {
          [input heliumRef];
        }

        else
        {
          v16 = 0;
        }

        if (v22)
        {
          v14 = v16;
          if (v16)
          {
            (*(*v16 + 16))(v16);
          }

          [(PAESharedDefaultBase *)self smear:&v14 fromImage:input toImage:input];
          v11 = v15;
          if (v16 == v15)
          {
            if (v16)
            {
              (*(*v15 + 24))(v15);
            }
          }

          else
          {
            if (v16)
            {
              (*(*v16 + 24))();
              v11 = v15;
            }

            v15 = 0;
            v16 = v11;
          }

          if (v14)
          {
            (*(*v14 + 24))(v14);
          }
        }

        __sincos_stret(v23);
        v12 = HGObject::operator new(0x1E0uLL);
        HMirror::HMirror(v12);
      }

      LOBYTE(v9) = 0;
    }
  }

  return v9;
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

@end