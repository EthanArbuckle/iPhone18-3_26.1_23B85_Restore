@interface PAEColorize
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEColorize)initWithAPIManager:(id)manager;
- (id)properties;
- (void)dealloc;
@end

@implementation PAEColorize

- (PAEColorize)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEColorize;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEColorize;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  if ([PAEColorize properties]::once != -1)
  {
    [PAEColorize properties];
  }

  return [PAEColorize properties]::sPropertiesDict;
}

uint64_t __25__PAEColorize_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:65792];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:590080];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
  result = [v0 initWithObjectsAndKeys:{&unk_28732D520, @"PixelTransformSupport", v1, @"PixelIndependent", v2, @"PositionIndependent", v3, @"MayRemapTime", v4, @"SupportsLargeRenderScale", v5, @"SupportsHeliumRendering", v6, @"SDRWorkingSpace", v7, @"HDRWorkingSpace", v8, @"SupportsInternalMixing", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
  [PAEColorize properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v7.receiver = self;
  v7.super_class = PAEColorize;
  [(PAESharedDefaultBase *)&v7 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v4 addColorParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultRed:@"Colorize::RemapBlackTo" defaultGreen:0 defaultBlue:0) parmFlags:{1, 0, 0.0901960784, 0.0, 0.0}];
    [v4 addColorParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultRed:@"Colorize::RemapWhiteTo" defaultGreen:0 defaultBlue:0) parmFlags:{2, 0, 1.0, 0.811764706, 0.639215686}];
    [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Colorize::Intensity" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:1.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.05}];
    [v4 addToggleButtonWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Colorize::HDR In Rec. 709" parmFlags:{0, 0), 4, 0, 2}];
  }

  return 1;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  if (!v9)
  {
    return v9;
  }

  v10 = v9;
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
  if (!v9)
  {
    return v9;
  }

  v11 = v9;
  v12 = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
  if ([input imageType] != 3 && v12)
  {
    LOBYTE(v9) = 0;
    return v9;
  }

  v46 = 0.0;
  [v10 getFloatValue:&v46 fromParm:3 atFxTime:info->var0.var1];
  v45 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  [v10 getRedValue:&v45 greenValue:&v44 blueValue:&v43 fromParm:1 atFxTime:info->var0.var1];
  v41 = 0.0;
  v42 = 0.0;
  v40 = 0.0;
  [v10 getRedValue:&v42 greenValue:&v41 blueValue:&v40 fromParm:2 atFxTime:info->var0.var1];
  [v10 mixAmountAtTime:info->var0.var1];
  v14 = v13;
  v15 = [objc_msgSend(v11 colorMatrixFromDesiredRGBToYCbCrAtTime:{info->var0.var1), "matrix"}];
  v16 = *v15;
  v34 = *(v15 + 8);
  v39 = 0;
  [v10 getBoolValue:&v39 fromParm:4 atFxTime:info->var0.var1];
  v17 = [v11 colorPrimaries] == 1;
  v18 = v17 & v39;
  if (v18 == 1)
  {
    PCGetRec709LuminanceCoefficients(v38);
    v19 = *v38;
    v20.n128_u64[0] = *&v38[4];
    v35 = v20;
    convertRGBColor(&v45, &v44, &v43);
    convertRGBColor(&v42, &v41, &v40);
    if (input)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v19 = v16;
    v21.n128_u64[1] = *&v34.f64[1];
    v21.n128_u64[0] = vcvt_f32_f64(v34);
    v35 = v21;
    if (input)
    {
LABEL_8:
      [input heliumRef];
      if (!v18)
      {
        goto LABEL_18;
      }

LABEL_12:
      FxApplyColorConform(v38, &kPCNCLC_Rec2020, 1, &kPCNCLC_Rec709, 1, &v37);
      v22 = v37;
      if (*v38 == v37)
      {
        if (*v38)
        {
          (*(*v37 + 24))(v37);
        }
      }

      else
      {
        if (*v38)
        {
          (*(**v38 + 24))();
          v22 = v37;
        }

        *v38 = v22;
      }

      goto LABEL_18;
    }
  }

  *v38 = 0;
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_18:
  v23 = HGObject::operator new(0x1A0uLL);
  HgcColorize::HgcColorize(v23);
  (*(*v23 + 120))(v23, 0, *v38);
  v24 = v45;
  v25 = v44;
  v26 = v43;
  (*(*v23 + 96))(v23, 0, v24, v25, v26, 0.0);
  v27 = v42;
  v28 = v41;
  v29 = v40;
  (*(*v23 + 96))(v23, 1, v27, v28, v29, 0.0);
  v30 = v46;
  (*(*v23 + 96))(v23, 2, v30, 0.0, 0.0, 0.0);
  v31 = v14;
  (*(*v23 + 96))(v23, 3, v31, 0.0, 0.0, 0.0);
  (*(*v23 + 96))(v23, 4, v19, v35, *(v35.f64 + 1), 0.0);
  v37 = v23;
  (*(*v23 + 16))(v23);
  if (v18)
  {
    FxApplyColorConform(&v37, &kPCNCLC_Rec709, 1, &kPCNCLC_Rec2020, 1, &v36);
    v32 = v36;
    if (v37 == v36)
    {
      if (v37)
      {
        (*(*v36 + 24))(v36);
      }
    }

    else
    {
      if (v37)
      {
        (*(*v37 + 24))();
        v32 = v36;
      }

      v37 = v32;
    }
  }

  [output setHeliumRef:{&v37, *&v35}];
  if (v37)
  {
    (*(*v37 + 24))(v37);
  }

  (*(*v23 + 24))(v23);
  if (*v38)
  {
    (*(**v38 + 24))(*v38);
  }

  LOBYTE(v9) = 1;
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