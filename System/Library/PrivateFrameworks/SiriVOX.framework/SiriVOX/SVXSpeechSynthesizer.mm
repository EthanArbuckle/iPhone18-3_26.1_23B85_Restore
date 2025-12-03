@interface SVXSpeechSynthesizer
- (BOOL)_continueContext:(id)context error:(id *)error;
- (BOOL)_isTTSPlaybackDisabled;
- (BOOL)_startPresynthesizedAudioRequestForContext:(id)context error:(id *)error;
- (BOOL)_startSpeechRequestForContext:(id)context error:(id *)error;
- (SVXSpeechSynthesizer)initWithModule:(id)module;
- (SVXSpeechSynthesizer)initWithModule:(id)module speechSynthesisUtils:(id)utils sessionUtils:(id)sessionUtils voiceGenderConverter:(id)converter announcer:(id)announcer configurationManager:(id)manager audioStreamingAnnouncer:(id)streamingAnnouncer ttsSession:(id)self0 speechSynthesisConfigurer:(id)self1 speechRequestConfigurer:(id)self2 voiceConfigurer:(id)self3 notificationCenterRegistrar:(id)self4 speakableUtteranceParserProvider:(id)self5 localizationUtils:(id)self6 speechInstrumentationUtilities:(id)self7 metricsContextFactory:(id)self8;
- (unint64_t)_numberOfContexts;
- (void)_cancelPendingContextsAtIndexes:(id)indexes;
- (void)_cancelPendingContextsWithOperationType:(int64_t)type;
- (void)_cancelPendingSpeakingContextWithRequest:(id)request;
- (void)_cancelPendingSpeakingContextsWithPriorityBelow:(int64_t)below;
- (void)_configureWithConfiguration:(id)configuration;
- (void)_duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion;
- (void)_enqueueContext:(id)context;
- (void)_finalizeContext:(id)context withResultType:(int64_t)type utterance:(id)utterance error:(id)error;
- (void)_handleDidFinishPresynthesizedAudioRequest:(id)request instrumentMetrics:(id)metrics error:(id)error;
- (void)_handleDidFinishSpeakingWithSpeechRequest:(id)request instrumentMetrics:(id)metrics;
- (void)_handleDidFinishSpeakingWithSpeechRequest:(id)request success:(BOOL)success error:(id)error;
- (void)_handleDidFinishSynthesizingForSpeechRequest:(id)request instrumentMetrics:(id)metrics error:(id)error;
- (void)_handleDidGenerateAudioChunkData:(id)data forSpeechRequest:(id)request;
- (void)_handleDidReceiveSpeechWordTimingInfoArray:(id)array forSpeechRequest:(id)request;
- (void)_handleDidStartPresynthesizedAudioRequest:(id)request timestamp:(unint64_t)timestamp;
- (void)_handleDidStartSpeakingWithSpeechRequest:(id)request timestamp:(unint64_t)timestamp;
- (void)_handleDidStopPresynthesizedAudioRequest:(id)request success:(BOOL)success error:(id)error;
- (void)_postcool;
- (void)_prewarm;
- (void)_prewarmWithContext:(id)context;
- (void)_processPendingContexts;
- (void)_startContext:(id)context;
- (void)_stopCurrentSpeakingContextWithInterruptionBehavior:(int64_t)behavior;
- (void)_stopCurrentSpeakingContextWithRequest:(id)request withInterruptionBehavior:(int64_t)behavior;
- (void)addListener:(id)listener;
- (void)cancelPendingRequests;
- (void)cancelRequest:(id)request;
- (void)dealloc;
- (void)didFinishPresynthesizedAudioRequest:(id)request withInstrumentMetrics:(id)metrics error:(id)error;
- (void)didFinishSpeakingRequest:(id)request successfully:(BOOL)successfully phonemesSpoken:(id)spoken withError:(id)error;
- (void)didFinishSpeakingRequest:(id)request withInstrumentMetrics:(id)metrics;
- (void)didFinishSynthesisRequest:(id)request withInstrumentMetrics:(id)metrics error:(id)error;
- (void)didStartPresynthesizedAudioRequest:(id)request;
- (void)didStartSpeakingRequest:(id)request;
- (void)didStopPresynthesizedAudioRequest:(id)request atEnd:(BOOL)end error:(id)error;
- (void)duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion;
- (void)enqueueRequest:(id)request languageCode:(id)code voiceName:(id)name gender:(int64_t)gender audioSessionID:(unsigned int)d preparation:(id)preparation finalization:(id)finalization taskTracker:(id)self0 analyticsContext:(id)self1;
- (void)languageCodeChanged:(id)changed;
- (void)outputVoiceChanged:(id)changed;
- (void)postcool;
- (void)prewarm;
- (void)prewarmRequest:(id)request;
- (void)removeListener:(id)listener;
- (void)startWithModuleInstanceProvider:(id)provider platformDependencies:(id)dependencies;
- (void)stopCurrentRequestWithInterruptionBehavior:(int64_t)behavior;
- (void)stopRequest:(id)request withInterruptionBehavior:(int64_t)behavior;
- (void)stopWithModuleInstanceProvider:(id)provider;
- (void)synthesizeRequest:(id)request audioChunkHandler:(id)handler taskTracker:(id)tracker analyticsContext:(id)context completion:(id)completion;
- (void)updateWithConfiguration:(id)configuration;
- (void)withRequest:(id)request didGenerateAudioChunk:(id)chunk;
- (void)withRequest:(id)request didReceiveTimingInfo:(id)info;
@end

@implementation SVXSpeechSynthesizer

- (BOOL)_isTTSPlaybackDisabled
{
  v2 = *MEMORY[0x277CEF598];
  v3 = _AFPreferencesValueForKey();
  LOBYTE(v2) = _AFPreferencesBoolFromValueWithDefault();

  return v2;
}

- (void)_duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  ttsSession = self->_ttsSession;
  if (ttsSession)
  {
    *&v9 = to;
    [(SiriTTSDaemonSession *)ttsSession adjustVolume:completionCopy rampTime:v9 didFinish:time];
  }

  else if (completionCopy)
  {
    v13 = completionCopy;
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = [v11 initWithDomain:*MEMORY[0x277CEF588] code:6 userInfo:0];
    v13[2](v13, v12);
  }

  MEMORY[0x2821F96F8]();
}

- (void)duckTTSVolumeTo:(float)to rampTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__SVXSpeechSynthesizer_duckTTSVolumeTo_rampTime_completion___block_invoke;
  v11[3] = &unk_279C680E0;
  v12 = completionCopy;
  v9 = completionCopy;
  *&v10 = to;
  [(SVXSpeechSynthesizer *)self _duckTTSVolumeTo:v11 rampTime:v10 completion:time];
}

uint64_t __60__SVXSpeechSynthesizer_duckTTSVolumeTo_rampTime_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_finalizeContext:(id)context withResultType:(int64_t)type utterance:(id)utterance error:(id)error
{
  v97 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  utteranceCopy = utterance;
  errorCopy = error;
  v13 = MEMORY[0x277CEF098];
  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    if (type > 4)
    {
      v16 = @"(unknown)";
    }

    else
    {
      v16 = off_279C678A8[type];
    }

    v17 = v16;
    *buf = 136316162;
    v88 = "[SVXSpeechSynthesizer _finalizeContext:withResultType:utterance:error:]";
    v89 = 2112;
    v90 = contextCopy;
    v91 = 2112;
    v92 = v17;
    v93 = 2112;
    v94 = utteranceCopy;
    v95 = 2112;
    v96 = errorCopy;
    _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s context = %@, resultType = %@, utterance = %@, error = %@", buf, 0x34u);
  }

  if (contextCopy)
  {
    _numberOfContexts = [(SVXSpeechSynthesizer *)self _numberOfContexts];
    currentSpeakingContext = self->_currentSpeakingContext;
    if (currentSpeakingContext == contextCopy)
    {
      self->_currentSpeakingContext = 0;

      v20 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
      {
        v21 = self->_currentSpeakingContext;
        *buf = 136315394;
        v88 = "[SVXSpeechSynthesizer _finalizeContext:withResultType:utterance:error:]";
        v89 = 2112;
        v90 = v21;
        _os_log_impl(&dword_2695B9000, v20, OS_LOG_TYPE_INFO, "%s Setting current speaking context. (_currentSpeakingContext = %@)", buf, 0x16u);
      }
    }

    [(NSMutableArray *)self->_pendingContexts removeObject:contextCopy];
    [(NSMutableSet *)self->_synthesizingContexts removeObject:contextCopy];
    speechWordTimingInfoArray = [(SVXSpeechSynthesisContext *)contextCopy speechWordTimingInfoArray];
    v76 = speechWordTimingInfoArray;
    if (speechWordTimingInfoArray)
    {
      v23 = speechWordTimingInfoArray;
      typeCopy = type;
      v68 = errorCopy;
      v70 = utteranceCopy;
      v73 = _numberOfContexts;
      v78 = contextCopy;
      v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(speechWordTimingInfoArray, "count")}];
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v25 = v23;
      v26 = [v25 countByEnumeratingWithState:&v81 objects:v86 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v82;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v82 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v81 + 1) + 8 * i);
            v31 = [SVXSpeechSynthesisWordTiming alloc];
            textRange = [v30 textRange];
            v34 = v33;
            [v30 startTime];
            v35 = [(SVXSpeechSynthesisWordTiming *)v31 initWithRange:textRange timeInterval:v34];
            [v24 addObject:v35];
          }

          v27 = [v25 countByEnumeratingWithState:&v81 objects:v86 count:16];
        }

        while (v27);
      }

      contextCopy = v78;
      errorCopy = v68;
      utteranceCopy = v70;
      v13 = MEMORY[0x277CEF098];
      _numberOfContexts = v73;
      type = typeCopy;
    }

    else
    {
      v24 = 0;
    }

    v36 = [[SVXSpeechSynthesisUtteranceInfo alloc] initWithUtterance:utteranceCopy wordTimings:v24];
    [(SVXSpeechSynthesisContext *)contextCopy finalizeWithResultType:type utteranceInfo:v36 error:errorCopy];
    request = [(SVXSpeechSynthesisContext *)contextCopy request];
    taskTracker = [(SVXSpeechSynthesisContext *)contextCopy taskTracker];
    if (type > 2)
    {
      if (type == 3)
      {
        analytics = [(SVXModule *)self->_module analytics];
        [(SVXSpeechSynthesisContext *)contextCopy analyticsContext];
        v61 = v60 = v36;
        [analytics logEventWithType:2705 context:v61];

        v36 = v60;
        [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidInterruptRequest:request taskTracker:taskTracker];
      }

      else if (type == 4)
      {
        analyticsContext = [(SVXSpeechSynthesisContext *)contextCopy analyticsContext];
        v41 = AFAnalyticsContextCreateWithError();
        analytics2 = [(SVXModule *)self->_module analytics];
        v42 = MEMORY[0x277CBEC10];
        v74 = analyticsContext;
        if (analyticsContext)
        {
          v43 = analyticsContext;
        }

        else
        {
          v43 = MEMORY[0x277CBEC10];
        }

        if (v41)
        {
          v42 = v41;
        }

        v85[0] = v43;
        v85[1] = v42;
        [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:{2, analytics2}];
        v71 = v36;
        v44 = _numberOfContexts;
        v46 = v45 = utteranceCopy;
        AFAnalyticsContextsMerge();
        v47 = v13;
        v49 = v48 = errorCopy;
        [typeCopy logEventWithType:2703 context:v49];

        errorCopy = v48;
        v13 = v47;

        utteranceCopy = v45;
        _numberOfContexts = v44;
        v36 = v71;

        [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidFailRequest:request taskTracker:taskTracker error:errorCopy];
      }

      goto LABEL_40;
    }

    if (type != 1)
    {
      if (type == 2)
      {
        analytics3 = [(SVXModule *)self->_module analytics];
        [(SVXSpeechSynthesisContext *)contextCopy analyticsContext];
        v39 = v38 = v36;
        [analytics3 logEventWithType:2702 context:v39];

        v36 = v38;
        [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidCancelRequest:request taskTracker:taskTracker];
      }

      goto LABEL_40;
    }

    v72 = v36;
    analytics4 = [(SVXModule *)self->_module analytics];
    analyticsContext2 = [(SVXSpeechSynthesisContext *)contextCopy analyticsContext];
    [analytics4 logEventWithType:2704 context:analyticsContext2];

    instrumentMetrics = [(SVXSpeechSynthesisContext *)contextCopy instrumentMetrics];
    v53 = instrumentMetrics;
    if (instrumentMetrics)
    {
      v75 = _numberOfContexts;
      speechBeginTime = [instrumentMetrics speechBeginTime];
      speechEndTime = [v53 speechEndTime];
      v56 = 0;
      v36 = v72;
      v69 = speechBeginTime;
      if (!speechBeginTime)
      {
        _numberOfContexts = v75;
        goto LABEL_39;
      }

      _numberOfContexts = v75;
      if (!speechEndTime)
      {
LABEL_39:
        [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidFinishRequest:request utteranceInfo:v36 record:v56 taskTracker:taskTracker, typeCopy];

LABEL_40:
        _numberOfContexts2 = [(SVXSpeechSynthesizer *)self _numberOfContexts];
        v63 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v88 = "[SVXSpeechSynthesizer _finalizeContext:withResultType:utterance:error:]";
          v89 = 2048;
          v90 = _numberOfContexts;
          v91 = 2048;
          v92 = _numberOfContexts2;
          _os_log_impl(&dword_2695B9000, v63, OS_LOG_TYPE_INFO, "%s (numberOfContexts: %tu -> %tu)", buf, 0x20u);
        }

        if (_numberOfContexts && !_numberOfContexts2)
        {
          [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidBecomeIdle];
        }

        goto LABEL_46;
      }

      typeCopy = speechEndTime;
      v57 = objc_alloc(MEMORY[0x277CEF4A8]);
      utterance = [v53 utterance];
      v56 = [v57 initWithUtterance:utterance beginTimestamp:v69 endTimestamp:typeCopy];
    }

    else
    {
      v56 = 0;
    }

    v36 = v72;
    goto LABEL_39;
  }

LABEL_46:
  performer = [(SVXModule *)self->_module performer];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __72__SVXSpeechSynthesizer__finalizeContext_withResultType_utterance_error___block_invoke;
  v80[3] = &unk_279C68FC0;
  v80[4] = self;
  [performer performBlock:v80 withOptions:0];

  v65 = *MEMORY[0x277D85DE8];
}

