@interface _LTTranslationServer
- (_LTTranslationServer)init;
- (id)_effectiveGroupIDForContext:(id)a3;
- (id)_engineForContext:(id)a3 error:(id *)a4;
- (id)_modalitiesPerLocale;
- (id)_offlineEngineForContext:(id)a3 error:(id *)a4;
- (id)_onlineEngineForContext:(id)a3 error:(id *)a4;
- (id)_prepareStabilizerForContext:(id)a3;
- (id)startSpeechTranslationWithContext:(id)a3 delegate:(id)a4;
- (id)startTextToSpeechTranslationWithContext:(id)a3 text:(id)a4 delegate:(id)a5;
- (void)_cancelPendingSpeechOperations;
- (void)_cleanUpForContextIfNeeded:(id)a3;
- (void)_deleteHotfix:(id)a3;
- (void)_downloadAssetForLanguagePair:(id)a3 userInitiated:(BOOL)a4 completion:(id)a5;
- (void)_getAssetSize:(id)a3;
- (void)_logStateSoon;
- (void)_markPendingSpeechSessionIfNeededWithContext:(id)a3 effectiveSessionID:(id)a4;
- (void)_modalitiesPerLocale;
- (void)_offlineLanguageStatus:(id)a3;
- (void)_purgeAllAssetsExcludingConfig:(BOOL)a3 completion:(id)a4;
- (void)_purgeAssetForLanguagePair:(id)a3 userInitiated:(BOOL)a4 completion:(id)a5;
- (void)_removePendingSpeechSessionID:(id)a3;
- (void)_speechSessionCompleted;
- (void)_updateAllAssets:(id)a3;
- (void)_updateHotfix:(id)a3;
- (void)addSpeechAudioData:(id)a3;
- (void)additionalLikelyPreferredLocalesForLocale:(id)a3 completion:(id)a4;
- (void)attemptToCancelRequestsWithSessionID:(id)a3;
- (void)autoDetectSpeechUnsupportedPairsWithCompletion:(id)a3;
- (void)availableLocalePairsForTask:(int64_t)a3 completion:(id)a4;
- (void)cancelExistingSessions;
- (void)cancelSpeechSession;
- (void)cancelSpeechSessionWithID:(id)a3;
- (void)cleanup;
- (void)cleanupOfflineEngine;
- (void)configInfoForLocale:(id)a3 otherLocale:(id)a4 completion:(id)a5;
- (void)endAudio;
- (void)ensureSelectedLocalesDownload;
- (void)installedLocales:(id)a3;
- (void)installedLocalesForTask:(int64_t)a3 completion:(id)a4;
- (void)languageAssetsWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)languageForText:(id)a3 completion:(id)a4;
- (void)languagesForText:(id)a3 usingModel:(unint64_t)a4 strategy:(unint64_t)a5 completion:(id)a6;
- (void)modalitiesPerLocaleWithCompletion:(id)a3;
- (void)onDeviceModeEnabled:(id)a3;
- (void)onDeviceModeSupported:(id)a3;
- (void)preheatWithContext:(id)a3 completion:(id)a4;
- (void)scheduleAssetCleanupWork:(id)a3;
- (void)selfLoggingEventWithData:(id)a3;
- (void)selfLoggingInvocationCancelledForIDs:(id)a3;
- (void)selfLoggingInvocationDidError:(id)a3 invocationId:(id)a4;
- (void)selfLoggingLanguageIdentificationCompletedWithLIDData:(id)a3;
- (void)setLanguageAssets:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6;
- (void)shouldPresentSystemFirstUseConsent:(id)a3;
- (void)speak:(id)a3 withContext:(id)a4 delegate:(id)a5 completion:(id)a6;
- (void)startInstallRequest:(id)a3 delegate:(id)a4;
- (void)startLoggingRequest:(id)a3;
- (void)task:(int64_t)a3 isSupportedInCountry:(id)a4 completion:(id)a5;
- (void)textStreamingConfigurationWithCompletion:(id)a3;
- (void)translateParagraphs:(id)a3 withContext:(id)a4 paragraphResult:(id)a5 completion:(id)a6;
- (void)translateSentence:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)translateStreamingInput:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)updateOVADStreamingState:(id)a3;
@end

