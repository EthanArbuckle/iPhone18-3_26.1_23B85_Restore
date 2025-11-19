@interface SVXSpeechSynthesizer
- (BOOL)_continueContext:(id)a3 error:(id *)a4;
- (BOOL)_isTTSPlaybackDisabled;
- (BOOL)_startPresynthesizedAudioRequestForContext:(id)a3 error:(id *)a4;
- (BOOL)_startSpeechRequestForContext:(id)a3 error:(id *)a4;
- (SVXSpeechSynthesizer)initWithModule:(id)a3;
- (SVXSpeechSynthesizer)initWithModule:(id)a3 speechSynthesisUtils:(id)a4 sessionUtils:(id)a5 voiceGenderConverter:(id)a6 announcer:(id)a7 configurationManager:(id)a8 audioStreamingAnnouncer:(id)a9 ttsSession:(id)a10 speechSynthesisConfigurer:(id)a11 speechRequestConfigurer:(id)a12 voiceConfigurer:(id)a13 notificationCenterRegistrar:(id)a14 speakableUtteranceParserProvider:(id)a15 localizationUtils:(id)a16 speechInstrumentationUtilities:(id)a17 metricsContextFactory:(id)a18;
- (unint64_t)_numberOfContexts;
- (void)_cancelPendingContextsAtIndexes:(id)a3;
- (void)_cancelPendingContextsWithOperationType:(int64_t)a3;
- (void)_cancelPendingSpeakingContextWithRequest:(id)a3;
- (void)_cancelPendingSpeakingContextsWithPriorityBelow:(int64_t)a3;
- (void)_configureWithConfiguration:(id)a3;
- (void)_duckTTSVolumeTo:(float)a3 rampTime:(double)a4 completion:(id)a5;
- (void)_enqueueContext:(id)a3;
- (void)_finalizeContext:(id)a3 withResultType:(int64_t)a4 utterance:(id)a5 error:(id)a6;
- (void)_handleDidFinishPresynthesizedAudioRequest:(id)a3 instrumentMetrics:(id)a4 error:(id)a5;
- (void)_handleDidFinishSpeakingWithSpeechRequest:(id)a3 instrumentMetrics:(id)a4;
- (void)_handleDidFinishSpeakingWithSpeechRequest:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)_handleDidFinishSynthesizingForSpeechRequest:(id)a3 instrumentMetrics:(id)a4 error:(id)a5;
- (void)_handleDidGenerateAudioChunkData:(id)a3 forSpeechRequest:(id)a4;
- (void)_handleDidReceiveSpeechWordTimingInfoArray:(id)a3 forSpeechRequest:(id)a4;
- (void)_handleDidStartPresynthesizedAudioRequest:(id)a3 timestamp:(unint64_t)a4;
- (void)_handleDidStartSpeakingWithSpeechRequest:(id)a3 timestamp:(unint64_t)a4;
- (void)_handleDidStopPresynthesizedAudioRequest:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)_postcool;
- (void)_prewarm;
- (void)_prewarmWithContext:(id)a3;
- (void)_processPendingContexts;
- (void)_startContext:(id)a3;
- (void)_stopCurrentSpeakingContextWithInterruptionBehavior:(int64_t)a3;
- (void)_stopCurrentSpeakingContextWithRequest:(id)a3 withInterruptionBehavior:(int64_t)a4;
- (void)addListener:(id)a3;
- (void)cancelPendingRequests;
- (void)cancelRequest:(id)a3;
- (void)dealloc;
- (void)didFinishPresynthesizedAudioRequest:(id)a3 withInstrumentMetrics:(id)a4 error:(id)a5;
- (void)didFinishSpeakingRequest:(id)a3 successfully:(BOOL)a4 phonemesSpoken:(id)a5 withError:(id)a6;
- (void)didFinishSpeakingRequest:(id)a3 withInstrumentMetrics:(id)a4;
- (void)didFinishSynthesisRequest:(id)a3 withInstrumentMetrics:(id)a4 error:(id)a5;
- (void)didStartPresynthesizedAudioRequest:(id)a3;
- (void)didStartSpeakingRequest:(id)a3;
- (void)didStopPresynthesizedAudioRequest:(id)a3 atEnd:(BOOL)a4 error:(id)a5;
- (void)duckTTSVolumeTo:(float)a3 rampTime:(double)a4 completion:(id)a5;
- (void)enqueueRequest:(id)a3 languageCode:(id)a4 voiceName:(id)a5 gender:(int64_t)a6 audioSessionID:(unsigned int)a7 preparation:(id)a8 finalization:(id)a9 taskTracker:(id)a10 analyticsContext:(id)a11;
- (void)languageCodeChanged:(id)a3;
- (void)outputVoiceChanged:(id)a3;
- (void)postcool;
- (void)prewarm;
- (void)prewarmRequest:(id)a3;
- (void)removeListener:(id)a3;
- (void)startWithModuleInstanceProvider:(id)a3 platformDependencies:(id)a4;
- (void)stopCurrentRequestWithInterruptionBehavior:(int64_t)a3;
- (void)stopRequest:(id)a3 withInterruptionBehavior:(int64_t)a4;
- (void)stopWithModuleInstanceProvider:(id)a3;
- (void)synthesizeRequest:(id)a3 audioChunkHandler:(id)a4 taskTracker:(id)a5 analyticsContext:(id)a6 completion:(id)a7;
- (void)updateWithConfiguration:(id)a3;
- (void)withRequest:(id)a3 didGenerateAudioChunk:(id)a4;
- (void)withRequest:(id)a3 didReceiveTimingInfo:(id)a4;
@end

@implementation SVXSpeechSynthesizer

- (BOOL)_isTTSPlaybackDisabled
{
  v2 = *MEMORY[0x277CEF598];
  v3 = _AFPreferencesValueForKey();
  LOBYTE(v2) = _AFPreferencesBoolFromValueWithDefault();

  return v2;
}

- (void)_duckTTSVolumeTo:(float)a3 rampTime:(double)a4 completion:(id)a5
{
  v8 = a5;
  ttsSession = self->_ttsSession;
  if (ttsSession)
  {
    *&v9 = a3;
    [(SiriTTSDaemonSession *)ttsSession adjustVolume:v8 rampTime:v9 didFinish:a4];
  }

  else if (v8)
  {
    v13 = v8;
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = [v11 initWithDomain:*MEMORY[0x277CEF588] code:6 userInfo:0];
    v13[2](v13, v12);
  }

  MEMORY[0x2821F96F8]();
}

- (void)duckTTSVolumeTo:(float)a3 rampTime:(double)a4 completion:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__SVXSpeechSynthesizer_duckTTSVolumeTo_rampTime_completion___block_invoke;
  v11[3] = &unk_279C680E0;
  v12 = v8;
  v9 = v8;
  *&v10 = a3;
  [(SVXSpeechSynthesizer *)self _duckTTSVolumeTo:v11 rampTime:v10 completion:a4];
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

