@interface _LTOfflineTranslationEngine
+ (BOOL)_needToWaitForBothFinalTranslationResultsWithContext:(id)context lidResult:(id)result;
- (BOOL)translatesPair:(id)pair;
- (_LTOfflineTranslationEngine)initWithLocalePair:(id)pair taskHint:(int64_t)hint assetInfo:(id)info selfLoggingManager:(id)manager;
- (id)_concatenatedAlignmentsFromSentences:(id)sentences;
- (id)_getBestRecognitionResult:(id)result context:(id)context;
- (id)_handleTranslationResults:(id)results withContext:(id)context sourceString:(id)string sourceSpans:(id)spans stabilizer:(id)stabilizer;
- (id)_paragraphResultFromSentences:(id)sentences;
- (void)_loadEtiquetteSanitizersForTaskHint:(int64_t)hint;
- (void)_loadRecognizersWithContext:(id)context;
- (void)_loadTranslatorForTask:(id)task;
- (void)_performCancelRecognition:(BOOL)recognition;
- (void)_translate:(id)_translate withContext:(id)context toLocale:(id)locale paragraphResult:(id)result completion:(id)completion;
- (void)_translateParagraph:(id)paragraph withContext:(id)context toLocale:(id)locale completion:(id)completion;
- (void)_translatePrepare:(id)prepare;
- (void)_translateString:(id)string isFinal:(BOOL)final withContext:(id)context toLocale:(id)locale withSpans:(id)spans stabilizer:(id)stabilizer completion:(id)completion;
- (void)_waitForLIDWithContext:(id)context completion:(id)completion;
- (void)addSpeechAudioData:(id)data;
- (void)cancelRecognition:(BOOL)recognition;
- (void)cancelSpeechTranslation:(BOOL)translation;
- (void)endAudio;
- (void)endpoint;
- (void)preheatAsynchronously:(BOOL)asynchronously withContext:(id)context;
- (void)setLanguagesRecognized:(id)recognized context:(id)context;
- (void)speak:(id)speak withContext:(id)context completion:(id)completion;
- (void)startSpeechTranslationWithContext:(id)context delegate:(id)delegate;
- (void)startTextToSpeechTranslationWithContext:(id)context text:(id)text delegate:(id)delegate;
- (void)translate:(id)translate withContext:(id)context paragraphResult:(id)result completion:(id)completion;
- (void)translateSentence:(id)sentence withContext:(id)context completion:(id)completion;
- (void)translateStreamingInput:(id)input context:(id)context stabilizer:(id)stabilizer completion:(id)completion;
@end

@implementation _LTOfflineTranslationEngine

- (_LTOfflineTranslationEngine)initWithLocalePair:(id)pair taskHint:(int64_t)hint assetInfo:(id)info selfLoggingManager:(id)manager
{
  pairCopy = pair;
  infoCopy = info;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = _LTOfflineTranslationEngine;
  v14 = [(_LTOfflineTranslationEngine *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_assetInfo, info);
    v16 = dispatch_queue_create("com.apple.siri.translation.offline", 0);
    queue = v15->_queue;
    v15->_queue = v16;

    objc_storeStrong(&v15->_callbackQueue, MEMORY[0x277D85CD0]);
    objc_storeStrong(&v15->_localePair, pair);
    v15->_taskHint = hint;
    v15->_isSpeechTranslationCancelled = 0;
    v15->_didEndpointSpeech = 0;
    objc_storeStrong(&v15->_selfLoggingManager, manager);
    v18 = v15;
  }

  return v15;
}

