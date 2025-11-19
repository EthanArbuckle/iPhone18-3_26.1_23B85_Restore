@interface PAELightRays
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6;
- (PAELightRays)initWithAPIManager:(id)a3;
- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4;
- (id)properties;
- (void)dealloc;
@end

@implementation PAELightRays

- (PAELightRays)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAELightRays;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAELightRays;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1), @"InputSizeLimit", 0}];
}

- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4
{
  v7 = [(PAEFilterDefaultBase *)self getParamAPIWithError:a4];
  v16 = 0.0;
  v15 = 0;
  if ([v7 getFloatValue:&v16 fromParm:1 atFxTime:a3.var1] && (objc_msgSend(v7, "getBoolValue:fromParm:atFxTime:", &v15, 5, a3.var1) & 1) != 0)
  {
    if (v16 == 0.0)
    {
      v8 = 6;
    }

    else
    {
      v8 = 1;
    }

    if (v15)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }

    v10 = MEMORY[0x277CBEAC0];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{v8, v16}];
    return [v10 dictionaryWithObjectsAndKeys:{v11, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v9), @"AutoColorProcessingSupport", 0}];
  }

  else if (a4)
  {
    v13 = objc_opt_class();
    v14 = [(PAEFilterDefaultBase *)self getParamErrorFor:NSStringFromClass(v13)];
    result = 0;
    *a4 = v14;
  }

  else
  {
    return 0;
  }

  return result;
}

- (BOOL)addParameters
{
  v8.receiver = self;
  v8.super_class = PAELightRays;
  [(PAESharedDefaultBase *)&v8 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  v4 = [-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F2C8), "versionAtCreation"}];
  if (v3)
  {
    v5 = v4 < 2;
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"LightRays::Amount" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:50.0 parmFlags:{0.0, 200.0, 0.0, 200.0, 1.0}];
    [v3 addPointParameterWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultX:@"LightRays::Center" defaultY:0 parmFlags:{0), 2, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"LightRays::Glow" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:1.5 parmFlags:{0.0, 8.0, 0.0, 8.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"LightRays::Expansion" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:32 delta:0.4 parmFlags:{0.0, 2.0, 0.0, 2.0, 0.1}];
    [v3 addToggleButtonWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"LightRays::Clip" parmFlags:{0, 0), 5, v5, 1}];
  }

  return 1;
}

- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  v11 = v10;
  if (v10)
  {
    v17 = 0.0;
    [v10 getFloatValue:&v17 fromParm:1 atFxTime:a6->var0.var1];
    v16 = 0.0;
    [v11 getFloatValue:&v16 fromParm:4 atFxTime:a6->var0.var1];
    var1 = a5->var1;
    v13 = v17 * v16;
    v14 = (2 * vcvtps_s32_f32(v13));
    if (a3)
    {
      *a3 = a5->var0 + v14;
    }

    if (a4)
    {
      *a4 = var1 + v14;
    }
  }

  return v11 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v6 = MEMORY[0x28223BE20](self);
  v8 = v7;
  v10 = v9;
  v34 = v11;
  v45[2] = *MEMORY[0x277D85DE8];
  v33 = v6;
  v12 = [*(v6 + 8) apiForProtocol:&unk_28735B780];
  v13 = v12;
  if (v12)
  {
    v43[0] = 0.0;
    [v12 getFloatValue:v43 fromParm:1 atFxTime:*v8];
    if (v43[0] == 0.0)
    {
      if (v10)
      {
        [v10 heliumRef];
      }

      else
      {
        *&v44[0].var0 = 0;
      }

      [v34 setHeliumRef:v44];
      if (*&v44[0].var0)
      {
        (*(**&v44[0].var0 + 24))(*&v44[0].var0);
      }
    }

    else
    {
      v41 = 0x3FE0000000000000;
      v42 = 0x3FE0000000000000;
      [v13 getXValue:&v42 YValue:&v41 fromParm:2 atFxTime:{*v8, v43[0]}];
      v40 = 0;
      [v13 getFloatValue:&v40 fromParm:3 atFxTime:*v8];
      v39 = 0;
      [v13 getBoolValue:&v39 fromParm:5 atFxTime:*v8];
      if (v10)
      {
        [v10 heliumRef];
      }

      else
      {
        v38 = 0;
      }

      v14 = [v34 width];
      v15 = [v34 height];
      v45[0] = 0;
      v45[1] = 0;
      v16 = HGObject::operator new(0x1D0uLL);
      HGTextureWrap::HGTextureWrap(v16);
      HGTextureWrap::SetTextureWrapMode(v16, 0, v17);
      HGTextureWrap::SetTextureBorderColor(v16, v45);
      (*(*v16 + 120))(v16, 0, v38);
      v18 = v14 * 0.5;
      v19 = vcvtd_n_f64_u64(v15, 1uLL);
      *&v44[0].var0 = HGRectMake4f(v20, -v18, -v19, v18, v19);
      *&v44[0].var2 = v21;
      HGTextureWrap::SetCropRect(v16, v44);
      if ([objc_msgSend(v33[1] apiForProtocol:{&unk_28735F2C8), "versionAtCreation"}])
      {
        [v10 width];
        [v10 width];
        v5 = [v10 height];
        [v10 height];
      }

      [v33 getScaleForImage:v10];
      v22 = v36;
      if (v36 <= v37)
      {
        v22 = v37;
      }

      LODWORD(v5) = vcvtpd_s64_f64(v22 * v43[0] * 0.5);
      if (v5 >= 1)
      {
        v23 = 0;
        v24 = 0.00390625 / v22;
        v25 = 0.0;
        do
        {
          v26 = 1.0 - (v23 / v5);
          *(&v44[0].var0 + v23) = v26;
          v25 = v25 + v26;
          *(&v43[1] + v23) = 1.0 - (v24 * v23);
          ++v23;
        }

        while (v5 != v23);
        v27 = v44;
        v28 = v5;
        v29 = 1.0 / v25;
        do
        {
          *v27 = v29 * *v27;
          ++v27;
          --v28;
        }

        while (v28);
      }

      v35 = 0;
      if (v5)
      {
        v30 = HGObject::operator new(0x1A0uLL);
        HGNode::HGNode(v30);
        if (v30)
        {
          v35 = v30;
        }

        if (v5 >= 1)
        {
          v31 = HGObject::operator new(0x1B0uLL);
          HgcConvolvePass8tapPoint::HgcConvolvePass8tapPoint(v31);
        }
      }

      else
      {
        v35 = v16;
        (*(*v16 + 16))(v16);
      }

      [v33 crop:&v35 fromImage:v34 toImage:v34];
      [v34 setHeliumRef:&v35];
      if (v35)
      {
        (*(*v35 + 24))(v35);
      }

      (*(*v16 + 24))(v16);
      if (v38)
      {
        (*(*v38 + 24))(v38);
      }
    }
  }

  return v13 != 0;
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