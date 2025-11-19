@interface PAEWidescreen
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEWidescreen)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEWidescreen

- (PAEWidescreen)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEWidescreen;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:3];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEWidescreen;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Widescreen::Aspect Ratio" menuEntries:0 parmFlags:{0), 1, 0, objc_msgSend(objc_msgSend(v4, "localizedStringForKey:value:table:", @"Widescreen::AspectEntries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Widescreen::Offset" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.0 parmFlags:{-1.0, 1.0, -1.0, 1.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Widescreen::Border Size" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.0 parmFlags:{0.0, 10.0, 0.0, 10.0, 1.0}];
    [v3 addColorParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultRed:@"Widescreen::Border Color" defaultGreen:0 defaultBlue:0) defaultAlpha:4 parmFlags:{0, 0.0, 0.0, 0.0, 1.0}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v9)
  {
    v10 = [v9 versionAtCreation] != 0;
  }

  else
  {
    v10 = 0;
  }

  v54 = 0x3FF0000000000000;
  v51 = 0x3FF0000000000000;
  *&v48[40] = 0x3FF0000000000000;
  *v48 = 0x3FF0000000000000;
  memset(&v48[8], 0, 32);
  v49 = 0u;
  v50 = 0u;
  v52 = 0u;
  v53 = 0u;
  v47 = 0x3FF0000000000000;
  v44 = 0x3FF0000000000000;
  *&v41[40] = 0x3FF0000000000000;
  *v41 = 0x3FF0000000000000;
  memset(&v41[8], 0, 32);
  v42 = 0u;
  v43 = 0u;
  v45 = 0u;
  v46 = 0u;
  if (v10)
  {
    [(PAESharedDefaultBase *)self getPixelTransformForImage:a3];
    for (i = 0; i != 16; i += 4)
    {
      v12 = &v41[i * 8];
      v13 = *&v40[i + 2];
      *v12 = *&v40[i];
      v12[1] = v13;
    }

    [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a3];
    for (j = 0; j != 16; j += 4)
    {
      v15 = &v48[j * 8];
      v16 = *&v40[j];
      v17 = *&v40[j + 2];
      *v15 = v16;
      v15[1] = v17;
    }
  }

  else
  {
    v18 = [a4 width];
    v19 = [a4 height];
    v20.f64[0] = v18 * -0.5;
    PCMatrix44Tmpl<double>::leftTranslate(v48, v20, v19 * -0.5, 0.0);
    var3 = a5->var3;
    var4 = a5->var4;
    if (var3 != 1.0)
    {
      *v48 = vmulq_n_f64(*v48, var3);
      *&v48[16] = vmulq_n_f64(*&v48[16], var3);
    }

    if (var4 != 1.0)
    {
      *&v48[32] = vmulq_n_f64(*&v48[32], var4);
      v49 = vmulq_n_f64(v49, var4);
    }

    v23 = 1.0 / var3;
    v24 = 1.0 / var4;
    if (v23 != 1.0)
    {
      *v41 = vmulq_n_f64(*v41, v23);
      *&v41[16] = vmulq_n_f64(*&v41[16], v23);
    }

    if (v24 != 1.0)
    {
      *&v41[32] = vmulq_n_f64(*&v41[32], v24);
      v42 = vmulq_n_f64(v42, v24);
    }

    v25 = [a4 width];
    v26 = [a4 height];
    v27.f64[0] = vcvtd_n_f64_u64(v25, 1uLL);
    *&v16 = *&PCMatrix44Tmpl<double>::leftTranslate(v41, v27, vcvtd_n_f64_u64(v26, 1uLL), 0.0);
  }

  [a3 bounds];
  [a4 bounds];
  v28 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v28)
  {
    v29 = v28;
    v39 = 0;
    v40[0] = 0;
    v37 = 0.0;
    v38 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    v34 = 0.0;
    [v28 getIntValue:&v39 fromParm:1 atFxTime:a5->var0.var1];
    [v29 getFloatValue:v40 fromParm:2 atFxTime:a5->var0.var1];
    [v29 getFloatValue:&v38 fromParm:3 atFxTime:a5->var0.var1];
    [v29 getRedValue:&v37 greenValue:&v36 blueValue:&v35 alphaValue:&v34 fromParm:4 atFxTime:a5->var0.var1];
    v36 = v34 * v36;
    v37 = v34 * v37;
    v35 = v34 * v35;
    v30 = v38;
    if (v38 != 0.0)
    {
      v31 = v38;
      v30 = (v31 / 100.0);
    }

    LODWORD(v28) = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1, v30];
    if (v28)
    {
      if ([a4 imageType] == 3)
      {
        if (a4)
        {
          [a4 heliumRef];
        }

        v32 = HGObject::operator new(0x1A0uLL);
        HWideScreen::HWideScreen(v32);
      }

      LOBYTE(v28) = 0;
    }
  }

  return v28;
}

- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6
{
  *a6 = 1;
  *a5 = 0;
  v6 = *&a3->var2;
  v8[0] = *&a3->var0.var0;
  v8[1] = v6;
  v8[2] = *&a3->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:a5 software:a6];
  return 1;
}

@end