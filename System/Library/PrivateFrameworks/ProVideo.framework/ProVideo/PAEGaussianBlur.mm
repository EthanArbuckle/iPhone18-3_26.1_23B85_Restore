@interface PAEGaussianBlur
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAEGaussianBlur)initWithAPIManager:(id)manager;
- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error;
- (id)properties;
- (void)filteredEdges:(BOOL *)edges withInfo:(id *)info;
@end

@implementation PAEGaussianBlur

- (PAEGaussianBlur)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEGaussianBlur;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  if ([PAEGaussianBlur properties]::once != -1)
  {
    [PAEGaussianBlur properties];
  }

  return [PAEGaussianBlur properties]::sProps;
}

uint64_t __29__PAEGaussianBlur_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  result = [v0 initWithObjectsAndKeys:{v1, @"MayRemapTime", v2, @"SupportsHeliumRendering", v3, @"InputSizeLimit", v4, @"UsesRationalTime", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", 3), @"AutoColorProcessingSupport", 0}];
  [PAEGaussianBlur properties]::sProps = result;
  return result;
}

- (id)dynamicPropertiesAtTime:(id)time withError:(id *)error
{
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!v6)
  {
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Unable to retrieve FxParameterRetrievalAPI object", *MEMORY[0x277CCA450], 0}];
    if (error)
    {
      v13 = v12;
      v14 = MEMORY[0x277CCA9B8];
      v15 = FxPlugErrorDomain;
      v16 = 100001;
LABEL_12:
      v18 = [v14 errorWithDomain:v15 code:v16 userInfo:v13];
      result = 0;
      *error = v18;
      return result;
    }

    return 0;
  }

  v7 = v6;
  v26 = 0;
  v25 = 0;
  if (![v6 getBoolValue:&v26 fromParm:4 atFxTime:time.var1])
  {
    v24 = 0.0;
    goto LABEL_10;
  }

  v8 = [v7 getBoolValue:&v25 fromParm:6 atFxTime:time.var1];
  v26 &= v25 ^ 1;
  v24 = 0.0;
  if (!v8 || ([v7 getFloatValue:&v24 fromParm:1 atFxTime:time.var1] & 1) == 0)
  {
LABEL_10:
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Unable to retrieve a parameter in [-PAEGaussianBlur dynamicPropertiesAtTime:withError:]", *MEMORY[0x277CCA450], 0}];
    if (error)
    {
      v13 = v17;
      v14 = MEMORY[0x277CCA9B8];
      v15 = FxPlugErrorDomain;
      v16 = 100002;
      goto LABEL_12;
    }

    return 0;
  }

  v9 = v26;
  v10 = 3;
  if (v26)
  {
    v11 = 0;
  }

  else
  {
    if (v25 & 1 | (v24 != 0.0))
    {
      v10 = 3;
    }

    else
    {
      v10 = 6;
    }

    v11 = v25 ^ 1;
  }

  v20 = MEMORY[0x277CBEAC0];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:v11 & 1];
  v22 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:(v25 & 1) == 0];
  return [v20 dictionaryWithObjectsAndKeys:{v21, @"PositionIndependent", v22, @"PixelTransformSupport", v23, @"SupportsLargeRenderScale", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", v9 ^ 1u), @"SupportsStableAnimation", 0}];
}

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAEGaussianBlur;
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
    v7 = [v4 versionAtCreation] < 2;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"GaussianBlur::Amount" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:4.0 parmFlags:{0.0, dbl_260343740[v7], 0.0, 64.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"GaussianBlur::Horizontal" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"GaussianBlur::Vertical" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"GaussianBlur::Crop" parmFlags:{0, 0), 4, 0, 33}];
    [v3 addToggleButtonWithName:@"Prescale Input" parmId:5 defaultValue:0 parmFlags:2];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"GaussianBlur::360 Blur" parmFlags:{0, 0), 6, 0, 1}];
  }

  return v6;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v11 = v10;
  if (v10)
  {
    v22 = 0;
    [v10 getBoolValue:&v22 fromParm:6 atFxTime:info->var0.var1];
    if (v22 == 1)
    {
      if (width)
      {
        *width = input->var0;
      }

      if (height)
      {
        var1 = input->var1;
LABEL_14:
        *height = var1;
      }
    }

    else
    {
      v21 = 0.0;
      [v11 getFloatValue:&v21 fromParm:1 atFxTime:info->var0.var1];
      v21 = v21 * 0.5;
      v20 = 0.0;
      [v11 getFloatValue:&v20 fromParm:2 atFxTime:info->var0.var1];
      v20 = v20 * 0.01;
      v19 = 0.0;
      [v11 getFloatValue:&v19 fromParm:3 atFxTime:info->var0.var1];
      v19 = v19 * 0.01;
      v18 = 0;
      [v11 getBoolValue:&v18 fromParm:4 atFxTime:info->var0.var1];
      var0 = input->var0;
      var1 = input->var1;
      if (v18 == 1)
      {
        if (width)
        {
          *width = var0;
        }
      }

      else
      {
        v14 = v21 + v21;
        v15 = v14;
        v16 = vcvtpd_s64_f64(v19 * v15);
        if (width)
        {
          *width = var0 + (2 * vcvtpd_s64_f64(v20 * v15));
        }

        var1 += (2 * v16);
      }

      if (height)
      {
        goto LABEL_14;
      }
    }
  }

  return v11 != 0;
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

  versionAtCreation = [v10 versionAtCreation];
  v14 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
  imageType = [input imageType];
  [(PAESharedDefaultBase *)self getScaleForImage:input];
  v17 = v41[1];
  v16 = v41[2];
  v41[0] = 0.0;
  [v9 getFloatValue:v41 fromParm:1 atFxTime:info->var0.var1];
  v40 = 0;
  [v9 getBoolValue:&v40 fromParm:5 atFxTime:info->var0.var1];
  if (v41[0] <= 0.0)
  {
    if (input)
    {
      [input heliumRef];
    }

    else
    {
      v39 = 0.0;
    }

    [output setHeliumRef:&v39];
    if (v39 != 0.0)
    {
      (*(**&v39 + 24))(*&v39);
    }

    return 1;
  }

  else
  {
    v41[0] = v41[0] * 0.5;
    v39 = 0.0;
    [v9 getFloatValue:&v39 fromParm:2 atFxTime:info->var0.var1];
    v39 = v17 * (v39 * 0.01);
    v38 = 0.0;
    [v9 getFloatValue:&v38 fromParm:3 atFxTime:info->var0.var1];
    v38 = v16 * (v38 * 0.01);
    if (v14)
    {
      v18 = imageType == 3;
    }

    else
    {
      v18 = 0;
    }

    v12 = v18;
    if (v18)
    {
      if (input)
      {
        [input heliumRef];
      }

      else
      {
        v37 = 0;
      }

      v36 = 0;
      [v9 getBoolValue:&v36 fromParm:4 atFxTime:info->var0.var1];
      if (v36 == 1)
      {
        v34 = v37;
        if (v37)
        {
          (*(*v37 + 16))(v37);
        }

        [(PAESharedDefaultBase *)self smear:&v34 fromImage:input toImage:input];
        v19 = v35;
        if (v37 == v35)
        {
          if (v37)
          {
            (*(*v35 + 24))(v35);
          }
        }

        else
        {
          if (v37)
          {
            (*(*v37 + 24))();
            v19 = v35;
          }

          v37 = v19;
          v35 = 0;
        }

        if (v34)
        {
          (*(*v34 + 24))(v34);
        }
      }

      v35 = 0;
      if (v40 == 1)
      {
        v32 = v37;
        if (v37)
        {
          (*(*v37 + 16))(v37);
        }

        HIDWORD(v20) = HIDWORD(v41[0]);
        *&v20 = v41[0];
        HIDWORD(v22) = HIDWORD(v38);
        HIDWORD(v21) = HIDWORD(v39);
        v23 = v39;
        v24 = v38;
        *v31 = v23;
        *&v31[1] = v24;
        LODWORD(v22) = 2139095039;
        LODWORD(v21) = 1.5;
        [(PAEFilterDefaultBase *)self makePrescaledBlurNode:&v32 radius:v31 withScale:v20 minInputScale:v21 maxInputScale:v22];
        if (v33)
        {
          v35 = v33;
          v33 = 0;
        }

        if (v32)
        {
          (*(*v32 + 24))(v32);
        }
      }

      else
      {
        v25 = HGObject::operator new(0x1B0uLL);
        HGaussianBlur::HGaussianBlur(v25);
        v26 = v41[0];
        v27 = v39;
        v28 = v38;
        HGaussianBlur::init(v25, v26, v27, v28, versionAtCreation == 0, info->var1 == 2, 0);
        (*(*v25 + 120))(v25, 0, v37);
        v29 = *v25;
        v35 = v25;
        (*(v29 + 16))(v25);
        (*(*v25 + 24))(v25);
      }

      if (v36 == 1)
      {
        [(PAESharedDefaultBase *)self crop:&v35 fromImage:input toImage:output];
      }

      [output setHeliumRef:&v35];
      if (v35)
      {
        (*(*v35 + 24))(v35);
      }

      if (v37)
      {
        (*(*v37 + 24))(v37);
      }
    }
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

- (void)filteredEdges:(BOOL *)edges withInfo:(id *)info
{
  info = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258, info];
  v8 = 0;
  v6 = *MEMORY[0x277CC08F0];
  v7 = *(MEMORY[0x277CC08F0] + 16);
  [info getBoolValue:&v8 fromParm:6 atFxTime:&v6];
  *edges = v8 ^ 1;
}

@end