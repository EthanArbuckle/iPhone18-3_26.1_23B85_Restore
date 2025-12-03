@interface _LTLanguageDetector
- (BOOL)forceLanguageDetectionResult;
- (BOOL)haveAtLeastOneFinalASRResult;
- (BOOL)haveFinalASRResults;
- (BOOL)isLowConfidencePair;
- (_LTLanguageDetector)initWithSelfLoggingManager:(id)manager;
- (void)addSpeechAudioData:(id)data;
- (void)addSpeechRecognitionResult:(id)result;
- (void)endAudio;
- (void)languageDetectorDidDetectLanguageWithConfidence:(id)confidence confidence:(id)a4 isConfident:(BOOL)confident;
- (void)sendFinalLanguageDetectionResult:(BOOL)result;
- (void)sendLIDResult:(id)result;
- (void)startLanguageDetectionWithContext:(id)context delegate:(id)delegate;
@end

@implementation _LTLanguageDetector

- (_LTLanguageDetector)initWithSelfLoggingManager:(id)manager
{
  managerCopy = manager;
  v40.receiver = self;
  v40.super_class = _LTLanguageDetector;
  v6 = [(_LTLanguageDetector *)&v40 init];
  v7 = v6;
  if (v6)
  {
    v6->_samplingRate = 16000.0;
    v6->_audioBitDepth = 2;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    acousticResults = v7->_acousticResults;
    v7->_acousticResults = v8;

    lastResult = v7->_lastResult;
    v7->_lastResult = 0;

    v7->_havePartialASRConfidences = 0;
    *&v7->_endAudioCalled = 0;
    partialSpeechResultConfidences = v7->_partialSpeechResultConfidences;
    v7->_partialSpeechResultConfidences = 0;

    finalSpeechResults = v7->_finalSpeechResults;
    v7->_finalSpeechResults = 0;

    modelVersions = v7->_modelVersions;
    v7->_modelVersions = 0;

    v7->_minimumAcousticLanguageDetectorResults = _LTPreferencesMinimumAcousticLanguageDetectionResults();
    v7->_maximumAcousticLanguageDetectorResults = _LTPreferencesMaximumAcousticLanguageDetectionResults();
    v14 = _LTOSLogLID();
    v7->_lidSignpostID = os_signpost_id_generate(v14);
    v15 = dispatch_queue_create("com.apple.translation.lid.result", 0);
    resultQueue = v7->_resultQueue;
    v7->_resultQueue = v15;

    v17 = dispatch_queue_create("com.apple.translation.lid.finalResult", 0);
    finalResultWaitQueue = v7->_finalResultWaitQueue;
    v7->_finalResultWaitQueue = v17;

    v19 = objc_alloc_init(_LTOfflineAssetManager);
    v39 = 0;
    v20 = [(_LTOfflineAssetManager *)v19 languageDetectorAssetWithError:&v39];
    v21 = v39;
    if (v21)
    {
      v22 = _LTOSLogLID();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [_LTLanguageDetector initWithSelfLoggingManager:];
      }

      v23 = 0;
    }

    else
    {
      v42 = 0;
      v43 = &v42;
      v44 = 0x2050000000;
      v24 = getCSLanguageDetectorClass_softClass;
      v45 = getCSLanguageDetectorClass_softClass;
      if (!getCSLanguageDetectorClass_softClass)
      {
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __getCSLanguageDetectorClass_block_invoke;
        v41[3] = &unk_2789B57C0;
        v41[4] = &v42;
        __getCSLanguageDetectorClass_block_invoke(v41);
        v24 = v43[3];
      }

      v25 = v24;
      _Block_object_dispose(&v42, 8);
      v26 = [v24 alloc];
      languageDetectorModelURL = [v20 languageDetectorModelURL];
      v28 = [v26 initWithModelURL:languageDetectorModelURL];
      csLanguageDetector = v7->_csLanguageDetector;
      v7->_csLanguageDetector = v28;

      [(CSLanguageDetector *)v7->_csLanguageDetector setDelegate:v7];
      v30 = [_LTLanguageDetectorFeatureCombinationModel alloc];
      featureCombinationConfigUrl = [v20 featureCombinationConfigUrl];
      v32 = [(_LTLanguageDetectorFeatureCombinationModel *)v30 initWithConfig:featureCombinationConfigUrl];
      featureCombinationModel = v7->_featureCombinationModel;
      v7->_featureCombinationModel = v32;

      v7->_featureCombinationModelSupported = 0;
      objc_storeStrong(&v7->_selfLoggingManager, manager);
      v34 = objc_alloc(MEMORY[0x277CBEB98]);
      v35 = _LTPreferencesGetLanguageDetectorUnsupportedPairs();
      v36 = [v34 initWithArray:v35];
      lowConfidenceLanguagePairs = v7->_lowConfidenceLanguagePairs;
      v7->_lowConfidenceLanguagePairs = v36;

      v23 = v7;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)startLanguageDetectionWithContext:(id)context delegate:(id)delegate
{
  v59 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  objc_storeStrong(&self->_context, context);
  objc_storeWeak(&self->_delegate, delegateCopy);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  acousticResults = self->_acousticResults;
  self->_acousticResults = v9;

  lastResult = self->_lastResult;
  self->_lastResult = 0;

  self->_havePartialASRConfidences = 0;
  *&self->_endAudioCalled = 0;
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  partialSpeechResultConfidences = self->_partialSpeechResultConfidences;
  self->_partialSpeechResultConfidences = v12;

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = self->_partialSpeechResultConfidences;
  localePair = [contextCopy localePair];
  sourceLocale = [localePair sourceLocale];
  [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:sourceLocale];

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = self->_partialSpeechResultConfidences;
  localePair2 = [contextCopy localePair];
  targetLocale = [localePair2 targetLocale];
  [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:targetLocale];

  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  finalSpeechResults = self->_finalSpeechResults;
  self->_finalSpeechResults = v22;

  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  modelVersions = self->_modelVersions;
  self->_modelVersions = v24;

  if ([contextCopy autodetectLanguage])
  {
    v26 = _LTOSLogLID();
    v27 = v26;
    lidSignpostID = self->_lidSignpostID;
    if (lidSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232E53000, v27, OS_SIGNPOST_INTERVAL_BEGIN, lidSignpostID, "LID", "Start", buf, 2u);
    }

    if ([contextCopy lidThreshold] < 0)
    {
      localePair3 = [contextCopy localePair];
      self->_sourceLocaleConfidenceThreshold = _LTPreferencesLanguageDetectorThresholdsForLocale(localePair3);

      localePair4 = [contextCopy localePair];
      reversedPair = [localePair4 reversedPair];
      self->_targetLocaleConfidenceThreshold = _LTPreferencesLanguageDetectorThresholdsForLocale(reversedPair);

      v35 = _LTOSLogLID();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        sourceLocaleConfidenceThreshold = self->_sourceLocaleConfidenceThreshold;
        targetLocaleConfidenceThreshold = self->_targetLocaleConfidenceThreshold;
        *buf = 134218240;
        *&buf[4] = sourceLocaleConfidenceThreshold;
        *&buf[12] = 2048;
        *&buf[14] = targetLocaleConfidenceThreshold;
        _os_log_impl(&dword_232E53000, v35, OS_LOG_TYPE_INFO, "Confidence thresholds for source %f and target %f", buf, 0x16u);
      }

      if ((self->_sourceLocaleConfidenceThreshold + self->_targetLocaleConfidenceThreshold) <= 1.0)
      {
        v38 = _LTOSLogLID();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [_LTLanguageDetector startLanguageDetectionWithContext:delegate:];
        }
      }
    }

    else
    {
      v29 = _LTOSLogLID();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = v29;
        lidThreshold = [contextCopy lidThreshold];
        *buf = 134217984;
        *&buf[4] = lidThreshold;
        _os_log_impl(&dword_232E53000, v30, OS_LOG_TYPE_INFO, "Overriding confidence thresholds, setting to %ld", buf, 0xCu);
      }

      self->_sourceLocaleConfidenceThreshold = [contextCopy lidThreshold] / 1000.0;
      self->_targetLocaleConfidenceThreshold = [contextCopy lidThreshold] / 1000.0;
    }

    localePair5 = [contextCopy localePair];
    sourceLocale2 = [localePair5 sourceLocale];
    _ltCsLocaleIdentifier = [sourceLocale2 _ltCsLocaleIdentifier];

    localePair6 = [contextCopy localePair];
    targetLocale2 = [localePair6 targetLocale];
    _ltCsLocaleIdentifier2 = [targetLocale2 _ltCsLocaleIdentifier];

    v52 = 0;
    v53 = &v52;
    v54 = 0x2050000000;
    v45 = getCSLanguageDetectorOptionClass_softClass;
    v55 = getCSLanguageDetectorOptionClass_softClass;
    if (!getCSLanguageDetectorOptionClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCSLanguageDetectorOptionClass_block_invoke;
      v57 = &unk_2789B57C0;
      v58 = &v52;
      __getCSLanguageDetectorOptionClass_block_invoke(buf);
      v45 = v53[3];
    }

    v46 = v45;
    _Block_object_dispose(&v52, 8);
    v47 = objc_alloc_init(v45);
    samplingRate = self->_samplingRate;
    *&samplingRate = samplingRate;
    [v47 setSamplingRate:samplingRate];
    v49 = [MEMORY[0x277CBEB98] setWithObjects:{_ltCsLocaleIdentifier, _ltCsLocaleIdentifier2, 0, v52}];
    [v47 setDictationLanguages:v49];

    [(CSLanguageDetector *)self->_csLanguageDetector resetForNewRequest:v47];
    if (self->_featureCombinationModel)
    {
      localePair7 = [contextCopy localePair];
      self->_featureCombinationModelSupported = _LTPreferencesLanguageDetectorFeatureCombinationModelSupportedForLocale(localePair7);
    }

    else
    {
      self->_featureCombinationModelSupported = 0;
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)sendLIDResult:(id)result
{
  v20 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  dispatch_assert_queue_V2(self->_resultQueue);
  if (!self->_finalLIDResultSent)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      self->_finalLIDResultSent = [resultCopy isFinal];
      v7 = _LTOSLogLID();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = v7;
        if ([resultCopy isFinal])
        {
          v9 = @"final";
        }

        else
        {
          v9 = @"intermediate";
        }

        dominantLanguage = [resultCopy dominantLanguage];
        _ltLocaleIdentifier = [dominantLanguage _ltLocaleIdentifier];
        v14 = 138543874;
        v15 = v9;
        v16 = 2114;
        v17 = _ltLocaleIdentifier;
        v18 = 1024;
        isConfident = [resultCopy isConfident];
        _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Sending out new %{public}@ LID result, detected %{public}@, confident %{BOOL}i", &v14, 0x1Cu);
      }

      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 languageDetectionResult:resultCopy];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)haveFinalASRResults
{
  dispatch_assert_queue_V2(self->_resultQueue);
  finalSpeechResults = self->_finalSpeechResults;
  localePair = [(_LTTranslationContext *)self->_context localePair];
  sourceLocale = [localePair sourceLocale];
  v6 = [(NSMutableDictionary *)finalSpeechResults objectForKey:sourceLocale];

  v7 = self->_finalSpeechResults;
  localePair2 = [(_LTTranslationContext *)self->_context localePair];
  targetLocale = [localePair2 targetLocale];
  v10 = [(NSMutableDictionary *)v7 objectForKey:targetLocale];

  if (v6)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;

  return v12;
}