- (void)_stopCurrentSpeakingContextWithRequest:(id)request withInterruptionBehavior:(int64_t)behavior
{
  currentSpeakingContext = self->_currentSpeakingContext;
  requestCopy = request;
  request = [(SVXSpeechSynthesisContext *)currentSpeakingContext request];
  v9 = [request isEqual:requestCopy];

  if (v9)
  {

    [(SVXSpeechSynthesizer *)self _stopCurrentSpeakingContextWithInterruptionBehavior:behavior];
  }
}

- (void)_cancelPendingContextsWithOperationType:(int64_t)type
{
  if (type)
  {
    pendingContexts = self->_pendingContexts;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__SVXSpeechSynthesizer__cancelPendingContextsWithOperationType___block_invoke;
    v6[3] = &__block_descriptor_40_e42_B32__0__SVXSpeechSynthesisContext_8Q16_B24l;
    v6[4] = type;
    v5 = [(NSMutableArray *)pendingContexts indexesOfObjectsPassingTest:v6];
    if ([v5 count])
    {
      [(SVXSpeechSynthesizer *)self _cancelPendingContextsAtIndexes:v5];
    }
  }
}

- (void)_cancelPendingSpeakingContextsWithPriorityBelow:(int64_t)below
{
  if (below)
  {
    pendingContexts = self->_pendingContexts;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__SVXSpeechSynthesizer__cancelPendingSpeakingContextsWithPriorityBelow___block_invoke;
    v6[3] = &__block_descriptor_40_e42_B32__0__SVXSpeechSynthesisContext_8Q16_B24l;
    v6[4] = below;
    v5 = [(NSMutableArray *)pendingContexts indexesOfObjectsPassingTest:v6];
    if ([v5 count])
    {
      [(SVXSpeechSynthesizer *)self _cancelPendingContextsAtIndexes:v5];
    }
  }
}

BOOL __72__SVXSpeechSynthesizer__cancelPendingSpeakingContextsWithPriorityBelow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 operationType] == 2)
  {
    v4 = [v3 request];
    v5 = [v4 priority] < *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_cancelPendingSpeakingContextWithRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    pendingContexts = self->_pendingContexts;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__SVXSpeechSynthesizer__cancelPendingSpeakingContextWithRequest___block_invoke;
    v8[3] = &unk_279C66BA0;
    v9 = requestCopy;
    v7 = [(NSMutableArray *)pendingContexts indexesOfObjectsPassingTest:v8];
    if ([v7 count])
    {
      [(SVXSpeechSynthesizer *)self _cancelPendingContextsAtIndexes:v7];
    }
  }
}

uint64_t __65__SVXSpeechSynthesizer__cancelPendingSpeakingContextWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 operationType] == 2)
  {
    v4 = [v3 request];
    v5 = [v4 isEqual:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_stopCurrentSpeakingContextWithInterruptionBehavior:(int64_t)behavior
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    currentSpeakingContext = self->_currentSpeakingContext;
    v8 = v6;
    if (behavior > 2)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C67778[behavior];
    }

    v10 = v9;
    v26 = 136315650;
    v27 = "[SVXSpeechSynthesizer _stopCurrentSpeakingContextWithInterruptionBehavior:]";
    v28 = 2112;
    v29 = currentSpeakingContext;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s (_currentSpeakingContext = %@, interruptionBehavior = %@)", &v26, 0x20u);
  }

  v11 = self->_currentSpeakingContext;
  if (v11)
  {
    presynthesizedAudioRequest = [(SVXSpeechSynthesisContext *)v11 presynthesizedAudioRequest];
    speechRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];
    v14 = speechRequest;
    if (presynthesizedAudioRequest | speechRequest)
    {
      if (speechRequest)
      {
        v18 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
        {
          ttsSession = self->_ttsSession;
          v26 = 136315650;
          v27 = "[SVXSpeechSynthesizer _stopCurrentSpeakingContextWithInterruptionBehavior:]";
          v28 = 2112;
          v29 = ttsSession;
          v30 = 2112;
          v31 = v14;
          _os_log_impl(&dword_2695B9000, v18, OS_LOG_TYPE_INFO, "%s Stopping TTS for current speaking request... (ttsSession = %@, speechRequest = %@)", &v26, 0x20u);
        }

        [(SiriTTSDaemonSession *)self->_ttsSession cancelWithRequest:v14];
      }

      v16 = v14;
      if (presynthesizedAudioRequest)
      {
        v20 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
        {
          v21 = self->_ttsSession;
          v26 = 136315650;
          v27 = "[SVXSpeechSynthesizer _stopCurrentSpeakingContextWithInterruptionBehavior:]";
          v28 = 2112;
          v29 = v21;
          v30 = 2112;
          v31 = presynthesizedAudioRequest;
          _os_log_impl(&dword_2695B9000, v20, OS_LOG_TYPE_INFO, "%s Stopping TTS with presynthesized audio for current request... (ttsSession = %@, audioRequest = %@)", &v26, 0x20u);
        }

        [(SiriTTSDaemonSession *)self->_ttsSession cancelWithRequest:presynthesizedAudioRequest];
        v16 = v14;
      }
    }

    else
    {
      v15 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v25 = self->_currentSpeakingContext;
        v26 = 136315394;
        v27 = "[SVXSpeechSynthesizer _stopCurrentSpeakingContextWithInterruptionBehavior:]";
        v28 = 2112;
        v29 = v25;
        _os_log_error_impl(&dword_2695B9000, v15, OS_LOG_TYPE_ERROR, "%s Current speaking context does NOT have an underlying speech request or presynthesized audio request when attempted to stop TTS. (_currentSpeakingContext = %@)", &v26, 0x16u);
      }

      v16 = 0;
    }

    v22 = self->_currentSpeakingContext;
    text = [(__CFString *)v16 text];
    [(SVXSpeechSynthesizer *)self _finalizeContext:v22 withResultType:3 utterance:text error:0];
  }

  else
  {
    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v26 = 136315138;
      v27 = "[SVXSpeechSynthesizer _stopCurrentSpeakingContextWithInterruptionBehavior:]";
      _os_log_impl(&dword_2695B9000, v17, OS_LOG_TYPE_INFO, "%s There's no current speaking context to stop.", &v26, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_cancelPendingContextsAtIndexes:(id)indexes
{
  v36 = *MEMORY[0x277D85DE8];
  indexesCopy = indexes;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[SVXSpeechSynthesizer _cancelPendingContextsAtIndexes:]";
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if ([(NSMutableArray *)self->_pendingContexts count])
  {
    _numberOfContexts = [(SVXSpeechSynthesizer *)self _numberOfContexts];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __56__SVXSpeechSynthesizer__cancelPendingContextsAtIndexes___block_invoke;
    v28[3] = &unk_279C66B50;
    v28[4] = self;
    v8 = MEMORY[0x26D642680](v28);
    v9 = v8;
    if (indexesCopy)
    {
      pendingContexts = self->_pendingContexts;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __56__SVXSpeechSynthesizer__cancelPendingContextsAtIndexes___block_invoke_2;
      v26[3] = &unk_279C66B78;
      v27 = v8;
      [(NSMutableArray *)pendingContexts enumerateObjectsAtIndexes:indexesCopy options:0 usingBlock:v26];
      [(NSMutableArray *)self->_pendingContexts removeObjectsAtIndexes:indexesCopy];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = self->_pendingContexts;
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          v16 = 0;
          do
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v9[2](v9, *(*(&v22 + 1) + 8 * v16++));
          }

          while (v14 != v16);
          v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v35 count:16];
        }

        while (v14);
      }

      [(NSMutableArray *)self->_pendingContexts removeAllObjects];
    }

    _numberOfContexts2 = [(SVXSpeechSynthesizer *)self _numberOfContexts];
    v18 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "[SVXSpeechSynthesizer _cancelPendingContextsAtIndexes:]";
      v31 = 2048;
      v32 = _numberOfContexts;
      v33 = 2048;
      v34 = _numberOfContexts2;
      _os_log_impl(&dword_2695B9000, v18, OS_LOG_TYPE_INFO, "%s (numberOfContexts: %tu -> %tu)", buf, 0x20u);
    }

    if (_numberOfContexts && !_numberOfContexts2)
    {
      [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidBecomeIdle];
    }

    performer = [(SVXModule *)self->_module performer];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__SVXSpeechSynthesizer__cancelPendingContextsAtIndexes___block_invoke_73;
    v21[3] = &unk_279C68FC0;
    v21[4] = self;
    [performer performBlock:v21 withOptions:0];
  }

  else
  {
    v11 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[SVXSpeechSynthesizer _cancelPendingContextsAtIndexes:]";
      _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s There's no pending context to cancel.", buf, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __56__SVXSpeechSynthesizer__cancelPendingContextsAtIndexes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 finalizeWithResultType:2 utteranceInfo:0 error:0];
  v8 = [v3 request];
  v4 = [*(*(a1 + 32) + 32) analytics];
  v5 = [v3 analyticsContext];
  [v4 logEventWithType:2702 context:v5];

  v6 = *(*(a1 + 32) + 48);
  v7 = [v3 taskTracker];

  [v6 speechSynthesizerDidCancelRequest:v8 taskTracker:v7];
}

- (BOOL)_startSpeechRequestForContext:(id)context error:(id *)error
{
  v103 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
    *&buf[12] = 2112;
    *&buf[14] = contextCopy;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if (error)
  {
    *error = 0;
  }

  languageCode = [contextCopy languageCode];
  if (![languageCode length] || (-[SVXSpeechSynthesisUtils createLocaleFromLanguageCode:](self->_speechSynthesisUtils, "createLocaleFromLanguageCode:", languageCode), (locale = objc_claimAutoreleasedReturnValue()) == 0))
  {
    currentConfiguration = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
    locale = [currentConfiguration locale];

    if (!locale)
    {
      speechSynthesisUtils = self->_speechSynthesisUtils;
      preferences = [(SVXModule *)self->_module preferences];
      locale = [(SVXSpeechSynthesisUtils *)speechSynthesisUtils getLocaleWithAllowsFallback:1 preferences:preferences];
    }
  }

  gender = [contextCopy gender];
  v67 = [(SVXAFSpeakableUtteranceParserProvider *)self->_speakableUtteranceParserProvider getWithLocale:locale];
  [v67 setHandleTTSCodes:1];
  request = [contextCopy request];
  speakableText = [request speakableText];
  if (!speakableText)
  {
    localizationKey = [request localizationKey];
    if (localizationKey)
    {
      currentConfiguration2 = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
      outputVoiceInfo = [currentConfiguration2 outputVoiceInfo];
      v17 = outputVoiceInfo;
      if (outputVoiceInfo)
      {
        v18 = outputVoiceInfo;
      }

      else
      {
        v19 = self->_speechSynthesisUtils;
        preferences2 = [(SVXModule *)self->_module preferences];
        v18 = [(SVXSpeechSynthesisUtils *)v19 getOutputVoiceInfoWithAllowsFallback:1 preferences:preferences2];
      }

      if (languageCode)
      {
        languageCode2 = languageCode;
      }

      else
      {
        languageCode2 = [v18 languageCode];
      }

      v22 = languageCode2;
      if (!gender)
      {
        gender = -[SVXSpeechSynthesisUtils getGenderFromVoiceGender:](self->_speechSynthesisUtils, "getGenderFromVoiceGender:", [v18 gender]);
      }

      speakableText = [(SVXLocalizationUtils *)self->_localizationUtils getLocalizedStringWithLanguageCode:v22 gender:gender key:localizationKey];
    }

    else
    {
      speakableText = 0;
    }
  }

  v94 = 0;
  v93 = 0;
  v23 = [v67 parseStringWithFormat:speakableText error:&v93 containsPrivacySensitiveContents:&v94];
  v24 = v93;
  if (!v24)
  {
    v29 = [v23 length];
    v30 = *MEMORY[0x277CEF098];
    v31 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO);
    if (!v29)
    {
      if (v31)
      {
        *buf = 136315650;
        *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
        *&buf[12] = 2114;
        *&buf[14] = speakableText;
        *&buf[22] = 2114;
        v101 = v67;
        _os_log_impl(&dword_2695B9000, v30, OS_LOG_TYPE_INFO, "%s Speakable utterance parser parsed an empty speakableUtterance. (speakableText = %{public}@, speakableUtteranceParser = %{public}@", buf, 0x20u);
      }

      v25 = 0;
      goto LABEL_43;
    }

    if (v31)
    {
      *buf = 136315394;
      *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
      *&buf[12] = 1024;
      *&buf[14] = v94;
      _os_log_impl(&dword_2695B9000, v30, OS_LOG_TYPE_INFO, "%s containsPrivacySensitiveContents = %d", buf, 0x12u);
    }

    v32 = ([request options] & 1) == 0;
    v33 = v94;
    objc_initWeak(&location, self);
    operationType = [contextCopy operationType];
    v35 = v32 | v33;
    if (operationType == 1)
    {
      speechSynthesisConfigurer = self->_speechSynthesisConfigurer;
      preferences3 = [(SVXModule *)self->_module preferences];
      v52 = [(SVXSpeechSynthesisConfigurer *)speechSynthesisConfigurer synthesisRequestForContext:contextCopy preferences:preferences3];

      [v52 setText:v23];
      [v52 setPrivacySensitive:v35 & 1];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v101 = __Block_byref_object_copy_;
      *&v102 = __Block_byref_object_dispose_;
      *(&v102 + 1) = 0;
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke;
      v91[3] = &unk_279C66A60;
      v91[4] = buf;
      [v52 setDidReportInstrument:v91];
      objc_initWeak(&v90, v52);
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_2;
      v87[3] = &unk_279C66A88;
      objc_copyWeak(&v88, &location);
      objc_copyWeak(&v89, &v90);
      [v52 setDidGenerateAudio:v87];
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_3;
      v84[3] = &unk_279C66AB0;
      objc_copyWeak(&v85, &location);
      objc_copyWeak(&v86, &v90);
      [v52 setDidGenerateWordTimings:v84];
      v53 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        ttsSession = self->_ttsSession;
        *from = 136315650;
        *&from[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
        v96 = 2112;
        v97 = ttsSession;
        v98 = 2112;
        v99 = v52;
        _os_log_impl(&dword_2695B9000, v53, OS_LOG_TYPE_INFO, "%s Starting synthesizing context... (ttsSession = %@, synthesisRequest = %@)", from, 0x20u);
      }

      v55 = self->_ttsSession;
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_67;
      v80[3] = &unk_279C66AD8;
      objc_copyWeak(&v83, &location);
      v56 = v52;
      v81 = v56;
      v82 = buf;
      [(SiriTTSDaemonSession *)v55 synthesizeWithRequest:v56 didFinish:v80];
      v57 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v58 = self->_ttsSession;
        *from = 136315650;
        *&from[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
        v96 = 2112;
        v97 = v58;
        v98 = 2112;
        v99 = v56;
        _os_log_impl(&dword_2695B9000, v57, OS_LOG_TYPE_INFO, "%s Started synthesizing context. (ttsSession = %@, synthesisRequest = %@)", from, 0x20u);
      }

      [contextCopy setSynthesisRequest:v56];

      objc_destroyWeak(&v83);
      objc_destroyWeak(&v86);
      objc_destroyWeak(&v85);
      objc_destroyWeak(&v89);
      objc_destroyWeak(&v88);
      objc_destroyWeak(&v90);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (operationType != 2)
      {
        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SVXSpeechSynthesisErrorDomain" code:3 userInfo:0];
        v59 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
          *&buf[12] = 2114;
          *&buf[14] = v25;
          _os_log_error_impl(&dword_2695B9000, v59, OS_LOG_TYPE_ERROR, "%s Speech synthesizer failed. (error = %{public}@)", buf, 0x16u);
        }

        v28 = v25 == 0;
        if (error && v25)
        {
          v60 = v25;
          v28 = 0;
          *error = v25;
        }

        goto LABEL_55;
      }

      speechRequestConfigurer = self->_speechRequestConfigurer;
      preferences4 = [(SVXModule *)self->_module preferences];
      v38 = [(SVXSpeechRequestConfigurer *)speechRequestConfigurer speechRequestForContext:contextCopy preferences:preferences4];

      taskTracker = [contextCopy taskTracker];
      sessionUUID = [taskTracker sessionUUID];
      [v38 setSiriRequestId:sessionUUID];

      v41 = objc_alloc(MEMORY[0x277CCAD78]);
      taskTracker2 = [contextCopy taskTracker];
      aceId = [taskTracker2 aceId];
      v63 = [v41 initWithUUIDString:aceId];

      [v38 setSiriAceViewId:v63];
      [v38 setText:v23];
      [v38 setPrivacySensitive:v35 & 1];
      if (([request options] & 2) != 0)
      {
        v44 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
          _os_log_impl(&dword_2695B9000, v44, OS_LOG_TYPE_INFO, "%s Setting minimizeDeviceUsage for TTS request to prefer server side synthesis.", buf, 0xCu);
        }

        [v38 setMinimizeDeviceUsage:{1, v63}];
      }

      objc_initWeak(from, v38);
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_68;
      v77[3] = &unk_279C66A10;
      objc_copyWeak(&v78, &location);
      objc_copyWeak(&v79, from);
      [v38 setDidReportInstrument:v77];
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_2_69;
      v74[3] = &unk_279C66B00;
      objc_copyWeak(&v75, &location);
      objc_copyWeak(&v76, from);
      [v38 setDidStartSpeaking:v74];
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_3_70;
      v71[3] = &unk_279C66AB0;
      objc_copyWeak(&v72, &location);
      objc_copyWeak(&v73, from);
      [v38 setDidGenerateWordTimings:v71];
      v45 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v46 = self->_ttsSession;
        *buf = 136315650;
        *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
        *&buf[12] = 2112;
        *&buf[14] = v46;
        *&buf[22] = 2112;
        v101 = v38;
        _os_log_impl(&dword_2695B9000, v45, OS_LOG_TYPE_INFO, "%s Starting TTS for speaking context... (ttsSession = %@, speechRequest = %@)", buf, 0x20u);
      }

      v47 = self->_ttsSession;
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_71;
      v68[3] = &unk_279C66B28;
      objc_copyWeak(&v69, &location);
      objc_copyWeak(&v70, from);
      [(SiriTTSDaemonSession *)v47 speakWithSpeechRequest:v38 didFinish:v68];
      v48 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v49 = self->_ttsSession;
        *buf = 136315650;
        *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
        *&buf[12] = 2112;
        *&buf[14] = v49;
        *&buf[22] = 2112;
        v101 = v38;
        _os_log_impl(&dword_2695B9000, v48, OS_LOG_TYPE_INFO, "%s Started TTS for speaking context... (ttsSession = %@, speechRequest = %@)", buf, 0x20u);
      }

      [contextCopy setSpeechRequest:{v38, v63}];
      objc_destroyWeak(&v70);
      objc_destroyWeak(&v69);
      objc_destroyWeak(&v73);
      objc_destroyWeak(&v72);
      objc_destroyWeak(&v76);
      objc_destroyWeak(&v75);
      objc_destroyWeak(&v79);
      objc_destroyWeak(&v78);
      objc_destroyWeak(from);
    }

    v25 = 0;
    v28 = 1;
