@interface VTKeywordAnalyzerQuasar
- (VTKeywordAnalyzerQuasar)initWithConfigPath:(id)path triggerTokens:(id)tokens useKeywordSpotting:(BOOL)spotting;
- (VTKeywordAnalyzerQuasarScoreDelegate)delegate;
- (double)_getConfidence:(id)confidence;
- (id)_phIdToCtcScoreMap;
- (void)dealloc;
- (void)endAudio;
- (void)processAudioBuffer:(id)buffer numSamples:(unint64_t)samples;
- (void)reset;
- (void)runRecognition;
- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error;
- (void)speechRecognizer:(id)recognizer didRecognizeFinalResults:(id)results;
- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result;
@end

@implementation VTKeywordAnalyzerQuasar

- (VTKeywordAnalyzerQuasarScoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_getConfidence:(id)confidence
{
  confidenceCopy = confidence;
  v5 = confidenceCopy;
  v6 = 0.0;
  if (confidenceCopy && self->_triggerTokenList)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0x3FF0000000000000;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__VTKeywordAnalyzerQuasar__getConfidence___block_invoke;
    v8[3] = &unk_2784EC9A8;
    v8[4] = self;
    v8[5] = &v9;
    [confidenceCopy enumerateObjectsUsingBlock:v8];
    v6 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

void __42__VTKeywordAnalyzerQuasar__getConfidence___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(*(a1 + 32) + 24) count] > a3)
  {
    v6 = [v5 tokenName];
    v7 = [*(*(a1 + 32) + 24) objectAtIndex:a3];
    v8 = [v6 caseInsensitiveCompare:v7];

    if (v8)
    {
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) * 0.0;
    }
  }

  v9 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 tokenName];
    v11 = [v10 UTF8String];
    [v5 confidence];
    v13 = 134349570;
    v14 = a3;
    v15 = 2080;
    v16 = v11;
    v17 = 2050;
    v18 = v12;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "EAR Token[%{public}lu]: %s (%{public}f)", &v13, 0x20u);
  }
}

- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__VTKeywordAnalyzerQuasar_speechRecognizer_didFinishRecognitionWithError___block_invoke;
  v8[3] = &unk_2784ED118;
  v9 = errorCopy;
  selfCopy = self;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

void __74__VTKeywordAnalyzerQuasar_speechRecognizer_didFinishRecognitionWithError___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v23 = a1;
  if (*(a1 + 32))
  {
    v1 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v22 = [*(v23 + 32) description];
      *buf = 136446210;
      v29 = [v22 UTF8String];
      _os_log_error_impl(&dword_223A31000, v1, OS_LOG_TYPE_ERROR, "ERROR: %{public}s\n", buf, 0xCu);
    }

    a1 = v23;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(*(a1 + 40) + 16);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v3)
  {
    v4 = *v25;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v7 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 tokenName];
          [v6 confidence];
          *buf = 138412802;
          v29 = v8;
          v30 = 2048;
          v31 = v9;
          v32 = 2112;
          v33 = v6;
          _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "CTC: Final-tok: %@(%f):%@", buf, 0x20u);
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v3);
  }

  v10 = v23;
  v11 = *(v23 + 40);
  if (*(v11 + 48) == 1)
  {
    if (*(v23 + 32))
    {
      *(v11 + 64) = 0xC08F400000000000;
      goto LABEL_22;
    }

    v14 = [*(v11 + 16) lastObject];
    [v14 confidence];
    *(*(v23 + 40) + 64) = v15;

    goto LABEL_21;
  }

  if (*(v11 + 24))
  {
    v12 = [*(v11 + 16) count];
    v10 = v23;
    if (v12 >= [*(*(v23 + 40) + 24) count])
    {
      [*(v23 + 40) _getConfidence:*(*(v23 + 40) + 16)];
      *(*(v23 + 40) + 64) = v13;
LABEL_21:
      v10 = v23;
    }
  }

LABEL_22:
  v16 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(v10 + 40) + 64);
    *buf = 134349056;
    v29 = v17;
    _os_log_impl(&dword_223A31000, v16, OS_LOG_TYPE_DEFAULT, "Final result confidence: %{public}f", buf, 0xCu);
  }

  v18 = +[VTPreferences sharedPreferences];
  v19 = [v18 isMphVTEnabled];

  if (v19)
  {
    v20 = [*(v23 + 40) _phIdToCtcScoreMap];
  }

  else
  {
    v20 = 0;
  }

  WeakRetained = objc_loadWeakRetained((*(v23 + 40) + 80));
  [WeakRetained keywordAnalyzerQuasar:*(v23 + 40) hasResultAvailable:v20 forChannel:*(*(v23 + 40) + 72)];
}

