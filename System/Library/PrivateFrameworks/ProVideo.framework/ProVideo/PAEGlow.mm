@interface PAEGlow
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6;
- (HGRef<HGNode>)get360BlurNode:(HGRef<HGNode>)a3 withInputImage:(id)a4 outputImage:(id)a5 blurRadius:(double)a6 blurScale:(PCVector2<double>)a7;
- (HGRef<HGNode>)getBlurNode:(HGRef<HGNode>)a3 withInputImage:(id)a4 outputImage:(id)a5 blurRadius:(double)a6 blurScale:(PCVector2<double>)a7 is360:(BOOL)a8;
- (HGRef<HGNode>)getPlanarBlurNode:(HGRef<HGNode>)a3 withInputImage:(id)a4 outputImage:(id)a5 blurRadius:(double)a6 blurScale:(PCVector2<double>)a7;
- (PAEGlow)initWithAPIManager:(id)a3;
- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4;
- (id)properties;
- (void)dealloc;
@end

@implementation PAEGlow

- (PAEGlow)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEGlow;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEGlow;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  if ([PAEGlow properties]::once != -1)
  {
    [PAEGlow properties];
  }

  return [PAEGlow properties]::sPropertiesDict;
}

uint64_t __21__PAEGlow_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:6];
  result = [v0 initWithObjectsAndKeys:{v1, @"SupportsHeliumRendering", v2, @"MayRemapTime", v3, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
  [PAEGlow properties]::sPropertiesDict = result;
  return result;
}

- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!a4 || v6)
  {
    v14 = 0;
    [v6 getBoolValue:&v14 fromParm:6 atFxTime:a3.var1];
    if (v14 == 1)
    {
      v17[0] = @"PositionIndependent";
      v9 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v17[1] = @"SupportsLargeRenderScale";
      v18[0] = v9;
      v18[1] = [MEMORY[0x277CCABB0] numberWithBool:0];
      v10 = MEMORY[0x277CBEAC0];
      v11 = v18;
      v12 = v17;
    }

    else
    {
      v15[0] = @"PositionIndependent";
      v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v15[1] = @"SupportsLargeRenderScale";
      v16[0] = v13;
      v16[1] = [MEMORY[0x277CCABB0] numberWithBool:1];
      v10 = MEMORY[0x277CBEAC0];
      v11 = v16;
      v12 = v15;
    }

    return [v10 dictionaryWithObjects:v11 forKeys:v12 count:2];
  }

  else
  {
    v19 = *MEMORY[0x277CCA470];
    v20[0] = @"Unable to retrieve parameter retrieval API (v5)";
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:FxPlugErrorDomain code:13 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v20, &v19, 1)}];
    result = 0;
    *a4 = v7;
  }

  return result;
}

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAEGlow;
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
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Glow::Radius" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:10.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Glow::Opacity" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:1.5 parmFlags:{0.0, 3.0, 0.0, 3.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Glow::Threshold" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.75 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Glow::Softness" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:0.2 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Glow::Clip" parmFlags:{0, 0), 5, v7, 1}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"Glow::Equirect" parmFlags:{0, 0), 6, 0, 1}];
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
    v21 = 0;
    [v10 getBoolValue:&v21 fromParm:6 atFxTime:a6->var0.var1];
    if (v21 == 1)
    {
      *a3 = a5->var0;
      var1 = a5->var1;
    }

    else
    {
      v20 = 0.0;
      [v14 getFloatValue:&v20 fromParm:1 atFxTime:a6->var0.var1];
      v16 = v20 + v20;
      v17 = vcvtps_s32_f32(v16);
      v18 = a5->var1;
      *a3 = (LODWORD(a5->var0) + 2 * v17);
      var1 = (v18 + 2 * v17);
    }

    *a4 = var1;
  }

  return v13;
}

- (HGRef<HGNode>)get360BlurNode:(HGRef<HGNode>)a3 withInputImage:(id)a4 outputImage:(id)a5 blurRadius:(double)a6 blurScale:(PCVector2<double>)a7
{
  v9 = v7;
  v13 = v8;
  if (self)
  {
    [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a5, a6, a7.var0, a7.var1];
    [(PAESharedDefaultBase *)self getPixelTransformForImage:a5];
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
  }

  v16 = HGObject::operator new(0x1C0uLL);
  HGNode::HGNode(v16);
  *v16 = &unk_2871D9F38;
  *(v16 + 51) = 0;
  *(v16 + 52) = 0;
  *(v16 + 106) = 0;
  *(v16 + 54) = 0;
  *(v16 + 55) = 0;
  off_2871D9FB0(v16, 0, *a3.var0);
  v17 = *v9;
  v18 = v9[1];
  v19 = [a4 width];
  v20 = v38.f64[0];
  v21 = [a4 height];
  v22 = a6;
  v23 = v17;
  v24 = v18;
  v29 = vcvt_hight_f32_f64(vcvt_f32_f64(v38), v39);
  v28 = vcvt_hight_f32_f64(vcvt_f32_f64(v40), v41);
  v27 = vcvt_hight_f32_f64(vcvt_f32_f64(v30), v31);
  v26 = vcvt_hight_f32_f64(vcvt_f32_f64(v32), v33);
  v25 = HEquirectGaussianBlur::init(v16, vcvtpd_s64_f64(fabs(v20) * v19), vcvtpd_s64_f64(fabs(v40.f64[1]) * v21), &v29, &v28, &v27, &v26, v22, v23, v24);
  *v13 = v16;
  return v25;
}