- (BOOL)haveAtLeastOneFinalASRResult
{
  dispatch_assert_queue_V2(self->_resultQueue);
  finalSpeechResults = self->_finalSpeechResults;
  localePair = [(_LTTranslationContext *)self->_context localePair];
  sourceLocale = [localePair sourceLocale];
  v6 = [(NSMutableDictionary *)finalSpeechResults objectForKey:sourceLocale];

  v7 = self->_finalSpeechResults;
  localePair2 = [(_LTTranslationContext *)self->_context localePair];
  targetLocale = [localePair2 targetLocale];
  v10 = [(NSMutableDictionary *)v7 objectForKey:targetLocale];

  return (v6 | v10) != 0;
}

- (void)sendFinalLanguageDetectionResult:(BOOL)result
{
  resultCopy = result;
  v36 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_resultQueue);
  if (self->_finalLIDResultSent)
  {
    goto LABEL_2;
  }

  lastResult = self->_lastResult;
  self->_lastResult = 0;

  haveFinalASRResults = [(_LTLanguageDetector *)self haveFinalASRResults];
  haveAtLeastOneFinalASRResult = [(_LTLanguageDetector *)self haveAtLeastOneFinalASRResult];
  if (self->_havePartialASRConfidences)
  {
    v9 = haveAtLeastOneFinalASRResult;
    v10 = [(NSMutableArray *)self->_acousticResults count]>= self->_minimumAcousticLanguageDetectorResults || v9;
    if ((((haveFinalASRResults || self->_endAudioCalled) | v10) & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (!haveFinalASRResults)
  {
    goto LABEL_2;
  }

  self->_useFinalThresholds |= (haveFinalASRResults || resultCopy) | ([(NSMutableArray *)self->_acousticResults count]>= self->_maximumAcousticLanguageDetectorResults);
  v11 = _LTOSLogLID();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    acousticResults = self->_acousticResults;
    v13 = v11;
    v14 = [(NSMutableArray *)acousticResults count];
    v15 = &stru_284834138;
    if (self->_havePartialASRConfidences)
    {
      v16 = @", partial ASR confidences";
    }

    else
    {
      v16 = &stru_284834138;
    }

    *buf = 134218498;
    v31 = v14;
    v32 = 2114;
    v33 = v16;
    if (haveFinalASRResults)
    {
      v15 = @", final ASR results";
    }

    v34 = 2114;
    v35 = v15;
    _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_INFO, "Computing new LID result, with %zu acoustic results%{public}@%{public}@", buf, 0x20u);
  }

  featureCombinationModel = self->_featureCombinationModel;
  context = self->_context;
  v19 = self->_acousticResults;
  partialSpeechResultConfidences = self->_partialSpeechResultConfidences;
  finalSpeechResults = self->_finalSpeechResults;
  modelVersions = self->_modelVersions;
  useFinalThresholds = self->_useFinalThresholds;
  LOBYTE(v29) = [(_LTLanguageDetector *)self isLowConfidencePair];
  v24 = [(_LTLanguageDetectorFeatureCombinationModel *)featureCombinationModel estimateLanguage:context languageDetectionResults:v19 partialSpeechResultConfidences:partialSpeechResultConfidences finalSpeechResults:finalSpeechResults modelVersions:modelVersions useFinalThresholds:useFinalThresholds isLowConfidencePair:v29];
  v25 = self->_lastResult;
  self->_lastResult = v24;

  v26 = self->_lastResult;
  if (v26)
  {
    if (!self->_havePartialASRConfidences)
    {
      if (!haveFinalASRResults)
      {
        goto LABEL_2;
      }

LABEL_26:
      [(_LTLanguageDetectionResult *)v26 setIsFinal:1];
      [(_LTLanguageDetector *)self sendLIDResult:self->_lastResult];
      [(_LTLanguageDetector *)self endAudio];
      goto LABEL_2;
    }

    isConfident = [(_LTLanguageDetectionResult *)v26 isConfident];
    if ([(NSMutableArray *)self->_acousticResults count]>= self->_maximumAcousticLanguageDetectorResults)
    {
      v28 = 1;
    }

    else
    {
      v28 = isConfident;
    }

    if (((haveFinalASRResults | v28) & 1) != 0 || resultCopy)
    {
      v26 = self->_lastResult;
      goto LABEL_26;
    }
  }

LABEL_2:
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addSpeechRecognitionResult:(id)result
{
  resultCopy = result;
  if ([(_LTTranslationContext *)self->_context autodetectLanguage])
  {
    objc_initWeak(&location, self);
    resultQueue = self->_resultQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke;
    block[3] = &unk_2789B5288;
    objc_copyWeak(&v8, &location);
    v7 = resultCopy;
    dispatch_async(resultQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)addSpeechAudioData:(id)data
{
  v11 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy && [(_LTTranslationContext *)self->_context autodetectLanguage])
  {
    if (self->_finalLIDResultSent)
    {
      v5 = _LTOSLogLID();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [_LTLanguageDetector addSpeechAudioData:];
      }
    }

    else
    {
      v6 = [dataCopy length] / self->_audioBitDepth;
      v7 = _LTOSLogLID();
      if (os_signpost_enabled(v7))
      {
        v9 = 134217984;
        v10 = v6;
        _os_signpost_emit_with_name_impl(&dword_232E53000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LID Audio Data", "NumSamples: %ld", &v9, 0xCu);
      }

      [(CSLanguageDetector *)self->_csLanguageDetector addSamples:dataCopy numSamples:v6];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)endAudio
{
  if (!self->_endAudioCalled)
  {
    if ([(_LTTranslationContext *)self->_context autodetectLanguage])
    {
      [(CSLanguageDetector *)self->_csLanguageDetector endAudio];
    }

    objc_initWeak(&location, self);
    resultQueue = self->_resultQueue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __31___LTLanguageDetector_endAudio__block_invoke;
    v4[3] = &unk_2789B53F0;
    objc_copyWeak(&v5, &location);
    dispatch_async(resultQueue, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (BOOL)forceLanguageDetectionResult
{
  selfCopy = self;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, self);
  resultQueue = selfCopy->_resultQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51___LTLanguageDetector_forceLanguageDetectionResult__block_invoke;
  v5[3] = &unk_2789B64C0;
  objc_copyWeak(&v6, &location);
  v5[4] = selfCopy;
  v5[5] = &v8;
  dispatch_sync(resultQueue, v5);
  LOBYTE(selfCopy) = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return selfCopy;
}

- (BOOL)isLowConfidencePair
{
  if (_LTPreferencesDebugForceLowConfidenceLID())
  {
    return 1;
  }

  lowConfidenceLanguagePairs = self->_lowConfidenceLanguagePairs;
  localePair = [(_LTTranslationContext *)self->_context localePair];
  canonicalLocalePair = [localePair canonicalLocalePair];
  LOBYTE(lowConfidenceLanguagePairs) = [(NSSet *)lowConfidenceLanguagePairs containsObject:canonicalLocalePair];

  return lowConfidenceLanguagePairs;
}

- (void)languageDetectorDidDetectLanguageWithConfidence:(id)confidence confidence:(id)a4 isConfident:(BOOL)confident
{
  v56 = *MEMORY[0x277D85DE8];
  confidenceCopy = confidence;
  v7 = a4;
  v8 = _LTOSLogLID();
  if (os_signpost_enabled(v8))
  {
    *buf = 138412290;
    v51 = v7;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CS-LID Result", "confidence: %@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  localePair = [(_LTTranslationContext *)self->_context localePair];
  sourceLocale = [localePair sourceLocale];
  _ltCsLocaleIdentifier = [sourceLocale _ltCsLocaleIdentifier];
  v13 = [v7 objectForKeyedSubscript:_ltCsLocaleIdentifier];

  if (!v13)
  {
    goto LABEL_9;
  }

  localePair2 = [(_LTTranslationContext *)self->_context localePair];
  sourceLocale2 = [localePair2 sourceLocale];
  [dictionary setObject:v13 forKeyedSubscript:sourceLocale2];

  [v13 floatValue];
  if (v16 < self->_sourceLocaleConfidenceThreshold || ([v13 floatValue], v17 == 0.5))
  {
LABEL_9:
    sourceLocale3 = 0;
    v21 = 0;
  }

  else
  {
    localePair3 = [(_LTTranslationContext *)self->_context localePair];
    sourceLocale3 = [localePair3 sourceLocale];

    v20 = _LTOSLogLID();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [_LTLanguageDetector languageDetectorDidDetectLanguageWithConfidence:v20 confidence:v13 isConfident:&self->_sourceLocaleConfidenceThreshold];
    }

    v21 = 1;
  }

  localePair4 = [(_LTTranslationContext *)self->_context localePair];
  targetLocale = [localePair4 targetLocale];
  _ltCsLocaleIdentifier2 = [targetLocale _ltCsLocaleIdentifier];
  v25 = [v7 objectForKeyedSubscript:_ltCsLocaleIdentifier2];

  if (!v25)
  {
    goto LABEL_15;
  }

  localePair5 = [(_LTTranslationContext *)self->_context localePair];
  targetLocale2 = [localePair5 targetLocale];
  [dictionary setObject:v25 forKeyedSubscript:targetLocale2];

  [v25 floatValue];
  if (v28 < self->_targetLocaleConfidenceThreshold || ([v25 floatValue], v29 == 0.5))
  {
LABEL_15:
    if (!v21)
    {
      goto LABEL_18;
    }

    targetLocale3 = sourceLocale3;
  }

  else
  {
    localePair6 = [(_LTTranslationContext *)self->_context localePair];
    targetLocale3 = [localePair6 targetLocale];

    v32 = _LTOSLogLID();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [_LTLanguageDetector languageDetectorDidDetectLanguageWithConfidence:v32 confidence:v25 isConfident:&self->_targetLocaleConfidenceThreshold];
    }
  }

  v21 = ![(_LTLanguageDetector *)self isLowConfidencePair];
  sourceLocale3 = targetLocale3;
LABEL_18:
  v33 = _LTOSLogLID();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v41 = v33;
    localeIdentifier = [sourceLocale3 localeIdentifier];
    *buf = 138543874;
    v51 = localeIdentifier;
    v52 = 1024;
    v53 = v21;
    v54 = 2114;
    v55 = v7;
    _os_log_debug_impl(&dword_232E53000, v41, OS_LOG_TYPE_DEBUG, "Acoustic LID detected %{public}@ (confident: %{BOOL}i): %{public}@", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  resultQueue = self->_resultQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94___LTLanguageDetector_languageDetectorDidDetectLanguageWithConfidence_confidence_isConfident___block_invoke;
  block[3] = &unk_2789B64E8;
  objc_copyWeak(&v48, buf);
  v35 = dictionary;
  v46 = v35;
  v49 = v21;
  v36 = sourceLocale3;
  v47 = v36;
  dispatch_async(resultQueue, block);
  v37 = _LTOSLogLID();
  v38 = v37;
  lidSignpostID = self->_lidSignpostID;
  if (lidSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *v44 = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v38, OS_SIGNPOST_INTERVAL_BEGIN, lidSignpostID, "LID", "End", v44, 2u);
  }

  objc_destroyWeak(&v48);
  objc_destroyWeak(buf);

  v40 = *MEMORY[0x277D85DE8];
}

- (void)languageDetectorDidDetectLanguageWithConfidence:(void *)a1 confidence:(void *)a2 isConfident:(float *)a3 .cold.1(void *a1, void *a2, float *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [a2 floatValue];
  v6 = *a3;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4_0(&dword_232E53000, v7, v8, "Confident in source language (%lf) with threshold %lf", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)languageDetectorDidDetectLanguageWithConfidence:(void *)a1 confidence:(void *)a2 isConfident:(float *)a3 .cold.2(void *a1, void *a2, float *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [a2 floatValue];
  v6 = *a3;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4_0(&dword_232E53000, v7, v8, "Confident in target language (%lf) with threshold %lf", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

@end