@interface PAEKeyerInitialize
+ (void)addCorner:(const Vec3f *)a3 toSamples:(void *)a4 corner:(const Vec3f *)a5 clrScreen:(int)a6 clrA:(int)a7 clrB:(int)a8;
+ (void)setInitialSamples:(void *)a3 autokeySetupUtil:(id)a4 sampleBoxHalfDim:(float)a5;
- (BOOL)calculateInitialMatteWithInfo:(id *)a3 omSamples:(void *)a4 colorPrimaries:(int)a5 screenColor:(int *)a6 minGreenHueAngle:(float)a7 maxGreenHueAngle:(float)a8 greenChroma:(float)a9 minBlueHueAngle:(float)a10 maxBlueHueAngle:(float)a11 blueChroma:(float)a12 histoPercentageIncluded:(float)a13 use32x32x32:(BOOL)a14 simpleKey:(BOOL)a15;
- (BOOL)findSampleRectsWithInfo:(id *)a3 screenColor:(int *)a4 colorPrimaries:(int)a5 width:(int)a6 height:(int)a7 minGreenHueAngle:(float)a8 maxGreenHueAngle:(float)a9 greenChroma:(float)a10 minBlueHueAngle:(float)a11 maxBlueHueAngle:(float)a12 blueChroma:(float)a13 histoPercentageIncluded:(float)a14 omSamples:(void *)a15 viewingSetupMatte:(BOOL)a16 use32x32Histogram:(BOOL)a17 simpleKey:(BOOL)a18;
- (PAEKeyerInitialize)initWithAPIManager:(id)a3 keyer:(id)a4;
- (void)calculateInitialSamples:(void *)a3 percentageOfBaseColorIncluded:(float)a4 use32x32x32:(BOOL)a5 autokeySetupUtil:(id)a6 samples:(void *)a7 scale:(float)a8;
- (void)dealloc;
@end

@implementation PAEKeyerInitialize

- (PAEKeyerInitialize)initWithAPIManager:(id)a3 keyer:(id)a4
{
  v10.receiver = self;
  v10.super_class = PAEKeyerInitialize;
  v6 = [(PAEKeyerInitialize *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_apiManager = a3;
    v8 = a4;
    v7->_keyer = a4;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PAEKeyerInitialize;
  [(PAEKeyerInitialize *)&v3 dealloc];
}

+ (void)addCorner:(const Vec3f *)a3 toSamples:(void *)a4 corner:(const Vec3f *)a5 clrScreen:(int)a6 clrA:(int)a7 clrB:(int)a8
{
  v9 = vadd_f32(*a3->var0, *a5->var0);
  v10 = a3->var0[2] + a5->var0[2];
  v8 = v9.f32[a6];
  if (v8 > v9.f32[a7] && v8 > v9.f32[a8])
  {
    std::vector<Vec3f>::push_back[abi:ne200100](a4, &v9);
  }
}

+ (void)setInitialSamples:(void *)a3 autokeySetupUtil:(id)a4 sampleBoxHalfDim:(float)a5
{
  v8 = [a4 getSamplesNb];
  v9 = [a4 getInitialSamples];
  if (v8 < 1)
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
      if (a4)
      {
        [a4 getInitialSample:v10 usingArray:{v9, 0.0, 0.0}];
        v14 = v30;
        v13 = v31;
      }

      v12 = v12 + v14;
      v11 = v11 + v13;
      v10 = (v10 + 1);
    }

    while (v8 != v10);
  }

  v29 = -a5;
  v30 = -a5;
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

  v31 = -a5;
  v28[0] = -a5;
  v28[1] = -a5;
  v28[2] = a5;
  v27[0] = -a5;
  v27[1] = a5;
  v27[2] = -a5;
  v26[0] = -a5;
  v26[1] = a5;
  v26[2] = a5;
  *v25 = a5;
  *&v25[1] = -a5;
  *&v25[2] = -a5;
  *v24 = a5;
  *&v24[1] = -a5;
  *&v24[2] = a5;
  *v23 = a5;
  *&v23[1] = a5;
  *&v23[2] = -a5;
  *v22 = a5;
  *&v22[1] = a5;
  *&v22[2] = a5;
  if (v8 >= 1)
  {
    v17 = 0;
    do
    {
      if (a4)
      {
        [a4 getInitialSample:v17 usingArray:v9];
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
        [PAEKeyerInitialize addCorner:&v20 toSamples:a3 corner:&v29 clrScreen:v15 clrA:0 clrB:v16];
        [PAEKeyerInitialize addCorner:&v20 toSamples:a3 corner:v28 clrScreen:v15 clrA:0 clrB:v16];
        [PAEKeyerInitialize addCorner:&v20 toSamples:a3 corner:v27 clrScreen:v15 clrA:0 clrB:v16];
        [PAEKeyerInitialize addCorner:&v20 toSamples:a3 corner:v26 clrScreen:v15 clrA:0 clrB:v16];
        [PAEKeyerInitialize addCorner:&v20 toSamples:a3 corner:v25 clrScreen:v15 clrA:0 clrB:v16];
        [PAEKeyerInitialize addCorner:&v20 toSamples:a3 corner:v24 clrScreen:v15 clrA:0 clrB:v16];
        [PAEKeyerInitialize addCorner:&v20 toSamples:a3 corner:v23 clrScreen:v15 clrA:0 clrB:v16];
        [PAEKeyerInitialize addCorner:&v20 toSamples:a3 corner:v22 clrScreen:v15 clrA:0 clrB:v16];
      }

      v17 = (v17 + 1);
    }

    while (v8 != v17);
  }
}

