@interface _LTServerSpeechSession
- (_LTServerSpeechSession)initWithEngine:(id)a3 delegate:(id)a4 selfLoggingManager:(id)a5;
- (void)_startSpeechTranslationWithContext:(id)a3;
- (void)_translateSpeechAudioData:(id)a3;
- (void)_updateOVADStreamingState_onQueue:(BOOL)a3;
- (void)addSpeechAudioData:(id)a3;
- (void)cancel;
- (void)cancelOwnVoicePendingSwapAndRestartTimer;
- (void)delegateTranslationDidFinishWithError:(id)a3;
- (void)endAudio;
- (void)forcePendingSwapAndRestart;
- (void)hybridEndpointerFoundEndpoint;
- (void)languageDetectionCompleted;
- (void)languageDetectionResult:(id)a3;
- (void)serverEndpointerFeatures:(id)a3 locale:(id)a4;
- (void)speechActivityDetected;
- (void)speechRecognitionResult:(id)a3;
- (void)startSpeechTranslationWithContext:(id)a3;
- (void)startTextToSpeechTranslationWithContext:(id)a3 text:(id)a4;
- (void)swapLocalesAndRestart;
- (void)swapLocalesAndRestartWithStateResetAndLogMessage:(id)a3;
- (void)translationDidFinishWithError:(id)a3;
- (void)translatorDidTranslate:(id)a3;
- (void)updateOVADStreamingState:(BOOL)a3;
- (void)updateOwnVoicePendingSwapAndRestartTimer;
@end

@implementation _LTServerSpeechSession

- (_LTServerSpeechSession)initWithEngine:(id)a3 delegate:(id)a4 selfLoggingManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = _LTServerSpeechSession;
  v12 = [(_LTServerSpeechSession *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_engine, a3);
    objc_storeStrong(&v13->_delegate, a4);
    objc_storeStrong(&v13->_selfLoggingManager, a5);
    v14 = objc_alloc_init(_LTHybridEndpointer);
    endpointer = v13->_endpointer;
    v13->_endpointer = v14;

    v16 = [[_LTLanguageDetector alloc] initWithSelfLoggingManager:v13->_selfLoggingManager];
    languageDetector = v13->_languageDetector;
    v13->_languageDetector = v16;

    v18 = v13;
  }

  return v13;
}

- (void)startSpeechTranslationWithContext:(id)a3
{
  v5 = a3;
  *&self->_expectFinalLidResult = 0;
  self->_translationFinished = 0;
  atomic_store(0, &self->_speechActivityDetected);
  atomic_store(0, &self->_ownVoiceIsActive);
  atomic_store(0, &self->_pendingFinalTranslation);
  v16 = v5;
  v6 = [v5 localePair];
  originalLocalePair = self->_originalLocalePair;
  self->_originalLocalePair = v6;

  translationError = self->_translationError;
  self->_translationError = 0;

  objc_storeStrong(&self->_context, a3);
  if ([v16 enableMultiFieldInput])
  {
    v9 = [_LTSpeechDataQueue alloc];
    _LTPreferencesOVADAudioBufferDuration();
    v10 = [(_LTSpeechDataQueue *)v9 initForSeconds:1.0, 1.0];
    cache = self->_cache;
    self->_cache = v10;
  }

  else
  {
    if ([v16 enableVAD])
    {
      v12 = [[_LTSpeechActivityDetector alloc] initWithDelegate:self];
      speechDetector = self->_speechDetector;
      self->_speechDetector = v12;

      v14 = [[_LTSpeechDataQueue alloc] initForSeconds:_LTPreferencesVADAudioCacheMaxDuration()];
      v15 = self->_cache;
      self->_cache = v14;

      goto LABEL_7;
    }

    atomic_store(1u, &self->_speechActivityDetected);
  }

  [(_LTServerSpeechSession *)self _startSpeechTranslationWithContext:v16];
LABEL_7:
}

