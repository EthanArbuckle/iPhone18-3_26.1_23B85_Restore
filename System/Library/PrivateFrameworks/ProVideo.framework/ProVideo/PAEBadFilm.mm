@interface PAEBadFilm
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEBadFilm)initWithAPIManager:(id)a3;
- (double)autoRandomize:(double)a3 withVariance:(double)a4 andFrequency:(int)a5 atTime:(id)a6 randCount:(int *)a7;
- (id)properties;
- (void)createDust:(int)a3 scratches:(int)a4 scratchColor:(double *)a5 hair:(int)a6 randomSeed:(int)a7 autoRandFreq:(int)a8 buffer:(void *)a9 atTime:(id)a10 pixelTransform:(const void *)a11;
- (void)dealloc;
- (void)getBrightness:(double *)a3 saturation:(double *)a4 dust:(int *)a5 scratches:(int *)a6 scratchColor:(double *)a7 hair:(int *)a8 randomSeed:(int *)a9 jitter:(double *)a10 focus:(double *)a11 grain:(double *)a12 autoRandFreq:(int *)a13 withParmsAPI:(id)a14 atTime:(id)a15;
- (void)setupScratchArrayWithAutoRandomizeFrequency:(int)a3 andSeed:(int)a4 withWidth:(int)a5 andHeight:(int)a6 atTime:(id)a7;
@end

@implementation PAEBadFilm

- (PAEBadFilm)initWithAPIManager:(id)a3
{
  v8.receiver = self;
  v8.super_class = PAEBadFilm;
  v4 = [(PAESharedDefaultBase *)&v8 initWithAPIManager:?];
  v5 = v4;
  if (v4)
  {
    v4->_cachedSeed = 0;
    v4->_scratches = [MEMORY[0x277CBEB18] arrayWithCapacity:25];
    v6 = [[PAEEarthquake alloc] initWithAPIManager:a3];
    v5->_jitterer = v6;
    if (!v6)
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  self->_jitterer = 0;

  v3.receiver = self;
  v3.super_class = PAEBadFilm;
  [(PAESharedDefaultBase *)&v3 dealloc];
}

- (id)properties
{
  if ([PAEBadFilm properties]::once != -1)
  {
    [PAEBadFilm properties];
  }

  return [PAEBadFilm properties]::sPropertiesDict;
}

uint64_t __24__PAEBadFilm_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  result = [v0 initWithObjectsAndKeys:{v1, @"MayRemapTime", v2, @"SupportsHeliumRendering", v3, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1), @"AutoColorProcessingSupport", 0}];
  [PAEBadFilm properties]::sPropertiesDict = result;
  return result;
}

