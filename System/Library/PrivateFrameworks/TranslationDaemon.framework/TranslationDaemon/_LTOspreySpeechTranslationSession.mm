@interface _LTOspreySpeechTranslationSession
- (BOOL)_receivedEmptyFinalASRResults;
- (NSString)description;
- (_LTOspreySpeechTranslationSession)initWithService:(id)a3 context:(id)a4 delegate:(id)a5 selfLoggingManager:(id)a6;
- (_LTOspreySpeechTranslationSession)initWithService:(id)a3 context:(id)a4 text:(id)a5 delegate:(id)a6 selfLoggingManager:(id)a7;
- (_LTSpeechTranslationDelegate)delegate;
- (id)_bestSourceTextForResponse:(id)a3;
- (id)_primaryLanguageRecognized;
- (id)_translationForLocale:(id)a3;
- (void)_handleAudioLimitExceededResponse:(id)a3;
- (void)_handleFinalBlazarResponse:(id)a3;
- (void)_handleFinalRecognitionResponse:(id)a3;
- (void)_handlePartialRecognitionResponse:(id)a3;
- (void)_handleServerEndpointFeatures:(id)a3;
- (void)_handleTTSResponse:(id)a3;
- (void)_handleTranslationResponse:(id)a3;
- (void)cancel;
- (void)cancelServerTimeout;
- (void)confirmDataIfNeeded;
- (void)didCompressPackets:(id)a3 totalPacketCount:(unint64_t)a4;
- (void)endpoint;
- (void)initCommon;
- (void)sendAnalyticsEvent;
- (void)sendAudioData:(id)a3;
- (void)sendEndAudio;
- (void)serverTimeoutFired;
- (void)setLanguagesRecognized:(id)a3;
- (void)startServerTimeoutTimer;
- (void)streamDidReceiveSpeechTranslationStreamingResponse:(id)a3;
- (void)streamFailVerifySpeechTranslationStreamingResponse:(id)a3;
- (void)translationDidFinishWithError:(id)a3;
- (void)updateServerTimeout:(double)a3;
@end

@implementation _LTOspreySpeechTranslationSession

- (void)sendAnalyticsEvent
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  AnalyticsSendEventLazy();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

- (NSString)description
{
  if (self->_sentAudio)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_sentEndAudio)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_endpointedSpeech)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v25 = v5;
  v26 = v3;
  if (self->_didReceiveAudioLimitExceededResponse)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_didReceivePartialRecognitionResponse)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_didReceiveFinalRecognitionResponse)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_didReceiveTranslationResponse)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_didReceiveTTSResponse)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_didReceiveFinalBlazarResponse)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_didTimeout)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v27 = MEMORY[0x277CCACA8];
  v13 = v12;
  v24 = v11;
  v23 = v10;
  v22 = v9;
  v29 = v8;
  v14 = v7;
  v15 = v6;
  v16 = v25;
  v17 = v4;
  v18 = v26;
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v28 = [v27 stringWithFormat:@"<%@: sentAudio:%@ sentEndAudio:%@ endpointedSpeech:%@ didReceiveAudioLimitExceededResponse:%@ didReceivePartialRecognitionResponse:%@ didReceiveFinalRecognitionResponse:%@ didReceiveTranslationResponse:%@  didReceiveTTSResponse:%@ didReceiveFinalBlazarResponse:%@ didTimeout:%@ error %@>", v20, v18, v17, v16, v15, v14, v29, v22, v23, v24, v13, self->_error];

  return v28;
}