LABEL_55:
    objc_destroyWeak(&location);
    goto LABEL_56;
  }

  v25 = v24;
  v26 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
    *&buf[12] = 2114;
    *&buf[14] = speakableText;
    *&buf[22] = 2114;
    v101 = v67;
    LOWORD(v102) = 2114;
    *(&v102 + 2) = v25;
    _os_log_error_impl(&dword_2695B9000, v26, OS_LOG_TYPE_ERROR, "%s Speakable utterance parser failed to parse speakable text. (speakableText = %{public}@, speakableUtteranceParser = %{public}@, error = %{public}@)", buf, 0x2Au);
    if (error)
    {
      goto LABEL_25;
    }

LABEL_43:
    v28 = 0;
    goto LABEL_56;
  }

  if (!error)
  {
    goto LABEL_43;
  }

LABEL_25:
  v27 = v25;
  v28 = 0;
  *error = v25;
LABEL_56:

  v61 = *MEMORY[0x277D85DE8];
  return v28;
}

void __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained withRequest:v4 didGenerateAudioChunk:v3];
}

void __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained withRequest:v4 didReceiveTimingInfo:v3];
}

void __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_67(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained didFinishSynthesisRequest:*(a1 + 32) withInstrumentMetrics:*(*(*(a1 + 40) + 8) + 40) error:v3];
}

void __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didFinishSpeakingRequest:v4 withInstrumentMetrics:v3];
}

void __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_2_69(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didStartSpeakingRequest:v2];
}

void __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_3_70(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained withRequest:v4 didReceiveTimingInfo:v3];
}

void __60__SVXSpeechSynthesizer__startSpeechRequestForContext_error___block_invoke_71(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didFinishSpeakingRequest:v4 successfully:v3 == 0 phonemesSpoken:0 withError:v3];
}

- (BOOL)_startPresynthesizedAudioRequestForContext:(id)context error:(id *)error
{
  v71 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
    *v68 = 2112;
    *&v68[2] = contextCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if (error)
  {
    *error = 0;
  }

  request = [contextCopy request];
  presynthesizedAudio = [request presynthesizedAudio];
  streamID = [request streamID];
  if (presynthesizedAudio)
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
      *v68 = 2112;
      *&v68[2] = presynthesizedAudio;
      _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s presynthesizedAudio = %@", buf, 0x16u);
    }

    v9 = objc_alloc_init(MEMORY[0x277D613D0]);
    data = [presynthesizedAudio data];
    [v9 setAudioData:data];

    decoderASBD = [presynthesizedAudio decoderASBD];
    [decoderASBD sampleRate];
    *buf = v12;
    *&buf[8] = [decoderASBD formatID];
    *v68 = [decoderASBD formatFlags];
    *&v68[4] = [decoderASBD bytesPerPacket];
    *&v68[8] = [decoderASBD framesPerPacket];
    LODWORD(v69) = [decoderASBD bytesPerFrame];
    HIDWORD(v69) = [decoderASBD channelsPerFrame];
    v70[0] = [decoderASBD bitsPerChannel];
    reserved = [decoderASBD reserved];

    v70[1] = reserved;
    [v9 setAsbd:buf];

    v14 = [objc_alloc(MEMORY[0x277D613E8]) initWithAudio:v9];
  }

  else
  {
    if (streamID)
    {
      v16 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
        *v68 = 2112;
        *&v68[2] = streamID;
        _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, "%s streamID = %@", buf, 0x16u);
      }

      v14 = 0;
LABEL_16:
      operationType = [contextCopy operationType];
      v18 = presynthesizedAudio != 0;
      if (!streamID)
      {
        v18 = 1;
      }

      if (!v18 && operationType == 2)
      {
        v19 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
          *v68 = 2112;
          *&v68[2] = streamID;
          _os_log_error_impl(&dword_2695B9000, v19, OS_LOG_TYPE_ERROR, "%s operationType is speaking but presynthesizedAudio is nil for streamID:(%@). Updated to synthesizing.", buf, 0x16u);
        }

        goto LABEL_22;
      }

      if (v14 && operationType == 2)
      {
        audioSessionID = [contextCopy audioSessionID];
        if (!audioSessionID)
        {
          audioSessionAssertion = [contextCopy audioSessionAssertion];
          audioSessionID = [audioSessionAssertion audioSessionID];
          if (!audioSessionID)
          {
            currentConfiguration = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
            audioSessionID = [currentConfiguration audioSessionID];
          }
        }

        v34 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
          *v68 = 2048;
          *&v68[2] = audioSessionID;
          _os_log_impl(&dword_2695B9000, v34, OS_LOG_TYPE_INFO, "%s audioSessionID = %lu", buf, 0x16u);
        }

        [v14 setAudioSessionId:audioSessionID];
      }

      else if (operationType != 2)
      {
        if (operationType != 1)
        {
          v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SVXSpeechSynthesisErrorDomain" code:3 userInfo:0];
          v35 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
            *v68 = 2114;
            *&v68[2] = v29;
            _os_log_error_impl(&dword_2695B9000, v35, OS_LOG_TYPE_ERROR, "%s Speech synthesizer failed. (error = %{public}@)", buf, 0x16u);
          }

LABEL_59:
          if (v29)
          {
            if (error)
            {
              v50 = v29;
              v15 = 0;
              *error = v29;
            }

            else
            {
              v15 = 0;
            }

            goto LABEL_64;
          }

LABEL_62:
          [contextCopy setPresynthesizedAudioRequest:v14];
          v29 = 0;
          v15 = 1;
LABEL_64:

          goto LABEL_65;
        }

LABEL_22:
        request2 = [contextCopy request];
        speakableText = [request2 speakableText];

        if ([speakableText length])
        {
          languageCode = [contextCopy languageCode];
          if (![languageCode length] || (-[SVXSpeechSynthesisUtils createLocaleFromLanguageCode:](self->_speechSynthesisUtils, "createLocaleFromLanguageCode:", languageCode), (locale = objc_claimAutoreleasedReturnValue()) == 0))
          {
            currentConfiguration2 = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
            locale = [currentConfiguration2 locale];

            if (!locale)
            {
              speechSynthesisUtils = self->_speechSynthesisUtils;
              preferences = [(SVXModule *)self->_module preferences];
              locale = [(SVXSpeechSynthesisUtils *)speechSynthesisUtils getLocaleWithAllowsFallback:1 preferences:preferences];
            }
          }

          v26 = [(SVXAFSpeakableUtteranceParserProvider *)self->_speakableUtteranceParserProvider getWithLocale:locale];
          [v26 setHandleTTSCodes:1];
          v66 = 0;
          v27 = [v26 parseStringWithFormat:speakableText error:&v66];
          v28 = v66;
          if (v28)
          {
            v29 = v28;
            v30 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
              *v68 = 2114;
              *&v68[2] = speakableText;
              *&v68[10] = 2114;
              v69 = v26;
              LOWORD(v70[0]) = 2114;
              *(v70 + 2) = v29;
              _os_log_error_impl(&dword_2695B9000, v30, OS_LOG_TYPE_ERROR, "%s Speakable utterance parser failed to parse speakable text. (speakableText = %{public}@, speakableUtteranceParser = %{public}@, error = %{public}@)", buf, 0x2Au);
            }
          }

          else if ([v27 length] && objc_msgSend(streamID, "length"))
          {
            v47 = [objc_alloc(MEMORY[0x277D61410]) initWithText:v27 identifier:streamID];
            [(SiriTTSDaemonSession *)self->_ttsSession signalWithInlineStreaming:v47];
            v48 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
            {
              ttsSession = self->_ttsSession;
              *buf = 136315650;
              *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
              *v68 = 2112;
              *&v68[2] = ttsSession;
              *&v68[10] = 2112;
              v69 = v47;
              _os_log_impl(&dword_2695B9000, v48, OS_LOG_TYPE_INFO, "%s Signaled inline streaming. (session = %@, signal = %@)", buf, 0x20u);
            }

            v29 = 0;
          }

          else
          {
            v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SVXSpeechSynthesisErrorDomain" code:5 userInfo:0];
          }
        }

        else
        {
          v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SVXSpeechSynthesisErrorDomain" code:4 userInfo:0];
        }

        goto LABEL_59;
      }

      v36 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v37 = self->_ttsSession;
        *buf = 136315650;
        *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
        *v68 = 2112;
        *&v68[2] = v37;
        *&v68[10] = 2112;
        v69 = v14;
        _os_log_impl(&dword_2695B9000, v36, OS_LOG_TYPE_INFO, "%s Starting TTS with presynthesized audio for speaking context... (session = %@, audioRequest = %@)", buf, 0x20u);
      }

      taskTracker = [contextCopy taskTracker];
      sessionUUID = [taskTracker sessionUUID];
      [v14 setSiriRequestId:sessionUUID];

      v40 = objc_alloc(MEMORY[0x277CCAD78]);
      taskTracker2 = [contextCopy taskTracker];
      aceId = [taskTracker2 aceId];
      v43 = [v40 initWithUUIDString:aceId];

      [v14 setSiriAceViewId:v43];
      objc_initWeak(&location, v14);
      objc_initWeak(&from, self);
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __73__SVXSpeechSynthesizer__startPresynthesizedAudioRequestForContext_error___block_invoke;
      v61[3] = &unk_279C66A10;
      objc_copyWeak(&v62, &from);
      objc_copyWeak(&v63, &location);
      [v14 setDidReportInstrument:v61];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __73__SVXSpeechSynthesizer__startPresynthesizedAudioRequestForContext_error___block_invoke_2;
      v59[3] = &unk_279C690B0;
      v59[4] = self;
      objc_copyWeak(&v60, &location);
      [v14 setDidStartSpeaking:v59];
      v44 = self->_ttsSession;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __73__SVXSpeechSynthesizer__startPresynthesizedAudioRequestForContext_error___block_invoke_3;
      v57[3] = &unk_279C66A38;
      v57[4] = self;
      objc_copyWeak(&v58, &location);
      [(SiriTTSDaemonSession *)v44 speakWithAudioRequest:v14 didFinish:v57];
      v45 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v46 = self->_ttsSession;
        *buf = 136315650;
        *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
        *v68 = 2112;
        *&v68[2] = v46;
        *&v68[10] = 2112;
        v69 = v14;
        _os_log_impl(&dword_2695B9000, v45, OS_LOG_TYPE_INFO, "%s Started TTS with presynthesized audio for speaking context. (session = %@, audioRequest = %@)", buf, 0x20u);
      }

      objc_destroyWeak(&v58);
      objc_destroyWeak(&v60);
      objc_destroyWeak(&v63);
      objc_destroyWeak(&v62);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);

      goto LABEL_62;
    }

    v14 = 0;
  }

  if (v14 | streamID)
  {
    goto LABEL_16;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SVXSpeechSynthesisErrorDomain" code:1 userInfo:0];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_65:

  v51 = *MEMORY[0x277D85DE8];
  return v15;
}