- (void)_finalizeContext:(id)a3 withResultType:(int64_t)a4 utterance:(id)a5 error:(id)a6
{
  v97 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x277CEF098];
  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    if (a4 > 4)
    {
      v16 = @"(unknown)";
    }

    else
    {
      v16 = off_279C678A8[a4];
    }

    v17 = v16;
    *buf = 136316162;
    v88 = "[SVXSpeechSynthesizer _finalizeContext:withResultType:utterance:error:]";
    v89 = 2112;
    v90 = v10;
    v91 = 2112;
    v92 = v17;
    v93 = 2112;
    v94 = v11;
    v95 = 2112;
    v96 = v12;
    _os_log_impl(&dword_2695B9000, v15, OS_LOG_TYPE_INFO, "%s context = %@, resultType = %@, utterance = %@, error = %@", buf, 0x34u);
  }

  if (v10)
  {
    v18 = [(SVXSpeechSynthesizer *)self _numberOfContexts];
    currentSpeakingContext = self->_currentSpeakingContext;
    if (currentSpeakingContext == v10)
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

    [(NSMutableArray *)self->_pendingContexts removeObject:v10];
    [(NSMutableSet *)self->_synthesizingContexts removeObject:v10];
    v22 = [(SVXSpeechSynthesisContext *)v10 speechWordTimingInfoArray];
    v76 = v22;
    if (v22)
    {
      v23 = v22;
      v66 = a4;
      v68 = v12;
      v70 = v11;
      v73 = v18;
      v78 = v10;
      v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v22, "count")}];
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
            v32 = [v30 textRange];
            v34 = v33;
            [v30 startTime];
            v35 = [(SVXSpeechSynthesisWordTiming *)v31 initWithRange:v32 timeInterval:v34];
            [v24 addObject:v35];
          }

          v27 = [v25 countByEnumeratingWithState:&v81 objects:v86 count:16];
        }

        while (v27);
      }

      v10 = v78;
      v12 = v68;
      v11 = v70;
      v13 = MEMORY[0x277CEF098];
      v18 = v73;
      a4 = v66;
    }

    else
    {
      v24 = 0;
    }

    v36 = [[SVXSpeechSynthesisUtteranceInfo alloc] initWithUtterance:v11 wordTimings:v24];
    [(SVXSpeechSynthesisContext *)v10 finalizeWithResultType:a4 utteranceInfo:v36 error:v12];
    v79 = [(SVXSpeechSynthesisContext *)v10 request];
    v77 = [(SVXSpeechSynthesisContext *)v10 taskTracker];
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        v59 = [(SVXModule *)self->_module analytics];
        [(SVXSpeechSynthesisContext *)v10 analyticsContext];
        v61 = v60 = v36;
        [v59 logEventWithType:2705 context:v61];

        v36 = v60;
        [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidInterruptRequest:v79 taskTracker:v77];
      }

      else if (a4 == 4)
      {
        v40 = [(SVXSpeechSynthesisContext *)v10 analyticsContext];
        v41 = AFAnalyticsContextCreateWithError();
        v67 = [(SVXModule *)self->_module analytics];
        v42 = MEMORY[0x277CBEC10];
        v74 = v40;
        if (v40)
        {
          v43 = v40;
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
        [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:{2, v67}];
        v71 = v36;
        v44 = v18;
        v46 = v45 = v11;
        AFAnalyticsContextsMerge();
        v47 = v13;
        v49 = v48 = v12;
        [v66 logEventWithType:2703 context:v49];

        v12 = v48;
        v13 = v47;

        v11 = v45;
        v18 = v44;
        v36 = v71;

        [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidFailRequest:v79 taskTracker:v77 error:v12];
      }

      goto LABEL_40;
    }

    if (a4 != 1)
    {
      if (a4 == 2)
      {
        v37 = [(SVXModule *)self->_module analytics];
        [(SVXSpeechSynthesisContext *)v10 analyticsContext];
        v39 = v38 = v36;
        [v37 logEventWithType:2702 context:v39];

        v36 = v38;
        [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidCancelRequest:v79 taskTracker:v77];
      }

      goto LABEL_40;
    }

    v72 = v36;
    v50 = [(SVXModule *)self->_module analytics];
    v51 = [(SVXSpeechSynthesisContext *)v10 analyticsContext];
    [v50 logEventWithType:2704 context:v51];

    v52 = [(SVXSpeechSynthesisContext *)v10 instrumentMetrics];
    v53 = v52;
    if (v52)
    {
      v75 = v18;
      v54 = [v52 speechBeginTime];
      v55 = [v53 speechEndTime];
      v56 = 0;
      v36 = v72;
      v69 = v54;
      if (!v54)
      {
        v18 = v75;
        goto LABEL_39;
      }

      v18 = v75;
      if (!v55)
      {
LABEL_39:
        [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidFinishRequest:v79 utteranceInfo:v36 record:v56 taskTracker:v77, v66];

LABEL_40:
        v62 = [(SVXSpeechSynthesizer *)self _numberOfContexts];
        v63 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v88 = "[SVXSpeechSynthesizer _finalizeContext:withResultType:utterance:error:]";
          v89 = 2048;
          v90 = v18;
          v91 = 2048;
          v92 = v62;
          _os_log_impl(&dword_2695B9000, v63, OS_LOG_TYPE_INFO, "%s (numberOfContexts: %tu -> %tu)", buf, 0x20u);
        }

        if (v18 && !v62)
        {
          [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidBecomeIdle];
        }

        goto LABEL_46;
      }

      v66 = v55;
      v57 = objc_alloc(MEMORY[0x277CEF4A8]);
      v58 = [v53 utterance];
      v56 = [v57 initWithUtterance:v58 beginTimestamp:v69 endTimestamp:v66];
    }

    else
    {
      v56 = 0;
    }

    v36 = v72;
    goto LABEL_39;
  }

LABEL_46:
  v64 = [(SVXModule *)self->_module performer];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __72__SVXSpeechSynthesizer__finalizeContext_withResultType_utterance_error___block_invoke;
  v80[3] = &unk_279C68FC0;
  v80[4] = self;
  [v64 performBlock:v80 withOptions:0];

  v65 = *MEMORY[0x277D85DE8];
}

- (void)_stopCurrentSpeakingContextWithRequest:(id)a3 withInterruptionBehavior:(int64_t)a4
{
  currentSpeakingContext = self->_currentSpeakingContext;
  v7 = a3;
  v8 = [(SVXSpeechSynthesisContext *)currentSpeakingContext request];
  v9 = [v8 isEqual:v7];

  if (v9)
  {

    [(SVXSpeechSynthesizer *)self _stopCurrentSpeakingContextWithInterruptionBehavior:a4];
  }
}

- (void)_cancelPendingContextsWithOperationType:(int64_t)a3
{
  if (a3)
  {
    pendingContexts = self->_pendingContexts;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__SVXSpeechSynthesizer__cancelPendingContextsWithOperationType___block_invoke;
    v6[3] = &__block_descriptor_40_e42_B32__0__SVXSpeechSynthesisContext_8Q16_B24l;
    v6[4] = a3;
    v5 = [(NSMutableArray *)pendingContexts indexesOfObjectsPassingTest:v6];
    if ([v5 count])
    {
      [(SVXSpeechSynthesizer *)self _cancelPendingContextsAtIndexes:v5];
    }
  }
}