- (void)_startSpeechTranslationWithContext:(id)a3
{
  v4 = a3;
  if ([v4 autodetectLanguage])
  {
    self->_expectFinalLidResult = 1;
    [(_LTLanguageDetector *)self->_languageDetector startLanguageDetectionWithContext:v4 delegate:self];
  }

  [(_LTHybridEndpointer *)self->_endpointer startEndpointingWithContext:v4 delegate:self];
  [(_LTTranslationEngine *)self->_engine startSpeechTranslationWithContext:v4 delegate:self];
}

- (void)startTextToSpeechTranslationWithContext:(id)a3 text:(id)a4
{
  v6 = a3;
  *&self->_expectFinalLidResult = 0;
  self->_translationFinished = 0;
  atomic_store(0, &self->_pendingFinalTranslation);
  translationError = self->_translationError;
  self->_translationError = 0;
  v10 = a4;

  context = self->_context;
  self->_context = v6;
  v9 = v6;

  [(_LTTranslationEngine *)self->_engine startTextToSpeechTranslationWithContext:v9 text:v10 delegate:self];
}

- (void)addSpeechAudioData:(id)a3
{
  v4 = a3;
  if ([(_LTTranslationContext *)self->_context enableMultiFieldInput])
  {
    v5 = atomic_load(&self->_pendingSwapAndRestart);
    if ((v5 & 1) == 0)
    {
      [(_LTServerSpeechSession *)self _translateSpeechAudioData:v4];
LABEL_9:
      [(_LTSpeechDataQueue *)self->_cache addSpeechAudioData:v4];
    }
  }

  else
  {
    v6 = atomic_load(&self->_speechActivityDetected);
    if ((v6 & 1) == 0)
    {
      [(_LTSpeechActivityDetector *)self->_speechDetector addSpeechAudioData:v4];
      goto LABEL_9;
    }

    cache = self->_cache;
    if (cache)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __45___LTServerSpeechSession_addSpeechAudioData___block_invoke;
      v9[3] = &unk_2789B7AA0;
      v9[4] = self;
      [(_LTSpeechDataQueue *)cache consumeAll:v9];
      v8 = self->_cache;
      self->_cache = 0;
    }

    [(_LTServerSpeechSession *)self _translateSpeechAudioData:v4];
  }
}

- (void)_translateSpeechAudioData:(id)a3
{
  v4 = a3;
  [(_LTLanguageDetector *)self->_languageDetector addSpeechAudioData:?];
  [(_LTHybridEndpointer *)self->_endpointer addSpeechAudioData:v4];
  [(_LTTranslationEngine *)self->_engine addSpeechAudioData:v4];
}

- (void)endAudio
{
  v3 = _LTOSLogSpeech();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_LTServerSpeechSession endAudio];
  }

  [(_LTLanguageDetector *)self->_languageDetector endAudio];
  [(_LTHybridEndpointer *)self->_endpointer endAudio];
  [(_LTTranslationEngine *)self->_engine endAudio];
  if (self->_completionHandler)
  {
    if ([(_LTTranslationContext *)self->_context enableVAD]&& (v4 = atomic_load(&self->_speechActivityDetected), (v4 & 1) == 0))
    {
      (*(self->_completionHandler + 2))();
    }

    else if (self->_completionHandler)
    {
      v5 = _LTOSLogSpeech();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
      }
    }
  }
}

- (void)cancel
{
  v3 = _LTOSLogSpeech();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_LTServerSpeechSession cancel];
  }

  [(_LTLanguageDetector *)self->_languageDetector cancelLanguageDetection];
  [(_LTTranslationEngine *)self->_engine cancelSpeechTranslation:0];
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0);
  }
}

- (void)delegateTranslationDidFinishWithError:(id)a3
{
  v7 = a3;
  v4 = _sharedQueue();
  dispatch_assert_queue_V2(v4);

  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(_LTSpeechTranslationDelegate *)self->_delegate translationDidFinishWithError:v7];
  }

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, v7);
  }
}

