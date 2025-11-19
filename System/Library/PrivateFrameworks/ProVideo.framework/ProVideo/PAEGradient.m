@interface PAEGradient
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInfo:(id *)a4;
- (BOOL)frameSetup:(id *)a3 hardware:(BOOL *)a4 software:(BOOL *)a5;
- (BOOL)initPAEGradientWithHeight:(id)a3;
- (BOOL)parameterChanged:(unsigned int)a3;
- (PAEGradient)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEGradient

- (PAEGradient)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEGradient;
  result = [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
  if (result)
  {
    *(&result->super.super._hostIsVertigo + 2) = 0;
  }

  return result;
}

- (BOOL)initPAEGradientWithHeight:(id)a3
{
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E548];
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735BE50];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    v9 = v6;
    v18 = 0.0;
    v19 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v15 = 0;
    v13 = *MEMORY[0x277CC08F0];
    v14 = *(MEMORY[0x277CC08F0] + 16);
    [v5 getGradientStartEnd:&v19 startY:&v18 endX:&v17 endY:&v16 type:&v15 fromParm:310 atFxTime:&v13];
    [a3 doubleValue];
    v18 = v10 * 0.5;
    [a3 doubleValue];
    v16 = v11 * -0.5;
    [v9 setGradientStartEnd:310 startY:&v13 endX:v19 endY:v18 toParm:v17 atTime:?];
  }

  return v8;
}

- (id)properties
{
  v2 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v2)
  {
    if ([v2 versionAtCreation] < 3)
    {
      v3 = 1;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 1;
  }

  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:65792];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:590080];
  return [v4 dictionaryWithObjectsAndKeys:{v5, @"MayRemapTime", v6, @"SupportsLargeRenderScale", v7, @"SupportsHeliumRendering", v8, @"PixelTransformSupport", v9, @"SDRWorkingSpace", v10, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v12.receiver = self;
  v12.super_class = PAEGradient;
  [(PAESharedDefaultBase *)&v12 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735DF10];
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735BCA0];
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 || v5 == 0;
  v8 = !v7;
  if (!v7)
  {
    v9 = v5;
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v4 addGradientPositionedWithName:objc_msgSend(v10 parmId:"localizedStringForKey:value:table:" parmFlags:{@"Gradient::Gradient", 0, 0), 310, 0}];
    if ([v9 versionAtCreation])
    {
      [v3 addPopupMenuWithName:objc_msgSend(v10 parmId:"localizedStringForKey:value:table:" defaultValue:@"Gradient::End Condition" menuEntries:0 parmFlags:{0), 2, 0, objc_msgSend(objc_msgSend(v10, "localizedStringForKey:value:table:", @"Gradient::End Condition Options", 0, 0), "componentsSeparatedByString:", @"|", 5}];
    }

    [v3 addToggleButtonWithName:objc_msgSend(v10 parmId:"localizedStringForKey:value:table:" defaultValue:@"Gradient::Equirect" parmFlags:{0, 0), 3, 0, 1}];
  }

  return v8;
}

