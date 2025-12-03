@interface PAEDesaturate
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEDesaturate)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAEDesaturate

- (PAEDesaturate)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEDesaturate;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{&unk_28732D550, @"PixelTransformSupport", v3, @"PixelIndependent", v4, @"PositionIndependent", v5, @"MayRemapTime", v6, @"SupportsLargeRenderScale", v7, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v6.receiver = self;
  v6.super_class = PAEDesaturate;
  [(PAESharedDefaultBase *)&v6 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Desaturate::Desaturation" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:1.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
    [v3 addPopupMenuWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Desaturate::Luminance Type" menuEntries:0 parmFlags:{0), 2, 0, objc_msgSend(objc_msgSend(v4, "localizedStringForKey:value:table:", @"Desaturate::TypeEntries", 0, 0), "componentsSeparatedByString:", @"|", 1}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    v20 = 0.0;
    v19 = 0;
    [v9 getFloatValue:&v20 fromParm:1 atFxTime:info->var0.var1];
    [v10 getIntValue:&v19 fromParm:2 atFxTime:info->var0.var1];
    if (v19 > 5)
    {
      v13 = 1.0;
      v11 = 0.0;
      v12 = 0.0;
    }

    else
    {
      v11 = flt_260344370[v19];
      v12 = flt_260344388[v19];
      v13 = flt_2603443A0[v19];
    }

    LODWORD(v9) = [(PAESharedDefaultBase *)self getRenderMode:info->var0.var1];
    if (v9)
    {
      if ([input imageType] == 3)
      {
        if (input)
        {
          [input heliumRef];
        }

        else
        {
          v18 = 0;
        }

        v14 = HGObject::operator new(0x1A0uLL);
        HgcDesaturate::HgcDesaturate(v14);
        v17 = v14;
        (*(*v14 + 120))(v14, 0, v18);
        v15 = v20;
        (*(*v14 + 96))(v14, 0, v15, 0.0, 0.0, 0.0);
        (*(*v14 + 96))(v14, 1, v11, v12, v13, 1.0);
        [output setHeliumRef:&v17];
        if (v17)
        {
          (*(*v17 + 24))(v17);
        }

        if (v18)
        {
          (*(*v18 + 24))(v18);
        }

        LOBYTE(v9) = 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }
  }

  return v9;
}

- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software
{
  *software = 0;
  *hardware = 0;
  v6 = *&setup->var2;
  v8[0] = *&setup->var0.var0;
  v8[1] = v6;
  v8[2] = *&setup->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:hardware software:software];
  return 1;
}

@end