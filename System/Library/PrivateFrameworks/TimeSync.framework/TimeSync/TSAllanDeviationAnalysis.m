@interface TSAllanDeviationAnalysis
- (BOOL)exportAnalysisToDirectoryURL:(id)a3 withFilename:(id)a4 fromStartWindowSize:(int64_t)a5 toEndWindowSize:(int64_t)a6 stepSize:(int64_t)a7;
- (NSArray)adev;
- (TSAllanDeviationAnalysis)initWithTimeErrorValues:(id)a3;
- (id)adevFromStartWindowSize:(int64_t)a3 toEndWindowSize:(int64_t)a4 stepSize:(int64_t)a5;
- (void)_performAnalysisFromWindowSize:(int64_t)a3 toWindowSize:(int64_t)a4 stepSize:(int64_t)a5;
- (void)dealloc;
@end

@implementation TSAllanDeviationAnalysis

- (TSAllanDeviationAnalysis)initWithTimeErrorValues:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSAllanDeviationAnalysis;
  v3 = [(TSTimeErrorAnalysis *)&v7 initWithTimeErrorValues:a3];
  v4 = v3;
  if (v3)
  {
    v5 = malloc_type_calloc([(TSTimeErrorAnalysis *)v3 numberOfErrors], 8uLL, 0x100004000313F17uLL);
    v4->_adev = v5;
    if (!v5)
    {

      return 0;
    }
  }

  return v4;
}

- (void)_performAnalysisFromWindowSize:(int64_t)a3 toWindowSize:(int64_t)a4 stepSize:(int64_t)a5
{
  v8 = [(TSTimeErrorAnalysis *)self numberOfErrors];
  __B = [(TSTimeErrorAnalysis *)self timeErrors];
  v9 = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
  [(TSTimeErrorAnalysis *)self averagePeriod];
  v11 = v10;
  [(TSTimeErrorAnalysis *)self averagePeriod];
  if (v9)
  {
    v13 = a4;
    if (a3 <= a4)
    {
      v14 = v11 * v12;
      v15 = &__B[a3];
      v16 = 2 * a3;
      v17 = v8 - 2 * a3;
      v18 = 2 * a5;
      v19 = &__B[2 * a3];
      do
      {
        v20 = v13;
        vDSP_vsubD(v15, 1, v19, 1, v9, 1, v17);
        vDSP_vsubD(v15, 1, v9, 1, v9, 1, v17);
        vDSP_vaddD(v9, 1, __B, 1, v9, 1, v17);
        __C = 0.0;
        vDSP_svesqD(v9, 1, &__C, v17);
        v13 = v20;
        self->_adev[a3] = sqrt(__C / (v14 * (v16 * a3) * v17));
        a3 += a5;
        v15 += a5;
        v17 -= v18;
        v19 += 2 * a5;
        v16 += v18;
      }

      while (a3 <= v20);
    }
  }

  free(v9);
}

- (NSArray)adev
{
  v3 = [MEMORY[0x277CBEB18] array];
  if (![(TSTimeErrorAnalysis *)self calculated])
  {
    [(TSTimeErrorAnalysis *)self performAnalysis];
  }

  for (i = [(TSTimeErrorAnalysis *)self lowestWindowSize]; i <= [(TSTimeErrorAnalysis *)self highestWindowSize]; i += [(TSTimeErrorAnalysis *)self calculatedStepSize])
  {
    v5 = [TSADEVValue alloc];
    [(TSTimeErrorAnalysis *)self averagePeriod];
    v7 = [(TSADEVValue *)v5 initWithObservationInterval:v6 * i andADEV:self->_adev[i]];
    [v3 addObject:v7];
  }

  return v3;
}

- (id)adevFromStartWindowSize:(int64_t)a3 toEndWindowSize:(int64_t)a4 stepSize:(int64_t)a5
{
  v9 = [MEMORY[0x277CBEB18] array];
  if (a3 <= 2)
  {
    a3 = 2;
  }

  if ([(TSAllanDeviationAnalysis *)self analysisLimit]< a4)
  {
    a4 = [(TSAllanDeviationAnalysis *)self analysisLimit];
  }

  if (![(TSTimeErrorAnalysis *)self calculated])
  {
    v13 = self;
    v14 = a3;
    v12 = a4;
LABEL_15:
    [(TSTimeErrorAnalysis *)v13 performAnalysisFromStartWindowSize:v14 toEndWindowSize:v12 stepSize:a5];
    goto LABEL_16;
  }

  if (a3 < [(TSTimeErrorAnalysis *)self lowestWindowSize]|| a4 > [(TSTimeErrorAnalysis *)self highestWindowSize]|| [(TSTimeErrorAnalysis *)self calculatedStepSize]!= a5)
  {
    v10 = a3;
    if (a3 >= [(TSTimeErrorAnalysis *)self lowestWindowSize])
    {
      v10 = [(TSTimeErrorAnalysis *)self lowestWindowSize];
    }

    v11 = [(TSTimeErrorAnalysis *)self highestWindowSize];
    v12 = a4;
    if (a4 <= v11)
    {
      v12 = [(TSTimeErrorAnalysis *)self highestWindowSize];
    }

    v13 = self;
    v14 = v10;
    goto LABEL_15;
  }

LABEL_16:
  while (a3 <= a4)
  {
    v15 = [TSADEVValue alloc];
    [(TSTimeErrorAnalysis *)self averagePeriod];
    v17 = [(TSADEVValue *)v15 initWithObservationInterval:v16 * a3 andADEV:self->_adev[a3]];
    [v9 addObject:v17];

    a3 += a5;
  }

  return v9;
}

- (BOOL)exportAnalysisToDirectoryURL:(id)a3 withFilename:(id)a4 fromStartWindowSize:(int64_t)a5 toEndWindowSize:(int64_t)a6 stepSize:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  if ([v12 isFileURL])
  {
    if (a5 <= 2)
    {
      a5 = 2;
    }

    if ([(TSAllanDeviationAnalysis *)self analysisLimit]< a6)
    {
      a6 = [(TSAllanDeviationAnalysis *)self analysisLimit];
    }

    if (![(TSTimeErrorAnalysis *)self calculated]|| a5 < [(TSTimeErrorAnalysis *)self lowestWindowSize]|| a6 > [(TSTimeErrorAnalysis *)self highestWindowSize]|| [(TSTimeErrorAnalysis *)self calculatedStepSize]!= a7)
    {
      [(TSTimeErrorAnalysis *)self performAnalysisFromStartWindowSize:a5 toEndWindowSize:a6 stepSize:a7];
    }

    v14 = [v12 path];
    v15 = [v14 stringByAppendingPathComponent:v13];

    v16 = fopen([v15 UTF8String], "w");
    v17 = v16 != 0;
    if (v16)
    {
      v18 = v16;
      fwrite("window size,observation interval,adev\n", 0x26uLL, 1uLL, v16);
      for (; a5 < a6; a5 += a7)
      {
        [(TSTimeErrorAnalysis *)self averagePeriod];
        fprintf(v18, "%ld,%.9f,%.18f\n", a5, v19 * a5 / 1000000000.0, self->_adev[a5]);
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
  free(self->_adev);
  v3.receiver = self;
  v3.super_class = TSAllanDeviationAnalysis;
  [(TSTimeErrorAnalysis *)&v3 dealloc];
}

@end