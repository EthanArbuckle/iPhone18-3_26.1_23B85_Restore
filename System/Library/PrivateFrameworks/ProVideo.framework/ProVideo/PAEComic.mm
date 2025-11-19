@interface PAEComic
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (BOOL)parameterChanged:(unsigned int)a3;
- (PAEComic)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEComic

- (PAEComic)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEComic;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:65792];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:590080];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"SDRWorkingSpace", v8, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v15.receiver = self;
  v15.super_class = PAEComic;
  [(PAESharedDefaultBase *)&v15 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 addPopupMenuWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Comic::Style" menuEntries:0 parmFlags:{0), 1, 0, objc_msgSend(objc_msgSend(v5, "localizedStringForKey:value:table:", @"Comic::StyleEntries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
  v7 = v6 & [v4 addColorParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultRed:@"Comic::Ink Color" defaultGreen:0 defaultBlue:0) parmFlags:{2, 2, 0.0, 0.0, 0.0}];
  v8 = [v4 addColorParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultRed:@"Comic::Fill Color" defaultGreen:0 defaultBlue:0) parmFlags:{3, 2, 1.0, 1.0, 1.0}];
  v9 = v7 & v8 & [v4 addPercentSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Comic::Smoothness" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:0.25 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
  v10 = [v4 addPercentSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Comic::Ink Edges" parameterMin:0 parameterMax:0) sliderMin:5 sliderMax:0 delta:0.25 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
  v11 = v10 & [v4 addPercentSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Comic::Ink Smoothness" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:0 delta:0.3 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
  v12 = v9 & v11 & [v4 addPercentSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Comic::Ink Fill" parameterMin:0 parameterMax:0) sliderMin:7 sliderMax:0 delta:0.5 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
  LODWORD(v14) = 0;
  LOBYTE(v11) = [v4 addIntSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Comic::Posterize Levels" parameterMin:0 parameterMax:0) sliderMin:8 sliderMax:6 delta:2 parmFlags:{1000, 2, 0x100000032, v14}];
  return v12 & v11 & [v4 addToggleButtonWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Comic::Affect Alpha" parmFlags:{0, 0), 9, 0, 3}];
}

- (BOOL)parameterChanged:(unsigned int)a3
{
  if (a3 != 1)
  {
    return 1;
  }

  v18 = v3;
  v19 = v4;
  v6 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E448];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  v10 = v7;
  v16 = *MEMORY[0x277CC0898];
  v17 = *(MEMORY[0x277CC0898] + 16);
  v15 = 0;
  [v6 getIntValue:&v15 fromParm:1 atFxTime:&v16];
  v14 = 0;
  v13 = 0;
  v12 = 0;
  [v6 getParameterFlags:&v14 fromParm:2];
  [v6 getParameterFlags:&v13 + 4 fromParm:3];
  [v6 getParameterFlags:&v13 fromParm:8];
  [v6 getParameterFlags:&v12 fromParm:9];
  if (v15 > 1)
  {
    [v10 setParameterFlags:v14 & 0xFFFFFFFD toParm:2];
    [v10 setParameterFlags:HIDWORD(v13) & 0xFFFFFFFD toParm:3];
    [v10 setParameterFlags:v12 & 0xFFFFFFFD toParm:9];
    v11 = v13 | 2;
  }

  else
  {
    [v10 setParameterFlags:v14 | 2u toParm:2];
    [v10 setParameterFlags:HIDWORD(v13) | 2u toParm:3];
    [v10 setParameterFlags:v12 | 2u toParm:9];
    v11 = v13 & 0xFFFFFFFD;
  }

  [v10 setParameterFlags:v11 toParm:8];
  return 1;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v60[2] = *MEMORY[0x277D85DE8];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
  if (!v9)
  {
    return 1;
  }

  v11 = v10;
  v59 = 0;
  v58 = 0.0;
  v56 = 0.0;
  v57 = 0.0;
  v55 = 0.0;
  v54 = 0;
  [v9 getIntValue:&v59 fromParm:1 atFxTime:a5->var0.var1];
  [v9 getFloatValue:&v58 fromParm:4 atFxTime:a5->var0.var1];
  [v9 getFloatValue:&v57 fromParm:5 atFxTime:a5->var0.var1];
  [v9 getFloatValue:&v56 fromParm:6 atFxTime:a5->var0.var1];
  [v9 getIntValue:&v54 fromParm:8 atFxTime:a5->var0.var1];
  [v9 getFloatValue:&v55 fromParm:7 atFxTime:a5->var0.var1];
  v12 = HGObject::operator new(0x1A0uLL);
  HGComicDesignerInterface::HGComicDesignerInterface(v12);
  v53 = 0;
  if (a4)
  {
    [a4 heliumRef];
  }

  else
  {
    v52 = 0;
  }

  v13 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v13);
  HGTextureWrap::SetTextureWrapMode(v13, 0, v14);
  v60[0] = 0;
  v60[1] = 0;
  HGTextureWrap::SetTextureBorderColor(v13, v60);
  (*(*v13 + 120))(v13, 0, v52);
  (*(*v12 + 120))(v12, 0, v13);
  v15 = v58 * 100.0;
  (*(*v12 + 96))(v12, 0, v15, 0.0, 0.0, 0.0);
  v16 = (1.0 - v57) * 100.0;
  (*(*v12 + 96))(v12, 1, v16, 0.0, 0.0, 0.0);
  v17 = v56 * 100.0;
  (*(*v12 + 96))(v12, 2, v17, 0.0, 0.0, 0.0);
  (*(*v12 + 96))(v12, 4, v54, 0.0, 0.0, 0.0);
  (*(*v12 + 96))(v12, 5, 720.0, 0.0, 0.0, 0.0);
  v18 = v55 * 100.0;
  (*(*v12 + 96))(v12, 7, v18, 0.0, 0.0, 0.0);
  (*(*v12 + 96))(v12, 3, -1.0, 0.0, 0.0, 0.0);
  (*(*v12 + 96))(v12, 11, 1.0, 0.0, 0.0, 0.0);
  (*(*v12 + 96))(v12, 12, 1.0, 0.0, 0.0, 0.0);
  (*(*v12 + 96))(v12, 10, 1.0, 0.0, 0.0, 0.0);
  v19 = [a3 dod];
  v22 = HGRectMake4i(v19, HIDWORD(v19), v20, v21);
  (*(*v12 + 96))(v12, 8, v22, SHIDWORD(v22), v23, v24);
  [(PAESharedDefaultBase *)self getScaleForImage:a4];
  v25 = v51[1];
  v26 = v51[2];
  (*(*v12 + 96))(v12, 9, v25, v26, 0.0, 0.0);
  if (v59 == 1)
  {
    v27.n128_u32[0] = 10.0;
  }

  else
  {
    if (v59 == 2)
    {
      v50 = 0.0;
      v51[0] = 0.0;
      v48 = 0;
      v49 = 0.0;
      v46 = 0.0;
      v47 = 0.0;
      v44 = 0;
      v45 = 0.0;
      v43 = 0;
      [v9 getRedValue:v51 greenValue:&v50 blueValue:&v49 alphaValue:&v48 fromParm:2 atFxTime:a5->var0.var1];
      [v9 getRedValue:&v47 greenValue:&v46 blueValue:&v45 alphaValue:&v44 fromParm:3 atFxTime:a5->var0.var1];
      [v9 getBoolValue:&v43 fromParm:9 atFxTime:a5->var0.var1];
      (*(*v12 + 96))(v12, 6, 24.0, 0.0, 0.0, 0.0);
      v28.n128_u32[0] = 1.0;
      if (v43)
      {
        v28.n128_f32[0] = 0.0;
      }

      (*(*v12 + 96))(v12, 10, v28, 0.0, 0.0, 0.0);
      v29 = HGObject::operator new(0x1A0uLL);
      HgcColorize::HgcColorize(v29);
      (*(*v29 + 120))(v29, 0, v12);
      v30 = v51[0];
      v31 = v50;
      v32 = v49;
      (*(*v29 + 96))(v29, 0, v30, v31, v32, 0.0);
      v33 = v47;
      v34 = v46;
      v35 = v45;
      (*(*v29 + 96))(v29, 1, v33, v34, v35, 0.0);
      (*(*v29 + 96))(v29, 2, 1.0, 0.0, 0.0, 0.0);
      (*(*v29 + 96))(v29, 3, 1.0, 0.0, 0.0, 0.0);
      v36 = [objc_msgSend(v11 colorMatrixFromDesiredRGBToYCbCrAtTime:{a5->var0.var1), "matrix"}];
      v37 = *v36;
      v38 = v36[1];
      v39 = v36[2];
      (*(*v29 + 96))(v29, 4, v37, v38, v39, 0.0);
      v40 = *v29;
      v53 = v29;
      (*(v40 + 16))(v29);
      (*(*v29 + 24))(v29);
      goto LABEL_13;
    }

    v27.n128_u32[0] = 7.0;
  }

  (*(*v12 + 96))(v12, 6, v27, 0.0, 0.0, 0.0);
  v41 = *v12;
  v53 = v12;
  (*(v41 + 16))(v12);
LABEL_13:
  [a3 setHeliumRef:&v53];
  (*(*v13 + 24))(v13);
  if (v52)
  {
    (*(*v52 + 24))(v52);
  }

  if (v53)
  {
    (*(*v53 + 24))(v53);
  }

  (*(*v12 + 24))(v12);
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