- (_LTOspreySpeechTranslationSession)initWithService:(id)a3 context:(id)a4 delegate:(id)a5 selfLoggingManager:(id)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v47.receiver = self;
  v47.super_class = _LTOspreySpeechTranslationSession;
  v15 = [(_LTOspreySpeechTranslationSession *)&v47 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_delegate, v13);
    objc_storeStrong(&v16->_context, a4);
    v17 = [[_LTSpeechCompressor alloc] initWithDelegate:v16];
    speechCompressor = v16->_speechCompressor;
    v16->_speechCompressor = v17;

    [(_LTSpeechCompressor *)v16->_speechCompressor startCompressionNarrowband:0];
    v19 = [MEMORY[0x277CBEB38] dictionary];
    finalASRResults = v16->_finalASRResults;
    v16->_finalASRResults = v19;

    v21 = [MEMORY[0x277CBEB18] array];
    mtResults = v16->_mtResults;
    v16->_mtResults = v21;

    v23 = [MEMORY[0x277CBEB18] array];
    confirmedTranslations = v16->_confirmedTranslations;
    v16->_confirmedTranslations = v23;

    v16->_audioPacketCount = 0;
    v16->_didSendTranslationDidFinish = 0;
    *&v16->_sentAudio = 0;
    v16->_didReceiveFinalBlazarResponse = 0;
    objc_storeStrong(&v16->_selfLoggingManager, a6);
    v25 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = v25;
      v27 = [v12 uniqueID];
      v28 = [v12 sessionID];
      v29 = _LTPreferencesSessionIDOverride(v28);
      v30 = [v12 dataSharingOptInStatus];
      *buf = 138543874;
      v49 = v27;
      v50 = 2114;
      v51 = v29;
      v52 = 2048;
      v53 = v30;
      _os_log_impl(&dword_232E53000, v26, OS_LOG_TYPE_INFO, "Starting speech translation with request ID: %{public}@ session ID: %{public}@, opt in status: %zd", buf, 0x20u);
    }

    objc_initWeak(buf, v16);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __89___LTOspreySpeechTranslationSession_initWithService_context_delegate_selfLoggingManager___block_invoke;
    v45[3] = &unk_2789B78F8;
    v31 = v12;
    v46 = v31;
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __89___LTOspreySpeechTranslationSession_initWithService_context_delegate_selfLoggingManager___block_invoke_50;
    v42 = &unk_2789B7920;
    v32 = v16;
    v43 = v32;
    v44[1] = a2;
    objc_copyWeak(v44, buf);
    v33 = [v11 performSpeechTranslationWithDelegate:v32 requestBuilder:v45 completion:&v39];
    v34 = v32[1];
    v32[1] = v33;

    v35 = [v31 _ospreySpeechTranslationRequestWithHybridEndpointer:{1, v39, v40, v41, v42}];
    [v32[1] sendSpeechTranslationStreamingRequest:v35];
    [v32 initCommon];
    v36 = v32;

    objc_destroyWeak(v44);
    objc_destroyWeak(buf);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v16;
}

