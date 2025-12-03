@interface PAETarget
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAETarget)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAETarget

- (PAETarget)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAETarget;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:0];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAETarget;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3 | [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"Target::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addAngleSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Target::Angle" parameterMin:0 parameterMax:0) parmFlags:{2, 0, 22.5, 0.0, 6.28318531}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Target::Crop" parmFlags:{0, 0), 3, 1, 33}];
  }

  return 1;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
LABEL_17:
    LOBYTE(v16) = 0;
    return v16;
  }

  [v9 versionAtCreation];
  width = [input width];
  height = [input height];
  var1 = info->var0.var1;
  v21 = 0.0;
  v22 = 0.0;
  [v8 getXValue:&v22 YValue:&v21 fromParm:1 atFxTime:var1];
  v14 = v22;
  v15 = -1.0;
  if (v22 < -1.0)
  {
    v14 = -1.0;
  }

  if (v14 > 2.0)
  {
    v14 = 2.0;
  }

  if (v21 >= -1.0)
  {
    v15 = v21;
  }

  if (v15 > 2.0)
  {
    v15 = 2.0;
  }

  v21 = v15 * height;
  v22 = v14 * width;
  v20 = 0.0;
  [v8 getFloatValue:&v20 fromParm:2 atFxTime:var1];
  v19 = 0;
  [v8 getBoolValue:&v19 fromParm:3 atFxTime:var1];
  [(PAESharedDefaultBase *)self getPixelTransformForImage:input];
  __sincos_stret(v20);
  v16 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
  if (v16)
  {
    if ([input imageType] == 3)
    {
      if (input)
      {
        [input heliumRef];
      }

      v17 = HGObject::operator new(0x1C0uLL);
      HgcTarget::HgcTarget(v17);
    }

    goto LABEL_17;
  }

  return v16;
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