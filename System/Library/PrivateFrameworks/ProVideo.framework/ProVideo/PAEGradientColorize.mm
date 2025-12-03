@interface PAEGradientColorize
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEGradientColorize)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAEGradientColorize

- (PAEGradientColorize)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEGradientColorize;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:65792];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:590080];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{&unk_28732D400, @"PixelTransformSupport", v3, @"PixelIndependent", v4, @"PositionIndependent", v5, @"MayRemapTime", v6, @"SupportsLargeRenderScale", v7, @"SupportsHeliumRendering", v8, @"SDRWorkingSpace", v9, @"HDRWorkingSpace", v10, @"SupportsInternalMixing", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAEGradientColorize;
  [(PAESharedDefaultBase *)&v10 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735BCA0];
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
    [v7 addGradientWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" parmFlags:{@"GradientColorize::Gradient", 0, 0), 2989, 0}];
    [v3 addAngleSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"GradientColorize::Offset" parameterMin:0 parameterMax:0) parmFlags:{2, 0, 0.0, 0.0, 3141.59265}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"GradientColorize::Repeats" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:1.0 parmFlags:{0.001, 512.0, 1.0, 32.0, 1.0}];
    [v3 addPopupMenuWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"GradientColorize::Repeat Method" menuEntries:0 parmFlags:{0), 4, 1, objc_msgSend(objc_msgSend(v8, "localizedStringForKey:value:table:", @"GradientColorize::Repeat Method Entries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
    [v3 addPopupMenuWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"GradientColorize::Which Channel" menuEntries:0 parmFlags:{0), 5, 0, objc_msgSend(objc_msgSend(v8, "localizedStringForKey:value:table:", @"GradientColorize::Which Channel Entries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"GradientColorize::Saturation" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:0 delta:1.0 parmFlags:{0.0, 32.0, 0.0, 2.0, 0.1}];
  }

  return v6;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E548];
  v11 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
  v12 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v9)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || v11 == 0 || v12 == 0)
  {
    return 0;
  }

  versionAtCreation = [v12 versionAtCreation];
  v17 = HGRectMake4i(0, 0, 0x100u, 1u);
  v19 = v18;
  v20 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v20, v17, v19, 28);
  [v10 getGradientSamples:*(v20 + 10) numSamples:256 depth:4 fromParm:2989 atFxTime:info->var0.var1];
  v50 = 0.0;
  [v9 getFloatValue:&v50 fromParm:2 atFxTime:info->var0.var1];
  v50 = v50 / 6.28318531;
  v49 = 0.0;
  [v9 getFloatValue:&v49 fromParm:3 atFxTime:info->var0.var1];
  v48 = 0;
  [v9 getIntValue:&v48 fromParm:4 atFxTime:info->var0.var1];
  v47 = 0;
  [v9 getIntValue:&v47 fromParm:5 atFxTime:info->var0.var1];
  v46 = 0.0;
  [v9 getFloatValue:&v46 fromParm:6 atFxTime:info->var0.var1];
  [v9 mixAmountAtTime:info->var0.var1];
  v22 = v21;
  v23 = [objc_msgSend(v11 colorMatrixFromDesiredRGBToYCbCrAtTime:{info->var0.var1), "matrix"}];
  v24 = v23;
  if (v47 > 1)
  {
    if (v47 == 2)
    {
      v28 = 1.0;
      v25 = 0.0;
      v27 = 0.0;
LABEL_23:
      v26 = 0.0;
      goto LABEL_24;
    }

    if (v47 == 3)
    {
      v27 = 1.0;
      v25 = 0.0;
      goto LABEL_22;
    }

LABEL_19:
    v27 = 0.0;
    v25 = 1.0;
LABEL_22:
    v28 = 0.0;
    goto LABEL_23;
  }

  v25 = 0.0;
  if (v47)
  {
    v26 = 1.0;
    v27 = 0.0;
    v28 = 0.0;
    if (v47 == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v26 = *v23;
  v28 = v23[1];
  v27 = v23[2];
LABEL_24:
  v30 = v49;
  v29 = v50;
  if (-[PAESharedDefaultBase getRenderMode:](self, "getRenderMode:", info->var0.var1) && [input imageType] == 3)
  {
    if (input)
    {
      [input heliumRef];
    }

    else
    {
      v45 = 0;
    }

    v31 = HGObject::operator new(0x1A0uLL);
    HGradientColorize::HGradientColorize(v31);
    (*(*v31 + 96))(v31, 0, v26, v28, v27, v25);
    v32 = v30;
    v33 = v29 * v32;
    (*(*v31 + 96))(v31, 1, v32, v33, 0.0, 0.0);
    v34 = v22;
    (*(*v31 + 96))(v31, 7, v34, 0.0, 0.0, 0.0);
    v35.n128_u32[0] = 1.0;
    if (!v48)
    {
      v35.n128_f32[0] = -1.0;
    }

    (*(*v31 + 96))(v31, 2, v35, v35.n128_f32[0], v35.n128_f32[0], v35.n128_f32[0]);
    (*(*v31 + 96))(v31, 3, 256.0, 255.0, 0.0, 0.0);
    v36 = v46;
    (*(*v31 + 96))(v31, 4, v36, v36, v36, v36);
    v37 = *v24;
    v38 = v24[1];
    v39 = v24[2];
    (*(*v31 + 96))(v31, 5, 0.0, v37, v38, v39);
    v40.n128_u32[0] = 1.0;
    if (versionAtCreation >= 2)
    {
      v40.n128_f32[0] = 0.0;
    }

    (*(*v31 + 96))(v31, 6, v40, 0.0, 0.0, 0.0);
    v41 = HGObject::operator new(0x1F0uLL);
    HGBitmapLoader::HGBitmapLoader(v41, v20);
    (*(*v31 + 120))(v31, 0, v45);
    (*(*v31 + 120))(v31, 1, v41);
    v44 = v31;
    (*(*v31 + 16))(v31);
    [output setHeliumRef:&v44];
    if (v44)
    {
      (*(*v44 + 24))(v44);
    }

    if (v41)
    {
      (*(*v41 + 24))(v41);
    }

    (*(*v31 + 24))(v31);
    if (v45)
    {
      (*(*v45 + 24))(v45);
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  (*(*v20 + 24))(v20);
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