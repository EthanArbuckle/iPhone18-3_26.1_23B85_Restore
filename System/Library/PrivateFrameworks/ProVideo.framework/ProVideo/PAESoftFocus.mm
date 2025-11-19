@interface PAESoftFocus
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6;
- (PAESoftFocus)initWithAPIManager:(id)a3;
- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4;
- (id)properties;
@end

@implementation PAESoftFocus

- (PAESoftFocus)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAESoftFocus;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v15 = 0;
  if (!v7)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v8 = v7;
  if ([v7 getBoolValue:&v15 + 1 fromParm:5 atFxTime:a3.var1] && objc_msgSend(v8, "getBoolValue:fromParm:atFxTime:", &v15, 6, a3.var1))
  {
    v9 = (HIBYTE(v15) | v15) ^ 1;
LABEL_8:
    v13 = MEMORY[0x277CBEAC0];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:v9 & 1];
    return [v13 dictionaryWithObjectsAndKeys:{v14, @"PositionIndependent", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", (v15 & 1) == 0), @"SupportsLargeRenderScale", 0}];
  }

  if (!a4)
  {
    return 0;
  }

  v10 = objc_opt_class();
  v11 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v10)];
  result = 0;
  *a4 = v11;
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
  v10.super_class = PAESoftFocus;
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
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"SoftFocus::Amount" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:2.0 parmFlags:{0.0, dbl_260343800[v7], 0.0, 32.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"SoftFocus::Strength" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.5 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"SoftFocus::Horizontal" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:32 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"SoftFocus::Vertical" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:32 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"SoftFocus::Crop" parmFlags:{0, 0), 5, 0, 33}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"SoftFocus::Equirect" parmFlags:{0, 0), 6, 0, 1}];
  }

  return v6;
}

- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (a3)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || a4 == 0;
  v13 = !v12;
  if (!v12)
  {
    v14 = v10;
    v24 = 0;
    [v10 getBoolValue:&v24 fromParm:6 atFxTime:a6->var0.var1];
    if (v24 == 1)
    {
      *a3 = a5->var0;
      *a4 = a5->var1;
    }

    else
    {
      v23 = 0.0;
      [v14 getFloatValue:&v23 fromParm:1 atFxTime:a6->var0.var1];
      v22 = 0.0;
      [v14 getFloatValue:&v22 fromParm:3 atFxTime:a6->var0.var1];
      v22 = v22 * 0.01;
      v21 = 0.0;
      [v14 getFloatValue:&v21 fromParm:4 atFxTime:a6->var0.var1];
      v21 = v21 * 0.01;
      v20 = 0;
      [v14 getBoolValue:&v20 fromParm:5 atFxTime:a6->var0.var1];
      v15 = *&a5->var0;
      if ((v20 & 1) == 0)
      {
        v16.f64[0] = v22;
        v17 = v23 + v23;
        v16.f64[1] = v21;
        v18 = vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vmulq_n_f64(v16, v17))));
        v15 = vaddw_s32(v15, vadd_s32(v18, v18));
      }

      *a3 = v15.i64[0];
      *a4 = v15.u64[1];
    }
  }

  return v13;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v74 = *MEMORY[0x277D85DE8];
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
    return 0;
  }

  v12 = v10;
  if ([a4 imageType] != 3)
  {
    return 0;
  }

  v13 = [v12 versionAtCreation];
  [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
  v14 = v70[1];
  v15 = v70[6];
  v70[0] = 0.0;
  [v9 getFloatValue:v70 fromParm:1 atFxTime:a5->var0.var1];
  v70[0] = v70[0] * 0.5;
  v69 = 0.0;
  [v9 getFloatValue:&v69 fromParm:3 atFxTime:a5->var0.var1];
  v69 = v14 * (v69 * 0.01);
  v68 = 0.0;
  [v9 getFloatValue:&v68 fromParm:4 atFxTime:a5->var0.var1];
  v68 = fabs(v15) * (v68 * 0.01);
  v67 = 0.0;
  [v9 getFloatValue:&v67 fromParm:2 atFxTime:a5->var0.var1];
  v66 = 0;
  [v9 getBoolValue:&v66 fromParm:5 atFxTime:a5->var0.var1];
  v65 = 0;
  [v9 getBoolValue:&v65 fromParm:6 atFxTime:a5->var0.var1];
  v66 &= v65 ^ 1;
  if (!a4)
  {
    v64 = 0;
    if (v65)
    {
      goto LABEL_8;
    }

LABEL_13:
    if (v66 == 1)
    {
      if (!v13)
      {
        v36 = HGObject::operator new(0x1D0uLL);
        HGTextureWrap::HGTextureWrap(v36);
        HGTextureWrap::SetTextureWrapMode(v36, 0, v37);
        v71[0] = 0uLL;
        HGTextureWrap::SetTextureBorderColor(v36, v71);
        (*(*v36 + 120))(v36, 0, v64);
        v38 = HGObject::operator new(0x1A0uLL);
        HGCrop::HGCrop(v38);
        [(PAESharedDefaultBase *)self getImageBoundary:a4];
        v39 = HGRectMake4i(*v63[0].f64, *(v63[0].f64 + 1), *&v63[0].f64[1] + *v63[0].f64, *(&v63[0].f64[1] + 1) + *(v63[0].f64 + 1));
        (*(*v38 + 96))(v38, 0, v39, SHIDWORD(v39), (v40 + 1), ((v40 + 0x100000000) >> 32));
        (*(*v38 + 120))(v38, 0, v36);
        if (v64 != v38)
        {
          if (v64)
          {
            (*(*v64 + 24))();
          }

          v64 = v38;
          (*(*v38 + 16))(v38);
        }

        (*(*v38 + 24))(v38);
        (*(*v36 + 24))(v36);
      }

      v57 = v64;
      if (v64)
      {
        (*(*v64 + 16))(v64);
      }

      [(PAESharedDefaultBase *)self smear:&v57 fromImage:a4 toImage:a4];
      v41 = v71[0].f64[0];
      if (v64 == *&v71[0].f64[0])
      {
        if (v64)
        {
          (*(**&v71[0].f64[0] + 24))(*&v71[0].f64[0]);
        }
      }

      else
      {
        if (v64)
        {
          (*(*v64 + 24))();
          v41 = v71[0].f64[0];
        }

        v64 = *&v41;
        v71[0].f64[0] = 0.0;
      }

      if (v57)
      {
        (*(*v57 + 24))(v57);
      }
    }

    v42 = HGObject::operator new(0x1B0uLL);
    HSoftFocus::HSoftFocus(v42);
    v43 = v70[0];
    v44 = v67;
    v45 = v69;
    v46 = v68;
    HSoftFocus::init(v42, v43, v44, v45, v46, v13 == 0);
    (*(*v42 + 120))(v42, 0, v64);
    if (v66 == 1)
    {
      v47 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v47);
      (*(*v47 + 120))(v47, 0, v42);
      v48 = [a4 width];
      v49 = [a4 height];
      v50 = [a4 width];
      v51 = [a4 height];
      v52 = v48 * -0.5;
      v53 = v49 * -0.5;
      v54 = vcvtd_n_f64_u64(v50, 1uLL);
      v55 = vcvtd_n_f64_u64(v51, 1uLL);
      (*(*v47 + 96))(v47, 0, v52, v53, v54, v55);
      *&v71[0].f64[0] = v47;
      (*(*v47 + 16))(v47);
      [a3 setHeliumRef:v71];
      if (*&v71[0].f64[0])
      {
        (*(**&v71[0].f64[0] + 24))(*&v71[0].f64[0]);
      }

      (*(*v47 + 24))(v47);
    }

    else
    {
      *&v71[0].f64[0] = v42;
      (*(*v42 + 16))(v42);
      [a3 setHeliumRef:v71];
      if (*&v71[0].f64[0])
      {
        (*(**&v71[0].f64[0] + 24))(*&v71[0].f64[0]);
      }
    }

    (*(*v42 + 24))(v42);
    goto LABEL_37;
  }

  [a4 heliumRef];
  if ((v65 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a3];
  [(PAESharedDefaultBase *)self getPixelTransformForImage:a3];
  v16 = HGObject::operator new(0x1C0uLL);
  HGNode::HGNode(v16);
  *v16 = &unk_2871D9F38;
  *(v16 + 51) = 0;
  *(v16 + 52) = 0;
  *(v16 + 106) = 0;
  *(v16 + 54) = 0;
  *(v16 + 55) = 0;
  off_2871D9FB0(v16, 0, v64);
  v17 = [a4 width];
  v18 = v71[0].f64[0];
  v19 = [a4 height];
  v20 = v70[0];
  v21 = v69;
  v22 = v68;
  v56 = ceil(fabs(v18) * v17);
  v58 = vcvt_hight_f32_f64(vcvt_f32_f64(v71[0]), v71[1]);
  v23 = fabs(v72.f64[1]) * v19;
  v62 = vcvt_hight_f32_f64(vcvt_f32_f64(v72), v73);
  v61 = vcvt_hight_f32_f64(vcvt_f32_f64(v63[0]), v63[1]);
  v60 = vcvt_hight_f32_f64(vcvt_f32_f64(v63[2]), v63[3]);
  HEquirectGaussianBlur::init(v16, v56, vcvtpd_s64_f64(v23), &v58, &v62, &v61, &v60, v20, v21, v22);
  v24 = HGObject::operator new(0x1C0uLL);
  HGLegacyBlend::HGLegacyBlend(v24);
  (*(*v24 + 96))(v24, 0, 8.0, 0.0, 0.0, 0.0);
  v25 = v67;
  (*(*v24 + 96))(v24, 1, v25, 0.0, 0.0, 0.0);
  (*(*v24 + 120))(v24, 1, v16);
  (*(*v24 + 120))(v24, 0, v64);
  v26.f64[0] = v56;
  v26.f64[1] = ceil(v23);
  __asm { FMOV            V2.2D, #-0.5 }

  v58 = vmulq_f64(v26, _Q2);
  v59 = __PAIR128__(*&v26.f64[1], *&v56);
  PCMatrix44Tmpl<double>::transformRect<double>(v63[0].f64, v58.f64, &v58);
  v31 = HGRectMake4i(vcvtmd_s64_f64(v58.f64[0]), vcvtmd_s64_f64(v58.f64[1]), vcvtpd_s64_f64(v58.f64[0] + *&v59), vcvtpd_s64_f64(v58.f64[1] + *(&v59 + 1)));
  v33 = v32;
  v34 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v34);
  (*(*v34 + 120))(v34, 0, v24);
  (*(*v34 + 96))(v34, 0, v31, SHIDWORD(v31), v33, SHIDWORD(v33));
  v62.i64[0] = v34;
  (*(*v34 + 16))(v34);
  [a3 setHeliumRef:&v62];
  if (v62.i64[0])
  {
    (*(*v62.i64[0] + 24))(v62.i64[0]);
  }

  (*(*v34 + 24))(v34);
  (*(*v24 + 24))(v24);
  (*(*v16 + 24))(v16);
LABEL_37:
  if (v64)
  {
    (*(*v64 + 24))(v64);
  }

  return 1;
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