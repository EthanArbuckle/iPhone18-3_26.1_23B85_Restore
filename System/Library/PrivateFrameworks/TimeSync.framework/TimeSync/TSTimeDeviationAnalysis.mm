@interface TSTimeDeviationAnalysis
- (BOOL)exportAnalysisToDirectoryURL:(id)l withFilename:(id)filename fromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize;
- (NSArray)tdev;
- (TSTimeDeviationAnalysis)initWithTimeErrorValues:(id)values;
- (id)tdevFromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize;
- (void)_performAnalysisFromWindowSize:(int64_t)size toWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize;
- (void)dealloc;
@end

@implementation TSTimeDeviationAnalysis

- (TSTimeDeviationAnalysis)initWithTimeErrorValues:(id)values
{
  v7.receiver = self;
  v7.super_class = TSTimeDeviationAnalysis;
  v3 = [(TSTimeErrorAnalysis *)&v7 initWithTimeErrorValues:values];
  v4 = v3;
  if (v3)
  {
    v5 = malloc_type_calloc([(TSTimeErrorAnalysis *)v3 numberOfErrors], 8uLL, 0x100004000313F17uLL);
    v4->_tdev = v5;
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
  selfCopy = self;
  timeErrors = [(TSTimeErrorAnalysis *)self timeErrors];
  v18 = numberOfErrors;
  v8 = malloc_type_malloc(8 * numberOfErrors, 0x100004000313F17uLL);
  __A = malloc_type_malloc(8 * numberOfErrors, 0x100004000313F17uLL);
  if (v8 && __A && size <= windowSize)
  {
    v9 = numberOfErrors - 3 * size + 1;
    v10 = 2 * size;
    sizeCopy = size;
    do
    {
      v12 = -3 * size + v18;
      if (v12 >= 0)
      {
        v13 = timeErrors;
        v14 = __A;
        v15 = v9;
        do
        {
          vDSP_vsubD(&v13[sizeCopy], 1, &v13[v10], 1, v8, 1, size - 1);
          vDSP_vsubD(&v13[sizeCopy], 1, v8, 1, v8, 1, size - 1);
          vDSP_vaddD(v8, 1, v13, 1, v8, 1, size - 1);
          vDSP_svesqD(v8, 1, v14++, size - 1);
          ++v13;
          --v15;
        }

        while (v15);
      }

      __C = 0.0;
      vDSP_svesqD(__A, 1, &__C, v12 + 1);
      selfCopy->_tdev[size] = sqrt(__C / (6 * size * size * (v12 + 1)));
      size += stepSize;
      v9 -= 3 * stepSize;
      v10 += 2 * stepSize;
      sizeCopy += stepSize;
    }

    while (size <= windowSize);
  }

  free(v8);
  free(__A);
}

- (NSArray)tdev
{
  array = [MEMORY[0x277CBEB18] array];
  if (![(TSTimeErrorAnalysis *)self calculated])
  {
    [(TSTimeErrorAnalysis *)self performAnalysis];
  }

  for (i = [(TSTimeErrorAnalysis *)self lowestWindowSize]; i <= [(TSTimeErrorAnalysis *)self highestWindowSize]; i += [(TSTimeErrorAnalysis *)self calculatedStepSize])
  {
    v5 = [TSTDEVValue alloc];
    [(TSTimeErrorAnalysis *)self averagePeriod];
    v7 = [(TSTDEVValue *)v5 initWithObservationInterval:v6 * i andTDEV:self->_tdev[i]];
    [array addObject:v7];
  }

  return array;
}

- (id)tdevFromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize
{
  array = [MEMORY[0x277CBEB18] array];
  if (size <= 2)
  {
    size = 2;
  }

  if ([(TSTimeDeviationAnalysis *)self analysisLimit]< windowSize)
  {
    windowSize = [(TSTimeDeviationAnalysis *)self analysisLimit];
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
    v15 = [TSTDEVValue alloc];
    [(TSTimeErrorAnalysis *)self averagePeriod];
    v17 = [(TSTDEVValue *)v15 initWithObservationInterval:v16 * size andTDEV:self->_tdev[size]];
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

    if ([(TSTimeDeviationAnalysis *)self analysisLimit]< windowSize)
    {
      windowSize = [(TSTimeDeviationAnalysis *)self analysisLimit];
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
      fwrite("window size,observation interval,tdev\n", 0x26uLL, 1uLL, v16);
      for (; size < windowSize; size += stepSize)
      {
        [(TSTimeErrorAnalysis *)self averagePeriod];
        fprintf(v18, "%ld,%.9f,%.18f\n", size, v19 * size / 1000000000.0, self->_tdev[size]);
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
  free(self->_tdev);
  v3.receiver = self;
  v3.super_class = TSTimeDeviationAnalysis;
  [(TSTimeErrorAnalysis *)&v3 dealloc];
}

@end