- (BOOL)translatesPair:(id)pair
{
  pairCopy = pair;
  if (([(_LTLocalePair *)self->_localePair isEqual:pairCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    localePair = self->_localePair;
    reversedPair = [pairCopy reversedPair];
    if (([(_LTLocalePair *)localePair isEqual:reversedPair]& 1) != 0)
    {
      v5 = 1;
    }

    else if ([pairCopy isPassthrough])
    {
      sourceLocale = [(_LTLocalePair *)self->_localePair sourceLocale];
      sourceLocale2 = [pairCopy sourceLocale];
      if ([sourceLocale isEqual:sourceLocale2])
      {
        v5 = 1;
      }

      else
      {
        targetLocale = [(_LTLocalePair *)self->_localePair targetLocale];
        sourceLocale3 = [pairCopy sourceLocale];
        v5 = [targetLocale isEqual:sourceLocale3];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_loadRecognizersWithContext:(id)context
{
  v57 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_earError && !self->_recognizer)
  {
    v5 = _LTOSLogTranslationEngine();
    v6 = os_signpost_id_generate(v5);
    v7 = v5;
    v8 = v7;
    v45 = v6 - 1;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232E53000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "LoadOfflineRecognizers", "Loading recognizers", buf, 2u);
    }

    spid = v6;
    v46 = v8;

    asrModelURLs = [(_LTOfflineTranslationEngine *)self asrModelURLs];
    v10 = asrModelURLs == 0;

    if (!v10)
    {
      v11 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        asrModelURLs2 = [(_LTOfflineTranslationEngine *)self asrModelURLs];
        [(_LTOfflineTranslationEngine *)asrModelURLs2 _loadRecognizersWithContext:v56];
      }
    }

    asrModelURLs3 = [(_LTOfflineTranslationEngine *)self asrModelURLs];
    if ([asrModelURLs3 count])
    {
      asrModelURLs4 = [(_LTOfflineTranslationEngine *)self asrModelURLs];
      [asrModelURLs4 objectAtIndexedSubscript:0];
    }

    else
    {
      assetInfo = self->_assetInfo;
      asrModelURLs4 = [(_LTLocalePair *)self->_localePair sourceLocale];
      -[_LTSpeechTranslationAssetInfo speechModelURLForLocale:taskHint:](assetInfo, "speechModelURLForLocale:taskHint:", asrModelURLs4, [contextCopy taskHint]);
    }
    v47 = ;

    asrModelURLs5 = [(_LTOfflineTranslationEngine *)self asrModelURLs];
    if ([asrModelURLs5 count] < 2)
    {
      v18 = self->_assetInfo;
      targetLocale = [(_LTLocalePair *)self->_localePair targetLocale];
      -[_LTSpeechTranslationAssetInfo speechModelURLForLocale:taskHint:](v18, "speechModelURLForLocale:taskHint:", targetLocale, [contextCopy taskHint]);
    }

    else
    {
      targetLocale = [(_LTOfflineTranslationEngine *)self asrModelURLs];
      [targetLocale objectAtIndexedSubscript:1];
    }
    v19 = ;

    v20 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      [contextCopy taskHint];
      v21 = _LTTranslationTaskHintString();
      *buf = 67110147;
      *v49 = v47 != 0;
      *&v49[4] = 1024;
      *&v49[6] = v19 != 0;
      v50 = 2113;
      v51 = v47;
      v52 = 2113;
      v53 = v19;
      v54 = 2114;
      v55 = v21;
      _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_DEFAULT, "Creating multi recognizer: got sourceModelURL %{BOOL}i got targetModelURL %{BOOL}i %{private}@, %{private}@, %{public}@", buf, 0x2Cu);
    }

    v22 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:MEMORY[0x277CBEC10]];
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v47)
    {
      sourceLocale = [(_LTLocalePair *)self->_localePair sourceLocale];
      [v22 setObject:v47 forKeyedSubscript:sourceLocale];

      v25 = self->_assetInfo;
      sourceLocale2 = [(_LTLocalePair *)self->_localePair sourceLocale];
      v27 = [(_LTSpeechTranslationAssetInfo *)v25 speechModelVersionForLocale:sourceLocale2];
      sourceLocale3 = [(_LTLocalePair *)self->_localePair sourceLocale];
      [v23 setObject:v27 forKeyedSubscript:sourceLocale3];
    }

    [contextCopy taskHint];
    v29 = _LTASRModelTaskString();
    v30 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      *v49 = v29;
      _os_log_impl(&dword_232E53000, v30, OS_LOG_TYPE_INFO, "Using model task name %{private}@", buf, 0xCu);
    }

    if (v19 && ([(_LTLocalePair *)self->_localePair isPassthrough]& 1) == 0)
    {
      [contextCopy autodetectLanguage];
      targetLocale2 = [(_LTLocalePair *)self->_localePair targetLocale];
      [v22 setObject:v19 forKeyedSubscript:targetLocale2];

      v32 = self->_assetInfo;
      targetLocale3 = [(_LTLocalePair *)self->_localePair targetLocale];
      v34 = [(_LTSpeechTranslationAssetInfo *)v32 speechModelVersionForLocale:targetLocale3];
      targetLocale4 = [(_LTLocalePair *)self->_localePair targetLocale];
      [v23 setObject:v34 forKeyedSubscript:targetLocale4];
    }

    v36 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      allValues = [v23 allValues];
      *buf = 138543362;
      *v49 = allValues;
      _os_log_impl(&dword_232E53000, v36, OS_LOG_TYPE_DEFAULT, "Offline modelVersions %{public}@", buf, 0xCu);
    }

    v38 = -[_LTMultilingualSpeechRecognizer initWithModelURLs:modelVersions:taskHint:]([_LTMultilingualSpeechRecognizer alloc], "initWithModelURLs:modelVersions:taskHint:", v22, v23, [contextCopy taskHint]);
    recognizer = self->_recognizer;
    self->_recognizer = v38;

    v40 = v46;
    v41 = v40;
    if (v45 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v40))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232E53000, v41, OS_SIGNPOST_INTERVAL_END, spida, "LoadOfflineRecognizers", "Finished loading recognizers", buf, 2u);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_loadEtiquetteSanitizersForTaskHint:(int64_t)hint
{
  v47 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_etiquetteSanitizers)
  {
    goto LABEL_31;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  etiquetteSanitizers = self->_etiquetteSanitizers;
  self->_etiquetteSanitizers = dictionary;

  v7 = _LTOSLogEtiquetteSanitizer();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  spid = v8;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "LoadOfflineSanitizers", "Loading etiquette sanitizers", buf, 2u);
  }

  asrModelURLs = [(_LTOfflineTranslationEngine *)self asrModelURLs];
  if ([asrModelURLs count])
  {
    asrModelURLs2 = [(_LTOfflineTranslationEngine *)self asrModelURLs];
    [asrModelURLs2 objectAtIndexedSubscript:0];
  }

  else
  {
    assetInfo = self->_assetInfo;
    asrModelURLs2 = [(_LTLocalePair *)self->_localePair sourceLocale];
    [(_LTSpeechTranslationAssetInfo *)assetInfo speechModelURLForLocale:asrModelURLs2 taskHint:hint];
  }
  v15 = ;

  asrModelURLs3 = [(_LTOfflineTranslationEngine *)self asrModelURLs];
  if ([asrModelURLs3 count] < 2)
  {
    v18 = self->_assetInfo;
    targetLocale = [(_LTLocalePair *)self->_localePair targetLocale];
    [(_LTSpeechTranslationAssetInfo *)v18 speechModelURLForLocale:targetLocale taskHint:hint];
  }

  else
  {
    targetLocale = [(_LTOfflineTranslationEngine *)self asrModelURLs];
    [targetLocale objectAtIndexedSubscript:1];
  }
  v19 = ;

  if (v15)
  {
    v20 = [_LTEtiquetteSanitizer alloc];
    sourceLocale = [(_LTLocalePair *)self->_localePair sourceLocale];
    v22 = [(_LTEtiquetteSanitizer *)v20 initWithModelURL:v15 language:sourceLocale];

    if (v19)
    {
      goto LABEL_13;
    }

LABEL_18:
    v25 = 0;
    if (v22)
    {
      goto LABEL_14;
    }

LABEL_19:
    localePair = _LTOSLogEtiquetteSanitizer();
    if (os_log_type_enabled(localePair, OS_LOG_TYPE_ERROR))
    {
      [(_LTLocalePair *)self->_localePair sourceLocale];
      [objc_claimAutoreleasedReturnValue() localeIdentifier];
      objc_claimAutoreleasedReturnValue();
      [_LTOfflineTranslationEngine _loadEtiquetteSanitizersForTaskHint:];
    }

    goto LABEL_21;
  }

  v22 = 0;
  if (!v19)
  {
    goto LABEL_18;
  }

