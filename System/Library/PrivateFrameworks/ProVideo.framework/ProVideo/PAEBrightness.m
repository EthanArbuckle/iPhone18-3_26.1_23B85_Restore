@interface PAEBrightness
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEBrightness)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEBrightness

- (PAEBrightness)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEBrightness;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  if ([PAEBrightness properties]::once != -1)
  {
    [PAEBrightness properties];
  }

  return [PAEBrightness properties]::sPropertiesDict;
}

uint64_t __27__PAEBrightness_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:67584];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:591872];
  result = [v0 initWithObjectsAndKeys:{v1, @"PixelTransformSupport", v2, @"PixelIndependent", v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"SDRWorkingSpace", v8, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
  [PAEBrightness properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v5.receiver = self;
  v5.super_class = PAEBrightness;
  [(PAESharedDefaultBase *)&v5 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    [v3 addFloatSliderWithName:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] parmId:"bundleForClass:" defaultValue:objc_opt_class()) parameterMin:"localizedStringForKey:value:table:" parameterMax:@"Brightness::Brightness" sliderMin:0 sliderMax:0) delta:1 parmFlags:{0, 1.0, 0.0, 1000.0, 0.0, 5.0, 0.1}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!v8)
  {
    return 0;
  }

  v15 = 0;
  [v8 getFloatValue:&v15 fromParm:1 atFxTime:a5->var0.var1];
  v9 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
  v10 = [a4 imageType];
  if (v9)
  {
    v11 = v10 == 3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v11)
  {
    if (a4)
    {
      [a4 heliumRef];
    }

    v13 = HGObject::operator new(0x1F0uLL);
    HGColorMatrix::HGColorMatrix(v13);
  }

  return v12;
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