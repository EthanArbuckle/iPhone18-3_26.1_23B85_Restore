@interface PAEVignette
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEVignette)initWithAPIManager:(id)a3;
- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4;
- (id)properties;
@end

@implementation PAEVignette

- (PAEVignette)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEVignette;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEVignette;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Vignette::Size" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:0.6 parmFlags:{0.0, 1.5, 0.0, 1.5, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Vignette::Falloff" parameterMin:0 parameterMax:0) sliderMin:5 sliderMax:0 delta:0.5 parmFlags:{0.001, 1.0, 0.001, 1.0, 0.01}];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"Vignette::Center" defaultY:0 parmFlags:{0), 6, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Vignette::Blur Amount" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:4.0 parmFlags:{0.0, 400.0, 0.0, 16.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Vignette::Darken" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.3 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Vignette::Saturation" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:0.3 parmFlags:{-3.0, 3.0, -1.0, 1.0, 0.01}];
    [v3 addToggleButtonWithName:@"Prescale Input" parmId:7 defaultValue:0 parmFlags:2];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
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

  v13 = [a4 imageType];
  v14 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
  [v9 mixAmountAtTime:a5->var0.var1];
  result = 0;
  if (v14 && v13 == 3)
  {
    v16 = v15;
    v41 = 0.0;
    [v9 getFloatValue:&v41 fromParm:1 atFxTime:a5->var0.var1];
    if (v41 == 0.0)
    {
      if (a4)
      {
        [a4 heliumRef];
      }

      else
      {
        v35 = 0.0;
      }

      [a3 setHeliumRef:&v35];
      if (v35 != 0.0)
      {
        (*(**&v35 + 24))(COERCE_DOUBLE(*&v35));
      }
    }

    else
    {
      v41 = 1.5 - v41;
      v40 = 0.0;
      [v9 getFloatValue:&v40 fromParm:5 atFxTime:a5->var0.var1];
      v39 = 0;
      [v9 getFloatValue:&v39 fromParm:2 atFxTime:a5->var0.var1];
      v38 = 0.0;
      [v9 getFloatValue:&v38 fromParm:3 atFxTime:a5->var0.var1];
      v37 = 0.0;
      [v9 getFloatValue:&v37 fromParm:4 atFxTime:a5->var0.var1];
      v35 = 0.0;
      v36 = 0.0;
      [v9 getXValue:&v35 YValue:&v36 fromParm:6 atFxTime:a5->var0.var1];
      if (a4)
      {
        [a4 heliumRef];
      }

      else
      {
        v34 = 0;
      }

      v17 = HGObject::operator new(0x1A0uLL);
      HgcVignetteBB::HgcVignetteBB(v17);
      v33 = v17;
      (*(*v17 + 120))(v17, 0, v34);
      v19 = v40;
      v18 = v41;
      v20 = v37;
      v21 = v38;
      v22 = [a4 width];
      v23 = [a4 height];
      v24 = v35 + -0.5;
      v25 = v36 + -0.5;
      (*(*v17 + 96))(v17, 0, v24, v25, 0.0, 0.0);
      v26 = 1.0 / ((1.50999999 - v18) * v19);
      v27 = -(v18 * v26);
      (*(*v17 + 96))(v17, 1, v26, v27, 0.0, 0.0);
      v28 = 1.0 - v21;
      v29 = v20 + 1.0;
      (*(*v17 + 96))(v17, 2, v28, v29, 1.0, 1.0);
      v30 = 1.0 / v22;
      v31 = 1.0 / v23;
      (*(*v17 + 96))(v17, 3, v30, v31, 0.0, 0.0);
      v32 = v16;
      (*(*v17 + 96))(v17, 4, v32, 0.0, 0.0, 0.0);
      [a3 setHeliumRef:&v33];
      if (v33)
      {
        (*(*v33 + 24))(v33);
      }

      if (v34)
      {
        (*(*v34 + 24))(v34);
      }
    }

    return 1;
  }

  return result;
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

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"SupportsHeliumRendering", v5, @"InputSizeLimit", v6, @"SupportsInternalMixing", v7, @"PositionIndependent", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4
{
  v12 = 0.0;
  if ([-[PAEFilterDefaultBase getParamAPIWithError:](self getParamAPIWithError:{a4), "getFloatValue:fromParm:atFxTime:", &v12, 1, a3.var1}])
  {
    if (v12 == 0.0)
    {
      v6 = 6;
    }

    else
    {
      v6 = 1;
    }

    v7 = MEMORY[0x277CBEAC0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{v6, v12}];
    return [v7 dictionaryWithObjectsAndKeys:{v8, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1), @"SupportsStableAnimation", 0}];
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

  return result;
}

@end