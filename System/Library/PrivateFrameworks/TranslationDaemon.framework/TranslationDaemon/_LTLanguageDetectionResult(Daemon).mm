@interface _LTLanguageDetectionResult(Daemon)
- (id)initWithConfidences:()Daemon isConfident:dominantLanguage:isFinal:;
@end

@implementation _LTLanguageDetectionResult(Daemon)

- (id)initWithConfidences:()Daemon isConfident:dominantLanguage:isFinal:
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v34.receiver = a1;
  v34.super_class = &off_28488E2B8;
  v12 = objc_msgSendSuper2(&v34, sel_init);
  if (v12)
  {
    v13 = [v10 copy];
    [v12 setConfidences:v13];

    [v12 setIsConfident:a4];
    [v12 setDominantLanguage:v11];
    [v12 setIsFinal:a6];
    v14 = [v12 dominantLanguage];

    if (!v14)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v15 = [v10 allKeys];
      v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = *v31;
        v20 = 0.0;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v22 = *(*(&v30 + 1) + 8 * i);
            v23 = [v10 objectForKeyedSubscript:v22];
            [v23 doubleValue];
            v25 = v24;

            if (v25 > v20)
            {
              v26 = v22;

              v18 = v26;
              v20 = v25;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v17);
      }

      else
      {
        v18 = 0;
      }

      [v12 setDominantLanguage:v18];
    }

    v27 = v12;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v12;
}

@end