LABEL_13:
  v23 = [_LTEtiquetteSanitizer alloc];
  targetLocale2 = [(_LTLocalePair *)self->_localePair targetLocale];
  v25 = [(_LTEtiquetteSanitizer *)v23 initWithModelURL:v19 language:targetLocale2];

  if (!v22)
  {
    goto LABEL_19;
  }

LABEL_14:
  v26 = _LTOSLogEtiquetteSanitizer();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    sourceLocale2 = [(_LTLocalePair *)self->_localePair sourceLocale];
    localeIdentifier = [sourceLocale2 localeIdentifier];
    *buf = 138543362;
    v46 = localeIdentifier;
    _os_log_impl(&dword_232E53000, v26, OS_LOG_TYPE_INFO, "loaded etiquette sanitizer for: %{public}@", buf, 0xCu);
  }

  v29 = self->_etiquetteSanitizers;
  localePair = [(_LTOfflineTranslationEngine *)self localePair];
  sourceLocale3 = [localePair sourceLocale];
  [(NSMutableDictionary *)v29 setObject:v22 forKeyedSubscript:sourceLocale3];

LABEL_21:
  if (v25)
  {
    v32 = _LTOSLogEtiquetteSanitizer();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      targetLocale3 = [(_LTLocalePair *)self->_localePair targetLocale];
      localeIdentifier2 = [targetLocale3 localeIdentifier];
      *v43 = 138543362;
      v44 = localeIdentifier2;
      _os_log_impl(&dword_232E53000, v32, OS_LOG_TYPE_INFO, "loaded etiquette sanitizer for: %{public}@", v43, 0xCu);
    }

    v35 = self->_etiquetteSanitizers;
    localePair2 = [(_LTOfflineTranslationEngine *)self localePair];
    targetLocale4 = [localePair2 targetLocale];
    [(NSMutableDictionary *)v35 setObject:v25 forKeyedSubscript:targetLocale4];
  }

  else
  {
    localePair2 = _LTOSLogEtiquetteSanitizer();
    if (os_log_type_enabled(localePair2, OS_LOG_TYPE_ERROR))
    {
      [(_LTLocalePair *)self->_localePair targetLocale];
      [objc_claimAutoreleasedReturnValue() localeIdentifier];
      objc_claimAutoreleasedReturnValue();
      [_LTOfflineTranslationEngine _loadEtiquetteSanitizersForTaskHint:];
    }
  }

  v38 = v10;
  v39 = v38;
  if (v11 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v38))
  {
    *v42 = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v39, OS_SIGNPOST_INTERVAL_END, spid, "LoadOfflineSanitizers", "Finished loading etiquette sanitizers", v42, 2u);
  }

LABEL_31:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)_loadTranslatorForTask:(id)task
{
  v40[1] = *MEMORY[0x277D85DE8];
  taskCopy = task;
  dispatch_assert_queue_V2(self->_queue);
  p_localePair = &self->_localePair;
  if ([(_LTLocalePair *)self->_localePair isPassthrough])
  {
    v6 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Offline translation is a passthrough, skip translator load", buf, 2u);
    }

    goto LABEL_26;
  }

  if (self->_earError || self->_translator)
  {
    goto LABEL_26;
  }

  v7 = _LTOSLogTranslationEngine();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "LoadOfflineTranslator", "Loading translator", buf, 2u);
  }

  v32 = v10;

  lt_appGroupDefaults = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  lt_mtCustomModel = [lt_appGroupDefaults lt_mtCustomModel];

  if (lt_mtCustomModel)
  {
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:lt_mtCustomModel];
    v13 = v12;
    if (v12)
    {
      v40[0] = v12;
      translationModelURLs = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
      v14 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v36 = translationModelURLs;
        _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Offline translation using custom model URLs: %{public}@", buf, 0xCu);
      }

      goto LABEL_20;
    }
  }

  mtModelURL = [(_LTOfflineTranslationEngine *)self mtModelURL];
  v16 = mtModelURL == 0;

  if (v16)
  {
    translationModelURLs = [(_LTSpeechTranslationAssetInfo *)self->_assetInfo translationModelURLs];
    v18 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v36 = translationModelURLs;
      v19 = "Offline translation using asset info model URLs: %{public}@";
      goto LABEL_18;
    }
  }

  else
  {
    mtModelURL2 = [(_LTOfflineTranslationEngine *)self mtModelURL];
    v39 = mtModelURL2;
    translationModelURLs = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];

    v18 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v36 = translationModelURLs;
      v19 = "Offline translation using context model URLs: %{public}@";
LABEL_18:
      _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_INFO, v19, buf, 0xCu);
    }
  }

  v13 = 0;
LABEL_20:
  v20 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    v36 = taskCopy;
    v37 = 2113;
    v38 = translationModelURLs;
    _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_INFO, "Creating translator with task %{public}@ model URL: %{private}@", buf, 0x16u);
  }

  v21 = [objc_alloc(MEMORY[0x277D07210]) initWithModelURLs:translationModelURLs task:taskCopy skipNonFinalToCatchup:1 translatorCacheSize:_LTPreferencesTranslationEngineCacheSize()];
  translator = self->_translator;
  self->_translator = v21;

  v23 = self->_translator;
  targetLocale = [(_LTLocalePair *)self->_localePair targetLocale];
  sourceLocale = [(_LTLocalePair *)*p_localePair sourceLocale];
  [(EMTTranslator *)v23 loadTranslatorFrom:targetLocale to:sourceLocale];

  v26 = self->_translator;
  sourceLocale2 = [(_LTLocalePair *)self->_localePair sourceLocale];
  targetLocale2 = [(_LTLocalePair *)*p_localePair targetLocale];
  [(EMTTranslator *)v26 loadTranslatorFrom:sourceLocale2 to:targetLocale2];

  v29 = v32;
  v30 = v29;
  if (v8 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v30, OS_SIGNPOST_INTERVAL_END, v8, "LoadOfflineTranslator", "Finished loading translator", buf, 2u);
  }

