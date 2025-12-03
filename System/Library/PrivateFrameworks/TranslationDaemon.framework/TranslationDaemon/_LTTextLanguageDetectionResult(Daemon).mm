@interface _LTTextLanguageDetectionResult(Daemon)
+ (void)sendAnalytics:()Daemon isSupported:;
- (id)initWithDetectedLocales:()Daemon unknownLanguages:;
- (id)initWithScorer:()Daemon lowConfidenceLocales:strategy:;
- (void)initWithDetectionCounts:()Daemon availableLocales:lowConfidenceLocales:strategy:;
@end

@implementation _LTTextLanguageDetectionResult(Daemon)

- (id)initWithDetectedLocales:()Daemon unknownLanguages:
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v35.receiver = self;
  v35.super_class = &off_28488FA90;
  v8 = objc_msgSendSuper2(&v35, sel_init);
  if (v8)
  {
    v9 = [v6 copy];
    [v8 setLocaleDetectionCount:v9];

    v29 = v7;
    v10 = [v7 copy];
    [v8 setUnsupportedLanguageCounts:v10];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = 0;
      v16 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = [v11 objectForKeyedSubscript:v18];
          unsignedIntegerValue = [v19 unsignedIntegerValue];

          if (unsignedIntegerValue > v14)
          {
            v21 = v18;

            v14 = unsignedIntegerValue;
            v15 = v21;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 0;
    }

    [v8 setDominantLocale:v15];
    v22 = _LTOSLogLID();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = v22;
      dominantLocale = [v8 dominantLocale];
      localeIdentifier = [dominantLocale localeIdentifier];
      *buf = 138543362;
      v37 = localeIdentifier;
      _os_log_impl(&dword_232E53000, v23, OS_LOG_TYPE_INFO, "Detection result via detected locales: %{public}@", buf, 0xCu);
    }

    v26 = v8;

    v7 = v29;
    v6 = v30;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)initWithDetectionCounts:()Daemon availableLocales:lowConfidenceLocales:strategy:
{
  v70 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v56 = a4;
  v11 = a5;
  v64.receiver = self;
  v64.super_class = &off_28488FA90;
  v12 = objc_msgSendSuper2(&v64, sel_init);
  v13 = v12;
  if (v12)
  {
    v51 = a6;
    v52 = v11;
    v53 = v12;
    v14 = [MEMORY[0x277CCA940] set];
    v15 = [MEMORY[0x277CCA940] set];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = [v10 allObjects];
    v16 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v57 = 0;
      v55 = *v61;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v61 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v60 + 1) + 8 * i);
          v21 = _LTLanguageCodeToSupportedLocale();
          v22 = v10;
          v23 = [v10 countForObject:v20];
          v24 = v23;
          if (v23 > v18 || (v21 ? (v25 = v23 >= v18) : (v25 = 0), v25))
          {
            v26 = v20;

            v18 = v24;
            v57 = v26;
          }

          v10 = v22;
          if (v21)
          {
            for (; v24; --v24)
            {
              [v14 addObject:v21];
            }
          }

          else
          {
            for (; v24; --v24)
            {
              [v15 addObject:v20];
            }
          }
        }

        v17 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v17);
    }

    else
    {
      v57 = 0;
    }

    v13 = v53;
    [v53 setLocaleDetectionCount:v14];
    [v53 setUnsupportedLanguageCounts:v15];
    v27 = v57;
    v28 = _LTLanguageCodeToSupportedLocale();
    if (v51 == 2 && [v57 isEqualToString:@"en"])
    {
      allObjects = [v10 allObjects];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __113___LTTextLanguageDetectionResult_Daemon__initWithDetectionCounts_availableLocales_lowConfidenceLocales_strategy___block_invoke;
      v58[3] = &unk_2789B7C98;
      v59 = v10;
      v30 = [allObjects sortedArrayWithOptions:16 usingComparator:v58];

      if ([v30 count] >= 2)
      {
        v31 = v10;
        v32 = [v30 objectAtIndexedSubscript:1];
        v33 = [v32 isEqualToString:@"hi"];

        if (v33)
        {
          v34 = _LTOSLogLID();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v66 = @"en";
            v67 = 2114;
            v68 = @"hi";
            _os_log_impl(&dword_232E53000, v34, OS_LOG_TYPE_INFO, "Overriding dominant language from %{public}@ to %{public}@", buf, 0x16u);
          }

          v35 = _LTLanguageCodeToSupportedLocale();

          v28 = v35;
        }

        v10 = v31;
        v27 = v57;
      }

      v13 = v53;
    }

    v11 = v52;
    [v13 setDominantLocale:v28];
    v36 = [v52 copy];
    [v13 setLowConfidenceLocales:v36];

    [objc_opt_class() sendAnalytics:v27 isSupported:v28 != 0];
    if ([v52 count])
    {
      v37 = [v52 _ltCompactMap:&__block_literal_global_30];
      v38 = _LTOSLogLID();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = v38;
        dominantLocale = [v13 dominantLocale];
        [dominantLocale localeIdentifier];
        v42 = v41 = v10;
        *buf = 138543618;
        v66 = v42;
        v67 = 2114;
        v68 = v37;
        _os_log_impl(&dword_232E53000, v39, OS_LOG_TYPE_INFO, "Detection result via detection counts: %{public}@; however there are low-confidence locales: %{public}@", buf, 0x16u);

        v10 = v41;
        v27 = v57;
      }
    }

    else
    {
      v43 = _LTOSLogLID();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = v43;
        dominantLocale2 = [v13 dominantLocale];
        [dominantLocale2 localeIdentifier];
        v47 = v46 = v10;
        *buf = 138543362;
        v66 = v47;
        _os_log_impl(&dword_232E53000, v44, OS_LOG_TYPE_INFO, "Detection result via detection counts: %{public}@", buf, 0xCu);

        v10 = v46;
        v27 = v57;
      }
    }

    v48 = v13;
  }

  v49 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)initWithScorer:()Daemon lowConfidenceLocales:strategy:
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v28.receiver = self;
  v28.super_class = &off_28488FA90;
  v10 = objc_msgSendSuper2(&v28, sel_init);
  if (v10)
  {
    v11 = [MEMORY[0x277CCA940] set];
    [v10 setLocaleDetectionCount:v11];

    v12 = [MEMORY[0x277CCA940] set];
    [v10 setUnsupportedLanguageCounts:v12];

    v13 = [v8 weightedLocaleWithStrategy:a5];
    [v10 setDominantLocale:v13];
    v14 = [v9 copy];
    [v10 setLowConfidenceLocales:v14];

    v15 = objc_opt_class();
    languageCode = [v13 languageCode];
    [v15 sendAnalytics:languageCode isSupported:v13 != 0];

    if ([v9 count])
    {
      v17 = [v9 _ltCompactMap:&__block_literal_global_8];
      v18 = _LTOSLogLID();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        dominantLocale = [v10 dominantLocale];
        localeIdentifier = [dominantLocale localeIdentifier];
        *buf = 138543618;
        v30 = localeIdentifier;
        v31 = 2114;
        v32 = v17;
        _os_log_impl(&dword_232E53000, v19, OS_LOG_TYPE_INFO, "Detection result via weighted locale: %{public}@, however there are low-confidence locales: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v22 = _LTOSLogLID();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = v22;
        localeIdentifier2 = [v13 localeIdentifier];
        *buf = 138543362;
        v30 = localeIdentifier2;
        _os_log_impl(&dword_232E53000, v23, OS_LOG_TYPE_INFO, "Detection result via weighted locale: %{public}@", buf, 0xCu);
      }
    }

    v25 = v10;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)sendAnalytics:()Daemon isSupported:
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

@end