@implementation _LTTranslationServer

- (_LTTranslationServer)init
{
  v21.receiver = self;
  v21.super_class = _LTTranslationServer;
  v2 = [(_LTTranslationServer *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.translationd.server", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [[_LTDTranslationOperationScheduler alloc] initWithQueue:v2->_queue];
    translationEngineScheduler = v2->_translationEngineScheduler;
    v2->_translationEngineScheduler = v5;

    v7 = objc_alloc_init(_LTTextToSpeechCache);
    ttsCache = v2->_ttsCache;
    v2->_ttsCache = v7;

    v9 = objc_alloc_init(_LTLoggingRequestHandler);
    logger = v2->_logger;
    v2->_logger = v9;

    v11 = objc_alloc_init(_LTActivityLogger);
    activityLogger = v2->_activityLogger;
    v2->_activityLogger = v11;

    v13 = objc_alloc_init(_LTDSELFLoggingManager);
    selfLoggingManager = v2->_selfLoggingManager;
    v2->_selfLoggingManager = v13;

    v15 = [MEMORY[0x277CBEB58] set];
    pendingSpeechSessionIDs = v2->_pendingSpeechSessionIDs;
    v2->_pendingSpeechSessionIDs = v15;

    v17 = [MEMORY[0x277CBEB38] dictionary];
    stabilizerMap = v2->_stabilizerMap;
    v2->_stabilizerMap = v17;

    [(_LTTranslationServer *)v2 _logStateSoon];
    v19 = v2;
  }

  return v2;
}

- (id)_offlineEngineForContext:(id)a3 error:(id *)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (_LTPreferencesTranslationIsDisabled())
  {
    v7 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_LTTranslationServer _offlineEngineForContext:error:];
    }

    [MEMORY[0x277CCA9B8] lt_translationNotWorking];
    *a4 = v8 = 0;
  }

  else
  {
    p_offlineCachedEngine = &self->_offlineCachedEngine;
    v10 = self->_offlineCachedEngine;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [(_LTTranslationEngine *)v12 taskHint];
    if (v13 == [v6 taskHint] && (v14 = *p_offlineCachedEngine, objc_msgSend(v6, "localePair"), v15 = objc_claimAutoreleasedReturnValue(), LODWORD(v14) = -[_LTTranslationEngine translatesPair:](v14, "translatesPair:", v15), v15, v14))
    {
      v16 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [v6 localePair];
        [(_LTTranslationEngine *)v12 taskHint];
        v19 = _LTTranslationTaskHintString();
        *buf = 138543618;
        v53 = v18;
        v54 = 2114;
        v55 = v19;
        _os_log_impl(&dword_232E53000, v17, OS_LOG_TYPE_DEFAULT, "Reusing cached offline engine for locales: %{public}@, with taskHint: %{public}@", buf, 0x16u);
      }

      [(_LTTranslationServer *)self _updateOfflineEngineIdleTimer];
      v8 = self->_offlineCachedEngine;
    }

    else
    {
      v20 = *p_offlineCachedEngine;
      *p_offlineCachedEngine = 0;

      v21 = objc_alloc_init(_LTOfflineAssetManager);
      v22 = [v6 localePair];
      v48 = v21;
      v49 = 0;
      v23 = -[_LTOfflineAssetManager speechTranslationAssetInfoForLocalePair:taskHint:error:](v21, "speechTranslationAssetInfoForLocalePair:taskHint:error:", v22, [v6 taskHint], &v49);
      v24 = v49;

      if (v23)
      {
        v25 = [_LTOfflineTranslationEngine alloc];
        v26 = [v6 localePair];
        v8 = -[_LTOfflineTranslationEngine initWithLocalePair:taskHint:assetInfo:selfLoggingManager:](v25, "initWithLocalePair:taskHint:assetInfo:selfLoggingManager:", v26, [v6 taskHint], v23, self->_selfLoggingManager);

        v27 = [v6 asrModelURLs];
        [(_LTTranslationEngine *)v8 setAsrModelURLs:v27];

        v28 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
          v30 = [v6 localePair];
          [(_LTTranslationEngine *)v8 taskHint];
          v31 = _LTTranslationTaskHintString();
          *buf = 138543618;
          v53 = v30;
          v54 = 2114;
          v55 = v31;
          _os_log_impl(&dword_232E53000, v29, OS_LOG_TYPE_DEFAULT, "Created new offline engine for locales: %{public}@, with taskHint: %{public}@", buf, 0x16u);
        }

        v32 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          [_LTTranslationServer _offlineEngineForContext:v32 error:?];
        }

        v33 = [v6 mtModelURL];
        [(_LTTranslationEngine *)v8 setMtModelURL:v33];

        [(_LTTranslationEngine *)v8 setTtsCache:self->_ttsCache];
        objc_storeStrong(&self->_offlineCachedEngine, v8);
        [(_LTTranslationServer *)self _updateOfflineEngineIdleTimer];
      }

      else
      {
        v47 = v12;
        if (!v24 || ([v24 domain], v34 = objc_claimAutoreleasedReturnValue(), v34, v34 == @"LTTranslationDaemonErrorDomain"))
        {
          v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v36 = MEMORY[0x277CCA9B8];
          v46 = *MEMORY[0x277CE1C58];
          v50[0] = *MEMORY[0x277CCA450];
          v37 = [v35 localizedStringForKey:@"GENERIC_FAILURE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
          v51[0] = v37;
          v50[1] = *MEMORY[0x277CCA470];
          v38 = [v35 localizedStringForKey:@"OFFLINE_MODELS_UNAVAILABLE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
          v51[1] = v38;
          v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
          v40 = [v36 errorWithDomain:v46 code:16 userInfo:v39];

          v24 = v40;
        }

        v41 = _LTOSLogAssets();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [_LTTranslationServer _offlineEngineForContext:v41 error:v6];
        }

        v12 = v47;
        if (a4)
        {
          v42 = v24;
          *a4 = v24;
        }

        offlineCachedEngine = self->_offlineCachedEngine;
        self->_offlineCachedEngine = 0;

        [(_LTTranslationServer *)self _cancelOfflineEngineIdleTimer];
        v8 = 0;
      }
    }
  }

  v44 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_onlineEngineForContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!_LTPreferencesTranslationIsDisabled())
  {
    v9 = _LTPreferencesSupportedLocalePairsForTask([v6 taskHint]);
    v10 = [v6 localePair];
    if ([v9 containsObject:v10])
    {
    }

    else
    {
      v11 = [v6 localePair];
      v12 = [v11 isPassthrough];

      if ((v12 & 1) == 0)
      {
        v16 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [_LTTranslationServer _onlineEngineForContext:error:];
        }

        v17 = MEMORY[0x277CCA9B8];
        v18 = [v6 localePair];
        v19 = [v17 lt_unsupporedLocalePairError:v18];

        if (a4)
        {
          v20 = v19;
          *a4 = v19;
        }

        v8 = 0;
        goto LABEL_16;
      }
    }

    onlineCachedEngine = self->_onlineCachedEngine;
    if (!onlineCachedEngine)
    {
      v14 = [[_LTOnlineTranslationEngine alloc] initWithSelfLoggingManager:self->_selfLoggingManager];
      [(_LTOnlineTranslationEngine *)v14 setTtsCache:self->_ttsCache];
      [(_LTOnlineTranslationEngine *)v14 setServerQueue:self->_queue];
      v15 = self->_onlineCachedEngine;
      self->_onlineCachedEngine = v14;

      onlineCachedEngine = self->_onlineCachedEngine;
    }

    v8 = onlineCachedEngine;