- (void)_updateOVADStreamingState_onQueue:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x277D85DE8];
  v5 = _sharedQueue();
  dispatch_assert_queue_V2(v5);

  v6 = _LTOSLogSpeech();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"false";
    v8 = atomic_load(&self->_ownVoiceIsActive);
    v9 = atomic_load(&self->_pendingFinalTranslation);
    v10 = atomic_load(&self->_pendingSwapAndRestart);
    if (v8)
    {
      v11 = @"true";
    }

    else
    {
      v11 = @"false";
    }

    *v31 = 67109890;
    *&v31[4] = v3;
    if (v9)
    {
      v12 = @"true";
    }

    else
    {
      v12 = @"false";
    }

    *&v31[8] = 2112;
    if (v10)
    {
      v7 = @"true";
    }

    *&v31[10] = v11;
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = v7;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "OVAD streaming state changed to %{BOOL}i. _ownVoiceIsActive: %@, _pendingFinalTranslation: %@, _pendingSwapAndRestart: %@", v31, 0x26u);
  }

  v13 = atomic_load(&self->_ownVoiceIsActive);
  if ((v13 & 1) == v3)
  {
    v22 = _LTOSLogSpeech();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [_LTServerSpeechSession _updateOVADStreamingState_onQueue:];
    }
  }

  else
  {
    atomic_store(v3, &self->_ownVoiceIsActive);
    v14 = [MEMORY[0x277CE1BB0] generateSilentAudioDataWithDuration:3.0];
    [(_LTServerSpeechSession *)self _translateSpeechAudioData:v14];
    v15 = atomic_load(&self->_pendingFinalTranslation);
    if ((v15 & 1) != 0 && (v16 = atomic_load(&self->_ownVoiceIsActive), (v16 & 1) == 0))
    {
      atomic_store(1u, &self->_pendingSwapAndRestart);
      v23 = _LTOSLogSpeech();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(_LTLocalePair *)self->_originalLocalePair targetLocale];
        v25 = [v24 localeIdentifier];
        *v31 = 138412290;
        *&v31[4] = v25;
        _os_log_impl(&dword_232E53000, v23, OS_LOG_TYPE_DEFAULT, "OVAD transitioning to pending locale swap and restart state for source: %@", v31, 0xCu);
      }

      [(_LTServerSpeechSession *)self updateOwnVoicePendingSwapAndRestartTimer];
    }

    else
    {
      v17 = atomic_load(&self->_ownVoiceIsActive);
      if (v17 & 1) != 0 && (v18 = atomic_load(&self->_pendingSwapAndRestart), (v18))
      {
        atomic_store(0, &self->_pendingSwapAndRestart);
        v19 = _LTOSLogSpeech();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [(_LTLocalePair *)self->_originalLocalePair targetLocale];
          v21 = [v20 localeIdentifier];
          *v31 = 138412290;
          *&v31[4] = v21;
          _os_log_impl(&dword_232E53000, v19, OS_LOG_TYPE_DEFAULT, "OVAD signaled while waiting for pending locale swap. Reseting pending swap and restart state for source: %@", v31, 0xCu);
        }

        [(_LTServerSpeechSession *)self cancelOwnVoicePendingSwapAndRestartTimer];
      }

      else
      {
        [(_LTServerSpeechSession *)self swapLocalesAndRestart];
      }
    }

    v26 = atomic_load(&self->_ownVoiceIsActive);
    if (v26)
    {
      atomic_store(1u, &self->_pendingFinalTranslation);
      v27 = _LTOSLogSpeech();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(_LTLocalePair *)self->_originalLocalePair targetLocale];
        v29 = [v28 localeIdentifier];
        *v31 = 138412290;
        *&v31[4] = v29;
        _os_log_impl(&dword_232E53000, v27, OS_LOG_TYPE_DEFAULT, "OVAD assuming pending final translation for source: %@", v31, 0xCu);
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)updateOVADStreamingState:(BOOL)a3
{
  objc_initWeak(&location, self);
  v4 = _sharedQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51___LTServerSpeechSession_updateOVADStreamingState___block_invoke;
  block[3] = &unk_2789B7290;
  objc_copyWeak(&v6, &location);
  v7 = a3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)swapLocalesAndRestart
{
  v3 = _sharedQueue();
  dispatch_assert_queue_V2(v3);

  v4 = atomic_load(&self->_ownVoiceIsActive);
  originalLocalePair = self->_originalLocalePair;
  if (v4)
  {
    originalLocalePair = [(_LTLocalePair *)self->_originalLocalePair reversedPair];
  }

  [(_LTTranslationContext *)self->_context setLocalePair:originalLocalePair];
  if (v4)
  {
  }

  [(_LTTranslationEngine *)self->_engine startSpeechTranslationWithContext:self->_context delegate:self];
  cache = self->_cache;
  if (cache)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47___LTServerSpeechSession_swapLocalesAndRestart__block_invoke;
    v11[3] = &unk_2789B7AC8;
    v12 = v4 & 1;
    v11[4] = self;
    [(_LTSpeechDataQueue *)cache consumeAll:v11];
    v7 = [_LTSpeechDataQueue alloc];
    _LTPreferencesOVADAudioBufferDuration();
    v8 = [(_LTSpeechDataQueue *)v7 initForSeconds:1.0, 1.0];
    v9 = self->_cache;
    self->_cache = v8;
  }

  else
  {
    v10 = _LTOSLogSpeech();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_LTServerSpeechSession swapLocalesAndRestart];
    }
  }
}

