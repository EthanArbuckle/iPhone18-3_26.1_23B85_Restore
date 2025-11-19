@interface PAEFunHouse
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEFunHouse)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEFunHouse

- (PAEFunHouse)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEFunHouse;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAEFunHouse;
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
    [v3 addPointParameterWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultX:@"FunHouse::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"FunHouse::Width" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:400.0 parmFlags:{1.0, dbl_260343D80[v7 == 0], 1.0, dbl_2603432A0[v7 == 0], 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"FunHouse::Amount" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:3.0 parmFlags:{1.0, 100.0, 1.0, 100.0, 1.0}];
    [v3 addAngleSliderWithName:objc_msgSend(v8 parmId:"localizedStringForKey:value:table:" defaultValue:@"FunHouse::Angle" parameterMin:0 parameterMax:0) parmFlags:{4, 0, 0.0, -360.0, 360.0}];
  }

  return v6;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    [(PAESharedDefaultBase *)self getScaleForImage:a4];
    v17 = 0x3FE0000000000000;
    v18 = 0x3FE0000000000000;
    [v10 getXValue:&v18 YValue:&v17 fromParm:1 atFxTime:a5->var0.var1];
    v16 = 0;
    [v10 getFloatValue:&v16 fromParm:2 atFxTime:a5->var0.var1];
    v15 = 0;
    [v10 getFloatValue:&v15 fromParm:3 atFxTime:a5->var0.var1];
    v14 = 30.0;
    [v10 getFloatValue:&v14 fromParm:4 atFxTime:a5->var0.var1];
    v11 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
    __sincos_stret(v14);
    if (v11 && [a3 imageType] == 3)
    {
      v12 = HGObject::operator new(0x1B0uLL);
      HFunHouse::HFunHouse(v12);
    }

    LOBYTE(v9) = 0;
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