- (void)_cancelPendingSpeakingContextsWithPriorityBelow:(int64_t)a3
{
  if (a3)
  {
    pendingContexts = self->_pendingContexts;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__SVXSpeechSynthesizer__cancelPendingSpeakingContextsWithPriorityBelow___block_invoke;
    v6[3] = &__block_descriptor_40_e42_B32__0__SVXSpeechSynthesisContext_8Q16_B24l;
    v6[4] = a3;
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

- (void)_cancelPendingSpeakingContextWithRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    pendingContexts = self->_pendingContexts;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__SVXSpeechSynthesizer__cancelPendingSpeakingContextWithRequest___block_invoke;
    v8[3] = &unk_279C66BA0;
    v9 = v4;
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

- (void)_stopCurrentSpeakingContextWithInterruptionBehavior:(int64_t)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    currentSpeakingContext = self->_currentSpeakingContext;
    v8 = v6;
    if (a3 > 2)
    {
      v9 = @"(unknown)";
    }

    else
    {
      v9 = off_279C67778[a3];
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
    v12 = [(SVXSpeechSynthesisContext *)v11 presynthesizedAudioRequest];
    v13 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];
    v14 = v13;
    if (v12 | v13)
    {
      if (v13)
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
      if (v12)
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
          v31 = v12;
          _os_log_impl(&dword_2695B9000, v20, OS_LOG_TYPE_INFO, "%s Stopping TTS with presynthesized audio for current request... (ttsSession = %@, audioRequest = %@)", &v26, 0x20u);
        }

        [(SiriTTSDaemonSession *)self->_ttsSession cancelWithRequest:v12];
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
    v23 = [(__CFString *)v16 text];
    [(SVXSpeechSynthesizer *)self _finalizeContext:v22 withResultType:3 utterance:v23 error:0];
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

- (void)_cancelPendingContextsAtIndexes:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v7 = [(SVXSpeechSynthesizer *)self _numberOfContexts];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __56__SVXSpeechSynthesizer__cancelPendingContextsAtIndexes___block_invoke;
    v28[3] = &unk_279C66B50;
    v28[4] = self;
    v8 = MEMORY[0x26D642680](v28);
    v9 = v8;
    if (v4)
    {
      pendingContexts = self->_pendingContexts;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __56__SVXSpeechSynthesizer__cancelPendingContextsAtIndexes___block_invoke_2;
      v26[3] = &unk_279C66B78;
      v27 = v8;
      [(NSMutableArray *)pendingContexts enumerateObjectsAtIndexes:v4 options:0 usingBlock:v26];
      [(NSMutableArray *)self->_pendingContexts removeObjectsAtIndexes:v4];
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

    v17 = [(SVXSpeechSynthesizer *)self _numberOfContexts];
    v18 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "[SVXSpeechSynthesizer _cancelPendingContextsAtIndexes:]";
      v31 = 2048;
      v32 = v7;
      v33 = 2048;
      v34 = v17;
      _os_log_impl(&dword_2695B9000, v18, OS_LOG_TYPE_INFO, "%s (numberOfContexts: %tu -> %tu)", buf, 0x20u);
    }

    if (v7 && !v17)
    {
      [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidBecomeIdle];
    }

    v19 = [(SVXModule *)self->_module performer];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__SVXSpeechSynthesizer__cancelPendingContextsAtIndexes___block_invoke_73;
    v21[3] = &unk_279C68FC0;
    v21[4] = self;
    [v19 performBlock:v21 withOptions:0];
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

- (BOOL)_startSpeechRequestForContext:(id)a3 error:(id *)a4
{
  v103 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[SVXSpeechSynthesizer _startSpeechRequestForContext:error:]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if (a4)
  {
    *a4 = 0;
  }

  v66 = [v6 languageCode];
  if (![v66 length] || (-[SVXSpeechSynthesisUtils createLocaleFromLanguageCode:](self->_speechSynthesisUtils, "createLocaleFromLanguageCode:", v66), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
    v8 = [v9 locale];

    if (!v8)
    {
      speechSynthesisUtils = self->_speechSynthesisUtils;
      v11 = [(SVXModule *)self->_module preferences];
      v8 = [(SVXSpeechSynthesisUtils *)speechSynthesisUtils getLocaleWithAllowsFallback:1 preferences:v11];
    }
  }

  v12 = [v6 gender];
  v67 = [(SVXAFSpeakableUtteranceParserProvider *)self->_speakableUtteranceParserProvider getWithLocale:v8];
  [v67 setHandleTTSCodes:1];
  v65 = [v6 request];
  v13 = [v65 speakableText];
  if (!v13)
  {
    v14 = [v65 localizationKey];
    if (v14)
    {
      v15 = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
      v16 = [v15 outputVoiceInfo];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v19 = self->_speechSynthesisUtils;
        v20 = [(SVXModule *)self->_module preferences];
        v18 = [(SVXSpeechSynthesisUtils *)v19 getOutputVoiceInfoWithAllowsFallback:1 preferences:v20];
      }

      if (v66)
      {
        v21 = v66;
      }

      else
      {
        v21 = [v18 languageCode];
      }

      v22 = v21;
      if (!v12)
      {
        v12 = -[SVXSpeechSynthesisUtils getGenderFromVoiceGender:](self->_speechSynthesisUtils, "getGenderFromVoiceGender:", [v18 gender]);
      }

      v13 = [(SVXLocalizationUtils *)self->_localizationUtils getLocalizedStringWithLanguageCode:v22 gender:v12 key:v14];
    }

    else
    {
      v13 = 0;
    }
  }

  v94 = 0;
  v93 = 0;
  v23 = [v67 parseStringWithFormat:v13 error:&v93 containsPrivacySensitiveContents:&v94];
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
        *&buf[14] = v13;
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

    v32 = ([v65 options] & 1) == 0;
    v33 = v94;
    objc_initWeak(&location, self);
    v34 = [v6 operationType];
    v35 = v32 | v33;
    if (v34 == 1)
    {
      speechSynthesisConfigurer = self->_speechSynthesisConfigurer;
      v51 = [(SVXModule *)self->_module preferences];
      v52 = [(SVXSpeechSynthesisConfigurer *)speechSynthesisConfigurer synthesisRequestForContext:v6 preferences:v51];

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

      [v6 setSynthesisRequest:v56];

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
      if (v34 != 2)
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
        if (a4 && v25)
        {
          v60 = v25;
          v28 = 0;
          *a4 = v25;
        }

        goto LABEL_55;
      }

      speechRequestConfigurer = self->_speechRequestConfigurer;
      v37 = [(SVXModule *)self->_module preferences];
      v38 = [(SVXSpeechRequestConfigurer *)speechRequestConfigurer speechRequestForContext:v6 preferences:v37];

      v39 = [v6 taskTracker];
      v40 = [v39 sessionUUID];
      [v38 setSiriRequestId:v40];

      v41 = objc_alloc(MEMORY[0x277CCAD78]);
      v42 = [v6 taskTracker];
      v43 = [v42 aceId];
      v63 = [v41 initWithUUIDString:v43];

      [v38 setSiriAceViewId:v63];
      [v38 setText:v23];
      [v38 setPrivacySensitive:v35 & 1];
      if (([v65 options] & 2) != 0)
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

      [v6 setSpeechRequest:{v38, v63}];
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
    *&buf[14] = v13;
    *&buf[22] = 2114;
    v101 = v67;
    LOWORD(v102) = 2114;
    *(&v102 + 2) = v25;
    _os_log_error_impl(&dword_2695B9000, v26, OS_LOG_TYPE_ERROR, "%s Speakable utterance parser failed to parse speakable text. (speakableText = %{public}@, speakableUtteranceParser = %{public}@, error = %{public}@)", buf, 0x2Au);
    if (a4)
    {
      goto LABEL_25;
    }

LABEL_43:
    v28 = 0;
    goto LABEL_56;
  }

  if (!a4)
  {
    goto LABEL_43;
  }

LABEL_25:
  v27 = v25;
  v28 = 0;
  *a4 = v25;
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

- (BOOL)_startPresynthesizedAudioRequestForContext:(id)a3 error:(id *)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
    *v68 = 2112;
    *&v68[2] = v5;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if (a4)
  {
    *a4 = 0;
  }

  v56 = [v5 request];
  v7 = [v56 presynthesizedAudio];
  v55 = [v56 streamID];
  if (v7)
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
      *v68 = 2112;
      *&v68[2] = v7;
      _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s presynthesizedAudio = %@", buf, 0x16u);
    }

    v9 = objc_alloc_init(MEMORY[0x277D613D0]);
    v10 = [v7 data];
    [v9 setAudioData:v10];

    v11 = [v7 decoderASBD];
    [v11 sampleRate];
    *buf = v12;
    *&buf[8] = [v11 formatID];
    *v68 = [v11 formatFlags];
    *&v68[4] = [v11 bytesPerPacket];
    *&v68[8] = [v11 framesPerPacket];
    LODWORD(v69) = [v11 bytesPerFrame];
    HIDWORD(v69) = [v11 channelsPerFrame];
    v70[0] = [v11 bitsPerChannel];
    v13 = [v11 reserved];

    v70[1] = v13;
    [v9 setAsbd:buf];

    v14 = [objc_alloc(MEMORY[0x277D613E8]) initWithAudio:v9];
  }

  else
  {
    if (v55)
    {
      v16 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
        *v68 = 2112;
        *&v68[2] = v55;
        _os_log_impl(&dword_2695B9000, v16, OS_LOG_TYPE_INFO, "%s streamID = %@", buf, 0x16u);
      }

      v14 = 0;
LABEL_16:
      v17 = [v5 operationType];
      v18 = v7 != 0;
      if (!v55)
      {
        v18 = 1;
      }

      if (!v18 && v17 == 2)
      {
        v19 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
          *v68 = 2112;
          *&v68[2] = v55;
          _os_log_error_impl(&dword_2695B9000, v19, OS_LOG_TYPE_ERROR, "%s operationType is speaking but presynthesizedAudio is nil for streamID:(%@). Updated to synthesizing.", buf, 0x16u);
        }

        goto LABEL_22;
      }

      if (v14 && v17 == 2)
      {
        v31 = [v5 audioSessionID];
        if (!v31)
        {
          v32 = [v5 audioSessionAssertion];
          v31 = [v32 audioSessionID];
          if (!v31)
          {
            v33 = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
            v31 = [v33 audioSessionID];
          }
        }

        v34 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "[SVXSpeechSynthesizer _startPresynthesizedAudioRequestForContext:error:]";
          *v68 = 2048;
          *&v68[2] = v31;
          _os_log_impl(&dword_2695B9000, v34, OS_LOG_TYPE_INFO, "%s audioSessionID = %lu", buf, 0x16u);
        }

        [v14 setAudioSessionId:v31];
      }

      else if (v17 != 2)
      {
        if (v17 != 1)
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
            if (a4)
            {
              v50 = v29;
              v15 = 0;
              *a4 = v29;
            }

            else
            {
              v15 = 0;
            }

            goto LABEL_64;
          }

LABEL_62:
          [v5 setPresynthesizedAudioRequest:v14];
          v29 = 0;
          v15 = 1;
LABEL_64:

          goto LABEL_65;
        }

