@interface TSMaximumTimeIntervalErrorAnalysis
- (BOOL)exportAnalysisToDirectoryURL:(id)a3 withFilename:(id)a4 fromStartWindowSize:(int64_t)a5 toEndWindowSize:(int64_t)a6 stepSize:(int64_t)a7;
- (NSArray)mtie;
- (TSMaximumTimeIntervalErrorAnalysis)initWithTimeErrorValues:(id)a3;
- (id)mtieFromStartWindowSize:(int64_t)a3 toEndWindowSize:(int64_t)a4 stepSize:(int64_t)a5;
- (void)_performAnalysisFromWindowSize:(int64_t)a3 toWindowSize:(int64_t)a4 stepSize:(int64_t)a5;
- (void)dealloc;
@end

@implementation TSMaximumTimeIntervalErrorAnalysis

- (TSMaximumTimeIntervalErrorAnalysis)initWithTimeErrorValues:(id)a3
{
  v8.receiver = self;
  v8.super_class = TSMaximumTimeIntervalErrorAnalysis;
  v3 = [(TSTimeErrorAnalysis *)&v8 initWithTimeErrorValues:a3];
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

- (void)_performAnalysisFromWindowSize:(int64_t)a3 toWindowSize:(int64_t)a4 stepSize:(int64_t)a5
{
  v9 = [(TSTimeErrorAnalysis *)self numberOfErrors];
  __B = -1.0;
  v10 = 8 * v9 - 1;
  v11 = malloc_type_malloc(v10, 0x100004000313F17uLL);
  v12 = malloc_type_malloc(v10, 0x100004000313F17uLL);
  v13 = malloc_type_malloc(v10, 0x100004000313F17uLL);
  v14 = [(TSTimeErrorAnalysis *)self timeErrors];
  if (v11)
  {
    if (v12)
    {
      if (v13)
      {
        v15 = a4;
        if (a3 <= a4)
        {
          v16 = v14;
          v17 = a3;
          v18 = v9 - a3 + 1;
          do
          {
            vDSP_vswmaxD(v16, 1, v11, 1, v18, a3);
            vDSP_vswmaxD(self->_negativeTimeErrors, 1, v12, 1, v18, a3);
            vDSP_vsmulD(v12, 1, &__B, v12, 1, v18);
            vDSP_vsubD(v12, 1, v11, 1, v13, 1, v18);
            vDSP_maxvD(v13, 1, &self->_mtie[v17], v18);
            a3 += a5;
            v17 += a5;
            v18 -= a5;
          }

          while (a3 <= v15);
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
  v3 = [MEMORY[0x277CBEB18] array];
  if (![(TSTimeErrorAnalysis *)self calculated])
  {
    [(TSTimeErrorAnalysis *)self performAnalysis];
  }

  for (i = [(TSTimeErrorAnalysis *)self lowestWindowSize]; i <= [(TSTimeErrorAnalysis *)self highestWindowSize]; i += [(TSTimeErrorAnalysis *)self calculatedStepSize])
  {
    v5 = [TSMTIEValue alloc];
    [(TSTimeErrorAnalysis *)self averagePeriod];
    v7 = [(TSMTIEValue *)v5 initWithObservationInterval:v6 * i andMTIE:self->_mtie[i]];
    [v3 addObject:v7];
  }

  return v3;
}

- (id)mtieFromStartWindowSize:(int64_t)a3 toEndWindowSize:(int64_t)a4 stepSize:(int64_t)a5
{
  v9 = [MEMORY[0x277CBEB18] array];
  if (a3 <= 2)
  {
    a3 = 2;
  }

  if ([(TSTimeErrorAnalysis *)self analysisLimit]< a4)
  {
    a4 = [(TSTimeErrorAnalysis *)self analysisLimit]- 1;
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
    v15 = [TSMTIEValue alloc];
    [(TSTimeErrorAnalysis *)self averagePeriod];
    v17 = [(TSMTIEValue *)v15 initWithObservationInterval:v16 * a3 andMTIE:self->_mtie[a3]];
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

    if ([(TSTimeErrorAnalysis *)self analysisLimit]< a6)
    {
      a6 = [(TSTimeErrorAnalysis *)self analysisLimit];
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
      fwrite("window size,observation interval,mtie\n", 0x26uLL, 1uLL, v16);
      for (; a5 < a6; a5 += a7)
      {
        [(TSTimeErrorAnalysis *)self averagePeriod];
        fprintf(v18, "%ld,%.9f,%.3f\n", a5, v19 * a5 / 1000000000.0, self->_mtie[a5]);
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