- (id)_phIdToCtcScoreMap
{
  v43 = *MEMORY[0x277D85DE8];
  p_ctcKwdToPhIdMap = &self->_ctcKwdToPhIdMap;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](self->_ctcKwdToPhIdMap, "count")}];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *p_ctcKwdToPhIdMap;
  v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v5)
  {
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSDictionary *)self->_ctcKwdToPhIdMap objectForKeyedSubscript:*(*(&v33 + 1) + 8 * i)];
        [v4 setObject:&unk_2837155A8 forKey:v8];
      }

      v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v5);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obja = self->_previousUtteranceTokens;
  v9 = [(NSMutableArray *)obja countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v9)
  {
    v11 = *v30;
    *&v10 = 138543618;
    v26 = v10;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obja);
        }

        v13 = *(*(&v29 + 1) + 8 * j);
        ctcKwdToPhIdMap = self->_ctcKwdToPhIdMap;
        tokenName = [v13 tokenName];
        v16 = [(NSDictionary *)ctcKwdToPhIdMap objectForKeyedSubscript:tokenName];

        v17 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v26;
          v38 = v16;
          v39 = 2114;
          v40 = v13;
          _os_log_impl(&dword_223A31000, v17, OS_LOG_TYPE_DEFAULT, "MpVT: phId=%{public}@, tok=%{public}@", buf, 0x16u);
        }

        v18 = [v4 objectForKey:v16];
        v19 = v18;
        if (!v18 || ([v18 floatValue], v21 = v20, objc_msgSend(v13, "confidence"), v22 > v21))
        {
          v23 = MEMORY[0x277CCABB0];
          [v13 confidence];
          v24 = [v23 numberWithDouble:?];
          [v4 setObject:v24 forKey:v16];
        }
      }

      v9 = [(NSMutableArray *)obja countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v9);
  }

  return v4;
}

- (void)speechRecognizer:(id)recognizer didRecognizeFinalResults:(id)results
{
  resultsCopy = results;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__VTKeywordAnalyzerQuasar_speechRecognizer_didRecognizeFinalResults___block_invoke;
  v8[3] = &unk_2784ED118;
  v9 = resultsCopy;
  selfCopy = self;
  v7 = resultsCopy;
  dispatch_async(queue, v8);
}

void __69__VTKeywordAnalyzerQuasar_speechRecognizer_didRecognizeFinalResults___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = [*(a1 + 32) firstObject];
  [v16 tokens];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v2 = v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v3)
  {
    v4 = *v18;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = +[VTPreferences sharedPreferences];
        v9 = [v8 isMphVTEnabled];

        v6 = *(a1 + 40);
        if (!v9)
        {
          goto LABEL_5;
        }

        v10 = *(v6 + 24);
        v11 = [v7 tokenName];
        LODWORD(v10) = [v10 containsObject:v11];

        v12 = VTLogContextFacilityVoiceTrigger;
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          if (v13)
          {
            v14 = [v7 tokenName];
            *buf = 138543362;
            v22 = v14;
            _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "CTC: Adding tok=%{public}@", buf, 0xCu);
          }

          v6 = *(a1 + 40);
LABEL_5:
          [*(v6 + 16) addObject:v7];
          continue;
        }

        if (v13)
        {
          v15 = [v7 tokenName];
          *buf = 138543362;
          v22 = v15;
          _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "CTC: Ignoring tok=%{public}@", buf, 0xCu);
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v3);
  }
}

- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result
{
  resultCopy = result;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__VTKeywordAnalyzerQuasar_speechRecognizer_didRecognizePartialResult___block_invoke;
  v8[3] = &unk_2784ED118;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(queue, v8);
}

void __70__VTKeywordAnalyzerQuasar_speechRecognizer_didRecognizePartialResult___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 24))
  {
    v2 = [*(a1 + 40) tokens];
    v3 = [v2 count];
    v4 = [*(*(a1 + 32) + 24) count];

    if (v3 >= v4)
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) tokens];
      [v5 _getConfidence:v6];
      *(*(a1 + 32) + 64) = v7;

      v8 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(a1 + 32) + 64);
        v11 = 134349056;
        v12 = v9;
        _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "Partial result confidence: %{public}f", &v11, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
      [WeakRetained keywordAnalyzerQuasar:*(a1 + 32) hasResultAvailable:0 forChannel:*(*(a1 + 32) + 72)];
    }
  }
}

