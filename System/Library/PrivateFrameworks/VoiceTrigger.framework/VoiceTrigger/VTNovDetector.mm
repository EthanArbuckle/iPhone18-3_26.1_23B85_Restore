@interface VTNovDetector
- (VTNovDetector)initWithConfigPath:(id)a3 resourcePath:(id)a4;
- (id)_getAnalyzedResultFromNdresult:(_ndresult *)a3;
- (id)getAnalyzedResultForPhId:(unsigned int)a3;
- (id)getBestAnalyzedResult;
- (id)getOptionValue:(id)a3;
- (id)getSuperVectorWithEndPoint:(unint64_t)a3;
- (void)analyzeWavData:(id)a3 numSamples:(unint64_t)a4;
- (void)analyzeWavFloatData:(id)a3 numSamples:(unint64_t)a4;
- (void)dealloc;
@end

@implementation VTNovDetector

- (id)getOptionValue:(id)a3
{
  v5 = 0;
  if (a3)
  {
    novDetect = self->_novDetect;
    if (novDetect)
    {
      v5 = nd_getoption(novDetect, [a3 UTF8String]);
      if (v5)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
      }
    }

    v3 = vars8;
  }

  return v5;
}

- (id)getSuperVectorWithEndPoint:(unint64_t)a3
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    novDetect = nd_getsupervector(novDetect, a3, v4);
    if (novDetect)
    {
      novDetect = [MEMORY[0x277CBEA90] dataWithBytes:*novDetect length:4 * novDetect[2]];
    }

    v3 = vars8;
  }

  return novDetect;
}

- (id)_getAnalyzedResultFromNdresult:(_ndresult *)a3
{
  if (a3)
  {
    v4 = objc_alloc_init(VTNovDetectorResult);
    [(VTNovDetectorResult *)v4 setSampleFed:a3->var0];
    [(VTNovDetectorResult *)v4 setBestPhrase:a3->var3];
    [(VTNovDetectorResult *)v4 setBestStart:a3->var1];
    [(VTNovDetectorResult *)v4 setBestEnd:a3->var2];
    *&v5 = a3->var4;
    [(VTNovDetectorResult *)v4 setBestScore:v5];
    [(VTNovDetectorResult *)v4 setEarlyWarning:a3->var5];
    [(VTNovDetectorResult *)v4 setIsRescoring:a3->var6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getBestAnalyzedResult
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    novDetect = [(VTNovDetector *)self _getAnalyzedResultFromNdresult:nd_getresults(novDetect, a2)];
  }

  return novDetect;
}

- (id)getAnalyzedResultForPhId:(unsigned int)a3
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    v5 = *&a3;
    v7 = nd_phrasecount(novDetect, a2);
    v8 = self->_novDetect;
    if (v7 < 1)
    {
      v9 = nd_getresults(v8, v6);
    }

    else
    {
      v9 = nd_getphraseresults(v8, v5);
    }

    novDetect = [(VTNovDetector *)self _getAnalyzedResultFromNdresult:v9];
  }

  return novDetect;
}

- (void)analyzeWavFloatData:(id)a3 numSamples:(unint64_t)a4
{
  v4 = a4;
  novDetect = self->_novDetect;
  v7 = a3;
  v8 = [a3 bytes];

  nd_wavedataf(novDetect, v8, v4);
}

- (void)analyzeWavData:(id)a3 numSamples:(unint64_t)a4
{
  v4 = a4;
  novDetect = self->_novDetect;
  v7 = a3;
  v8 = [a3 bytes];

  nd_wavedata(novDetect, v8, v4);
}

- (void)dealloc
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    IntNovDetect::~IntNovDetect(novDetect);
    MEMORY[0x223DF1D20]();
    self->_novDetect = 0;
  }

  v4.receiver = self;
  v4.super_class = VTNovDetector;
  [(VTNovDetector *)&v4 dealloc];
}

- (VTNovDetector)initWithConfigPath:(id)a3 resourcePath:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = VTNovDetector;
  if ([(VTNovDetector *)&v10 init])
  {
    if ((initndlib(void)::bNDLibInitialized & 1) == 0)
    {
      initndlib(void)::bNDLibInitialized = 1;
    }

    operator new();
  }

  v8 = 0;

  return v8;
}

@end