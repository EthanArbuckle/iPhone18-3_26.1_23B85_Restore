@interface _LTMultilingualSpeechRecognizer
- (_LTMultilingualSpeechRecognizer)initWithModelURLs:(id)a3 modelVersions:(id)a4 taskHint:(int64_t)a5;
- (void)addSpeechAudioData:(id)a3;
- (void)cancelRecognition;
- (void)endAudio;
- (void)setLanguagesRecognized:(id)a3;
- (void)startRecognitionForLocale:(id)a3 autoEndpoint:(BOOL)a4 enableStreamingSpeechTranslation:(BOOL)a5 enableMultiFieldInput:(BOOL)a6 resultHandler:(id)a7;
@end

@implementation _LTMultilingualSpeechRecognizer

- (_LTMultilingualSpeechRecognizer)initWithModelURLs:(id)a3 modelVersions:(id)a4 taskHint:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = _LTMultilingualSpeechRecognizer;
  v10 = [(_LTMultilingualSpeechRecognizer *)&v21 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __76___LTMultilingualSpeechRecognizer_initWithModelURLs_modelVersions_taskHint___block_invoke;
    v17[3] = &unk_2789B6D10;
    v18 = v9;
    v20 = a5;
    v12 = v11;
    v19 = v12;
    [v8 enumerateKeysAndObjectsUsingBlock:v17];
    recognizers = v10->_recognizers;
    v10->_recognizers = v12;
    v14 = v12;

    v15 = v10;
  }

  return v10;
}

- (void)startRecognitionForLocale:(id)a3 autoEndpoint:(BOOL)a4 enableStreamingSpeechTranslation:(BOOL)a5 enableMultiFieldInput:(BOOL)a6 resultHandler:(id)a7
{
  v44 = a4;
  v45 = a5;
  v85 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v46 = a7;
  v48 = self;
  objc_storeStrong(&self->_currentLocale, a3);
  self->_enableMultiFieldInput = a6;
  v49 = [MEMORY[0x277CBEB18] array];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v10 = [(NSDictionary *)self->_recognizers allKeys];
  v11 = [v10 countByEnumeratingWithState:&v72 objects:v84 count:16];
  if (v11)
  {
    v12 = *v73;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v73 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v72 + 1) + 8 * i) localeIdentifier];
        [v49 addObject:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v72 objects:v84 count:16];
    }

    while (v11);
  }

  v15 = _LTOSLogSpeech();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v43 localeIdentifier];
    *buf = 138543618;
    *&buf[4] = v17;
    *&buf[12] = 2114;
    *&buf[14] = v49;
    _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_DEFAULT, "Starting recognition with locale %{public}@, recognizers: %{public}@", buf, 0x16u);
  }

  recognizers = v48->_recognizers;
  if (v43)
  {
    v19 = [(NSDictionary *)recognizers objectForKeyedSubscript:?];
    v83 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
  }

  else
  {
    v20 = [(NSDictionary *)recognizers allValues];
  }

  v21 = dispatch_queue_create("com.apple.multilingualrecognition.results", 0);
  v22 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v80 = __Block_byref_object_copy__8;
  v81 = __Block_byref_object_dispose__8;
  v82 = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x2020000000;
  v71[3] = 0;
  v23 = _LTOSLogSpeech();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v20 count];
    *v77 = 134217984;
    v78 = v24;
    _os_log_impl(&dword_232E53000, v23, OS_LOG_TYPE_DEFAULT, "Starting recognition for %zu recognizers", v77, 0xCu);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v25 = v20;
  v26 = [v25 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v26)
  {
    v27 = *v68;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v68 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v67 + 1) + 8 * j);
        dispatch_group_enter(v22);
        v30 = [v29 language];
        v31 = [v30 localeIdentifier];

        v32 = _LTOSLogSpeech();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *v77 = 138543362;
          v78 = v31;
          _os_log_impl(&dword_232E53000, v32, OS_LOG_TYPE_DEFAULT, "Starting recognizer: %{public}@", v77, 0xCu);
        }

        v33 = _LTOSLogSpeech();
        v34 = os_signpost_id_generate(v33);
        v35 = v33;
        v36 = v35;
        if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
        {
          *v77 = 138543362;
          v78 = v31;
          _os_signpost_emit_with_name_impl(&dword_232E53000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "ASR", "Starting ASR for %{public}@", v77, 0xCu);
        }

        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke;
        v54[3] = &unk_2789B6D60;
        v63 = buf;
        v37 = v36;
        v55 = v37;
        v65 = v34;
        v38 = v31;
        v56 = v38;
        v57 = v21;
        v62 = v46;
        v39 = v22;
        v66 = a6;
        v58 = v39;
        v59 = v48;
        v40 = v25;
        v60 = v40;
        v61 = v29;
        v64 = v71;
        [v29 startRecognitionWithAutoStop:v44 enableStreamingSpeechTranslation:v45 resultHandler:v54];
      }

      v26 = [v40 countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v26);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_10;
  block[3] = &unk_2789B6D88;
  v52 = buf;
  v53 = v71;
  v51 = v46;
  v41 = v46;
  dispatch_group_notify(v22, v21, block);

  _Block_object_dispose(v71, 8);
  _Block_object_dispose(buf, 8);

  v42 = *MEMORY[0x277D85DE8];
}

- (void)addSpeechAudioData:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NSDictionary *)self->_recognizers allValues];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (self->_enableMultiFieldInput)
        {
          v11 = [*(*(&v15 + 1) + 8 * v9) language];
          if ([v11 isEqual:self->_currentLocale])
          {
            v12 = v4;
          }

          else
          {
            v12 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v4, "length")}];
          }

          v13 = v12;

          [v10 addSpeechAudioData:v13];
        }

        else
        {
          [*(*(&v15 + 1) + 8 * v9) addSpeechAudioData:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)endAudio
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogSpeech();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_LTMultilingualSpeechRecognizer endAudio];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(NSDictionary *)self->_recognizers allValues];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) endAudio];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelRecognition
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(NSDictionary *)self->_recognizers allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) cancelRecognition];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setLanguagesRecognized:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _LTOSLogSpeech();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_LTMultilingualSpeechRecognizer setLanguagesRecognized:];
  }

  if ([v4 isFinal] && objc_msgSend(v4, "isConfident"))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [(NSDictionary *)self->_recognizers allValues];
    v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 language];
          v12 = [v11 _ltLocaleIdentifier];
          v13 = [v4 dominantLanguage];
          v14 = [v13 _ltLocaleIdentifier];
          v15 = [v12 isEqualToString:v14];

          if ((v15 & 1) == 0)
          {
            v16 = _LTOSLogSpeech();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              [(_LTMultilingualSpeechRecognizer *)v23 setLanguagesRecognized:v16, v10, &v24];
            }

            [v10 cancelRecognition];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v7);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setLanguagesRecognized:(void *)a3 .cold.2(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 language];
  v9 = [v8 _ltLocaleIdentifier];
  *a1 = 138543362;
  *a4 = v9;
  _os_log_debug_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEBUG, "Trying to cancel recognition for %{public}@", a1, 0xCu);
}

@end