- (HGRef<HGNode>)getPlanarBlurNode:(HGRef<HGNode>)a3 withInputImage:(id)a4 outputImage:(id)a5 blurRadius:(double)a6 blurScale:(PCVector2<double>)a7
{
  v9 = a6;
  v12 = v8;
  v14 = *v7;
  v13 = v7[1];
  v15 = [-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F2C8, a4, a5, a6, a7.var0, a7.var1), "versionAtCreation"}];
  if (!v15)
  {
    v9 = pow(v9 / 100.0, 1.425) * 253.0;
    [a4 pixelAspect];
    v14 = v14 * (1.0 / v16);
  }

  v17 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v17);
  v18 = 4.0;
  if (v9 <= 10.0 && (v18 = 2.0, v9 <= 5.0))
  {
    v20 = 0;
    v18 = 1.0;
  }

  else
  {
    HGTransform::HGTransform(v27);
    HGTransform::Scale(v27, 1.0 / v18, 1.0 / v18, 1.0);
    (*(*v17 + 120))(v17, 0, *a3.var0);
    (*(*v17 + 576))(v17, v27);
    v19 = pow(v9 / 600.0, 0.65);
    v9 = pow(v19 * 575.0 / v18 / 575.0, 1.53846154) * 600.0;
    HGTransform::~HGTransform(v27);
    v20 = 1;
  }

  v21 = HGObject::operator new(0x1B0uLL);
  HGaussianBlur::HGaussianBlur(v21);
  v22 = v9;
  v23 = v14;
  v24 = v13;
  HGaussianBlur::init(v21, v22, v23, v24, v15 == 0, 0, 0);
  if (v20)
  {
    (*(*v21 + 120))(v21, 0, v17);
  }

  else
  {
    (*(*v21 + 120))(v21, 0, *a3.var0);
  }

  *v12 = v21;
  (*(*v21 + 16))(v21);
  v25 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v25);
  if (v20)
  {
    HGTransform::HGTransform(v27);
    HGTransform::Scale(v27, v18, v18, 1.0);
    (*(*v25 + 120))(v25, 0, v21);
    (*(*v25 + 576))(v25, v27);
    if (v21 != v25)
    {
      (*(*v21 + 24))(v21);
      *v12 = v25;
      (*(*v25 + 16))(v25);
    }

    HGTransform::~HGTransform(v27);
  }

  else if (!v25)
  {
    goto LABEL_16;
  }

  (*(*v25 + 24))(v25);
LABEL_16:
  v26.var0 = (*(*v21 + 24))(v21);
  if (v17)
  {
    return (*(*v17 + 24))(v17);
  }

  return v26;
}

- (HGRef<HGNode>)getBlurNode:(HGRef<HGNode>)a3 withInputImage:(id)a4 outputImage:(id)a5 blurRadius:(double)a6 blurScale:(PCVector2<double>)a7 is360:(BOOL)a8
{
  v10 = a8;
  v14 = self;
  v15 = v9;
  v16 = *a3.var0;
  if (!v8)
  {
    v17 = *a3.var0;
    if (v16)
    {
      self = (*(*v16 + 16))(v16, a2, a6, a7, *&a7.var1);
    }

    v18 = *v10;
    if (v14)
    {
      self = [(PAEGlow *)v14 getPlanarBlurNode:&v17 withInputImage:a4 outputImage:a5 blurRadius:&v18 blurScale:a6, a7.var0, a7.var1];
      v16 = v17;
      if (!v17)
      {
        return self;
      }
    }

    else
    {
      *v15 = 0;
      if (!v16)
      {
        return self;
      }
    }

    return (*(*v16 + 24))(v16);
  }

  v19 = *a3.var0;
  if (v16)
  {
    self = (*(*v16 + 16))(v16, a2, a6, a7, *&a7.var1);
  }

  v18 = *v10;
  if (v14)
  {
    self = [(PAEGlow *)v14 get360BlurNode:&v19 withInputImage:a4 outputImage:a5 blurRadius:&v18 blurScale:a6, a7.var0, a7.var1];
    v16 = v19;
    if (!v19)
    {
      return self;
    }

    return (*(*v16 + 24))(v16);
  }

  *v15 = 0;
  if (v16)
  {
    return (*(*v16 + 24))(v16);
  }

  return self;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (!v10)
  {
    v12 = v9;
    v19 = 0x4024000000000000;
    v17 = 0x3FC999999999999ALL;
    v18 = 0x3FE8000000000000;
    v16 = 0x3FF8000000000000;
    v15 = 0;
    [(PAESharedDefaultBase *)self getScaleForImage:a4];
    [v8 getFloatValue:&v19 fromParm:1 atFxTime:a5->var0.var1];
    [v8 getFloatValue:&v18 fromParm:3 atFxTime:a5->var0.var1];
    [v8 getFloatValue:&v17 fromParm:4 atFxTime:a5->var0.var1];
    [v8 getFloatValue:&v16 fromParm:2 atFxTime:a5->var0.var1];
    [v8 getBoolValue:&v15 + 1 fromParm:5 atFxTime:a5->var0.var1];
    [v8 getBoolValue:&v15 fromParm:6 atFxTime:a5->var0.var1];
    if (a4)
    {
      [a4 heliumRef];
    }

    [objc_msgSend(v12 colorMatrixFromDesiredRGBToYCbCrAtTime:{a5->var0.var1), "matrix"}];
    v13 = HGObject::operator new(0x1A0uLL);
    HgcGlow::HgcGlow(v13);
  }

  return v11;
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