LABEL_22:
        v20 = [v5 request];
        v21 = [v20 speakableText];

        if ([v21 length])
        {
          v53 = [v5 languageCode];
          if (![v53 length] || (-[SVXSpeechSynthesisUtils createLocaleFromLanguageCode:](self->_speechSynthesisUtils, "createLocaleFromLanguageCode:", v53), (v22 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v23 = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
            v22 = [v23 locale];

            if (!v22)
            {
              speechSynthesisUtils = self->_speechSynthesisUtils;
              v25 = [(SVXModule *)self->_module preferences];
              v22 = [(SVXSpeechSynthesisUtils *)speechSynthesisUtils getLocaleWithAllowsFallback:1 preferences:v25];
            }
          }

          v26 = [(SVXAFSpeakableUtteranceParserProvider *)self->_speakableUtteranceParserProvider getWithLocale:v22];
          [v26 setHandleTTSCodes:1];
          v66 = 0;
          v27 = [v26 parseStringWithFormat:v21 error:&v66];
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
              *&v68[2] = v21;
              *&v68[10] = 2114;
              v69 = v26;
              LOWORD(v70[0]) = 2114;
              *(v70 + 2) = v29;
              _os_log_error_impl(&dword_2695B9000, v30, OS_LOG_TYPE_ERROR, "%s Speakable utterance parser failed to parse speakable text. (speakableText = %{public}@, speakableUtteranceParser = %{public}@, error = %{public}@)", buf, 0x2Au);
            }
          }

          else if ([v27 length] && objc_msgSend(v55, "length"))
          {
            v47 = [objc_alloc(MEMORY[0x277D61410]) initWithText:v27 identifier:v55];
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

      v38 = [v5 taskTracker];
      v39 = [v38 sessionUUID];
      [v14 setSiriRequestId:v39];

      v40 = objc_alloc(MEMORY[0x277CCAD78]);
      v41 = [v5 taskTracker];
      v42 = [v41 aceId];
      v43 = [v40 initWithUUIDString:v42];

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

  if (v14 | v55)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SVXSpeechSynthesisErrorDomain" code:1 userInfo:0];
    *a4 = v15 = 0;
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

- (BOOL)_continueContext:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[SVXSpeechSynthesizer _continueContext:error:]";
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (v6)
  {
    v9 = [v6 operationType];
    if (v9 == 2)
    {
      if ([v6 handledPresynthesizedAudioRequest])
      {
        v10 = 0;
      }

      else
      {
        v12 = 1;
        [v6 setHandledPresynthesizedAudioRequest:1];
        v24 = 0;
        v16 = [(SVXSpeechSynthesizer *)self _startPresynthesizedAudioRequestForContext:v6 error:&v24];
        v10 = v24;
        if (v16)
        {
          goto LABEL_32;
        }
      }

      if (([v6 handledSpeechRequest] & 1) == 0)
      {
        v12 = 1;
        [v6 setHandledSpeechRequest:1];
        v23 = v10;
        v14 = [(SVXSpeechSynthesizer *)self _startSpeechRequestForContext:v6 error:&v23];
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

    else if (v9 == 1)
    {
      if ([v6 handledPresynthesizedAudioRequest])
      {
        v10 = 0;
      }

      else
      {
        [v6 setHandledPresynthesizedAudioRequest:1];
        v26 = 0;
        v13 = [(SVXSpeechSynthesizer *)self _startPresynthesizedAudioRequestForContext:v6 error:&v26];
        v10 = v26;
        if (v13)
        {
LABEL_31:
          v12 = 0;
          goto LABEL_32;
        }
      }

      if (([v6 handledSpeechRequest] & 1) == 0)
      {
        v12 = 1;
        [v6 setHandledSpeechRequest:1];
        v25 = v10;
        v14 = [(SVXSpeechSynthesizer *)self _startSpeechRequestForContext:v6 error:&v25];
        v15 = v25;
        goto LABEL_22;
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SVXSpeechSynthesisErrorDomain" code:3 userInfo:0];
    }

LABEL_23:
    if (a4)
    {
      v18 = v10;
      *a4 = v10;
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
        v30 = v6;
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
        v30 = v6;
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

- (void)_startContext:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CEF098];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v34 = "[SVXSpeechSynthesizer _startContext:]";
    v35 = 2112;
    v36 = v5;
    _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if (v5)
  {
    [(SVXSpeechSynthesisContext *)v5 prepare];
    v8 = [(SVXSpeechSynthesisContext *)v5 request];
    announcer = self->_announcer;
    v10 = [(SVXSpeechSynthesisContext *)v5 taskTracker];
    [(SVXSpeechSynthesisAnnouncer *)announcer speechSynthesizerWillStartRequest:v8 taskTracker:v10];

    v11 = [(SVXSpeechSynthesisContext *)v5 operationType];
    if (v11 == 2)
    {
      if ([(SVXSpeechSynthesizer *)self _isTTSPlaybackDisabled])
      {
        v20 = *MEMORY[0x277CEF0A0];
        if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v34 = "[SVXSpeechSynthesizer _startContext:]";
          v35 = 2112;
          v36 = v5;
          _os_log_impl(&dword_2695B9000, v20, OS_LOG_TYPE_DEFAULT, "%s TTS is disabled. Cancel speaking context %@.", buf, 0x16u);
        }

        [(SVXSpeechSynthesizer *)self _finalizeContext:v5 withResultType:2 utterance:0 error:0];
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

        v24 = [(SVXSpeechSynthesisContext *)currentSpeakingContext speechRequest];
        v25 = [v24 text];

        [(SVXSpeechSynthesizer *)self _finalizeContext:self->_currentSpeakingContext withResultType:3 utterance:v25 error:0];
      }

      if ([(SVXSpeechSynthesisUtils *)self->_speechSynthesisUtils requestHasSpeakableContents:v8])
      {
        v12 = [(SVXSpeechSynthesisContext *)v5 audioSessionID]== 0;
      }

      else
      {
        v12 = 0;
      }

      objc_storeStrong(&self->_currentSpeakingContext, a3);
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
      if (v11 == 1)
      {
        [(NSMutableSet *)self->_synthesizingContexts addObject:v5];
      }

      v12 = 0;
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __38__SVXSpeechSynthesizer__startContext___block_invoke;
    v31[3] = &unk_279C68FE8;
    v31[4] = self;
    v13 = v5;
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

  v5 = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
  v6 = [v5 audioSessionID];

  if (self->_needsPrewarm)
  {
    if (v6)
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
    v29 = self;
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

- (void)_enqueueContext:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v42 = "[SVXSpeechSynthesizer _enqueueContext:]";
    v43 = 2112;
    v44 = v4;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  v7 = [(SVXSpeechSynthesizer *)self _numberOfContexts];
  v8 = [v4 operationType];
  v9 = [v4 request];
  v10 = [v9 priority];
  if (v8 == 2)
  {
    switch(v10)
    {
      case 3:
        [(SVXSpeechSynthesizer *)self _cancelPendingSpeakingContextsWithPriorityBelow:3];
        v15 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
        v16 = [v15 priority];

        if (v16 <= 2)
        {
          [(SVXSpeechSynthesizer *)self _stopCurrentSpeakingContextWithInterruptionBehavior:1];
        }

        break;
      case 2:
        [(SVXSpeechSynthesizer *)self _cancelPendingSpeakingContextsWithPriorityBelow:2];
        break;
      case 1:
        v11 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
        v12 = [v11 priority];

        if (v12 >= 2)
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
          [(SVXSpeechSynthesizer *)self _finalizeContext:v4 withResultType:2 utterance:0 error:0];
          goto LABEL_36;
        }

        v35 = v7;
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
                v24 = [v23 request];
                v25 = [v24 priority];

                if (v25 >= 2)
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
        v7 = v35;
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
  v27 = [v4 taskTracker];
  [(SVXSpeechSynthesisAnnouncer *)announcer speechSynthesizerWillEnqueueRequest:v9 taskTracker:v27];

  [(NSMutableArray *)self->_pendingContexts addObject:v4];
  v28 = [(SVXSpeechSynthesizer *)self _numberOfContexts];
  v29 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v42 = "[SVXSpeechSynthesizer _enqueueContext:]";
    v43 = 2048;
    v44 = v7;
    v45 = 2048;
    v46 = v28;
    _os_log_impl(&dword_2695B9000, v29, OS_LOG_TYPE_INFO, "%s (numberOfContexts: %tu -> %tu)", buf, 0x20u);
  }

  if (!v7 && v28)
  {
    [(SVXSpeechSynthesisAnnouncer *)self->_announcer speechSynthesizerDidBecomeBusy];
  }

  v30 = [(SVXModule *)self->_module analytics];
  v31 = [v4 analyticsContext];
  [v30 logEventWithType:2701 context:v31];

  v32 = [(SVXModule *)self->_module performer];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __40__SVXSpeechSynthesizer__enqueueContext___block_invoke;
  v36[3] = &unk_279C68FC0;
  v36[4] = self;
  [v32 performBlock:v36 withOptions:0];

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

- (void)_handleDidFinishSynthesizingForSpeechRequest:(id)a3 instrumentMetrics:(id)a4 error:(id)a5
{
  v91 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v84 = "[SVXSpeechSynthesizer _handleDidFinishSynthesizingForSpeechRequest:instrumentMetrics:error:]";
    v85 = 2112;
    v86 = v8;
    v87 = 2112;
    v88 = v9;
    v89 = 2112;
    v90 = v10;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s speechRequest = %@, instrumentMetrics = %@, error = %@", buf, 0x2Au);
  }

  synthesizingContexts = self->_synthesizingContexts;
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __93__SVXSpeechSynthesizer__handleDidFinishSynthesizingForSpeechRequest_instrumentMetrics_error___block_invoke;
  v73[3] = &unk_279C66950;
  v61 = v8;
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
    v68 = self;
    v60 = v10;
    while (1)
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v70 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v69 + 1) + 8 * i);
        [v15 setInstrumentMetrics:v9];
        if (v9)
        {
          v67 = [v15 request];
          v16 = [MEMORY[0x277CCAD78] UUID];
          v17 = [v16 UUIDString];

          [(SVXSpeechSynthesisMetricsContextFactory *)self->_metricsContextFactory creationContextFromInstrumentMetrics:v9];
          v66 = v65 = v17;
          v80 = @"id";
          v81 = v17;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
          v19 = [v15 analyticsContext];
          v20 = v19;
          v21 = MEMORY[0x277CBEC10];
          if (v19)
          {
            v21 = v19;
          }

          v22 = v21;

          v23 = [(SVXSpeechSynthesizer *)self _isInternalInstall];
          if (!v23)
          {
            v62 = [(SVXModule *)self->_module preferences];
            v24 = [v62 shouldLogForQA];
            v25 = MEMORY[0x277CBEC10];
            if (!v24)
            {
              goto LABEL_21;
            }
          }

          v78[0] = @"text";
          v26 = [v67 speakableText];
          v27 = v26;
          v28 = v26 ? v26 : &stru_287A1C130;
          v78[1] = @"utterance";
          v79[0] = v28;
          v29 = [v9 utterance];
          v30 = v29;
          v31 = v29 ? v29 : &stru_287A1C130;
          v79[1] = v31;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];

          if (!v23)
          {
LABEL_21:
          }

          v32 = [v9 requestCreatedTime];
          if (v32)
          {
            v33 = v32;
            v34 = [(SVXModule *)self->_module analytics];
            v77[0] = v66;
            v77[1] = v18;
            v77[2] = v22;
            v77[3] = v25;
            v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:4];
            v36 = AFAnalyticsContextsMerge();
            [v34 logEventWithType:1801 machAbsoluteTime:v33 context:v36];

            speechInstrumentationUtilities = v68->_speechInstrumentationUtilities;
            v38 = [(SVXSpeechSynthesisContext *)v68->_currentSpeakingContext taskTracker];
            v39 = [v38 instrumentationContext];
            v40 = speechInstrumentationUtilities;
            self = v68;
            [(SVXSpeechInstrumentationUtilities *)v40 emitTextToSpeechRequestReceived:v39 instrumentMetrics:v9];
          }

          v41 = [v9 synthesisBeginTime];
          if (v41)
          {
            v42 = v41;
            v43 = [(SVXModule *)self->_module analytics];
            v76[0] = v18;
            v76[1] = v22;
            v76[2] = v25;
            v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:3];
            v45 = AFAnalyticsContextsMerge();
            [v43 logEventWithType:1804 machAbsoluteTime:v42 context:v45];

            self = v68;
          }

          v46 = [v9 synthesisEndTime];
          if (v46)
          {
            v47 = v46;
            v48 = [(SVXModule *)self->_module analytics];
            v75[0] = v18;
            v75[1] = v22;
            v75[2] = v25;
            v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:3];
            v50 = AFAnalyticsContextsMerge();
            [v48 logEventWithType:1805 machAbsoluteTime:v47 context:v50];

            self = v68;
          }

          v10 = v60;
        }

        if (v10)
        {
          if ([(SVXSpeechSynthesizer *)self _continueContext:v15 error:0])
          {
            continue;
          }

          v51 = [v61 text];
          v52 = self;
          v53 = v15;
          v54 = 4;
          v55 = v51;
          v56 = v10;
        }

        else
        {
          v51 = [v61 text];
          v52 = self;
          v53 = v15;
          v54 = 1;
          v55 = v51;
          v56 = 0;
        }

        [(SVXSpeechSynthesizer *)v52 _finalizeContext:v53 withResultType:v54 utterance:v55 error:v56];
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

- (void)_handleDidGenerateAudioChunkData:(id)a3 forSpeechRequest:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v24 = "[SVXSpeechSynthesizer _handleDidGenerateAudioChunkData:forSpeechRequest:]";
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s speechRequest = %@, audioChunkData = %@", buf, 0x20u);
  }

  v9 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (v9 == v7)
  {
    if ([(SVXSpeechSynthesisContext *)self->_currentSpeakingContext isStreamingSynthesisRequest])
    {
      [(SVXAudioStreamingAnnouncer *)self->_audioStreamingAnnouncer audioStreamDidProvideAudio:v6];
    }

    else
    {
      [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext handleAudioChunkData:v6];
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
        v16 = [v15 speechRequest];

        if (v16 == v7)
        {
          if ([v15 isStreamingSynthesisRequest])
          {
            [(SVXAudioStreamingAnnouncer *)self->_audioStreamingAnnouncer audioStreamDidProvideAudio:v6];
          }

          else
          {
            [v15 handleAudioChunkData:v6];
          }
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidReceiveSpeechWordTimingInfoArray:(id)a3 forSpeechRequest:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v24 = "[SVXSpeechSynthesizer _handleDidReceiveSpeechWordTimingInfoArray:forSpeechRequest:]";
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s speechRequest = %@, speechWordTimingInfoArray = %@", buf, 0x20u);
  }

  v9 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (v9 == v7)
  {
    [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext setSpeechWordTimingInfoArray:v6];
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
        v16 = [v15 speechRequest];

        if (v16 == v7)
        {
          [v15 setSpeechWordTimingInfoArray:v6];
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidFinishPresynthesizedAudioRequest:(id)a3 instrumentMetrics:(id)a4 error:(id)a5
{
  v93 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CEF098];
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v86 = "[SVXSpeechSynthesizer _handleDidFinishPresynthesizedAudioRequest:instrumentMetrics:error:]";
    v87 = 2112;
    v88 = v8;
    v89 = 2112;
    v90 = v9;
    v91 = 2112;
    v92 = v10;
    _os_log_impl(&dword_2695B9000, v12, OS_LOG_TYPE_INFO, "%s presynthesizedAudioRequest = %@, instrumentMetrics = %@, error = %@", buf, 0x2Au);
  }

  v13 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext presynthesizedAudioRequest];

  if (v13 == v8)
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

    [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext setInstrumentMetrics:v9];
    if (v9)
    {
      v73 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
      v16 = [MEMORY[0x277CCAD78] UUID];
      v17 = [v16 UUIDString];

      v74 = [(SVXSpeechSynthesisMetricsContextFactory *)self->_metricsContextFactory creationContextFromInstrumentMetrics:v9];
      v83 = @"id";
      v72 = v17;
      v84 = v17;
      v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      v18 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext analyticsContext];
      v19 = v18;
      v20 = MEMORY[0x277CBEC10];
      if (v18)
      {
        v21 = v18;
      }

      else
      {
        v21 = MEMORY[0x277CBEC10];
      }

      v75 = v21;

      if ([(SVXSpeechSynthesizer *)self _isInternalInstall])
      {
        v81[0] = @"text";
        v22 = [v73 speakableText];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = &stru_287A1C130;
        }

        v81[1] = @"utterance";
        v82[0] = v24;
        v25 = [v9 utterance];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = &stru_287A1C130;
        }

        v82[1] = v27;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
      }

      v28 = [v9 requestCreatedTime];
      if (v28)
      {
        v29 = v28;
        v30 = [(SVXModule *)self->_module analytics];
        v80[0] = v74;
        v80[1] = v76;
        v80[2] = v75;
        v80[3] = v20;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:4];
        v32 = AFAnalyticsContextsMerge();
        [v30 logEventWithType:1801 machAbsoluteTime:v29 context:v32];

        speechInstrumentationUtilities = self->_speechInstrumentationUtilities;
        v34 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        v35 = [v34 instrumentationContext];
        [(SVXSpeechInstrumentationUtilities *)speechInstrumentationUtilities emitTextToSpeechRequestReceived:v35 instrumentMetrics:v9];
      }

      v36 = [v9 speechBeginTime];
      if (v36)
      {
        v37 = v36;
        v38 = [(SVXModule *)self->_module analytics];
        v79[0] = v76;
        v79[1] = v75;
        v79[2] = v20;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:3];
        v40 = AFAnalyticsContextsMerge();
        [v38 logEventWithType:1802 machAbsoluteTime:v37 context:v40];

        v41 = objc_alloc_init(MEMORY[0x277D5AA58]);
        v42 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        v43 = [v42 aceId];
        [(SVXSpeechSynthesisContext *)v41 setAceID:v43];

        v44 = *MEMORY[0x277CEF0F8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v86 = "[SVXSpeechSynthesizer _handleDidFinishPresynthesizedAudioRequest:instrumentMetrics:error:]";
          v87 = 2112;
          v88 = v41;
          _os_log_impl(&dword_2695B9000, v44, OS_LOG_TYPE_INFO, "%s Emit instrumentation: %@", buf, 0x16u);
        }

        v45 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        v46 = [v45 instrumentationContext];
        [v46 emitInstrumentation:v41 machAbsoluteTime:v37];
      }

      v47 = [v9 speechEstimatedOutputBeginTime];
      if (v47 >= 1)
      {
        v48 = v47;
        v49 = [(SVXModule *)self->_module analytics];
        v78[0] = v76;
        v78[1] = v75;
        v78[2] = v20;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:3];
        v51 = AFAnalyticsContextsMerge();
        [v49 logEventWithType:1806 machAbsoluteTime:v48 context:v51];
      }

      v52 = [v9 speechEndTime];
      if (v52)
      {
        v53 = v52;
        v54 = [(SVXModule *)self->_module analytics];
        v77[0] = v76;
        v77[1] = v75;
        v77[2] = v20;
        v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:3];
        v56 = AFAnalyticsContextsMerge();
        [v54 logEventWithType:1803 machAbsoluteTime:v53 context:v56];

        v57 = objc_alloc_init(MEMORY[0x277D5AA60]);
        v58 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        v59 = [v58 aceId];
        [(SVXSpeechSynthesisContext *)v57 setAceID:v59];

        v60 = *MEMORY[0x277CEF0F8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v86 = "[SVXSpeechSynthesizer _handleDidFinishPresynthesizedAudioRequest:instrumentMetrics:error:]";
          v87 = 2112;
          v88 = v57;
          _os_log_impl(&dword_2695B9000, v60, OS_LOG_TYPE_INFO, "%s Emit instrumentation: %@", buf, 0x16u);
        }

        v61 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        v62 = [v61 instrumentationContext];
        [v62 emitInstrumentation:v57 machAbsoluteTime:v53];
      }
    }

    if (!v10)
    {
      v70 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];
      v64 = [v70 text];

      v65 = self->_currentSpeakingContext;
      v66 = self;
      v67 = 1;
      v68 = v64;
      v69 = 0;
      goto LABEL_35;
    }

    if (![(SVXSpeechSynthesizer *)self _continueContext:self->_currentSpeakingContext error:0])
    {
      v63 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];
      v64 = [v63 text];

      v65 = self->_currentSpeakingContext;
      v66 = self;
      v67 = 4;
      v68 = v64;
      v69 = v10;
