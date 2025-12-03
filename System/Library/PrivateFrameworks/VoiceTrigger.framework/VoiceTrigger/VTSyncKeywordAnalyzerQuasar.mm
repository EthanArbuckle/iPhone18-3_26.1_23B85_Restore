@interface VTSyncKeywordAnalyzerQuasar
+ (id)_phToPhIdMapFromTriggerTokensArray:(id)array;
+ (void)dumpEARSpeechRecognitionResults:(id)results;
- (VTSyncKeywordAnalyzerQuasar)initWithConfigPath:(id)path triggerTokensArray:(id)array preventDuplicatedReset:(BOOL)reset memoryLock:(BOOL)lock;
- (id)_getAnalyzedResults:(id)results;
- (id)getAnalyzedResultsFromFloatAudioBuffer:(id)buffer numSamples:(unint64_t)samples;
- (id)getAnalyzedResultsFromInt16AudioBuffer:(id)buffer numSamples:(unint64_t)samples;
- (id)getResultsFromFlushedAudio;
- (void)reset;
@end

@implementation VTSyncKeywordAnalyzerQuasar

- (id)_getAnalyzedResults:(id)results
{
  v42 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  array = [MEMORY[0x277CBEB18] array];
  if (self->_numPhrases)
  {
    v5 = 0;
    do
    {
      v6 = [[VTSyncKeywordAnalyzerQuasarResult alloc] initWithConfidence:-1000.0];
      [array addObject:v6];

      ++v5;
    }

    while (v5 < self->_numPhrases);
  }

  selfCopy = self;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = resultsCopy;
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

        tokens = [*(*(&v33 + 1) + 8 * v10) tokens];
        lastObject = [tokens lastObject];

        if (!lastObject || ([lastObject tokenName], v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 == 0, v13, v14))
        {
          v28 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v38 = lastObject;
            _os_log_error_impl(&dword_223A31000, v28, OS_LOG_TYPE_ERROR, "Invalid token : %{public}@", buf, 0xCu);
          }
        }

        else
        {
          phToPhIdMap = selfCopy->_phToPhIdMap;
          tokenName = [lastObject tokenName];
          v17 = [(NSDictionary *)phToPhIdMap objectForKeyedSubscript:tokenName];
          unsignedIntegerValue = [v17 unsignedIntegerValue];

          v19 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v38 = unsignedIntegerValue;
            v39 = 2114;
            v40 = lastObject;
            _os_log_impl(&dword_223A31000, v19, OS_LOG_TYPE_DEFAULT, "%tu, token = %{public}@", buf, 0x16u);
          }

          if (unsignedIntegerValue >= [array count])
          {
            v29 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              LODWORD(v38) = unsignedIntegerValue;
              _os_log_error_impl(&dword_223A31000, v29, OS_LOG_TYPE_ERROR, "Unable to handle: %d", buf, 8u);
            }
          }

          else
          {
            v20 = [array objectAtIndex:unsignedIntegerValue];
            [v20 triggerConfidence];
            v22 = v21;

            [lastObject confidence];
            v24 = v23;
            v25 = [array objectAtIndexedSubscript:unsignedIntegerValue];
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

  return array;
}

- (id)getAnalyzedResultsFromInt16AudioBuffer:(id)buffer numSamples:(unint64_t)samples
{
  bufferCopy = buffer;
  self->_requireReset = 1;
  v7 = [(_EARSyncSpeechRecognizer *)self->_syncRecognizer resultsWithAddedAudio:bufferCopy numberOfSamples:samples taskName:&stru_28370C9A8];
  v8 = [(VTSyncKeywordAnalyzerQuasar *)self _getAnalyzedResults:v7];

  return v8;
}

- (id)getAnalyzedResultsFromFloatAudioBuffer:(id)buffer numSamples:(unint64_t)samples
{
  bufferCopy = buffer;
  self->_requireReset = 1;
  v7 = [(_EARSyncSpeechRecognizer *)self->_syncRecognizer resultsWithAddedFloatAudio:bufferCopy numberOfSamples:samples taskName:&stru_28370C9A8];
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

  resultsWithEndedAudio = [(_EARSyncSpeechRecognizer *)self->_syncRecognizer resultsWithEndedAudio];
  v5 = [(VTSyncKeywordAnalyzerQuasar *)self _getAnalyzedResults:resultsWithEndedAudio];

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

- (VTSyncKeywordAnalyzerQuasar)initWithConfigPath:(id)path triggerTokensArray:(id)array preventDuplicatedReset:(BOOL)reset memoryLock:(BOOL)lock
{
  lockCopy = lock;
  v30 = *MEMORY[0x277D85DE8];
  v10 = COERCE_DOUBLE(path);
  arrayCopy = array;
  v27.receiver = self;
  v27.super_class = VTSyncKeywordAnalyzerQuasar;
  v12 = [(VTSyncKeywordAnalyzerQuasar *)&v27 init];
  if (v12)
  {
    v13 = [VTSyncKeywordAnalyzerQuasar _phToPhIdMapFromTriggerTokensArray:arrayCopy];
    phToPhIdMap = v12->_phToPhIdMap;
    v12->_phToPhIdMap = v13;

    v12->_numPhrases = [arrayCopy count];
    v12->_preventDuplicatedReset = reset;
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v17 = v16;

    v18 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v10;
      _os_log_impl(&dword_223A31000, v18, OS_LOG_TYPE_DEFAULT, "Initializing Quasar with config: %{public}@", buf, 0xCu);
    }

    v19 = [objc_alloc(MEMORY[0x277D07280]) initWithConfiguration:*&v10 memoryLock:lockCopy];
    syncRecognizer = v12->_syncRecognizer;
    v12->_syncRecognizer = v19;

    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    [processInfo2 systemUptime];
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

+ (void)dumpEARSpeechRecognitionResults:(id)results
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = results;
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
        tokens = [v6 tokens];
        v9 = [tokens countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = *v20;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v20 != v10)
              {
                objc_enumerationMutation(tokens);
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

            v9 = [tokens countByEnumeratingWithState:&v19 objects:v27 count:16];
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

+ (id)_phToPhIdMapFromTriggerTokensArray:(id)array
{
  v20 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i < [arrayCopy count]; ++i)
  {
    v6 = [arrayCopy objectAtIndexedSubscript:i];
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
          [dictionary setObject:v13 forKey:v12];
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return dictionary;
}

@end