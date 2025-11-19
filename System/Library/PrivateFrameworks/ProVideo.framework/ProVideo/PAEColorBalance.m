@interface PAEColorBalance
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEColorBalance)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEColorBalance

- (PAEColorBalance)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEColorBalance;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  if ([PAEColorBalance properties]::once != -1)
  {
    [PAEColorBalance properties];
  }

  return [PAEColorBalance properties]::sPropertiesDict;
}

uint64_t __29__PAEColorBalance_properties__block_invoke()
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
  result = [v0 initWithObjectsAndKeys:{&unk_28732D490, @"PixelTransformSupport", v1, @"PixelIndependent", v2, @"PositionIndependent", v3, @"MayRemapTime", v4, @"SupportsLargeRenderScale", v5, @"SupportsHeliumRendering", v6, @"SDRWorkingSpace", v7, @"HDRWorkingSpace", v8, @"SupportsInternalMixing", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
  [PAEColorBalance properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v11.receiver = self;
  v11.super_class = PAEColorBalance;
  [(PAESharedDefaultBase *)&v11 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  v6 = v5;
  if (v5)
  {
    v7 = [v4 versionAtCreation];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = v8;
    if (v7)
    {
      [v3 addColorParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultRed:@"ColorBalance::ShadowWhitePoint" defaultGreen:0 defaultBlue:0) parmFlags:{10, 1024, 0.5, 0.5, 0.5}];
      [v3 addColorParameterWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultRed:@"ColorBalance::MidWhitePoint" defaultGreen:0 defaultBlue:0) parmFlags:{11, 1024, 0.5, 0.5, 0.5}];
      [v3 addColorParameterWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultRed:@"ColorBalance::HighlightsWhitePoint" defaultGreen:0 defaultBlue:0) parmFlags:{12, 1024, 0.5, 0.5, 0.5}];
      [v3 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"ColorBalance::Boost" parameterMin:0 parameterMax:0) sliderMin:14 sliderMax:0 delta:0.0 parmFlags:{0.0, 4.0, 0.0, 4.0, 0.1}];
      [v3 addPopupMenuWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"Contrast::Clip" menuEntries:0 parmFlags:{0), 13, 0, objc_msgSend(objc_msgSend(v9, "localizedStringForKey:value:table:", @"Contrast::Clip Values", 0, 0), "componentsSeparatedByString:", @"|", 1}];
      [v3 addToggleButtonWithName:@"IOS Compatability Behavior" parmId:15 defaultValue:0 parmFlags:2];
      [v3 addToggleButtonWithName:@"ColorBalance::HDR In Rec. 709" parmId:16 defaultValue:0 parmFlags:2];
    }

    else
    {
      [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"ColorBalance::Shadow Red" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:0.0 parmFlags:{-1.0, 1.0, -1.0, 1.0, 0.01}];
      [v3 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"ColorBalance::Shadow Green" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.0 parmFlags:{-1.0, 1.0, -1.0, 1.0, 0.01}];
      [v3 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"ColorBalance::Shadow Blue" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.0 parmFlags:{-1.0, 1.0, -1.0, 1.0, 0.01}];
      [v3 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"ColorBalance::Midtone Red" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:0.0 parmFlags:{-1.0, 1.0, -1.0, 1.0, 0.01}];
      [v3 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"ColorBalance::Midtone Green" parameterMin:0 parameterMax:0) sliderMin:5 sliderMax:0 delta:0.0 parmFlags:{-1.0, 1.0, -1.0, 1.0, 0.01}];
      [v3 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"ColorBalance::Midtone Blue" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:0 delta:0.0 parmFlags:{-1.0, 1.0, -1.0, 1.0, 0.01}];
      [v3 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"ColorBalance::Highlight Red" parameterMin:0 parameterMax:0) sliderMin:7 sliderMax:0 delta:0.0 parmFlags:{-1.0, 1.0, -1.0, 1.0, 0.01}];
      [v3 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"ColorBalance::Highlight Green" parameterMin:0 parameterMax:0) sliderMin:8 sliderMax:0 delta:0.0 parmFlags:{-1.0, 1.0, -1.0, 1.0, 0.01}];
      [v3 addFloatSliderWithName:objc_msgSend(v9 parmId:"localizedStringForKey:value:table:" defaultValue:@"ColorBalance::Highlight Blue" parameterMin:0 parameterMax:0) sliderMin:9 sliderMax:0 delta:0.0 parmFlags:{-1.0, 1.0, -1.0, 1.0, 0.01}];
    }
  }

  return v6;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v64[1] = *MEMORY[0x277D85DE8];
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
    goto LABEL_23;
  }

  v56 = 1.0;
  v55 = 0;
  v54 = 0;
  v12 = [v10 versionAtCreation];
  if (v12)
  {
    [v9 getRedValue:&v62 greenValue:&v63 blueValue:v64 fromParm:10 atFxTime:a5->var0.var1];
    [v9 getRedValue:&v60 greenValue:&v60.f64[1] blueValue:&v61 fromParm:11 atFxTime:a5->var0.var1];
    v13 = vcvt_f32_f64(v60);
    __asm { FMOV            V2.2S, #1.0 }

    v60 = vcvtq_f64_f32(vbic_s8(vbsl_s8(vcgt_f32(v13, _D2), _D2, v13), vcltz_f32(v13)));
    v18 = v61;
    v19 = 1.0;
    if (v18 <= 1.0)
    {
      v19 = v61;
    }

    _NF = v18 < 0.0;
    v20 = 0.0;
    if (!_NF)
    {
      v20 = v19;
    }

    v61 = v20;
    [v9 getRedValue:&v57 greenValue:&v58 blueValue:&v59 fromParm:12 atFxTime:a5->var0.var1];
    [v9 getIntValue:&v54 fromParm:13 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v56 fromParm:14 atFxTime:a5->var0.var1];
    [v9 getBoolValue:&v55 fromParm:15 atFxTime:a5->var0.var1];
    v21 = 0.0;
    v22 = 0.5;
    v43 = 1.0;
    v23 = 1.0;
    v24 = 1.0;
    v25 = 0.5;
    v26 = 0.5;
    v27 = 0.0;
    v28 = 0.0;
  }

  else
  {
    [v9 getFloatValue:&v62 fromParm:1 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v63 fromParm:2 atFxTime:a5->var0.var1];
    [v9 getFloatValue:v64 fromParm:3 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v60 fromParm:4 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v60.f64[1] fromParm:5 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v61 fromParm:6 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v57 fromParm:7 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v58 fromParm:8 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v59 fromParm:9 atFxTime:a5->var0.var1];
    v28 = v62;
    v27 = v63;
    v21 = v64[0];
    v22 = v60.f64[0] + 0.5;
    v25 = v60.f64[1] + 0.5;
    v26 = v61 + 0.5;
    v29 = v57 + 1.0;
    v43 = v29;
    v23 = v58 + 1.0;
    v24 = v59 + 1.0;
  }

  [v9 mixAmountAtTime:a5->var0.var1];
  v44 = v30;
  v31 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
  if (v31)
  {
    if ([a4 imageType] == 3)
    {
      if (a4)
      {
        [a4 heliumRef];
        if (v12)
        {
LABEL_16:
          v32 = v54;
          v56 = v56 + 1.0;
          v52 = 0;
          [v9 getBoolValue:&v52 fromParm:16 atFxTime:a5->var0.var1];
          v33 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
          if (v33)
          {
            v50 = 0x100000001;
            v51 = 1;
            v48 = 0x100000009;
            v49 = 9;
            if ([v33 colorPrimaries] == 1)
            {
              if (v52 == 1)
              {
                FxApplyColorConform(&v53, &v48, 1, &v50, 1, &v47);
                v34 = v47;
                if (v53 == v47)
                {
                  if (v53)
                  {
                    (*(*v47 + 24))(v47);
                  }
                }

                else
                {
                  if (v53)
                  {
                    (*(*v53 + 24))();
                    v34 = v47;
                  }

                  v53 = v34;
                }
              }

              v37 = 1;
            }

            else
            {
              v37 = 0;
            }
          }

          else
          {
            v37 = 0;
            v50 = 0x100000001;
            v51 = 1;
            v48 = 0x100000009;
            v49 = 9;
          }

          v46 = v53;
          if (v53)
          {
            (*(*v53 + 16))(v53);
          }

          v38 = -1.0;
          if ((v32 & 0xFFFFFFFD) == 1)
          {
            v39 = -1.0;
          }

          else
          {
            v39 = 1.0;
          }

          if ((v32 & 0xFFFFFFFE) != 2)
          {
            v38 = 1.0;
          }

          *&v40 = createColorBalance(&v46, &v62, &v57, v60.f64, v55, &v47, v44, v39, v38, v56);
          if (v46)
          {
            (*(*v46 + 24))(v46, *&v40);
          }

          if (v37 && v52 == 1)
          {
            FxApplyColorConform(&v47, &v50, 1, &v48, 1, &v45);
            v41 = v45;
            if (v47 == v45)
            {
              if (v47)
              {
                (*(*v45 + 24))(v45);
              }
            }

            else
            {
              if (v47)
              {
                (*(*v47 + 24))();
                v41 = v45;
              }

              v47 = v41;
            }
          }

          [a3 setHeliumRef:{&v47, v40}];
          if (v47)
          {
            (*(*v47 + 24))(v47);
          }

LABEL_52:
          if (v53)
          {
            (*(*v53 + 24))(v53);
          }

          LOBYTE(v31) = 1;
          return v31;
        }
      }

      else
      {
        v53 = 0;
        if (v12)
        {
          goto LABEL_16;
        }
      }

      v35 = HGObject::operator new(0x1A0uLL);
      HgcChannelBalance::HgcChannelBalance(v35);
      v50 = v35;
      (*(*v35 + 96))(v35, 0, v28, v27, v21, 1.0);
      (*(*v35 + 96))(v35, 1, v22, v25, v26, 1.0);
      (*(*v35 + 96))(v35, 2, v43, v23, v24, 1.0);
      v36 = v44;
      (*(*v35 + 96))(v35, 3, v36, v36, v36, v36);
      (*(*v35 + 120))(v35, 0, v53);
      [a3 setHeliumRef:&v50];
      if (v50)
      {
        (*(*v50 + 24))(v50);
      }

      goto LABEL_52;
    }

LABEL_23:
    LOBYTE(v31) = 0;
  }

  return v31;
}

- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6
{
  *a6 = 0;
  *a5 = 0;
  v6 = *&a3->var2;
  v8[0] = *&a3->var0.var0;
  v8[1] = v6;
  v8[2] = *&a3->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:a5 software:a6];
  return 1;
}

@end