- (void)updateOwnVoicePendingSwapAndRestartTimer
{
  v3 = _sharedQueue();
  dispatch_assert_queue_V2(v3);

  [(_LTServerSpeechSession *)self cancelOwnVoicePendingSwapAndRestartTimer];
  v4 = _LTOSLogSpeech();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_DEFAULT, "OVAD updating own voice pending swap and restart timer", buf, 2u);
  }

  v5 = _sharedQueue();
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);
  ownVoicePendingSwapAndRestartTimer = self->_ownVoicePendingSwapAndRestartTimer;
  self->_ownVoicePendingSwapAndRestartTimer = v6;

  v8 = _LTPreferencesOVADPendingSwapTimeoutDuration() == 0.0;
  v9 = 0.0;
  if (!v8)
  {
    v9 = 1.0;
  }

  v10 = v9 * 1000000000.0;
  v11 = self->_ownVoicePendingSwapAndRestartTimer;
  if (v8)
  {
    v10 = 2000000000.0;
  }

  v12 = dispatch_time(0, v10);
  dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
  v13 = self->_ownVoicePendingSwapAndRestartTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __66___LTServerSpeechSession_updateOwnVoicePendingSwapAndRestartTimer__block_invoke;
  handler[3] = &unk_2789B7AF0;
  handler[4] = self;
  dispatch_source_set_event_handler(v13, handler);
  dispatch_resume(self->_ownVoicePendingSwapAndRestartTimer);
}

- (void)cancelOwnVoicePendingSwapAndRestartTimer
{
  v3 = _sharedQueue();
  dispatch_assert_queue_V2(v3);

  if (self->_ownVoicePendingSwapAndRestartTimer)
  {
    v4 = _LTOSLogSpeech();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_DEFAULT, "OVAD cancelling own voice pending swap and restart timer", v6, 2u);
    }

    dispatch_source_cancel(self->_ownVoicePendingSwapAndRestartTimer);
    ownVoicePendingSwapAndRestartTimer = self->_ownVoicePendingSwapAndRestartTimer;
    self->_ownVoicePendingSwapAndRestartTimer = 0;
  }
}