LABEL_16:

    goto LABEL_17;
  }

  v7 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [_LTTranslationServer _onlineEngineForContext:error:];
  }

  [MEMORY[0x277CCA9B8] lt_translationNotWorking];
  *a4 = v8 = 0;
LABEL_17:

  return v8;
}

- (id)_engineForContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 route] == 3)
  {
    v22 = 0;
    v7 = [(_LTTranslationServer *)self _offlineEngineForContext:v6 error:&v22];
    v8 = v22;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v14 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_DEFAULT, "Preferred offline engine not available, using online", v21, 2u);
      }

      v9 = [(_LTTranslationServer *)self _onlineEngineForContext:v6 error:a4];
    }

    v13 = v9;

    goto LABEL_17;
  }

  if ([v6 route] == 1)
  {
    v10 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Creating offline engine", v21, 2u);
    }

    v11 = [(_LTTranslationServer *)self _offlineEngineForContext:v6 error:a4];
LABEL_12:
    v13 = v11;
    goto LABEL_17;
  }

  if ([v6 route] == 2)
  {
    v12 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "Creating online engine", v21, 2u);
    }

    v11 = [(_LTTranslationServer *)self _onlineEngineForContext:v6 error:a4];
    goto LABEL_12;
  }

  v16 = [(_LTTranslationServer *)self _onlineEngineForContext:v6 error:a4];
  if (v16)
  {
    v17 = [(_LTTranslationServer *)self _offlineEngineForContext:v6 error:a4];
    v18 = _LTOSLogTranslationEngine();
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_232E53000, v19, OS_LOG_TYPE_INFO, "Creating combined engine", v21, 2u);
      }

      v13 = objc_alloc_init(_LTCombinedEngine);
      [(_LTCombinedEngine *)v13 setOfflineEngine:v17];
      [(_LTCombinedEngine *)v13 setOnlineEngine:v16];
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_LTTranslationServer _engineForContext:a4 error:?];
      }

      v13 = v16;
    }
  }

  else
  {
    v20 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [_LTTranslationServer _engineForContext:a4 error:?];
    }

    v13 = 0;
  }

