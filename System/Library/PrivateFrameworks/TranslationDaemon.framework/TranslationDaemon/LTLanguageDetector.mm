@interface LTLanguageDetector
@end

@implementation LTLanguageDetector

void __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 50) == 1)
    {
      v4 = _LTOSLogLID();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_cold_4();
      }
    }

    else
    {
      v5 = WeakRetained[9];
      v6 = (a1 + 32);
      v7 = [*(a1 + 32) locale];
      v8 = [v5 objectForKeyedSubscript:v7];

      v9 = [*(a1 + 32) modelVersion];
      if (v9)
      {
        v10 = v9;
        v11 = [*v6 modelVersion];

        if (v8 != v11)
        {
          v12 = _LTOSLogLID();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_cold_1((a1 + 32), v12);
          }

          v13 = [*v6 modelVersion];
          v14 = [v13 copy];
          v15 = *(v3 + 9);
          v16 = [*v6 locale];
          [v15 setObject:v14 forKeyedSubscript:v16];

          v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v18 = *(v3 + 7);
          v19 = [*v6 locale];
          [v18 setObject:v17 forKeyedSubscript:v19];
        }
      }

      if ([*v6 isFinal])
      {
        v20 = *v6;
        v21 = *(v3 + 8);
        v22 = [v20 locale];
        [v21 setObject:v20 forKeyedSubscript:v22];

        v23 = _LTOSLogLID();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_cold_3();
        }

        [v3 endAudio];
        if (_LTPreferencesFinalThresholdsLanguageDetectionResultWaitTime())
        {
          if ((*(v3 + 49) & 1) == 0)
          {
            v24 = _LTPreferencesFinalThresholdsLanguageDetectionResultWaitTime();
            if (v24 < _LTPreferencesFinalLanguageDetectionResultWaitTime())
            {
              v25 = *(v3 + 13);
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_21;
              block[3] = &unk_2789B53F0;
              objc_copyWeak(&v44, (a1 + 40));
              dispatch_async(v25, block);
              objc_destroyWeak(&v44);
            }
          }
        }

        else
        {
          *(v3 + 49) = 1;
        }

        v36 = _LTPreferencesFinalLanguageDetectionResultWaitTime() == 0;
        if (([v3 haveFinalASRResults] & 1) == 0 && _LTPreferencesFinalLanguageDetectionResultWaitTime())
        {
          v37 = *(v3 + 13);
          v38 = MEMORY[0x277D85DD0];
          v39 = 3221225472;
          v40 = __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_23;
          v41 = &unk_2789B53F0;
          objc_copyWeak(&v42, (a1 + 40));
          dispatch_async(v37, &v38);
          objc_destroyWeak(&v42);
        }
      }

      else
      {
        v26 = *(v3 + 7);
        *(v3 + 51) = 1;
        v27 = [*v6 locale];
        v28 = [v26 objectForKeyedSubscript:v27];
        v29 = MEMORY[0x277CCABB0];
        v30 = [*v6 bestTranscription];
        [v30 confidence];
        v31 = [v29 numberWithDouble:?];
        [v28 addObject:v31];

        v32 = _LTOSLogLID();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_cold_2((a1 + 32), v32, v3 + 7);
        }

        v33 = [*v6 bestTranscription];
        [v33 confidence];
        v35 = v34;

        v36 = 0;
        if (v35 > 0.0)
        {
          *(v3 + 52) = 1;
        }
      }

      [v3 sendFinalLanguageDetectionResult:{v36, v38, v39, v40, v41}];
    }
  }
}

void __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = _LTPreferencesFinalThresholdsLanguageDetectionResultWaitTime();
    v4 = dispatch_time(0, 1000000 * v3);
    v5 = WeakRetained[12];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_2;
    block[3] = &unk_2789B53F0;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_after(v4, v5, block);
    objc_destroyWeak(&v7);
  }
}

void __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _LTOSLogLID();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_2_cold_1();
    }

    WeakRetained[49] = 1;
    [WeakRetained sendFinalLanguageDetectionResult:0];
  }
}