LABEL_35:
      [(SVXSpeechSynthesizer *)v66 _finalizeContext:v65 withResultType:v67 utterance:v68 error:v69];
    }
  }

  v71 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidStopPresynthesizedAudioRequest:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CEF098];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v16 = 136315906;
    v17 = "[SVXSpeechSynthesizer _handleDidStopPresynthesizedAudioRequest:success:error:]";
    v18 = 2112;
    v19 = v8;
    v20 = 1024;
    v21 = v6;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s presynthesizedAudioRequest = %@, success = %d, error = %@", &v16, 0x26u);
  }

  v12 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext presynthesizedAudioRequest];

  if (v12 == v8)
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

- (void)_handleDidStartPresynthesizedAudioRequest:(id)a3 timestamp:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "[SVXSpeechSynthesizer _handleDidStartPresynthesizedAudioRequest:timestamp:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s presynthesizedAudioRequest = %@", &v19, 0x16u);
  }

  v9 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext presynthesizedAudioRequest];

  if (v9 == v6)
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

    v12 = [(SVXModule *)self->_module analytics];
    v13 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext analyticsContext];
    [v12 logEventWithType:2706 context:v13];

    announcer = self->_announcer;
    v15 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
    v16 = [objc_alloc(MEMORY[0x277CEF4A8]) initWithUtterance:0 beginTimestamp:a4 endTimestamp:0];
    v17 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
    [(SVXSpeechSynthesisAnnouncer *)announcer speechSynthesizerDidStartRequest:v15 record:v16 taskTracker:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidFinishSpeakingWithSpeechRequest:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CEF098];
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v24 = 136315906;
    v25 = "[SVXSpeechSynthesizer _handleDidFinishSpeakingWithSpeechRequest:success:error:]";
    v26 = 2112;
    v27 = v8;
    v28 = 1024;
    v29 = v6;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s speechRequest = %@, success = %d, error = %@", &v24, 0x26u);
  }

  v12 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (v12 == v8)
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
    if (!v9)
    {
      v17 = [(SVXSpeechSynthesisContext *)v8 text];
      v18 = self;
      v19 = v15;
      v20 = 1;
      v21 = v17;
      v22 = 0;
      goto LABEL_10;
    }

    if (![(SVXSpeechSynthesizer *)self _continueContext:self->_currentSpeakingContext error:0])
    {
      v16 = self->_currentSpeakingContext;
      v17 = [(SVXSpeechSynthesisContext *)v8 text];
      v18 = self;
      v19 = v16;
      v20 = 4;
      v21 = v17;
      v22 = v9;
LABEL_10:
      [(SVXSpeechSynthesizer *)v18 _finalizeContext:v19 withResultType:v20 utterance:v21 error:v22];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidFinishSpeakingWithSpeechRequest:(id)a3 instrumentMetrics:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v74 = "[SVXSpeechSynthesizer _handleDidFinishSpeakingWithSpeechRequest:instrumentMetrics:]";
    v75 = 2112;
    v76 = v6;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s speechRequest = %@", buf, 0x16u);
  }

  v9 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (v9 == v6)
  {
    [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext setInstrumentMetrics:v7];
    if (v7)
    {
      v10 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
      v11 = [MEMORY[0x277CCAD78] UUID];
      v12 = [v11 UUIDString];

      v62 = [MEMORY[0x277CBEB38] dictionary];
      [v62 setObject:v12 forKey:@"id"];
      v71 = @"id";
      v72 = v12;
      v61 = v12;
      v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v13 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext analyticsContext];
      v14 = v13;
      v15 = MEMORY[0x277CBEC10];
      if (v13)
      {
        v15 = v13;
      }

      v16 = v15;

      v17 = [(SVXSpeechSynthesizer *)self _isInternalInstall];
      v64 = v10;
      if (v17 || (-[SVXModule preferences](self->_module, "preferences"), v14 = objc_claimAutoreleasedReturnValue(), [v14 shouldLogForQA]))
      {
        v69[0] = @"text";
        v18 = [v10 speakableText];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = &stru_287A1C130;
        }

        v69[1] = @"utterance";
        v70[0] = v20;
        v21 = [v7 utterance];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = &stru_287A1C130;
        }

        v70[1] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];

        v10 = v64;
        if (v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v24 = MEMORY[0x277CBEC10];
      }

