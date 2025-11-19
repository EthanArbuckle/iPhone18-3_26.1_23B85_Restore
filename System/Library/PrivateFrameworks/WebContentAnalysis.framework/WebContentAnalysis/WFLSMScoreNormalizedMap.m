@interface WFLSMScoreNormalizedMap
- (WFLSMScoreNormalizedMap)initWithMap:(__LSMMap *)a3;
- (id)evaluate:(id)a3;
- (void)dealloc;
@end

@implementation WFLSMScoreNormalizedMap

- (WFLSMScoreNormalizedMap)initWithMap:(__LSMMap *)a3
{
  *&v42[5] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = WFLSMScoreNormalizedMap;
  v3 = [(WFLSMMap *)&v30 initWithMap:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(WFLSMMap *)v3 numberOfCategories];
    v4->maxScore = malloc_type_malloc(4 * v5 + 4, 0x100004052888210uLL);
    v6 = malloc_type_malloc(4 * v5 + 4, 0x100004052888210uLL);
    v4->minScore = v6;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      maxScore = v4->maxScore;
      do
      {
        maxScore[v7] = -1.0;
        v6[v7++] = -1.0;
      }

      while (v5 + 1 != v7);
      if (v5)
      {
        v9 = 0;
        v10 = 1;
        do
        {
          v11 = [WFWebPageToTrainingText signatureForCategory:v10];
          v29.receiver = v4;
          v29.super_class = WFLSMScoreNormalizedMap;
          v12 = [(WFLSMMap *)&v29 evaluate:v11];
          if ([v12 bestMatchingCategory] == v10)
          {
            [v12 scoreForCategory:v10];
            v4->maxScore[v10] = v13;
            v14 = v5;
            v15 = 1;
            do
            {
              if (v9 + v15 != 1)
              {
                [v12 scoreForCategory:v15];
                minScore = v4->minScore;
                v18 = minScore[v15];
                if (v18 <= 0.0 || v16 < v18)
                {
                  minScore[v15] = v16;
                }
              }

              ++v15;
              --v14;
            }

            while (v14);
          }

          else
          {
            v20 = __WFDefaultLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [(WFLSMScoreNormalizedMap *)v41 initWithMap:v4, v42, v20];
            }
          }

          --v9;
          v21 = v5 <= v10++;
        }

        while (!v21);
        v22 = 1;
        do
        {
          v23 = __WFDefaultLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = [objc_opt_class() description];
            v25 = v4->minScore[v22];
            v26 = v4->maxScore[v22];
            *buf = 138413314;
            v32 = v24;
            v33 = 1024;
            v34 = v22;
            v35 = 2048;
            v36 = v25;
            v37 = 2048;
            v38 = v26;
            v39 = 2048;
            v40 = (v26 - v25);
            _os_log_impl(&dword_272D73000, v23, OS_LOG_TYPE_INFO, "%@ category:%d min:%f max:%f scope:%f", buf, 0x30u);
          }

          v21 = v5 <= v22++;
        }

        while (!v21);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)evaluate:(id)a3
{
  v18.receiver = self;
  v18.super_class = WFLSMScoreNormalizedMap;
  v4 = [(WFLSMMap *)&v18 evaluate:a3];
  v5 = [(WFLSMMap *)self numberOfCategories];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 1;
    v8 = v5;
    v9 = 0.0;
    do
    {
      [v4 scoreForCategory:v7];
      v10 = self->minScore[v7];
      v12 = (v11 - v10) / (self->maxScore[v7] - v10);
      if (v12 < 0.0)
      {
        v12 = 0.0;
      }

      v9 = v9 + v12;
      [v4 setScore:v7++ forCategory:?];
      --v8;
    }

    while (v8);
    v13 = 1;
    v14 = 1.0 / v9;
    do
    {
      [v4 scoreForCategory:v13];
      *&v16 = v14 * v15;
      [v4 setScore:v13++ forCategory:v16];
      --v6;
    }

    while (v6);
  }

  return v4;
}

- (void)dealloc
{
  free(self->maxScore);
  free(self->minScore);
  v3.receiver = self;
  v3.super_class = WFLSMScoreNormalizedMap;
  [(WFLSMMap *)&v3 dealloc];
}

- (void)initWithMap:(uint64_t *)a3 .cold.1(uint8_t *a1, uint64_t a2, uint64_t *a3, NSObject *a4)
{
  v7 = [objc_opt_class() description];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_272D73000, a4, OS_LOG_TYPE_ERROR, "**** %@ ERROR: bestMatchingCategory doesn't match category_i, error in the creating of the map", a1, 0xCu);
}

@end