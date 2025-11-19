@interface _LTTextLanguageDetectorScorer
- (_LTTextLanguageDetectorScorer)initWithSupportedLocales:(id)a3;
- (id)weightedLocaleWithStrategy:(unint64_t)a3;
- (void)append:(id)a3;
- (void)append:(id)a3 recognizer:(id)a4;
@end

@implementation _LTTextLanguageDetectorScorer

- (_LTTextLanguageDetectorScorer)initWithSupportedLocales:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v24.receiver = self;
  v24.super_class = _LTTextLanguageDetectorScorer;
  v6 = [(_LTTextLanguageDetectorScorer *)&v24 init];
  if (v6)
  {
    v7 = objc_opt_new();
    items = v6->_items;
    v6->_items = v7;

    objc_storeStrong(&v6->_supportedLocales, a3);
    v9 = _LTOSLogLID();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v6->_supportedLocales;
      v11 = [MEMORY[0x277CBEB18] array];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = v10;
      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v25 objects:buf count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        do
        {
          v16 = 0;
          do
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v25 + 1) + 8 * v16) localeIdentifier];
            [v11 addObject:v17];

            ++v16;
          }

          while (v14 != v16);
          v14 = [(NSArray *)v12 countByEnumeratingWithState:&v25 objects:buf count:16];
        }

        while (v14);
      }

      v18 = MEMORY[0x277CCACA8];
      v19 = [v11 componentsJoinedByString:{@", \n"}];
      v20 = [v18 stringWithFormat:@"[ %@ ]", v19];

      *buf = 138543362;
      v30 = v20;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "supported locales for scoring: %{public}@", buf, 0xCu);
    }

    v21 = v6;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)append:(id)a3 recognizer:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 dominantLanguage];
  if (v8)
  {
    supportedLocales = self->_supportedLocales;
    v10 = _LTLanguageCodeToSupportedLocale();
    v11 = [v7 languageHypothesesWithMaximum:4];
    v12 = [v11 objectForKeyedSubscript:v8];
    v13 = [_LTTokenizer _wordCount:v6 inLocale:v10];
    v14 = [_LTTextLanguageDetectorScorerItem alloc];
    [v12 doubleValue];
    v15 = [(_LTTextLanguageDetectorScorerItem *)v14 initWithLocale:v10 confidence:v13 wordCount:?];
    if (v15)
    {
      [(NSMutableArray *)self->_items addObject:v15];
    }
  }

  else
  {
    v16 = _LTOSLogLID();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      v19 = 134217984;
      v20 = [v6 length];
      _os_log_impl(&dword_232E53000, v17, OS_LOG_TYPE_INFO, "no scorable dominant language for text length: %zu", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)append:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_items addObject:?];
  }
}

- (id)weightedLocaleWithStrategy:(unint64_t)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = _LTOSLogLID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_LTTextLanguageDetectorScorer *)self weightedLocaleWithStrategy:v5];
  }

  v46 = a3;
  if (a3 == 3)
  {
    v6 = 0.99;
  }

  else
  {
    v6 = _LTPreferencesTextLIDScorerConfidenceThreshold();
    v7 = _LTOSLogLID();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v54 = v6;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "weightedLocale confidence threshold from preferences: %f", buf, 0xCu);
    }
  }

  v8 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = self->_items;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v9)
  {
    v11 = v9;
    v47 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *v50;
    v15 = 0.0;
    *&v10 = 134218240;
    v45 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v49 + 1) + 8 * i);
        v18 = [v17 wordCount];
        [v17 confidence];
        if (v19 >= v6)
        {
          v23 = [v17 locale];
          v24 = [v8 objectForKeyedSubscript:v23];
          [v24 doubleValue];
          v26 = v25;
          if (v46 == 3)
          {
            v27 = [v17 wordCount];
          }

          else
          {
            [v17 score];
          }

          v28 = v26 + v27;

          v29 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
          v30 = [v17 locale];
          [v8 setObject:v29 forKeyedSubscript:v30];

          v12 += [v17 wordCount];
          if (v28 > v15)
          {
            v31 = [v17 locale];

            v47 = v31;
            v15 = v28;
          }
        }

        else
        {
          v20 = _LTOSLogLID();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = v20;
            [v17 confidence];
            *buf = v45;
            v54 = v22;
            v55 = 2048;
            v56 = v6;
            _os_log_debug_impl(&dword_232E53000, v21, OS_LOG_TYPE_DEBUG, "weightedLocale item confidence %f < confidence threshold %f, skipping", buf, 0x16u);
          }
        }

        v13 += v18;
      }

      v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v11);
  }

  else
  {
    v47 = 0;
    v12 = 0;
    v13 = 0;
    v15 = 0.0;
  }

  if (v46 != 3)
  {
    v38 = _LTOSLogLID();
    v32 = v47;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      if (v12 <= 1)
      {
        v42 = 1;
      }

      else
      {
        v42 = v12;
      }

      v43 = v15 / v42;
      v34 = v38;
      [v47 localeIdentifier];
      v35 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v44 = [v8 count];
      *buf = 138544130;
      v54 = v35;
      v55 = 2048;
      v56 = v43;
      v57 = 2048;
      v58 = v12;
      v59 = 2048;
      v60 = v44;
      v37 = "weightedLocale is %{public}@ with score %f on %zd words from %zu locales";
      goto LABEL_38;
    }

LABEL_29:
    v39 = v32;
    goto LABEL_31;
  }

  v32 = v47;
  if (v15 > (v13 / 2))
  {
    v33 = _LTOSLogLID();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = v33;
      [v47 localeIdentifier];
      v35 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v36 = [v8 count];
      *buf = 138544130;
      v54 = v35;
      v55 = 2048;
      v56 = v15;
      v57 = 2048;
      v58 = v13;
      v59 = 2048;
      v60 = v36;
      v37 = "weightedLocale for messages is %{public}@ with count %f on %zd words from %zu locales";
LABEL_38:
      _os_log_debug_impl(&dword_232E53000, v34, OS_LOG_TYPE_DEBUG, v37, buf, 0x2Au);

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  v39 = 0;
LABEL_31:

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (void)weightedLocaleWithStrategy:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = a2;
  v5 = 134217984;
  v6 = [v2 count];
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "weightedLocale for %zu items", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end