LABEL_17:

  return v13;
}

- (void)preheatWithContext:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  translationEngineScheduler = self->_translationEngineScheduler;
  v10 = [v7 sessionID];
  v11 = [v7 route];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54___LTTranslationServer_preheatWithContext_completion___block_invoke;
  v15[3] = &unk_2789B7E48;
  v16 = v7;
  v17 = self;
  v18 = v8;
  v19 = a2;
  v12 = v8;
  v13 = v7;
  v14 = [(_LTDTranslationOperationScheduler *)translationEngineScheduler scheduleOperationWithGroupID:v10 route:v11 block:v15];
}

- (void)cancelExistingSessions
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Attempting to cancel any existing ASR or TTS sessions", &v12, 2u);
  }

  if (self->_speechSession)
  {
    v4 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      speechSession = self->_speechSession;
      v6 = v4;
      v7 = [(_LTServerSpeechSession *)speechSession sessionID];
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Cancel ongoing speech session: %{public}@", &v12, 0xCu);
    }

    [(_LTServerSpeechSession *)self->_speechSession cancel];
    v8 = self->_speechSession;
    self->_speechSession = 0;
  }

  if (self->_speakSession)
  {
    v9 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "Cancel ongoing speak session", &v12, 2u);
    }

    [(_LTServerSpeakSession *)self->_speakSession cancel];
    speakSession = self->_speakSession;
    self->_speakSession = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_cancelPendingSpeechOperations
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NSMutableSet *)self->_pendingSpeechSessionIDs allObjects];
  v4 = [v3 count];
  v5 = _LTOSLogSpeech();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      *buf = 134218242;
      v20 = [v3 count];
      v21 = 2114;
      v22 = v3;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEFAULT, "Cancelling %zu sessionIDs for potentially pending speech requests: %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "No potentially pending speech requests sessionIDs were saved, so no need to cancel those requests", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(_LTDTranslationOperationScheduler *)self->_translationEngineScheduler cancelOperationsWithGroupID:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(NSMutableSet *)self->_pendingSpeechSessionIDs removeAllObjects];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)translateSentence:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_initWeak(&location, self);
  [(_LTTranslationServer *)self _cleanUpForContextIfNeeded:v10];
  translationEngineScheduler = self->_translationEngineScheduler;
  v13 = [v10 sessionID];
  v14 = [v10 route];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65___LTTranslationServer_translateSentence_withContext_completion___block_invoke;
  v19[3] = &unk_2789B7E98;
  v19[4] = self;
  v15 = v10;
  v20 = v15;
  v23[1] = a2;
  v16 = v11;
  v22 = v16;
  v17 = v9;
  v21 = v17;
  objc_copyWeak(v23, &location);
  v18 = [(_LTDTranslationOperationScheduler *)translationEngineScheduler scheduleOperationWithGroupID:v13 route:v14 block:v19];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)translateParagraphs:(id)a3 withContext:(id)a4 paragraphResult:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_initWeak(&location, self);
  [(_LTTranslationServer *)self _cleanUpForContextIfNeeded:v12];
  translationEngineScheduler = self->_translationEngineScheduler;
  v16 = [v12 sessionID];
  v17 = [v12 route];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke;
  v23[3] = &unk_2789B7EE8;
  v18 = v11;
  v24 = v18;
  v19 = v12;
  v25 = v19;
  v26 = self;
  v29[1] = a2;
  v20 = v14;
  v27 = v20;
  v21 = v13;
  v28 = v21;
  objc_copyWeak(v29, &location);
  v22 = [(_LTDTranslationOperationScheduler *)translationEngineScheduler scheduleOperationWithGroupID:v16 route:v17 block:v23];

  objc_destroyWeak(v29);
  objc_destroyWeak(&location);
}

