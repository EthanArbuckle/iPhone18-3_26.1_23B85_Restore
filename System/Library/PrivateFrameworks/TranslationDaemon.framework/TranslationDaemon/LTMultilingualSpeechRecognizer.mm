@interface LTMultilingualSpeechRecognizer
@end

@implementation LTMultilingualSpeechRecognizer

void __76___LTMultilingualSpeechRecognizer_initWithModelURLs_modelVersions_taskHint___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [_LTSpeechRecognizer alloc];
  v8 = [*(a1 + 32) objectForKey:v6];
  v9 = [(_LTSpeechRecognizer *)v7 initWithModelURL:v5 language:v6 modelVersion:v8 taskHint:*(a1 + 48)];

  [*(a1 + 40) setObject:v9 forKeyedSubscript:v6];
}

void __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _LTOSLogSpeech();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_cold_1(v6, v8);
    }

    objc_storeStrong((*(*(a1 + 96) + 8) + 40), a3);
    v9 = *(a1 + 32);
    v10 = v9;
    v11 = *(a1 + 112);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = *(a1 + 40);
      *buf = 138543618;
      v49 = v12;
      v50 = 2112;
      v51 = v6;
      _os_signpost_emit_with_name_impl(&dword_232E53000, v10, OS_SIGNPOST_INTERVAL_END, v11, "ASR", "Failed ASR (%{public}@) with error: %@", buf, 0x16u);
    }

    if (v5)
    {
      v13 = *(a1 + 48);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_5;
      block[3] = &unk_2789B6D38;
      v46 = *(a1 + 88);
      v45 = v5;
      dispatch_async(v13, block);
    }

    dispatch_group_leave(*(a1 + 56));
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_cold_2(v8, v5);
    }

    if (*(a1 + 120) != 1 || ([v5 locale], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 64), "currentLocale"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqual:", v15), v15, v14, v16))
    {
      v17 = *(a1 + 48);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_7;
      v41[3] = &unk_2789B6D38;
      v43 = *(a1 + 88);
      v18 = v5;
      v42 = v18;
      dispatch_async(v17, v41);
      if ([v18 isFinal])
      {
        v35 = 0;
        v19 = _LTOSLogSpeech();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_cold_3();
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v20 = *(a1 + 72);
        v21 = [v20 countByEnumeratingWithState:&v37 objects:v47 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v38;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v38 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v37 + 1) + 8 * i);
              v26 = [v25 language];
              v27 = [*(a1 + 80) language];
              v28 = [v26 isEqual:v27];

              if ((v28 & 1) == 0)
              {
                [v25 triggerServerSideEndPointer];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v37 objects:v47 count:16];
          }

          while (v22);
        }

        v29 = *(a1 + 48);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_8;
        v36[3] = &unk_2789B57C0;
        v36[4] = *(a1 + 104);
        dispatch_async(v29, v36);
        v30 = *(a1 + 32);
        v31 = v30;
        v32 = *(a1 + 112);
        if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
        {
          v33 = *(a1 + 40);
          *buf = 138412290;
          v49 = v33;
          _os_signpost_emit_with_name_impl(&dword_232E53000, v31, OS_SIGNPOST_INTERVAL_END, v32, "ASR", "Completed ASR for %@", buf, 0xCu);
        }

        dispatch_group_leave(*(a1 + 56));
        v6 = v35;
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_10(void *a1)
{
  v2 = _LTOSLogSpeech();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_10_cold_1();
  }

  if (*(*(a1[5] + 8) + 40))
  {
    if (*(*(a1[6] + 8) + 24) <= 0)
    {
      (*(a1[4] + 16))();
    }
  }
}

void __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Recognition error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_cold_2(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 locale];
  v5 = [v4 _ltLocaleIdentifier];
  v6 = [a2 bestTranscription];
  v7 = [v6 formattedString];
  v9 = 138543619;
  v10 = v5;
  v11 = 2117;
  v12 = v7;
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "ASR result (%{public}@): %{sensitive}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end