LABEL_26:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)preheatAsynchronously:(BOOL)asynchronously withContext:(id)context
{
  asynchronouslyCopy = asynchronously;
  contextCopy = context;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65___LTOfflineTranslationEngine_preheatAsynchronously_withContext___block_invoke;
  v10[3] = &unk_2789B7018;
  v10[4] = self;
  v7 = contextCopy;
  v11 = v7;
  v8 = MEMORY[0x238398770](v10);
  queue = self->_queue;
  if (asynchronouslyCopy)
  {
    dispatch_async(queue, v8);
  }

  else
  {
    dispatch_sync(queue, v8);
  }
}

- (id)_handleTranslationResults:(id)results withContext:(id)context sourceString:(id)string sourceSpans:(id)spans stabilizer:(id)stabilizer
{
  v54[1] = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  contextCopy = context;
  stringCopy = string;
  spansCopy = spans;
  stabilizerCopy = stabilizer;
  dispatch_assert_queue_V2(self->_queue);
  firstObject = [resultsCopy firstObject];
  locale = [firstObject locale];

  if (locale)
  {
    array = [MEMORY[0x277CBEB18] array];
    objc_initWeak(&location, self);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __105___LTOfflineTranslationEngine__handleTranslationResults_withContext_sourceString_sourceSpans_stabilizer___block_invoke;
    v43[3] = &unk_2789B7040;
    objc_copyWeak(&v48, &location);
    v18 = contextCopy;
    v44 = v18;
    v19 = locale;
    v45 = v19;
    v20 = stringCopy;
    v46 = v20;
    v40 = array;
    v47 = v40;
    v21 = [resultsCopy _ltCompactMap:v43];
    v22 = [MEMORY[0x277CE1C18] resultWithLocale:v19 translations:v21];
    [v22 setRoute:1];
    if (stabilizerCopy)
    {
      v23 = _LTOSLogSpeech();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v23, OS_LOG_TYPE_INFO, "Retaining stabilization info for streaming", buf, 2u);
      }

      firstObject2 = [resultsCopy firstObject];
      stableSegments = [firstObject2 stableSegments];
      [stabilizerCopy setStableSegments:stableSegments];
    }

    if ([spansCopy count])
    {
      firstObject3 = [resultsCopy firstObject];
      if (objc_opt_respondsToSelector())
      {
        targetProjections = [firstObject3 targetProjections];
        [v22 updateAlignmentWithSourceSpans:spansCopy offlineTargetSpans:targetProjections];
      }
    }

    if ([MEMORY[0x277CE1AE0] isGenderDisambiguationEnabled])
    {
      if ([v18 supportsGenderDisambiguation])
      {
        v28 = [v40 count];
        if (v28 == [v21 count])
        {
          v29 = [objc_alloc(MEMORY[0x277CE1AE8]) initWithSourceText:v20 targetPhrases:v40 selectedPhraseIndex:0];
          v30 = objc_alloc(MEMORY[0x277CE1AE0]);
          v54[0] = v29;
          v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
          v32 = [v30 initWithSentences:v31];

          v33 = _LTOSLogDisambiguation();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v51 = v32;
            _os_log_impl(&dword_232E53000, v33, OS_LOG_TYPE_INFO, "Created disambiguableResult from EMT result: %{public}@", buf, 0xCu);
          }

          [v22 setDisambiguableResult:v32];
        }

        else
        {
          v29 = _LTOSLogDisambiguation();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v36 = [v40 count];
            v37 = [v21 count];
            *buf = 134218240;
            v51 = v36;
            v52 = 2048;
            v53 = v37;
            _os_log_impl(&dword_232E53000, v29, OS_LOG_TYPE_INFO, "Not creating combined disambiguation result because only %zu out of %zu candidates could create disambiguation nodes", buf, 0x16u);
          }
        }
      }

      else
      {
        v35 = _LTOSLogDisambiguation();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [_LTOfflineTranslationEngine _handleTranslationResults:withContext:sourceString:sourceSpans:stabilizer:];
        }
      }
    }

    else
    {
      v34 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v34, OS_LOG_TYPE_INFO, "Not creating combined disambiguation result because the feature flag is off", buf, 2u);
      }
    }

    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }

  else
  {
    v22 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)_translateString:(id)string isFinal:(BOOL)final withContext:(id)context toLocale:(id)locale withSpans:(id)spans stabilizer:(id)stabilizer completion:(id)completion
{
  finalCopy = final;
  v83[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  contextCopy = context;
  localeCopy = locale;
  spansCopy = spans;
  stabilizerCopy = stabilizer;
  completionCopy = completion;
  val = self;
  v55 = stringCopy;
  v56 = contextCopy;
  v58 = completionCopy;
  dispatch_assert_queue_V2(self->_queue);
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v18 = [stringCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v54 = v18;
  if ([v18 length])
  {
    [contextCopy taskHint];
    v53 = _LTTranslationModelTaskString();
    [(_LTOfflineTranslationEngine *)self _loadTranslatorForTask:v53];
    if ([contextCopy censorSpeech])
    {
      -[_LTOfflineTranslationEngine _loadEtiquetteSanitizersForTaskHint:](self, "_loadEtiquetteSanitizersForTaskHint:", [contextCopy taskHint]);
    }

    if (self->_earError)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    else
    {
      localePair = [(_LTOfflineTranslationEngine *)self localePair];
      v51 = [localePair oppositeToLocale:localeCopy];

      v49 = [_LTAnalyticsEvent timedEventWithName:@"OfflineTextTranslation"];
      [v49 setSourceLocale:v51];
      [v49 setTargetLocale:localeCopy];
      v82 = @"sourceSentence";
      v83[0] = stringCopy;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:&v82 count:1];
      [v49 addFieldsFromDictionary:v21 internalOnly:1];

      v22 = _LTOSLogTranslationEngine();
      v23 = os_signpost_id_generate(v22);
      v24 = v22;
      v25 = v24;
      if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        LOWORD(buf[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_232E53000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "TranslateTokens", "Offline: Translating string", buf, 2u);
      }

      v50 = v25;

      if (spansCopy)
      {
        v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v26 = spansCopy;
        v27 = [v26 countByEnumeratingWithState:&v74 objects:v81 count:16];
        if (v27)
        {
          v28 = *v75;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v75 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = *(*(&v74 + 1) + 8 * i);
              v31 = objc_alloc(MEMORY[0x277D071F8]);
              identifier = [v30 identifier];
              range = [v30 range];
              v35 = [v31 initWithIdentifier:identifier range:range doNotTranslate:{v34, objc_msgSend(v30, "shouldTranslate") ^ 1}];
              [v62 addObject:v35];
            }

            v27 = [v26 countByEnumeratingWithState:&v74 objects:v81 count:16];
          }

          while (v27);
        }
      }

      else
      {
        v62 = 0;
      }

      objc_initWeak(buf, val);
      [(EMTTranslator *)val->_translator prepareFor:v51 to:localeCopy];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __109___LTOfflineTranslationEngine__translateString_isFinal_withContext_toLocale_withSpans_stabilizer_completion___block_invoke;
      v63[3] = &unk_2789B7090;
      objc_copyWeak(v72, buf);
      v36 = v50;
      v64 = v36;
      v72[1] = v23;
      v37 = v56;
      v65 = v37;
      v38 = v55;
      v66 = v38;
      v67 = spansCopy;
      v39 = stabilizerCopy;
      v68 = v39;
      v69 = localeCopy;
      v40 = v49;
      v70 = v40;
      v71 = v58;
      v41 = MEMORY[0x238398770](v63);
      v42 = objc_alloc_init(MEMORY[0x277D07208]);
      [v42 setEnableDisambiguationAlternatives:{objc_msgSend(v37, "supportsGenderDisambiguation")}];
      v43 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        supportsGenderDisambiguation = [v37 supportsGenderDisambiguation];
        *v79 = 67109120;
        v80 = supportsGenderDisambiguation;
        _os_log_impl(&dword_232E53000, v43, OS_LOG_TYPE_INFO, "Disambiguation: Offline engine is translating with enableDisambiguationAlternatives: %{BOOL}i", v79, 8u);
      }

      if (v39)
      {
        stabilizationState = [v39 stabilizationState];
        [v42 setStablePrefixState:stabilizationState];
      }

      translator = val->_translator;
      v78 = v38;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
      [(EMTTranslator *)translator translateTokens:v47 isFinal:finalCopy spans:v62 options:v42 completion:v41];

      objc_destroyWeak(v72);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v19 = [MEMORY[0x277CE1C18] resultWithLocale:localeCopy translations:MEMORY[0x277CBEBF8]];
    [v19 setRoute:1];
    (*(completionCopy + 2))(completionCopy, v19, 0);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (id)_paragraphResultFromSentences:(id)sentences
{
  v27[1] = *MEMORY[0x277D85DE8];
  sentencesCopy = sentences;
  firstObject = [sentencesCopy firstObject];
  locale = [firstObject locale];

  v6 = [sentencesCopy _ltCompactMap:&__block_literal_global_23];
  v20 = v6;
  v7 = [sentencesCopy _ltCompactMap:&__block_literal_global_45_0];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __61___LTOfflineTranslationEngine__paragraphResultFromSentences___block_invoke_3;
  v22[3] = &unk_2789B70D8;
  v22[4] = &v23;
  v8 = [sentencesCopy _ltCompactMap:v22];
  if (![v8 count])
  {

    v8 = 0;
  }

  v9 = [v6 componentsJoinedByString:@" "];
  if (*(v24 + 24) == 1)
  {
    v10 = [v8 componentsJoinedByString:@" "];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 componentsJoinedByString:@" "];
  v12 = [objc_alloc(MEMORY[0x277CE1BF8]) initWithFormattedString:v9 sanitizedFormattedString:v10 confidence:0 lowConfidence:v11 romanization:0 tokens:0 preToPostITN:1.0];
  v13 = MEMORY[0x277CE1C18];
  v27[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v15 = [v13 resultWithLocale:locale translations:v14];

  v16 = [MEMORY[0x277CE1AE0] combinedDisambiguableResultFromTranslationResults:sentencesCopy joinedWithString:@" "];
  [v15 setDisambiguableResult:v16];

  [v15 setRoute:1];
  v17 = [(_LTOfflineTranslationEngine *)self _concatenatedAlignmentsFromSentences:sentencesCopy];
  [v15 setAlignments:v17];

  _Block_object_dispose(&v23, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_concatenatedAlignmentsFromSentences:(id)sentences
{
  v36 = *MEMORY[0x277D85DE8];
  sentencesCopy = sentences;
  v24 = [sentencesCopy _ltCompactMap:&__block_literal_global_47];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [sentencesCopy count];
  if (v4 == [v24 count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = sentencesCopy;
    v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v23 = *v31;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          v25 = [v24 objectAtIndexedSubscript:v6];
          alignments = [v9 alignments];
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v11 = alignments;
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v12)
          {
            v13 = *v27;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v27 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v26 + 1) + 8 * j);
                targetRange = [v15 targetRange];
                [v15 setTargetRange:{targetRange + v7, v17}];
                [v3 addObject:v15];
              }

              v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v12);
          }

          v18 = [v25 length];
          v7 += v18 + 1;
          ++v6;
        }

        v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v5);
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_translateParagraph:(id)paragraph withContext:(id)context toLocale:(id)locale completion:(id)completion
{
  v38[2] = *MEMORY[0x277D85DE8];
  paragraphCopy = paragraph;
  contextCopy = context;
  localeCopy = locale;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  [contextCopy taskHint];
  v13 = _LTTranslationModelTaskString();
  [(_LTOfflineTranslationEngine *)self _loadTranslatorForTask:v13];
  if ([contextCopy censorSpeech])
  {
    -[_LTOfflineTranslationEngine _loadEtiquetteSanitizersForTaskHint:](self, "_loadEtiquetteSanitizersForTaskHint:", [contextCopy taskHint]);
  }

  splitIntoSentences = [paragraphCopy splitIntoSentences];
  if ([splitIntoSentences count])
  {
    objc_initWeak(&location, self);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __83___LTOfflineTranslationEngine__translateParagraph_withContext_toLocale_completion___block_invoke;
    v31[3] = &unk_2789B7128;
    objc_copyWeak(&v35, &location);
    v15 = paragraphCopy;
    v32 = v15;
    v16 = contextCopy;
    v33 = v16;
    v34 = localeCopy;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83___LTOfflineTranslationEngine__translateParagraph_withContext_toLocale_completion___block_invoke_2;
    v26[3] = &unk_2789B7150;
    objc_copyWeak(&v30, &location);
    v29 = completionCopy;
    v27 = v15;
    v28 = v16;
    [splitIntoSentences _ltSequentialMap:v31 completion:v26];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineTranslationEngine _translateParagraph:withContext:toLocale:completion:];
    }

    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = MEMORY[0x277CCA9B8];
    v37[0] = *MEMORY[0x277CCA450];
    v20 = [v18 localizedStringForKey:@"GENERIC_FAILURE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v38[0] = v20;
    v37[1] = *MEMORY[0x277CCA470];
    v21 = [v18 localizedStringForKey:@"INPUT_EMPTY_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v38[1] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v23 = [v19 errorWithDomain:*MEMORY[0x277CE1C58] code:3 userInfo:v22];

    (*(completionCopy + 2))(completionCopy, 0, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_translate:(id)_translate withContext:(id)context toLocale:(id)locale paragraphResult:(id)result completion:(id)completion
{
  _translateCopy = _translate;
  contextCopy = context;
  localeCopy = locale;
  resultCopy = result;
  completionCopy = completion;
  v25 = _translateCopy;
  dispatch_assert_queue_V2(self->_queue);
  v17 = [_LTAnalyticsEvent timedEventWithName:@"OfflineBatchTextTranslation"];
  localePair = [(_LTOfflineTranslationEngine *)self localePair];
  v19 = [localePair oppositeToLocale:localeCopy];
  [v17 setSourceLocale:v19];

  [v17 setTargetLocale:localeCopy];
  objc_initWeak(location, self);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __90___LTOfflineTranslationEngine__translate_withContext_toLocale_paragraphResult_completion___block_invoke;
  v29[3] = &unk_2789B71A0;
  objc_copyWeak(&v33, location);
  v20 = contextCopy;
  v30 = v20;
  v21 = localeCopy;
  v31 = v21;
  v22 = resultCopy;
  v32 = v22;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __90___LTOfflineTranslationEngine__translate_withContext_toLocale_paragraphResult_completion___block_invoke_60;
  v26[3] = &unk_2789B71C8;
  v23 = v17;
  v27 = v23;
  v24 = completionCopy;
  v28 = v24;
  [v25 _ltSequentialMap:v29 completion:{v26, resultCopy}];

  objc_destroyWeak(&v33);
  objc_destroyWeak(location);
}

- (void)translateStreamingInput:(id)input context:(id)context stabilizer:(id)stabilizer completion:(id)completion
{
  inputCopy = input;
  contextCopy = context;
  stabilizerCopy = stabilizer;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke;
  v19[3] = &unk_2789B7218;
  objc_copyWeak(&v24, &location);
  v20 = inputCopy;
  v21 = contextCopy;
  v22 = stabilizerCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = stabilizerCopy;
  v17 = contextCopy;
  v18 = inputCopy;
  dispatch_async(queue, v19);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)translateSentence:(id)sentence withContext:(id)context completion:(id)completion
{
  sentenceCopy = sentence;
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72___LTOfflineTranslationEngine_translateSentence_withContext_completion___block_invoke;
  v15[3] = &unk_2789B7218;
  objc_copyWeak(&v20, &location);
  v16 = contextCopy;
  selfCopy = self;
  v18 = sentenceCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = sentenceCopy;
  v14 = contextCopy;
  dispatch_async(queue, v15);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)translate:(id)translate withContext:(id)context paragraphResult:(id)result completion:(id)completion
{
  v36[2] = *MEMORY[0x277D85DE8];
  translateCopy = translate;
  contextCopy = context;
  resultCopy = result;
  completionCopy = completion;
  v14 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Translate text paragraphs (block completion handler) with offline engine", &buf, 2u);
  }

  if (![translateCopy count] || (objc_msgSend(translateCopy, "firstObject"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "text"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length") == 0, v16, v15, v17))
  {
    v19 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineTranslationEngine translate:withContext:paragraphResult:completion:];
    }

    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = MEMORY[0x277CCA9B8];
    v35[0] = *MEMORY[0x277CCA450];
    v22 = [v20 localizedStringForKey:@"GENERIC_FAILURE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v36[0] = v22;
    v35[1] = *MEMORY[0x277CCA470];
    v23 = [v20 localizedStringForKey:@"INPUT_EMPTY_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v36[1] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v25 = [v21 errorWithDomain:*MEMORY[0x277CE1C58] code:3 userInfo:v24];

    completionCopy[2](completionCopy, v25);
  }

  else
  {
    objc_initWeak(&buf, self);
    queue = self->_queue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __80___LTOfflineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke;
    v27[3] = &unk_2789B7268;
    objc_copyWeak(&v33, &buf);
    v28 = contextCopy;
    selfCopy = self;
    v30 = translateCopy;
    v31 = resultCopy;
    v32 = completionCopy;
    dispatch_async(queue, v27);

    objc_destroyWeak(&v33);
    objc_destroyWeak(&buf);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)cancelSpeechTranslation:(BOOL)translation
{
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Cancel speech translation with offline engine", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55___LTOfflineTranslationEngine_cancelSpeechTranslation___block_invoke;
  v7[3] = &unk_2789B7290;
  objc_copyWeak(&v8, buf);
  translationCopy = translation;
  dispatch_async(queue, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)addSpeechAudioData:(id)data
{
  dataCopy = data;
  if (!self->_didEndpointSpeech)
  {
    v5 = _LTOSLogSpeech();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Add audio to offline engine", buf, 2u);
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50___LTOfflineTranslationEngine_addSpeechAudioData___block_invoke;
    v7[3] = &unk_2789B72B8;
    objc_copyWeak(&v9, buf);
    v8 = dataCopy;
    dispatch_async(queue, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

- (void)endpoint
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39___LTOfflineTranslationEngine_endpoint__block_invoke;
  v4[3] = &unk_2789B72E0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

+ (BOOL)_needToWaitForBothFinalTranslationResultsWithContext:(id)context lidResult:(id)result
{
  contextCopy = context;
  resultCopy = result;
  if (([contextCopy autodetectLanguage] & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!resultCopy || ![resultCopy isConfident])
  {
    v12 = 1;
    goto LABEL_8;
  }

  if ([contextCopy forceSourceLocale])
  {
    dominantLanguage = [resultCopy dominantLanguage];
    _ltLocaleIdentifier = [dominantLanguage _ltLocaleIdentifier];
    localePair = [contextCopy localePair];
    sourceLocale = [localePair sourceLocale];
    _ltLocaleIdentifier2 = [sourceLocale _ltLocaleIdentifier];
    v12 = _ltLocaleIdentifier != _ltLocaleIdentifier2;
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

LABEL_8:

  return v12;
}

- (void)setLanguagesRecognized:(id)recognized context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  recognizedCopy = recognized;
  contextCopy = context;
  dominantLanguage = [recognizedCopy dominantLanguage];
  v9 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v21 = dominantLanguage;
    v22 = 1024;
    isConfident = [recognizedCopy isConfident];
    _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "Notified of LID result: %{public}@ is confident: %{BOOL}i", buf, 0x12u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62___LTOfflineTranslationEngine_setLanguagesRecognized_context___block_invoke;
  v15[3] = &unk_2789B7308;
  objc_copyWeak(&v19, buf);
  v16 = dominantLanguage;
  v17 = contextCopy;
  v18 = recognizedCopy;
  v11 = recognizedCopy;
  v12 = contextCopy;
  v13 = dominantLanguage;
  dispatch_async(queue, v15);

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
  v14 = *MEMORY[0x277D85DE8];
}

- (id)_getBestRecognitionResult:(id)result context:(id)context
{
  resultCopy = result;
  contextCopy = context;
  localePair = [contextCopy localePair];
  if ([contextCopy autodetectLanguage] && !objc_msgSend(contextCopy, "forceSourceLocale"))
  {
    lidResult = self->_lidResult;
    if (lidResult && -[_LTLanguageDetectionResult isFinal](lidResult, "isFinal") && ([resultCopy objectForKeyedSubscript:self->_lidBestResult], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v10 = [resultCopy objectForKeyedSubscript:self->_lidBestResult];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sourceLocale = [localePair sourceLocale];
    v10 = [resultCopy objectForKeyedSubscript:sourceLocale];
  }

  return v10;
}

- (void)_waitForLIDWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65___LTOfflineTranslationEngine__waitForLIDWithContext_completion___block_invoke;
  v11[3] = &unk_2789B7358;
  objc_copyWeak(&v14, &location);
  v12 = contextCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = contextCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)speak:(id)speak withContext:(id)context completion:(id)completion
{
  speakCopy = speak;
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v11 = [_LTOfflineSpeechSynthesizer alloc];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60___LTOfflineTranslationEngine_speak_withContext_completion___block_invoke;
  v15[3] = &unk_2789B73A8;
  objc_copyWeak(&v17, &location);
  v12 = completionCopy;
  v16 = v12;
  v13 = [(_LTOfflineSpeechSynthesizer *)v11 initWithCompletion:v15];
  synthesizer = self->_synthesizer;
  self->_synthesizer = v13;

  [(_LTOfflineSpeechSynthesizer *)self->_synthesizer speak:speakCopy withContext:contextCopy];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_translatePrepare:(id)prepare
{
  prepareCopy = prepare;
  dispatch_assert_queue_V2(self->_queue);
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Initialize translation with offline engine", v8, 2u);
  }

  translator = self->_translator;
  v7 = [(_LTLocalePair *)self->_localePair oppositeToLocale:prepareCopy];
  [(EMTTranslator *)translator prepareFor:prepareCopy to:v7];
}

- (void)startTextToSpeechTranslationWithContext:(id)context text:(id)text delegate:(id)delegate
{
  contextCopy = context;
  textCopy = text;
  delegateCopy = delegate;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v13 = [_LTAnalyticsEvent timedEventWithName:@"OfflineTextToSpeechTranslation"];
  localePair = [contextCopy localePair];
  sourceLocale = [localePair sourceLocale];
  [v13 setSourceLocale:sourceLocale];

  localePair2 = [contextCopy localePair];
  targetLocale = [localePair2 targetLocale];
  [v13 setTargetLocale:targetLocale];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke;
  v37[3] = &unk_2789B7448;
  v18 = delegateCopy;
  v38 = v18;
  v19 = v13;
  v39 = v19;
  v20 = MEMORY[0x238398770](v37);
  objc_initWeak(&location, self);
  queue = self->_queue;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_2;
  v28[3] = &unk_2789B7498;
  objc_copyWeak(&v35, &location);
  v29 = contextCopy;
  v30 = textCopy;
  v31 = v19;
  v32 = uUIDString;
  v33 = v18;
  v34 = v20;
  v22 = v18;
  v23 = uUIDString;
  v24 = v19;
  v25 = textCopy;
  v26 = v20;
  v27 = contextCopy;
  dispatch_async(queue, v28);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (void)startSpeechTranslationWithContext:(id)context delegate:(id)delegate
{
  v98[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v10 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = [contextCopy autodetectLanguage];
    LOWORD(v93) = 2114;
    *(&v93 + 2) = uUIDString;
    _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Starting offline speech translation (auto detect language: %{BOOL}i, id: %{public}@)", buf, 0x12u);
  }

  v11 = [_LTAnalyticsEvent timedEventWithName:@"OfflineSpeechTranslation"];
  localePair = [contextCopy localePair];
  sourceLocale = [localePair sourceLocale];
  [v11 setSourceLocale:sourceLocale];

  localePair2 = [contextCopy localePair];
  targetLocale = [localePair2 targetLocale];
  [v11 setTargetLocale:targetLocale];

  v97 = @"autodetect";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(contextCopy, "autodetectLanguage")}];
  v98[0] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:&v97 count:1];
  [v11 addFieldsFromDictionary:v17];

  *buf = 0;
  *&v93 = buf;
  *(&v93 + 1) = 0x3032000000;
  v94 = __Block_byref_object_copy__10;
  v95 = __Block_byref_object_dispose__10;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x3032000000;
  v90[3] = __Block_byref_object_copy__10;
  v90[4] = __Block_byref_object_dispose__10;
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x3032000000;
  v88[3] = __Block_byref_object_copy__10;
  v88[4] = __Block_byref_object_dispose__10;
  v89 = [MEMORY[0x277CBEB58] set];
  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x2020000000;
  v87 = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x2020000000;
  v85 = 0;
  objc_initWeak(&location, self);
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke;
  v74[3] = &unk_2789B74C0;
  objc_copyWeak(&v82, &location);
  v79 = v90;
  v18 = contextCopy;
  v75 = v18;
  selfCopy = self;
  v80 = v86;
  v81 = v84;
  v19 = delegateCopy;
  v77 = v19;
  v20 = v11;
  v78 = v20;
  v21 = MEMORY[0x238398770](v74);
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_2;
  v65[3] = &unk_2789B7538;
  objc_copyWeak(&v73, &location);
  v66 = uUIDString;
  v22 = v20;
  v67 = v22;
  v23 = v18;
  v68 = v23;
  v24 = v19;
  v69 = v24;
  v71 = v90;
  v72 = v86;
  v25 = v21;
  v70 = v25;
  v42 = uUIDString;
  v26 = MEMORY[0x238398770](v65);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_2_96;
  v61[3] = &unk_2789B7588;
  objc_copyWeak(&v64, &location);
  v27 = v23;
  v62 = v27;
  v28 = v24;
  v63 = v28;
  v29 = MEMORY[0x238398770](v61);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_99;
  v50[3] = &unk_2789B75D8;
  objc_copyWeak(&v60, &location);
  v30 = v27;
  v51 = v30;
  v31 = v28;
  v55 = v29;
  v58 = buf;
  v52 = v31;
  selfCopy2 = self;
  v32 = v22;
  v54 = v32;
  v56 = v26;
  v57 = v25;
  v59 = v88;
  v43 = v25;
  v33 = v26;
  v34 = v29;
  v35 = MEMORY[0x238398770](v50);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_116;
  block[3] = &unk_2789B7218;
  objc_copyWeak(&v49, &location);
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v48 = v35;
  v37 = v35;
  v38 = v32;
  v39 = v31;
  v40 = v30;
  dispatch_async(queue, block);

  objc_destroyWeak(&v49);
  objc_destroyWeak(&v60);

  objc_destroyWeak(&v64);
  objc_destroyWeak(&v73);

  objc_destroyWeak(&v82);
  objc_destroyWeak(&location);
  _Block_object_dispose(v84, 8);
  _Block_object_dispose(v86, 8);
  _Block_object_dispose(v88, 8);

  _Block_object_dispose(v90, 8);
  _Block_object_dispose(buf, 8);

  v41 = *MEMORY[0x277D85DE8];
}

- (void)endAudio
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39___LTOfflineTranslationEngine_endAudio__block_invoke;
  v4[3] = &unk_2789B72E0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)cancelRecognition:(BOOL)recognition
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___LTOfflineTranslationEngine_cancelRecognition___block_invoke;
  block[3] = &unk_2789B7290;
  objc_copyWeak(&v7, &location);
  recognitionCopy = recognition;
  dispatch_async(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_performCancelRecognition:(BOOL)recognition
{
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "Canceling recognition in offline translation engine", v6, 2u);
  }

  self->_isSpeechTranslationCancelled = 1;
  self->_notifyDelegateOnSuccessfullCancellation = recognition;
  [(_LTMultilingualSpeechRecognizer *)self->_recognizer cancelRecognition];
}

- (void)_loadRecognizersWithContext:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_1(a1, a2, 5.808e-34);
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "Using model overrides as specified: %{private}@", v4, 0xCu);
}

- (void)_loadRecognizersWithContext:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_loadEtiquetteSanitizersForTaskHint:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1(v2, v3, 5.8381e-34);
  _os_log_error_impl(&dword_232E53000, v4, OS_LOG_TYPE_ERROR, "No etiquette sanitizer available for: %{public}@", v5, 0xCu);
}

- (void)_loadTranslatorForTask:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_loadTranslatorForTask:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_232E53000, v1, OS_LOG_TYPE_ERROR, "Failed to create translator for task %{public}@: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_translateParagraph:withContext:toLocale:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)translate:withContext:paragraphResult:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_translate:withContext:isFinal:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_translate:withContext:isFinal:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_translate:withContext:isFinal:completion:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end