- (void)translateStreamingInput:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71___LTTranslationServer_translateStreamingInput_withContext_completion___block_invoke;
  v16[3] = &unk_2789B7F60;
  objc_copyWeak(v20, &location);
  v20[1] = a2;
  v18 = v9;
  v19 = v11;
  v17 = v10;
  v13 = v9;
  v14 = v11;
  v15 = v10;
  dispatch_async(queue, v16);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (id)_prepareStabilizerForContext:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 sessionID];
  if (!v5)
  {
    v7 = _LTOSLogSpeech();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_LTTranslationServer _prepareStabilizerForContext:];
    }

    goto LABEL_7;
  }

  if (![v4 enableOfflineStreamStabilizer])
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = [(NSMutableDictionary *)self->_stabilizerMap objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(_LTDStreamStabilizer);
    [(NSMutableDictionary *)self->_stabilizerMap setObject:v6 forKeyedSubscript:v5];
  }

LABEL_8:

  return v6;
}

- (void)textStreamingConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___LTTranslationServer_textStreamingConfigurationWithCompletion___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (id)startTextToSpeechTranslationWithContext:(id)a3 text:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CCAD78] UUID];
  objc_initWeak(&location, self);
  [(_LTTranslationServer *)self _cleanUpForContextIfNeeded:v9];
  v13 = [(_LTTranslationServer *)self _effectiveGroupIDForContext:v9];
  [(_LTTranslationServer *)self _markPendingSpeechSessionIfNeededWithContext:v9 effectiveSessionID:v13];
  translationEngineScheduler = self->_translationEngineScheduler;
  v15 = [v9 route];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __78___LTTranslationServer_startTextToSpeechTranslationWithContext_text_delegate___block_invoke;
  v25[3] = &unk_2789B7FB0;
  objc_copyWeak(v32, &location);
  v16 = v13;
  v26 = v16;
  v17 = v9;
  v27 = v17;
  v28 = self;
  v32[1] = a2;
  v18 = v11;
  v29 = v18;
  v19 = v12;
  v30 = v19;
  v20 = v10;
  v31 = v20;
  v21 = [(_LTDTranslationOperationScheduler *)translationEngineScheduler scheduleOperationWithGroupID:v16 route:v15 block:v25];
  v22 = v31;
  v23 = v19;

  objc_destroyWeak(v32);
  objc_destroyWeak(&location);

  return v23;
}

- (void)speak:(id)a3 withContext:(id)a4 delegate:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_initWeak(&location, self);
  [(_LTTranslationServer *)self _cleanUpForContextIfNeeded:v12];
  v15 = [(_LTTranslationServer *)self _effectiveGroupIDForContext:v12];
  [(_LTTranslationServer *)self _markPendingSpeechSessionIfNeededWithContext:v12 effectiveSessionID:v15];
  translationEngineScheduler = self->_translationEngineScheduler;
  v17 = [v12 route];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke;
  v24[3] = &unk_2789B8028;
  objc_copyWeak(v31, &location);
  v18 = v15;
  v25 = v18;
  v19 = v12;
  v26 = v19;
  v27 = self;
  v31[1] = a2;
  v20 = v14;
  v30 = v20;
  v21 = v11;
  v28 = v21;
  v22 = v13;
  v29 = v22;
  v23 = [(_LTDTranslationOperationScheduler *)translationEngineScheduler scheduleOperationWithGroupID:v18 route:v17 block:v24];

  objc_destroyWeak(v31);
  objc_destroyWeak(&location);
}

