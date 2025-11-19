@interface PAEHalftone
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEHalftone)initWithAPIManager:(id)a3;
- (id)properties;
- (void)compute_2x2_matrix:(double *)a3 fromAngle:(double)a4 andScale:(double)a5;
- (void)dealloc;
@end

@implementation PAEHalftone

- (PAEHalftone)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEHalftone;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEHalftone;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:65792];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:590080];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:6];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"SDRWorkingSpace", v8, @"HDRWorkingSpace", v9, @"SupportsInternalMixing", v10, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEHalftone;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"Halftone::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addAngleSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Halftone::Angle" parameterMin:0 parameterMax:0) parmFlags:{2, 0, 45.0, 0.0, 360.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Halftone::Scale" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:6.0 parmFlags:{2.0, 100.0, 2.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Halftone::Contrast" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:0.5 parmFlags:{0.0, 0.99, 0.0, 0.99, 0.1}];
  }

  return v3 != 0;
}

- (void)compute_2x2_matrix:(double *)a3 fromAngle:(double)a4 andScale:(double)a5
{
  v6 = 1.0 / a5;
  v12 = v6;
  v7 = a4;
  v8 = __sincosf_stret(v7);
  v9 = vmul_f32(v8, 0);
  v10 = vrev64_s32(v8);
  v11.i32[0] = vadd_f32(v9, v10).u32[0];
  v11.i32[1] = vsub_f32(v9, v10).i32[1];
  *a3 = vcvtq_f64_f32(vmul_n_f32(v11, v12));
  *(a3 + 1) = vcvtq_f64_f32(vmul_n_f32(v8, v12));
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v26[4] = *MEMORY[0x277D85DE8];
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || v10 == 0;
  v13 = !v12;
  if (!v12)
  {
    v14 = v10;
    v15 = [v9 versionAtCreation];
    v24 = 0x3FE0000000000000;
    v25 = 0x3FE0000000000000;
    v23 = 45.0;
    v21 = 0x3FE0000000000000;
    v22 = 6.0;
    [a4 width];
    [a4 height];
    [v8 getXValue:&v25 YValue:&v24 fromParm:1 atFxTime:a5->var0.var1];
    [v8 getFloatValue:&v23 fromParm:2 atFxTime:a5->var0.var1];
    [v8 getFloatValue:&v22 fromParm:3 atFxTime:a5->var0.var1];
    [v8 getFloatValue:&v21 fromParm:4 atFxTime:a5->var0.var1];
    [v8 mixAmountAtTime:a5->var0.var1];
    [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a4];
    [(PAEHalftone *)self compute_2x2_matrix:v26 fromAngle:v23 andScale:v22];
    [objc_msgSend(v14 colorMatrixFromDesiredRGBToYCbCrAtTime:{a5->var0.var1), "matrix"}];
    if ([(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1])
    {
      if ([a4 imageType] == 3)
      {
        if (a4)
        {
          [a4 heliumRef];
        }

        else
        {
          v20 = 0;
        }

        if (!a5->var5)
        {
          v16 = HGObject::operator new(0x1C0uLL);
          HGColorClamp::HGColorClamp(v16);
        }

        if (!v15)
        {
          v17 = HGObject::operator new(0x1B0uLL);
          HGGamma::HGGamma(v17);
          (*(*v17 + 96))(v17, 0, 1.1111, 0.0, 0.0, 0.0);
          (*(*v17 + 120))(v17, 0, v20);
          if (v20 != v17)
          {
            if (v20)
            {
              (*(*v20 + 24))();
            }

            (*(*v17 + 16))(v17);
          }

          (*(*v17 + 24))(v17);
        }

        v18 = HGObject::operator new(0x1A0uLL);
        HgcHalftone::HgcHalftone(v18);
      }
    }
  }

  return v13;
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