LABEL_19:
      v25 = [v7 requestCreatedTime];
      if (v25)
      {
        v26 = v25;
        v27 = [(SVXModule *)self->_module analytics];
        v68[0] = v62;
        v68[1] = v16;
        v68[2] = v24;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
        v29 = AFAnalyticsContextsMerge();
        [v27 logEventWithType:1801 machAbsoluteTime:v26 context:v29];

        speechInstrumentationUtilities = self->_speechInstrumentationUtilities;
        v31 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        v32 = [v31 instrumentationContext];
        [(SVXSpeechInstrumentationUtilities *)speechInstrumentationUtilities emitTextToSpeechRequestReceived:v32 instrumentMetrics:v7];

        v10 = v64;
      }

      v33 = [v7 speechBeginTime];
      if (v33)
      {
        v34 = v33;
        v35 = [(SVXModule *)self->_module analytics];
        v67[0] = v63;
        v67[1] = v16;
        v67[2] = v24;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:3];
        v37 = AFAnalyticsContextsMerge();
        [v35 logEventWithType:1802 machAbsoluteTime:v34 context:v37];

        v38 = objc_alloc_init(MEMORY[0x277D5AA58]);
        v39 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        v40 = [v39 aceId];
        [v38 setAceID:v40];

        v41 = *MEMORY[0x277CEF0F8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v74 = "[SVXSpeechSynthesizer _handleDidFinishSpeakingWithSpeechRequest:instrumentMetrics:]";
          v75 = 2112;
          v76 = v38;
          _os_log_impl(&dword_2695B9000, v41, OS_LOG_TYPE_INFO, "%s Emit instrumentation: %@", buf, 0x16u);
        }

        v42 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        v43 = [v42 instrumentationContext];
        [v43 emitInstrumentation:v38 machAbsoluteTime:v34];

        v10 = v64;
      }

      v44 = [v7 speechEstimatedOutputBeginTime];
      if (v44 >= 1)
      {
        v45 = v44;
        v46 = [(SVXModule *)self->_module analytics];
        v66[0] = v63;
        v66[1] = v16;
        v66[2] = v24;
        v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
        v48 = AFAnalyticsContextsMerge();
        [v46 logEventWithType:1806 machAbsoluteTime:v45 context:v48];

        v10 = v64;
      }

      v49 = [v7 speechEndTime];
      if (v49)
      {
        v50 = v49;
        v51 = [(SVXModule *)self->_module analytics];
        v65[0] = v63;
        v65[1] = v16;
        v65[2] = v24;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];
        v53 = AFAnalyticsContextsMerge();
        [v51 logEventWithType:1803 machAbsoluteTime:v50 context:v53];

        v54 = objc_alloc_init(MEMORY[0x277D5AA60]);
        v55 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        v56 = [v55 aceId];
        [v54 setAceID:v56];

        v57 = *MEMORY[0x277CEF0F8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0F8], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v74 = "[SVXSpeechSynthesizer _handleDidFinishSpeakingWithSpeechRequest:instrumentMetrics:]";
          v75 = 2112;
          v76 = v54;
          _os_log_impl(&dword_2695B9000, v57, OS_LOG_TYPE_INFO, "%s Emit instrumentation: %@", buf, 0x16u);
        }

        v58 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
        v59 = [v58 instrumentationContext];
        [v59 emitInstrumentation:v54 machAbsoluteTime:v50];

        v10 = v64;
      }
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)_handleDidStartSpeakingWithSpeechRequest:(id)a3 timestamp:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v21 = 136315394;
    v22 = "[SVXSpeechSynthesizer _handleDidStartSpeakingWithSpeechRequest:timestamp:]";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s speechRequest = %@", &v21, 0x16u);
  }

  v9 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext speechRequest];

  if (v9 == v6)
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

    v12 = [(SVXModule *)self->_module analytics];
    v13 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext analyticsContext];
    [v12 logEventWithType:2706 context:v13];

    announcer = self->_announcer;
    v15 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext request];
    v16 = objc_alloc(MEMORY[0x277CEF4A8]);
    v17 = [(SVXSpeechSynthesisContext *)v6 text];
    v18 = [v16 initWithUtterance:v17 beginTimestamp:a4 endTimestamp:0];
    v19 = [(SVXSpeechSynthesisContext *)self->_currentSpeakingContext taskTracker];
    [(SVXSpeechSynthesisAnnouncer *)announcer speechSynthesizerDidStartRequest:v15 record:v18 taskTracker:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_configureWithConfiguration:(id)a3
{
  if ([(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager updateConfiguration:a3])
  {
    v4 = [(SVXModule *)self->_module performer];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__SVXSpeechSynthesizer__configureWithConfiguration___block_invoke;
    v5[3] = &unk_279C68FC0;
    v5[4] = self;
    [v4 performBlock:v5 withOptions:0];
  }
}

- (void)_prewarmWithContext:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[SVXSpeechSynthesizer _prewarmWithContext:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2695B9000, v5, OS_LOG_TYPE_INFO, "%s context = %@", &v11, 0x16u);
  }

  voiceConfigurer = self->_voiceConfigurer;
  v7 = [(SVXModule *)self->_module preferences];
  v8 = [(SVXSynthesisVoiceConfigurer *)voiceConfigurer voiceForContext:v4 preferences:v7];

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
  v5 = [(SVXSpeechSynthesisConfigurationStateManager *)self->_configurationManager currentConfiguration];
  v6 = [v5 audioSessionID];

  if (v6)
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

- (void)didFinishSynthesisRequest:(id)a3 withInstrumentMetrics:(id)a4 error:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136316162;
    v23 = "[SVXSpeechSynthesizer didFinishSynthesisRequest:withInstrumentMetrics:error:]";
    v24 = 2112;
    v25 = ttsSession;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, instrumentMetrics = %@, error = %@", buf, 0x34u);
  }

  v13 = [(SVXModule *)self->_module performer];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__SVXSpeechSynthesizer_didFinishSynthesisRequest_withInstrumentMetrics_error___block_invoke;
  v18[3] = &unk_279C68930;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  [v13 performBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)withRequest:(id)a3 didGenerateAudioChunk:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136315906;
    v18 = "[SVXSpeechSynthesizer withRequest:didGenerateAudioChunk:]";
    v19 = 2112;
    v20 = ttsSession;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, audio = %@", buf, 0x2Au);
  }

  v10 = [(SVXModule *)self->_module performer];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__SVXSpeechSynthesizer_withRequest_didGenerateAudioChunk___block_invoke;
  v14[3] = &unk_279C68ED0;
  v14[4] = self;
  v15 = v7;
  v16 = v6;
  v11 = v6;
  v12 = v7;
  [v10 performBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)withRequest:(id)a3 didReceiveTimingInfo:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    v24 = v6;
    v25 = 2048;
    v26 = [v7 count];
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, timingInfo.count = %tu", buf, 0x2Au);
  }

  v11 = [(SVXModule *)self->_module performer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SVXSpeechSynthesizer_withRequest_didReceiveTimingInfo___block_invoke;
  v15[3] = &unk_279C68ED0;
  v16 = v7;
  v17 = self;
  v18 = v6;
  v12 = v6;
  v13 = v7;
  [v11 performBlock:v15];

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

- (void)didFinishPresynthesizedAudioRequest:(id)a3 withInstrumentMetrics:(id)a4 error:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_2695B9000, v11, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, instrumentMetrics = %@, error = %@", buf, 0x34u);
  }

  v13 = [(SVXModule *)self->_module performer];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__SVXSpeechSynthesizer_didFinishPresynthesizedAudioRequest_withInstrumentMetrics_error___block_invoke;
  v18[3] = &unk_279C68930;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  [v13 performBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)didStopPresynthesizedAudioRequest:(id)a3 atEnd:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136316162;
    v21 = "[SVXSpeechSynthesizer didStopPresynthesizedAudioRequest:atEnd:error:]";
    v22 = 2112;
    v23 = ttsSession;
    v24 = 2112;
    v25 = v8;
    v26 = 1024;
    v27 = v6;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, atEnd = %d, error = %@", buf, 0x30u);
  }

  v12 = [(SVXModule *)self->_module performer];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__SVXSpeechSynthesizer_didStopPresynthesizedAudioRequest_atEnd_error___block_invoke;
  v16[3] = &unk_279C69100;
  v16[4] = self;
  v17 = v8;
  v19 = v6;
  v18 = v9;
  v13 = v9;
  v14 = v8;
  [v12 performBlock:v16];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)didStartPresynthesizedAudioRequest:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v19 = v4;
    _os_log_impl(&dword_2695B9000, v6, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@", buf, 0x20u);
  }

  v8 = [(SVXModule *)self->_module performer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SVXSpeechSynthesizer_didStartPresynthesizedAudioRequest___block_invoke;
  v11[3] = &unk_279C68E58;
  v11[4] = self;
  v12 = v4;
  v13 = v5;
  v9 = v4;
  [v8 performBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)didFinishSpeakingRequest:(id)a3 successfully:(BOOL)a4 phonemesSpoken:(id)a5 withError:(id)a6
{
  v7 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
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
    v29 = v9;
    v30 = 1024;
    v31 = v7;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_2695B9000, v14, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@, finishedSpeaking = %d, error = %@", buf, 0x30u);
  }

  v16 = [(SVXModule *)self->_module performer];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__SVXSpeechSynthesizer_didFinishSpeakingRequest_successfully_phonemesSpoken_withError___block_invoke;
  v20[3] = &unk_279C69100;
  v20[4] = self;
  v21 = v9;
  v23 = v7;
  v22 = v10;
  v17 = v10;
  v18 = v9;
  [v16 performBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)didFinishSpeakingRequest:(id)a3 withInstrumentMetrics:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    ttsSession = self->_ttsSession;
    *buf = 136315650;
    v18 = "[SVXSpeechSynthesizer didFinishSpeakingRequest:withInstrumentMetrics:]";
    v19 = 2112;
    v20 = ttsSession;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_2695B9000, v8, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@", buf, 0x20u);
  }

  v10 = [(SVXModule *)self->_module performer];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__SVXSpeechSynthesizer_didFinishSpeakingRequest_withInstrumentMetrics___block_invoke;
  v14[3] = &unk_279C68ED0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  [v10 performBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didStartSpeakingRequest:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v23 = v4;
    _os_log_impl(&dword_2695B9000, v10, OS_LOG_TYPE_INFO, "%s TTS session = %@, request = %@", buf, 0x20u);
  }

  v12 = [(SVXModule *)self->_module performer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__SVXSpeechSynthesizer_didStartSpeakingRequest___block_invoke;
  v15[3] = &unk_279C68E58;
  v15[4] = self;
  v16 = v4;
  v17 = v5;
  v13 = v4;
  [v12 performBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)languageCodeChanged:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[SVXSpeechSynthesizer languageCodeChanged:]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SVXSpeechSynthesizer_languageCodeChanged___block_invoke;
  v7[3] = &unk_279C68FC0;
  v7[4] = self;
  [v5 performBlock:v7];

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

- (void)outputVoiceChanged:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[SVXSpeechSynthesizer outputVoiceChanged:]";
    _os_log_impl(&dword_2695B9000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SVXSpeechSynthesizer_outputVoiceChanged___block_invoke;
  v7[3] = &unk_279C68FC0;
  v7[4] = self;
  [v5 performBlock:v7];

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

- (void)removeListener:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SVXSpeechSynthesizer_removeListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)addListener:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SVXSpeechSynthesizer_addListener___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)updateWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SVXSpeechSynthesizer_updateWithConfiguration___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)postcool
{
  v3 = [(SVXModule *)self->_module performer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__SVXSpeechSynthesizer_postcool__block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)prewarm
{
  v3 = [(SVXModule *)self->_module performer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__SVXSpeechSynthesizer_prewarm__block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)stopWithModuleInstanceProvider:(id)a3
{
  v4 = [(SVXModule *)self->_module performer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SVXSpeechSynthesizer_stopWithModuleInstanceProvider___block_invoke;
  v5[3] = &unk_279C68FC0;
  v5[4] = self;
  [v4 performBlock:v5];
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

- (void)startWithModuleInstanceProvider:(id)a3 platformDependencies:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SVXModule *)self->_module performer];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __77__SVXSpeechSynthesizer_startWithModuleInstanceProvider_platformDependencies___block_invoke;
  v26[3] = &unk_279C68ED0;
  v26[4] = self;
  v9 = v6;
  v27 = v9;
  v10 = v7;
  v28 = v10;
  [v8 performBlock:v26];

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
          v18 = [v16 audioStreamingListener];
          [(SVXAnnouncer *)audioStreamingAnnouncer addListener:v18];
        }

        if ([v16 type] == 7)
        {
          configurationManager = self->_configurationManager;
          v20 = [v16 clientAudioSystemService];
          [(SVXSpeechSynthesisConfigurationStateManager *)configurationManager setClientAudioSystemServicing:v20];
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

- (SVXSpeechSynthesizer)initWithModule:(id)a3 speechSynthesisUtils:(id)a4 sessionUtils:(id)a5 voiceGenderConverter:(id)a6 announcer:(id)a7 configurationManager:(id)a8 audioStreamingAnnouncer:(id)a9 ttsSession:(id)a10 speechSynthesisConfigurer:(id)a11 speechRequestConfigurer:(id)a12 voiceConfigurer:(id)a13 notificationCenterRegistrar:(id)a14 speakableUtteranceParserProvider:(id)a15 localizationUtils:(id)a16 speechInstrumentationUtilities:(id)a17 metricsContextFactory:(id)a18
{
  v54 = a3;
  v53 = a4;
  v52 = a5;
  v51 = a6;
  v50 = a7;
  v49 = a8;
  v48 = a9;
  v47 = a10;
  v46 = a11;
  v45 = a12;
  v44 = a13;
  v43 = a14;
  v42 = a15;
  v41 = a16;
  v40 = a17;
  v39 = a18;
  v55.receiver = self;
  v55.super_class = SVXSpeechSynthesizer;
  v23 = [(SVXSpeechSynthesizer *)&v55 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_speechSynthesisUtils, a4);
    objc_storeStrong(&v24->_sessionUtils, a5);
    objc_storeStrong(&v24->_voiceGenderConverter, a6);
    objc_storeStrong(&v24->_module, a3);
    objc_storeStrong(&v24->_announcer, a7);
    objc_storeStrong(&v24->_configurationManager, a8);
    objc_storeStrong(&v24->_audioStreamingAnnouncer, a9);
    objc_storeStrong(&v24->_ttsSession, a10);
    objc_storeStrong(&v24->_speechSynthesisConfigurer, a11);
    objc_storeStrong(&v24->_speechRequestConfigurer, a12);
    objc_storeStrong(&v24->_voiceConfigurer, a13);
    objc_storeStrong(&v24->_notificationCenterRegistrar, a14);
    objc_storeStrong(&v24->_speakableUtteranceParserProvider, a15);
    objc_storeStrong(&v24->_speechInstrumentationUtilities, a17);
    objc_storeStrong(&v24->_localizationUtils, a16);
    objc_storeStrong(&v24->_metricsContextFactory, a18);
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
    pendingContexts = v24->_pendingContexts;
    v24->_pendingContexts = v25;

    v27 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:16];
    synthesizingContexts = v24->_synthesizingContexts;
    v24->_synthesizingContexts = v27;

    speechSynthesisUtils = v24->_speechSynthesisUtils;
    v30 = [(SVXModule *)v24->_module preferences];
    v31 = [(SVXSpeechSynthesisUtils *)speechSynthesisUtils getLocaleWithAllowsFallback:0 preferences:v30];

    v32 = v24->_speechSynthesisUtils;
    v33 = [(SVXModule *)v24->_module preferences];
    v34 = [(SVXSpeechSynthesisUtils *)v32 getOutputVoiceInfoWithAllowsFallback:0 preferences:v33];

    v35 = [[SVXSpeechSynthesisConfiguration alloc] initWithLocale:v31 outputVoiceInfo:v34 audioSessionID:0];
    [(SVXSpeechSynthesizer *)v24 _configureWithConfiguration:v35];
    [(SVXDefaultNotificationCenterRegistrar *)v24->_notificationCenterRegistrar addObserver:v24 selector:sel_outputVoiceChanged_ name:*MEMORY[0x277CEF058] object:0];
    [(SVXDefaultNotificationCenterRegistrar *)v24->_notificationCenterRegistrar addObserver:v24 selector:sel_languageCodeChanged_ name:*MEMORY[0x277CEF018] object:0];
  }

  return v24;
}