void __73__SVXSpeechSynthesizer__startPresynthesizedAudioRequestForContext_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didFinishPresynthesizedAudioRequest:v4 withInstrumentMetrics:v3 error:0];
}

void __73__SVXSpeechSynthesizer__startPresynthesizedAudioRequestForContext_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 didStartPresynthesizedAudioRequest:WeakRetained];
}

void __73__SVXSpeechSynthesizer__startPresynthesizedAudioRequestForContext_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 didStopPresynthesizedAudioRequest:WeakRetained atEnd:v4 == 0 error:v4];
}

- (BOOL)_continueContext:(id)context error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[SVXSpeechSynthesizer _continueContext:error:]";
    v29 = 2112;
    v30 = contextCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if (error)
  {
    *error = 0;
  }

  if (contextCopy)
  {
    operationType = [contextCopy operationType];
    if (operationType == 2)
    {
      if ([contextCopy handledPresynthesizedAudioRequest])
      {
        v10 = 0;
      }

      else
      {
        v12 = 1;
        [contextCopy setHandledPresynthesizedAudioRequest:1];
        v24 = 0;
        v16 = [(SVXSpeechSynthesizer *)self _startPresynthesizedAudioRequestForContext:contextCopy error:&v24];
        v10 = v24;
        if (v16)
        {
          goto LABEL_32;
        }
      }

      if (([contextCopy handledSpeechRequest] & 1) == 0)
      {
        v12 = 1;
        [contextCopy setHandledSpeechRequest:1];
        v23 = v10;
        v14 = [(SVXSpeechSynthesizer *)self _startSpeechRequestForContext:contextCopy error:&v23];
        v15 = v23;
LABEL_22:
        v17 = v15;

        v10 = v17;
        if (!v14)
        {
          goto LABEL_23;
        }

LABEL_32:

        goto LABEL_33;
      }
    }

    else if (operationType == 1)
    {
      if ([contextCopy handledPresynthesizedAudioRequest])
      {
        v10 = 0;
      }

      else
      {
        [contextCopy setHandledPresynthesizedAudioRequest:1];
        v26 = 0;
        v13 = [(SVXSpeechSynthesizer *)self _startPresynthesizedAudioRequestForContext:contextCopy error:&v26];
        v10 = v26;
        if (v13)
        {
LABEL_31:
          v12 = 0;
          goto LABEL_32;
        }
      }

      if (([contextCopy handledSpeechRequest] & 1) == 0)
      {
        v12 = 1;
        [contextCopy setHandledSpeechRequest:1];
        v25 = v10;
        v14 = [(SVXSpeechSynthesizer *)self _startSpeechRequestForContext:contextCopy error:&v25];
        v15 = v25;
        goto LABEL_22;
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SVXSpeechSynthesisErrorDomain" code:3 userInfo:0];
    }

LABEL_23:
    if (error)
    {
      v18 = v10;
      *error = v10;
    }

    v19 = *v7;
    v20 = *v7;
    if (v10)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v28 = "[SVXSpeechSynthesizer _continueContext:error:]";
        v29 = 2112;
        v30 = contextCopy;
        v31 = 2112;
        v32 = v10;
        _os_log_error_impl(&dword_2695B9000, v19, OS_LOG_TYPE_ERROR, "%s Unable to continue context (context = %@, error = %@).", buf, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v28 = "[SVXSpeechSynthesizer _continueContext:error:]";
        v29 = 2112;
        v30 = contextCopy;
        _os_log_impl(&dword_2695B9000, v19, OS_LOG_TYPE_INFO, "%s Unable to continue context (context = %@).", buf, 0x16u);
      }

      v10 = 0;
    }

    goto LABEL_31;
  }

  v11 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v28 = "[SVXSpeechSynthesizer _continueContext:error:]";
    _os_log_error_impl(&dword_2695B9000, v11, OS_LOG_TYPE_ERROR, "%s There's no context to continue.", buf, 0xCu);
  }

  v12 = 0;
LABEL_33:

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_startContext:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v34 = "[SVXSpeechSynthesizer _startContext:]";
    v35 = 2112;
    v36 = contextCopy;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if (contextCopy)
  {
    [(SVXSpeechSynthesisContext *)contextCopy prepare];
    request = [(SVXSpeechSynthesisContext *)contextCopy request];
    announcer = self->_announcer;
    taskTracker = [(SVXSpeechSynthesisContext *)contextCopy taskTracker];
    [(SVXSpeechSynthesisAnnouncer *)announcer speechSynthesizerWillStartRequest:request taskTracker:taskTracker];

    operationType = [(SVXSpeechSynthesisContext *)contextCopy operationType];
    if (operationType == 2)
    {
      if ([(SVXSpeechSynthesizer *)self _isTTSPlaybackDisabled])
      {
        v20 = *MEMORY[0x277CEF0A0];
        if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v34 = "[SVXSpeechSynthesizer _startContext:]";
          v35 = 2112;
          v36 = contextCopy;
          _os_log_impl(&dword_2695B9000, v20, OS_LOG_TYPE_DEFAULT, "%s TTS is disabled. Cancel speaking context %@.", buf, 0x16u);
        }

        [(SVXSpeechSynthesizer *)self _finalizeContext:contextCopy withResultType:2 utterance:0 error:0];
        goto LABEL_16;
      }

      p_currentSpeakingContext = &self->_currentSpeakingContext;
      currentSpeakingContext = self->_currentSpeakingContext;
      if (currentSpeakingContext)
      {
        v23 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v34 = "[SVXSpeechSynthesizer _startContext:]";
          v35 = 2112;
          v36 = currentSpeakingContext;
          _os_log_error_impl(&dword_2695B9000, v23, OS_LOG_TYPE_ERROR, "%s Attempted to start a new speaking context when the current speaking context still exists. (_currentSpeakingContext = %@)", buf, 0x16u);
          currentSpeakingContext = *p_currentSpeakingContext;
        }

        speechRequest = [(SVXSpeechSynthesisContext *)currentSpeakingContext speechRequest];
        text = [speechRequest text];

        [(SVXSpeechSynthesizer *)self _finalizeContext:self->_currentSpeakingContext withResultType:3 utterance:text error:0];
      }

      if ([(SVXSpeechSynthesisUtils *)self->_speechSynthesisUtils requestHasSpeakableContents:request])
      {
        v12 = [(SVXSpeechSynthesisContext *)contextCopy audioSessionID]== 0;
      }

      else
      {
        v12 = 0;
      }

      objc_storeStrong(&self->_currentSpeakingContext, context);
      v26 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
      {
        v27 = *p_currentSpeakingContext;
        *buf = 136315394;
        v34 = "[SVXSpeechSynthesizer _startContext:]";
        v35 = 2112;
        v36 = v27;
        _os_log_impl(&dword_2695B9000, v26, OS_LOG_TYPE_INFO, "%s Setting current speaking context. (_currentSpeakingContext = %@)", buf, 0x16u);
      }
    }

    else
    {
      if (operationType == 1)
      {
        [(NSMutableSet *)self->_synthesizingContexts addObject:contextCopy];
      }

      v12 = 0;
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __38__SVXSpeechSynthesizer__startContext___block_invoke;
    v31[3] = &unk_279C68FE8;
    v31[4] = self;
    v13 = contextCopy;
    v32 = v13;
    v14 = MEMORY[0x26D642680](v31);
    v15 = v14;
    if (v12)
    {
      v16 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v34 = "[SVXSpeechSynthesizer _startContext:]";
        _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, "%s Acquiring active audio session...", buf, 0xCu);
      }

      sessionManager = self->_sessionManager;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __38__SVXSpeechSynthesizer__startContext___block_invoke_52;
      v28[3] = &unk_279C669E8;
      v28[4] = self;
      v29 = v13;
      v30 = v15;
      [(SVXSessionManager *)sessionManager getAudioSessionProviderWithCompletion:v28];
    }

    else
    {
      (*(v14 + 16))(v14);
    }

LABEL_16:
    goto LABEL_17;
  }

  v18 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v34 = "[SVXSpeechSynthesizer _startContext:]";
    _os_log_error_impl(&dword_2695B9000, v18, OS_LOG_TYPE_ERROR, "%s There's no context to start.", buf, 0xCu);
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
}

void __38__SVXSpeechSynthesizer__startContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = 0;
  v4 = [v2 _continueContext:v3 error:&v11];
  v5 = v11;
  if ((v4 & 1) == 0)
  {
    v6 = [*(a1 + 40) speechRequest];
    v7 = [v6 text];

    if (v5)
    {
      v8 = 4;
      v9 = v7;
      v10 = v5;
    }

    else
    {
      v8 = 1;
      v9 = v7;
      v10 = 0;
    }

    [*(a1 + 32) _finalizeContext:*(a1 + 40) withResultType:v8 utterance:v9 error:v10];
  }
}

void __38__SVXSpeechSynthesizer__startContext___block_invoke_52(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__SVXSpeechSynthesizer__startContext___block_invoke_2;
  v5[3] = &unk_279C669C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [a2 acquireAudioSessionForReason:@"Speech Synthesis" completion:v5];
}