- (_LTOspreySpeechTranslationSession)initWithService:(id)a3 context:(id)a4 text:(id)a5 delegate:(id)a6 selfLoggingManager:(id)a7
{
  v51 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v44.receiver = self;
  v44.super_class = _LTOspreySpeechTranslationSession;
  v17 = [(_LTOspreySpeechTranslationSession *)&v44 init];
  if (v17)
  {
    if (!v14)
    {
      v18 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_LTOspreySpeechTranslationSession initWithService:context:text:delegate:selfLoggingManager:];
      }
    }

    objc_storeWeak(&v17->_delegate, v15);
    objc_storeStrong(&v17->_context, a4);
    v19 = [MEMORY[0x277CBEB18] array];
    mtResults = v17->_mtResults;
    v17->_mtResults = v19;

    v21 = [MEMORY[0x277CBEB18] array];
    confirmedTranslations = v17->_confirmedTranslations;
    v17->_confirmedTranslations = v21;

    v23 = [v14 copy];
    cachedUserTypedText = v17->_cachedUserTypedText;
    v17->_cachedUserTypedText = v23;

    objc_storeStrong(&v17->_selfLoggingManager, a7);
    v25 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = v25;
      v27 = [v13 uniqueID];
      v28 = [v13 sessionID];
      v29 = _LTPreferencesSessionIDOverride(v28);
      v30 = [v13 dataSharingOptInStatus];
      *buf = 138543874;
      v46 = v27;
      v47 = 2114;
      v48 = v29;
      v49 = 2048;
      v50 = v30;
      _os_log_impl(&dword_232E53000, v26, OS_LOG_TYPE_INFO, "Starting text to speech translation with request ID: %{public}@, session ID: %{public}@, opt in status: %zd", buf, 0x20u);
    }

    objc_initWeak(buf, v17);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __94___LTOspreySpeechTranslationSession_initWithService_context_text_delegate_selfLoggingManager___block_invoke;
    v42[3] = &unk_2789B78F8;
    v31 = v13;
    v43 = v31;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __94___LTOspreySpeechTranslationSession_initWithService_context_text_delegate_selfLoggingManager___block_invoke_2;
    v39[3] = &unk_2789B7948;
    v32 = v17;
    v40 = v32;
    objc_copyWeak(&v41, buf);
    v33 = [v12 performSpeechTranslationWithDelegate:v32 requestBuilder:v42 completion:v39];
    v34 = v32[1];
    v32[1] = v33;

    v35 = [v31 _ospreyTextToSpeechTranslationRequestWithText:v14];
    [v32[1] sendSpeechTranslationStreamingRequest:v35];
    [v32 initCommon];
    v36 = v32;

    objc_destroyWeak(&v41);
    objc_destroyWeak(buf);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)initCommon
{
  self->_initialOnlineTimeout = _LTPreferencesServerSpeechSessionInitialOnlineTimeout();
  self->_onlineTimeout = _LTPreferencesServerSpeechSessionOnlineTimeout();
  self->_endpointTimeout = _LTPreferencesServerSpeechSessionEndpointTimeout();
  v3 = dispatch_queue_create("com.apple.translation.speech-timer", 0);
  timerQueue = self->_timerQueue;
  self->_timerQueue = v3;

  [(_LTOspreySpeechTranslationSession *)self startServerTimeoutTimer];
  selfLoggingManager = self->_selfLoggingManager;
  v7 = [(_LTTranslationContext *)self->_context logIdentifier];
  v6 = [(_LTTranslationContext *)self->_context uniqueID];
  [(_LTDSELFLoggingManager *)selfLoggingManager sendSpeechTranslationFrameworkRequestSentWithInvocationId:v7 qssSessionId:v6 requestRoute:1 payloadSizeInBytes:0];
}

- (void)startServerTimeoutTimer
{
  if (!self->_serverTimer)
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_timerQueue);
    serverTimer = self->_serverTimer;
    self->_serverTimer = v4;

    [(_LTOspreySpeechTranslationSession *)self updateServerTimeout:self->_initialOnlineTimeout];
    v6 = self->_serverTimer;

    dispatch_resume(v6);
  }
}

- (void)updateServerTimeout:(double)a3
{
  if (self->_serverTimer)
  {
    objc_initWeak(&location, self);
    serverTimer = self->_serverTimer;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57___LTOspreySpeechTranslationSession_updateServerTimeout___block_invoke;
    v9[3] = &unk_2789B53F0;
    objc_copyWeak(&v10, &location);
    dispatch_source_set_event_handler(serverTimer, v9);
    v6 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(_LTOspreySpeechTranslationSession *)v6 updateServerTimeout:a3];
    }

    v7 = self->_serverTimer;
    v8 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)cancelServerTimeout
{
  serverTimer = self->_serverTimer;
  if (serverTimer)
  {
    dispatch_source_cancel(serverTimer);
    v4 = self->_serverTimer;
    self->_serverTimer = 0;
  }
}

- (void)serverTimeoutFired
{
  v3 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Server timeout triggered", v5, 2u);
  }

  self->_didTimeout = 1;
  v4 = [MEMORY[0x277CCA9B8] lt_translationTimeout];
  [(_LTOspreySpeechTranslationSession *)self translationDidFinishWithError:v4];

  [(_LTOspreySpeechTranslationSession *)self cancel];
}

