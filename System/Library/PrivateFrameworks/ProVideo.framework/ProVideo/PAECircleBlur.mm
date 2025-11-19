@interface PAECircleBlur
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6;
- (PAECircleBlur)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAECircleBlur

- (PAECircleBlur)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAECircleBlur;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:3];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"SupportsHeliumRendering", v5, @"MayRemapTime", v6, @"SupportsLargeRenderScale", v7, @"InputSizeLimit", v8, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAECircleBlur;
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
    v7 = [v4 versionAtCreation];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"CircleBlur::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"CircleBlur::Blur Amount" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:10.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"CircleBlur::Circle Radius" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:400.0 parmFlags:{0.0, dbl_260343760[v7 < 3], 0.0, dbl_260343770[v7 < 3], 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"CircleBlur::Crop" parmFlags:{0, 0), 4, 1, 1}];
  }

  return v6;
}

- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6
{
  v6 = self;
  LOBYTE(self) = 0;
  if (a3)
  {
    if (a4)
    {
      self = [(PROAPIAccessing *)v6->super.super._apiManager apiForProtocol:&unk_28735E258];
      if (self)
      {
        v11 = self;
        v15 = 0;
        [(PAECircleBlur *)self getBoolValue:&v15 fromParm:4 atFxTime:a6->var0.var1];
        v14 = 0.0;
        v12 = 0.0;
        if ((v15 & 1) == 0)
        {
          [(PAECircleBlur *)v11 getFloatValue:&v14 fromParm:2 atFxTime:a6->var0.var1, 0.0];
          v12 = v14 * 1.8 + v14 * 1.8;
        }

        *a3 = (v12 + a5->var0);
        *a4 = (v12 + a5->var1);
        LOBYTE(self) = 1;
      }
    }
  }

  return self;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v100 = *MEMORY[0x277D85DE8];
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

  v13 = [v10 versionAtCreation];
  [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a3];
  [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
  if (!v13)
  {
    v88.f64[0] = 1.0;
    *(&v90 + 1) = 0x3FF0000000000000;
  }

  v78 = 400.0;
  v79 = 10.0;
  v77 = 1;
  v76 = 0uLL;
  [v9 getXValue:&v76 YValue:&v76 + 8 fromParm:1 atFxTime:a5->var0.var1];
  if (v13 >= 2)
  {
    v14 = a4;
  }

  else
  {
    v14 = a3;
  }

  [(PAESharedDefaultBase *)self convertRelativeToImageCoordinates:&v76 withImage:v14];
  v76 = v75[0];
  [v9 getFloatValue:&v79 fromParm:2 atFxTime:a5->var0.var1];
  [v9 getFloatValue:&v78 fromParm:3 atFxTime:a5->var0.var1];
  [v9 getBoolValue:&v77 fromParm:4 atFxTime:a5->var0.var1];
  v15 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
  v16 = [a4 imageType];
  v75[5] = v85;
  v75[6] = v86;
  v75[7] = v87;
  v75[1] = v81;
  v75[2] = v82;
  v75[3] = v83;
  v75[4] = v84;
  v71 = v92;
  v72 = v93;
  v73 = v94;
  v74 = v95;
  v75[0] = v80;
  v67 = v88;
  v68 = v89;
  v69 = v90;
  v70 = v91;
  PCMatrix44Tmpl<double>::rightTranslate(v75, *&v76, *(&v76 + 1), 0.0);
  v17.f64[0] = -*&v76;
  PCMatrix44Tmpl<double>::leftTranslate(&v67, v17, -*(&v76 + 1), 0.0);
  if (v15)
  {
    v18 = v16 == 3;
  }

  else
  {
    v18 = 0;
  }

  v12 = v18;
  if (v18)
  {
    if (v79 == 0.0)
    {
      if (a4)
      {
        [a4 heliumRef];
      }

      else
      {
        v98[0] = 0;
      }

      [a3 setHeliumRef:v98];
      if (v98[0])
      {
        (*(*v98[0] + 24))(v98[0]);
      }
    }

    else
    {
      if (a4)
      {
        [a4 heliumRef];
      }

      else
      {
        v66 = 0;
      }

      if (v77 == 1)
      {
        v65 = v66;
        if (v66)
        {
          (*(*v66 + 16))(v66);
        }

        [(PAESharedDefaultBase *)self smear:&v65 fromImage:a4 toImage:a4];
        v19 = v98[0];
        if (v66 == v98[0])
        {
          if (v66)
          {
            (*(*v98[0] + 24))(v98[0]);
          }
        }

        else
        {
          if (v66)
          {
            (*(*v66 + 24))();
            v19 = v98[0];
          }

          v66 = v19;
          v98[0] = 0;
        }

        if (v65)
        {
          (*(*v65 + 24))(v65);
        }
      }

      v20 = 0;
      v21 = v79 * 2.7;
      v22 = vdupq_lane_s64(*&v67.f64[0], 0);
      v23 = vdupq_lane_s64(COERCE__INT64(fabs(*(&v69 + 1))), 0);
      v24 = v79 * 2.7 / 7.0;
      v25 = xmmword_260343780;
      v26.i64[0] = 0x400000004;
      v26.i64[1] = 0x400000004;
      do
      {
        v27 = vmulq_n_f32(vcvtq_f32_u32(v25), v24);
        v28 = vcvtq_f64_f32(*v27.f32);
        v29 = vcvt_hight_f64_f32(v27);
        *&v98[v20 / 2] = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v28, v22)), vdivq_f64(v29, v22));
        *&v96[v20] = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v28, v23)), vdivq_f64(v29, v23));
        v25 = vaddq_s32(v25, v26);
        v20 += 4;
      }

      while (v20 != 8);
      v79 = v21 * 7.0 / 100.0;
      v30 = HGObject::operator new(0x1A0uLL);
      HgcCircleBlur2::HgcCircleBlur2(v30);
      v31 = HGObject::operator new(0x1A0uLL);
      HgcCircleBlur2::HgcCircleBlur2(v31);
      v32 = 1.0 / v78;
      (*(*v30 + 96))(v30, 1, v32, 0.0, 0.0, 0.0);
      v33 = 1.0 / v78;
      (*(*v31 + 96))(v31, 1, v33, 0.0, 0.0, 0.0);
      v34 = v67.f64[0];
      v35 = v67.f64[1];
      v36 = *&v68;
      v37 = *(&v68 + 1);
      (*(*v30 + 96))(v30, 2, v34, v35, v36, v37);
      v38 = v67.f64[0];
      v39 = v67.f64[1];
      v40 = *&v68;
      v41 = *(&v68 + 1);
      (*(*v31 + 96))(v31, 2, v38, v39, v40, v41);
      v42 = *&v69;
      v43 = *(&v69 + 1);
      v44 = *&v70;
      v45 = *(&v70 + 1);
      (*(*v30 + 96))(v30, 3, v42, v43, v44, v45);
      v46 = *&v69;
      v47 = *(&v69 + 1);
      v48 = *&v70;
      v49 = *(&v70 + 1);
      (*(*v31 + 96))(v31, 3, v46, v47, v48, v49);
      v50 = v66;
      v51 = HGObject::operator new(0x70uLL);
      HGBlurGroup::HGBlurGroup(v51, v50, 0);
      HGBlurGroup::setBlurValues(v51, v98, v96, 5);
      (*(*v30 + 96))(v30, 0, 0.0, 0.0, 0.0, 0.0);
      v52 = HGBlurGroup::level(v51, 0);
      (*(*v30 + 120))(v30, 0, v52);
      v53 = HGBlurGroup::level(v51, 1u);
      (*(*v30 + 120))(v30, 1, v53);
      v54 = HGBlurGroup::level(v51, 2u);
      (*(*v30 + 120))(v30, 2, v54);
      v55 = HGBlurGroup::level(v51, 3u);
      (*(*v30 + 120))(v30, 3, v55);
      v56 = HGBlurGroup::level(v51, 4u);
      (*(*v30 + 120))(v30, 4, v56);
      if (v51)
      {
        (*(*v51 + 24))(v51);
      }

      v57 = v66;
      v58 = HGObject::operator new(0x70uLL);
      HGBlurGroup::HGBlurGroup(v58, v57, 0);
      HGBlurGroup::setBlurValues(v58, &v99, &v97, 4);
      (*(*v31 + 96))(v31, 0, 1.0, 0.0, 0.0, 0.0);
      (*(*v31 + 120))(v31, 0, v30);
      v59 = HGBlurGroup::level(v58, 0);
      (*(*v31 + 120))(v31, 1, v59);
      v60 = HGBlurGroup::level(v58, 1u);
      (*(*v31 + 120))(v31, 2, v60);
      v61 = HGBlurGroup::level(v58, 2u);
      (*(*v31 + 120))(v31, 3, v61);
      v62 = HGBlurGroup::level(v58, 3u);
      (*(*v31 + 120))(v31, 4, v62);
      if (v58)
      {
        (*(*v58 + 24))(v58);
      }

      v64 = v31;
      (*(*v31 + 16))(v31);
      if (v77 == 1)
      {
        [(PAESharedDefaultBase *)self crop:&v64 fromImage:a4 toImage:a3];
      }

      [a3 setHeliumRef:&v64];
      if (v64)
      {
        (*(*v64 + 24))(v64);
      }

      (*(*v31 + 24))(v31);
      (*(*v30 + 24))(v30);
      if (v66)
      {
        (*(*v66 + 24))(v66);
      }
    }
  }

  return v12;
}

- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6
{
  *a6 = 0;
  *a5 = 1;
  v6 = *&a3->var2;
  v8[0] = *&a3->var0.var0;
  v8[1] = v6;
  v8[2] = *&a3->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:a5 software:a6];
  return 1;
}

@end