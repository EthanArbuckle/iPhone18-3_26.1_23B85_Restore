@interface PAEBlueGreenScreen
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEBlueGreenScreen)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEBlueGreenScreen

- (PAEBlueGreenScreen)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEBlueGreenScreen;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{&unk_28732D4D8, @"PixelTransformSupport", v3, @"PositionIndependent", v4, @"SupportsHeliumRendering", v5, @"MayRemapTime", v6, @"SupportsLargeRenderScale", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEBlueGreenScreen;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BlueGreenScreen::Key Mode" menuEntries:0 parmFlags:{0), 1, 0, objc_msgSend(objc_msgSend(v4, "localizedStringForKey:value:table:", @"BlueGreenScreen::Mode Entries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BlueGreenScreen::Color Level" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:100.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BlueGreenScreen::Color Tolerance" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:10.0 parmFlags:{1.0, 100.0, 1.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BlueGreenScreen::Edge Thin" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:0.0 parmFlags:{-100.0, 100.0, -100.0, 100.0, 1.0}];
    [v3 addToggleButtonWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BlueGreenScreen::Invert Alpha" parmFlags:{0, 0), 6, 0, 1}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!v9)
  {
LABEL_21:
    LOBYTE(v14) = 1;
    return v14;
  }

  v10 = v9;
  v28 = 0;
  v26 = 0.0;
  v27 = 0.0;
  v25 = 0.0;
  v24 = 0;
  [v9 getIntValue:&v28 fromParm:1 atFxTime:a5->var0.var1];
  [v10 getFloatValue:&v27 fromParm:2 atFxTime:a5->var0.var1];
  [v10 getFloatValue:&v26 fromParm:3 atFxTime:a5->var0.var1];
  [v10 getFloatValue:&v25 fromParm:4 atFxTime:a5->var0.var1];
  [v10 getBoolValue:&v24 fromParm:6 atFxTime:a5->var0.var1];
  v12 = v26;
  v11 = v27;
  v13 = v25;
  v14 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
  if (v14)
  {
    if ([a4 imageType] == 3)
    {
      if (a4)
      {
        [a4 heliumRef];
      }

      else
      {
        v23 = 0;
      }

      v22 = 0;
      if (v28 == 2)
      {
        v15 = HGObject::operator new(0x1A0uLL);
        HgcDiffScreen::HgcDiffScreen(v15);
      }

      else if (v28 == 1)
      {
        v15 = HGObject::operator new(0x1A0uLL);
        HgcGreenScreen::HgcGreenScreen(v15);
      }

      else
      {
        if (v28)
        {
          v15 = 0;
LABEL_17:
          (*(*v15 + 120))(v15, 0, v23);
          v16 = (v11 - v12) / 100.0;
          (*(*v15 + 96))(v15, 0, v16, v16, v16, v16);
          v17 = (v11 + v12) / 100.0;
          (*(*v15 + 96))(v15, 1, v17, v17, v17, v17);
          v18 = v13 * 0.5 / 100.0 + 0.5;
          v19 = 0.5 - vabdd_f64(0.5, v18);
          (*(*v15 + 96))(v15, 2, v18 - v19, v18 - v19, v18 - v19, v18 - v19);
          v20 = (*(*v15 + 96))(v15, 3, v18 + v19, v18 + v19, v18 + v19, v18 + v19);
          v20.n128_u8[0] = v24;
          (*(*v15 + 96))(v15, 4, v20.n128_u32[0], v20.n128_u32[0], v20.n128_u32[0], v20.n128_u32[0]);
          [a3 setHeliumRef:&v22];
          if (v22)
          {
            (*(*v22 + 24))(v22);
          }

          if (v23)
          {
            (*(*v23 + 24))(v23);
          }

          goto LABEL_21;
        }

        v15 = HGObject::operator new(0x1A0uLL);
        HgcBlueScreen::HgcBlueScreen(v15);
      }

      if (v15)
      {
        v22 = v15;
      }

      goto LABEL_17;
    }

    LOBYTE(v14) = 0;
  }

  return v14;
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