- (void)sendAudioData:(id)a3
{
  v4 = a3;
  if (self->_didReceiveFinalRecognitionResponse)
  {
    v5 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [_LTOspreySpeechTranslationSession sendAudioData:];
    }
  }

  else if (self->_sentEndAudio)
  {
    v6 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [_LTOspreySpeechTranslationSession sendAudioData:];
    }
  }

  else
  {
    endpointedSpeech = self->_endpointedSpeech;
    v8 = _LTOSLogTranslationEngine();
    v9 = v8;
    if (endpointedSpeech)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [_LTOspreySpeechTranslationSession sendAudioData:];
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "sendAudioData: Start compressing audio", v10, 2u);
      }

      [(_LTSpeechCompressor *)self->_speechCompressor addAudioSampleData:v4];
      self->_sentAudio = 1;
    }
  }
}

- (void)sendEndAudio
{
  if (self->_sentAudio)
  {
    v9 = v2;
    v10 = v3;
    if (!self->_sentEndAudio)
    {
      self->_sentEndAudio = 1;
      v5 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Sending end audio", v8, 2u);
      }

      v6 = objc_alloc_init(FTMutableFinishAudio);
      [(FTMutableFinishAudio *)v6 setPacket_count:LODWORD(self->_audioPacketCount)];
      v7 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
      [(FTMutableSpeechTranslationStreamingRequest *)v7 setContent_type:5];
      [(FTMutableSpeechTranslationStreamingRequest *)v7 setContentAsFTFinishAudio:v6];
      [(FTSpeechTranslationStreamingContext *)self->_streamContext sendSpeechTranslationStreamingRequest:v7];
    }
  }
}

- (void)endpoint
{
  [(_LTOspreySpeechTranslationSession *)self updateServerTimeout:self->_endpointTimeout];
  if (!self->_endpointedSpeech)
  {
    v3 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [_LTOspreySpeechTranslationSession endpoint];
    }

    self->_endpointedSpeech = 1;
    [(_LTOspreySpeechTranslationSession *)self sendEndAudio];
  }
}

- (void)cancel
{
  [(_LTOspreySpeechTranslationSession *)self sendEndAudio];
  [(FTSpeechTranslationStreamingContext *)self->_streamContext closeStream];
  self->_isCancelled = 1;

  objc_storeWeak(&self->_delegate, 0);
}

