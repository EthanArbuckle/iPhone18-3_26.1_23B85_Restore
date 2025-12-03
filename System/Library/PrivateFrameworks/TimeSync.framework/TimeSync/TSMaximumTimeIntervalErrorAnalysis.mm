@interface TSMaximumTimeIntervalErrorAnalysis
- (BOOL)exportAnalysisToDirectoryURL:(id)l withFilename:(id)filename fromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize;
- (NSArray)mtie;
- (TSMaximumTimeIntervalErrorAnalysis)initWithTimeErrorValues:(id)values;
- (id)mtieFromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize;
- (void)_performAnalysisFromWindowSize:(int64_t)size toWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize;
- (void)dealloc;
@end

@implementation TSMaximumTimeIntervalErrorAnalysis

- (TSMaximumTimeIntervalErrorAnalysis)initWithTimeErrorValues:(id)values
{
  v8.receiver = self;
  v8.super_class = TSMaximumTimeIntervalErrorAnalysis;
  v3 = [(TSTimeErrorAnalysis *)&v8 initWithTimeErrorValues:values];
  v4 = v3;
  if (v3)
  {
    v3->_negativeTimeErrors = malloc_type_calloc([(TSTimeErrorAnalysis *)v3 numberOfErrors], 8uLL, 0x100004000313F17uLL);
    v5 = malloc_type_calloc([(TSTimeErrorAnalysis *)v4 numberOfErrors], 8uLL, 0x100004000313F17uLL);
    v4->_mtie = v5;
    if (v5 && v4->_negativeTimeErrors)
    {
      __B = -1.0;
      vDSP_vsmulD([(TSTimeErrorAnalysis *)v4 timeErrors], 1, &__B, v4->_negativeTimeErrors, 1, [(TSTimeErrorAnalysis *)v4 numberOfErrors]);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)_performAnalysisFromWindowSize:(int64_t)size toWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize
{
  numberOfErrors = [(TSTimeErrorAnalysis *)self numberOfErrors];
  __B = -1.0;
  v10 = 8 * numberOfErrors - 1;
  v11 = malloc_type_malloc(v10, 0x100004000313F17uLL);
  v12 = malloc_type_malloc(v10, 0x100004000313F17uLL);
  v13 = malloc_type_malloc(v10, 0x100004000313F17uLL);
  timeErrors = [(TSTimeErrorAnalysis *)self timeErrors];
  if (v11)
  {
    if (v12)
    {
      if (v13)
      {
        windowSizeCopy = windowSize;
        if (size <= windowSize)
        {
          v16 = timeErrors;
          sizeCopy = size;
          v18 = numberOfErrors - size + 1;
          do
          {
            vDSP_vswmaxD(v16, 1, v11, 1, v18, size);
            vDSP_vswmaxD(self->_negativeTimeErrors, 1, v12, 1, v18, size);
            vDSP_vsmulD(v12, 1, &__B, v12, 1, v18);
            vDSP_vsubD(v12, 1, v11, 1, v13, 1, v18);
            vDSP_maxvD(v13, 1, &self->_mtie[sizeCopy], v18);
            size += stepSize;
            sizeCopy += stepSize;
            v18 -= stepSize;
          }

          while (size <= windowSizeCopy);
        }
      }
    }
  }

  free(v11);
  free(v12);
  free(v13);
}

- (NSArray)mtie
{
  array = [MEMORY[0x277CBEB18] array];
  if (![(TSTimeErrorAnalysis *)self calculated])
  {
    [(TSTimeErrorAnalysis *)self performAnalysis];
  }

  for (i = [(TSTimeErrorAnalysis *)self lowestWindowSize]; i <= [(TSTimeErrorAnalysis *)self highestWindowSize]; i += [(TSTimeErrorAnalysis *)self calculatedStepSize])
  {
    v5 = [TSMTIEValue alloc];
    [(TSTimeErrorAnalysis *)self averagePeriod];
    v7 = [(TSMTIEValue *)v5 initWithObservationInterval:v6 * i andMTIE:self->_mtie[i]];
    [array addObject:v7];
  }

  return array;
}

- (id)mtieFromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize
{
  array = [MEMORY[0x277CBEB18] array];
  if (size <= 2)
  {
    size = 2;
  }

  if ([(TSTimeErrorAnalysis *)self analysisLimit]< windowSize)
  {
    windowSize = [(TSTimeErrorAnalysis *)self analysisLimit]- 1;
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
    v15 = [TSMTIEValue alloc];
    [(TSTimeErrorAnalysis *)self averagePeriod];
    v17 = [(TSMTIEValue *)v15 initWithObservationInterval:v16 * size andMTIE:self->_mtie[size]];
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
      fwrite("window size,observation interval,mtie\n", 0x26uLL, 1uLL, v16);
      for (; size < windowSize; size += stepSize)
      {
        [(TSTimeErrorAnalysis *)self averagePeriod];
        fprintf(v18, "%ld,%.9f,%.3f\n", size, v19 * size / 1000000000.0, self->_mtie[size]);
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
  free(self->_negativeTimeErrors);
  free(self->_mtie);
  v3.receiver = self;
  v3.super_class = TSMaximumTimeIntervalErrorAnalysis;
  [(TSTimeErrorAnalysis *)&v3 dealloc];
}

@end