void __38__SVXSpeechSynthesizer__startContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CEF098];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[SVXSpeechSynthesizer _startContext:]_block_invoke_2";
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&dword_2695B9000, v7, OS_LOG_TYPE_ERROR, "%s Failed to acquire active audio session. (error = %@)", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[SVXSpeechSynthesizer _startContext:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s Acquired active audio session. (assertion = %@)", buf, 0x16u);
  }

  v8 = [*(*(a1 + 32) + 32) performer];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__SVXSpeechSynthesizer__startContext___block_invoke_57;
  v13[3] = &unk_279C68388;
  v9 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v9;
  v15 = v5;
  v16 = v6;
  v17 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  [v8 performBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __38__SVXSpeechSynthesizer__startContext___block_invoke_57(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  if (*(v3 + 64) == v2)
  {
    [v2 setAudioSessionAssertion:v4];
    v7 = a1[7];
    if (!v7 || SVXAudioSessionIsNoRoutesAvailableError(v7) && [a1[6] audioSessionID])
    {
      v8 = *(a1[8] + 16);

      return v8();
    }

    else
    {
      v9 = a1[4];
      v10 = a1[5];
      v11 = a1[7];

      return [v9 _finalizeContext:v10 withResultType:4 utterance:0 error:v11];
    }
  }

  else
  {
    v5 = a1[6];

    return [v5 relinquish];
  }
}

- (void)_processPendingContexts
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SVXSpeechSynthesizer _processPendingContexts]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &buf, 0xCu);
  }

  currentConfiguration = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
  audioSessionID = [currentConfiguration audioSessionID];

  if (self->_needsPrewarm)
  {
    if (audioSessionID)
    {
      [(SVXSpeechSynthesizer *)self _prewarm];
    }

    else
    {
      v7 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[SVXSpeechSynthesizer _processPendingContexts]";
        _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s Skipped prewarming because there's no audio session ID configured.", &buf, 0xCu);
      }
    }
  }

  if ([(NSMutableArray *)self->_pendingContexts count])
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v39 = 0x2020000000;
    v40 = 0x7FFFFFFFFFFFFFFFLL;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = 0;
    pendingContexts = self->_pendingContexts;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __47__SVXSpeechSynthesizer__processPendingContexts__block_invoke;
    v27[3] = &unk_279C66978;
    v10 = v8;
    v28 = v10;
    selfCopy = self;
    p_buf = &buf;
    v31 = v32;
    [(NSMutableArray *)pendingContexts enumerateObjectsUsingBlock:v27];
    if (*(*(&buf + 1) + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 addIndex:?];
    }

    if ([v10 count])
    {
      v11 = [(NSMutableArray *)self->_pendingContexts objectsAtIndexes:v10];
      [(NSMutableArray *)self->_pendingContexts removeObjectsAtIndexes:v10];
      v12 = *v3;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v11 count];
        *v34 = 136315394;
        v35 = "[SVXSpeechSynthesizer _processPendingContexts]";
        v36 = 2048;
        v37 = v13;
        _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s Dequeued %tu pending contexts to process.", v34, 0x16u);
      }

      if (-[SVXSpeechSynthesizer _isInternalInstall](self, "_isInternalInstall") || (-[SVXModule preferences](self->_module, "preferences"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 shouldLogForQA], v14, v15))
      {
        [v11 enumerateObjectsUsingBlock:&__block_literal_global_51];
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v16 = v11;
      v17 = [v16 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v17)
      {
        v18 = *v24;
        do
        {
          v19 = 0;
          do
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v16);
            }

            [(SVXSpeechSynthesizer *)self _startContext:*(*(&v23 + 1) + 8 * v19++), v23];
          }

          while (v17 != v19);
          v17 = [v16 countByEnumeratingWithState:&v23 objects:v33 count:16];
        }

        while (v17);
      }
    }

    else
    {
      v21 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        *v34 = 136315138;
        v35 = "[SVXSpeechSynthesizer _processPendingContexts]";
        _os_log_impl(&dword_2695B9000, v21, OS_LOG_TYPE_INFO, "%s Skipped processing pending contexts because there's no suitable pending context.", v34, 0xCu);
      }
    }

    _Block_object_dispose(v32, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v20 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[SVXSpeechSynthesizer _processPendingContexts]";
      _os_log_impl(&dword_2695B9000, v20, OS_LOG_TYPE_INFO, "%s Skipped processing next pending context because there is no pending context.", &buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __47__SVXSpeechSynthesizer__processPendingContexts__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = [v5 request];
  v6 = [v5 operationType];

  if (v6 == 2)
  {
    if (!*(*(a1 + 40) + 64))
    {
      if (*(*(*(a1 + 48) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL || (v7 = *(*(*(a1 + 56) + 8) + 24), v7 < [v8 priority]))
      {
        *(*(*(a1 + 56) + 8) + 24) = [v8 priority];
        *(*(*(a1 + 48) + 8) + 24) = a3;
      }
    }
  }

  else
  {
    [*(a1 + 32) addIndex:a3];
  }
}

void __47__SVXSpeechSynthesizer__processPendingContexts__block_invoke_49(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[SVXSpeechSynthesizer _processPendingContexts]_block_invoke";
    v9 = 2048;
    v10 = a3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s Dequeued[%tu] = %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueContext:(id)context
{
  v48 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v42 = "[SVXSpeechSynthesizer _enqueueContext:]";
    v43 = 2112;
    v44 = contextCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  _numberOfContexts = [(SVXSpeechSynthesizer *)self _numberOfContexts];
  operationType = [contextCopy operationType];
  request = [contextCopy request];
  priority = [request priority];
  if (operationType == 2)
  {
    switch(priority)
    {
      case 3:
        [(SVXSpeechSynthesizer *)self _cancelPendingSpeakingContextsWithPriorityBelow:3];
        request2 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
        priority2 = [request2 priority];

        if (priority2 <= 2)
        {
          [(SVXSpeechSynthesizer *)self _stopCurrentSpeakingContextWithInterruptionBehavior:1];
        }

        break;
      case 2:
        [(SVXSpeechSynthesizer *)self _cancelPendingSpeakingContextsWithPriorityBelow:2];
        break;
      case 1:
        request3 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
        priority3 = [request3 priority];

        if (priority3 >= 2)
        {
          v13 = *v5;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            currentSpeakingContext = self->_currentSpeakingContext;
            *buf = 136315394;
            v42 = "[SVXSpeechSynthesizer _enqueueContext:]";
            v43 = 2112;
            v44 = currentSpeakingContext;
            _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s Ignored because current speaking context (%@) has a higher priority.", buf, 0x16u);
          }

LABEL_35:
          [(SVXSpeechSynthesizer *)self _finalizeContext:contextCopy withResultType:2 utterance:0 error:0];
          goto LABEL_36;
        }

        v35 = _numberOfContexts;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v18 = self->_pendingContexts;
        v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v37 objects:v47 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v38;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v38 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v37 + 1) + 8 * i);
              if ([v23 operationType] == 2)
              {
                request4 = [v23 request];
                priority4 = [request4 priority];

                if (priority4 >= 2)
                {
                  v33 = *MEMORY[0x277CEF098];
                  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315394;
                    v42 = "[SVXSpeechSynthesizer _enqueueContext:]";
                    v43 = 2112;
                    v44 = v23;
                    _os_log_impl(&dword_2695B9000, v33, OS_LOG_TYPE_INFO, "%s Ignored because pending speaking context (%@) has a higher priority.", buf, 0x16u);
                  }

                  goto LABEL_35;
                }
              }
            }

            v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v37 objects:v47 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v5 = MEMORY[0x277CEF098];
        _numberOfContexts = v35;
        break;
      default:
        v17 = *v5;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v42 = "[SVXSpeechSynthesizer _enqueueContext:]";
          _os_log_error_impl(&dword_2695B9000, v17, OS_LOG_TYPE_ERROR, "%s Ignored because no priority is specified.", buf, 0xCu);
        }

        goto LABEL_35;
    }

    kdebug_trace();
  }

  announcer = self->_announcer;
  taskTracker = [contextCopy taskTracker];
  [(SVXSpeechSynthesisAnnouncer *)announcer speechSynthesizerWillEnqueueRequest:request taskTracker:taskTracker];

  [(NSMutableArray *)self->_pendingContexts addObject:contextCopy];
  _numberOfContexts2 = [(SVXSpeechSynthesizer *)self _numberOfContexts];
  v29 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v42 = "[SVXSpeechSynthesizer _enqueueContext:]";
    v43 = 2048;
    v44 = _numberOfContexts;
    v45 = 2048;
    v46 = _numberOfContexts2;
    _os_log_impl(&dword_2695B9000, v29, OS_LOG_TYPE_INFO, "%s (numberOfContexts: %tu -> %tu)", buf, 0x20u);
  }

  if (!_numberOfContexts && _numberOfContexts2)
  {
    [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidBecomeBusy];
  }

  analytics = [(SVXModule *)self->_module analytics];
  analyticsContext = [contextCopy analyticsContext];
  [analytics logEventWithType:2701 context:analyticsContext];

  performer = [(SVXModule *)self->_module performer];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __40__SVXSpeechSynthesizer__enqueueContext___block_invoke;
  v36[3] = &unk_279C68FC0;
  v36[4] = self;
  [performer performBlock:v36 withOptions:0];

LABEL_36:
  v34 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_numberOfContexts
{
  result = [(NSMutableArray *)self->_pendingContexts count];
  if (self->_currentSpeakingContext)
  {
    ++result;
  }

  return result;
}

- (void)_handleDidFinishSynthesizingForSpeechRequest:(id)request instrumentMetrics:(id)metrics error:(id)error
{
  v91 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v84 = "[SVXSpeechSynthesizer _handleDidFinishSynthesizingForSpeechRequest:instrumentMetrics:error:]";
    v85 = 2112;
    v86 = requestCopy;
    v87 = 2112;
    v88 = metricsCopy;
    v89 = 2112;
    v90 = errorCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s speechRequest = %@, instrumentMetrics = %@, error = %@", buf, 0x2Au);
  }

  synthesizingContexts = self->_synthesizingContexts;
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __93__SVXSpeechSynthesizer__handleDidFinishSynthesizingForSpeechRequest_instrumentMetrics_error___block_invoke;
  v73[3] = &unk_279C66950;
  v61 = requestCopy;
  v74 = v61;
  v13 = [(NSMutableSet *)synthesizingContexts objectsPassingTest:v73];
  if ([v13 count])
  {
    [(NSMutableSet *)self->_synthesizingContexts minusSet:v13];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v58 = v13;
    obj = v13;
    v64 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
    if (!v64)
    {
      goto LABEL_36;
    }

    v63 = *v70;
    selfCopy = self;
    v60 = errorCopy;
    while (1)
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v70 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v69 + 1) + 8 * i);
        [v15 setInstrumentMetrics:metricsCopy];
        if (metricsCopy)
        {
          request = [v15 request];
          uUID = [MEMORY[0x277CCAD78] UUID];
          uUIDString = [uUID UUIDString];

          [(SVXSpeechSynthesisMetricsContextFactory *)self->_metricsContextFactory creationContextFromInstrumentMetrics:metricsCopy];
          v66 = v65 = uUIDString;
          v80 = @"id";
          v81 = uUIDString;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
          analyticsContext = [v15 analyticsContext];
          v20 = analyticsContext;
          v21 = MEMORY[0x277CBEC10];
          if (analyticsContext)
          {
            v21 = analyticsContext;
          }

          v22 = v21;

          _isInternalInstall = [(SVXSpeechSynthesizer *)self _isInternalInstall];
          if (!_isInternalInstall)
          {
            preferences = [(SVXModule *)self->_module preferences];
            shouldLogForQA = [preferences shouldLogForQA];
            v25 = MEMORY[0x277CBEC10];
            if (!shouldLogForQA)
            {
              goto LABEL_21;
            }
          }

          v78[0] = @"text";
          speakableText = [request speakableText];
          v27 = speakableText;
          v28 = speakableText ? speakableText : &stru_287A1C130;
          v78[1] = @"utterance";
          v79[0] = v28;
          utterance = [metricsCopy utterance];
          v30 = utterance;
          v31 = utterance ? utterance : &stru_287A1C130;
          v79[1] = v31;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];

          if (!_isInternalInstall)
          {
LABEL_21:
          }

          requestCreatedTime = [metricsCopy requestCreatedTime];
          if (requestCreatedTime)
          {
            v33 = requestCreatedTime;
            analytics = [(SVXModule *)self->_module analytics];
            v77[0] = v66;
            v77[1] = v18;
            v77[2] = v22;
            v77[3] = v25;
            v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:4];
            v36 = AFAnalyticsContextsMerge();
            [analytics logEventWithType:1801 machAbsoluteTime:v33 context:v36];

            speechInstrumentationUtilities = selfCopy->_speechInstrumentationUtilities;
            taskTracker = [(SVXSpeechSynthesisContext *)selfCopy->_currentSpeakingContext taskTracker];
            instrumentationContext = [taskTracker instrumentationContext];
            v40 = speechInstrumentationUtilities;
            self = selfCopy;
            [(SVXSpeechInstrumentationUtilities *)v40 emitTextToSpeechRequestReceived:instrumentationContext instrumentMetrics:metricsCopy];
          }

          synthesisBeginTime = [metricsCopy synthesisBeginTime];
          if (synthesisBeginTime)
          {
            v42 = synthesisBeginTime;
            analytics2 = [(SVXModule *)self->_module analytics];
            v76[0] = v18;
            v76[1] = v22;
            v76[2] = v25;
            v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:3];
            v45 = AFAnalyticsContextsMerge();
            [analytics2 logEventWithType:1804 machAbsoluteTime:v42 context:v45];

            self = selfCopy;
          }

          synthesisEndTime = [metricsCopy synthesisEndTime];
          if (synthesisEndTime)
          {
            v47 = synthesisEndTime;
            analytics3 = [(SVXModule *)self->_module analytics];
            v75[0] = v18;
            v75[1] = v22;
            v75[2] = v25;
            v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:3];
            v50 = AFAnalyticsContextsMerge();
            [analytics3 logEventWithType:1805 machAbsoluteTime:v47 context:v50];

            self = selfCopy;
          }

          errorCopy = v60;
        }

        if (errorCopy)
        {
          if ([(SVXSpeechSynthesizer *)self _continueContext:v15 error:0])
          {
            continue;
          }

          text = [v61 text];
          selfCopy3 = self;
          v53 = v15;
          v54 = 4;
          v55 = text;
          v56 = errorCopy;
        }

        else
        {
          text = [v61 text];
          selfCopy3 = self;
          v53 = v15;
          v54 = 1;
          v55 = text;
          v56 = 0;
        }

        [(SVXSpeechSynthesizer *)selfCopy3 _finalizeContext:v53 withResultType:v54 utterance:v55 error:v56];
      }

      v64 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
      if (!v64)
      {
LABEL_36:

        v13 = v58;
        break;
      }
    }
  }

  v57 = *MEMORY[0x277D85DE8];
}