- (void)setLanguagesRecognized:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_lidResult, a3);
  v6 = [v5 isFinal];
  v7 = _LTOSLogTranslationEngine();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [(_LTOspreySpeechTranslationSession *)self _primaryLanguageRecognized];
      v11 = [v10 _ltLocaleIdentifier];
      *buf = 138543362;
      v36 = v11;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "LID result received. Primary language recognized: %{public}@", buf, 0xCu);
    }

    v29 = self;
    [(_LTOspreySpeechTranslationSession *)self confirmDataIfNeeded];
    v12 = objc_alloc_init(FTMutableLanguageDetected);
    v13 = [v5 dominantLanguage];
    v14 = [v13 _ltLocaleIdentifier];
    [(FTMutableLanguageDetected *)v12 setDetected_locale:v14];

    v15 = [MEMORY[0x277CBEB18] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = [v5 confidences];
    v17 = [v16 allKeys];

    v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          v23 = objc_alloc_init(FTMutableLanguageDetectionPrediction);
          v24 = [v22 _ltLocaleIdentifier];
          [(FTMutableLanguageDetectionPrediction *)v23 setLocale:v24];

          v25 = [v5 confidences];
          v26 = [v25 objectForKeyedSubscript:v22];
          [v26 floatValue];
          [(FTMutableLanguageDetectionPrediction *)v23 setConfidence:?];

          [v15 addObject:v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    [(FTMutableLanguageDetected *)v12 setPredictions:v15];
    v27 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
    [(FTMutableSpeechTranslationStreamingRequest *)v27 setContent_type:2];
    [(FTMutableSpeechTranslationStreamingRequest *)v27 setContentAsFTLanguageDetected:v12];
    [(FTSpeechTranslationStreamingContext *)v29->_streamContext sendSpeechTranslationStreamingRequest:v27];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_LTOspreySpeechTranslationSession setLanguagesRecognized:];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_primaryLanguageRecognized
{
  if (([(_LTTranslationContext *)self->_context autodetectLanguage]& 1) != 0)
  {
    lidResult = self->_lidResult;
    if (lidResult)
    {
      v4 = [(_LTLanguageDetectionResult *)lidResult dominantLanguage];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = [(_LTTranslationContext *)self->_context localePair];
    v4 = [v5 sourceLocale];
  }

  return v4;
}

- (id)_translationForLocale:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSMutableArray *)self->_mtResults reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 locale];
        v11 = [v10 _ltEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)translationDidFinishWithError:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_error, a3);
  [(_LTOspreySpeechTranslationSession *)self sendEndAudio];
  [(_LTOspreySpeechTranslationSession *)self cancelServerTimeout];
  if (!self->_didSendTranslationDidFinish)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      self->_didSendTranslationDidFinish = 1;
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 translationDidFinishWithError:v5];
    }

    else
    {
      v9 = _LTOSLogTranslationEngine();
      v10 = v9;
      if (v5)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [_LTOspreySpeechTranslationSession translationDidFinishWithError:];
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = self;
        _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Warning: Speech session %p finished successfully but there's no delegate to inform", &v12, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)confirmDataIfNeeded
{
  v7 = a2;
  v8 = [a3 locale];
  v9 = [v8 _ltLocaleIdentifier];
  *a1 = 138543362;
  *a4 = v9;
  _os_log_debug_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEBUG, "Result locale: %{public}@", a1, 0xCu);
}

- (void)didCompressPackets:(id)a3 totalPacketCount:(unint64_t)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v12 = 134217984;
    v13 = [v5 count];
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Sending %zu packets from compressor", &v12, 0xCu);
  }

  v8 = [v5 _ltCompactMap:&__block_literal_global_25];
  v9 = objc_alloc_init(FTMutableSpeechTranslationAudioPacket);
  [(FTMutableSpeechTranslationAudioPacket *)v9 setAudio_frames:v8];
  v10 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
  [(FTMutableSpeechTranslationStreamingRequest *)v10 setContent_type:4];
  [(FTMutableSpeechTranslationStreamingRequest *)v10 setContentAsFTSpeechTranslationAudioPacket:v9];
  [(FTSpeechTranslationStreamingContext *)self->_streamContext sendSpeechTranslationStreamingRequest:v10];
  self->_audioPacketCount += [v8 count];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleAudioLimitExceededResponse:(id)a3
{
  self->_didReceiveAudioLimitExceededResponse = 1;
  v4 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [_LTOspreySpeechTranslationSession _handleAudioLimitExceededResponse:];
  }

  v5 = [MEMORY[0x277CCA9B8] lt_speechLimitExceeded];
  [(_LTOspreySpeechTranslationSession *)self translationDidFinishWithError:v5];
}