- (SVXSpeechSynthesizer)initWithModule:(id)a3
{
  v23 = a3;
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
  v25 = [(SVXSpeechSynthesizer *)self initWithModule:v23 speechSynthesisUtils:v9 sessionUtils:v4 voiceGenderConverter:v26 announcer:v22 configurationManager:v6 audioStreamingAnnouncer:v21 ttsSession:v19 speechSynthesisConfigurer:v17 speechRequestConfigurer:v16 voiceConfigurer:v15 notificationCenterRegistrar:v7 speakableUtteranceParserProvider:v14 localizationUtils:v10 speechInstrumentationUtilities:v11 metricsContextFactory:v12];

  return v25;
}

- (void)stopCurrentRequestWithInterruptionBehavior:(int64_t)a3
{
  v5 = [(SVXModule *)self->_module performer];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__SVXSpeechSynthesizer_stopCurrentRequestWithInterruptionBehavior___block_invoke;
  v6[3] = &unk_279C68C68;
  v6[4] = self;
  v6[5] = a3;
  [v5 performBlock:v6];
}

- (void)cancelPendingRequests
{
  v3 = [(SVXModule *)self->_module performer];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__SVXSpeechSynthesizer_cancelPendingRequests__block_invoke;
  v4[3] = &unk_279C68FC0;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)stopRequest:(id)a3 withInterruptionBehavior:(int64_t)a4
{
  v6 = a3;
  v7 = [(SVXModule *)self->_module performer];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SVXSpeechSynthesizer_stopRequest_withInterruptionBehavior___block_invoke;
  v9[3] = &unk_279C68E58;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [v7 performBlock:v9];
}

