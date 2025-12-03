@interface PAESunburst
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAESunburst)initWithAPIManager:(id)manager;
- (id)multiplyMatrix:(id)matrix byMatrix:(id)byMatrix;
- (id)properties;
- (void)dealloc;
- (void)getTransformMatrix:(double *)(a3 forCenterX:centerY:angle:andOutputImage:;
@end

@implementation PAESunburst

- (PAESunburst)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAESunburst;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAESunburst;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"PixelTransformSupport", v5, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v2 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B4F8];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v2 addPointParameterWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultX:@"Sunburst::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v2 addColorParameterWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultRed:@"Sunburst::Sun Color" defaultGreen:0 defaultBlue:0) defaultAlpha:9 parmFlags:{0, 1.0, 0.5, 0.0, 1.0}];
    [v2 addColorParameterWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultRed:@"Sunburst::Background Color" defaultGreen:0 defaultBlue:0) defaultAlpha:10 parmFlags:{0, 0.0, 0.0, 0.0, 0.0}];
    [v2 addFloatSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Sunburst::Number of Arms" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:20.0 parmFlags:{2.0, 4096.0, 2.0, 255.0, 1.0}];
    [v2 addFloatSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Sunburst::Radius" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:32 delta:200.0 parmFlags:{0.0, 4096.0, 0.0, 2000.0, 1.0}];
    [v2 addFloatSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Sunburst::Inner Radius" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:32 delta:0.5 parmFlags:{0.01, 1.0, 0.01, 1.0, 0.1}];
    [v2 addAngleSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Sunburst::Rotation" parameterMin:0 parameterMax:0) parmFlags:{5, 0, 0.0, -3600.0, 3600.0}];
    [v2 addFloatSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Sunburst::Waviness Amplitude" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:0 delta:0.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v2 addFloatSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Sunburst::Waviness Frequency" parameterMin:0 parameterMax:0) sliderMin:7 sliderMax:0 delta:2.2 parmFlags:{0.0, 10.0, 0.0, 10.0, 1.0}];
    [v2 addFloatSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Sunburst::Waviness Phase" parameterMin:0 parameterMax:0) sliderMin:8 sliderMax:0 delta:0.0 parmFlags:{-1000.0, 1000.0, -10.0, 10.0, 1.0}];
    [v2 addPercentSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Sunburst::Contrast" parameterMin:0 parameterMax:0) sliderMin:11 sliderMax:0 delta:0.75 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
    [v2 addFloatSliderWithName:@"Hidden Inner Radius" parmId:12 defaultValue:2 parameterMin:100.0 parameterMax:0.0 sliderMin:4096.0 sliderMax:0.0 delta:4096.0 parmFlags:1.0];
  }

  return v2 != 0;
}

- (id)multiplyMatrix:(id)matrix byMatrix:(id)byMatrix
{
  v32 = *MEMORY[0x277D85DE8];
  matrix = [matrix matrix];
  matrix2 = [byMatrix matrix];
  v7 = 0;
  v8 = matrix + 96;
  v9 = *matrix2;
  v10 = matrix2[1];
  v11 = matrix2[2];
  v12 = matrix2[3];
  v13 = matrix2[4];
  v14 = matrix2[5];
  v15 = matrix2[6];
  v16 = matrix2[7];
  v17 = matrix2[8];
  v18 = matrix2[9];
  v19 = matrix2[10];
  v20 = matrix2[11];
  v21 = matrix2[12];
  v22 = matrix2[13];
  v23 = matrix2[14];
  v24 = matrix2[15];
  do
  {
    v25 = *(matrix + v7);
    v26 = *(v8 + v7 - 64);
    v27 = *(v8 + v7 - 32);
    v28 = *(v8 + v7);
    v29 = (&v31 + v7);
    *v29 = v25 * v9 + v26 * v10 + v27 * v11 + v28 * v12;
    v29[4] = v25 * v13 + v26 * v14 + v27 * v15 + v28 * v16;
    v29[8] = v25 * v17 + v26 * v18 + v27 * v19 + v28 * v20;
    v29[12] = v25 * v21 + v26 * v22 + v27 * v23 + v28 * v24;
    v7 += 8;
  }

  while (v7 != 32);
  return [[FxMatrix44 alloc] initWithMatrix44Data:&v31];
}

- (void)getTransformMatrix:(double *)(a3 forCenterX:centerY:angle:andOutputImage:
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = __sincos_stret(a6);
  v21[0] = *&v12.__cosval;
  *&v21[1] = -v12.__sinval;
  v21[2] = 0;
  v21[3] = 0;
  v22 = v12;
  v23 = 0;
  v24 = 0;
  v25 = xmmword_2603434B8;
  v26 = unk_2603434C8;
  v27 = xmmword_2603434D8;
  v28 = unk_2603434E8;
  v13[1] = 0;
  v13[2] = 0;
  v13[0] = 0x3FF0000000000000;
  *&v13[3] = a4;
  v14 = xmmword_260342700;
  v15 = 0;
  v16 = a5;
  v17 = xmmword_2603434B8;
  v18 = unk_2603434C8;
  v19 = xmmword_2603434D8;
  v20 = unk_2603434E8;
  *a3 = [-[PAESunburst multiplyMatrix:byMatrix:](self multiplyMatrix:-[PAESunburst multiplyMatrix:byMatrix:](self byMatrix:{"multiplyMatrix:byMatrix:", objc_msgSend(a7, "inversePixelTransform"), -[FxMatrix44 initWithMatrix44Data:]([FxMatrix44 alloc], "initWithMatrix44Data:", v13)), -[FxMatrix44 initWithMatrix44Data:]([FxMatrix44 alloc], "initWithMatrix44Data:", v21)), "matrix"}];
}

- (BOOL)canThrowRenderOutput:(id)output withInfo:(id *)info
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v8 = v7;
  if (v7)
  {
    v66 = 300.0;
    v67 = 20.0;
    v64 = 0;
    v65 = 0.5;
    v62 = 0.0;
    v63 = 0.0;
    v60 = 0.0;
    v61 = 0.0;
    v58 = 0.0;
    v59 = 0.0;
    v56 = 1.0;
    v57 = 0.0;
    v54 = 1.0;
    v55 = 1.0;
    __x = 0.5;
    v53 = 1.0;
    [v7 getFloatValue:&v67 fromParm:2 atFxTime:info->var0.var1];
    [v8 getFloatValue:&v66 fromParm:3 atFxTime:info->var0.var1];
    [v8 getFloatValue:&v65 fromParm:4 atFxTime:info->var0.var1];
    v9 = v67;
    if (v67 == 3.0)
    {
      v9 = v65;
      if (v65 == 0.5)
      {
        v65 = 0.49999;
      }
    }

    [v8 getFloatValue:&v64 fromParm:5 atFxTime:{info->var0.var1, v9}];
    [v8 getFloatValue:&v63 fromParm:6 atFxTime:info->var0.var1];
    v63 = v63 / 10.0;
    [v8 getFloatValue:&v62 fromParm:7 atFxTime:info->var0.var1];
    v62 = v62 / 10.0;
    [v8 getFloatValue:&v61 fromParm:8 atFxTime:info->var0.var1];
    [v8 getRedValue:&v60 greenValue:&v59 blueValue:&v58 alphaValue:&v57 fromParm:9 atFxTime:info->var0.var1];
    v59 = v57 * v59;
    v60 = v57 * v60;
    v58 = v57 * v58;
    [v8 getRedValue:&v56 greenValue:&v55 blueValue:&v54 alphaValue:&v53 fromParm:10 atFxTime:info->var0.var1];
    v55 = v53 * v55;
    v56 = v53 * v56;
    v54 = v53 * v54;
    [v8 getFloatValue:&__x fromParm:11 atFxTime:info->var0.var1];
    __x = pow(__x, 3.0);
    [output bounds];
    v11 = v10;
    v13 = v12;
    v50 = 0.5;
    v51 = 0.5;
    [v8 getXValue:&v51 YValue:&v50 fromParm:1 atFxTime:info->var0.var1];
    v50 = v13 * (0.5 - v50);
    v51 = v11 * (0.5 - v51);
    v49 = 0;
    [PAESunburst getTransformMatrix:"getTransformMatrix:forCenterX:centerY:angle:andOutputImage:" forCenterX:&v49 centerY:output angle:? andOutputImage:?];
    v14 = v67;
    v15 = HGObject::operator new(0x1A0uLL);
    HgcSunburst::HgcSunburst(v15);
    v16 = v66;
    v17 = v65;
    v18 = __sincos_stret(6.28318531 / v14 * 0.5);
    v19 = __sincos_stret(6.28318531 / v14);
    v20 = 6.28318531 / v14;
    (*(*v15 + 96))(v15, 0, v20, 0.0, 0.0, 0.0);
    v21 = v60;
    v22 = v59;
    v23 = v58;
    v24 = v57;
    (*(*v15 + 96))(v15, 1, v21, v22, v23, v24);
    v25 = v56;
    v26 = v55;
    v27 = v54;
    v28 = v53;
    (*(*v15 + 96))(v15, 2, v25, v26, v27, v28);
    v29 = *v49;
    v30 = v49[1];
    v31 = v49[2];
    v32 = v49[3];
    (*(*v15 + 96))(v15, 3, v29, v30, v31, v32);
    v33 = v49[4];
    v34 = v49[5];
    v35 = v49[6];
    v36 = v49[7];
    (*(*v15 + 96))(v15, 4, v33, v34, v35, v36);
    v37 = __x;
    (*(*v15 + 96))(v15, 9, v37, 0.0, 0.0, 0.0);
    v38 = v16 * v17;
    (*(*v15 + 96))(v15, 5, v38, 0.0, 0.0, 0.0);
    v39 = v18.__cosval * v16;
    v40 = v18.__sinval * v16;
    (*(*v15 + 96))(v15, 6, v39, v40, 0.0, 0.0);
    (*(*v15 + 96))(v15, 7, v39, v40, 0.0, 0.0);
    v41 = v19.__cosval * (v16 * v17);
    v42 = v19.__sinval * (v16 * v17);
    (*(*v15 + 96))(v15, 8, v41, v42, 0.0, 0.0);
    v43 = v66;
    (*(*v15 + 96))(v15, 10, v43, 0.0, 0.0, 0.0);
    v44 = v63 / 6.28318531;
    (*(*v15 + 96))(v15, 11, v44, 0.0, 0.0, 0.0);
    v45 = v62;
    (*(*v15 + 96))(v15, 12, v45, 0.0, 0.0, 0.0);
    v46 = v61;
    (*(*v15 + 96))(v15, 13, v46, 0.0, 0.0, 0.0);
    v48 = v15;
    (*(*v15 + 16))(v15);
    [output setHeliumRef:&v48];
    if (v48)
    {
      (*(*v48 + 24))(v48);
    }

    (*(*v15 + 24))(v15);
  }

  return v8 != 0;
}

- (BOOL)frameSetup:(id *)setup hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 0;
  v5 = *&setup->var2;
  v7[0] = *&setup->var0.var0;
  v7[1] = v5;
  v7[2] = *&setup->var4;
  [PAESharedDefaultBase overrideFrameSetupForRenderMode:"overrideFrameSetupForRenderMode:hardware:software:" hardware:v7 software:?];
  return 1;
}

@end