- (void)_handlePartialRecognitionResponse:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_didReceivePartialRecognitionResponse = 1;
  v5 = [v4 source_locale];

  if (v5)
  {
    [(_LTOspreySpeechTranslationSession *)self updateServerTimeout:self->_onlineTimeout];
    v6 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = [v4 source_locale];
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Always sending ASR partial %{public}@", &v14, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x277CE1B90]) initWithOspreyPartialRecognitionResponse:v4 isSanitized:{-[_LTTranslationContext censorSpeech](self->_context, "censorSpeech")}];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 speechRecognitionResult:v9];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleFinalRecognitionResponse:(id)a3
{
  v4 = a3;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v20 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Received final recognition response", v20, 2u);
  }

  v6 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(_LTOspreySpeechTranslationSession *)v6 _handleFinalRecognitionResponse:v4];
  }

  self->_didReceiveFinalRecognitionResponse = 1;
  v7 = objc_alloc(MEMORY[0x277CBEAF8]);
  v8 = [v4 source_locale];
  v9 = [v7 initWithLocaleIdentifier:v8];

  v10 = _LTPreferencesServerASRConfidenceThreshold(v9);
  if (([(_LTTranslationContext *)self->_context asrConfidenceThreshold]& 0x8000000000000000) == 0)
  {
    v10 = [(_LTTranslationContext *)self->_context asrConfidenceThreshold];
  }

  v11 = [objc_alloc(MEMORY[0x277CE1B90]) initWithOspreyResponse:v4 confidenceThreshold:v10 isSanitized:{-[_LTTranslationContext censorSpeech](self->_context, "censorSpeech")}];
  v12 = [v11 transcriptions];
  v13 = [v12 _ltCompactMap:&__block_literal_global_72_0];

  v14 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [_LTOspreySpeechTranslationSession _handleFinalRecognitionResponse:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = objc_loadWeakRetained(&self->_delegate);
    [v17 speechRecognitionResult:v11];
  }

  finalASRResults = self->_finalASRResults;
  v19 = [v11 locale];
  [(NSMutableDictionary *)finalASRResults setObject:v11 forKeyedSubscript:v19];

  [(_LTOspreySpeechTranslationSession *)self confirmDataIfNeeded];
}

- (void)_handleServerEndpointFeatures:(id)a3
{
  v4 = a3;
  v5 = [v4 source_locale];
  if (v5 && (v6 = v5, [v4 server_endpoint_features], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    [(_LTOspreySpeechTranslationSession *)self updateServerTimeout:self->_onlineTimeout];
    v8 = objc_alloc(MEMORY[0x277CE1B70]);
    v9 = [v4 server_endpoint_features];
    v10 = [v8 initWithResponse:v9];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      v14 = objc_alloc(MEMORY[0x277CBEAF8]);
      v15 = [v4 source_locale];
      v16 = [v14 initWithLocaleIdentifier:v15];
      [v13 serverEndpointerFeatures:v10 locale:v16];
    }
  }

  else
  {
    v17 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [_LTOspreySpeechTranslationSession _handleServerEndpointFeatures:];
    }
  }
}

- (id)_bestSourceTextForResponse:(id)a3
{
  cachedUserTypedText = self->_cachedUserTypedText;
  if (cachedUserTypedText)
  {
    v4 = cachedUserTypedText;
  }

  else
  {
    v6 = [a3 translation_locale_pair];
    v7 = [v6 source_locale];

    v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v7];
    v9 = [(NSMutableDictionary *)self->_finalASRResults objectForKeyedSubscript:v8];
    v10 = [v9 bestTranscription];
    v4 = [v10 formattedString];
  }

  return v4;
}

- (void)_handleTranslationResponse:(id)a3
{
  v4 = a3;
  v5 = [(_LTOspreySpeechTranslationSession *)self _bestSourceTextForResponse:v4];
  v6 = [objc_alloc(MEMORY[0x277CE1C18]) initWithOspreySpeechTranslationMTResponse:v4 sourceText:v5 censorSpeech:{-[_LTTranslationContext censorSpeech](self->_context, "censorSpeech")}];
  [(_LTOspreySpeechTranslationSession *)self updateServerTimeout:self->_onlineTimeout];
  v7 = [v4 is_final];

  if (v7)
  {
    self->_didReceiveTranslationResponse = 1;
  }

  v8 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_LTOspreySpeechTranslationSession _handleTranslationResponse:v8];
  }

  [(NSMutableArray *)self->_mtResults addObject:v6];
  [(_LTOspreySpeechTranslationSession *)self confirmDataIfNeeded];
}

