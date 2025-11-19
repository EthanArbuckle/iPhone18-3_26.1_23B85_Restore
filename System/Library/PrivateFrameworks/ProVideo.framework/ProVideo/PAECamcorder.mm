@interface PAECamcorder
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAECamcorder)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAECamcorder

- (PAECamcorder)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAECamcorder;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
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
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"SDRWorkingSpace", v8, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v16.receiver = self;
  v16.super_class = PAECamcorder;
  [(PAESharedDefaultBase *)&v16 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Camcorder::Offset Red X" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:0.0 parmFlags:{-100.0, 100.0, -100.0, 100.0, 0.1}];
  v7 = v6 & [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Camcorder::Offset Red Y" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.0 parmFlags:{-100.0, 100.0, -100.0, 100.0, 0.1}];
  v8 = [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Camcorder::Offset Green X" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:0.0 parmFlags:{-100.0, 100.0, -100.0, 100.0, 0.1}];
  v9 = v7 & v8 & [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Camcorder::Offset Green Y" parameterMin:0 parameterMax:0) sliderMin:5 sliderMax:0 delta:0.0 parmFlags:{-100.0, 100.0, -100.0, 100.0, 0.1}];
  v10 = [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Camcorder::Offset Blue X" parameterMin:0 parameterMax:0) sliderMin:7 sliderMax:0 delta:0.0 parmFlags:{-100.0, 100.0, -100.0, 100.0, 0.1}];
  v11 = v10 & [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Camcorder::Offset Blue Y" parameterMin:0 parameterMax:0) sliderMin:8 sliderMax:0 delta:0.0 parmFlags:{-100.0, 100.0, -100.0, 100.0, 0.1}];
  v12 = v9 & v11 & [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Camcorder::Blur Amount" parameterMin:0 parameterMax:0) sliderMin:9 sliderMax:0 delta:0.0 parmFlags:{0.0, 50.0, 0.0, 50.0, 0.1}];
  v13 = [v4 addToggleButtonWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Camcorder::Blur Red" parmFlags:{0, 0), 10, 0, 0}];
  v14 = v13 & [v4 addToggleButtonWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Camcorder::Blur Green" parmFlags:{0, 0), 11, 0, 0}];
  return v12 & v14 & [v4 addToggleButtonWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Camcorder::Blur Blue" parmFlags:{0, 0), 12, 0, 0}];
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v8)
  {
    v9 = v8;
    v36 = 0.0;
    v37 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    v31 = 0.0;
    v30 = 0;
    v29 = 0;
    [v8 getFloatValue:&v37 fromParm:1 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v36 fromParm:2 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v35 fromParm:4 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v34 fromParm:5 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v33 fromParm:7 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v32 fromParm:8 atFxTime:a5->var0.var1];
    [v9 getFloatValue:&v31 fromParm:9 atFxTime:a5->var0.var1];
    [v9 getBoolValue:&v30 + 1 fromParm:10 atFxTime:a5->var0.var1];
    [v9 getBoolValue:&v30 fromParm:11 atFxTime:a5->var0.var1];
    [v9 getBoolValue:&v29 fromParm:12 atFxTime:a5->var0.var1];
    var3 = a5->var3;
    var4 = a5->var4;
    v36 = var4 * v36;
    v37 = var3 * v37;
    v34 = var4 * v34;
    v35 = var3 * v35;
    v32 = var4 * v32;
    v33 = var3 * v33;
    v28 = 0;
    if (a4)
    {
      [a4 heliumRef];
    }

    else
    {
      v27 = 0;
    }

    v12 = HGObject::operator new(0x1B0uLL);
    HgcCamcorder::HgcCamcorder(v12);
    (*(*v12 + 120))(v12, 0, v27);
    v13 = v37;
    v14 = v35;
    v15 = v33;
    (*(*v12 + 96))(v12, 0, v13, v14, v15, 0.0);
    v16 = v36;
    v17 = v34;
    v18 = v32;
    (*(*v12 + 96))(v12, 1, v16, v17, v18, 0.0);
    v19 = HGObject::operator new(0x1B0uLL);
    HGaussianBlur::HGaussianBlur(v19);
    v20 = v31;
    HGaussianBlur::init(v19, v20, 1.0, 1.0, 0, 0, 0);
    (*(*v19 + 120))(v19, 0, v12);
    if (HIBYTE(v30))
    {
      v21 = 1.0;
    }

    else
    {
      v21 = 0.0;
    }

    if (v30)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = 0.0;
    }

    if (v29)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = 0.0;
    }

    v24 = HGObject::operator new(0x1A0uLL);
    HgcChannelBlur::HgcChannelBlur(v24);
    (*(*v24 + 120))(v24, 1, v19);
    (*(*v24 + 96))(v24, 0, v21, v22, v23, 1.0);
    (*(*v24 + 120))(v24, 0, v12);
    v25 = *v24;
    v28 = v24;
    (*(v25 + 16))(v24);
    [a3 setHeliumRef:&v28];
    (*(*v24 + 24))(v24);
    (*(*v19 + 24))(v19);
    (*(*v12 + 24))(v12);
    if (v27)
    {
      (*(*v27 + 24))(v27);
    }

    if (v28)
    {
      (*(*v28 + 24))(v28);
    }
  }

  return 1;
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