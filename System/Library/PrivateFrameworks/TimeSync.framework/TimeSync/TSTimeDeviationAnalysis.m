@interface TSTimeDeviationAnalysis
- (BOOL)exportAnalysisToDirectoryURL:(id)a3 withFilename:(id)a4 fromStartWindowSize:(int64_t)a5 toEndWindowSize:(int64_t)a6 stepSize:(int64_t)a7;
- (NSArray)tdev;
- (TSTimeDeviationAnalysis)initWithTimeErrorValues:(id)a3;
- (id)tdevFromStartWindowSize:(int64_t)a3 toEndWindowSize:(int64_t)a4 stepSize:(int64_t)a5;
- (void)_performAnalysisFromWindowSize:(int64_t)a3 toWindowSize:(int64_t)a4 stepSize:(int64_t)a5;
- (void)dealloc;
@end

@implementation TSTimeDeviationAnalysis

- (TSTimeDeviationAnalysis)initWithTimeErrorValues:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSTimeDeviationAnalysis;
  v3 = [(TSTimeErrorAnalysis *)&v7 initWithTimeErrorValues:a3];
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

- (void)_performAnalysisFromWindowSize:(int64_t)a3 toWindowSize:(int64_t)a4 stepSize:(int64_t)a5
{
  v7 = [(TSTimeErrorAnalysis *)self numberOfErrors];
  v17 = self;
  v16 = [(TSTimeErrorAnalysis *)self timeErrors];
  v18 = v7;
  v8 = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
  __A = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
  if (v8 && __A && a3 <= a4)
  {
    v9 = v7 - 3 * a3 + 1;
    v10 = 2 * a3;
    v11 = a3;
    do
    {
      v12 = -3 * a3 + v18;
      if (v12 >= 0)
      {
        v13 = v16;
        v14 = __A;
        v15 = v9;
        do
        {
          vDSP_vsubD(&v13[v11], 1, &v13[v10], 1, v8, 1, a3 - 1);
          vDSP_vsubD(&v13[v11], 1, v8, 1, v8, 1, a3 - 1);
          vDSP_vaddD(v8, 1, v13, 1, v8, 1, a3 - 1);
          vDSP_svesqD(v8, 1, v14++, a3 - 1);
          ++v13;
          --v15;
        }

        while (v15);
      }

      __C = 0.0;
      vDSP_svesqD(__A, 1, &__C, v12 + 1);
      v17->_tdev[a3] = sqrt(__C / (6 * a3 * a3 * (v12 + 1)));
      a3 += a5;
      v9 -= 3 * a5;
      v10 += 2 * a5;
      v11 += a5;
    }

    while (a3 <= a4);
  }

  free(v8);
  free(__A);
}

- (NSArray)tdev
{
  v3 = [MEMORY[0x277CBEB18] array];
  if (![(TSTimeErrorAnalysis *)self calculated])
  {
    [(TSTimeErrorAnalysis *)self performAnalysis];
  }

  for (i = [(TSTimeErrorAnalysis *)self lowestWindowSize]; i <= [(TSTimeErrorAnalysis *)self highestWindowSize]; i += [(TSTimeErrorAnalysis *)self calculatedStepSize])
  {
    v5 = [TSTDEVValue alloc];
    [(TSTimeErrorAnalysis *)self averagePeriod];
    v7 = [(TSTDEVValue *)v5 initWithObservationInterval:v6 * i andTDEV:self->_tdev[i]];
    [v3 addObject:v7];
  }

  return v3;
}

- (id)tdevFromStartWindowSize:(int64_t)a3 toEndWindowSize:(int64_t)a4 stepSize:(int64_t)a5
{
  v9 = [MEMORY[0x277CBEB18] array];
  if (a3 <= 2)
  {
    a3 = 2;
  }

  if ([(TSTimeDeviationAnalysis *)self analysisLimit]< a4)
  {
    a4 = [(TSTimeDeviationAnalysis *)self analysisLimit];
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
    v15 = [TSTDEVValue alloc];
    [(TSTimeErrorAnalysis *)self averagePeriod];
    v17 = [(TSTDEVValue *)v15 initWithObservationInterval:v16 * a3 andTDEV:self->_tdev[a3]];
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

    if ([(TSTimeDeviationAnalysis *)self analysisLimit]< a6)
    {
      a6 = [(TSTimeDeviationAnalysis *)self analysisLimit];
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
      fwrite("window size,observation interval,tdev\n", 0x26uLL, 1uLL, v16);
      for (; a5 < a6; a5 += a7)
      {
        [(TSTimeErrorAnalysis *)self averagePeriod];
        fprintf(v18, "%ld,%.9f,%.18f\n", a5, v19 * a5 / 1000000000.0, self->_tdev[a5]);
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