- (void)swapLocalesAndRestartWithStateResetAndLogMessage:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _sharedQueue();
  dispatch_assert_queue_V2(v5);

  atomic_store(0, &self->_pendingFinalTranslation);
  v6 = atomic_load(&self->_pendingSwapAndRestart);
  if (v6)
  {
    atomic_store(0, &self->_pendingSwapAndRestart);
    v7 = _LTOSLogSpeech();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEFAULT, "%@", &v9, 0xCu);
    }

    [(_LTServerSpeechSession *)self cancelOwnVoicePendingSwapAndRestartTimer];
    [(_LTServerSpeechSession *)self swapLocalesAndRestart];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)forcePendingSwapAndRestart
{
  v3 = _sharedQueue();
  dispatch_assert_queue_V2(v3);

  [(_LTServerSpeechSession *)self swapLocalesAndRestartWithStateResetAndLogMessage:@"OVAD forcing pending swap and restart"];
}

- (void)speechActivityDetected
{
  v2 = atomic_load(&self->_speechActivityDetected);
  if ((v2 & 1) == 0)
  {
    [(_LTServerSpeechSession *)self _startSpeechTranslationWithContext:self->_context];
    speechDetector = self->_speechDetector;
    self->_speechDetector = 0;

    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      [(_LTSpeechTranslationDelegate *)self->_delegate speechActivityDetected];
    }

    atomic_store(1u, &self->_speechActivityDetected);
  }
}

- (void)languageDetectionResult:(id)a3
{
  v4 = a3;
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(_LTSpeechTranslationDelegate *)self->_delegate languageDetectionResult:v4];
  }

  engine = self->_engine;
  if (objc_opt_respondsToSelector())
  {
    [(_LTTranslationEngine *)self->_engine setLanguagesRecognized:v4 context:self->_context];
  }

  if ([v4 isFinal])
  {
    objc_initWeak(&location, self);
    v7 = _sharedQueue();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50___LTServerSpeechSession_languageDetectionResult___block_invoke;
    v8[3] = &unk_2789B72E0;
    objc_copyWeak(&v9, &location);
    dispatch_async(v7, v8);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)languageDetectionCompleted
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_delegate;

    [(_LTSpeechTranslationDelegate *)v4 languageDetectionCompleted];
  }
}

- (void)hybridEndpointerFoundEndpoint
{
  v3 = _LTOSLogSpeech();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_LTServerSpeechSession hybridEndpointerFoundEndpoint];
  }

  [(_LTLanguageDetector *)self->_languageDetector endAudio];
  [(_LTTranslationEngine *)self->_engine endpoint];
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(_LTSpeechTranslationDelegate *)self->_delegate hybridEndpointerFoundEndpoint];
  }
}

- (void)serverEndpointerFeatures:(id)a3 locale:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(_LTHybridEndpointer *)self->_endpointer setServerEndpointerFeatures:v8 withLocale:v6];
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(_LTSpeechTranslationDelegate *)self->_delegate serverEndpointerFeatures:v8 locale:v6];
  }
}

- (void)speechRecognitionResult:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = _sharedQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___LTServerSpeechSession_speechRecognitionResult___block_invoke;
  block[3] = &unk_2789B72B8;
  objc_copyWeak(&v10, &location);
  v6 = v4;
  v9 = v6;
  dispatch_async(v5, block);

  [(_LTLanguageDetector *)self->_languageDetector addSpeechRecognitionResult:v6];
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(_LTSpeechTranslationDelegate *)self->_delegate speechRecognitionResult:v6];
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)translatorDidTranslate:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = _sharedQueue();
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __49___LTServerSpeechSession_translatorDidTranslate___block_invoke;
  v11 = &unk_2789B7B18;
  objc_copyWeak(&v14, &location);
  v6 = v4;
  v12 = v6;
  v13 = self;
  dispatch_async(v5, &v8);

  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(_LTSpeechTranslationDelegate *)self->_delegate translatorDidTranslate:v6, v8, v9, v10, v11];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)translationDidFinishWithError:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = _sharedQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56___LTServerSpeechSession_translationDidFinishWithError___block_invoke;
  block[3] = &unk_2789B72B8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

@end