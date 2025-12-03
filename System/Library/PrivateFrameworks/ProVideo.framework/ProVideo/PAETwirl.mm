@interface PAETwirl
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAETwirl)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
@end

@implementation PAETwirl

- (PAETwirl)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAETwirl;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"PositionIndependent", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v7 = [(PAEFilterDefaultBase *)self getParamAPIWithError:error];
  v13 = 0.0;
  if ([v7 getFloatValue:&v13 fromParm:1 atFxTime:time.var1] & 1) != 0 && (v12 = 0, (objc_msgSend(v7, "getBoolValue:fromParm:atFxTime:", &v12, 4, time.var1)))
  {
    if (v12 & 1 | (v13 != 0.0))
    {
      v8 = 1;
    }

    else
    {
      v8 = 6;
    }

    return [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v8, v13), @"PixelTransformSupport", 0}];
  }

  else if (error)
  {
    v10 = objc_opt_class();
    v11 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v10)];
    result = 0;
    *error = v11;
  }

  else
  {
    return 0;
  }

  return result;
}

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAETwirl;
  [(PAESharedDefaultBase *)&v10 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    v7 = v4;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Twirl::Amount" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:0.5 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v3 addAngleSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Twirl::Twirl" parameterMin:0 parameterMax:0) parmFlags:{2, 0, 180.0, -12.5663706, 12.5663706}];
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"Twirl::Center" defaultY:0 parmFlags:{0), 3, 0, 0.5, 0.5}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Twirl::Crop" parmFlags:{0, 0), 4, objc_msgSend(v7, "versionAtCreation") < 3, 33}];
  }

  return v6;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  if (v10)
  {
    v11 = v10;
    LOBYTE(v10) = 0;
    if (width)
    {
      if (height)
      {
        v18 = 0.0;
        [v11 getFloatValue:&v18 fromParm:1 atFxTime:info->var0.var1];
        v17 = 0;
        [v11 getBoolValue:&v17 fromParm:4 atFxTime:info->var0.var1];
        var0 = input->var0;
        var1 = input->var1;
        if ((v17 & 1) == 0)
        {
          v14 = v18 * var0;
          v15 = 2 * vcvtps_s32_f32(v14);
          var0 += v15;
          var1 += v15;
        }

        *width = var0;
        *height = var1;
        LOBYTE(v10) = 1;
      }
    }
  }

  return v10;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v9)
  {
    _ZF = v10 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    goto LABEL_6;
  }

  v13 = v10;
  var1 = info->var0.var1;
  v33 = 0.0;
  [v9 getFloatValue:&v33 fromParm:1 atFxTime:var1];
  if (v33 == 0.0)
  {
    if (input)
    {
      [input heliumRef];
    }

    else
    {
      v31[0] = 0;
    }

    [output setHeliumRef:v31];
    if (v31[0])
    {
      (*(*v31[0] + 24))(v31[0]);
    }

    LOBYTE(v12) = 1;
    return v12;
  }

  versionAtCreation = [v13 versionAtCreation];
  v16 = versionAtCreation;
  v17 = versionAtCreation == 1 || versionAtCreation > 2;
  v18 = v17;
  v19 = v18 ? input : output;
  [v19 width];
  v32 = 0;
  [v9 getFloatValue:&v32 fromParm:2 atFxTime:var1];
  [(PAESharedDefaultBase *)self getInversePixelTransformForImage:output];
  __asm { FMOV            V0.2D, #0.5 }

  v30 = _Q0;
  [v9 getXValue:&v30 YValue:&v30 + 8 fromParm:3 atFxTime:var1];
  v24 = v16 == 1 ? output : input;
  [(PAESharedDefaultBase *)self convertRelativeToPixelCoordinates:&v30 withImage:v24];
  v30 = v29;
  v28 = 0;
  [v9 getBoolValue:&v28 fromParm:4 atFxTime:info->var0.var1];
  v25 = v18 ? output : input;
  if ([v25 imageType] != 3)
  {
LABEL_6:
    LOBYTE(v12) = 0;
    return v12;
  }

  v12 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
  if (v12)
  {
    if (input)
    {
      [input heliumRef];
    }

    else
    {
      *&v29 = 0;
    }

    v26 = HGObject::operator new(0x1C0uLL);
    HTwirl::HTwirl(v26);
  }

  return v12;
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