void __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = _LTPreferencesFinalLanguageDetectionResultWaitTime();
    v4 = dispatch_time(0, 1000000 * v3);
    v5 = WeakRetained[12];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_2_24;
    block[3] = &unk_2789B53F0;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_after(v4, v5, block);
    objc_destroyWeak(&v7);
  }
}

void __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_2_24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _LTOSLogLID();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_2_24_cold_1();
    }

    [WeakRetained sendFinalLanguageDetectionResult:1];
  }
}

void __31___LTLanguageDetector_endAudio__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 48) = 1;
    v3 = _LTOSLogLID();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __31___LTLanguageDetector_endAudio__block_invoke_cold_1();
    }

    [v2 sendFinalLanguageDetectionResult:0];
  }
}

void __51___LTLanguageDetector_forceLanguageDetectionResult__block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = (*(WeakRetained + 50) & 1) == 0 && (WeakRetained[17] || [WeakRetained[8] count] == 1);
    *(*(*(a1 + 40) + 8) + 24) = v4;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v5 = v3[17];
      if (v5)
      {
        [v5 setIsFinal:1];
        v6 = _LTOSLogLID();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __51___LTLanguageDetector_forceLanguageDetectionResult__block_invoke_cold_1();
        }
      }

      else
      {
        v7 = [v3[8] objectEnumerator];
        v8 = [v7 nextObject];
        v9 = [v8 locale];

        v10 = _LTOSLogLID();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __51___LTLanguageDetector_forceLanguageDetectionResult__block_invoke_cold_2(v10, v9);
        }

        v11 = objc_alloc(MEMORY[0x277CE1B08]);
        v16 = v9;
        v17[0] = &unk_284868248;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        v13 = [v11 initWithConfidences:v12 isConfident:objc_msgSend(v3 dominantLanguage:"isLowConfidencePair") ^ 1 isFinal:{v9, 1}];
        v14 = v3[17];
        v3[17] = v13;
      }

      [v3 sendLIDResult:*(*(a1 + 32) + 136)];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __94___LTLanguageDetector_languageDetectorDidDetectLanguageWithConfidence_confidence_isConfident___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[16];
    v5 = [objc_alloc(MEMORY[0x277CE1B08]) initWithConfidences:*(a1 + 32) isConfident:*(a1 + 56) dominantLanguage:*(a1 + 40) isFinal:0];
    [v4 addObject:v5];

    v6 = _LTOSLogLID();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __94___LTLanguageDetector_languageDetectorDidDetectLanguageWithConfidence_confidence_isConfident___block_invoke_cold_1();
    }

    [v3 sendFinalLanguageDetectionResult:0];
    if (*(v3 + 51) == 1 && (*(v3 + 52) & 1) == 0)
    {
      v7 = [v3[16] lastObject];
      [v3 sendLIDResult:v7];
    }
  }
}

void __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_cold_1(void **a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 locale];
  v5 = [v4 localeIdentifier];
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v6, v7, "Change in model-version triggers deletion of cached %{public}@ partial-confidences", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

void __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_cold_2(id *a1, void *a2, void **a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2;
  v7 = [v5 locale];
  v8 = [v7 localeIdentifier];
  v9 = [*a1 bestTranscription];
  [v9 confidence];
  v11 = v10;
  v12 = *a3;
  v13 = [*a1 locale];
  v14 = [v12 objectForKeyedSubscript:v13];
  v16 = 138543874;
  v17 = v8;
  v18 = 2048;
  v19 = v11;
  v20 = 2048;
  v21 = [v14 count];
  _os_log_debug_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEBUG, "Added %{public}@ partial-confidence: %f; new array length: %zu", &v16, 0x20u);

  v15 = *MEMORY[0x277D85DE8];
}

void __51___LTLanguageDetector_forceLanguageDetectionResult__block_invoke_cold_2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 _ltLocaleIdentifier];
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v5, v6, "Forcing language detection result to be %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

@end