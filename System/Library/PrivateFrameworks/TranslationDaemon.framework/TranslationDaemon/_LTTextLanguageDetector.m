@interface _LTTextLanguageDetector
- (_LTTextLanguageDetector)init;
- (_LTTextLanguageDetector)initWithModel:(unint64_t)a3;
- (id)_mapSupportedLocales:(id)a3;
- (id)detectionForString:(id)a3;
- (id)detectionForStrings:(id)a3 strategy:(unint64_t)a4;
@end

@implementation _LTTextLanguageDetector

- (_LTTextLanguageDetector)init
{
  v3.receiver = self;
  v3.super_class = _LTTextLanguageDetector;
  result = [(_LTTextLanguageDetector *)&v3 init];
  if (result)
  {
    return [(_LTTextLanguageDetector *)result initWithModel:0];
  }

  return result;
}

- (_LTTextLanguageDetector)initWithModel:(unint64_t)a3
{
  v15.receiver = self;
  v15.super_class = _LTTextLanguageDetector;
  v4 = [(_LTTextLanguageDetector *)&v15 init];
  if (v4)
  {
    if (a3 != 2 && (a3 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLForKey:", @"TextLIDUseLSTM"), v5, v6)))
    {
      v7 = _LTOSLogLID();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEFAULT, "Using LSTM text lid engine", v14, 2u);
      }

      v8 = 0x277CD89C0;
    }

    else
    {
      v9 = _LTOSLogLID();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_DEFAULT, "Using CFRO text lid engine", v14, 2u);
      }

      v8 = 0x277CD89A0;
    }

    v10 = objc_alloc_init(*v8);
    recognizer = v4->_recognizer;
    v4->_recognizer = v10;

    v12 = v4;
  }

  return v4;
}

- (id)detectionForString:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _LTOSLogLID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_LTTextLanguageDetector *)v5 detectionForString:v6, v7, v8, v9, v10, v11, v12];
  }

  [(NLLanguageRecognizer *)self->_recognizer reset];
  [(NLLanguageRecognizer *)self->_recognizer processString:v4];
  v13 = [(NLLanguageRecognizer *)self->_recognizer dominantLanguage];
  v14 = _LTOSLogLID();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v43 = v13;
    _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Dominant language: %{public}@", buf, 0xCu);
  }

  v15 = [(NLLanguageRecognizer *)self->_recognizer languageHypothesesWithMaximum:4];
  v16 = _LTOSLogLID();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v43 = v15;
    _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Language confidences: %{public}@", buf, 0xCu);
  }

  v17 = [(_LTTextLanguageDetector *)self availableLocales];
  v18 = _LTLanguageCodeToSupportedLocale();

  v19 = _LTOSLogLID();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v43 = v18;
    _os_log_impl(&dword_232E53000, v19, OS_LOG_TYPE_INFO, "Mapped language: %{public}@", buf, 0xCu);
  }

  if (v18)
  {
    v34 = v18;
    v35 = v13;
    v36 = v4;
    v20 = [MEMORY[0x277CBEB38] dictionary];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = [v15 allKeys];
    v22 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v38;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v37 + 1) + 8 * i);
          v27 = [(_LTTextLanguageDetector *)self availableLocales];
          v28 = _LTLanguageCodeToSupportedLocale();

          if (v28)
          {
            v29 = [v15 objectForKeyedSubscript:v26];
            [v20 setObject:v29 forKeyedSubscript:v28];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v23);
    }

    v30 = [objc_alloc(MEMORY[0x277CE1B08]) initWithConfidences:v20 isConfident:1 dominantLanguage:0 isFinal:1];
    v18 = v34;
    [v30 setDominantLanguage:v34];

    v13 = v35;
    v4 = v36;
  }

  else
  {
    v31 = _LTOSLogLID();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [(_LTTextLanguageDetector *)v13 detectionForString:v31, self];
    }

    v30 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)detectionForStrings:(id)a3 strategy:(unint64_t)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _LTOSLogLID();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(_LTTextLanguageDetector *)v7 detectionForStrings:v6 strategy:a4];
  }

  if ((a4 | 2) == 3)
  {
    v8 = [_LTTextLanguageDetectorScorer alloc];
    v9 = [(_LTTextLanguageDetector *)self availableLocales];
    v10 = [(_LTTextLanguageDetectorScorer *)v8 initWithSupportedLocales:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v12 = [v11 BOOLForKey:@"TextLIDAggregateEvaluation"];

  v13 = _LTOSLogLID();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (!v12)
  {
    v61 = a4;
    if (v14)
    {
      [(_LTTextLanguageDetector *)v13 detectionForStrings:v15 strategy:v16, v17, v18, v19, v20, v21];
    }

    v28 = objc_alloc_init(MEMORY[0x277CCA940]);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v62 = v6;
    v32 = v6;
    v33 = [v32 countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v64;
      v36 = *MEMORY[0x277CE1CA8];
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v64 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v63 + 1) + 8 * i);
          [(NLLanguageRecognizer *)self->_recognizer reset];
          [(NLLanguageRecognizer *)self->_recognizer processString:v38];
          v39 = [(NLLanguageRecognizer *)self->_recognizer dominantLanguage];
          if (!v39)
          {
            v39 = v36;
          }

          [v28 addObject:v39];
          [(_LTTextLanguageDetectorScorer *)v10 append:v38 recognizer:self->_recognizer];
        }

        v34 = [v32 countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v34);
    }

    if ([v32 count] == 1)
    {
      v40 = [(NLLanguageRecognizer *)self->_recognizer languageHypothesesWithMaximum:10];
      v41 = _LTOSLogLID();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        [_LTTextLanguageDetector detectionForStrings:v40 strategy:v41];
      }

      v42 = [(NLLanguageRecognizer *)self->_recognizer dominantLanguage];
      v43 = [v40 objectForKeyedSubscript:v42];
      v44 = [v40 keysSortedByValueUsingComparator:&__block_literal_global_31];
      v45 = [(_LTTextLanguageDetector *)self _mapSupportedLocales:v44];
      v46 = _LTPreferencesTextLIDScorerConfidenceThreshold();
      [v43 doubleValue];
      if (v47 >= v46)
      {
        v48 = 0;
      }

      else
      {
        v48 = v45;
      }
    }

    else
    {
      v48 = 0;
    }

    v53 = objc_alloc(MEMORY[0x277CE1BD8]);
    v54 = v53;
    v6 = v62;
    if (v61 == 3)
    {
      v55 = v10;
      v56 = v48;
      v57 = 3;
    }

    else
    {
      if (v61 != 1)
      {
        v58 = [(_LTTextLanguageDetector *)self availableLocales];
        v31 = [v54 initWithDetectionCounts:v28 availableLocales:v58 lowConfidenceLocales:v48 strategy:v61];

        goto LABEL_46;
      }

      v55 = v10;
      v56 = 0;
      v57 = 1;
    }

    v31 = [v53 initWithScorer:v55 lowConfidenceLocales:v56 strategy:{v57, v61}];
