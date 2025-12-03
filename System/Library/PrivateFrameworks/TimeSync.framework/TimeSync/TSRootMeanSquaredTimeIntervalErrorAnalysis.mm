@interface TSRootMeanSquaredTimeIntervalErrorAnalysis
- (BOOL)exportAnalysisToDirectoryURL:(id)l withFilename:(id)filename fromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize;
- (NSArray)rmstie;
- (TSRootMeanSquaredTimeIntervalErrorAnalysis)initWithTimeErrorValues:(id)values;
- (id)rmstieFromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize;
- (void)_performAnalysisFromWindowSize:(int64_t)size toWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize;
- (void)dealloc;
@end

@implementation TSRootMeanSquaredTimeIntervalErrorAnalysis

- (TSRootMeanSquaredTimeIntervalErrorAnalysis)initWithTimeErrorValues:(id)values
{
  v7.receiver = self;
  v7.super_class = TSRootMeanSquaredTimeIntervalErrorAnalysis;
  v3 = [(TSTimeErrorAnalysis *)&v7 initWithTimeErrorValues:values];
  v4 = v3;
  if (v3)
  {
    v5 = malloc_type_calloc([(TSTimeErrorAnalysis *)v3 numberOfErrors], 8uLL, 0x100004000313F17uLL);
    v4->_rmstie = v5;
    if (!v5)
    {

      return 0;
    }
  }

  return v4;
}

- (void)_performAnalysisFromWindowSize:(int64_t)size toWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize
{
  numberOfErrors = [(TSTimeErrorAnalysis *)self numberOfErrors];
  timeErrors = [(TSTimeErrorAnalysis *)self timeErrors];
  v11 = malloc_type_malloc(8 * numberOfErrors, 0x100004000313F17uLL);
  if (v11 && size <= windowSize)
  {
    v12 = numberOfErrors - size;
    v13 = &timeErrors[size];
    do
    {
      __C = 0.0;
      vDSP_vsubD(timeErrors, 1, v13, 1, v11, 1, v12);
      vDSP_svesqD(v11, 1, &__C, v12);
      self->_rmstie[size] = sqrt(__C / v12);
      size += stepSize;
      v13 += stepSize;
      v12 -= stepSize;
    }

    while (size <= windowSize);
  }

  free(v11);
}

- (NSArray)rmstie
{
  array = [MEMORY[0x277CBEB18] array];
  if (![(TSTimeErrorAnalysis *)self calculated])
  {
    [(TSTimeErrorAnalysis *)self performAnalysis];
  }

  for (i = [(TSTimeErrorAnalysis *)self lowestWindowSize]; i <= [(TSTimeErrorAnalysis *)self highestWindowSize]; i += [(TSTimeErrorAnalysis *)self calculatedStepSize])
  {
    v5 = [TSRMSTIEValue alloc];
    [(TSTimeErrorAnalysis *)self averagePeriod];
    v7 = [(TSRMSTIEValue *)v5 initWithObservationInterval:v6 * i andRMSTIE:self->_rmstie[i]];
    [array addObject:v7];
  }

  return array;
}

- (id)rmstieFromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize
{
  array = [MEMORY[0x277CBEB18] array];
  if (size <= 2)
  {
    size = 2;
  }

  if ([(TSTimeErrorAnalysis *)self analysisLimit]< windowSize)
  {
    windowSize = [(TSTimeErrorAnalysis *)self analysisLimit];
  }

  if (![(TSTimeErrorAnalysis *)self calculated])
  {
    selfCopy2 = self;
    sizeCopy = size;
    windowSizeCopy2 = windowSize;
LABEL_15:
    [(TSTimeErrorAnalysis *)selfCopy2 performAnalysisFromStartWindowSize:sizeCopy toEndWindowSize:windowSizeCopy2 stepSize:stepSize];
    goto LABEL_16;
  }

  if (size < [(TSTimeErrorAnalysis *)self lowestWindowSize]|| windowSize > [(TSTimeErrorAnalysis *)self highestWindowSize]|| [(TSTimeErrorAnalysis *)self calculatedStepSize]!= stepSize)
  {
    sizeCopy2 = size;
    if (size >= [(TSTimeErrorAnalysis *)self lowestWindowSize])
    {
      sizeCopy2 = [(TSTimeErrorAnalysis *)self lowestWindowSize];
    }

    highestWindowSize = [(TSTimeErrorAnalysis *)self highestWindowSize];
    windowSizeCopy2 = windowSize;
    if (windowSize <= highestWindowSize)
    {
      windowSizeCopy2 = [(TSTimeErrorAnalysis *)self highestWindowSize];
    }

    selfCopy2 = self;
    sizeCopy = sizeCopy2;
    goto LABEL_15;
  }

LABEL_16:
  while (size <= windowSize)
  {
    v15 = [TSRMSTIEValue alloc];
    [(TSTimeErrorAnalysis *)self averagePeriod];
    v17 = [(TSRMSTIEValue *)v15 initWithObservationInterval:v16 * size andRMSTIE:self->_rmstie[size]];
    [array addObject:v17];

    size += stepSize;
  }

  return array;
}

- (BOOL)exportAnalysisToDirectoryURL:(id)l withFilename:(id)filename fromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize
{
  lCopy = l;
  filenameCopy = filename;
  if ([lCopy isFileURL])
  {
    if (size <= 2)
    {
      size = 2;
    }

    if ([(TSTimeErrorAnalysis *)self analysisLimit]< windowSize)
    {
      windowSize = [(TSTimeErrorAnalysis *)self analysisLimit];
    }

    if (![(TSTimeErrorAnalysis *)self calculated]|| size < [(TSTimeErrorAnalysis *)self lowestWindowSize]|| windowSize > [(TSTimeErrorAnalysis *)self highestWindowSize]|| [(TSTimeErrorAnalysis *)self calculatedStepSize]!= stepSize)
    {
      [(TSTimeErrorAnalysis *)self performAnalysisFromStartWindowSize:size toEndWindowSize:windowSize stepSize:stepSize];
    }

    path = [lCopy path];
    v15 = [path stringByAppendingPathComponent:filenameCopy];

    v16 = fopen([v15 UTF8String], "w");
    v17 = v16 != 0;
    if (v16)
    {
      v18 = v16;
      fwrite("window size,observation interval,rmstie\n", 0x28uLL, 1uLL, v16);
      for (; size < windowSize; size += stepSize)
      {
        [(TSTimeErrorAnalysis *)self averagePeriod];
        fprintf(v18, "%ld,%.9f,%.18f\n", size, v19 * size / 1000000000.0, self->_rmstie[size]);
      }

      fclose(v18);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)dealloc
{
  free(self->_rmstie);
  v3.receiver = self;
  v3.super_class = TSRootMeanSquaredTimeIntervalErrorAnalysis;
  [(TSTimeErrorAnalysis *)&v3 dealloc];
}

@end