- (BOOL)parameterChanged:(unsigned int)a3
{
  v5 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v5)
  {
    if (![v5 versionAtCreation])
    {
LABEL_20:
      LOBYTE(v5) = 1;
      return v5;
    }

    v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
    v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E548];
    v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
    if (v6)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && v7 != 0)
    {
      v11 = v8;
      v20 = *MEMORY[0x277CC08F0];
      v21 = *(MEMORY[0x277CC08F0] + 16);
      if (a3 == 3)
      {
        LOBYTE(v18) = 0;
        [v6 getBoolValue:&v18 fromParm:3 atFxTime:&v20];
        LODWORD(v19) = 0;
        [v6 getParameterFlags:&v19 fromParm:2];
        if (v18)
        {
          v12 = 4;
        }

        else
        {
          v12 = 4 * (*(&self->super.super._hostIsVertigo + 2) == 0);
        }

        [v11 setParameterFlags:v12 toParm:2];
        [v11 setGradientFlags:(v18 & 1) == 0 toParam:310];
      }

      else if (a3 == 310)
      {
        v18 = 0;
        v19 = 0;
        v16 = 0;
        v17 = 0;
        v15 = 0;
        [v7 getGradientStartEnd:&v19 startY:&v18 endX:&v17 endY:&v16 type:&v15 fromParm:310 atFxTime:&v20];
        v14 = 0;
        [v6 getParameterFlags:&v14 fromParm:2];
        if (*(&self->super.super._hostIsVertigo + 2) != v15)
        {
          v14 = v14 & 0xFFFFFFFB | (4 * (v15 == 0));
          [v11 setParameterFlags:? toParm:?];
          *(&self->super.super._hostIsVertigo + 2) = v15;
        }
      }

      goto LABEL_20;
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInfo:(id *)a4
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E548];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735AB90];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || v10 == 0)
  {
    return 0;
  }

  v13 = v10;
  if ([a3 imageType] != 3)
  {
    return 0;
  }

  v14 = [v13 versionAtCreation];
  v98 = 1.0;
  v95 = 0x3FF0000000000000;
  v92 = 1.0;
  v89 = 1.0;
  v90 = 0u;
  v91 = 0u;
  v93 = 0u;
  v94 = 0u;
  v96 = 0u;
  v97 = 0u;
  if (v9)
  {
    [v9 inversePixelTransform];
    for (i = 0; i != 16; i += 4)
    {
      v16 = (&v89 + i * 8);
      v17 = *&v88[i + 2];
      *v16 = *&v88[i];
      v16[1] = v17;
    }
  }

  v18 = HGRectMake4i(0, 0, 0x400u, 1u);
  v20 = v19;
  v21 = HGObject::operator new(0x80uLL);
  *&v22 = HGBitmap::HGBitmap(v21, v18, v20, 24).n128_u64[0];
  v23 = *(v21 + 10);
  [v8 getGradientSamples:v23 numSamples:1024 depth:8 fromParm:310 atFxTime:{a4->var0.var1, v22}];
  v24 = 0;
  v25 = (v23 + 1);
  do
  {
    v26 = (v23 + 4 * v24);
    v27 = *v26;
    v28 = 3;
    v29 = v25;
    do
    {
      *(v29 - 1) = *v29;
      ++v29;
      --v28;
    }

    while (v28);
    v26[3] = v27;
    ++v24;
    v25 += 4;
  }

  while (v24 != 1024);
  v87 = 0.0;
  v88[0] = 0.0;
  v85 = 0.0;
  v86 = 0.0;
  v84 = 0;
  [v8 getGradientStartEnd:v88 startY:&v87 endX:&v86 endY:&v85 type:&v84 fromParm:310 atFxTime:a4->var0.var1];
  v83 = 0;
  if (v14)
  {
    [v7 getIntValue:&v83 fromParm:2 atFxTime:a4->var0.var1];
  }

  v82 = 0;
  [v7 getBoolValue:&v82 fromParm:3 atFxTime:a4->var0.var1];
  if (v82 == 1)
  {
    v84 = 0;
    v30 = [a3 height];
    v31 = [a3 height];
    v32 = vcvtd_n_f64_u64(v30, 1uLL);
    v33 = v31 * -0.5;
    v34 = v98 + *(&v96 + 1) * 0.0 + v32 * *&v97;
    v35 = v98 + *(&v96 + 1) * 0.0 + v33 * *&v97;
    v87 = (*(&v93 + 1) + *(&v91 + 1) * 0.0 + v32 * v92) / v34;
    v88[0] = (*&v91 + v89 * 0.0 + v32 * *&v90) / v34;
    v85 = (*(&v93 + 1) + *(&v91 + 1) * 0.0 + v33 * v92) / v35;
    v86 = (*&v91 + v89 * 0.0 + v33 * *&v90) / v35;
  }

  [a3 pixelAspect];
  v37 = v36;
  v81 = 0;
  v38 = sqrt(v37 * (v86 - v88[0]) * (v37 * (v86 - v88[0])) + (v85 - v87) * (v85 - v87));
  if (PCMatrix44Tmpl<double>::isIdentity(&v89))
  {
    if (v84)
    {
      v39 = HGObject::operator new(0x1A0uLL);
      HGradientRadial::HGradientRadial(v39);
      if (v39)
      {
        v81 = v39;
      }

      v40 = [a3 width];
      v88[0] = vcvtd_n_f64_u64(v40, 1uLL) + v88[0];
      v41 = [a3 height];
      v87 = vcvtd_n_f64_u64(v41, 1uLL) + v87;
      v42 = v88[0];
      v43 = v87;
      (*(*v39 + 96))(v39, 0, v42, v43, 0.0, 0.0);
      v44 = fabs(v38);
      (*(*v39 + 96))(v39, 1, 0.0, v44, 1024.0, 1023.0);
      v45 = v37;
      (*(*v39 + 96))(v39, 2, v45, 1.0, 1.0, 1.0);
      if (!v14 || v83 == 1)
      {
        v46 = HGObject::operator new(0x1A0uLL);
        HgcRadialMask::HgcRadialMask(v46);
        (*(*v46 + 96))(v46, 0, v45, 1.0, 1.0, 1.0);
        v47 = v88[0];
        v48 = v87;
        (*(*v46 + 96))(v46, 1, v47, v48, 0.0, 0.0);
        (*(*v46 + 96))(v46, 2, v44, 0.0, 0.0, 0.0);
        v49 = v89;
        v50 = *&v90;
        v51 = *&v91;
        (*(*v46 + 96))(v46, 3, v49, v50, 0.0, v51);
        v52 = *(&v91 + 1);
        v53 = v92;
        v54 = *(&v93 + 1);
        (*(*v46 + 96))(v46, 4, v52, v53, 0.0, v54);
        v55 = *(&v96 + 1);
        v56 = *&v97;
        v57 = v98;
        (*(*v46 + 96))(v46, 5, v55, v56, 0.0, v57);
        (*(*v46 + 120))(v46, 0, v39);
        if (v39 != v46)
        {
          (*(*v39 + 24))(v39);
          v81 = v46;
          (*(*v46 + 16))(v46);
          v39 = v46;
        }

        (*(*v46 + 24))(v46);
      }
    }

    else
    {
      v39 = HGObject::operator new(0x1A0uLL);
      HGradientLinear::HGradientLinear(v39);
      if (v39)
      {
        v81 = v39;
      }

      v62 = v88[0];
      v63 = v87;
      (*(*v39 + 96))(v39, 0, v62, v63, 0.0, 0.0);
      v64 = v86;
      v65 = v85;
      (*(*v39 + 96))(v39, 1, v64, v65, 0.0, 0.0);
      (*(*v39 + 96))(v39, 2, 1024.0, 1023.0, 0.0, 0.0);
    }
  }

  else
  {
    v39 = HGObject::operator new(0x210uLL);
    HGGradient::HGGradient(v39);
    if (v39)
    {
      v81 = v39;
      (*(*v39 + 16))(v39);
    }

    if (v84)
    {
      HGGradient::SetGradientMode(v39, 1);
      v60 = v83 == 1 || v14 == 0;
      v59.n128_u32[0] = 1.0;
      if (!v60)
      {
        v59.n128_f32[0] = 0.0;
      }

      v61 = v38;
      (*(*v39 + 96))(v39, 2, fabsf(v61), v59, 0.0, 0.0);
    }

    else
    {
      HGGradient::SetGradientMode(v39, 0);
      v66 = v86;
      v67 = v85;
      (*(*v39 + 96))(v39, 2, v66, v67, 0.0, 0.0);
    }

    v68 = v37;
    (*(*v39 + 96))(v39, 0, v68, 1.0, 1.0, 1.0);
    v69 = v88[0];
    v70 = v87;
    (*(*v39 + 96))(v39, 1, v69, v70, 0.0, 0.0);
    v71 = v89;
    v72 = *&v90;
    v73 = *&v91;
    (*(*v39 + 96))(v39, 3, v71, v72, 0.0, v73);
    v74 = *(&v91 + 1);
    v75 = v92;
    v76 = *(&v93 + 1);
    (*(*v39 + 96))(v39, 4, v74, v75, 0.0, v76);
    v77 = *(&v96 + 1);
    v78 = *&v97;
    v79 = v98;
    (*(*v39 + 96))(v39, 5, v77, v78, 0.0, v79);
    (*(*v39 + 24))(v39);
  }

  v80 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v80, v21);
  (*(*v39 + 120))(v39, 0, v80);
  [a3 setHeliumRef:&v81];
  if (v80)
  {
    (*(*v80 + 24))(v80);
  }

  if (v81)
  {
    (*(*v81 + 24))(v81);
  }

  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  return 1;
}

- (BOOL)frameSetup:(id *)a3 hardware:(BOOL *)a4 software:(BOOL *)a5
{
  *a5 = 0;
  *a4 = 1;
  v5 = *&a3->var2;
  v7[0] = *&a3->var0.var0;
  v7[1] = v5;
  v7[2] = *&a3->var4;
  [PAESharedDefaultBase overrideFrameSetupForRenderMode:"overrideFrameSetupForRenderMode:hardware:software:" hardware:v7 software:?];
  return 1;
}

@end