- (void)_handleTTSResponse:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_didReceiveTTSResponse = 1;
  v5 = _LTOSLogTTS();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 target_locale];
    v8 = [v4 text_to_speech_response];
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = [v8 audio_type];
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Received TTS response: %{public}@ (%zd)", buf, 0x16u);
  }

  [(_LTOspreySpeechTranslationSession *)self updateServerTimeout:self->_onlineTimeout];
  v9 = MEMORY[0x277CBEAF8];
  v10 = [v4 target_locale];
  v11 = [v9 localeWithLocaleIdentifier:v10];

  v35 = v11;
  v34 = [(_LTOspreySpeechTranslationSession *)self _translationForLocale:v11];
  v12 = [v34 translations];
  v13 = [v12 firstObject];

  v14 = [v13 sanitizedFormattedString];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [v13 formattedString];
  }

  v17 = v16;

  v18 = MEMORY[0x277CE1C50];
  v19 = [v4 text_to_speech_response];
  v20 = [v19 word_timing_info];
  v21 = [v18 wordTimingInfoFromArray:v20 text:v17];

  v22 = [_LTAudioData alloc];
  v23 = [v4 text_to_speech_response];
  v24 = [v23 decoder_description];
  v25 = v24;
  if (v24)
  {
    [v24 audioStreamBasicDescription];
  }

  else
  {
    v37 = 0;
    memset(buf, 0, sizeof(buf));
  }

  v26 = [v4 text_to_speech_response];
  v27 = [v26 audio];
  v28 = [(_LTAudioData *)v22 initWithASBD:buf rawData:v27 wordTimingInfo:v21];

  if (!v28)
  {
    v29 = _LTOSLogTTS();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [_LTOspreySpeechTranslationSession _handleTTSResponse:];
    }
  }

  v30 = MEMORY[0x277CCACA8];
  v31 = [v4 target_locale];
  v32 = [v30 stringWithFormat:@"%@-%@", v31, v17];

  [(_LTTextToSpeechCache *)self->_ttsCache cacheAudioData:v28 forKey:v32];
  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)_receivedEmptyFinalASRResults
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_finalASRResults count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = [(NSMutableDictionary *)self->_finalASRResults allValues];
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v8 bestTranscription];
          if (v9)
          {
            v10 = v9;
            v11 = [v8 bestTranscription];
            v12 = [v11 formattedString];
            v13 = [v12 isEqualToString:&stru_284834138];

            if (!v13)
            {
              v14 = 0;
              goto LABEL_14;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v14 = 1;
LABEL_14:
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_handleFinalBlazarResponse:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(_LTOspreySpeechTranslationSession *)self cancelServerTimeout];
  self->_didReceiveFinalBlazarResponse = 1;
  [(FTSpeechTranslationStreamingContext *)self->_streamContext closeStream];
  if (_LTRemoteStatusIsSuccess([v4 return_code]))
  {
    if (![(_LTOspreySpeechTranslationSession *)self _receivedEmptyFinalASRResults])
    {
      v12 = 0;
      goto LABEL_11;
    }

    v5 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_LTOspreySpeechTranslationSession _handleFinalBlazarResponse:];
    }

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CE1C58];
    v17[0] = *MEMORY[0x277CCA450];
    v9 = [v6 localizedStringForKey:@"EMPTY_RECOGNITION_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v18[0] = v9;
    v17[1] = *MEMORY[0x277CCA470];
    v10 = [v6 localizedStringForKey:@"SPEECH_NOT_RECOGNIZED_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v18[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v12 = [v7 errorWithDomain:v8 code:10 userInfo:v11];
  }

  else
  {
    v13 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(_LTOspreySpeechTranslationSession *)v13 _handleFinalBlazarResponse:v4];
    }

    v14 = [v4 return_code];
    v6 = [v4 return_str];
    v12 = _LTErrorFromRemoteFailure(v14, v6);
  }

