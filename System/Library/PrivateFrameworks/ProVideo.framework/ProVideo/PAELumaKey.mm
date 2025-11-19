@interface PAELumaKey
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAELumaKey)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAELumaKey

- (PAELumaKey)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAELumaKey;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{&unk_28732D4A8, @"PixelTransformSupport", v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAELumaKey;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"LumaKey::Key Mode" menuEntries:0 parmFlags:{0), 1, 0, objc_msgSend(objc_msgSend(v4, "localizedStringForKey:value:table:", @"LumaKey::ModeEntries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"LumaKey::Luminance Type" menuEntries:0 parmFlags:{0), 2, 0, objc_msgSend(objc_msgSend(v4, "localizedStringForKey:value:table:", @"LumaKey::TypeEntries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"LumaKey::Threshold" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"LumaKey::Tolerance" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:1.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = v9;
  if (v9)
  {
    v39 = 0.0;
    v40 = 0;
    v38 = 0.0;
    [v9 getIntValue:&v40 fromParm:1 atFxTime:a5->var0.var1];
    [v10 getIntValue:&v40 + 4 fromParm:2 atFxTime:a5->var0.var1];
    [v10 getFloatValue:&v38 fromParm:3 atFxTime:a5->var0.var1];
    [v10 getFloatValue:&v39 fromParm:4 atFxTime:a5->var0.var1];
    if (HIDWORD(v40) >= 6)
    {
      PCPrint("File %s, line %d should not have been reached:\n\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/FiltersiOS/Filters/PAELumaKey.mm");
      pcAbortImpl();
    }

    v18 = flt_260343FD4[HIDWORD(v40)];
    v19 = flt_260343FEC[HIDWORD(v40)];
    v20 = flt_260344004[HIDWORD(v40)];
    v21 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
    if (v21 && [a4 imageType] == 3)
    {
      v22 = HGObject::operator new(0x1A0uLL);
      HgcLumaKey::HgcLumaKey(v22);
      v37 = v22;
      v24 = v38;
      v23 = v39;
      if (v40 >= 2)
      {
        v25 = 0.25;
      }

      else
      {
        v25 = 0.5;
      }

      (*(*v22 + 96))(v22, 0, v18, v19, v20, 0.0);
      v29.n128_u32[0] = 1.0;
      if (v40 == 1)
      {
        v26.n128_f32[0] = 1.0;
      }

      else
      {
        v26.n128_f32[0] = 0.0;
      }

      if (v40)
      {
        v27.n128_f32[0] = 0.0;
      }

      else
      {
        v27.n128_f32[0] = 1.0;
      }

      if (v40 == 2)
      {
        v28.n128_f32[0] = 1.0;
      }

      else
      {
        v28.n128_f32[0] = 0.0;
      }

      if (v40 != 3)
      {
        v29.n128_f32[0] = 0.0;
      }

      (*(*v22 + 96))(v22, 1, v26, v27, v28, v29);
      v30 = v24 * v25 + v25;
      v31 = v23 * (v25 - vabdd_f64(v25, v30));
      v32 = v30 - v31;
      v33 = v30 + v31;
      *&v30 = v32;
      *&v33 = v33;
      (*(*v22 + 96))(v22, 2, *&v30, *&v33, 0.0, 0.0);
      if (a4)
      {
        [a4 heliumRef];
        v34 = v36;
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      (*(*v22 + 120))(v22, 0, v34);
      if (v36)
      {
        (*(*v36 + 24))(v36);
      }

      [a3 setHeliumRef:&v37];
      if (v37)
      {
        (*(*v37 + 24))(v37);
      }
    }
  }

  return v10 != 0;
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