- (id)startSpeechTranslationWithContext:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CCAD78] UUID];
  objc_initWeak(&location, self);
  [(_LTTranslationServer *)self _cleanUpForContextIfNeeded:v7];
  v10 = [(_LTTranslationServer *)self _effectiveGroupIDForContext:v7];
  [(_LTTranslationServer *)self _markPendingSpeechSessionIfNeededWithContext:v7 effectiveSessionID:v10];
  translationEngineScheduler = self->_translationEngineScheduler;
  v12 = [v7 route];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke;
  v21[3] = &unk_2789B8050;
  objc_copyWeak(v27, &location);
  v13 = v10;
  v22 = v13;
  v14 = v7;
  v23 = v14;
  v24 = self;
  v15 = v8;
  v25 = v15;
  v27[1] = a2;
  v16 = v9;
  v26 = v16;
  v17 = [(_LTDTranslationOperationScheduler *)translationEngineScheduler scheduleOperationWithGroupID:v13 route:v12 block:v21];
  v18 = v26;
  v19 = v16;

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);

  return v19;
}

- (void)cancelSpeechSession
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43___LTTranslationServer_cancelSpeechSession__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)cancelSpeechSessionWithID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___LTTranslationServer_cancelSpeechSessionWithID___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_speechSessionCompleted
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47___LTTranslationServer__speechSessionCompleted__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)addSpeechAudioData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43___LTTranslationServer_addSpeechAudioData___block_invoke;
    block[3] = &unk_2789B5288;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_async(queue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)endAudio
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32___LTTranslationServer_endAudio__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)autoDetectSpeechUnsupportedPairsWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71___LTTranslationServer_autoDetectSpeechUnsupportedPairsWithCompletion___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (id)_modalitiesPerLocale
{
  v2 = _LTPreferencesSupportedLocales(1);
  v12 = 0;
  v3 = [_LTDConfigurationService asrConfigurationWithError:&v12];
  v4 = v12;
  v5 = v2;
  if (v4)
  {
    v6 = _LTOSLogAssets();
    v7 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_LTTranslationServer _modalitiesPerLocale];
      v7 = v5;
    }
  }

  else
  {
    v7 = [v3 locales];
  }

  v8 = v5;
  v9 = [objc_alloc(MEMORY[0x277CE1B30]) initWithSupportedLocales:v8 asrLocales:v7 ttsLocales:v8];
  v10 = _LTOSLogAssets();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(_LTTranslationServer *)v10 _modalitiesPerLocale];
  }

  return v9;
}

- (void)modalitiesPerLocaleWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58___LTTranslationServer_modalitiesPerLocaleWithCompletion___block_invoke;
  v7[3] = &unk_2789B6D38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)_effectiveGroupIDForContext:(id)a3
{
  v3 = a3;
  v4 = [v3 sessionID];
  if (v4 || ![v3 cancelOnCleanup])
  {
    v6 = v4;
  }

  else
  {
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];
  }

  return v6;
}

- (void)_markPendingSpeechSessionIfNeededWithContext:(id)a3 effectiveSessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && [v6 cancelOnCleanup])
  {
    v8 = _LTOSLogSpeech();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_LTTranslationServer _markPendingSpeechSessionIfNeededWithContext:effectiveSessionID:];
    }

    queue = self->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __88___LTTranslationServer__markPendingSpeechSessionIfNeededWithContext_effectiveSessionID___block_invoke;
    v10[3] = &unk_2789B5990;
    v11 = v7;
    v12 = self;
    dispatch_async(queue, v10);
  }
}

