@interface PAEChannelBlur
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAEChannelBlur)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
@end

@implementation PAEChannelBlur

- (PAEChannelBlur)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEChannelBlur;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = v7;
  v16 = 0;
  if (!v7 || [v7 getBoolValue:&v16 + 1 fromParm:8 atFxTime:time.var1] && (objc_msgSend(v8, "getBoolValue:fromParm:atFxTime:", &v16, 9, time.var1) & 1) != 0)
  {
    v15 = 0.0;
    [v8 getFloatValue:&v15 fromParm:1 atFxTime:time.var1];
    v9 = MEMORY[0x277CBEAC0];
    v10 = (v16 & 0x100) == 0 && v16 != 1 || v15 == 0.0;
    v14 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    return [v9 dictionaryWithObjectsAndKeys:{v14, @"PositionIndependent", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", (v16 & 1) == 0), @"SupportsLargeRenderScale", 0}];
  }

  else if (error)
  {
    v11 = objc_opt_class();
    v12 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v11)];
    result = 0;
    *error = v12;
  }

  else
  {
    return 0;
  }

  return result;
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"SupportsHeliumRendering", v5, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAEChannelBlur;
  [(PAESharedDefaultBase *)&v10 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735DF10];
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
    v7 = [v4 versionAtCreation] < 2;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelBlur::Amount" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:4.0 parmFlags:{0.0, dbl_260343740[v7], 0.0, 64.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelBlur::Blur Red" parmFlags:{0, 0), 2, 1, 1}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelBlur::Blur Green" parmFlags:{0, 0), 3, 1, 1}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelBlur::Blur Blue" parmFlags:{0, 0), 4, 1, 1}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelBlur::Blur Alpha" parmFlags:{0, 0), 5, 1, 1}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelBlur::Horizontal" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:32 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelBlur::Vertical" parameterMin:0 parameterMax:0) sliderMin:7 sliderMax:32 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelBlur::Crop" parmFlags:{0, 0), 8, 0, 33}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ChannelBlur::Equirect" parmFlags:{0, 0), 9, 0, 1}];
  }

  return v6;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (width)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || height == 0;
  v13 = !v12;
  if (!v12)
  {
    v14 = v10;
    v24 = 0;
    [v10 getBoolValue:&v24 fromParm:9 atFxTime:info->var0.var1];
    if (v24 == 1)
    {
      *width = input->var0;
      *height = input->var1;
    }

    else
    {
      v23 = 0.0;
      [v14 getFloatValue:&v23 fromParm:1 atFxTime:info->var0.var1];
      v23 = v23 * 0.5;
      v22 = 0.0;
      [v14 getFloatValue:&v22 fromParm:6 atFxTime:info->var0.var1];
      v22 = v22 * 0.01;
      v21 = 0.0;
      [v14 getFloatValue:&v21 fromParm:7 atFxTime:info->var0.var1];
      v21 = v21 * 0.01;
      v20 = 0;
      [v14 getBoolValue:&v20 fromParm:8 atFxTime:info->var0.var1];
      v15 = *&input->var0;
      if ((v20 & 1) == 0)
      {
        v16.f64[0] = v22;
        v17 = v23 + v23;
        v16.f64[1] = v21;
        v18 = vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vmulq_n_f64(v16, v17))));
        v15 = vaddw_s32(v15, vadd_s32(v18, v18));
      }

      *width = v15.i64[0];
      *height = v15.u64[1];
    }
  }

  return v13;
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

  versionAtCreation = [v12 versionAtCreation];
  [(PAESharedDefaultBase *)self getScaleForImage:input];
  v14 = v56[1];
  v15 = v56[2];
  v56[0] = 0.0;
  [v9 getFloatValue:v56 fromParm:1 atFxTime:info->var0.var1];
  v56[0] = v56[0] * 0.5;
  v55 = 0.0;
  [v9 getFloatValue:&v55 fromParm:6 atFxTime:info->var0.var1];
  v55 = v14 * (v55 * 0.01);
  v54 = 0.0;
  [v9 getFloatValue:&v54 fromParm:7 atFxTime:info->var0.var1];
  v54 = v15 * (v54 * 0.01);
  v53 = 0;
  [v9 getBoolValue:&v53 fromParm:2 atFxTime:info->var0.var1];
  v52 = 0;
  [v9 getBoolValue:&v52 fromParm:3 atFxTime:info->var0.var1];
  v51 = 0;
  [v9 getBoolValue:&v51 fromParm:4 atFxTime:info->var0.var1];
  v50 = 0;
  [v9 getBoolValue:&v50 fromParm:5 atFxTime:info->var0.var1];
  v49 = 0;
  [v9 getBoolValue:&v49 fromParm:8 atFxTime:info->var0.var1];
  v48 = 0;
  [v9 getBoolValue:&v48 fromParm:9 atFxTime:info->var0.var1];
  if (input)
  {
    [input heliumRef];
  }

  else
  {
    v47 = 0;
  }

  if (v56[0] == 0.0)
  {
    [output setHeliumRef:{&v47, v56[0]}];
  }

  else
  {
    if (v48 == 1)
    {
      [(PAESharedDefaultBase *)self getInversePixelTransformForImage:output, v56[0]];
      [(PAESharedDefaultBase *)self getPixelTransformForImage:output];
      v17 = HGObject::operator new(0x1C0uLL);
      HGNode::HGNode(v17);
      *v17 = &unk_2871D9F38;
      *(v17 + 51) = 0;
      *(v17 + 52) = 0;
      *(v17 + 106) = 0;
      *(v17 + 54) = 0;
      *(v17 + 55) = 0;
      v18 = v55;
      v19 = v56[0];
      v20 = v54;
      width = [input width];
      v22 = v44[0].f64[0];
      height = [input height];
      v24 = v19;
      v25 = v18;
      v26 = v20;
      v43[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v44[0]), v44[1]);
      v42 = vcvt_hight_f32_f64(vcvt_f32_f64(v45), v46);
      v41 = vcvt_hight_f32_f64(vcvt_f32_f64(*(&v43[1] + 8)), *(&v43[2] + 8));
      v40 = vcvt_hight_f32_f64(vcvt_f32_f64(*(&v43[3] + 8)), *(&v43[4] + 8));
      HEquirectGaussianBlur::init(v17, vcvtpd_s64_f64(v22 * width), vcvtpd_s64_f64(vmuld_lane_f64(height, v45, 1)), v43, &v42, &v41, &v40, v24, v25, v26);
      (*(*v17 + 120))(v17, 0, v47);
      (*(*v17 + 16))(v17);
      (*(*v17 + 24))(v17);
    }

    else
    {
      v17 = HGObject::operator new(0x1B0uLL);
      HGaussianBlur::HGaussianBlur(v17);
      v27 = v56[0];
      v28 = v55;
      v29 = v54;
      HGaussianBlur::init(v17, v27, v28, v29, versionAtCreation == 0, 0, 0);
      (*(*v17 + 120))(v17, 0, v47);
      (*(*v17 + 16))(v17);
      (*(*v17 + 24))(v17);
    }

    if (v53)
    {
      v30 = 1.0;
    }

    else
    {
      v30 = 0.0;
    }

    if (v52)
    {
      v31 = 1.0;
    }

    else
    {
      v31 = 0.0;
    }

    if (v51)
    {
      v32 = 1.0;
    }

    else
    {
      v32 = 0.0;
    }

    if (v50)
    {
      v33 = 1.0;
    }

    else
    {
      v33 = 0.0;
    }

    v44[0].f64[0] = 0.0;
    if (v50)
    {
      v34 = HGObject::operator new(0x1A0uLL);
      HgcChannelBlurNoPremult::HgcChannelBlurNoPremult(v34);
    }

    else
    {
      v34 = HGObject::operator new(0x1A0uLL);
      HgcChannelBlur::HgcChannelBlur(v34);
    }

    if (v34)
    {
      *&v44[0].f64[0] = v34;
    }

    (*(*v34 + 120))(v34, 1, v17);
    (*(*v34 + 96))(v34, 0, v30, v31, v32, v33);
    (*(*v34 + 120))(v34, 0, v47);
    if ((v49 & 1) != 0 || v48 == 1)
    {
      v35 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v35);
      width2 = [input width];
      width3 = [input width];
      height2 = [input height];
      height3 = [input height];
      (*(*v35 + 120))(v35, 0, v34);
      (*(*v35 + 96))(v35, 0, (width2 / -2), (height2 / -2), (width2 / -2 + width3), (height2 / -2 + height3));
      if (v34 != v35)
      {
        (*(*v34 + 24))(v34);
        *&v44[0].f64[0] = v35;
        (*(*v35 + 16))(v35);
      }

      (*(*v35 + 24))(v35);
    }

    [output setHeliumRef:v44];
    if (*&v44[0].f64[0])
    {
      (*(**&v44[0].f64[0] + 24))(*&v44[0].f64[0]);
    }

    (*(*v17 + 24))(v17);
  }

  if (v47)
  {
    (*(*v47 + 24))(v47);
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