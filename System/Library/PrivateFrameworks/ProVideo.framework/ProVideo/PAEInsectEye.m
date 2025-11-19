@interface PAEInsectEye
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEInsectEye)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEInsectEye

- (PAEInsectEye)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEInsectEye;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v15.receiver = self;
  v15.super_class = PAEInsectEye;
  [(PAESharedDefaultBase *)&v15 addParameters];
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
    v9 = [v8 localizedStringForKey:@"InsectEye::Size" value:0 table:0];
    v10 = 64.0;
    if (v7)
    {
      v10 = 128.0;
      v11 = 2048.0;
    }

    else
    {
      v11 = 512.0;
    }

    if (v7)
    {
      v12 = 512.0;
    }

    else
    {
      v12 = 128.0;
    }

    if (v7)
    {
      v13 = 32.0;
    }

    else
    {
      v13 = 8.0;
    }

    [v3 addFloatSliderWithName:v9 parmId:1 defaultValue:0 parameterMin:v10 parameterMax:4.0 sliderMin:v11 sliderMax:8.0 delta:v12 parmFlags:1.0];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"InsectEye::Refraction" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:2.0 parmFlags:{0.0, 10.0, 0.0, 4.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"InsectEye::Border" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:1.0 parmFlags:{0.0, v11, 0.0, v13, 1.0}];
    [v3 addColorParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultRed:@"InsectEye::Border Color" defaultGreen:0 defaultBlue:0) parmFlags:{4, 0, 0.0, 0.0, 0.0}];
  }

  return v6;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    [(PAESharedDefaultBase *)self getPixelTransformForImage:a3];
    v11 = fabs(v36[0]);
    [a4 width];
    [a4 height];
    v35 = 0.0;
    [v10 getFloatValue:&v35 fromParm:1 atFxTime:a5->var0.var1];
    v35 = v11 * v35;
    v34 = 0.0;
    [v10 getFloatValue:&v34 fromParm:2 atFxTime:a5->var0.var1];
    v33 = 0;
    [v10 getFloatValue:&v33 fromParm:3 atFxTime:a5->var0.var1];
    v31 = 0;
    v32 = 0;
    v30 = 0;
    [v10 getRedValue:&v32 greenValue:&v31 blueValue:&v30 fromParm:4 atFxTime:a5->var0.var1];
    LODWORD(v9) = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
    if (v9)
    {
      if ([a4 imageType] == 3)
      {
        if (a4)
        {
          [a4 heliumRef];
        }

        else
        {
          v29 = 0;
        }

        [a4 bounds];
        v27.f64[0] = v12;
        v27.f64[1] = v13;
        v28.f64[0] = v14;
        v28.f64[1] = v15;
        PCMatrix44Tmpl<double>::transformRect<double>(v36, v27.f64, &v27);
        if (v34 < 1.0)
        {
          v25 = v29;
          if (v29)
          {
            (*(*v29 + 16))(v29);
          }

          [(PAESharedDefaultBase *)self smear:&v25 fromImage:a4 toImage:a4];
          v16 = v26;
          if (v29 == v26)
          {
            if (v29)
            {
              (*(*v26 + 24))(v26);
            }
          }

          else
          {
            if (v29)
            {
              (*(*v29 + 24))();
              v16 = v26;
            }

            v29 = v16;
            v26 = 0;
          }

          if (v25)
          {
            (*(*v25 + 24))(v25);
          }

          __asm
          {
            FMOV            V0.2D, #0.5
            FMOV            V1.2D, #-1.0
          }

          v27 = vaddq_f64(v27, _Q0);
          v28 = vaddq_f64(v28, _Q1);
          v23 = HGObject::operator new(0x1A0uLL);
          HInsectEye_Base::HInsectEye_Base(v23);
        }

        Fx_smearToRect();
      }

      LOBYTE(v9) = 0;
    }
  }

  return v9;
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