- (void)_removePendingSpeechSessionID:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    v5 = _LTOSLogSpeech();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Removing a pending speech sessionID since it's starting: %{public}@", &v7, 0xCu);
    }

    [(NSMutableSet *)self->_pendingSpeechSessionIDs removeObject:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUpForContextIfNeeded:(id)a3
{
  if ([a3 cleanUpExistingSpeechSession])
  {
    v4 = _LTOSLogSpeech();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Client requested performing a speech cleanup before translation", v5, 2u);
    }

    [(_LTTranslationServer *)self cleanup];
  }
}

- (void)_logStateSoon
{
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __37___LTTranslationServer__logStateSoon__block_invoke;
  v13[3] = &unk_2789B53F0;
  objc_copyWeak(&v14, &location);
  v3 = MEMORY[0x238398770](v13);
  v4 = dispatch_time(0, 5000000000);
  dispatch_after(v4, self->_queue, v3);
  v5 = self->_queue;
  v6 = MEMORY[0x277CBEBB8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37___LTTranslationServer__logStateSoon__block_invoke_47;
  v10[3] = &unk_2789B8078;
  v7 = v5;
  v11 = v7;
  v8 = v3;
  v12 = v8;
  v9 = [v6 scheduledTimerWithTimeInterval:1 repeats:v10 block:10800.0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)startLoggingRequest:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___LTTranslationServer_startLoggingRequest___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)cleanupOfflineEngine
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44___LTTranslationServer_cleanupOfflineEngine__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)cleanup
{
  v3 = _LTOSLogSpeech();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Client requested scheduling of a cleanup of ongoing speech sessions", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31___LTTranslationServer_cleanup__block_invoke;
  block[3] = &unk_2789B53F0;
  objc_copyWeak(&v6, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)attemptToCancelRequestsWithSessionID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___LTTranslationServer_attemptToCancelRequestsWithSessionID___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)shouldPresentSystemFirstUseConsent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59___LTTranslationServer_shouldPresentSystemFirstUseConsent___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)languageForText:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51___LTTranslationServer_languageForText_completion___block_invoke;
  v11[3] = &unk_2789B6B60;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);
}

- (void)languagesForText:(id)a3 usingModel:(unint64_t)a4 strategy:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72___LTTranslationServer_languagesForText_usingModel_strategy_completion___block_invoke;
  v15[3] = &unk_2789B5818;
  v18 = a4;
  v19 = a5;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(queue, v15);
}

- (void)languageAssetsWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61___LTTranslationServer_languageAssetsWithOptions_completion___block_invoke;
  v9[3] = &unk_2789B5E78;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)setLanguageAssets:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70___LTTranslationServer_setLanguageAssets_options_progress_completion___block_invoke;
  v17[3] = &unk_2789B80A0;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = a4;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, v17);
}

- (void)_offlineLanguageStatus:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___LTTranslationServer__offlineLanguageStatus___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)_downloadAssetForLanguagePair:(id)a3 userInitiated:(BOOL)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79___LTTranslationServer__downloadAssetForLanguagePair_userInitiated_completion___block_invoke;
  v14[3] = &unk_2789B80F0;
  v18 = a4;
  v16 = v10;
  v17 = a2;
  v15 = v9;
  v12 = v10;
  v13 = v9;
  dispatch_async(queue, v14);
}

- (void)_purgeAssetForLanguagePair:(id)a3 userInitiated:(BOOL)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76___LTTranslationServer__purgeAssetForLanguagePair_userInitiated_completion___block_invoke;
  v14[3] = &unk_2789B80F0;
  v18 = a4;
  v16 = v10;
  v17 = a2;
  v15 = v9;
  v12 = v10;
  v13 = v9;
  dispatch_async(queue, v14);
}

- (void)_purgeAllAssetsExcludingConfig:(BOOL)a3 completion:(id)a4
{
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___LTTranslationServer__purgeAllAssetsExcludingConfig_completion___block_invoke;
  block[3] = &unk_2789B8118;
  v13 = a3;
  v11 = v7;
  v12 = a2;
  v9 = v7;
  dispatch_async(queue, block);
}

