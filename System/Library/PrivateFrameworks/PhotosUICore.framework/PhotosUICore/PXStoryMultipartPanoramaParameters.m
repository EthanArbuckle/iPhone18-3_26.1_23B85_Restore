@interface PXStoryMultipartPanoramaParameters
- ($7566BBA16C4E03ED15B4F2B623931C37)partDurationInfo;
- ($866B42654C4E0A70DB412B2E3EB7CC63)normalizedKenBurnsEffectParameters;
- ($D23540E3B197441F7781E3353E3BC035)transitionInfo;
- (PXStoryMultipartPanoramaParameters)init;
- (PXStoryMultipartPanoramaParameters)initWithNormalizedKenBurnsEffectParameters:(id *)a3 partDurationInfo:(id *)a4 transitionInfo:(id *)a5;
@end

@implementation PXStoryMultipartPanoramaParameters

- ($D23540E3B197441F7781E3353E3BC035)transitionInfo
{
  v3 = *&self->var2.var3;
  *&retstr->var0 = *&self->var2.var0;
  *&retstr->var2.var1 = v3;
  *&retstr->var3 = self->var5.var0;
  return self;
}

- ($7566BBA16C4E03ED15B4F2B623931C37)partDurationInfo
{
  v3 = *&self[2].var0.var0;
  *&retstr->var2.var3 = *&self[1].var3.var1;
  *&retstr->var3.var0.var1 = v3;
  *&retstr->var3.var1 = *&self[2].var0.var3;
  v4 = *&self[1].var2.var0;
  *&retstr->var0.var0 = *&self[1].var1.var1;
  *&retstr->var0.var3 = v4;
  v5 = *&self[1].var3.var0.var1;
  *&retstr->var1.var1 = *&self[1].var2.var3;
  *&retstr->var2.var0 = v5;
  return self;
}

- ($866B42654C4E0A70DB412B2E3EB7CC63)normalizedKenBurnsEffectParameters
{
  v3 = *&self[1].var0.var0.a;
  *&retstr->var0.var0.tx = *&self->var1.var0.tx;
  *&retstr->var1.var0.a = v3;
  v4 = *&self[1].var0.var0.tx;
  *&retstr->var1.var0.c = *&self[1].var0.var0.c;
  *&retstr->var1.var0.tx = v4;
  v5 = *&self->var1.var0.c;
  *&retstr->var0.var0.a = *&self->var1.var0.a;
  *&retstr->var0.var0.c = v5;
  return self;
}

- (PXStoryMultipartPanoramaParameters)initWithNormalizedKenBurnsEffectParameters:(id *)a3 partDurationInfo:(id *)a4 transitionInfo:(id *)a5
{
  v20.receiver = self;
  v20.super_class = PXStoryMultipartPanoramaParameters;
  result = [(PXStoryMultipartPanoramaParameters *)&v20 init];
  if (result)
  {
    v9 = *&a3->var0.var0.c;
    *&result->_transitionInfo.var1.scaleRelativeFactor = *&a3->var0.var0.a;
    *&result->_normalizedKenBurnsEffectParameters.s.t.b = v9;
    v10 = *&a3->var0.var0.tx;
    v11 = *&a3->var1.var0.a;
    v12 = *&a3->var1.var0.tx;
    *&result->_normalizedKenBurnsEffectParameters.t.t.b = *&a3->var1.var0.c;
    *&result->_normalizedKenBurnsEffectParameters.t.t.d = v12;
    *&result->_normalizedKenBurnsEffectParameters.s.t.d = v10;
    *&result->_normalizedKenBurnsEffectParameters.s.t.ty = v11;
    v13 = *&a4->var3.var1;
    v15 = *&a4->var2.var0;
    v14 = *&a4->var2.var3;
    *&result->_partDurationInfo.preferredCue.time.value = *&a4->var3.var0.var1;
    *&result->_partDurationInfo.preferredCue.time.epoch = v13;
    *&result->_partDurationInfo.preferredDuration.epoch = v15;
    *&result->_partDurationInfo.maximumDuration.timescale = v14;
    v16 = *&a4->var0.var0;
    v17 = *&a4->var1.var1;
    *&result->_partDurationInfo.minimumDuration.timescale = *&a4->var0.var3;
    *&result->_partDurationInfo.preferredDuration.value = v17;
    *&result->_normalizedKenBurnsEffectParameters.t.t.ty = v16;
    v18 = *&a5->var0;
    v19 = *&a5->var2.var1;
    *&result->_transitionInfo.fallbackFromTransitionKind = *&a5->var3;
    *&result->_transitionInfo.duration.timescale = v19;
    *&result->_transitionInfo.orderOutTransition = v18;
  }

  return result;
}

- (PXStoryMultipartPanoramaParameters)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryMultipartPanoramaParameters.m" lineNumber:17 description:{@"%s is not available as initializer", "-[PXStoryMultipartPanoramaParameters init]"}];

  abort();
}

@end