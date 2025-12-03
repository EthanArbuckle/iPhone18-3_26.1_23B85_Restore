@interface PAESharpen
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAESharpen)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
@end

@implementation PAESharpen

- (PAESharpen)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAESharpen;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"SupportsHeliumRendering", v5, @"MayRemapTime", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v7 = [(PAEFilterDefaultBase *)self getParamAPIWithError:error];
  v16 = 0.0;
  if ([v7 getFloatValue:&v16 fromParm:2 atFxTime:time.var1])
  {
    if (v16 == 0.0)
    {
      v8 = 6;
    }

    else
    {
      v8 = 1;
    }

    v15 = 0;
    [v7 getBoolValue:&v15 fromParm:3 atFxTime:{time.var1, v16}];
    v9 = v15;
    v10 = MEMORY[0x277CBEAC0];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v8];
    return [v10 dictionaryWithObjectsAndKeys:{v11, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", (v9 & 1) == 0), @"SupportsLargeRenderScale", 0}];
  }

  else if (error)
  {
    v13 = objc_opt_class();
    v14 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v13)];
    result = 0;
    *error = v14;
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
  v6.super_class = PAESharpen;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735DF10];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Sharpen::Intensity" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:1.0 parmFlags:{0.0, 2.0, 0.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Sharpen::Amount" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:2.5 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Sharpen::Equirect" parmFlags:{0, 0), 3, 0, 1}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Sharpen::Amount" parmFlags:{0, 0), 4, 0, 2}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
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

  v12 = v10;
  if ([input imageType] != 3)
  {
    return 0;
  }

  v46 = 2.5;
  [v9 getFloatValue:&v46 fromParm:2 atFxTime:info->var0.var1];
  if (v46 != 0.0)
  {
    versionAtCreation = [v12 versionAtCreation];
    [(PAESharedDefaultBase *)self getScaleForImage:input];
    v15 = v44;
    v16 = v45;
    v43 = 0x3FF0000000000000;
    [v9 getFloatValue:&v43 fromParm:1 atFxTime:info->var0.var1];
    v42 = 0;
    [v9 getBoolValue:&v42 fromParm:3 atFxTime:info->var0.var1];
    if (input)
    {
      [input heliumRef];
    }

    else
    {
      v41 = 0.0;
    }

    if (v42 == 1)
    {
      [(PAESharedDefaultBase *)self getInversePixelTransformForImage:output];
      [(PAESharedDefaultBase *)self getPixelTransformForImage:output];
      v17 = HGObject::operator new(0x1C0uLL);
      HGNode::HGNode(v17);
      *v17 = &unk_2871D9F38;
      *(v17 + 51) = 0;
      *(v17 + 52) = 0;
      *(v17 + 106) = 0;
      *(v17 + 54) = 0;
      *(v17 + 55) = 0;
      (*(*v17 + 120))(v17, 0, [input heliumNode]);
      v19 = v45;
      v18 = v46;
      v20 = v44;
      width = [input width];
      v22 = v38[0].f64[0];
      height = [input height];
      v24 = v18;
      v25 = v20;
      v26 = v19;
      v37[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v38[0]), v38[1]);
      v36 = vcvt_hight_f32_f64(vcvt_f32_f64(v39), v40);
      v35 = vcvt_hight_f32_f64(vcvt_f32_f64(v37[1]), v37[2]);
      v34 = vcvt_hight_f32_f64(vcvt_f32_f64(v37[3]), v37[4]);
      HEquirectGaussianBlur::init(v17, vcvtpd_s64_f64(fabs(v22) * width), vcvtpd_s64_f64(fabs(v39.f64[1]) * height), v37, &v36, &v35, &v34, v24, v25, v26);
      (*(*v17 + 16))(v17);
      (*(*v17 + 24))(v17);
    }

    else
    {
      v33 = v41;
      if (v41 != 0.0)
      {
        (*(**&v41 + 16))(COERCE_FLOAT64_T(*&v41));
      }

      [(PAESharedDefaultBase *)self smear:&v33 fromImage:input toImage:input];
      v27 = v38[0].f64[0];
      if (*&v41 == *&v38[0].f64[0])
      {
        if (v41 != 0.0)
        {
          (*(**&v38[0].f64[0] + 24))(*&v38[0].f64[0]);
        }
      }

      else
      {
        if (v41 != 0.0)
        {
          (*(**&v41 + 24))(COERCE_FLOAT64_T(*&v41));
          v27 = v38[0].f64[0];
        }

        v41 = v27;
        v38[0].f64[0] = 0.0;
      }

      if (v33 != 0.0)
      {
        (*(**&v33 + 24))(COERCE_FLOAT64_T(*&v33));
      }

      v28 = HGObject::operator new(0x1B0uLL);
      HGaussianBlur::HGaussianBlur(v28);
      v29 = v46;
      v30 = v15;
      v31 = v16;
      HGaussianBlur::init(v28, v29, v30, v31, versionAtCreation == 0, 0, 0);
      (*(*v28 + 120))(v28, 0, COERCE_FLOAT64_T(*&v41));
      (*(*v28 + 16))(v28);
      (*(*v28 + 24))(v28);
    }

    v32 = HGObject::operator new(0x1A0uLL);
    HgcSharpen::HgcSharpen(v32);
  }

  if (input)
  {
    [input heliumRef];
  }

  else
  {
    v38[0].f64[0] = 0.0;
  }

  [output setHeliumRef:v38];
  if (*&v38[0].f64[0])
  {
    (*(**&v38[0].f64[0] + 24))(*&v38[0].f64[0]);
  }

  return 1;
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