- (void)calculateInitialSamples:(void *)a3 percentageOfBaseColorIncluded:(float)a4 use32x32x32:(BOOL)a5 autokeySetupUtil:(id)a6 samples:(void *)a7 scale:(float)a8
{
  v30 = *&a8;
  v10 = a5;
  __p = 0;
  v34 = 0;
  v35 = 0;
  if (a4 != 0.0)
  {
    if ([(PAEKeyer *)self->_keyer is3DHistoExpandedForHDR])
    {
      ColorHisto::calculateCenterSamplesHDR(a3, &__p, a4);
    }

    else
    {
      ColorHisto::calculateCenterSamples(a3, &__p, a4);
    }
  }

  v29 = a7;
  v15 = __p;
  v14 = v34;
  if (v10)
  {
    v16 = 0.015625;
  }

  else
  {
    v16 = 0.0078125;
  }

  [a6 clearInitialSamples];
  v17 = v14 - v15;
  if (((v14 - v15) >> 2) >= 1)
  {
    v18 = 0;
    v19 = (v17 >> 2) & 0x7FFFFFFF;
    v20 = !v10;
    if (v10)
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

      [a6 addInitialSample:&v31];
      ++v18;
    }

    while (v19 != v18);
  }

  HIDWORD(v28) = HIDWORD(v30);
  *&v28 = v16 * *&v30;
  [PAEKeyerInitialize setInitialSamples:v29 autokeySetupUtil:a6 sampleBoxHalfDim:v28];
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }
}

- (BOOL)calculateInitialMatteWithInfo:(id *)a3 omSamples:(void *)a4 colorPrimaries:(int)a5 screenColor:(int *)a6 minGreenHueAngle:(float)a7 maxGreenHueAngle:(float)a8 greenChroma:(float)a9 minBlueHueAngle:(float)a10 maxBlueHueAngle:(float)a11 blueChroma:(float)a12 histoPercentageIncluded:(float)a13 use32x32x32:(BOOL)a14 simpleKey:(BOOL)a15
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

- (BOOL)findSampleRectsWithInfo:(id *)a3 screenColor:(int *)a4 colorPrimaries:(int)a5 width:(int)a6 height:(int)a7 minGreenHueAngle:(float)a8 maxGreenHueAngle:(float)a9 greenChroma:(float)a10 minBlueHueAngle:(float)a11 maxBlueHueAngle:(float)a12 blueChroma:(float)a13 histoPercentageIncluded:(float)a14 omSamples:(void *)a15 viewingSetupMatte:(BOOL)a16 use32x32Histogram:(BOOL)a17 simpleKey:(BOOL)a18
{
  v19 = *&a3->var2;
  v24 = *&a3->var0.var0;
  v25 = v19;
  var4 = a3->var4;
  if (!a15)
  {
    operator new();
  }

  v21[0] = v24;
  v21[1] = v25;
  v22 = var4;
  v23 = 3;
  return [(PAEKeyerInitialize *)self calculateInitialMatteWithInfo:v21 omSamples:a15 colorPrimaries:*&a5 screenColor:a4 minGreenHueAngle:a17 maxGreenHueAngle:a18 greenChroma:COERCE_DOUBLE(__PAIR64__(DWORD1(v24) minBlueHueAngle:LODWORD(a8))) maxBlueHueAngle:COERCE_DOUBLE(__PAIR64__(DWORD1(v25) blueChroma:LODWORD(a9))) histoPercentageIncluded:*&a10 use32x32x32:*&a11 simpleKey:*&a12, *&a13, *&a14];
}

@end