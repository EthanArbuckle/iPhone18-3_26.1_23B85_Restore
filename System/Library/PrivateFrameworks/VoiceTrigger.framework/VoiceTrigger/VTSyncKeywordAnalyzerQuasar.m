@interface VTSyncKeywordAnalyzerQuasar
+ (id)_phToPhIdMapFromTriggerTokensArray:(id)a3;
+ (void)dumpEARSpeechRecognitionResults:(id)a3;
- (VTSyncKeywordAnalyzerQuasar)initWithConfigPath:(id)a3 triggerTokensArray:(id)a4 preventDuplicatedReset:(BOOL)a5 memoryLock:(BOOL)a6;
- (id)_getAnalyzedResults:(id)a3;
- (id)getAnalyzedResultsFromFloatAudioBuffer:(id)a3 numSamples:(unint64_t)a4;
- (id)getAnalyzedResultsFromInt16AudioBuffer:(id)a3 numSamples:(unint64_t)a4;
- (id)getResultsFromFlushedAudio;
- (void)reset;
@end

@implementation VTSyncKeywordAnalyzerQuasar

- (id)_getAnalyzedResults:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  if (self->_numPhrases)
  {
    v5 = 0;
    do
    {
      v6 = [[VTSyncKeywordAnalyzerQuasarResult alloc] initWithConfidence:-1000.0];
      [v4 addObject:v6];

      ++v5;
    }

    while (v5 < self->_numPhrases);
  }

  v32 = self;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v31;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v8)
  {
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v33 + 1) + 8 * v10) tokens];
        v12 = [v11 lastObject];

        if (!v12 || ([v12 tokenName], v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 == 0, v13, v14))
        {
          v28 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v38 = v12;
            _os_log_error_impl(&dword_223A31000, v28, OS_LOG_TYPE_ERROR, "Invalid token : %{public}@", buf, 0xCu);
          }
        }

        else
        {
          phToPhIdMap = v32->_phToPhIdMap;
          v16 = [v12 tokenName];
          v17 = [(NSDictionary *)phToPhIdMap objectForKeyedSubscript:v16];
          v18 = [v17 unsignedIntegerValue];

          v19 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v38 = v18;
            v39 = 2114;
            v40 = v12;
            _os_log_impl(&dword_223A31000, v19, OS_LOG_TYPE_DEFAULT, "%tu, token = %{public}@", buf, 0x16u);
          }

          if (v18 >= [v4 count])
          {
            v29 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              LODWORD(v38) = v18;
              _os_log_error_impl(&dword_223A31000, v29, OS_LOG_TYPE_ERROR, "Unable to handle: %d", buf, 8u);
            }
          }

          else
          {
            v20 = [v4 objectAtIndex:v18];
            [v20 triggerConfidence];
            v22 = v21;

            [v12 confidence];
            v24 = v23;
            v25 = [v4 objectAtIndexedSubscript:v18];
            v26 = v25;
            if (v24 >= v22)
            {
              v27 = v24;
            }

            else
            {
              v27 = v22;
            }

            [v25 setTriggerConfidence:v27];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)getAnalyzedResultsFromInt16AudioBuffer:(id)a3 numSamples:(unint64_t)a4
{
  v6 = a3;
  self->_requireReset = 1;
  v7 = [(_EARSyncSpeechRecognizer *)self->_syncRecognizer resultsWithAddedAudio:v6 numberOfSamples:a4 taskName:&stru_28370C9A8];
  v8 = [(VTSyncKeywordAnalyzerQuasar *)self _getAnalyzedResults:v7];

  return v8;
}

- (id)getAnalyzedResultsFromFloatAudioBuffer:(id)a3 numSamples:(unint64_t)a4
{
  v6 = a3;
  self->_requireReset = 1;
  v7 = [(_EARSyncSpeechRecognizer *)self->_syncRecognizer resultsWithAddedFloatAudio:v6 numberOfSamples:a4 taskName:&stru_28370C9A8];
  v8 = [(VTSyncKeywordAnalyzerQuasar *)self _getAnalyzedResults:v7];

  return v8;
}

