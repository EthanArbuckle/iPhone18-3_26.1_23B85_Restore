@interface PAEEarthquake
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (HGRef<HGNode>)quakeHeliumNodeWithInputImage:(HGRef<HGNode>)image inputImage:(id)inputImage outputImage:(id)outputImage renderInfo:(id *)info twist:(float)twist horizontalShake:(float)shake verticalShake:(float)verticalShake layers:(float)self0 centerX:(float)self1 centerY:(float)self2 randomSeed:(int)self3;
- (PAEEarthquake)initWithAPIManager:(id)manager;
- (id)properties;
@end

@implementation PAEEarthquake

- (PAEEarthquake)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEEarthquake;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:3];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"PixelTransformSupport", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v8.receiver = self;
  v8.super_class = PAEEarthquake;
  [(PAESharedDefaultBase *)&v8 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Earthquake::Twist" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:0.1 parmFlags:{0.0, 10.0, 0.0, 1.0, 0.01}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Earthquake::Horizontal Shake" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:0.1 parmFlags:{0.0, 10.0, 0.0, 1.0, 0.01}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Earthquake::Vertical Shake" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.1 parmFlags:{0.0, 10.0, 0.0, 1.0, 0.01}];
    LODWORD(v6) = 0;
    [v3 addIntSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Earthquake::Layers" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:1 delta:1 parmFlags:{8, 1, 0x100000008, v6}];
    [v3 addPointParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultX:@"Earthquake::Center" defaultY:0 parmFlags:{0), 5, 0, 0.5, 0.5}];
    LODWORD(v7) = 0;
    [v3 addIntSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"Earthquake::RandomSeed" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:0 delta:2294967296 parmFlags:{2000000000, 0, 0x1000003E8, v7}];
  }

  return v3 != 0;
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = v9;
  if (v9)
  {
    v39 = 0.0;
    [v9 getFloatValue:&v39 fromParm:1 atFxTime:info->var0.var1];
    v38 = 0.0;
    [v10 getFloatValue:&v38 fromParm:2 atFxTime:info->var0.var1];
    v37 = 0.0;
    [v10 getFloatValue:&v37 fromParm:3 atFxTime:info->var0.var1];
    v36 = 0;
    [v10 getIntValue:&v36 fromParm:4 atFxTime:info->var0.var1];
    v34 = 0.0;
    v35 = 0.0;
    [v10 getXValue:&v35 YValue:&v34 fromParm:5 atFxTime:info->var0.var1];
    v33 = 0;
    [v10 getIntValue:&v33 fromParm:6 atFxTime:info->var0.var1];
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    if (input)
    {
      [input imageInfo];
      if (*(&v30 + 1))
      {
        v39 = -v39;
      }
    }

    imageType = [input imageType];
    if ([(PAESharedDefaultBase *)self getRenderMode:info->var0.var1])
    {
      v12 = imageType == 3;
    }

    else
    {
      v12 = 0;
    }

    LOBYTE(v10) = v12;
    if (v12)
    {
      [input bounds];
      v16 = (v35 + -0.5) * v15;
      v18 = v17 * (v34 + -0.5);
      v34 = v18;
      v35 = v16;
      if (input)
      {
        [input heliumRef];
        v18 = v34;
        v16 = v35;
      }

      else
      {
        v26 = 0;
      }

      v19 = *&info->var2;
      v24[0] = *&info->var0.var0;
      v24[1] = v19;
      v25 = *&info->var4;
      HIDWORD(v20) = DWORD1(v25);
      *&v14 = v18;
      *&v13 = v16;
      *&v19 = v36;
      HIDWORD(v21) = HIDWORD(v37);
      *&v20 = v37;
      *&v21 = v38;
      HIDWORD(v22) = HIDWORD(v39);
      *&v22 = v39;
      [(PAEEarthquake *)self quakeHeliumNodeWithInputImage:&v26 inputImage:input outputImage:output renderInfo:v24 twist:v33 horizontalShake:v22 verticalShake:v21 layers:v20 centerX:*&v19 centerY:v13 randomSeed:v14];
      if (v26)
      {
        (*(*v26 + 24))(v26);
      }

      [output setHeliumRef:&v27];
      if (v27)
      {
        (*(*v27 + 24))(v27);
      }
    }
  }

  return v10;
}