- (void)cancelRequest:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SVXSpeechSynthesizer_cancelRequest___block_invoke;
  v7[3] = &unk_279C68FE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)enqueueRequest:(id)a3 languageCode:(id)a4 voiceName:(id)a5 gender:(int64_t)a6 audioSessionID:(unsigned int)a7 preparation:(id)a8 finalization:(id)a9 taskTracker:(id)a10 analyticsContext:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  if ([(SVXSpeechSynthesizer *)self _useStreamingAudio])
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  v25 = [[SVXSpeechSynthesisContext alloc] initWithOperationType:v24 request:v23 languageCode:v22 voiceName:v21 gender:a6 audioSessionID:a7 preparation:v20 audioChunkHandler:0 finalization:v19 taskTracker:v18 analyticsContext:v17];

  if ([(SVXSpeechSynthesizer *)self _useStreamingAudio])
  {
    [(SVXSpeechSynthesisContext *)v25 setIsStreamingSynthesisRequest:1];
  }

  v26 = [(SVXModule *)self->_module performer];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __138__SVXSpeechSynthesizer_enqueueRequest_languageCode_voiceName_gender_audioSessionID_preparation_finalization_taskTracker_analyticsContext___block_invoke;
  v29[3] = &unk_279C68FE8;
  v29[4] = self;
  v30 = v25;
  v27 = v25;
  [v26 performBlock:v29];
}

- (void)synthesizeRequest:(id)a3 audioChunkHandler:(id)a4 taskTracker:(id)a5 analyticsContext:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[SVXSpeechSynthesisContext alloc] initWithOperationType:1 request:v16 languageCode:0 voiceName:0 gender:0 audioSessionID:0 preparation:0 audioChunkHandler:v15 finalization:v12 taskTracker:v14 analyticsContext:v13];

  v18 = [(SVXModule *)self->_module performer];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __100__SVXSpeechSynthesizer_synthesizeRequest_audioChunkHandler_taskTracker_analyticsContext_completion___block_invoke;
  v20[3] = &unk_279C68FE8;
  v20[4] = self;
  v21 = v17;
  v19 = v17;
  [v18 performBlock:v20];
}

- (void)prewarmRequest:(id)a3
{
  v4 = a3;
  v5 = [(SVXModule *)self->_module performer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SVXSpeechSynthesizer_prewarmRequest___block_invoke;
  v7[3] = &unk_279C68FE8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performBlock:v7];
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