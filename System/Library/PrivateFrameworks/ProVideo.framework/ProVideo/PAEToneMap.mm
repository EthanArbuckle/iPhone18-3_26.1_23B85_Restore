@interface PAEToneMap
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEToneMap)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEToneMap

- (PAEToneMap)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEToneMap;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  if ([PAEToneMap properties]::once != -1)
  {
    [PAEToneMap properties];
  }

  return [PAEToneMap properties]::sPropertiesDict;
}

uint64_t __24__PAEToneMap_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:67584];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:591872];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
  result = [v0 initWithObjectsAndKeys:{MEMORY[0x277CBEC38], @"PixelTransformSupport", v1, @"PixelIndependent", v2, @"PositionIndependent", v3, @"MayRemapTime", v4, @"SupportsLargeRenderScale", v5, @"SupportsHeliumRendering", v6, @"SDRWorkingSpace", v7, @"HDRWorkingSpace", v8, @"AutoColorProcessingSupport", 0}];
  [PAEToneMap properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEToneMap;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"PAE_TM::Gamma" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:0.699999988 parmFlags:{0.0, 2.0, 0.0, 2.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"PAE_TM::Max" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:12.0 parmFlags:{0.0, 100.0, 0.0, 12.0, 0.1}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v9 = v8;
  if (v8)
  {
    v16 = 0.0;
    v17 = 0.0;
    [v8 getFloatValue:&v17 fromParm:1 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v16 fromParm:2 atFxTime:a5->var0.var1];
    if (a4)
    {
      [a4 heliumRef];
    }

    else
    {
      v15 = 0;
    }

    v10 = v17;
    v11 = v16;
    FxApplySimpleToneCurve(&v15, &v14, v10, v11);
    v12 = v14;
    if (v15 == v14)
    {
      if (v15)
      {
        (*(*v14 + 24))(v14);
      }
    }

    else
    {
      if (v15)
      {
        (*(*v15 + 24))();
        v12 = v14;
      }

      v15 = v12;
    }

    [a3 setHeliumRef:&v15];
    if (v15)
    {
      (*(*v15 + 24))(v15);
    }
  }

  return v9 != 0;
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