- (id)getResultsFromFlushedAudio
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, &unk_223B261F6, buf, 2u);
  }

  v4 = [(_EARSyncSpeechRecognizer *)self->_syncRecognizer resultsWithEndedAudio];
  v5 = [(VTSyncKeywordAnalyzerQuasar *)self _getAnalyzedResults:v4];

  return v5;
}

- (void)reset
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, &unk_223B261F6, buf, 2u);
  }

  if (self->_requireReset)
  {
    LODWORD(v5) = 120;
    LOBYTE(v4) = 0;
    [(_EARSyncSpeechRecognizer *)self->_syncRecognizer resetWithSamplingRate:16000 language:&stru_28370C9A8 taskType:@"Dictation" userId:&stru_28370C9A8 sessionId:&stru_28370C9A8 deviceId:&stru_28370C9A8 farField:v4 audioSource:&stru_28370C9A8 maxAudioBufferSizeSeconds:v5];
    if (self->_preventDuplicatedReset)
    {
      self->_requireReset = 0;
    }
  }
}

- (VTSyncKeywordAnalyzerQuasar)initWithConfigPath:(id)a3 triggerTokensArray:(id)a4 preventDuplicatedReset:(BOOL)a5 memoryLock:(BOOL)a6
{
  v6 = a6;
  v30 = *MEMORY[0x277D85DE8];
  v10 = COERCE_DOUBLE(a3);
  v11 = a4;
  v27.receiver = self;
  v27.super_class = VTSyncKeywordAnalyzerQuasar;
  v12 = [(VTSyncKeywordAnalyzerQuasar *)&v27 init];
  if (v12)
  {
    v13 = [VTSyncKeywordAnalyzerQuasar _phToPhIdMapFromTriggerTokensArray:v11];
    phToPhIdMap = v12->_phToPhIdMap;
    v12->_phToPhIdMap = v13;

    v12->_numPhrases = [v11 count];
    v12->_preventDuplicatedReset = a5;
    v15 = [MEMORY[0x277CCAC38] processInfo];
    [v15 systemUptime];
    v17 = v16;

    v18 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v10;
      _os_log_impl(&dword_223A31000, v18, OS_LOG_TYPE_DEFAULT, "Initializing Quasar with config: %{public}@", buf, 0xCu);
    }

    v19 = [objc_alloc(MEMORY[0x277D07280]) initWithConfiguration:*&v10 memoryLock:v6];
    syncRecognizer = v12->_syncRecognizer;
    v12->_syncRecognizer = v19;

    v21 = [MEMORY[0x277CCAC38] processInfo];
    [v21 systemUptime];
    v23 = v22;

    v12->_requireReset = 1;
    v24 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v29 = (v23 - v17) * 1000.0;
      _os_log_impl(&dword_223A31000, v24, OS_LOG_TYPE_DEFAULT, "Speech model loading took %{public}.3fms", buf, 0xCu);
    }
  }

  v25 = v12;

  return v25;
}

+ (void)dumpEARSpeechRecognitionResults:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v3)
  {
    v16 = 0;
    v17 = *v24;
    *&v4 = 134217984;
    v14 = v4;
    do
    {
      v5 = 0;
      v18 = v3;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * v5);
        v7 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v29 = v16;
          _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Res-%lu: ", buf, 0xCu);
          ++v16;
        }

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = [v6 tokens];
        v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = *v20;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v20 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = VTLogContextFacilityVoiceTrigger;
              if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
              {
                v13 = *(*(&v19 + 1) + 8 * i);
                *buf = 138412290;
                v29 = v13;
                _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "tok=%@", buf, 0xCu);
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v18);
      v3 = [obj countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v3);
  }
}

+ (id)_phToPhIdMapFromTriggerTokensArray:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i < [v3 count]; ++i)
  {
    v6 = [v3 objectAtIndexedSubscript:i];
    v7 = [v6 componentsSeparatedByString:@"_"];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v15 + 1) + 8 * j);
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
          [v4 setObject:v13 forKey:v12];
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return v4;
}

@end