BOOL __93__SVXSpeechSynthesizer__handleDidFinishSynthesizingForSpeechRequest_instrumentMetrics_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 synthesisRequest];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_handleDidGenerateAudioChunkData:(id)data forSpeechRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  requestCopy = request;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v24 = "[SVXSpeechSynthesizer _handleDidGenerateAudioChunkData:forSpeechRequest:]";
    v25 = 2112;
    v26 = requestCopy;
    v27 = 2112;
    v28 = dataCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s speechRequest = %@, audioChunkData = %@", buf, 0x20u);
  }

  speechRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (speechRequest == requestCopy)
  {
    if ([(SVXSpeechSynthesisContext *)self->_currentSpeakingContext isStreamingSynthesisRequest])
    {
      [(SVXAudioStreamingAnnouncer *)self->_audioStreamingAnnouncer audioStreamDidProvideAudio:dataCopy];
    }

    else
    {
      [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext handleAudioChunkData:dataCopy];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_synthesizingContexts;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        speechRequest2 = [v15 speechRequest];

        if (speechRequest2 == requestCopy)
        {
          if ([v15 isStreamingSynthesisRequest])
          {
            [(SVXAudioStreamingAnnouncer *)self->_audioStreamingAnnouncer audioStreamDidProvideAudio:dataCopy];
          }

          else
          {
            [v15 handleAudioChunkData:dataCopy];
          }
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidReceiveSpeechWordTimingInfoArray:(id)array forSpeechRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  requestCopy = request;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v24 = "[SVXSpeechSynthesizer _handleDidReceiveSpeechWordTimingInfoArray:forSpeechRequest:]";
    v25 = 2112;
    v26 = requestCopy;
    v27 = 2112;
    v28 = arrayCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s speechRequest = %@, speechWordTimingInfoArray = %@", buf, 0x20u);
  }

  speechRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (speechRequest == requestCopy)
  {
    [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext setSpeechWordTimingInfoArray:arrayCopy];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_synthesizingContexts;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        speechRequest2 = [v15 speechRequest];

        if (speechRequest2 == requestCopy)
        {
          [v15 setSpeechWordTimingInfoArray:arrayCopy];
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidFinishPresynthesizedAudioRequest:(id)request instrumentMetrics:(id)metrics error:(id)error
{
  v93 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  v11 = MEMORY[0x277CEF098];
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v86 = "[SVXSpeechSynthesizer _handleDidFinishPresynthesizedAudioRequest:instrumentMetrics:error:]";
    v87 = 2112;
    v88 = requestCopy;
    v89 = 2112;
    v90 = metricsCopy;
    v91 = 2112;
    v92 = errorCopy;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s presynthesizedAudioRequest = %@, instrumentMetrics = %@, error = %@", buf, 0x2Au);
  }

  presynthesizedAudioRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext presynthesizedAudioRequest];

  if (presynthesizedAudioRequest == requestCopy)
  {
    v14 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      currentSpeakingContext = self->_currentSpeakingContext;
      *buf = 136315394;
      v86 = "[SVXSpeechSynthesizer _handleDidFinishPresynthesizedAudioRequest:instrumentMetrics:error:]";
      v87 = 2112;
      v88 = currentSpeakingContext;
      _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s Stopped TTS with presynthesized audio for current speaking context. (_currentSpeakingContext = %@)", buf, 0x16u);
    }

    [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext setInstrumentMetrics:metricsCopy];
    if (metricsCopy)
    {
      request = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      v74 = [(SVXSpeechSynthesisMetricsContextFactory *)self->_metricsContextFactory creationContextFromInstrumentMetrics:metricsCopy];
      v83 = @"id";
      v72 = uUIDString;
      v84 = uUIDString;
      v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      analyticsContext = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext analyticsContext];
      v19 = analyticsContext;
      v20 = MEMORY[0x277CBEC10];
      if (analyticsContext)
      {
        v21 = analyticsContext;
      }

      else
      {
        v21 = MEMORY[0x277CBEC10];
      }

      v75 = v21;

      if ([(SVXSpeechSynthesizer *)self _isInternalInstall])
      {
        v81[0] = @"text";
        speakableText = [request speakableText];
        v23 = speakableText;
        if (speakableText)
        {
          v24 = speakableText;
        }

        else
        {
          v24 = &stru_287A1C130;
        }

        v81[1] = @"utterance";
        v82[0] = v24;
        utterance = [metricsCopy utterance];
        v26 = utterance;
        if (utterance)
        {
          v27 = utterance;
        }

        else
        {
          v27 = &stru_287A1C130;
        }

        v82[1] = v27;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
      }

      requestCreatedTime = [metricsCopy requestCreatedTime];
      if (requestCreatedTime)
      {
        v29 = requestCreatedTime;
        analytics = [(SVXModule *)self->_module analytics];
        v80[0] = v74;
        v80[1] = v76;
        v80[2] = v75;
        v80[3] = v20;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:4];
        v32 = AFAnalyticsContextsMerge();
        [analytics logEventWithType:1801 machAbsoluteTime:v29 context:v32];

        speechInstrumentationUtilities = self->_speechInstrumentationUtilities;
        taskTracker = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        instrumentationContext = [taskTracker instrumentationContext];
        [(SVXSpeechInstrumentationUtilities *)speechInstrumentationUtilities emitTextToSpeechRequestReceived:instrumentationContext instrumentMetrics:metricsCopy];
      }

      speechBeginTime = [metricsCopy speechBeginTime];
      if (speechBeginTime)
      {
        v37 = speechBeginTime;
        analytics2 = [(SVXModule *)self->_module analytics];
        v79[0] = v76;
        v79[1] = v75;
        v79[2] = v20;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:3];
        v40 = AFAnalyticsContextsMerge();
        [analytics2 logEventWithType:1802 machAbsoluteTime:v37 context:v40];

        v41 = objc_alloc_init(MEMORY[0x277D5AA58]);
        taskTracker2 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        aceId = [taskTracker2 aceId];
        [(SVXSpeechSynthesisContext *)v41 setAceID:aceId];

        v44 = *MEMORY[0x277CEF0F8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v86 = "[SVXSpeechSynthesizer _handleDidFinishPresynthesizedAudioRequest:instrumentMetrics:error:]";
          v87 = 2112;
          v88 = v41;
          _os_log_impl(&dword_2695B9000, v44, OS_LOG_TYPE_INFO, "%s Emit instrumentation: %@", buf, 0x16u);
        }

        taskTracker3 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        instrumentationContext2 = [taskTracker3 instrumentationContext];
        [instrumentationContext2 emitInstrumentation:v41 machAbsoluteTime:v37];
      }

      speechEstimatedOutputBeginTime = [metricsCopy speechEstimatedOutputBeginTime];
      if (speechEstimatedOutputBeginTime >= 1)
      {
        v48 = speechEstimatedOutputBeginTime;
        analytics3 = [(SVXModule *)self->_module analytics];
        v78[0] = v76;
        v78[1] = v75;
        v78[2] = v20;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:3];
        v51 = AFAnalyticsContextsMerge();
        [analytics3 logEventWithType:1806 machAbsoluteTime:v48 context:v51];
      }

      speechEndTime = [metricsCopy speechEndTime];
      if (speechEndTime)
      {
        v53 = speechEndTime;
        analytics4 = [(SVXModule *)self->_module analytics];
        v77[0] = v76;
        v77[1] = v75;
        v77[2] = v20;
        v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:3];
        v56 = AFAnalyticsContextsMerge();
        [analytics4 logEventWithType:1803 machAbsoluteTime:v53 context:v56];

        v57 = objc_alloc_init(MEMORY[0x277D5AA60]);
        taskTracker4 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        aceId2 = [taskTracker4 aceId];
        [(SVXSpeechSynthesisContext *)v57 setAceID:aceId2];

        v60 = *MEMORY[0x277CEF0F8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v86 = "[SVXSpeechSynthesizer _handleDidFinishPresynthesizedAudioRequest:instrumentMetrics:error:]";
          v87 = 2112;
          v88 = v57;
          _os_log_impl(&dword_2695B9000, v60, OS_LOG_TYPE_INFO, "%s Emit instrumentation: %@", buf, 0x16u);
        }

        taskTracker5 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        instrumentationContext3 = [taskTracker5 instrumentationContext];
        [instrumentationContext3 emitInstrumentation:v57 machAbsoluteTime:v53];
      }
    }

    if (!errorCopy)
    {
      speechRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];
      text = [speechRequest text];

      v65 = self->_currentSpeakingContext;
      selfCopy2 = self;
      v67 = 1;
      v68 = text;
      v69 = 0;
      goto LABEL_35;
    }

    if (![(SVXSpeechSynthesizer *)self _continueContext:self->_currentSpeakingContext error:0])
    {
      speechRequest2 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];
      text = [speechRequest2 text];

      v65 = self->_currentSpeakingContext;
      selfCopy2 = self;
      v67 = 4;
      v68 = text;
      v69 = errorCopy;
LABEL_35:
      [(SVXSpeechSynthesizer *)selfCopy2 _finalizeContext:v65 withResultType:v67 utterance:v68 error:v69];
    }
  }

  v71 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidStopPresynthesizedAudioRequest:(id)request success:(BOOL)success error:(id)error
{
  successCopy = success;
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  v10 = MEMORY[0x277CEF098];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v16 = 136315906;
    v17 = "[SVXSpeechSynthesizer _handleDidStopPresynthesizedAudioRequest:success:error:]";
    v18 = 2112;
    v19 = requestCopy;
    v20 = 1024;
    v21 = successCopy;
    v22 = 2112;
    v23 = errorCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s presynthesizedAudioRequest = %@, success = %d, error = %@", &v16, 0x26u);
  }

  presynthesizedAudioRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext presynthesizedAudioRequest];

  if (presynthesizedAudioRequest == requestCopy)
  {
    v13 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      currentSpeakingContext = self->_currentSpeakingContext;
      v16 = 136315394;
      v17 = "[SVXSpeechSynthesizer _handleDidStopPresynthesizedAudioRequest:success:error:]";
      v18 = 2112;
      v19 = currentSpeakingContext;
      _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s Stopped TTS with presynthesized audio for current speaking context. (_currentSpeakingContext = %@)", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidStartPresynthesizedAudioRequest:(id)request timestamp:(unint64_t)timestamp
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "[SVXSpeechSynthesizer _handleDidStartPresynthesizedAudioRequest:timestamp:]";
    v21 = 2112;
    v22 = requestCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s presynthesizedAudioRequest = %@", &v19, 0x16u);
  }

  presynthesizedAudioRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext presynthesizedAudioRequest];

  if (presynthesizedAudioRequest == requestCopy)
  {
    v10 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      currentSpeakingContext = self->_currentSpeakingContext;
      v19 = 136315394;
      v20 = "[SVXSpeechSynthesizer _handleDidStartPresynthesizedAudioRequest:timestamp:]";
      v21 = 2112;
      v22 = currentSpeakingContext;
      _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s Started TTS with presynthesized audio for current speaking context. (_currentSpeakingContext = %@)", &v19, 0x16u);
    }

    analytics = [(SVXModule *)self->_module analytics];
    analyticsContext = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext analyticsContext];
    [analytics logEventWithType:2706 context:analyticsContext];

    announcer = self->_announcer;
    request = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
    v16 = [objc_alloc(MEMORY[0x277CEF4A8]) initWithUtterance:0 beginTimestamp:timestamp endTimestamp:0];
    taskTracker = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
    [(SVXSpeechSynthesisAnnouncer *)announcer speechSynthesizerDidStartRequest:request record:v16 taskTracker:taskTracker];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidFinishSpeakingWithSpeechRequest:(id)request success:(BOOL)success error:(id)error
{
  successCopy = success;
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  v10 = MEMORY[0x277CEF098];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v24 = 136315906;
    v25 = "[SVXSpeechSynthesizer _handleDidFinishSpeakingWithSpeechRequest:success:error:]";
    v26 = 2112;
    v27 = requestCopy;
    v28 = 1024;
    v29 = successCopy;
    v30 = 2112;
    v31 = errorCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s speechRequest = %@, success = %d, error = %@", &v24, 0x26u);
  }

  speechRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (speechRequest == requestCopy)
  {
    v13 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
    {
      currentSpeakingContext = self->_currentSpeakingContext;
      v24 = 136315394;
      v25 = "[SVXSpeechSynthesizer _handleDidFinishSpeakingWithSpeechRequest:success:error:]";
      v26 = 2112;
      v27 = currentSpeakingContext;
      _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s Stopped TTS for current speaking context. (_currentSpeakingContext = %@)", &v24, 0x16u);
    }

    v15 = self->_currentSpeakingContext;
    if (!errorCopy)
    {
      text = [(SVXSpeechSynthesisContext *)requestCopy text];
      selfCopy2 = self;
      v19 = v15;
      v20 = 1;
      v21 = text;
      v22 = 0;
      goto LABEL_10;
    }

    if (![(SVXSpeechSynthesizer *)self _continueContext:self->_currentSpeakingContext error:0])
    {
      v16 = self->_currentSpeakingContext;
      text = [(SVXSpeechSynthesisContext *)requestCopy text];
      selfCopy2 = self;
      v19 = v16;
      v20 = 4;
      v21 = text;
      v22 = errorCopy;
LABEL_10:
      [(SVXSpeechSynthesizer *)selfCopy2 _finalizeContext:v19 withResultType:v20 utterance:v21 error:v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidFinishSpeakingWithSpeechRequest:(id)request instrumentMetrics:(id)metrics
{
  v77 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  metricsCopy = metrics;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v74 = "[SVXSpeechSynthesizer _handleDidFinishSpeakingWithSpeechRequest:instrumentMetrics:]";
    v75 = 2112;
    v76 = requestCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s speechRequest = %@", buf, 0x16u);
  }

  speechRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (speechRequest == requestCopy)
  {
    [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext setInstrumentMetrics:metricsCopy];
    if (metricsCopy)
    {
      request = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:uUIDString forKey:@"id"];
      v71 = @"id";
      v72 = uUIDString;
      v61 = uUIDString;
      v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      analyticsContext = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext analyticsContext];
      v14 = analyticsContext;
      v15 = MEMORY[0x277CBEC10];
      if (analyticsContext)
      {
        v15 = analyticsContext;
      }

      v16 = v15;

      _isInternalInstall = [(SVXSpeechSynthesizer *)self _isInternalInstall];
      v64 = request;
      if (_isInternalInstall || (-[SVXModule preferences](self->_module, "preferences"), v14 = objc_claimAutoreleasedReturnValue(), [v14 shouldLogForQA]))
      {
        v69[0] = @"text";
        speakableText = [request speakableText];
        v19 = speakableText;
        if (speakableText)
        {
          v20 = speakableText;
        }

        else
        {
          v20 = &stru_287A1C130;
        }

        v69[1] = @"utterance";
        v70[0] = v20;
        utterance = [metricsCopy utterance];
        v22 = utterance;
        if (utterance)
        {
          v23 = utterance;
        }

        else
        {
          v23 = &stru_287A1C130;
        }

        v70[1] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];

        request = v64;
        if (_isInternalInstall)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v24 = MEMORY[0x277CBEC10];
      }

LABEL_19:
      requestCreatedTime = [metricsCopy requestCreatedTime];
      if (requestCreatedTime)
      {
        v26 = requestCreatedTime;
        analytics = [(SVXModule *)self->_module analytics];
        v68[0] = dictionary;
        v68[1] = v16;
        v68[2] = v24;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
        v29 = AFAnalyticsContextsMerge();
        [analytics logEventWithType:1801 machAbsoluteTime:v26 context:v29];

        speechInstrumentationUtilities = self->_speechInstrumentationUtilities;
        taskTracker = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        instrumentationContext = [taskTracker instrumentationContext];
        [(SVXSpeechInstrumentationUtilities *)speechInstrumentationUtilities emitTextToSpeechRequestReceived:instrumentationContext instrumentMetrics:metricsCopy];

        request = v64;
      }

      speechBeginTime = [metricsCopy speechBeginTime];
      if (speechBeginTime)
      {
        v34 = speechBeginTime;
        analytics2 = [(SVXModule *)self->_module analytics];
        v67[0] = v63;
        v67[1] = v16;
        v67[2] = v24;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:3];
        v37 = AFAnalyticsContextsMerge();
        [analytics2 logEventWithType:1802 machAbsoluteTime:v34 context:v37];

        v38 = objc_alloc_init(MEMORY[0x277D5AA58]);
        taskTracker2 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        aceId = [taskTracker2 aceId];
        [v38 setAceID:aceId];

        v41 = *MEMORY[0x277CEF0F8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v74 = "[SVXSpeechSynthesizer _handleDidFinishSpeakingWithSpeechRequest:instrumentMetrics:]";
          v75 = 2112;
          v76 = v38;
          _os_log_impl(&dword_2695B9000, v41, OS_LOG_TYPE_INFO, "%s Emit instrumentation: %@", buf, 0x16u);
        }

        taskTracker3 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        instrumentationContext2 = [taskTracker3 instrumentationContext];
        [instrumentationContext2 emitInstrumentation:v38 machAbsoluteTime:v34];

        request = v64;
      }

      speechEstimatedOutputBeginTime = [metricsCopy speechEstimatedOutputBeginTime];
      if (speechEstimatedOutputBeginTime >= 1)
      {
        v45 = speechEstimatedOutputBeginTime;
        analytics3 = [(SVXModule *)self->_module analytics];
        v66[0] = v63;
        v66[1] = v16;
        v66[2] = v24;
        v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
        v48 = AFAnalyticsContextsMerge();
        [analytics3 logEventWithType:1806 machAbsoluteTime:v45 context:v48];

        request = v64;
      }

      speechEndTime = [metricsCopy speechEndTime];
      if (speechEndTime)
      {
        v50 = speechEndTime;
        analytics4 = [(SVXModule *)self->_module analytics];
        v65[0] = v63;
        v65[1] = v16;
        v65[2] = v24;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];
        v53 = AFAnalyticsContextsMerge();
        [analytics4 logEventWithType:1803 machAbsoluteTime:v50 context:v53];

        v54 = objc_alloc_init(MEMORY[0x277D5AA60]);
        taskTracker4 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        aceId2 = [taskTracker4 aceId];
        [v54 setAceID:aceId2];

        v57 = *MEMORY[0x277CEF0F8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v74 = "[SVXSpeechSynthesizer _handleDidFinishSpeakingWithSpeechRequest:instrumentMetrics:]";
          v75 = 2112;
          v76 = v54;
          _os_log_impl(&dword_2695B9000, v57, OS_LOG_TYPE_INFO, "%s Emit instrumentation: %@", buf, 0x16u);
        }

        taskTracker5 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        instrumentationContext3 = [taskTracker5 instrumentationContext];
        [instrumentationContext3 emitInstrumentation:v54 machAbsoluteTime:v50];

        request = v64;
      }
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidStartSpeakingWithSpeechRequest:(id)request timestamp:(unint64_t)timestamp
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v21 = 136315394;
    v22 = "[SVXSpeechSynthesizer _handleDidStartSpeakingWithSpeechRequest:timestamp:]";
    v23 = 2112;
    v24 = requestCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s speechRequest = %@", &v21, 0x16u);
  }

  speechRequest = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (speechRequest == requestCopy)
  {
    v10 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      currentSpeakingContext = self->_currentSpeakingContext;
      v21 = 136315394;
      v22 = "[SVXSpeechSynthesizer _handleDidStartSpeakingWithSpeechRequest:timestamp:]";
      v23 = 2112;
      v24 = currentSpeakingContext;
      _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s Started TTS for current speaking context. (_currentSpeakingContext = %@)", &v21, 0x16u);
    }

    analytics = [(SVXModule *)self->_module analytics];
    analyticsContext = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext analyticsContext];
    [analytics logEventWithType:2706 context:analyticsContext];

    announcer = self->_announcer;
    request = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
    v16 = objc_alloc(MEMORY[0x277CEF4A8]);
    text = [(SVXSpeechSynthesisContext *)requestCopy text];
    v18 = [v16 initWithUtterance:text beginTimestamp:timestamp endTimestamp:0];
    taskTracker = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
    [(SVXSpeechSynthesisAnnouncer *)announcer speechSynthesizerDidStartRequest:request record:v18 taskTracker:taskTracker];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_configureWithConfiguration:(id)configuration
{
  if ([(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager updateConfiguration:configuration])
  {
    performer = [(SVXModule *)self->_module performer];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__SVXSpeechSynthesizer__configureWithConfiguration___block_invoke;
    v5[3] = &unk_279C68FC0;
    v5[4] = self;
    [performer performBlock:v5 withOptions:0];
  }
}

- (void)_prewarmWithContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[SVXSpeechSynthesizer _prewarmWithContext:]";
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", &v11, 0x16u);
  }

  voiceConfigurer = self->_voiceConfigurer;
  preferences = [(SVXModule *)self->_module preferences];
  v8 = [(SVXSynthesisVoiceConfigurer *)voiceConfigurer voiceForContext:contextCopy preferences:preferences];

  v9 = [(SVXSpeechSynthesisConfigurer *)self->_speechSynthesisConfigurer synthesisRequestForText:&stru_287A1C130 voice:v8];
  [(SiriTTSDaemonSession *)self->_ttsSession prewarmWithRequest:v9 didFinish:&__block_literal_global_2299];

  v10 = *MEMORY[0x277D85DE8];
}

