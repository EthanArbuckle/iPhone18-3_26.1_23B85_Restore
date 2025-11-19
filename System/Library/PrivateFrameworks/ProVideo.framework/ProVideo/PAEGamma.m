@interface PAEGamma
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEGamma)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEGamma

- (PAEGamma)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEGamma;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  if ([PAEGamma properties]::once != -1)
  {
    [PAEGamma properties];
  }

  return [PAEGamma properties]::sPropertiesDict;
}

uint64_t __22__PAEGamma_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  result = [v0 initWithObjectsAndKeys:{&unk_28732D4F0, @"PixelTransformSupport", v1, @"PixelIndependent", v2, @"PositionIndependent", v3, @"MayRemapTime", v4, @"SupportsLargeRenderScale", v5, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
  [PAEGamma properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v5.receiver = self;
  v5.super_class = PAEGamma;
  [(PAESharedDefaultBase *)&v5 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    [v3 addFloatSliderWithName:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] parmId:"bundleForClass:" defaultValue:objc_opt_class()) parameterMin:"localizedStringForKey:value:table:" parameterMax:@"Gamma::Gamma" sliderMin:0 sliderMax:0) delta:1 parmFlags:{0, 1.0, 0.0, 10.0, 0.0, 5.0, 0.1}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v16 = 0.0;
    [v9 getFloatValue:&v16 fromParm:1 atFxTime:a5->var0.var1];
    v10 = v16;
    if (v16 < 0.06)
    {
      v10 = 0.06;
    }

    v16 = 1.0 / v10;
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
          v15 = 0;
        }

        v11 = HGObject::operator new(0x1B0uLL);
        HGGamma::HGGamma(v11);
        v12 = v16;
        (*(*v11 + 96))(v11, 0, v12, v12, v12, 1.0);
        (*(*v11 + 120))(v11, 0, v15);
        v14 = v11;
        (*(*v11 + 16))(v11);
        [a3 setHeliumRef:&v14];
        if (v14)
        {
          (*(*v14 + 24))(v14);
        }

        (*(*v11 + 24))(v11);
        if (v15)
        {
          (*(*v15 + 24))(v15);
        }

        LOBYTE(v9) = 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
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