LABEL_46:

    goto LABEL_47;
  }

  if (v14)
  {
    [(_LTTextLanguageDetector *)v13 detectionForStrings:v15 strategy:v16, v17, v18, v19, v20, v21];
  }

  [(NLLanguageRecognizer *)self->_recognizer reset];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v22 = v6;
  v23 = [v22 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v68;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v68 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v67 + 1) + 8 * j);
        [(NLLanguageRecognizer *)self->_recognizer processString:v27];
        [(_LTTextLanguageDetectorScorer *)v10 append:v27 recognizer:self->_recognizer];
      }

      v24 = [v22 countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v24);
  }

  v28 = [(NLLanguageRecognizer *)self->_recognizer dominantLanguage];
  if (!v28)
  {
    v28 = *MEMORY[0x277CE1CA8];
  }

  v29 = objc_alloc(MEMORY[0x277CE1BD8]);
  v30 = v29;
  if (v10)
  {
    v31 = [v29 initWithScorer:v10 lowConfidenceLocales:0 strategy:a4];
  }

  else
  {
    v49 = MEMORY[0x277CCA940];
    v72 = v28;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
    v51 = [v49 setWithArray:v50];
    v52 = [(_LTTextLanguageDetector *)self availableLocales];
    v31 = [v30 initWithDetectionCounts:v51 availableLocales:v52 lowConfidenceLocales:0 strategy:a4];
  }

LABEL_47:

  v59 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)_mapSupportedLocales:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48___LTTextLanguageDetector__mapSupportedLocales___block_invoke;
  v5[3] = &unk_2789B7D08;
  v5[4] = self;
  v3 = [a3 _ltCompactMap:v5];

  return v3;
}

- (void)detectionForString:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 availableLocales];
  v8 = 138543618;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_232E53000, v5, OS_LOG_TYPE_ERROR, "Could not find locale for %{public}@ in available: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)detectionForStrings:(unint64_t)a3 strategy:.cold.1(void *a1, void *a2, unint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 count];
  if (a3 > 3)
  {
    v7 = @"undefined";
  }

  else
  {
    v7 = off_2789B7D28[a3];
  }

  v9 = 134218242;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  _os_log_debug_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEBUG, "Detection for %zd string array using strategy: %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)detectionForStrings:(uint64_t)a1 strategy:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Language confidences: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end