- (void)processAudioBuffer:(id)buffer numSamples:(unint64_t)samples
{
  bufferCopy = buffer;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__VTKeywordAnalyzerQuasar_processAudioBuffer_numSamples___block_invoke;
  block[3] = &unk_2784EC980;
  block[4] = self;
  v10 = bufferCopy;
  samplesCopy = samples;
  v8 = bufferCopy;
  dispatch_async(queue, block);
}

uint64_t __57__VTKeywordAnalyzerQuasar_processAudioBuffer_numSamples___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bytes];
  v4 = *(a1 + 48);

  return [v2 _recognizeWavData:v3 length:v4];
}

- (void)endAudio
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, &unk_223B261F6, buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__VTKeywordAnalyzerQuasar_endAudio__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)runRecognition
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, &unk_223B261F6, buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__VTKeywordAnalyzerQuasar_runRecognition__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __41__VTKeywordAnalyzerQuasar_runRecognition__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = [*(*(a1 + 32) + 32) runRecognitionWithResultStream:?];

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, &unk_223B261F6, buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = VTKeywordAnalyzerQuasar;
  [(VTKeywordAnalyzerQuasar *)&v4 dealloc];
}

- (void)reset
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, &unk_223B261F6, buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__VTKeywordAnalyzerQuasar_reset__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __32__VTKeywordAnalyzerQuasar_reset__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = -1000.0;
  if (!*(v1 + 48))
  {
    v2 = 0.0;
  }

  *(v1 + 64) = v2;
  return [*(*(a1 + 32) + 16) removeAllObjects];
}

- (VTKeywordAnalyzerQuasar)initWithConfigPath:(id)path triggerTokens:(id)tokens useKeywordSpotting:(BOOL)spotting
{
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  tokensCopy = tokens;
  v27.receiver = self;
  v27.super_class = VTKeywordAnalyzerQuasar;
  v10 = [(VTKeywordAnalyzerQuasar *)&v27 init];
  if (v10)
  {
    v11 = dispatch_queue_create("com.apple.transcribe.Transcriber", 0);
    v12 = *(v10 + 1);
    *(v10 + 1) = v11;

    v13 = *(v10 + 1);
    v14 = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(v13, v14);

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = *(v10 + 2);
    *(v10 + 2) = v15;

    *(v10 + 8) = 0;
    v17 = [tokensCopy componentsSeparatedByString:@"_"];
    v18 = *(v10 + 3);
    *(v10 + 3) = v17;

    v19 = *(v10 + 3);
    if (v19)
    {
      v20 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = v19;
        _os_log_impl(&dword_223A31000, v20, OS_LOG_TYPE_DEFAULT, "Transcriber trigger token list: %{public}@", buf, 0xCu);
      }
    }

    v21 = *(v10 + 5);
    *(v10 + 5) = 0;

    *(v10 + 48) = spotting;
    v22 = *(v10 + 1);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __79__VTKeywordAnalyzerQuasar_initWithConfigPath_triggerTokens_useKeywordSpotting___block_invoke;
    v24[3] = &unk_2784ED118;
    v25 = pathCopy;
    v26 = v10;
    dispatch_async(v22, v24);
  }

  return v10;
}

void __79__VTKeywordAnalyzerQuasar_initWithConfigPath_triggerTokens_useKeywordSpotting___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC38] processInfo];
  [v2 systemUptime];
  v4 = v3;

  v5 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "Initializing Quasar with config: %{public}@", &v14, 0xCu);
  }

  v7 = [objc_alloc(MEMORY[0x277D07270]) initWithConfiguration:*(a1 + 32)];
  v8 = *(a1 + 40);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  v10 = [MEMORY[0x277CCAC38] processInfo];
  [v10 systemUptime];
  v12 = v11;

  v13 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134349056;
    v15 = (v12 - v4) * 1000.0;
    _os_log_impl(&dword_223A31000, v13, OS_LOG_TYPE_DEFAULT, "Speech model loading took %{public}.3fms", &v14, 0xCu);
  }
}

@end