@interface PAEWave
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEWave)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
- (void)dealloc;
@end

@implementation PAEWave

- (PAEWave)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEWave;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEWave;
  [(PAESharedDefaultBase *)&v2 dealloc];
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

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v9 = 0.0;
  if ([-[PAEFilterDefaultBase getParamAPIWithError:](self getParamAPIWithError:{error), "getFloatValue:fromParm:atFxTime:", &v9, 1, time.var1}])
  {
    if (v9 == 0.0)
    {
      v6 = 6;
    }

    else
    {
      v6 = 1;
    }

    return [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v6, v9), @"PixelTransformSupport", 0}];
  }

  else if (error)
  {
    v8 = [(PAEFilterDefaultBase *)self getParamErrorFor:@"PAEWave"];
    result = 0;
    *error = v8;
  }

  else
  {
    return 0;
  }

  return result;
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEWave;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Wave::Amplitude" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:10.0 parmFlags:{0.0, 500.0, 0.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Wave::Wave Length" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:100.0 parmFlags:{1.0, 500.0, 1.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Wave::Offset" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:100.0 parmFlags:{-500.0, 500.0, -500.0, 500.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Wave::Vertical" parmFlags:{0, 0), 4, 0, 1}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Wave::Repeat Edges" parmFlags:{0, 0), 5, 1, 33}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!v9)
  {
LABEL_11:
    LOBYTE(v11) = 1;
    return v11;
  }

  v10 = v9;
  v29 = 0.0;
  v30[0] = 0.0;
  v28 = 0.0;
  v27 = 0;
  [v9 getFloatValue:v30 fromParm:1 atFxTime:info->var0.var1];
  if (v30[0] == 0.0)
  {
    if (input)
    {
      [input heliumRef];
    }

    else
    {
      v21[0] = 0.0;
    }

    [output setHeliumRef:v21];
    if (*&v21[0])
    {
      (*(**&v21[0] + 24))(*&v21[0]);
    }

    goto LABEL_11;
  }

  [v10 getFloatValue:&v29 fromParm:2 atFxTime:{info->var0.var1, v30[0]}];
  [v10 getFloatValue:&v28 fromParm:3 atFxTime:info->var0.var1];
  [v10 getBoolValue:&v27 + 1 fromParm:4 atFxTime:info->var0.var1];
  [v10 getBoolValue:&v27 fromParm:5 atFxTime:info->var0.var1];
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  if (input)
  {
    [input imageInfo];
    if (*(&v24 + 1) == 2)
    {
      v28 = -v28;
    }
  }

  [input width];
  [input height];
  v12 = v29;
  if (v29 == 0.0)
  {
    v29 = 1.0;
  }

  [(PAESharedDefaultBase *)self getPixelTransformForImage:input, v12];
  v29 = fabs(v21[5]) * v29;
  v30[0] = fabs(v21[0]) * v30[0];
  v11 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
  if (v11)
  {
    if ([input imageType] == 3)
    {
      if (input)
      {
        [input heliumRef];
      }

      else
      {
        v20 = 0;
      }

      [(PAESharedDefaultBase *)self getImageBoundary:input];
      v19[0] = vcvtq_f64_f32(v17);
      v19[1] = vcvtq_f64_f32(v18);
      if (PCMatrix44Tmpl<double>::transformRect<double>(v21, v19, v19))
      {
        v16 = v20;
        if (v20)
        {
          (*(*v20 + 16))(v20);
        }

        [(PAESharedDefaultBase *)self changeDOD:&v16 withRect:v19];
        v13 = v17;
        if (v20 == v17)
        {
          if (v20)
          {
            (*(*v17 + 24))(v17);
          }
        }

        else
        {
          if (v20)
          {
            (*(*v20 + 24))();
            v13 = v17;
          }

          v20 = v13;
          v17 = 0;
        }

        if (v16)
        {
          (*(*v16 + 24))(v16);
        }

        [input width];
        [input height];
        [output width];
        [output height];
        [output width];
        [output height];
        v14 = HGObject::operator new(0x1A0uLL);
        HgcWave::HgcWave(v14);
      }

      if (v20)
      {
        (*(*v20 + 24))(v20);
      }
    }

    LOBYTE(v11) = 0;
  }

  return v11;
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