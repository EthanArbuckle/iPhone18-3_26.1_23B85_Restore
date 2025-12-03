@interface PAEKeyerInitialize
+ (void)addCorner:(const Vec3f *)corner toSamples:(void *)samples corner:(const Vec3f *)a5 clrScreen:(int)screen clrA:(int)a clrB:(int)b;
+ (void)setInitialSamples:(void *)samples autokeySetupUtil:(id)util sampleBoxHalfDim:(float)dim;
- (BOOL)calculateInitialMatteWithInfo:(id *)info omSamples:(void *)samples colorPrimaries:(int)primaries screenColor:(int *)color minGreenHueAngle:(float)angle maxGreenHueAngle:(float)hueAngle greenChroma:(float)chroma minBlueHueAngle:(float)self0 maxBlueHueAngle:(float)self1 blueChroma:(float)self2 histoPercentageIncluded:(float)self3 use32x32x32:(BOOL)self4 simpleKey:(BOOL)self5;
- (BOOL)findSampleRectsWithInfo:(id *)info screenColor:(int *)color colorPrimaries:(int)primaries width:(int)width height:(int)height minGreenHueAngle:(float)angle maxGreenHueAngle:(float)hueAngle greenChroma:(float)self0 minBlueHueAngle:(float)self1 maxBlueHueAngle:(float)self2 blueChroma:(float)self3 histoPercentageIncluded:(float)self4 omSamples:(void *)self5 viewingSetupMatte:(BOOL)self6 use32x32Histogram:(BOOL)self7 simpleKey:(BOOL)self8;
- (PAEKeyerInitialize)initWithAPIManager:(id)manager keyer:(id)keyer;
- (void)calculateInitialSamples:(void *)samples percentageOfBaseColorIncluded:(float)included use32x32x32:(BOOL)use32x32x32 autokeySetupUtil:(id)util samples:(void *)a7 scale:(float)scale;
- (void)dealloc;
@end

@implementation PAEKeyerInitialize

- (PAEKeyerInitialize)initWithAPIManager:(id)manager keyer:(id)keyer
{
  v10.receiver = self;
  v10.super_class = PAEKeyerInitialize;
  v6 = [(PAEKeyerInitialize *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_apiManager = manager;
    keyerCopy = keyer;
    v7->_keyer = keyer;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PAEKeyerInitialize;
  [(PAEKeyerInitialize *)&v3 dealloc];
}

+ (void)addCorner:(const Vec3f *)corner toSamples:(void *)samples corner:(const Vec3f *)a5 clrScreen:(int)screen clrA:(int)a clrB:(int)b
{
  v9 = vadd_f32(*corner->var0, *a5->var0);
  v10 = corner->var0[2] + a5->var0[2];
  v8 = v9.f32[screen];
  if (v8 > v9.f32[a] && v8 > v9.f32[b])
  {
    std::vector<Vec3f>::push_back[abi:ne200100](samples, &v9);
  }
}

+ (void)setInitialSamples:(void *)samples autokeySetupUtil:(id)util sampleBoxHalfDim:(float)dim
{
  getSamplesNb = [util getSamplesNb];
  getInitialSamples = [util getInitialSamples];
  if (getSamplesNb < 1)
  {
    v12 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v10 = 0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = 0.0;
      v14 = 0.0;
      if (util)
      {
        [util getInitialSample:v10 usingArray:{getInitialSamples, 0.0, 0.0}];
        v14 = v30;
        v13 = v31;
      }

      v12 = v12 + v14;
      v11 = v11 + v13;
      v10 = (v10 + 1);
    }

    while (getSamplesNb != v10);
  }

  v29 = -dim;
  v30 = -dim;
  if (v12 >= v11)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  if (v12 < v11)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v31 = -dim;
  v28[0] = -dim;
  v28[1] = -dim;
  v28[2] = dim;
  v27[0] = -dim;
  v27[1] = dim;
  v27[2] = -dim;
  v26[0] = -dim;
  v26[1] = dim;
  v26[2] = dim;
  *v25 = dim;
  *&v25[1] = -dim;
  *&v25[2] = -dim;
  *v24 = dim;
  *&v24[1] = -dim;
  *&v24[2] = dim;
  *v23 = dim;
  *&v23[1] = dim;
  *&v23[2] = -dim;
  *v22 = dim;
  *&v22[1] = dim;
  *&v22[2] = dim;
  if (getSamplesNb >= 1)
  {
    v17 = 0;
    do
    {
      if (util)
      {
        [util getInitialSample:v17 usingArray:getInitialSamples];
        v18 = *&v20;
      }

      else
      {
        v21 = 0;
        v20 = 0;
        v18 = 0.0;
      }

      v19 = *(&v20 + v15);
      if (v19 > v18 && v19 > *(&v20 + v16))
      {
        [PAEKeyerInitialize addCorner:&v20 toSamples:samples corner:&v29 clrScreen:v15 clrA:0 clrB:v16];
        [PAEKeyerInitialize addCorner:&v20 toSamples:samples corner:v28 clrScreen:v15 clrA:0 clrB:v16];
        [PAEKeyerInitialize addCorner:&v20 toSamples:samples corner:v27 clrScreen:v15 clrA:0 clrB:v16];
        [PAEKeyerInitialize addCorner:&v20 toSamples:samples corner:v26 clrScreen:v15 clrA:0 clrB:v16];
        [PAEKeyerInitialize addCorner:&v20 toSamples:samples corner:v25 clrScreen:v15 clrA:0 clrB:v16];
        [PAEKeyerInitialize addCorner:&v20 toSamples:samples corner:v24 clrScreen:v15 clrA:0 clrB:v16];
        [PAEKeyerInitialize addCorner:&v20 toSamples:samples corner:v23 clrScreen:v15 clrA:0 clrB:v16];
        [PAEKeyerInitialize addCorner:&v20 toSamples:samples corner:v22 clrScreen:v15 clrA:0 clrB:v16];
      }

      v17 = (v17 + 1);
    }

    while (getSamplesNb != v17);
  }
}

- (void)calculateInitialSamples:(void *)samples percentageOfBaseColorIncluded:(float)included use32x32x32:(BOOL)use32x32x32 autokeySetupUtil:(id)util samples:(void *)a7 scale:(float)scale
{
  v30 = *&scale;
  use32x32x32Copy = use32x32x32;
  __p = 0;
  v34 = 0;
  v35 = 0;
  if (included != 0.0)
  {
    if ([(PAEKeyer *)self->_keyer is3DHistoExpandedForHDR])
    {
      ColorHisto::calculateCenterSamplesHDR(samples, &__p, included);
    }

    else
    {
      ColorHisto::calculateCenterSamples(samples, &__p, included);
    }
  }

  v29 = a7;
  v15 = __p;
  v14 = v34;
  if (use32x32x32Copy)
  {
    v16 = 0.015625;
  }

  else
  {
    v16 = 0.0078125;
  }

  [util clearInitialSamples];
  v17 = v14 - v15;
  if (((v14 - v15) >> 2) >= 1)
  {
    v18 = 0;
    v19 = (v17 >> 2) & 0x7FFFFFFF;
    v20 = !use32x32x32Copy;
    if (use32x32x32Copy)
    {
      v21 = 7;
    }

    else
    {
      v21 = 10;
    }

    if (v20)
    {
      v22 = -4;
    }

    else
    {
      v22 = -8;
    }

    if (v20)
    {
      v23 = 252;
    }

    else
    {
      v23 = 248;
    }

    if (v20)
    {
      v24 = 2;
    }

    else
    {
      v24 = 4;
    }

    if (v20)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v20)
    {
      v26 = 2;
    }

    else
    {
      v26 = 3;
    }

    do
    {
      v27 = *(__p + v18);
      v31.f32[0] = ((v27 >> v21) & v22 | v24) / 255.0;
      v31.f32[1] = ((v27 >> v25) & v23 | v24) / 255.0;
      v32 = ((v27 << v26) & v23 | v24) / 255.0;
      if ([(PAEKeyer *)self->_keyer is3DHistoExpandedForHDR])
      {
        v31 = vmul_n_f32(v31, *&v30);
        v32 = v32 * *&v30;
      }

      [util addInitialSample:&v31];
      ++v18;
    }

    while (v19 != v18);
  }

  HIDWORD(v28) = HIDWORD(v30);
  *&v28 = v16 * *&v30;
  [PAEKeyerInitialize setInitialSamples:v29 autokeySetupUtil:util sampleBoxHalfDim:v28];
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }
}