LABEL_11:
  [(_LTOspreySpeechTranslationSession *)self translationDidFinishWithError:v12];
  if (!self->_isCancelled)
  {
    completionBlock = self->_completionBlock;
    if (completionBlock)
    {
      completionBlock[2](completionBlock, v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)streamFailVerifySpeechTranslationStreamingResponse:(id)a3
{
  v4 = a3;
  [(_LTOspreySpeechTranslationSession *)self translationDidFinishWithError:v4];
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_LTOspreySpeechTranslationSession streamFailVerifySpeechTranslationStreamingResponse:];
  }
}

- (void)streamDidReceiveSpeechTranslationStreamingResponse:(id)a3
{
  v4 = a3;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Received server message", v8, 2u);
  }

  v6 = [v4 content_type];
  if (v6 > 3)
  {
    if (v6 <= 5)
    {
      if (v6 == 4)
      {
        v7 = [v4 contentAsFTSpeechTranslationMtResponse];
        [(_LTOspreySpeechTranslationSession *)self _handleTranslationResponse:v7];
      }

      else
      {
        v7 = [v4 contentAsFTSpeechTranslationTextToSpeechResponse];
        [(_LTOspreySpeechTranslationSession *)self _handleTTSResponse:v7];
      }

      goto LABEL_20;
    }

    if (v6 == 6)
    {
      v7 = [v4 contentAsFTFinalBlazarResponse];
      [(_LTOspreySpeechTranslationSession *)self _handleFinalBlazarResponse:v7];
      goto LABEL_20;
    }

    if (v6 == 12)
    {
      v7 = [v4 contentAsFTSpeechTranslationServerEndpointFeatures];
      [(_LTOspreySpeechTranslationSession *)self _handleServerEndpointFeatures:v7];
      goto LABEL_20;
    }
  }

  else
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v7 = [v4 contentAsFTSpeechTranslationFinalRecognitionResponse];
        [(_LTOspreySpeechTranslationSession *)self _handleFinalRecognitionResponse:v7];
      }

      else
      {
        v7 = [v4 contentAsFTAudioLimitExceeded];
        [(_LTOspreySpeechTranslationSession *)self _handleAudioLimitExceededResponse:v7];
      }

      goto LABEL_20;
    }

    if (v6)
    {
      if (v6 == 1)
      {
        v7 = [v4 contentAsFTSpeechTranslationPartialRecognitionResponse];
        [(_LTOspreySpeechTranslationSession *)self _handlePartialRecognitionResponse:v7];
LABEL_20:
      }
    }

    else
    {
      [(_LTOspreySpeechTranslationSession *)self cancelServerTimeout];
    }
  }
}

- (_LTSpeechTranslationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithService:context:text:delegate:selfLoggingManager:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateServerTimeout:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_232E53000, log, OS_LOG_TYPE_DEBUG, "Setting server timeout for %.2fs", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)translationDidFinishWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_232E53000, v1, OS_LOG_TYPE_FAULT, "Speech session %p finished with error, but there's no delegate to inform; error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_handleAudioLimitExceededResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleFinalRecognitionResponse:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [OUTLINED_FUNCTION_7() return_code];
  v5 = [a2 return_str];
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x12u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleFinalRecognitionResponse:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_232E53000, v0, OS_LOG_TYPE_DEBUG, "Recognition: %{sensitive}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_handleTranslationResponse:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() locale];
  v4 = [v3 _ltLocaleIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleTTSResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleFinalBlazarResponse:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a1;
  [OUTLINED_FUNCTION_7() return_code];
  v5 = [a2 return_str];
  OUTLINED_FUNCTION_5_4();
  _os_log_error_impl(&dword_232E53000, v2, OS_LOG_TYPE_ERROR, "Remote service error %d: %@", v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleFinalBlazarResponse:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)streamFailVerifySpeechTranslationStreamingResponse:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end