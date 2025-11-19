@interface PAEOverlappingCircles
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInfo:(id *)a4;
- (BOOL)frameSetup:(id *)a3 hardware:(BOOL *)a4 software:(BOOL *)a5;
- (PAEOverlappingCircles)initWithAPIManager:(id)a3;
- (id)multiplyMatrix:(id)a3 byMatrix:(id)a4;
- (id)properties;
- (void)dealloc;
- (void)getTransformMatrix:(double *)(a3 forCenterX:centerY:angle:andOutputImage:;
@end

@implementation PAEOverlappingCircles

- (PAEOverlappingCircles)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEOverlappingCircles;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEOverlappingCircles;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"PixelTransformSupport", v5, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v2 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B4F8];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v2 addPointParameterWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultX:@"Overlapping Circles::Center" defaultY:0 parmFlags:{0), 7, 32, 0.5, 0.5}];
    [v2 addColorParameterWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultRed:@"Overlapping Circles::Color 1" defaultGreen:0 defaultBlue:0) defaultAlpha:3 parmFlags:{0, 0.0, 0.0, 0.0, 1.0}];
    [v2 addColorParameterWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultRed:@"Overlapping Circles::Color 2" defaultGreen:0 defaultBlue:0) defaultAlpha:4 parmFlags:{0, 1.0, 1.0, 1.0, 1.0}];
    [v2 addColorParameterWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultRed:@"Overlapping Circles::Background Color" defaultGreen:0 defaultBlue:0) defaultAlpha:8 parmFlags:{0, 0.5, 0.5, 0.5, 1.0}];
    [v2 addFloatSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Overlapping Circles::Size" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:80.0 parmFlags:{1.0, 1000.0, 1.0, 500.0, 1.0}];
    [v2 addFloatSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Overlapping Circles::Circle Offset" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
    [v2 addAngleSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Overlapping Circles::Angle" parameterMin:0 parameterMax:0) parmFlags:{6, 0, 0.0, -3600.0, 3600.0}];
    [v2 addPercentSliderWithName:objc_msgSend(v3 parmId:"localizedStringForKey:value:table:" defaultValue:@"Overlapping Circles::Contrast" parameterMin:0 parameterMax:0) sliderMin:5 sliderMax:0 delta:1.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
  }

  return v2 != 0;
}

- (id)multiplyMatrix:(id)a3 byMatrix:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [a3 matrix];
  v6 = [a4 matrix];
  v7 = 0;
  v8 = v5 + 96;
  v9 = *v6;
  v10 = v6[1];
  v11 = v6[2];
  v12 = v6[3];
  v13 = v6[4];
  v14 = v6[5];
  v15 = v6[6];
  v16 = v6[7];
  v17 = v6[8];
  v18 = v6[9];
  v19 = v6[10];
  v20 = v6[11];
  v21 = v6[12];
  v22 = v6[13];
  v23 = v6[14];
  v24 = v6[15];
  do
  {
    v25 = *(v5 + v7);
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
  v25 = xmmword_260343398;
  v26 = unk_2603433A8;
  v27 = xmmword_2603433B8;
  v28 = unk_2603433C8;
  v13[1] = 0;
  v13[2] = 0;
  v13[0] = 0x3FF0000000000000;
  *&v13[3] = a4;
  v14 = xmmword_260342700;
  v15 = 0;
  v16 = a5;
  v17 = xmmword_260343398;
  v18 = unk_2603433A8;
  v19 = xmmword_2603433B8;
  v20 = unk_2603433C8;
  *a3 = [-[PAEOverlappingCircles multiplyMatrix:byMatrix:](self multiplyMatrix:-[PAEOverlappingCircles multiplyMatrix:byMatrix:](self byMatrix:{"multiplyMatrix:byMatrix:", objc_msgSend(a7, "inversePixelTransform"), -[FxMatrix44 initWithMatrix44Data:]([FxMatrix44 alloc], "initWithMatrix44Data:", v13)), -[FxMatrix44 initWithMatrix44Data:]([FxMatrix44 alloc], "initWithMatrix44Data:", v21)), "matrix"}];
}

- (BOOL)canThrowRenderOutput:(id)a3 withInfo:(id *)a4
{
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v7)
  {
    [a3 bounds];
    v9 = v8;
    v11 = v10;
    v59 = 80.0;
    [v7 getFloatValue:&v59 fromParm:1 atFxTime:a4->var0.var1];
    v58 = 1.0;
    [v7 getFloatValue:&v58 fromParm:2 atFxTime:a4->var0.var1];
    v12 = sqrt(v59 * v59 * 0.5);
    v58 = (v58 * 0.414213562 + 1.0) * v12 + (v58 * 0.414213562 + 1.0) * v12;
    v57 = 0.0;
    [v7 getFloatValue:&v57 fromParm:6 atFxTime:a4->var0.var1];
    v57 = -v57;
    v56 = 0.5;
    v55 = 0.5;
    [v7 getXValue:&v56 YValue:&v55 fromParm:7 atFxTime:a4->var0.var1];
    v13 = v9 * (0.5 - v56);
    v14 = v11 * (0.5 - v55);
    v53 = 0.0;
    v54 = 0.0;
    v51 = 0.0;
    v52 = 0.0;
    [v7 getRedValue:&v54 greenValue:&v53 blueValue:&v52 alphaValue:&v51 fromParm:3 atFxTime:a4->var0.var1];
    v53 = v51 * v53;
    v54 = v51 * v54;
    v52 = v51 * v52;
    v49 = 0.0;
    v50 = 0.0;
    v47 = 0.0;
    v48 = 0.0;
    [v7 getRedValue:&v50 greenValue:&v49 blueValue:&v48 alphaValue:&v47 fromParm:4 atFxTime:a4->var0.var1];
    v49 = v47 * v49;
    v50 = v47 * v50;
    v48 = v47 * v48;
    v45 = 0.0;
    v46 = 0.0;
    v43 = 0.0;
    v44 = 0.0;
    [v7 getRedValue:&v46 greenValue:&v45 blueValue:&v44 alphaValue:&v43 fromParm:8 atFxTime:a4->var0.var1];
    v45 = v43 * v45;
    v46 = v43 * v46;
    v44 = v43 * v44;
    v42 = 1.0;
    [v7 getFloatValue:&v42 fromParm:5 atFxTime:a4->var0.var1];
    v42 = v42 * v42;
    v41 = 0;
    [(PAEOverlappingCircles *)self getTransformMatrix:&v41 forCenterX:a3 centerY:v13 angle:v14 andOutputImage:v57];
    v15 = HGObject::operator new(0x1A0uLL);
    HgcOverlappingCircles::HgcOverlappingCircles(v15);
    v16 = v59;
    (*(*v15 + 96))(v15, 0, v16, 0.0, 0.0, 0.0);
    v17 = v58;
    (*(*v15 + 96))(v15, 1, v17, 0.0, 0.0, 0.0);
    v18 = v54;
    v19 = v53;
    v20 = v52;
    v21 = v51;
    (*(*v15 + 96))(v15, 2, v18, v19, v20, v21);
    v22 = v50;
    v23 = v49;
    v24 = v48;
    v25 = v47;
    (*(*v15 + 96))(v15, 3, v22, v23, v24, v25);
    v26 = v46;
    v27 = v45;
    v28 = v44;
    v29 = v43;
    (*(*v15 + 96))(v15, 4, v26, v27, v28, v29);
    v30 = v42;
    (*(*v15 + 96))(v15, 7, v30, 0.0, 0.0, 0.0);
    v31 = *v41;
    v32 = v41[1];
    v33 = v41[2];
    v34 = v41[3];
    (*(*v15 + 96))(v15, 5, v31, v32, v33, v34);
    v35 = v41[4];
    v36 = v41[5];
    v37 = v41[6];
    v38 = v41[7];
    (*(*v15 + 96))(v15, 6, v35, v36, v37, v38);
    v40 = v15;
    (*(*v15 + 16))(v15);
    [a3 setHeliumRef:&v40];
    if (v40)
    {
      (*(*v40 + 24))(v40);
    }

    (*(*v15 + 24))(v15);
  }

  return v7 != 0;
}

- (BOOL)frameSetup:(id *)a3 hardware:(BOOL *)a4 software:(BOOL *)a5
{
  *a5 = 0;
  *a4 = 0;
  v5 = *&a3->var2;
  v7[0] = *&a3->var0.var0;
  v7[1] = v5;
  v7[2] = *&a3->var4;
  [PAESharedDefaultBase overrideFrameSetupForRenderMode:"overrideFrameSetupForRenderMode:hardware:software:" hardware:v7 software:?];
  return 1;
}

@end