- (BOOL)addParameters
{
  v11.receiver = self;
  v11.super_class = PAEBadFilm;
  [(PAESharedDefaultBase *)&v11 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadFilm::Focus" parameterMin:0 parameterMax:0) sliderMin:1 sliderMax:0 delta:0.0 parmFlags:{0.0, 600.0, 0.0, 64.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadFilm::FocusVariance" parameterMin:0 parameterMax:0) sliderMin:2 sliderMax:0 delta:1.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 0.5}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadFilm::Brightness" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:1.0 parmFlags:{0.0, 100.0, 0.0, 5.0, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadFilm::BrightnessVariance" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:0.34 parmFlags:{0.0, 2.5, 0.0, 2.5, 0.1}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadFilm::Saturation" parameterMin:0 parameterMax:0) sliderMin:5 sliderMax:0 delta:-50.0 parmFlags:{-100.0, 100.0, -100.0, 100.0, 1.0}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadFilm::SaturationVariance" parameterMin:0 parameterMax:0) sliderMin:6 sliderMax:0 delta:5.0 parmFlags:{0.0, 100.0, 0.0, 100.0, 1.0}];
    LODWORD(v6) = 0;
    [v3 addIntSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadFilm::Scratches" parameterMin:0 parameterMax:0) sliderMin:7 sliderMax:1 delta:0 parmFlags:{25, 0, 0x100000019, v6}];
    [v3 addColorParameterWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultRed:@"BadFilm::ScratchColor" defaultGreen:0 defaultBlue:0) defaultAlpha:15 parmFlags:{0, 1.0, 1.0, 1.0, 0.25}];
    LODWORD(v7) = 0;
    [v3 addIntSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadFilm::Hairs" parameterMin:0 parameterMax:0) sliderMin:8 sliderMax:1 delta:0 parmFlags:{10, 0, 0x10000000ALL, v7}];
    LODWORD(v8) = 0;
    [v3 addIntSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadFilm::Dust" parameterMin:0 parameterMax:0) sliderMin:9 sliderMax:4 delta:0 parmFlags:{100, 0, 0x100000064, v8}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadFilm::Jitter" parameterMin:0 parameterMax:0) sliderMin:10 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadFilm::JitterVariance" parameterMin:0 parameterMax:0) sliderMin:11 sliderMax:0 delta:0.05 parmFlags:{0.0, 0.5, 0.0, 0.5, 0.01}];
    [v3 addFloatSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadFilm::Grain" parameterMin:0 parameterMax:0) sliderMin:12 sliderMax:0 delta:0.0 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    LODWORD(v9) = 0;
    [v3 addIntSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadFilm::AutoRandomFreq" parameterMin:0 parameterMax:0) sliderMin:13 sliderMax:3 delta:0 parmFlags:{1000, 0, 0x100000064, v9}];
    LODWORD(v10) = 0;
    [v3 addIntSliderWithName:objc_msgSend(v4 parmId:"localizedStringForKey:value:table:" defaultValue:@"BadFilm::RandomSeed" parameterMin:0 parameterMax:0) sliderMin:14 sliderMax:25 delta:2294967296 parmFlags:{2000000000, 0, 0x1000003E8, v10}];
  }

  return v3 != 0;
}

- (void)getBrightness:(double *)a3 saturation:(double *)a4 dust:(int *)a5 scratches:(int *)a6 scratchColor:(double *)a7 hair:(int *)a8 randomSeed:(int *)a9 jitter:(double *)a10 focus:(double *)a11 grain:(double *)a12 autoRandFreq:(int *)a13 withParmsAPI:(id)a14 atTime:(id)a15
{
  [a14 getFloatValue:a3 fromParm:3 atFxTime:a15.var1];
  [a14 getFloatValue:a4 fromParm:5 atFxTime:a15.var1];
  [a14 getIntValue:a5 fromParm:9 atFxTime:a15.var1];
  [a14 getIntValue:a6 fromParm:7 atFxTime:a15.var1];
  [a14 getRedValue:a7 greenValue:a7 + 1 blueValue:a7 + 2 alphaValue:a7 + 3 fromParm:15 atFxTime:a15.var1];
  [a14 getIntValue:a8 fromParm:8 atFxTime:a15.var1];
  [a14 getIntValue:a9 fromParm:14 atFxTime:a15.var1];
  [a14 getFloatValue:a10 fromParm:10 atFxTime:a15.var1];
  [a14 getFloatValue:a11 fromParm:1 atFxTime:a15.var1];
  [a14 getFloatValue:a12 fromParm:12 atFxTime:a15.var1];
  v33 = 0.0;
  v34 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  [a14 getIntValue:a13 fromParm:13 atFxTime:a15.var1];
  if (*a13)
  {
    v30 = 0;
    [a14 getFloatValue:&v34 fromParm:2 atFxTime:a15.var1];
    [(PAEBadFilm *)self autoRandomize:*a13 withVariance:a15.var1 andFrequency:&v30 atTime:*a11 randCount:v34];
    *a11 = fabs(v19);
    [a14 getFloatValue:&v33 fromParm:4 atFxTime:a15.var1];
    [(PAEBadFilm *)self autoRandomize:*a13 withVariance:a15.var1 andFrequency:&v30 atTime:*a3 randCount:v33];
    *a3 = fabs(v20);
    [a14 getFloatValue:&v32 fromParm:6 atFxTime:a15.var1];
    [(PAEBadFilm *)self autoRandomize:*a13 withVariance:a15.var1 andFrequency:&v30 atTime:*a4 randCount:v32];
    *a4 = v21;
    [a14 getFloatValue:&v31 fromParm:11 atFxTime:a15.var1];
    [(PAEBadFilm *)self autoRandomize:*a13 withVariance:a15.var1 andFrequency:&v30 atTime:*a10 randCount:v31];
    *a10 = fabs(v22);
  }

  v23 = *a4 / 100.0 + 1.0;
  v24 = 2.0;
  if (v23 <= 2.0)
  {
    v24 = *a4 / 100.0 + 1.0;
  }

  v25 = v23 < 0.0;
  v26 = 0.0;
  if (!v25)
  {
    v26 = v24;
  }

  *a4 = v26;
}

- (double)autoRandomize:(double)a3 withVariance:(double)a4 andFrequency:(int)a5 atTime:(id)a6 randCount:(int *)a7
{
  [(PAESharedDefaultBase *)self frameFromFxTime:a6.var1 forPlugIn:self];
  v12 = v11 + v11;
  RandMersenne::RandMersenne(v19);
  RandMersenne::SetSeed(v19, v12);
  v13 = *a7;
  if (*a7 <= 0)
  {
    v15 = v21;
  }

  else
  {
    v14 = 0;
    v15 = v21;
    do
    {
      if (v15 >= 382)
      {
        dsfmt_gen_rand_all(v20);
        v15 = 0;
        v13 = *a7;
      }

      v21 = ++v15;
      ++v14;
    }

    while (v14 < v13);
  }

  if (v15 >= 382)
  {
    dsfmt_gen_rand_all(v20);
    v15 = 0;
  }

  v16 = v15 + 1;
  v21 = v15 + 1;
  if (!((*&v20[v15] + -1.0) * a5))
  {
    if (v15 >= 381)
    {
      dsfmt_gen_rand_all(v20);
      v16 = 0;
    }

    v21 = v16 + 1;
    v17 = *&v20[v16] + -1.0 + -0.5;
    a3 = (v17 + v17) * a4 + a3;
  }

  ++*a7;
  RandMersenne::~RandMersenne(v19);
  return a3;
}

- (void)setupScratchArrayWithAutoRandomizeFrequency:(int)a3 andSeed:(int)a4 withWidth:(int)a5 andHeight:(int)a6 atTime:(id)a7
{
  RandMersenne::RandMersenne(v29);
  if (a3)
  {
    [(PAESharedDefaultBase *)self frameFromFxTime:a7.var1 forPlugIn:self];
    v13 = RandMersenne::SetSeed(v29, (v12 + v12) + 1);
  }

  else
  {
    v13 = RandMersenne::SetSeed(v29, a4);
  }

  [(NSMutableArray *)self->_scratches removeAllObjects];
  v14 = a6;
  v15 = 25;
  do
  {
    v16 = v31;
    if (v31 < 382)
    {
      v17 = ++v31;
      v18 = v30[v16];
      if (v16 == 381)
      {
        dsfmt_gen_rand_all(v30);
        v17 = 0;
      }
    }

    else
    {
      dsfmt_gen_rand_all(v30);
      v17 = 1;
      v18 = v30[0];
    }

    v31 = v17 + 1;
    v19 = v30[v17];
    if (v17 < 381)
    {
      v20 = v17 + 2;
      v31 = v17 + 2;
      v21 = v30[v17 + 1];
      if (v17 == 380)
      {
        dsfmt_gen_rand_all(v30);
        v20 = 0;
      }
    }

    else
    {
      dsfmt_gen_rand_all(v30);
      v20 = 1;
      v21 = v30[0];
    }

    v31 = v20 + 1;
    v22 = v30[v20];
    v23 = [PAEScratchVector alloc];
    v24 = v18 + -1.0;
    *&v24 = v18 + -1.0;
    v25 = (v19 + -1.0) * v14 * 600.0;
    *&v25 = v25;
    v26 = v21 + -1.0;
    *&v26 = v21 + -1.0;
    v27 = (v22 + -1.0) * v14 * 600.0;
    *&v27 = v27;
    v28 = [(PAEScratchVector *)v23 initWithStartLocationX:v24 andY:v25 andEndLocationX:v26 andY:v27];
    [(NSMutableArray *)self->_scratches addObject:v28];

    --v15;
  }

  while (v15);
  RandMersenne::~RandMersenne(v29);
}

- (void)createDust:(int)a3 scratches:(int)a4 scratchColor:(double *)a5 hair:(int)a6 randomSeed:(int)a7 autoRandFreq:(int)a8 buffer:(void *)a9 atTime:(id)a10 pixelTransform:(const void *)a11
{
  v12 = *&a7;
  v111 = *MEMORY[0x277D85DE8];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v18 = DeviceRGB;
    v19 = *(a9 + 7) - *(a9 + 5);
    v20 = *(a9 + 8) - *(a9 + 6);
    v21 = CGBitmapContextCreate(*(a9 + 10), v19, v20, 8uLL, *(a9 + 8), DeviceRGB, 2u);
    if (v21)
    {
      v22 = v21;
      v92 = a5;
      v96 = a4;
      memset(components, 0, sizeof(components));
      v23 = CGColorCreate(v18, components);
      CGContextSaveGState(v22);
      CGContextSetBlendMode(v22, kCGBlendModeCopy);
      CGContextSetFillColorWithColor(v22, v23);
      v112.size.width = v19;
      v112.size.height = v20;
      v112.origin.x = 0.0;
      v112.origin.y = 0.0;
      v99 = v19;
      v100 = v20;
      CGContextFillRect(v22, v112);
      CGContextRestoreGState(v22);
      RandMersenne::RandMersenne(v107);
      color = v23;
      v97 = a8;
      v95 = v12;
      v94 = v19;
      if (a8)
      {
        [(PAESharedDefaultBase *)self frameFromFxTime:a10.var1 forPlugIn:self];
        RandMersenne::SetSeed(v107, (v24 + v24) + 1);
        v25 = v109;
        if (v109 >= 382)
        {
          dsfmt_gen_rand_all(v108);
          v25 = 0;
        }

        v109 = v25 + 1;
        if (a3 >= 1 && !((v108[v25] + -1.0) * a8))
        {
          CGContextSetLineWidth(v22, 1.0);
          v26 = 0;
          v98 = v19;
          do
          {
            v27 = v109;
            if (v109 > 381)
            {
              dsfmt_gen_rand_all(v108);
              v27 = 0;
            }

            v28 = v27 + 1;
            v109 = v27 + 1;
            v29 = v108[v27];
            if (v27 >= 381)
            {
              dsfmt_gen_rand_all(v108);
              v28 = 0;
            }

            v109 = v28 + 1;
            v30 = v108[v28];
            if (v28 < 381)
            {
              v33 = v28 + 2;
              v109 = v28 + 2;
              v31 = v108[v28 + 1];
              v34 = *a11;
              if (v28 == 380)
              {
                dsfmt_gen_rand_all(v108);
                v33 = 0;
              }

              v32 = *a11;
            }

            else
            {
              dsfmt_gen_rand_all(v108);
              v31 = v108[0];
              v32 = *a11;
              v33 = 1;
              v34 = *a11;
            }

            v109 = v33 + 1;
            v35 = v34 * (v31 + -1.0);
            v36 = (v108[v33] + -1.0) * 0.75 + 0.25;
            CGContextSetRGBStrokeColor(v22, v35, v35, v35, v32 * v36);
            v37 = (v29 + -1.0) * v98;
            v38 = (v30 + -1.0) * v20;
            CGContextMoveToPoint(v22, v37, v38);
            v39 = v109;
            if (v109 >= 382)
            {
              dsfmt_gen_rand_all(v108);
              v39 = 0;
            }

            v40 = v108[v39];
            v109 = v39 + 1;
            v41 = ((v40 + -1.0) * 11.0);
            if (v41 >= 1)
            {
              do
              {
                v42 = v109;
                if (v109 < 382)
                {
                  v43 = ++v109;
                  v44 = v108[v42];
                  if (v42 == 381)
                  {
                    dsfmt_gen_rand_all(v108);
                    v43 = 0;
                  }
                }

                else
                {
                  dsfmt_gen_rand_all(v108);
                  v43 = 1;
                  LODWORD(v44) = LODWORD(v108[0]);
                }

                v109 = v43 + 1;
                v45 = v108[v43];
                v46 = v37 + 1.0;
                if (LODWORD(v44) >= 0xAAAAAAAA)
                {
                  v46 = v37;
                }

                if (LODWORD(v44) >= 0x55555555)
                {
                  v37 = v46;
                }

                else
                {
                  v37 = v37 + -1.0;
                }

                v47 = v38 + 1.0;
                if (LODWORD(v45) >= 0xAAAAAAAA)
                {
                  v47 = v38;
                }

                if (LODWORD(v45) >= 0x55555555)
                {
                  v38 = v47;
                }

                else
                {
                  v38 = v38 + -1.0;
                }

                CGContextAddLineToPoint(v22, v37, v38);
                --v41;
              }

              while (v41);
            }

            CGContextStrokePath(v22);
            ++v26;
          }

          while (v26 != a3);
        }
      }

      else
      {
        RandMersenne::SetSeed(v107, v12);
        v48 = v109;
        if (v109 >= 382)
        {
          dsfmt_gen_rand_all(v108);
          v48 = 0;
        }

        v109 = v48 + 1;
      }

      *&v105 = &self->_scratchMutex;
      PCMutex::lock(&self->_scratchMutex);
      BYTE8(v105) = 1;
      v49 = v97;
      v50 = v95;
      if ([(NSMutableArray *)self->_scratches count]!= 25 || !v97 && self->_cachedSeed != v95)
      {
        [(PAEBadFilm *)self setupScratchArrayWithAutoRandomizeFrequency:v97 andSeed:v95 withWidth:v94 andHeight:v20 atTime:a10.var1];
      }

      v51 = [MEMORY[0x277CBEA60] arrayWithArray:self->_scratches];
      PCMutex::unlock(&self->_scratchMutex);
      var1 = a10.var1;
      if (v97)
      {
        [(PAESharedDefaultBase *)self frameFromFxTime:a10.var1 forPlugIn:self];
        RandMersenne::SetSeed(v107, (v53 + v53) + 1);
      }

      else
      {
        RandMersenne::SetSeed(v107, v95);
      }

      if (v96 >= 1)
      {
        CGContextSetRGBStrokeColor(v22, *v92, v92[1], v92[2], v92[3]);
        v54 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F060];
        v105 = *MEMORY[0x277CC08F0];
        v106 = *(MEMORY[0x277CC08F0] + 16);
        v104 = &v105;
        [v54 inPointFxTimeOfTimelineForEffect:&v104];
        [(PAESharedDefaultBase *)self frameFromFxTime:a10.var1 forPlugIn:self];
        v56 = v55;
        [(PAESharedDefaultBase *)self frameFromFxTime:v104 forPlugIn:self];
        v58 = 0;
        v59 = v94;
        v60 = fmod(v56 - v57, 600.0) * v100;
        do
        {
          v61 = [v51 objectAtIndex:v58];
          v102 = 0;
          v103 = 0;
          [v61 startLocationX:&v103 + 4 andY:&v103 andEndLocationX:&v102 + 4 andY:&v102];
          v62 = *&v103 - v60;
          v63 = *&v102 - v60;
          *&v103 = v62;
          *(&v103 + 1) = *(&v103 + 1) * v59;
          *&v102 = v63;
          *(&v102 + 1) = *(&v102 + 1) * v59;
          v64 = v109;
          if (v109 >= 382)
          {
            dsfmt_gen_rand_all(v108);
            v64 = 0;
          }

          v109 = v64 + 1;
          CGContextSetLineWidth(v22, v108[v64] + -1.0 + 1.0);
          CGContextMoveToPoint(v22, *(&v103 + 1), *&v103);
          CGContextAddLineToPoint(v22, *(&v102 + 1), *&v102);
          ++v58;
        }

        while (v96 != v58);
        CGContextStrokePath(v22);
        v50 = v95;
        var1 = a10.var1;
        v49 = v97;
      }

      if (v49)
      {
        [(PAESharedDefaultBase *)self frameFromFxTime:var1 forPlugIn:self];
        RandMersenne::SetSeed(v107, (v65 + v65) + 1);
      }

      else
      {
        RandMersenne::SetSeed(v107, v50);
      }

      v66 = v109;
      if (v109 < 382)
      {
        v67 = ++v109;
        if (v66 == 381)
        {
          dsfmt_gen_rand_all(v108);
          v67 = 0;
        }
      }

      else
      {
        dsfmt_gen_rand_all(v108);
        v67 = 1;
      }

      v68 = v67 + 1;
      v109 = v67 + 1;
      if (v49)
      {
        if (v67 >= 381)
        {
          dsfmt_gen_rand_all(v108);
          v68 = 0;
        }

        v109 = v68 + 1;
        if (a6 >= 1 && !((v108[v68] + -1.0) * v49))
        {
          v69 = *a11 + 0.1;
          CGContextSetRGBStrokeColor(v22, 0.2, 0.2, 0.2, v69);
          v70 = 0;
          v71 = fabs(*(a11 + 5)) * 10.0;
          v72 = fabs(*a11) * 10.0;
          v73 = v72;
          v74 = v71;
          do
          {
            v75 = v109;
            if (v109 > 381)
            {
              dsfmt_gen_rand_all(v108);
              v75 = 0;
            }

            v76 = v75 + 1;
            v109 = v75 + 1;
            v77 = v108[v75];
            if (v75 >= 381)
            {
              dsfmt_gen_rand_all(v108);
              v76 = 0;
            }

            v78 = (v77 + -1.0) * v99;
            v79 = v108[v76];
            v109 = v76 + 1;
            v80 = (v79 + -1.0) * v100;
            CGContextMoveToPoint(v22, v78, v80);
            v81 = 5;
            do
            {
              v82 = v109;
              if (v109 > 381)
              {
                dsfmt_gen_rand_all(v108);
                v82 = 0;
              }

              v83 = v82 + 1;
              v109 = v82 + 1;
              v84 = v108[v82];
              if (v82 >= 381)
              {
                dsfmt_gen_rand_all(v108);
                v83 = 0;
              }

              v78 = (v84 + -1.0 + -0.5 + v84 + -1.0 + -0.5) * v73 + v78;
              v109 = v83 + 1;
              v85 = v108[v83] + -1.0 + -0.5;
              v80 = (v85 + v85) * v74 + v80;
              v86 = v78;
              CGContextAddLineToPoint(v22, v78, v80);
              --v81;
            }

            while (v81);
            v87 = v109;
            if (v109 < 382)
            {
              v88 = ++v109;
              v89 = v108[v87];
              if (v87 == 381)
              {
                dsfmt_gen_rand_all(v108);
                v88 = 0;
              }
            }

            else
            {
              dsfmt_gen_rand_all(v108);
              v88 = 1;
              v89 = v108[0];
            }

            v109 = v88 + 1;
            v90 = (v89 + -1.0 + -0.5 + v89 + -1.0 + -0.5) * v73 + v86;
            v91 = v108[v88] + -1.0 + -0.5;
            *&v91 = (v91 + v91) * v74 + v80;
            CGContextAddLineToPoint(v22, v90, *&v91);
            ++v70;
          }

          while (v70 != a6);
          CGContextStrokePath(v22);
        }
      }

      else
      {
        if (v67 >= 381)
        {
          dsfmt_gen_rand_all(v108);
          v68 = 0;
        }

        v109 = v68 + 1;
      }

      CGColorRelease(color);
      CGContextRelease(v22);
      RandMersenne::~RandMersenne(v107);
    }

    CGColorSpaceRelease(v18);
  }
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  if (a4)
  {
    [a4 imageInfo];
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  if (a3)
  {
    [a3 imageInfo];
  }

  v9 = v43;
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v11 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_287359A98];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    return 0;
  }

  v36 = 0x3FF0000000000000;
  v37 = 0x3FF0000000000000;
  v35 = 0;
  v34 = 0;
  v33 = 25;
  v31 = 0;
  v32 = 0;
  v30 = 0.0;
  v29 = 0;
  [(PAEBadFilm *)self getBrightness:&v37 saturation:&v36 dust:&v35 + 4 scratches:&v35 scratchColor:v48 hair:&v34 randomSeed:&v33 jitter:&v32 focus:&v31 grain:&v30 autoRandFreq:&v29 withParmsAPI:v10 atTime:a5->var0.var1];
  v15 = [a4 imageType];
  v16 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
  [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
  if (v16)
  {
    v17 = v15 == 3;
  }

  else
  {
    v17 = 0;
  }

  v14 = v17;
  if (v17)
  {
    v18 = HGRectMake4i(v9 / -2, *(&v9 + 1) / -2, v9 - v9 / 2, *(&v9 + 1) - *(&v9 + 1) / 2);
    v20 = v19;
    v21 = HGObject::operator new(0x80uLL);
    *&v22 = HGBitmap::HGBitmap(v21, v18, v20, 22).n128_u64[0];
    [(PAEBadFilm *)self createDust:HIDWORD(v35) scratches:v35 scratchColor:v48 hair:v34 randomSeed:v33 autoRandFreq:v29 buffer:v22 atTime:v21 pixelTransform:a5->var0.var1, v28];
    v23 = HGObject::operator new(0x1F0uLL);
    HGBitmapLoader::HGBitmapLoader(v23, v21);
    [(PAESharedDefaultBase *)self getScaleForImage:a4];
    [objc_msgSend(v12 colorMatrixFromDesiredRGBToYCbCrAtTime:{a5->var0.var1), "matrix"}];
    if (v30 != 0.0)
    {
      [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a4, v30];
      v24 = v38;
      [(PAESharedDefaultBase *)self frameFromFxTime:a5->var0.var1 forPlugIn:self];
      PAEGenerateNoise(v30, v25, v24, *(&v24 + 1), 2, 0, 1, 0);
    }

    v26 = HGObject::operator new(0x1A0uLL);
    *(v26 + 24) = 0u;
    *(v26 + 25) = 0u;
    *(v26 + 22) = 0u;
    *(v26 + 23) = 0u;
    *(v26 + 20) = 0u;
    *(v26 + 21) = 0u;
    *(v26 + 18) = 0u;
    *(v26 + 19) = 0u;
    *(v26 + 16) = 0u;
    *(v26 + 17) = 0u;
    *(v26 + 14) = 0u;
    *(v26 + 15) = 0u;
    *(v26 + 12) = 0u;
    *(v26 + 13) = 0u;
    *(v26 + 10) = 0u;
    *(v26 + 11) = 0u;
    *(v26 + 8) = 0u;
    *(v26 + 9) = 0u;
    *(v26 + 6) = 0u;
    *(v26 + 7) = 0u;
    *(v26 + 4) = 0u;
    *(v26 + 5) = 0u;
    *(v26 + 2) = 0u;
    *(v26 + 3) = 0u;
    *v26 = 0u;
    *(v26 + 1) = 0u;
    HgcBadFilm::HgcBadFilm(v26);
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