@interface PAEBadTV
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfo:(id *)info hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEBadTV)initWithAPIManager:(id)manager;
- (id)properties;
- (void)createWavyTableOfHeight:(int)height rowBytes:(unint64_t)bytes table:(char *)table flip:(BOOL)flip atTime:(id)time;
- (void)dealloc;
@end

@implementation PAEBadTV

- (PAEBadTV)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEBadTV;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:manager];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAEBadTV;
  [(PAESharedDefaultBase *)&v2 dealloc];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"PreservesAlpha", v6, @"SupportsLargeRenderScale", v7, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v10.receiver = self;
  v10.super_class = PAEBadTV;
  [(PAESharedDefaultBase *)&v10 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v4)
  {
    v5 = [v4 versionAtCreation] == 0;
    if (!v3)
    {
      return v3 != 0;
    }
  }

  else
  {
    v5 = 1;
    if (!v3)
    {
      return v3 != 0;
    }
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  [v3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadTV::Waviness" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:10.0 parmFlags:{0.0, 200.0, 0.0, 200.0, 1.0}];
  [v3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadTV::Roll" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:45.0 parmFlags:{-1000.0, 1000.0, -100.0, 100.0, 1.0}];
  [v3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadTV::Static" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:0.1 parmFlags:{0.0, 4.0, 0.0, 1.0, 0.1}];
  [v3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadTV::ColorSync" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:0.8 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
  [v3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadTV::Saturation" parameterMin:0 parameterMax:0) sliderMin:5 sliderMax:0 delta:-25.0 parmFlags:{-100.0, 100.0, -100.0, 100.0, 1.0}];
  [v3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadTV::ScanLineBrightness" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:0 delta:1.5 parmFlags:{0.0, 5.0, 0.0, 5.0, 0.1}];
  if (v5)
  {
    LODWORD(v8) = 0;
    [v3 addIntSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadTV::ScanLineThickness" parameterMin:0 parameterMax:0) sliderMin:7 sliderMax:2 delta:0 parmFlags:{100, 0, 0x100000064, v8}];
    LODWORD(v9) = 0;
    [v3 addIntSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadTV::ScanLineDistance" parameterMin:0 parameterMax:0) sliderMin:8 sliderMax:1 delta:1 parmFlags:{100, 1, 0x100000064, v9}];
  }

  else
  {
    [v3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadTV::ScanLinePercentage" parameterMin:0 parameterMax:0) sliderMin:9 sliderMax:0 delta:0.5 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v6 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadTV::NumScanLines" parameterMin:0 parameterMax:0) sliderMin:10 sliderMax:0 delta:100.0 parmFlags:{1.0, 10000.0, 1.0, 1080.0, 1.0}];
  }

  return v3 != 0;
}

- (void)createWavyTableOfHeight:(int)height rowBytes:(unint64_t)bytes table:(char *)table flip:(BOOL)flip atTime:(id)time
{
  flipCopy = flip;
  std::vector<float>::vector[abi:ne200100](v42, height);
  RandMersenne::RandMersenne(&v39);
  [(PAESharedDefaultBase *)self frameFromFxTime:time.var1 forPlugIn:self];
  RandMersenne::SetSeed(&v39, (v13 + v13) + 1);
  v14 = v41;
  if (v41 >= 382)
  {
    dsfmt_gen_rand_all(v40);
    v14 = 0;
  }

  v15 = v14 + 1;
  v41 = v14 + 1;
  v16 = (height + 1);
  v17 = ~height;
  v18 = *&v40[v14] + -1.0;
  v19 = v42[0];
  *v42[0] = v18;
  if (height > 1)
  {
    v20 = 0;
    while (1)
    {
      v21 = v19[v20 / 4];
      if (v15 >= 382)
      {
        dsfmt_gen_rand_all(v40);
        v15 = 0;
        v19 = v42[0];
      }

      v22 = *&v40[v15++];
      v41 = v15;
      *&v22 = v22 + -1.0;
      v23 = v21 + (*&v22 + -0.5);
      v19[v20 / 4 + 1] = v23;
      if (v23 < v16)
      {
        break;
      }

      if (v23 <= v17)
      {
        goto LABEL_10;
      }

LABEL_11:
      v20 += 4;
      v17 = v23;
      if (4 * height - 4 == v20)
      {
        goto LABEL_14;
      }
    }

    v16 = v23;
LABEL_10:
    v23 = v17;
    goto LABEL_11;
  }

  v23 = ~height;
LABEL_14:
  v24 = fabsf(v16);
  v25 = fabsf(v23);
  if (v25 <= v24)
  {
    v25 = v24;
  }

  if (height >= 1)
  {
    v26 = v25 + v25;
    heightCopy = height;
    v28 = v19;
    do
    {
      *v28 = (*v28 / v26) + 0.5;
      ++v28;
      --heightCopy;
    }

    while (heightCopy);
  }

  v29 = (height - 1) * bytes;
  if (flipCopy)
  {
    bytesCopy = -bytes;
  }

  else
  {
    v29 = 0;
    bytesCopy = bytes;
  }

  v31 = &table[v29];
  v32 = (height - 1);
  if (height == 1)
  {
    *v31 = -1;
    v33 = *v19;
  }

  else
  {
    v34 = *v19 + v19[1];
    *v31 = -1;
    v31[1] = ((v34 * 255.0) * 0.5);
    *(v31 + 1) = 0;
    if (height < 3)
    {
      goto LABEL_29;
    }

    v31 += bytesCopy;
    v35 = v32 - 1;
    v36 = v19 + 2;
    do
    {
      v37 = *(v36 - 2) + *(v36 - 1);
      v38 = *v36++;
      *v31 = -1;
      v31[1] = (((v37 + v38) * 255.0) / 3.0);
      *(v31 + 1) = 0;
      v31 += bytesCopy;
      --v35;
    }

    while (v35);
    v33 = v19[height - 2] + v19[v32];
    *v31 = -1;
  }

  v31[1] = ((v33 * 255.0) * 0.5);
  *(v31 + 1) = 0;
LABEL_29:
  RandMersenne::~RandMersenne(&v39);
  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  v55 = 0;
  memset(&v54[16], 0, 64);
  if (input)
  {
    [input imageInfo];
  }

  if (self)
  {
    [(PAESharedDefaultBase *)self getPixelTransformForImage:output];
    [(PAESharedDefaultBase *)self getPixelTransformForImage:input];
    [(PAESharedDefaultBase *)self getImageBoundary:input];
    v9 = vcvtq_f64_f32(v42[0]);
    v10 = vcvtq_f64_f32(v42[1]);
  }

  else
  {
    v9 = 0uLL;
    v10 = 0uLL;
    memset(v54, 0, 256);
  }

  v53[0] = v9;
  v53[1] = v10;
  v11 = PCMatrix44Tmpl<double>::transformRect<double>(v54, v53, v53);
  if (v11)
  {
    width = [input width];
    height = [input height];
    v14 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
    v15 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
    v16 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
    if (v14)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17 || v16 == 0)
    {
      LOBYTE(v11) = 0;
    }

    else
    {
      v19 = v16;
      v40 = height;
      v41 = width;
      versionAtCreation = [v15 versionAtCreation];
      v52 = 0;
      [v14 getFloatValue:&v52 fromParm:1 atFxTime:info->var0.var1];
      v21 = HGRectMake4i(0, 0, 1u, 0x438u);
      v23 = v22;
      v24 = HGObject::operator new(0x80uLL);
      HGBitmap::HGBitmap(v24, v21, v23, 22);
      if (*(v24 + 10))
      {
        [PAEBadTV createWavyTableOfHeight:"createWavyTableOfHeight:rowBytes:table:flip:atTime:" rowBytes:1080 table:*(v24 + 8) flip:? atTime:?];
        v51 = 0.0;
        [v14 getFloatValue:&v51 fromParm:2 atFxTime:info->var0.var1];
        v50 = 1.0;
        [v14 getFloatValue:&v50 fromParm:5 atFxTime:info->var0.var1];
        v50 = v50 / 100.0 + 1.0;
        v49 = 0x3FF0000000000000;
        [v14 getFloatValue:&v49 fromParm:6 atFxTime:info->var0.var1];
        v48 = 1.0;
        var1 = info->var0.var1;
        if (versionAtCreation)
        {
          [v14 getFloatValue:&v48 fromParm:9 atFxTime:var1];
          v47 = 1.0;
          v42[0] = 0;
          [v14 getFloatValue:v42 fromParm:10 atFxTime:info->var0.var1];
          v27 = v40;
          v26 = v41;
          v28 = *v42;
          if (*v42 == 0.0)
          {
            v42[0] = 0x3FF0000000000000;
          }

          height2 = [input height];
          v30 = height2 / *v42;
          v47 = v30 - v30 * v48;
          v48 = v30 * v48;
        }

        else
        {
          [v14 getFloatValue:&v48 fromParm:7 atFxTime:var1];
          v47 = 1.0;
          [v14 getFloatValue:&v47 fromParm:8 atFxTime:info->var0.var1];
          v27 = v40;
          v26 = v41;
        }

        v46 = 1.0;
        [v14 getFloatValue:&v46 fromParm:4 atFxTime:info->var0.var1];
        v46 = (1.0 - v46) * 10.0;
        v45 = 0.0;
        [v14 getFloatValue:&v45 fromParm:3 atFxTime:info->var0.var1];
        v31 = v45;
        if (v45 > 0.0)
        {
          [(PAESharedDefaultBase *)self getInversePixelTransformForImage:input, v45];
          [(PAESharedDefaultBase *)self frameFromFxTime:info->var0.var1 forPlugIn:self];
          PAEGenerateNoise(v45, v32, v26, v27, 0, 0, 1, 0);
        }

        if (input)
        {
          [input heliumRef];
          v43 = v44;
          if (v44)
          {
            (*(**&v44 + 16))(v44);
          }
        }

        else
        {
          v43 = 0;
          v44 = 0;
        }

        [(PAESharedDefaultBase *)self changeDOD:&v43 withRect:v53, v31];
        v33 = v42[0];
        if (*&v44 == *v42)
        {
          if (v44)
          {
            (*(**v42 + 24))(*v42);
          }
        }

        else
        {
          if (v44)
          {
            (*(**&v44 + 24))();
            v33 = v42[0];
          }

          v44 = v33;
          v42[0] = 0;
        }

        if (v43)
        {
          (*(**&v43 + 24))(v43);
        }

        v34 = HGObject::operator new(0x1F0uLL);
        HGBitmapLoader::HGBitmapLoader(v34, v24);
        [input height];
        [input width];
        v51 = fmod(v51 * 1080.0 / 100.0, 1080.0);
        [objc_msgSend(v19 colorMatrixFromDesiredRGBToYCbCrAtTime:{info->var0.var1), "matrix"}];
        v35 = HGObject::operator new(0x1D0uLL);
        HGTextureWrap::HGTextureWrap(v35);
        HGTextureWrap::SetTextureWrapMode(v35, 3, v36);
        (*(*v35 + 120))(v35, 0, v44);
        if (v45 > 0.0)
        {
          v37 = HGObject::operator new(0x1B0uLL);
          HgcBadTVNoise::HgcBadTVNoise(v37);
        }

        v38 = HGObject::operator new(0x1B0uLL);
        HgcBadTV::HgcBadTV(v38);
      }

      (*(*v24 + 24))(v24);
      LOBYTE(v11) = 1;
    }
  }

  return v11;
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