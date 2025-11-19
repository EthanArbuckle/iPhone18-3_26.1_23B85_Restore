@interface PAESimpleKeyer
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)parameterChanged:(unsigned int)a3;
- (BOOL)pullInitialKey:(id *)a3;
- (HGRef<HGNode>)getKeyerNode:(HGRef<HGNode>)a3 omKeyer:(void *)a4 atTime:(id)a5;
- (PAESimpleKeyer)initWithAPIManager:(id)a3;
- (id)properties;
- (void)createLutForNode:(void *)a3 input:(int)a4 rect:(const HGRect *)a5 omKeyer:(void *)a6;
- (void)dealloc;
@end

@implementation PAESimpleKeyer

- (id)properties
{
  v4.receiver = self;
  v4.super_class = PAESimpleKeyer;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[PAEKeyer properties](&v4, sel_properties)}];
  [v2 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", 3), @"PixelTransformSupport"}];
  return v2;
}

- (PAESimpleKeyer)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAESimpleKeyer;
  return [(PAEKeyer *)&v4 initWithAPIManager:a3];
}

- (void)createLutForNode:(void *)a3 input:(int)a4 rect:(const HGRect *)a5 omKeyer:(void *)a6
{
  p_cacheMutex = &self->super._cacheMutex;
  PCMutex::lock(&self->super._cacheMutex);
  v12 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v12, *&a5->var0, *&a5->var2, 28);
  v13 = *(v12 + 10);
  v14 = [(PAEKeyer *)self isLutExpandedForHDR];
  v15 = 0;
  if (v14)
  {
    v16 = 11.0;
  }

  else
  {
    v16 = 1.0;
  }

  if (v14)
  {
    v17 = 2816;
  }

  else
  {
    v17 = 256;
  }

  do
  {
    v18 = v15 / (v17 - 1);
    OMKeyer2D::getAlphaLuma(a6, v16 * v18);
    *v13 = v19;
    v20 = *(a6 + 15);
    v21 = ((*(a6 + 16) - v20) >> 2);
    if ((v15 / 255.0) <= 1.0)
    {
      v22 = v15 / 255.0;
    }

    else
    {
      v22 = 1.0;
    }

    v23 = v21 + -1.0;
    v24 = rintf(v22 * (v21 + -1.0));
    if ((v24 & 0x8000000000000000) == 0)
    {
      if (v23 < v24)
      {
        v24 = v23;
      }

      v20 += v24;
    }

    v13[1] = *v20;
    v13[2] = 0;
    v13 += 4;
    ++v15;
  }

  while (v17 != v15);
  v25 = HGObject::operator new(0x80uLL);
  HGTexture::HGTexture(v25, *a5, v12);
  lutsBitmapLoaderCache = self->super._lutsBitmapLoaderCache;
  if (lutsBitmapLoaderCache)
  {
    (*(*lutsBitmapLoaderCache + 24))(lutsBitmapLoaderCache);
  }

  v27 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v27, v25);
  self->super._lutsBitmapLoaderCache = v27;
  (*(*v25 + 24))(v25);
  (*(*v12 + 24))(v12);
  (*(*a3 + 120))(a3, a4, self->super._lutsBitmapLoaderCache);
  PCMutex::unlock(p_cacheMutex);
}

- (HGRef<HGNode>)getKeyerNode:(HGRef<HGNode>)a3 omKeyer:(void *)a4 atTime:(id)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = HGObject::operator new(0x1B0uLL);
  HGGLNode::HGGLNode(v6, 0);
  HGGLNode::hglClearToBlack(v6);
  v8 = v6;
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  PAEKeyerDrawAlpha::drawAlpha_in_HGGLNode(&v9, a4, &v8);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v7 = HGObject::operator new(0x1F0uLL);
  HGColorMatrix::HGColorMatrix(v7);
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v5 = *&a5->var2;
  v8[0] = *&a5->var0.var0;
  v8[1] = v5;
  v8[2] = *&a5->var4;
  v7.receiver = self;
  v7.super_class = PAESimpleKeyer;
  return [(PAEKeyer *)&v7 canThrowRenderOutput:a3 withInput:a4 withInfo:v8];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PAESimpleKeyer;
  [(PAEKeyer *)&v2 dealloc];
}