- (BOOL)calculateInitialMatteWithInfo:(id *)info omSamples:(void *)samples colorPrimaries:(int)primaries screenColor:(int *)color minGreenHueAngle:(float)angle maxGreenHueAngle:(float)hueAngle greenChroma:(float)chroma minBlueHueAngle:(float)self0 maxBlueHueAngle:(float)self1 blueChroma:(float)self2 histoPercentageIncluded:(float)self3 use32x32x32:(BOOL)self4 simpleKey:(BOOL)self5
{
  if ([(PAEKeyer *)self->_keyer is3DHistoExpandedForHDR])
  {
    v15 = 10.532;
  }

  else
  {
    v15 = 1.0;
  }

  v16 = HGObject::operator new(0x1C0uLL);
  HGColorClamp::HGColorClamp(v16, 0.0, v15);
}

- (BOOL)findSampleRectsWithInfo:(id *)info screenColor:(int *)color colorPrimaries:(int)primaries width:(int)width height:(int)height minGreenHueAngle:(float)angle maxGreenHueAngle:(float)hueAngle greenChroma:(float)self0 minBlueHueAngle:(float)self1 maxBlueHueAngle:(float)self2 blueChroma:(float)self3 histoPercentageIncluded:(float)self4 omSamples:(void *)self5 viewingSetupMatte:(BOOL)self6 use32x32Histogram:(BOOL)self7 simpleKey:(BOOL)self8
{
  v19 = *&info->var2;
  v24 = *&info->var0.var0;
  v25 = v19;
  var4 = info->var4;
  if (!samples)
  {
    operator new();
  }

  v21[0] = v24;
  v21[1] = v25;
  v22 = var4;
  v23 = 3;
  return [(PAEKeyerInitialize *)self calculateInitialMatteWithInfo:v21 omSamples:samples colorPrimaries:*&primaries screenColor:color minGreenHueAngle:histogram maxGreenHueAngle:key greenChroma:COERCE_DOUBLE(__PAIR64__(DWORD1(v24) minBlueHueAngle:LODWORD(angle))) maxBlueHueAngle:COERCE_DOUBLE(__PAIR64__(DWORD1(v25) blueChroma:LODWORD(hueAngle))) histoPercentageIncluded:*&chroma use32x32x32:*&blueHueAngle simpleKey:*&maxBlueHueAngle, *&blueChroma, *&included];
}

@end