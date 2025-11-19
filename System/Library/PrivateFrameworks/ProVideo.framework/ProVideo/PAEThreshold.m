@interface PAEThreshold
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEThreshold)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEThreshold

- (PAEThreshold)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEThreshold;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{&unk_28732D568, @"PixelTransformSupport", v3, @"PixelIndependent", v4, @"PositionIndependent", v5, @"MayRemapTime", v6, @"SupportsLargeRenderScale", v7, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v7.receiver = self;
  v7.super_class = PAEThreshold;
  [(PAESharedDefaultBase *)&v7 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Threshold::Threshold" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:0.5 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Threshold::Smoothness" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.15 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v4 addColorParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultRed:@"Threshold::Dark Color" defaultGreen:0 defaultBlue:0) parmFlags:{3, 0, 0.0, 0.0, 0.0}];
    [v4 addColorParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultRed:@"Threshold::Light Color" defaultGreen:0 defaultBlue:0) parmFlags:{4, 0, 1.0, 1.0, 1.0}];
    [v4 addToggleButtonWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Threshold::Correct For Alpha" parmFlags:{0, 0), 5, 0, 33}];
  }

  return 1;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    v35 = 0.0;
    [v9 getFloatValue:&v35 fromParm:1 atFxTime:a5->var0.var1];
    v34 = 0.0;
    [v10 getFloatValue:&v34 fromParm:2 atFxTime:a5->var0.var1];
    v32 = 0.0;
    v33 = 0.0;
    v31 = 0.0;
    [v10 getRedValue:&v33 greenValue:&v32 blueValue:&v31 fromParm:3 atFxTime:a5->var0.var1];
    v29 = 0.0;
    v30 = 0.0;
    v28 = 0.0;
    [v10 getRedValue:&v30 greenValue:&v29 blueValue:&v28 fromParm:4 atFxTime:a5->var0.var1];
    v27 = 0;
    v11 = [v10 getIntValue:&v27 fromParm:5 atFxTime:a5->var0.var1];
    LODWORD(v9) = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
    if (v9)
    {
      if ([a4 imageType] == 3)
      {
        v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
        if (v9)
        {
          v12 = v9;
          if (a4)
          {
            [a4 heliumRef];
          }

          else
          {
            v26 = 0;
          }

          v25 = 0;
          if (v27)
          {
            v13 = v11;
          }

          else
          {
            v13 = 0;
          }

          if (v13 == 1)
          {
            v14 = HGObject::operator new(0x1A0uLL);
            HgcThreshold::HgcThreshold(v14);
          }

          else
          {
            v14 = HGObject::operator new(0x1A0uLL);
            HgcThresholdNoPremult::HgcThresholdNoPremult(v14);
          }

          if (v14)
          {
            v25 = v14;
          }

          v15 = v34;
          if (v34 == 0.0)
          {
            v34 = 0.00100000005;
            v15 = 0.00100000005;
          }

          (*(*v14 + 120))(v14, 0, v26);
          v16 = v35;
          (*(*v14 + 96))(v14, 0, v16, 0.0, 0.0, 0.0);
          v17 = 1.0 / v15;
          (*(*v14 + 96))(v14, 1, v17, 0.0, 0.0, 0.0);
          [v12 versionAtCreation];
          v18 = v33;
          v19 = v32;
          v20 = v31;
          (*(*v14 + 96))(v14, 2, v18, v19, v20, 1.0);
          v21 = v30;
          v22 = v29;
          v23 = v28;
          (*(*v14 + 96))(v14, 3, v21, v22, v23, 1.0);
          [a3 setHeliumRef:&v25];
          if (v25)
          {
            (*(*v25 + 24))(v25);
          }

          if (v26)
          {
            (*(*v26 + 24))(v26);
          }

          LOBYTE(v9) = 1;
        }
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