- (HGRef<HGNode>)quakeHeliumNodeWithInputImage:(HGRef<HGNode>)image inputImage:(id)inputImage outputImage:(id)outputImage renderInfo:(id *)info twist:(float)twist horizontalShake:(float)shake verticalShake:(float)verticalShake layers:(float)self0 centerX:(float)self1 centerY:(float)self2 randomSeed:(int)self3
{
  v51 = v13;
  v59 = *MEMORY[0x277D85DE8];
  v25 = [objc_msgSend(inputImage "pixelTransform")];
  v26 = [objc_msgSend(inputImage "inversePixelTransform")];
  v27 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735EBF0];
  v28 = [v27 timelineFpsNumeratorForEffect:self];
  v29 = [v27 timelineFpsDenominatorForEffect:self];
  v30 = *(info->var0.var1 + 2);
  *&time.value = *info->var0.var1;
  time.epoch = v30;
  v31 = seed + 2302755 + (CMTimeGetSeconds(&time) / (v28 / v29) * 1000.0);
  for (i = 1; i != 102; ++i)
  {
    v31 = ((v31 << 12) + 150889) % 0xAE529;
    v54[i] = v31;
  }

  v33 = ((v31 << 12) + 150889) % 0xAE529u;
  memset(v58, 0, sizeof(v58));
  memset(v57, 0, sizeof(v57));
  memset(v56, 0, sizeof(v56));
  memset(v55, 0, sizeof(v55));
  if (layers > 0.0)
  {
    v34 = 0;
    do
    {
      *(v58 + v34) = 1.0 / layers;
      v36 = v33 % 0x65;
      v37 = v54[v36 + 1];
      v54[v36 + 1] = ((v37 << 12) + 150889) % 0xAE529;
      v35 = twist * 0.1;
      *(v57 + v34) = ((v35 + v35) * (v37 / 714020.0)) - v35;
      v38 = v37 % 0x65;
      v39 = v54[v37 % 0x65 + 1];
      v54[v38 + 1] = ((v39 << 12) + 150889) % 0xAE529;
      *(v56 + v34) = (((shake * 25.0) + (shake * 25.0)) * (v39 / 714020.0)) - (shake * 25.0);
      v39 %= 0x65uLL;
      v33 = v54[v39 + 1];
      v54[v39 + 1] = ((v33 << 12) + 150889) % 0xAE529;
      *(v55 + v34++) = (((verticalShake * 25.0) + (verticalShake * 25.0)) * (v33 / 714020.0)) - (verticalShake * 25.0);
    }

    while (v34 < layers);
  }

  v54[0] = v33;
  if (layers == 1.0)
  {
    HGTransform::HGTransform(&time);
    HGTransform::LoadMatrixd(&time, v26);
    HGTransform::Transpose(&time);
    HGTransform::Translate(&time, -x, -y, 0.0);
    HGTransform::Rotate(&time, *v57 * 57.2957795, 0.0, 0.0, 1.0);
    HGTransform::Translate(&time, -*v56, -*v55, 0.0);
    HGTransform::Translate(&time, x, y, 0.0);
    HGTransform::HGTransform(v52);
    HGTransform::LoadMatrixd(v52, v25);
    HGTransform::Transpose(v52);
    HGTransform::Multiply(&time, v52);
    v40 = HGObject::operator new(0x210uLL);
    HGXForm::HGXForm(v40);
    (*(*v40 + 576))(v40, &time);
    (*(*v40 + 16))(v40);
    (*(*v40 + 24))(v40);
    HGTransform::~HGTransform(v52);
    HGTransform::~HGTransform(&time);
  }

  else
  {
    v41 = HGMultiTexBlendBase::create(layers);
    v40 = v41;
    if (layers <= 0.0)
    {
      if (!v41)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v43 = 0;
      v44 = -x;
      v45 = -y;
      xCopy = x;
      yCopy = y;
      do
      {
        HGTransform::HGTransform(&time);
        HGTransform::LoadMatrixd(&time, v26);
        HGTransform::Transpose(&time);
        HGTransform::Translate(&time, v44, v45, 0.0);
        HGTransform::Rotate(&time, *(v57 + v43) * 57.2957795, 0.0, 0.0, 1.0);
        HGTransform::Translate(&time, -*(v56 + v43), -*(v55 + v43), 0.0);
        HGTransform::Translate(&time, xCopy, yCopy, 0.0);
        HGTransform::HGTransform(v52);
        HGTransform::LoadMatrixd(v52, v25);
        HGTransform::Transpose(v52);
        v48 = HGTransform::Multiply(&time, v52);
        (*(*v40 + 576))(v40, v43, &time, v48);
        (*(*v40 + 584))(v40, v43, *(v58 + v43));
        HGTransform::~HGTransform(v52);
        HGTransform::~HGTransform(&time);
        v42.n128_f32[0] = ++v43;
      }

      while (v43 < layers);
    }

    (*(*v40 + 16))(v40, v42);
    (*(*v40 + 24))(v40);
  }

LABEL_14:
  (*(*v40 + 120))(v40, 0, *image.var0);
  *v51 = v40;
  (*(*v40 + 16))(v40);
  [(PAESharedDefaultBase *)self crop:v51 fromImage:inputImage toImage:outputImage];
  return (*(*v40 + 24))(v40);
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