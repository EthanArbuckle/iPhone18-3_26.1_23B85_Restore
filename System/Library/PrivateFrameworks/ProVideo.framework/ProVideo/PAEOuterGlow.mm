@interface PAEOuterGlow
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6;
- (PAEOuterGlow)initWithAPIManager:(id)a3;
- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4;
- (id)properties;
@end

@implementation PAEOuterGlow

- (PAEOuterGlow)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEOuterGlow;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4
{
  result = [(PAEFilterDefaultBase *)self getParamAPIWithError:a4];
  if (result)
  {
    v8 = result;
    v13 = 0.0;
    if ([result getFloatValue:&v13 fromParm:1 atFxTime:a3.var1] & 1) != 0 && (v12 = 0, (objc_msgSend(v8, "getBoolValue:fromParm:atFxTime:", &v12, 8, a3.var1)))
    {
      if (v12 & 1 | (v13 != 0.0))
      {
        v9 = 1;
      }

      else
      {
        v9 = 6;
      }

      return [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v9, v13), @"PixelTransformSupport", 0}];
    }

    else if (a4)
    {
      v10 = objc_opt_class();
      v11 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v10)];
      result = 0;
      *a4 = v11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)addParameters
{
  v13.receiver = self;
  v13.super_class = PAEOuterGlow;
  [(PAESharedDefaultBase *)&v13 addParameters];
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
    v9 = [v8 localizedStringForKey:@"OuterGlow::Radius" value:0 table:0];
    if (v7 >= 2)
    {
      v10 = 1000.0;
    }

    else
    {
      v10 = 15.0;
    }

    if (v7 >= 2)
    {
      v11 = 30.0;
    }

    else
    {
      v11 = 15.0;
    }

    [v3 addFloatSliderWithName:v9 parmId:1 defaultValue:0 parameterMin:2.0 parameterMax:0.0 sliderMin:v10 sliderMax:0.0 delta:v11 parmFlags:1.0];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"OuterGlow::Brightness" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:15.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addColorParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultRed:@"OuterGlow::Inner Color" defaultGreen:0 defaultBlue:0) parmFlags:{3, 0, 1.0, 1.0, 0.0}];
    [v3 addColorParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultRed:@"OuterGlow::Outer Color" defaultGreen:0 defaultBlue:0) parmFlags:{4, 0, 1.0, 0.0, 0.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"OuterGlow::Range" parameterMin:0 parameterMax:0) sliderMin:5 sliderMax:0 delta:0.25 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"OuterGlow::Horizontal" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:32 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"OuterGlow::Vertical" parameterMin:0 parameterMax:0) sliderMin:7 sliderMax:32 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"OuterGlow::Crop" parmFlags:{0, 0), 8, 0, 33}];
  }

  return v6;
}

- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v11 = v10;
  if (v10)
  {
    v21 = 0.0;
    [v10 getFloatValue:&v21 fromParm:1 atFxTime:a6->var0.var1];
    v20 = 0;
    [v11 getBoolValue:&v20 fromParm:8 atFxTime:a6->var0.var1];
    v19 = 0.0;
    [v11 getFloatValue:&v19 fromParm:6 atFxTime:a6->var0.var1];
    v19 = v19 * 0.01;
    v18 = 0.0;
    [v11 getFloatValue:&v18 fromParm:7 atFxTime:a6->var0.var1];
    var0 = a5->var0;
    var1 = a5->var1;
    if (v20 == 1)
    {
      if (a3)
      {
        *a3 = var0;
      }
    }

    else
    {
      v14 = v21 * 3.0;
      v15 = v14;
      v16 = vcvtpd_s64_f64(v18 * 0.01 * v15);
      if (a3)
      {
        *a3 = var0 + (2 * vcvtpd_s64_f64(v19 * v15));
      }

      var1 += (2 * v16);
    }

    if (a4)
    {
      *a4 = var1;
    }
  }

  return v11 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
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

  v12 = v10;
  if ([a4 imageType] != 3)
  {
    return 0;
  }

  v48 = 0.0;
  [v9 getFloatValue:&v48 fromParm:1 atFxTime:a5->var0.var1];
  if (v48 == 0.0)
  {
    if (a4)
    {
      [a4 heliumRef];
    }

    else
    {
      v46 = 0.0;
    }

    [a3 setHeliumRef:&v46];
    if (v46 != 0.0)
    {
      (*(**&v46 + 24))(COERCE_DOUBLE(*&v46));
    }
  }

  else
  {
    [(PAESharedDefaultBase *)self getScaleForImage:a4, v48];
    v14 = v46;
    v15 = v47;
    if (v46 <= v47)
    {
      v16 = v47;
    }

    else
    {
      v16 = v46;
    }

    v48 = v48 * v16;
    v45 = 0.0;
    [v9 getFloatValue:&v45 fromParm:6 atFxTime:a5->var0.var1];
    v45 = v14 / v16 * (v45 * 0.01);
    v44 = 0.0;
    [v9 getFloatValue:&v44 fromParm:7 atFxTime:a5->var0.var1];
    v44 = v15 / v16 * (v44 * 0.01);
    v43 = 0.0;
    [v9 getFloatValue:&v43 fromParm:2 atFxTime:a5->var0.var1];
    v41 = 0.0;
    v42 = 0.0;
    v40 = 0.0;
    [v9 getRedValue:&v42 greenValue:&v41 blueValue:&v40 fromParm:3 atFxTime:a5->var0.var1];
    v38 = 0.0;
    v39 = 0.0;
    v37 = 0.0;
    [v9 getRedValue:&v39 greenValue:&v38 blueValue:&v37 fromParm:4 atFxTime:a5->var0.var1];
    v36 = 0.0;
    [v9 getFloatValue:&v36 fromParm:5 atFxTime:a5->var0.var1];
    v35 = 0;
    [v9 getBoolValue:&v35 fromParm:8 atFxTime:a5->var0.var1];
    v17 = v36;
    if (v36 < 0.00100000005)
    {
      v17 = 0.00100000005;
    }

    v36 = v17;
    v43 = v43 * 4.0;
    v18 = [v12 versionAtCreation];
    v43 = v43 / 12.5;
    if (a4)
    {
      [a4 heliumRef];
    }

    else
    {
      v34 = 0;
    }

    v19 = HGObject::operator new(0x1B0uLL);
    HGaussianBlur::HGaussianBlur(v19);
    v20 = v48;
    v21 = v45;
    v22 = v44;
    HGaussianBlur::init(v19, v20, v21, v22, v18 == 0, 0, 0);
    (*(*v19 + 120))(v19, 0, v34);
    (*(*v19 + 16))(v19);
    v23 = HGObject::operator new(0x1A0uLL);
    HgcOuterGlowColorize::HgcOuterGlowColorize(v23);
    v24 = v39;
    v25 = v38;
    v26 = v37;
    (*(*v23 + 96))(v23, 0, v24, v25, v26, 1.0);
    v27 = v42;
    v28 = v41;
    v29 = v40;
    (*(*v23 + 96))(v23, 1, v27, v28, v29, 1.0);
    v30 = v43;
    (*(*v23 + 96))(v23, 2, v30, v30, v30, 1.0);
    v31.n128_u64[0] = 0;
    if (v36 > 0.0)
    {
      v31.n128_f64[0] = 1.0 / v36;
      v31.n128_f32[0] = 1.0 / v36;
    }

    (*(*v23 + 96))(v23, 3, v31, 0.0, 0.0, 0.0);
    (*(*v23 + 120))(v23, 0, v19);
    v32 = HGObject::operator new(0x1A0uLL);
    HgcOuterGlowLumaWeight::HgcOuterGlowLumaWeight(v32);
    v33 = v32;
    (*(*v32 + 96))(v32, 0, 0.0, 0.0, 0.0, 1.0);
    (*(*v33 + 120))(v33, 0, v23);
    (*(*v33 + 120))(v33, 1, v34);
    if (v35 == 1)
    {
      [(PAESharedDefaultBase *)self crop:&v33 fromImage:a4 toImage:a3];
    }

    [a3 setHeliumRef:&v33];
    if (v33)
    {
      (*(*v33 + 24))(v33);
    }

    (*(*v23 + 24))(v23);
    (*(*v19 + 24))(v19);
    (*(*v19 + 24))(v19);
    if (v34)
    {
      (*(*v34 + 24))(v34);
    }
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