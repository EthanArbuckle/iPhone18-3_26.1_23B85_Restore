@interface PAEVariableBlur
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAEVariableBlur)initWithAPIManager:(id)manager;
- (id)properties;
- (void)dealloc;
@end

@implementation PAEVariableBlur

- (PAEVariableBlur)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEVariableBlur;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEVariableBlur;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:3];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"SupportsHeliumRendering", v5, @"SupportsLargeRenderScale", v6, @"InputSizeLimit", v7, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEVariableBlur;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"VariableBlur::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"VariableBlur::Amount" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:10.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"VariableBlur::InnerRadius" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:100.0 parmFlags:{0.0, 1000.0, 0.0, 1000.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"VariableBlur::OuterRadius" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:400.0 parmFlags:{0.0, 1000.0, 0.0, 1000.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"VariableBlur::Crop" parmFlags:{0, 0), 5, 1, 1}];
  }

  return v3 != 0;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (width)
  {
    v11 = height == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    v13 = v10;
    v17 = 0;
    [v10 getBoolValue:&v17 fromParm:5 atFxTime:info->var0.var1];
    v16 = 0.0;
    v14 = 0.0;
    if ((v17 & 1) == 0)
    {
      [v13 getFloatValue:&v16 fromParm:2 atFxTime:{info->var0.var1, 0.0}];
      v14 = v16 + v16;
    }

    *width = (v14 + input->var0);
    *height = (v14 + input->var1);
  }

  return v12;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v111 = *MEMORY[0x277D85DE8];
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

  v13 = [v10 versionAtCreation] == 0;
  v107 = 400.0;
  v108 = 10.0;
  v106 = 100.0;
  v105 = 0;
  v104 = 0uLL;
  [v9 getXValue:&v104 YValue:&v104 + 8 fromParm:1 atFxTime:info->var0.var1];
  [(PAESharedDefaultBase *)self convertRelativeToImageCoordinates:&v104 withImage:input];
  v104 = *v96;
  [v9 getFloatValue:&v108 fromParm:2 atFxTime:info->var0.var1];
  [v9 getFloatValue:&v107 fromParm:3 atFxTime:info->var0.var1];
  [v9 getFloatValue:&v106 fromParm:4 atFxTime:info->var0.var1];
  if (v13)
  {
    v14 = v106;
    v106 = v107;
    v107 = v14;
  }

  [v9 getBoolValue:&v105 fromParm:5 atFxTime:info->var0.var1];
  [(PAESharedDefaultBase *)self getPixelTransformForImage:input];
  [(PAESharedDefaultBase *)self getInversePixelTransformForImage:input];
  v15 = v96[0];
  v16 = v99;
  imageType = [input imageType];
  if ([(PAESharedDefaultBase *)self getRenderMode:info->var0.var1])
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
    if (v108 <= 0.0)
    {
      if (input)
      {
        [input heliumRef];
      }

      else
      {
        *&v109 = 0;
      }

      [output setHeliumRef:&v109];
      if (v109)
      {
        (*(*v109 + 24))(v109);
      }
    }

    else
    {
      if (input)
      {
        [input heliumRef];
      }

      else
      {
        v87 = 0;
      }

      if (v105 == 1)
      {
        v86 = v87;
        if (v87)
        {
          (*(*v87 + 16))(v87);
        }

        [(PAESharedDefaultBase *)self smear:&v86 fromImage:input toImage:input];
        v19 = v109;
        if (v87 == v109)
        {
          if (v87)
          {
            (*(*v109 + 24))(v109);
          }
        }

        else
        {
          if (v87)
          {
            (*(*v87 + 24))();
            v19 = v109;
          }

          v87 = v19;
          *&v109 = 0;
        }

        if (v86)
        {
          (*(*v86 + 24))(v86);
        }
      }

      v20 = HGObject::operator new(0x1A0uLL);
      HgcVariableBlurIntensity::HgcVariableBlurIntensity(v20);
      v21 = *&v104;
      v22 = *(&v104 + 1);
      (*(*v20 + 96))(v20, 0, v21, v22, 0.0, 0.0);
      v23 = 1.0 / (v106 - v107);
      (*(*v20 + 96))(v20, 1, v23, 0.0, 0.0, 0.0);
      v24 = v107;
      (*(*v20 + 96))(v20, 2, v24, 0.0, 0.0, 0.0);
      v25 = v88;
      v26 = v89;
      v27 = v90;
      v28 = v91;
      (*(*v20 + 96))(v20, 3, v25, v26, v27, v28);
      v29 = v92;
      v30 = v93;
      v31 = v94;
      v32 = v95;
      (*(*v20 + 96))(v20, 4, v29, v30, v31, v32);
      v33 = HGObject::operator new(0x1D0uLL);
      HGModulatedBlur::HGModulatedBlur(v33);
      v85 = v33;
      if (v33)
      {
        (*(*v33 + 16))(v33);
      }

      (*(*v33 + 120))(v33, 0, v87);
      (*(*v33 + 120))(v33, 1, v20);
      v108 = v108 * 2.7;
      v34 = v108;
      (*(*v33 + 96))(v33, 0, v34, 0.0, 0.0, 0.0);
      v35 = v15;
      v36 = v16;
      v37 = fabsf(v36);
      (*(*v33 + 96))(v33, 1, v35, v37, 0.0, 0.0);
      v109 = xmmword_260343830;
      v110[0] = unk_260343840;
      *(v110 + 12) = unk_26034384C;
      v38 = v108;
      v40 = ceil(log2(v108)) + 1.0;
      if (v40 <= 0.0)
      {
        v40 = 1.0;
      }

      LODWORD(v39) = vcvtms_s32_f32(v40);
      if (v39 >= 2)
      {
        v41 = v39 + 1;
        v42 = &v110[-1] + v39 - 1;
        do
        {
          v43 = v38;
          *v42-- = v43;
          v38 = v38 * 0.5;
          --v41;
        }

        while (v41 > 2);
      }

      HGModulatedBlur::setBlurValues(v33, &v109, v40);
      v45 = v106;
      v44 = v107;
      if (v107 <= v106)
      {
        if ((v75 = v37, v76 = v35, v46 = v104, v47 = v101, v48 = v102, v49 = v103, v50 = v96[0], v51 = v98, v79 = v96[1], v80 = v97, v77 = v99, v78 = v100, [(PAESharedDefaultBase *)self getImageBoundary:output], v83 = vcvtq_f64_f32(v81), v84 = vcvtq_f64_f32(v82), PCMatrix44Tmpl<double>::transformRect<double>(v96, v83.f64, &v83), v44 = *(&v46 + 1) - v45, v52 = (*&v46 - v45) * v47, v53 = (v45 + *(&v46 + 1)) * v48, v54 = (v45 + *(&v46 + 1)) * v79, v55 = (v80 + (*&v46 - v45) * v50 + v54) / (v49 + v52 + v53), v56 = (v45 + *&v46) * v47, v57 = v49 + v56 + v53, v58 = (v45 + *&v46) * v50, v59 = (v45 + *&v46) * v51, v60 = (*(&v46 + 1) - v45) * v48, v61 = v49 + v56 + v60, v62 = (*(&v46 + 1) - v45) * v77, v63 = (v78 + v59 + v62) / v61, v64 = (v78 + (*&v46 - v45) * v51 + v62) / (v49 + v52 + v60), v83.f64[0] < v55) && v55 < v83.f64[0] + v84.f64[0] || (v65 = (v80 + v58 + v54) / v57, v83.f64[0] < v65) && v65 < v83.f64[0] + v84.f64[0] || v83.f64[1] < v64 && v64 < v83.f64[1] + v84.f64[1] || v83.f64[1] < v63 && v63 < v83.f64[1] + v84.f64[1])
        {
          v66 = HGRectMake4i(vcvtmd_s64_f64(v55), vcvtmd_s64_f64(v64), vcvtpd_s64_f64(v55 + (v80 + v58 + v44 * v79) / v61 - v55), vcvtpd_s64_f64(v64 + (v78 + v59 + (v45 + *(&v46 + 1)) * v77) / v57 - v63));
          v68 = v67;
          v69 = HGObject::operator new(0x1A0uLL);
          HGCrop::HGCrop(v69);
          (*(*v69 + 120))(v69, 0, v33);
          (*(*v69 + 96))(v69, 0, v66, SHIDWORD(v66), v68, SHIDWORD(v68));
          v70 = v33;
          if (v33 != v69)
          {
            (*(*v33 + 24))(v33);
            v85 = v69;
            v70 = v69;
            (*(*v69 + 16))(v69);
          }

          v71 = HGObject::operator new(0x1B0uLL);
          HGaussianBlur::HGaussianBlur(v71);
          (*(*v71 + 120))(v71, 0, v87);
          v72 = v108;
          HGaussianBlur::init(v71, v72, v76, v75, 0, 0, 0);
          v73 = HGObject::operator new(0x1A0uLL);
          HGOverwrite::HGOverwrite(v73);
          (*(*v73 + 120))(v73, 1, v70);
          (*(*v73 + 120))(v73, 0, v71);
          if (v70 != v73)
          {
            (*(*v70 + 24))(v70);
            v85 = v73;
            (*(*v73 + 16))(v73);
          }

          (*(*v73 + 24))(v73);
          (*(*v71 + 24))(v71);
          (*(*v69 + 24))(v69);
        }
      }

      if (v105 == 1)
      {
        [(PAESharedDefaultBase *)self crop:&v85 fromImage:input toImage:output, v44];
      }

      [output setHeliumRef:&v85];
      if (v85)
      {
        (*(*v85 + 24))(v85);
      }

      (*(*v33 + 24))(v33);
      (*(*v20 + 24))(v20);
      if (v87)
      {
        (*(*v87 + 24))(v87);
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

@end