- (void)_updateAllAssets:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41___LTTranslationServer__updateAllAssets___block_invoke;
  v8[3] = &unk_2789B5E78;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)installedLocales:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___LTTranslationServer_installedLocales___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)ensureSelectedLocalesDownload
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53___LTTranslationServer_ensureSelectedLocalesDownload__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)installedLocalesForTask:(int64_t)a3 completion:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke;
  block[3] = &unk_2789B5F18;
  objc_copyWeak(&v10, &location);
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)startInstallRequest:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53___LTTranslationServer_startInstallRequest_delegate___block_invoke;
  v11[3] = &unk_2789B5990;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);
}

- (void)_getAssetSize:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38___LTTranslationServer__getAssetSize___block_invoke;
  v8[3] = &unk_2789B5E78;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)availableLocalePairsForTask:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63___LTTranslationServer_availableLocalePairsForTask_completion___block_invoke;
  v9[3] = &unk_2789B5E78;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)additionalLikelyPreferredLocalesForLocale:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77___LTTranslationServer_additionalLikelyPreferredLocalesForLocale_completion___block_invoke;
  v11[3] = &unk_2789B6D38;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, v11);
}

- (void)configInfoForLocale:(id)a3 otherLocale:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67___LTTranslationServer_configInfoForLocale_otherLocale_completion___block_invoke;
  block[3] = &unk_2789B81B0;
  v17 = v9;
  v18 = v10;
  v16 = v8;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(queue, block);
}

- (void)task:(int64_t)a3 isSupportedInCountry:(id)a4 completion:(id)a5
{
  v6 = a5;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___LTTranslationServer_task_isSupportedInCountry_completion___block_invoke;
  block[3] = &unk_2789B5418;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)_updateHotfix:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38___LTTranslationServer__updateHotfix___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)_deleteHotfix:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38___LTTranslationServer__deleteHotfix___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)onDeviceModeEnabled:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___LTTranslationServer_onDeviceModeEnabled___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)onDeviceModeSupported:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46___LTTranslationServer_onDeviceModeSupported___block_invoke;
  block[3] = &unk_2789B5418;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)selfLoggingEventWithData:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___LTTranslationServer_selfLoggingEventWithData___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)selfLoggingLanguageIdentificationCompletedWithLIDData:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78___LTTranslationServer_selfLoggingLanguageIdentificationCompletedWithLIDData___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)selfLoggingInvocationCancelledForIDs:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___LTTranslationServer_selfLoggingInvocationCancelledForIDs___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)selfLoggingInvocationDidError:(id)a3 invocationId:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67___LTTranslationServer_selfLoggingInvocationDidError_invocationId___block_invoke;
  v11[3] = &unk_2789B6C78;
  objc_copyWeak(&v14, &location);
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)updateOVADStreamingState:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49___LTTranslationServer_updateOVADStreamingState___block_invoke;
  block[3] = &unk_2789B5288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)scheduleAssetCleanupWork:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  translationEngineScheduler = self->_translationEngineScheduler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49___LTTranslationServer_scheduleAssetCleanupWork___block_invoke;
  v8[3] = &unk_2789B8228;
  v6 = v4;
  v9 = v6;
  objc_copyWeak(&v10, &location);
  v7 = [(_LTDTranslationOperationScheduler *)translationEngineScheduler scheduleOperationWithGroupID:0 route:1 block:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

- (void)_offlineEngineForContext:(void *)a1 error:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() mtModelURL];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_offlineEngineForContext:(void *)a1 error:(void *)a2 .cold.2(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_7() localePair];
  v6 = [v5 identifier];
  [a2 taskHint];
  v7 = _LTTranslationTaskHintString();
  v9 = 138543618;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  _os_log_error_impl(&dword_232E53000, v2, OS_LOG_TYPE_ERROR, "No asset info found for pair %{public}@, taskHint: %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_offlineEngineForContext:error:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_onlineEngineForContext:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_onlineEngineForContext:error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_engineForContext:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v2, v3, "Could not create offline engine, using online only: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_engineForContext:(uint64_t *)a1 error:.cold.2(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v2, v3, "Could not create online engine: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_prepareStabilizerForContext:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_modalitiesPerLocale
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() debugDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_markPendingSpeechSessionIfNeededWithContext:effectiveSessionID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end