@interface PAERingLens
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAERingLens)initWithAPIManager:(id)a3;
- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4;
- (id)properties;
@end

@implementation PAERingLens

- (PAERingLens)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAERingLens;
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

- (id)dynamicPropertiesAtTime:(id)a3 withError:(id *)a4
{
  v7 = [(PAEFilterDefaultBase *)self getParamAPIWithError:a4];
  v13 = 0.0;
  if ([v7 getFloatValue:&v13 fromParm:2 atFxTime:a3.var1] & 1) != 0 && (v12 = 0, (objc_msgSend(v7, "getBoolValue:fromParm:atFxTime:", &v12, 5, a3.var1)))
  {
    if (v12 & 1 | (v13 != 0.0))
    {
      v8 = 1;
    }

    else
    {
      v8 = 6;
    }

    return [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v8, v13), @"PixelTransformSupport", 0}];
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

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAERingLens;
  [(PAESharedDefaultBase *)&v10 addParameters];
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
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"RingLens::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"RingLens::Radius" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:160.0 parmFlags:{0.0, dbl_260343D80[v7 < 2], 0.0, dbl_2603432A0[v7 < 2], 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"RingLens::Thickness" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.43 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"RingLens::Refraction" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:1.7 parmFlags:{-5.0, 5.0, -5.0, 5.0, 0.5}];
    if (v7)
    {
      [v3 addToggleButtonWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"RingLens::Crop" parmFlags:{0, 0), 5, 0, 33}];
    }
  }

  return v6;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = v9;
  if (v9)
  {
    v26 = 160.0;
    [v9 getFloatValue:&v26 fromParm:2 atFxTime:a5->var0.var1];
    if (v26 == 0.0)
    {
      if (a4)
      {
        [a4 heliumRef];
      }

      else
      {
        v25[0] = 0.0;
      }

      [a3 setHeliumRef:v25];
      if (*&v25[0])
      {
        (*(**&v25[0] + 24))(*&v25[0]);
      }
    }

    else
    {
      v11 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8, v26];
      if (v11)
      {
        [v11 versionAtCreation];
      }

      [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
      [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a3];
      __asm { FMOV            V0.2D, #0.5 }

      *v23 = _Q0;
      [v10 getXValue:v23 YValue:&v23[1] fromParm:1 atFxTime:a5->var0.var1];
      [(PAESharedDefaultBase *)self convertRelativeToImageCoordinates:v23 withImage:a4];
      *v23 = v22;
      PCMatrix44Tmpl<double>::rightTranslate(v25, *&v22, *(&v22 + 1), 0.0);
      v17.f64[0] = -v23[0];
      *&v18 = *&PCMatrix44Tmpl<double>::leftTranslate(v24, v17, -v23[1], 0.0);
      *&v22 = 0x3FDB851EB851EB85;
      [v10 getFloatValue:&v22 fromParm:3 atFxTime:{a5->var0.var1, v18}];
      v21 = 0x3FFB333333333333;
      [v10 getFloatValue:&v21 fromParm:4 atFxTime:a5->var0.var1];
      if (-[PAESharedDefaultBase getRenderMode:](self, "getRenderMode:", a5->var0.var1) && [a4 imageType] == 3)
      {
        if (a4)
        {
          [a4 heliumRef];
        }

        v19 = HGObject::operator new(0x2B0uLL);
        HRingLens::HRingLens(v19);
      }
    }
  }

  return v10 != 0;
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