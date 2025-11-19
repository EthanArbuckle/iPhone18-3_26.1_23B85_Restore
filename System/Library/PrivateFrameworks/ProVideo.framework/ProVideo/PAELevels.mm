@interface PAELevels
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAELevels)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAELevels

- (PAELevels)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAELevels;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = [-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F2C8), "versionAtCreation"}];
  if (v2 <= 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  v4 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  if (v2 <= 1)
  {
    v5 = 590080;
  }

  else
  {
    v5 = 593920;
  }

  v15 = MEMORY[0x277CBEAC0];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:65792];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  return [v15 dictionaryWithObjectsAndKeys:{v6, @"PixelTransformSupport", v7, @"PixelIndependent", v8, @"PositionIndependent", v9, @"MayRemapTime", v10, @"SupportsLargeRenderScale", v11, @"SupportsHeliumRendering", v12, @"SDRWorkingSpace", v13, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1), @"SupportsInternalMixing", v4, @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v8.receiver = self;
  v8.super_class = PAELevels;
  [(PAESharedDefaultBase *)&v8 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735BCA0];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 addHistogramWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" parmFlags:{@"Levels::Histogram", 0, 0), 1, 0}];
  [v4 addToggleButtonWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Levels::HDR In Rec. 709" parmFlags:{0, 0), 2, 0, 2}];
  return v6;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v28[21] = *MEMORY[0x277D85DE8];
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E548];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || v10 == 0)
  {
LABEL_18:
    LOBYTE(v18) = 0;
    return v18;
  }

  v27 = 0;
  v28[0] = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0.0;
  [v8 mixAmountAtTime:a5->var0.var1];
  LODWORD(v21) = 1;
  [v8 getHistogramBlackIn:v28 BlackOut:&v27 WhiteIn:&v26 WhiteOut:&v25 Gamma:&v24 forChannel:0 fromParm:v21 atFxTime:a5->var0.var1];
  v13 = 0;
  v14 = v24;
  if (v24 < 0.001)
  {
    v14 = 0.001;
  }

  v24 = 1.0 / v14;
  v15 = 1;
  do
  {
    LODWORD(v22) = 1;
    [v8 getHistogramBlackIn:&v28[v13 + 17] BlackOut:&v28[v13 + 13] WhiteIn:&v28[v13 + 9] WhiteOut:&v28[v13 + 5] Gamma:&v28[v13 + 1] forChannel:v15 fromParm:v22 atFxTime:a5->var0.var1];
    v16 = *&v28[v13 + 1];
    if (v16 < 0.001)
    {
      v16 = 0.001;
    }

    *&v28[++v13] = 1.0 / v16;
    ++v15;
  }

  while (v13 != 4);
  [v9 colorPrimaries];
  v17 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v23 = 0;
  [v17 getBoolValue:&v23 fromParm:2 atFxTime:a5->var0.var1];
  v18 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
  if (v18)
  {
    if ([a4 imageType] == 3)
    {
      if (a4)
      {
        [a4 heliumRef];
      }

      v19 = HGObject::operator new(0x1A0uLL);
      HLevels::HLevels(v19);
    }

    goto LABEL_18;
  }

  return v18;
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