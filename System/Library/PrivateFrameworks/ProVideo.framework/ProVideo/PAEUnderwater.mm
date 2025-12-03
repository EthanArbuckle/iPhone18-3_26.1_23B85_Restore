@interface PAEUnderwater
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAEUnderwater)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
- (void)dealloc;
@end

@implementation PAEUnderwater

- (PAEUnderwater)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEUnderwater;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEUnderwater;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (BOOL)addParameters
{
  v11.receiver = self;
  v11.super_class = PAEUnderwater;
  [(PAESharedDefaultBase *)&v11 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  versionAtCreation = [v4 versionAtCreation];
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    v8 = versionAtCreation == 0;
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"Underwater::Size" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:2.0 parmFlags:{0.001, 100.0, 0.001, 10.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"Underwater::Speed" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.5 parmFlags:{0.0, 100.0, 0.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"Underwater::Refraction" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:100.0 parmFlags:{0.0, 1000.0, 0.0, 200.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"BumpMap::Repeat Edges" parmFlags:{0, 0), 6, v8, 0}];
  }

  return v7;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  if (width)
  {
    v6 = height == 0;
  }

  else
  {
    v6 = 1;
  }

  result = !v6;
  if (!v6)
  {
    *width = input->var0;
    *height = input->var1;
  }

  return result;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v45[19] = *MEMORY[0x277D85DE8];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return 0;
  }

  v44 = 0.0;
  [v9 getFloatValue:&v44 fromParm:3 atFxTime:info->var0.var1];
  if (v44 == 0.0)
  {
    if (input)
    {
      [input heliumRef];
    }

    else
    {
      v40[0] = 0;
    }

    [output setHeliumRef:v40];
    if (v40[0])
    {
      (*(*v40[0] + 24))(v40[0]);
    }

    return 1;
  }

  else
  {
    [input width];
    [input height];
    imageType = [output imageType];
    v14 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
    result = 0;
    if (v14 && imageType == 3)
    {
      [(PAESharedDefaultBase *)self getPixelTransformForImage:input];
      [(PAESharedDefaultBase *)self getInversePixelTransformForImage:input];
      v43 = 0.0;
      [v9 getFloatValue:&v43 fromParm:1 atFxTime:info->var0.var1];
      v43 = v43 * 0.1;
      v42 = 0.0;
      [v9 getFloatValue:&v42 fromParm:2 atFxTime:info->var0.var1];
      v41 = 0;
      [v9 getBoolValue:&v41 fromParm:6 atFxTime:info->var0.var1];
      v15 = 589505315;
      for (i = 1; i != 102; ++i)
      {
        v15 = ((v15 << 12) + 150889) % 0xAE529;
        v40[i] = v15;
      }

      [(PAESharedDefaultBase *)self secondsFromFxTime:info->var0.var1];
      v17 = 0;
      *&v18 = v18;
      v39 = v42 * *&v18;
      v19 = v45;
      v20 = 456248;
      v21 = 0.0;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
      while (1)
      {
        v25 = v40[v20 % 0x65 + 1];
        v40[v20 % 0x65 + 1] = ((v25 << 12) + 150889) % 0xAE529;
        v26 = (v25 / 714020.0) * 6.2832;
        v27 = v25 % 0x65;
        v28 = v40[v25 % 0x65 + 1];
        v40[v27 + 1] = ((v28 << 12) + 150889) % 0xAE529;
        v20 = v40[v28 % 0x65 + 1];
        v40[v28 % 0x65 + 1] = ((v20 << 12) + 150889) % 0xAE529;
        v29 = ((v28 / 714020.0) * 6.2832) + 0.0;
        v30 = vcvts_n_f32_u32(v17, 2uLL) + 1.0;
        v31 = ((1.0 / v30) * (((v20 / 714020.0) * 0.25) + 0.75)) * 0.25;
        v19[1] = v31;
        v32 = v23;
        v33 = v30 * v31;
        v34 = __sincosf_stret(v26 + 0.0);
        v35 = v34.__cosval * v33;
        v36 = v34.__sinval * v33;
        *(v19 - 2) = v34.__cosval * v33;
        *(v19 - 1) = v34.__sinval * v33;
        v37 = v39 * v30 + v29;
        *v19 = v37;
        v19 += 4;
        if ((v34.__cosval * v33) >= 0.0)
        {
          v23 = v32;
        }

        else
        {
          v23 = v32 + v35;
        }

        if (v35 >= 0.0)
        {
          v21 = v21 + v35;
        }

        if (v36 >= 0.0)
        {
          v22 = v22 + v36;
        }

        else
        {
          v24 = v24 + v36;
        }

        if (++v17 == 10)
        {
          v40[0] = v20;
          v38 = HGObject::operator new(0x1B0uLL);
          HUnderwaterRefractV2::HUnderwaterRefractV2(v38);
        }
      }
    }
  }

  return result;
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
  if ([-[PAEFilterDefaultBase getParamAPIWithError:](self getParamAPIWithError:{error), "getFloatValue:fromParm:atFxTime:", &v9, 3, time.var1}])
  {
    if (v9 == 0.0)
    {
      v6 = 6;
    }

    else
    {
      v6 = 3;
    }

    return [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v6, v9), @"PixelTransformSupport", 0}];
  }

  else if (error)
  {
    v8 = [(PAEFilterDefaultBase *)self getParamErrorFor:@"PAEUnderwater"];
    result = 0;
    *error = v8;
  }

  else
  {
    return 0;
  }

  return result;
}

@end