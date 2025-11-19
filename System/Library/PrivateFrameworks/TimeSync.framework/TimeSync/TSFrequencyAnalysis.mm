@interface TSFrequencyAnalysis
- (TSFrequencyAnalysis)initWithTimeErrorValues:(id)a3;
@end

@implementation TSFrequencyAnalysis

- (TSFrequencyAnalysis)initWithTimeErrorValues:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = TSFrequencyAnalysis;
  v5 = [(TSFrequencyAnalysis *)&v37 init];
  if (v5)
  {
    v6 = [v4 count];
    v7 = v6 - 1;
    if (v6 < 1)
    {

      v5 = 0;
    }

    else
    {
      v8 = v6;
      v9 = malloc_type_calloc(v6, 8uLL, 0x100004000313F17uLL);
      v10 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
      v11 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
      v12 = v11;
      if (v11 && v9 && v10)
      {
        v30 = v7;
        v31 = v11;
        v13 = [v4 objectAtIndexedSubscript:0];
        v14 = [v13 timestamp];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = v4;
        v15 = v4;
        v16 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v34;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v34 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v21 = *(*(&v33 + 1) + 8 * i);
              v9[v18] = ([v21 timestamp] - v14);
              v10[v18++] = [v21 error];
            }

            v17 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
          }

          while (v17);
        }

        v12 = v31;
        vDSP_vsubD(v9, 1, v9 + 1, 1, v31, 1, v30);
        vDSP_meanvD(v31, 1, &v5->_averagePeriod, v30);
        averagePeriod = v5->_averagePeriod;
        v5->_averageFrequency = 1000000000.0 / averagePeriod;
        __asm { FMOV            V2.2D, #2.0 }

        _Q2.f64[0] = v30;
        *&v5->_lowestFrequency = vdivq_f64(vdupq_n_s64(0x41CDCD6500000000uLL), vmulq_n_f64(_Q2, averagePeriod));
        v4 = v32;
      }

      else
      {

        v5 = 0;
      }

      free(v9);
      free(v10);
      free(v12);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

@end