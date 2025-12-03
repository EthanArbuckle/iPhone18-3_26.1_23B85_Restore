@interface PAEGradientBlur
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAEGradientBlur)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
@end

@implementation PAEGradientBlur

- (PAEGradientBlur)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEGradientBlur;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:0];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"SupportsHeliumRendering", v5, @"MayRemapTime", v6, @"SupportsLargeRenderScale", v7, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v7 = [(PAEFilterDefaultBase *)self getParamAPIWithError:error];
  v13 = 0.0;
  if ([v7 getFloatValue:&v13 fromParm:3 atFxTime:time.var1] & 1) != 0 && (v12 = 0, (objc_msgSend(v7, "getBoolValue:fromParm:atFxTime:", &v12, 4, time.var1)))
  {
    if (v12 & 1 | (v13 != 0.0))
    {
      v8 = 3;
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
  v6.receiver = self;
  v6.super_class = PAEGradientBlur;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"GradientBlur::Point 1" defaultY:0 parmFlags:{0), 1, 0, 0.0, 0.0}];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"GradientBlur::Point 2" defaultY:0 parmFlags:{0), 2, 0, 0.67, 0.67}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"GradientBlur::Amount" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:10.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"GradientBlur::Crop" parmFlags:{0, 0), 4, 1, 1}];
  }

  return v3 != 0;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v10 && (v11 = v10, v16 = 0, [v10 getBoolValue:&v16 fromParm:4 atFxTime:info->var0.var1], (v16 & 1) == 0))
  {
    v15 = 0.0;
    [v11 getFloatValue:&v15 fromParm:3 atFxTime:info->var0.var1];
    v13 = v15 + v15;
    *width = (v15 + v15 + input->var0);
    var1 = (v13 + input->var1);
  }

  else
  {
    *width = input->var0;
    var1 = input->var1;
  }

  *height = var1;
  return 1;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    v49 = 10.0;
    v48 = 1;
    [v9 getFloatValue:&v49 fromParm:3 atFxTime:info->var0.var1];
    if (v49 == 0.0)
    {
      if (input)
      {
        [input heliumRef];
      }

      else
      {
        v45[0] = 0;
      }

      [output setHeliumRef:v45];
      if (v45[0])
      {
        (*(*v45[0] + 24))(v45[0]);
      }

LABEL_18:
      LOBYTE(v9) = 1;
      return v9;
    }

    v47 = 0uLL;
    [v10 getXValue:&v47 YValue:&v47.u32[2] fromParm:1 atFxTime:{info->var0.var1, v49}];
    v46 = vdupq_n_s64(0x3FE570A3D70A3D71uLL);
    [v10 getXValue:&v46 YValue:&v46.u64[1] fromParm:2 atFxTime:info->var0.var1];
    [v10 getBoolValue:&v48 fromParm:4 atFxTime:info->var0.var1];
    [(PAESharedDefaultBase *)self getPixelTransformForImage:input];
    [(PAESharedDefaultBase *)self getInversePixelTransformForImage:output];
    v11 = *v45;
    v12 = *&v45[5];
    [(PAESharedDefaultBase *)self convertRelativeToPixelCoordinates:&v47 withImage:output];
    v47 = v52;
    [(PAESharedDefaultBase *)self convertRelativeToPixelCoordinates:&v46 withImage:output];
    v46 = v52;
    if (v49 == 0.0)
    {
      if (input)
      {
        [input heliumRef];
      }

      else
      {
        v52.i64[0] = 0;
      }

      [output setHeliumRef:&v52];
      if (v52.i64[0])
      {
        (*(*v52.i64[0] + 24))(v52.i64[0]);
      }

      goto LABEL_18;
    }

    LODWORD(v9) = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1, v49];
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
          v44 = 0;
        }

        if (v48 == 1)
        {
          v43 = v44;
          if (v44)
          {
            (*(*v44 + 16))(v44);
          }

          [(PAESharedDefaultBase *)self smear:&v43 fromImage:input toImage:input];
          v13 = v52.i64[0];
          if (v44 == v52.i64[0])
          {
            if (v44)
            {
              (*(*v52.i64[0] + 24))(v52.i64[0]);
            }
          }

          else
          {
            if (v44)
            {
              (*(*v44 + 24))();
              v13 = v52.i64[0];
            }

            v44 = v13;
            v52.i64[0] = 0;
          }

          if (v43)
          {
            (*(*v43 + 24))(v43);
          }
        }

        v14 = v47;
        v15 = v46;
        v16 = HGObject::operator new(0x1A0uLL);
        HgcGradientBlur2::HgcGradientBlur2(v16);
        v17 = 1.0 / sqrt((*v14.i64 - *v15.i64) * (*v14.i64 - *v15.i64) + (*&v14.i64[1] - *&v15.i64[1]) * (*&v14.i64[1] - *&v15.i64[1]));
        v18 = (*v14.i64 - *v15.i64) * v17;
        v19 = (*&v14.i64[1] - *&v15.i64[1]) * v17;
        v20 = v18;
        v21 = v19;
        *&v18 = *v15.i64 * v18 + *&v15.i64[1] * v19;
        v22 = -*&v18;
        (*(*v16 + 96))(v16, 1, v20, v21, 0.0, -*&v18);
        *&v17 = v17;
        (*(*v16 + 96))(v16, 2, *&v17, 0.0, 0.0, 0.0);
        v23 = HGObject::operator new(0x1A0uLL);
        HgcGradientBlur2::HgcGradientBlur2(v23);
        (*(*v23 + 96))(v23, 1, v20, v21, 0.0, v22);
        (*(*v23 + 96))(v23, 2, *&v17, 0.0, 0.0, 0.0);
        v24 = v11;
        v25 = v12;
        v49 = v49 * 2.7;
        v26 = v49 / 7.0;
        v27 = vmulq_n_f32(xmmword_260343430, v26);
        v28 = vmulq_n_f32(xmmword_260343820, v26);
        v52 = vmulq_n_f32(v27, v24);
        v53 = vmulq_n_f32(v28, v24);
        v50 = vmulq_n_f32(v27, v25);
        v51 = vmulq_n_f32(v28, v25);
        v29 = v44;
        v30 = HGObject::operator new(0x70uLL);
        HGBlurGroup::HGBlurGroup(v30, v29, 0);
        HGBlurGroup::setBlurValues(v30, v52.f32, v50.f32, 5);
        (*(*v16 + 96))(v16, 0, 0.0, 0.0, 0.0, 0.0);
        v31 = HGBlurGroup::level(v30, 0);
        (*(*v16 + 120))(v16, 0, v31);
        v32 = HGBlurGroup::level(v30, 1u);
        (*(*v16 + 120))(v16, 1, v32);
        v33 = HGBlurGroup::level(v30, 2u);
        (*(*v16 + 120))(v16, 2, v33);
        v34 = HGBlurGroup::level(v30, 3u);
        (*(*v16 + 120))(v16, 3, v34);
        v35 = HGBlurGroup::level(v30, 4u);
        (*(*v16 + 120))(v16, 4, v35);
        if (v30)
        {
          (*(*v30 + 24))(v30);
        }

        v36 = v44;
        v37 = HGObject::operator new(0x70uLL);
        HGBlurGroup::HGBlurGroup(v37, v36, 0);
        HGBlurGroup::setBlurValues(v37, v53.f32, v51.f32, 4);
        (*(*v23 + 96))(v23, 0, 1.0, 0.0, 0.0, 0.0);
        (*(*v23 + 120))(v23, 0, v16);
        v38 = HGBlurGroup::level(v37, 0);
        (*(*v23 + 120))(v23, 1, v38);
        v39 = HGBlurGroup::level(v37, 1u);
        (*(*v23 + 120))(v23, 2, v39);
        v40 = HGBlurGroup::level(v37, 2u);
        (*(*v23 + 120))(v23, 3, v40);
        v41 = HGBlurGroup::level(v37, 3u);
        (*(*v23 + 120))(v23, 4, v41);
        if (v37)
        {
          (*(*v37 + 24))(v37);
        }

        v52.i64[0] = v23;
        (*(*v23 + 16))(v23);
        if (v48 == 1)
        {
          [(PAESharedDefaultBase *)self crop:&v52 fromImage:input toImage:output];
        }

        [output setHeliumRef:{&v52, v43}];
        if (v52.i64[0])
        {
          (*(*v52.i64[0] + 24))(v52.i64[0]);
        }

        (*(*v23 + 24))(v23);
        (*(*v16 + 24))(v16);
        if (v44)
        {
          (*(*v44 + 24))(v44);
        }

        goto LABEL_18;
      }

      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 1;
  v6 = *&setup->var2;
  v8[0] = *&setup->var0.var0;
  v8[1] = v6;
  v8[2] = *&setup->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:hardware software:software];
  return 1;
}

@end