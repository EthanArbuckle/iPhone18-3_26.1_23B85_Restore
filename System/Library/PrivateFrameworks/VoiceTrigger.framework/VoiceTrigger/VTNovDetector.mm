@interface VTNovDetector
- (VTNovDetector)initWithConfigPath:(id)path resourcePath:(id)resourcePath;
- (id)_getAnalyzedResultFromNdresult:(_ndresult *)ndresult;
- (id)getAnalyzedResultForPhId:(unsigned int)id;
- (id)getBestAnalyzedResult;
- (id)getOptionValue:(id)value;
- (id)getSuperVectorWithEndPoint:(unint64_t)point;
- (void)analyzeWavData:(id)data numSamples:(unint64_t)samples;
- (void)analyzeWavFloatData:(id)data numSamples:(unint64_t)samples;
- (void)dealloc;
@end

@implementation VTNovDetector

- (id)getOptionValue:(id)value
{
  v5 = 0;
  if (value)
  {
    novDetect = self->_novDetect;
    if (novDetect)
    {
      v5 = nd_getoption(novDetect, [value UTF8String]);
      if (v5)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
      }
    }

    v3 = vars8;
  }

  return v5;
}

- (id)getSuperVectorWithEndPoint:(unint64_t)point
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    novDetect = nd_getsupervector(novDetect, point, v4);
    if (novDetect)
    {
      novDetect = [MEMORY[0x277CBEA90] dataWithBytes:*novDetect length:4 * novDetect[2]];
    }

    v3 = vars8;
  }

  return novDetect;
}

- (id)_getAnalyzedResultFromNdresult:(_ndresult *)ndresult
{
  if (ndresult)
  {
    v4 = objc_alloc_init(VTNovDetectorResult);
    [(VTNovDetectorResult *)v4 setSampleFed:ndresult->var0];
    [(VTNovDetectorResult *)v4 setBestPhrase:ndresult->var3];
    [(VTNovDetectorResult *)v4 setBestStart:ndresult->var1];
    [(VTNovDetectorResult *)v4 setBestEnd:ndresult->var2];
    *&v5 = ndresult->var4;
    [(VTNovDetectorResult *)v4 setBestScore:v5];
    [(VTNovDetectorResult *)v4 setEarlyWarning:ndresult->var5];
    [(VTNovDetectorResult *)v4 setIsRescoring:ndresult->var6];
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

- (id)getAnalyzedResultForPhId:(unsigned int)id
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    v5 = *&id;
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

- (void)analyzeWavFloatData:(id)data numSamples:(unint64_t)samples
{
  samplesCopy = samples;
  novDetect = self->_novDetect;
  dataCopy = data;
  bytes = [data bytes];

  nd_wavedataf(novDetect, bytes, samplesCopy);
}

- (void)analyzeWavData:(id)data numSamples:(unint64_t)samples
{
  samplesCopy = samples;
  novDetect = self->_novDetect;
  dataCopy = data;
  bytes = [data bytes];

  nd_wavedata(novDetect, bytes, samplesCopy);
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

- (VTNovDetector)initWithConfigPath:(id)path resourcePath:(id)resourcePath
{
  v11 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  resourcePathCopy = resourcePath;
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