void __44__SVXSpeechSynthesizer__prewarmWithContext___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[SVXSpeechSynthesizer _prewarmWithContext:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts Unable to prewarm session, error=%@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_postcool
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SVXSpeechSynthesizer _postcool]";
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  [(SiriTTSDaemonSession *)self->_ttsSession setKeepActive:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_prewarm
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SVXSpeechSynthesizer _prewarm]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  [(SiriTTSDaemonSession *)self->_ttsSession setKeepActive:1];
  currentConfiguration = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
  audioSessionID = [currentConfiguration audioSessionID];

  if (audioSessionID)
  {
    self->_needsPrewarm = 0;
    [(SVXSpeechSynthesizer *)self _prewarmWithContext:0];
  }

  else
  {
    v7 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[SVXSpeechSynthesizer _prewarm]";
      _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s Skipped prewarming because audio session ID is unknown.", &v9, 0xCu);
    }

    self->_needsPrewarm = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)didFinishSynthesisRequest:(id)request withInstrumentMetrics:(id)metrics error:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136316162;
    v23 = "[SVXSpeechSynthesizer didFinishSynthesisRequest:withInstrumentMetrics:error:]";
    v24 = 2112;
    v25 = ttsSession;
    v26 = 2112;
    v27 = requestCopy;
    v28 = 2112;
    v29 = metricsCopy;
    v30 = 2112;
    v31 = errorCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, instrumentMetrics = %@, error = %@", buf, 0x34u);
  }

  performer = [(SVXModule *)self->_module performer];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__SVXSpeechSynthesizer_didFinishSynthesisRequest_withInstrumentMetrics_error___block_invoke;
  v18[3] = &unk_279C68930;
  v18[4] = self;
  v19 = requestCopy;
  v20 = metricsCopy;
  v21 = errorCopy;
  v14 = errorCopy;
  v15 = metricsCopy;
  v16 = requestCopy;
  [performer performBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)withRequest:(id)request didGenerateAudioChunk:(id)chunk
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  chunkCopy = chunk;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136315906;
    v18 = "[SVXSpeechSynthesizer withRequest:didGenerateAudioChunk:]";
    v19 = 2112;
    v20 = ttsSession;
    v21 = 2112;
    v22 = requestCopy;
    v23 = 2112;
    v24 = chunkCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, audio = %@", buf, 0x2Au);
  }

  performer = [(SVXModule *)self->_module performer];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__SVXSpeechSynthesizer_withRequest_didGenerateAudioChunk___block_invoke;
  v14[3] = &unk_279C68ED0;
  v14[4] = self;
  v15 = chunkCopy;
  v16 = requestCopy;
  v11 = requestCopy;
  v12 = chunkCopy;
  [performer performBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)withRequest:(id)request didReceiveTimingInfo:(id)info
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  infoCopy = info;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    v10 = v8;
    *buf = 136315906;
    v20 = "[SVXSpeechSynthesizer withRequest:didReceiveTimingInfo:]";
    v21 = 2112;
    v22 = ttsSession;
    v23 = 2112;
    v24 = requestCopy;
    v25 = 2048;
    v26 = [infoCopy count];
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, timingInfo.count = %tu", buf, 0x2Au);
  }

  performer = [(SVXModule *)self->_module performer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SVXSpeechSynthesizer_withRequest_didReceiveTimingInfo___block_invoke;
  v15[3] = &unk_279C68ED0;
  v16 = infoCopy;
  selfCopy = self;
  v18 = requestCopy;
  v12 = requestCopy;
  v13 = infoCopy;
  [performer performBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __57__SVXSpeechSynthesizer_withRequest_didReceiveTimingInfo___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    v5 = MEMORY[0x277CEF098];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
        {
          v8 = *(*(&v15 + 1) + 8 * i);
          v9 = v7;
          v29.location = [v8 textRange];
          v10 = NSStringFromRange(v29);
          [v8 startTime];
          *buf = 136315906;
          v20 = "[SVXSpeechSynthesizer withRequest:didReceiveTimingInfo:]_block_invoke";
          v21 = 2112;
          v22 = v8;
          v23 = 2112;
          v24 = v10;
          v25 = 2048;
          v26 = v11;
          _os_log_impl(&dword_2695B9000, v9, OS_LOG_TYPE_INFO, "%s %@ {textRange = %@, startTime = %f}", buf, 0x2Au);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v15 objects:v27 count:16];
    }

    while (v3);
  }

  result = [*(a1 + 40) _handleDidReceiveSpeechWordTimingInfoArray:*(a1 + 32) forSpeechRequest:*(a1 + 48)];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didFinishPresynthesizedAudioRequest:(id)request withInstrumentMetrics:(id)metrics error:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  kdebug_trace();
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136316162;
    v23 = "[SVXSpeechSynthesizer didFinishPresynthesizedAudioRequest:withInstrumentMetrics:error:]";
    v24 = 2112;
    v25 = ttsSession;
    v26 = 2112;
    v27 = requestCopy;
    v28 = 2112;
    v29 = metricsCopy;
    v30 = 2112;
    v31 = errorCopy;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, instrumentMetrics = %@, error = %@", buf, 0x34u);
  }

  performer = [(SVXModule *)self->_module performer];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__SVXSpeechSynthesizer_didFinishPresynthesizedAudioRequest_withInstrumentMetrics_error___block_invoke;
  v18[3] = &unk_279C68930;
  v18[4] = self;
  v19 = requestCopy;
  v20 = metricsCopy;
  v21 = errorCopy;
  v14 = errorCopy;
  v15 = metricsCopy;
  v16 = requestCopy;
  [performer performBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)didStopPresynthesizedAudioRequest:(id)request atEnd:(BOOL)end error:(id)error
{
  endCopy = end;
  v30 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136316162;
    v21 = "[SVXSpeechSynthesizer didStopPresynthesizedAudioRequest:atEnd:error:]";
    v22 = 2112;
    v23 = ttsSession;
    v24 = 2112;
    v25 = requestCopy;
    v26 = 1024;
    v27 = endCopy;
    v28 = 2112;
    v29 = errorCopy;
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, atEnd = %d, error = %@", buf, 0x30u);
  }

  performer = [(SVXModule *)self->_module performer];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__SVXSpeechSynthesizer_didStopPresynthesizedAudioRequest_atEnd_error___block_invoke;
  v16[3] = &unk_279C69100;
  v16[4] = self;
  v17 = requestCopy;
  v19 = endCopy;
  v18 = errorCopy;
  v13 = errorCopy;
  v14 = requestCopy;
  [performer performBlock:v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)didStartPresynthesizedAudioRequest:(id)request
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = mach_absolute_time();
  kdebug_trace();
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136315650;
    v15 = "[SVXSpeechSynthesizer didStartPresynthesizedAudioRequest:]";
    v16 = 2112;
    v17 = ttsSession;
    v18 = 2112;
    v19 = requestCopy;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@", buf, 0x20u);
  }

  performer = [(SVXModule *)self->_module performer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SVXSpeechSynthesizer_didStartPresynthesizedAudioRequest___block_invoke;
  v11[3] = &unk_279C68E58;
  v11[4] = self;
  v12 = requestCopy;
  v13 = v5;
  v9 = requestCopy;
  [performer performBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)didFinishSpeakingRequest:(id)request successfully:(BOOL)successfully phonemesSpoken:(id)spoken withError:(id)error
{
  successfullyCopy = successfully;
  v34 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  kdebug_trace();
  v11 = *MEMORY[0x277CEF0C8];
  v12 = v11;
  ttsSignpostInterval = self->_ttsSignpostInterval;
  if (ttsSignpostInterval - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2695B9000, v12, OS_SIGNPOST_INTERVAL_END, ttsSignpostInterval, "TextToSpeech", &unk_269656841, buf, 2u);
  }

  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136316162;
    v25 = "[SVXSpeechSynthesizer didFinishSpeakingRequest:successfully:phonemesSpoken:withError:]";
    v26 = 2112;
    v27 = ttsSession;
    v28 = 2112;
    v29 = requestCopy;
    v30 = 1024;
    v31 = successfullyCopy;
    v32 = 2112;
    v33 = errorCopy;
    _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, finishedSpeaking = %d, error = %@", buf, 0x30u);
  }

  performer = [(SVXModule *)self->_module performer];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__SVXSpeechSynthesizer_didFinishSpeakingRequest_successfully_phonemesSpoken_withError___block_invoke;
  v20[3] = &unk_279C69100;
  v20[4] = self;
  v21 = requestCopy;
  v23 = successfullyCopy;
  v22 = errorCopy;
  v17 = errorCopy;
  v18 = requestCopy;
  [performer performBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)didFinishSpeakingRequest:(id)request withInstrumentMetrics:(id)metrics
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  metricsCopy = metrics;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136315650;
    v18 = "[SVXSpeechSynthesizer didFinishSpeakingRequest:withInstrumentMetrics:]";
    v19 = 2112;
    v20 = ttsSession;
    v21 = 2112;
    v22 = requestCopy;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@", buf, 0x20u);
  }

  performer = [(SVXModule *)self->_module performer];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__SVXSpeechSynthesizer_didFinishSpeakingRequest_withInstrumentMetrics___block_invoke;
  v14[3] = &unk_279C68ED0;
  v14[4] = self;
  v15 = requestCopy;
  v16 = metricsCopy;
  v11 = metricsCopy;
  v12 = requestCopy;
  [performer performBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didStartSpeakingRequest:(id)request
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = mach_absolute_time();
  kdebug_trace();
  v6 = MEMORY[0x277CEF0C8];
  v7 = os_signpost_id_generate(*MEMORY[0x277CEF0C8]);
  v8 = *v6;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2695B9000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "TextToSpeech", &unk_269656841, buf, 2u);
  }

  self->_ttsSignpostInterval = v7;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136315650;
    v19 = "[SVXSpeechSynthesizer didStartSpeakingRequest:]";
    v20 = 2112;
    v21 = ttsSession;
    v22 = 2112;
    v23 = requestCopy;
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@", buf, 0x20u);
  }

  performer = [(SVXModule *)self->_module performer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__SVXSpeechSynthesizer_didStartSpeakingRequest___block_invoke;
  v15[3] = &unk_279C68E58;
  v15[4] = self;
  v16 = requestCopy;
  v17 = v5;
  v13 = requestCopy;
  [performer performBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)languageCodeChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[SVXSpeechSynthesizer languageCodeChanged:]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SVXSpeechSynthesizer_languageCodeChanged___block_invoke;
  v7[3] = &unk_279C68FC0;
  v7[4] = self;
  [performer performBlock:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __44__SVXSpeechSynthesizer_languageCodeChanged___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  v4 = [*(v2 + 32) preferences];
  v6 = [v3 getLocaleWithAllowsFallback:0 preferences:v4];

  v5 = [SVXSpeechSynthesisConfiguration configurationWithLocale:v6];
  [*(a1 + 32) _configureWithConfiguration:v5];
}

- (void)outputVoiceChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[SVXSpeechSynthesizer outputVoiceChanged:]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SVXSpeechSynthesizer_outputVoiceChanged___block_invoke;
  v7[3] = &unk_279C68FC0;
  v7[4] = self;
  [performer performBlock:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __43__SVXSpeechSynthesizer_outputVoiceChanged___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  v4 = [*(v2 + 32) preferences];
  v6 = [v3 getOutputVoiceInfoWithAllowsFallback:0 preferences:v4];

  v5 = [SVXSpeechSynthesisConfiguration configurationWithOutputVoiceInfo:v6];
  [*(a1 + 32) _configureWithConfiguration:v5];
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SVXSpeechSynthesizer_removeListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  [performer performBlock:v7];
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SVXSpeechSynthesizer_addListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  [performer performBlock:v7];
}

- (void)updateWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SVXSpeechSynthesizer_updateWithConfiguration___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  [performer performBlock:v7];
}

