@interface PAEKeyerAutokeySetupUtil
- (PAEKeyerAutokeySetupUtil)initWithAPIManager:(id)a3;
- (Vec3f)getInitialSample:(int)a3;
- (Vec3f)getInitialSample:(int)a3 usingArray:(id)a4;
- (void)addInitialSample:(Vec3f *)a3;
- (void)clearInitialSamples;
- (void)dealloc;
- (void)delInitialSample:(int)a3;
- (void)fillAutokeySamplesArray:(void *)a3;
- (void)getDataFromDB;
- (void)syncWithDB;
- (void)syncWithDBAsDefault;
@end

@implementation PAEKeyerAutokeySetupUtil

- (void)getDataFromDB
{
  v3 = [self->_apiManager apiForProtocol:&unk_28735E258];
  if (v3)
  {
    v4 = v3;
    v13 = 0;
    [v3 getCustomParameterValue:&v13 fromParm:4 atFxTime:getFxTimeZero()];
    v5 = v13;

    v6 = objc_alloc_init(PAEKeyerAutokeySetup);
    v7 = [objc_msgSend(v13 "initialSamples")];
    [(PAEKeyerAutokeySetup *)v6 setInitialSamples:v7];

    v11 = *MEMORY[0x277CC08F0];
    v12 = *(MEMORY[0x277CC08F0] + 16);
    v10 = 0;
    [v4 getCustomParameterValue:&v10 fromParm:9 atFxTime:&v11];
    v8 = v10;

    v9 = v10;
    self->_autokeySetup = v6;
    self->_keyerHistogram = v9;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PAEKeyerAutokeySetupUtil;
  [(PAEKeyerAutokeySetupUtil *)&v3 dealloc];
}

- (PAEKeyerAutokeySetupUtil)initWithAPIManager:(id)a3
{
  v7.receiver = self;
  v7.super_class = PAEKeyerAutokeySetupUtil;
  v4 = [(PAEKeyerAutokeySetupUtil *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_apiManager = a3;
    [(PAEKeyerAutokeySetupUtil *)v4 getDataFromDB];
  }

  return v5;
}

- (void)syncWithDB
{
  v3 = [self->_apiManager apiForProtocol:&unk_28735E448];
  if (v3 && self->_autokeySetup)
  {
    v4 = v3;
    v5 = objc_alloc_init(PAEKeyerAutokeySetup);
    v6 = [-[PAEKeyerAutokeySetupUtil getInitialSamples](self "getInitialSamples")];
    [(PAEKeyerAutokeySetup *)v5 setInitialSamples:v6];

    keyerHistogram = self->_keyerHistogram;
    if (keyerHistogram)
    {
      v8 = *MEMORY[0x277CC08F0];
      v9 = *(MEMORY[0x277CC08F0] + 16);
      [v4 setCustomParameterValue:keyerHistogram toParm:9 atFxTime:&v8];
    }

    [v4 setCustomParameterValue:v5 toParm:4 atFxTime:getFxTimeZero()];
  }
}

- (void)syncWithDBAsDefault
{
  v3 = [self->_apiManager apiForProtocol:&unk_28735C660];
  if (v3 && self->_autokeySetup)
  {
    v4 = v3;
    v5 = objc_alloc_init(PAEKeyerAutokeySetup);
    v6 = [-[PAEKeyerAutokeySetupUtil getInitialSamples](self "getInitialSamples")];
    [(PAEKeyerAutokeySetup *)v5 setInitialSamples:v6];

    keyerHistogram = self->_keyerHistogram;
    if (keyerHistogram)
    {
      [v4 setCustomParameterDefaultValue:keyerHistogram parmId:9];
    }

    [v4 setCustomParameterDefaultValue:v5 parmId:4];
  }
}

- (Vec3f)getInitialSample:(int)a3
{
  v4 = v3;
  v5 = 3 * a3;
  v6 = [(PAEKeyerAutokeySetupUtil *)self getInitialSamples];
  [objc_msgSend(v6 objectAtIndex:{v5), "floatValue"}];
  v8 = v7;
  [objc_msgSend(v6 objectAtIndex:{v5 + 1), "floatValue"}];
  v10 = v9;
  [objc_msgSend(v6 objectAtIndex:{v5 + 2), "floatValue"}];
  *v4 = v8;
  *(v4 + 4) = v10;
  *(v4 + 8) = v11;
  result.var0[2] = v13;
  result.var0[1] = v12;
  result.var0[0] = v11;
  return result;
}

- (Vec3f)getInitialSample:(int)a3 usingArray:(id)a4
{
  v6 = v4;
  v7 = 3 * a3;
  [objc_msgSend(a4 objectAtIndex:{3 * a3), "floatValue"}];
  v9 = v8;
  [objc_msgSend(a4 objectAtIndex:{v7 + 1), "floatValue"}];
  v11 = v10;
  [objc_msgSend(a4 objectAtIndex:{v7 + 2), "floatValue"}];
  *v6 = v9;
  *(v6 + 4) = v11;
  *(v6 + 8) = v12;
  result.var0[2] = v14;
  result.var0[1] = v13;
  result.var0[0] = v12;
  return result;
}

- (void)delInitialSample:(int)a3
{
  v4 = 3 * a3;
  v5 = [MEMORY[0x277CCAB58] indexSetWithIndex:v4];
  v6 = v4 + 1;
  v7 = 2;
  do
  {
    [v5 addIndex:v6++];
    --v7;
  }

  while (v7);
  v8 = [(PAEKeyerAutokeySetupUtil *)self getInitialSamples];

  [v8 removeObjectsAtIndexes:v5];
}

- (void)clearInitialSamples
{
  v2 = [(PAEKeyerAutokeySetupUtil *)self getInitialSamples];

  [v2 removeAllObjects];
}

- (void)addInitialSample:(Vec3f *)a3
{
  v4 = [(PAEKeyerAutokeySetupUtil *)self getInitialSamples];
  *&v5 = a3->var0[0];
  [v4 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v5)}];
  *&v6 = a3->var0[1];
  [v4 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v6)}];
  *&v7 = a3->var0[2];
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];

  [v4 addObject:v8];
}

- (void)fillAutokeySamplesArray:(void *)a3
{
  v5 = [(PAEKeyerAutokeySetupUtil *)self getSamplesNb];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      if (self)
      {
        [(PAEKeyerAutokeySetupUtil *)self getInitialSample:v7];
      }

      else
      {
        v9 = 0;
        v8 = 0;
      }

      std::vector<Vec3f>::push_back[abi:ne200100](a3, &v8);
      v7 = (v7 + 1);
    }

    while (v6 != v7);
  }
}

@end