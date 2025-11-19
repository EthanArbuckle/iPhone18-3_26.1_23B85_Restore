@interface PAEChromaKeyeriOS
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEChromaKeyeriOS)initWithAPIManager:(id)a3;
- (id)properties;
- (void)createLutForNode:(void *)a3 input:(int)a4 rect:(const HGRect *)a5 omKeyer:(void *)a6;
- (void)dealloc;
@end

@implementation PAEChromaKeyeriOS

- (PAEChromaKeyeriOS)initWithAPIManager:(id)a3
{
  v6.receiver = self;
  v6.super_class = PAEChromaKeyeriOS;
  v3 = [(PAESharedDefaultBase *)&v6 initWithAPIManager:a3];
  v3->_matteTools = objc_alloc_init(PAEKeyerMatteTools);
  v4 = objc_alloc_init(PAEKeyerPreprocess);
  v3->_preprocessTools = v4;
  v4->_apiManager = v3->super.super._apiManager;
  v3->_lutsBitmapLoaderCache = 0;
  return v3;
}

- (void)dealloc
{
  lutsBitmapLoaderCache = self->_lutsBitmapLoaderCache;
  if (lutsBitmapLoaderCache)
  {
    (*(*lutsBitmapLoaderCache + 24))(lutsBitmapLoaderCache);
  }

  v4.receiver = self;
  v4.super_class = PAEChromaKeyeriOS;
  [(PAESharedDefaultBase *)&v4 dealloc];
}

- (id)properties
{
  if ([PAEChromaKeyeriOS properties]::once != -1)
  {
    [PAEChromaKeyeriOS properties];
  }

  return [PAEChromaKeyeriOS properties]::sPropertiesDict;
}

uint64_t __31__PAEChromaKeyeriOS_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:65792];
  result = [v0 initWithObjectsAndKeys:{v1, @"PositionIndependent", v2, @"MayRemapTime", v3, @"SupportsLargeRenderScale", v4, @"SupportsHeliumRendering", v5, @"SDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 590080), @"HDRWorkingSpace", 0}];
  [PAEChromaKeyeriOS properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v2 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addColorParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultRed:@"iOSChroma::TargetColor" defaultGreen:0 defaultBlue:0) parmFlags:{1, 0, 0.0, 0.75, 0.0}];
    [v3 addColorParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultRed:@"iOSChroma::TargetColor HDR" defaultGreen:0 defaultBlue:0) parmFlags:{5, 0, 0.0, 0.75, 0.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"iOSChroma::Tolerance" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.1 parmFlags:{0.0, 0.5, 0.0, 0.5, 0.001}];
    [v3 addPercentSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"iOSChroma::SpillLevel" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.3 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.001}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"iOSChroma::Softness" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:9.0 parmFlags:{0.0, 20.0, 0.0, 20.0, 0.1}];
  }

  return 1;
}

- (void)createLutForNode:(void *)a3 input:(int)a4 rect:(const HGRect *)a5 omKeyer:(void *)a6
{
  v8 = *&a4;
  v11 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v11, *&a5->var0, *&a5->var2, 28);
  v12 = 0;
  v13 = *(v11 + 10);
  v14 = 0.0;
  do
  {
    v15 = v14 / 255.0;
    OMKeyer2D::getAlphaLuma(a6, v15);
    v16 = *(a6 + 15);
    v17 = ((*(a6 + 16) - v16) >> 2);
    *v13 = v18;
    v19 = v17 + -1.0;
    v20 = rintf((v17 + -1.0) * v15);
    if ((v20 & 0x8000000000000000) == 0)
    {
      if (v19 < v20)
      {
        v20 = v19;
      }

      v16 += v20;
    }

    *(v13 + 4) = *v16;
    *(v13 + 8) = OMKeyer2D::getAlphaSatOffset(a6, v12);
    v13 += 16;
    v14 = v14 + 1.0;
    ++v12;
  }

  while (v12 != 256);
  v21 = HGObject::operator new(0x80uLL);
  HGTexture::HGTexture(v21, *a5, v11);
  lutsBitmapLoaderCache = self->_lutsBitmapLoaderCache;
  if (lutsBitmapLoaderCache)
  {
    (*(*lutsBitmapLoaderCache + 24))(lutsBitmapLoaderCache);
  }

  v23 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v23, v21);
  self->_lutsBitmapLoaderCache = v23;
  (*(*v21 + 24))(v21);
  (*(*v11 + 24))(v11);
  v24 = self->_lutsBitmapLoaderCache;
  v25 = *(*a3 + 120);

  v25(a3, v8, v24);
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v25[2] = *MEMORY[0x277D85DE8];
  v8 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735C2C8];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
  if (!v8)
  {
    return 0;
  }

  v11 = v10;
  if (a4)
  {
    [a4 heliumRef];
    v22 = v23;
    if (v23)
    {
      (*(*v23 + 16))(v23);
      v21 = v23;
      (*(*v23 + 16))(v23);
      goto LABEL_8;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  v21 = 0;
LABEL_8:
  if (-[PAESharedDefaultBase getRenderMode:](self, "getRenderMode:", a5->var0.var1) && [a4 imageType] == 3)
  {
    v19 = 0x3FF0000000000000;
    v20 = 0;
    v18 = 0x3FF0000000000000;
    [v9 getLevelsBlack:&v20 White:&v19 Gamma:&v18 fromParm:26 atTime:a5->var0.var1];
    v16 = 0;
    v17 = 0;
    v15 = 0;
    [v8 getRedValue:&v24 greenValue:&v24.f64[1] blueValue:v25 fromParm:1 atFxTime:a5->var0.var1];
    if ([v11 colorPrimaries] == 1)
    {
      [v8 getRedValue:&v24 greenValue:&v24.f64[1] blueValue:v25 fromParm:5 atFxTime:a5->var0.var1];
      v24 = vmulq_f64(v24, vdupq_n_s64(0x3FD1FA3F40000000uLL));
      v25[0] = v25[0] * 0.280898869;
    }

    [v8 getFloatValue:&v17 fromParm:2 atFxTime:a5->var0.var1];
    [v8 getFloatValue:&v16 fromParm:3 atFxTime:a5->var0.var1];
    [v8 getFloatValue:&v15 fromParm:4 atFxTime:a5->var0.var1];
    OMSamples::OMSamples(v14);
  }

  v12 = 1;
  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  if (v22)
  {
    (*(*v22 + 24))(v22);
  }

  if (v23)
  {
    (*(*v23 + 24))(v23);
  }

  return v12;
}

- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6
{
  v6 = *&a3->var2;
  v8[0] = *&a3->var0.var0;
  v8[1] = v6;
  v8[2] = *&a3->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:a5 software:a6];
  return 1;
}

@end