- (void)postcool
{
  performer = [(SVXModule *)self->_module performer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__SVXSpeechSynthesizer_postcool__block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [performer performBlock:v4];
}

- (void)prewarm
{
  performer = [(SVXModule *)self->_module performer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__SVXSpeechSynthesizer_prewarm__block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [performer performBlock:v4];
}

- (void)stopWithModuleInstanceProvider:(id)provider
{
  performer = [(SVXModule *)self->_module performer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SVXSpeechSynthesizer_stopWithModuleInstanceProvider___block_invoke;
  v5[3] = &unk_279C68FC0;
  v5[4] = self;
  [performer performBlock:v5];
}

uint64_t __55__SVXSpeechSynthesizer_stopWithModuleInstanceProvider___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  [*(a1 + 32) _cancelPendingContextsWithOperationType:2];
  v4 = *(a1 + 32);

  return [v4 _stopCurrentSpeakingContextWithInterruptionBehavior:1];
}

- (void)startWithModuleInstanceProvider:(id)provider platformDependencies:(id)dependencies
{
  v30 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  dependenciesCopy = dependencies;
  performer = [(SVXModule *)self->_module performer];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __77__SVXSpeechSynthesizer_startWithModuleInstanceProvider_platformDependencies___block_invoke;
  v26[3] = &unk_279C68ED0;
  v26[4] = self;
  v9 = providerCopy;
  v27 = v9;
  v10 = dependenciesCopy;
  v28 = v10;
  [performer performBlock:v26];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if ([v16 type] == 5)
        {
          audioStreamingAnnouncer = self->_audioStreamingAnnouncer;
          audioStreamingListener = [v16 audioStreamingListener];
          [(SVXAnnouncer *)audioStreamingAnnouncer addListener:audioStreamingListener];
        }

        if ([v16 type] == 7)
        {
          configurationManager = self->_configurationManager;
          clientAudioSystemService = [v16 clientAudioSystemService];
          [(SVXSpeechSynthesisConfigurationStateManager *)configurationManager setClientAudioSystemServicing:clientAudioSystemService];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v13);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __77__SVXSpeechSynthesizer_startWithModuleInstanceProvider_platformDependencies___block_invoke(id *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  [a1[4] _cancelPendingContextsWithOperationType:2];
  [a1[4] _stopCurrentSpeakingContextWithInterruptionBehavior:1];
  v2 = [a1[5] sessionManager];
  v3 = a1[4];
  v4 = v3[1];
  v3[1] = v2;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a1[6];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 type] == 6)
        {
          v11 = a1[4];
          v12 = [v10 speechSynthesisListener];
          [v11 addListener:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (SVXSpeechSynthesizer)initWithModule:(id)module speechSynthesisUtils:(id)utils sessionUtils:(id)sessionUtils voiceGenderConverter:(id)converter announcer:(id)announcer configurationManager:(id)manager audioStreamingAnnouncer:(id)streamingAnnouncer ttsSession:(id)self0 speechSynthesisConfigurer:(id)self1 speechRequestConfigurer:(id)self2 voiceConfigurer:(id)self3 notificationCenterRegistrar:(id)self4 speakableUtteranceParserProvider:(id)self5 localizationUtils:(id)self6 speechInstrumentationUtilities:(id)self7 metricsContextFactory:(id)self8
{
  moduleCopy = module;
  utilsCopy = utils;
  sessionUtilsCopy = sessionUtils;
  converterCopy = converter;
  announcerCopy = announcer;
  managerCopy = manager;
  streamingAnnouncerCopy = streamingAnnouncer;
  sessionCopy = session;
  configurerCopy = configurer;
  requestConfigurerCopy = requestConfigurer;
  voiceConfigurerCopy = voiceConfigurer;
  registrarCopy = registrar;
  providerCopy = provider;
  localizationUtilsCopy = localizationUtils;
  utilitiesCopy = utilities;
  factoryCopy = factory;
  v55.receiver = self;
  v55.super_class = SVXSpeechSynthesizer;
  v23 = [(SVXSpeechSynthesizer *)&v55 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_speechSynthesisUtils, utils);
    objc_storeStrong(&v24->_sessionUtils, sessionUtils);
    objc_storeStrong(&v24->_voiceGenderConverter, converter);
    objc_storeStrong(&v24->_module, module);
    objc_storeStrong(&v24->_announcer, announcer);
    objc_storeStrong(&v24->_configurationManager, manager);
    objc_storeStrong(&v24->_audioStreamingAnnouncer, streamingAnnouncer);
    objc_storeStrong(&v24->_ttsSession, session);
    objc_storeStrong(&v24->_speechSynthesisConfigurer, configurer);
    objc_storeStrong(&v24->_speechRequestConfigurer, requestConfigurer);
    objc_storeStrong(&v24->_voiceConfigurer, voiceConfigurer);
    objc_storeStrong(&v24->_notificationCenterRegistrar, registrar);
    objc_storeStrong(&v24->_speakableUtteranceParserProvider, provider);
    objc_storeStrong(&v24->_speechInstrumentationUtilities, utilities);
    objc_storeStrong(&v24->_localizationUtils, localizationUtils);
    objc_storeStrong(&v24->_metricsContextFactory, factory);
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
    pendingContexts = v24->_pendingContexts;
    v24->_pendingContexts = v25;

    v27 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:16];
    synthesizingContexts = v24->_synthesizingContexts;
    v24->_synthesizingContexts = v27;

    speechSynthesisUtils = v24->_speechSynthesisUtils;
    preferences = [(SVXModule *)v24->_module preferences];
    v31 = [(SVXSpeechSynthesisUtils *)speechSynthesisUtils getLocaleWithAllowsFallback:0 preferences:preferences];

    v32 = v24->_speechSynthesisUtils;
    preferences2 = [(SVXModule *)v24->_module preferences];
    v34 = [(SVXSpeechSynthesisUtils *)v32 getOutputVoiceInfoWithAllowsFallback:0 preferences:preferences2];

    v35 = [[SVXSpeechSynthesisConfiguration alloc] initWithLocale:v31 outputVoiceInfo:v34 audioSessionID:0];
    [(SVXSpeechSynthesizer *)v24 _configureWithConfiguration:v35];
    [(SVXDefaultNotificationCenterRegistrar *)v24->_notificationCenterRegistrar addObserver:v24 selector:sel_outputVoiceChanged_ name:*MEMORY[0x277CEF058] object:0];
    [(SVXDefaultNotificationCenterRegistrar *)v24->_notificationCenterRegistrar addObserver:v24 selector:sel_languageCodeChanged_ name:*MEMORY[0x277CEF018] object:0];
  }

  return v24;
}

- (SVXSpeechSynthesizer)initWithModule:(id)module
{
  moduleCopy = module;
  v3 = objc_alloc_init(SVXSpeechSynthesisUtils);
  v4 = objc_alloc_init(SVXSessionUtils);
  v5 = objc_alloc_init(SVXVoiceGenderConverter);
  v22 = objc_alloc_init(SVXSpeechSynthesisAnnouncer);
  v6 = objc_alloc_init(SVXSpeechSynthesisConfigurationStateManager);
  v21 = objc_alloc_init(SVXAudioStreamingAnnouncer);
  v7 = objc_alloc_init(SVXDefaultNotificationCenterRegistrar);
  v19 = objc_alloc_init(MEMORY[0x277D613F8]);
  v8 = v5;
  v26 = v5;
  v20 = [[SVXSynthesisVoiceConfigurer alloc] initWithConfigurationManager:v6 speechSynthesisUtils:v3 sessionUtils:v4 voiceGenderConverter:v5];
  v17 = [[SVXSpeechSynthesisConfigurer alloc] initWithVoiceConfigurer:v20];
  v16 = [[SVXSpeechRequestConfigurer alloc] initWithConfigurationManager:v6 voiceConfigurer:v20];
  v9 = v3;
  v18 = v3;
  v15 = [[SVXSynthesisVoiceConfigurer alloc] initWithConfigurationManager:v6 speechSynthesisUtils:v3 sessionUtils:v4 voiceGenderConverter:v8];
  v14 = objc_alloc_init(SVXAFSpeakableUtteranceParserProvider);
  v10 = objc_alloc_init(SVXLocalizationUtils);
  v11 = objc_alloc_init(SVXSpeechInstrumentationUtilities);
  v12 = objc_alloc_init(SVXSpeechSynthesisMetricsContextFactory);
  v25 = [(SVXSpeechSynthesizer *)self initWithModule:moduleCopy speechSynthesisUtils:v9 sessionUtils:v4 voiceGenderConverter:v26 announcer:v22 configurationManager:v6 audioStreamingAnnouncer:v21 ttsSession:v19 speechSynthesisConfigurer:v17 speechRequestConfigurer:v16 voiceConfigurer:v15 notificationCenterRegistrar:v7 speakableUtteranceParserProvider:v14 localizationUtils:v10 speechInstrumentationUtilities:v11 metricsContextFactory:v12];

  return v25;
}

- (void)stopCurrentRequestWithInterruptionBehavior:(int64_t)behavior
{
  performer = [(SVXModule *)self->_module performer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__SVXSpeechSynthesizer_stopCurrentRequestWithInterruptionBehavior___block_invoke;
  v6[3] = &unk_279C68C68;
  v6[4] = self;
  v6[5] = behavior;
  [performer performBlock:v6];
}

- (void)cancelPendingRequests
{
  performer = [(SVXModule *)self->_module performer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__SVXSpeechSynthesizer_cancelPendingRequests__block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [performer performBlock:v4];
}

- (void)stopRequest:(id)request withInterruptionBehavior:(int64_t)behavior
{
  requestCopy = request;
  performer = [(SVXModule *)self->_module performer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SVXSpeechSynthesizer_stopRequest_withInterruptionBehavior___block_invoke;
  v9[3] = &unk_279C68E58;
  v9[4] = self;
  v10 = requestCopy;
  behaviorCopy = behavior;
  v8 = requestCopy;
  [performer performBlock:v9];
}

- (void)cancelRequest:(id)request
{
  requestCopy = request;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SVXSpeechSynthesizer_cancelRequest___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  [performer performBlock:v7];
}

- (void)enqueueRequest:(id)request languageCode:(id)code voiceName:(id)name gender:(int64_t)gender audioSessionID:(unsigned int)d preparation:(id)preparation finalization:(id)finalization taskTracker:(id)self0 analyticsContext:(id)self1
{
  contextCopy = context;
  trackerCopy = tracker;
  finalizationCopy = finalization;
  preparationCopy = preparation;
  nameCopy = name;
  codeCopy = code;
  requestCopy = request;
  if ([(SVXSpeechSynthesizer *)self _useStreamingAudio])
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  v25 = [[SVXSpeechSynthesisContext alloc] initWithOperationType:v24 request:requestCopy languageCode:codeCopy voiceName:nameCopy gender:gender audioSessionID:d preparation:preparationCopy audioChunkHandler:0 finalization:finalizationCopy taskTracker:trackerCopy analyticsContext:contextCopy];

  if ([(SVXSpeechSynthesizer *)self _useStreamingAudio])
  {
    [(SVXSpeechSynthesisContext *)v25 setIsStreamingSynthesisRequest:1];
  }

  performer = [(SVXModule *)self->_module performer];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __138__SVXSpeechSynthesizer_enqueueRequest_languageCode_voiceName_gender_audioSessionID_preparation_finalization_taskTracker_analyticsContext___block_invoke;
  v29[3] = &unk_279C68FE8;
  v29[4] = self;
  v30 = v25;
  v27 = v25;
  [performer performBlock:v29];
}

- (void)synthesizeRequest:(id)request audioChunkHandler:(id)handler taskTracker:(id)tracker analyticsContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  trackerCopy = tracker;
  handlerCopy = handler;
  requestCopy = request;
  v17 = [[SVXSpeechSynthesisContext alloc] initWithOperationType:1 request:requestCopy languageCode:0 voiceName:0 gender:0 audioSessionID:0 preparation:0 audioChunkHandler:handlerCopy finalization:completionCopy taskTracker:trackerCopy analyticsContext:contextCopy];

  performer = [(SVXModule *)self->_module performer];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __100__SVXSpeechSynthesizer_synthesizeRequest_audioChunkHandler_taskTracker_analyticsContext_completion___block_invoke;
  v20[3] = &unk_279C68FE8;
  v20[4] = self;
  v21 = v17;
  v19 = v17;
  [performer performBlock:v20];
}

- (void)prewarmRequest:(id)request
{
  requestCopy = request;
  performer = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SVXSpeechSynthesizer_prewarmRequest___block_invoke;
  v7[3] = &unk_279C68FE8;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  [performer performBlock:v7];
}

void __39__SVXSpeechSynthesizer_prewarmRequest___block_invoke(uint64_t a1)
{
  v2 = [[SVXSpeechSynthesisContext alloc] initWithOperationType:1 request:*(a1 + 32) languageCode:0 voiceName:0 gender:0 audioSessionID:0 preparation:0 audioChunkHandler:0 finalization:0 taskTracker:0 analyticsContext:0];
  [*(a1 + 40) _prewarmWithContext:v2];
}

- (void)dealloc
{
  [(SVXDefaultNotificationCenterRegistrar *)self->_notificationCenterRegistrar removeObserver:self];
  v3.receiver = self;
  v3.super_class = SVXSpeechSynthesizer;
  [(SVXSpeechSynthesizer *)&v3 dealloc];
}

@end