- (BOOL)pullInitialKey:(id *)a3
{
  v5 = [(PROAPIAccessing *)self->super.super.super._apiManager apiForProtocol:&unk_28735E258];
  v6 = [(PROAPIAccessing *)self->super.super.super._apiManager apiForProtocol:&unk_28736D650];
  v7 = [(PROAPIAccessing *)self->super.super.super._apiManager apiForProtocol:&unk_28735E448];
  v8 = [(PROAPIAccessing *)self->super.super.super._apiManager apiForProtocol:&unk_28735F060];
  if (v5)
  {
    _ZF = v6 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v10 = _ZF || v7 == 0;
  v11 = !v10;
  if (v10)
  {
    v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v44 = [v43 localizedStringForKey:@"Keyer::UnableToObtainAPIsDescription" value:0 table:0];
    v45 = [v43 localizedStringForKey:@"Keyer::UnableToObtainAPIsReason" value:0 table:0];
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v44, *MEMORY[0x277CCA450], v45, *MEMORY[0x277CCA470], 0}];
    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:FxPlugErrorDomain code:100001 userInfo:v46];
    }
  }

  else
  {
    v12 = v8;
    v13 = MEMORY[0x277CC08F0];
    v69 = *MEMORY[0x277CC08F0];
    v70 = *(MEMORY[0x277CC08F0] + 16);
    v68 = 0;
    [v5 getBoolValue:&v68 fromParm:8 atFxTime:&v69];
    if ((v68 & 1) == 0)
    {
      v66 = *v13;
      v67 = *(v13 + 2);
      v63 = v66;
      v64 = v67;
      v65 = COERCE_DOUBLE(&v66);
      v62 = COERCE_DOUBLE(&v63);
      [v6 startFxTimeOfMedia:&v65];
      [v6 durationFxTimeOfMedia:&v62];
      if (v65 != -1.0 && v62 != -1.0)
      {
        v56 = *v13;
        v57 = *(v13 + 2);
        v61 = COERCE_DOUBLE(&v56);
        [v12 frameDuration:&v61];
      }

      v60 = 0;
      v57 = 0;
      v56 = &v69;
      __asm { FMOV            V0.2D, #1.0 }

      v49 = _Q0;
      v58 = _Q0;
      v59 = 3;
      [(PAEKeyer *)self getInputWidth:&v60 + 4 height:&v60 renderInfo:&v56];
      if (*(&v60 + 1) > 0.0)
      {
        LODWORD(v18) = v60;
        if (*&v60 > 0.0)
        {
          v61 = 0.0;
          [v5 getFloatValue:&v61 fromParm:38 atFxTime:{&v69, v18}];
          v55 = 0.0;
          [v5 getFloatValue:&v55 fromParm:39 atFxTime:&v69];
          v54 = 0.0;
          [v5 getFloatValue:&v54 fromParm:40 atFxTime:&v69];
          v53 = 0.0;
          [v5 getFloatValue:&v53 fromParm:41 atFxTime:&v69];
          v52 = 0.0;
          [v5 getFloatValue:&v52 fromParm:42 atFxTime:&v69];
          v51 = 0.0;
          [v5 getFloatValue:&v51 fromParm:43 atFxTime:&v69];
          *&v56 = 0;
          [v5 getFloatValue:&v56 fromParm:36 atFxTime:&v69];
          v19 = *&v56;
          v20 = 0.5;
          [(PAEKeyer *)self autokeyAmountToHistoPercent:v19 * 0.5];
          v22 = v21;
          v23 = [[PAEKeyerInitialize alloc] initWithAPIManager:self->super.super.super._apiManager keyer:self];
          v50 = 0;
          v57 = 0;
          v56 = &v69;
          v58 = v49;
          v59 = 3;
          v24 = [(PAEKeyer *)self getColorPrimaries];
          v25 = *(&v60 + 1);
          v26 = *&v60;
          v27 = v61;
          v28 = v55;
          v29 = v54;
          v30 = v53;
          v31 = v52;
          v32 = v51;
          omSamples = self->super._omSamples;
          BYTE2(v48) = 1;
          BYTE1(v48) = [(PAEKeyer *)self use32x32Histogram];
          LOBYTE(v48) = 0;
          *&v34 = v27;
          *&v35 = v28;
          *&v36 = v29;
          *&v37 = v30;
          *&v38 = v31;
          *&v39 = v32;
          *&v22 = v22;
          LODWORD(v40) = LODWORD(v22);
          [PAEKeyerInitialize findSampleRectsWithInfo:v23 screenColor:"findSampleRectsWithInfo:screenColor:colorPrimaries:width:height:minGreenHueAngle:maxGreenHueAngle:greenChroma:minBlueHueAngle:maxBlueHueAngle:blueChroma:histoPercentageIncluded:omSamples:viewingSetupMatte:use32x32Histogram:simpleKey:" colorPrimaries:&v56 width:&v50 height:v24 minGreenHueAngle:v25 maxGreenHueAngle:v26 greenChroma:omSamples minBlueHueAngle:v34 maxBlueHueAngle:v35 blueChroma:v36 histoPercentageIncluded:v37 omSamples:v38 viewingSetupMatte:v39 use32x32Histogram:v40 simpleKey:v48];
          if (v50)
          {
            if (v50 != 1)
            {
LABEL_24:
              [v7 setBoolValue:1 toParm:8 atFxTime:&v69];

              return v11;
            }

            v20 = 1.0;
            v41 = 0.0;
            v42 = 0.460000008;
          }

          else
          {
            v42 = 0.730000019;
            v41 = 1.6;
          }

          [v7 setFloatValue:20 toParm:&v69 atFxTime:v42];
          [v7 setFloatValue:23 toParm:&v69 atFxTime:(v41 / 20.0)];
          [v7 setFloatValue:24 toParm:&v69 atFxTime:v20];
          goto LABEL_24;
        }
      }
    }
  }

  return v11;
}

- (BOOL)parameterChanged:(unsigned int)a3
{
  v4.receiver = self;
  v4.super_class = PAESimpleKeyer;
  return [(PAESimpleKeyer *)&v4 parameterChanged:*&a3];
}

@end