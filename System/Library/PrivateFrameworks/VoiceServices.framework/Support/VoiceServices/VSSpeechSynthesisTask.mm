@interface VSSpeechSynthesisTask
- (BOOL)isSpeaking;
- (VSSpeechSynthesisTask)initWithRequest:(id)request;
- (void)main;
- (void)reportFinish;
- (void)reportInstrumentMetrics;
- (void)reportSpeechStart;
- (void)reportTimingInfo;
- (void)setObserverForWordTimings:(id)timings;
- (void)setSpeakTask:(id)task;
- (void)synthesize;
@end

@implementation VSSpeechSynthesisTask

- (void)reportFinish
{
  v37 = *MEMORY[0x277D85DE8];
  speakTask = [(VSSpeechSynthesisTask *)self speakTask];
  delegate = [speakTask delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    speakTask2 = [(VSSpeechSynthesisTask *)self speakTask];
    delegate2 = [speakTask2 delegate];
    request = [(VSSpeechSpeakTask *)self request];
    isCancelled = [(VSSpeechSynthesisTask *)self isCancelled];
    phonemes = [(VSSpeechSpeakTask *)self phonemes];
    v11 = [phonemes componentsJoinedByString:@" "];
    error = [(VSSpeechSpeakTask *)self error];
    [delegate2 speechRequest:request didStopWithSuccess:isCancelled ^ 1u phonemesSpoken:v11 error:error];

    v13 = VSGetLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      speakTask3 = [(VSSpeechSynthesisTask *)self speakTask];
      instrumentMetrics = [speakTask3 instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      error2 = [(VSSpeechSpeakTask *)self error];
      v33 = 134218242;
      v34 = requestCreatedTimestamp;
      v35 = 2112;
      v36 = error2;
      _os_log_debug_impl(&dword_2727E4000, v13, OS_LOG_TYPE_DEBUG, "Task %llu reported finish, error: %@", &v33, 0x16u);
    }
  }

  delegate3 = [(VSSpeechSpeakTask *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = VSGetLogDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      requestCreatedTimestamp2 = [instrumentMetrics2 requestCreatedTimestamp];
      instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v33 = 134218242;
      v34 = requestCreatedTimestamp2;
      v35 = 2112;
      v36 = instrumentMetrics3;
      _os_log_impl(&dword_2727E4000, v16, OS_LOG_TYPE_DEFAULT, "Device EagerTask %llu: Instrument metric: %@", &v33, 0x16u);
    }

    delegate4 = [(VSSpeechSpeakTask *)self delegate];
    request2 = [(VSSpeechSpeakTask *)self request];
    instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    error3 = [(VSSpeechSpeakTask *)self error];
    [delegate4 synthesisRequest:request2 didFinishWithInstrumentMetrics:instrumentMetrics4 error:error3];

    v24 = VSGetLogDefault();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      requestCreatedTimestamp3 = [instrumentMetrics5 requestCreatedTimestamp];
      error4 = [(VSSpeechSpeakTask *)self error];
      v33 = 134218242;
      v34 = requestCreatedTimestamp3;
      v35 = 2112;
      v36 = error4;
      _os_log_debug_impl(&dword_2727E4000, v24, OS_LOG_TYPE_DEBUG, "Task %llu reported finish, error: %@", &v33, 0x16u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)reportSpeechStart
{
  v18 = *MEMORY[0x277D85DE8];
  instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
  speechBeginTimestamp = [instrumentMetrics speechBeginTimestamp];

  if (!speechBeginTimestamp)
  {
    kdebug_trace();
    v5 = mach_absolute_time();
    instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics2 setSpeechBeginTimestamp:v5];

    speakTask = [(VSSpeechSynthesisTask *)self speakTask];
    delegate = [speakTask delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      speakTask2 = [(VSSpeechSynthesisTask *)self speakTask];
      delegate2 = [speakTask2 delegate];
      request = [(VSSpeechSpeakTask *)self request];
      [delegate2 speechRequestDidStart:request];

      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        v16 = 134217984;
        requestCreatedTimestamp = [instrumentMetrics3 requestCreatedTimestamp];
        _os_log_debug_impl(&dword_2727E4000, v13, OS_LOG_TYPE_DEBUG, "Task %llu started speaking", &v16, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)reportInstrumentMetrics
{
  v85 = *MEMORY[0x277D85DE8];
  speakTask = [(VSSpeechSynthesisTask *)self speakTask];
  delegate = [speakTask delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
    utterance = [instrumentMetrics utterance];
    speakTask2 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics2 = [speakTask2 instrumentMetrics];
    [instrumentMetrics2 setUtterance:utterance];

    instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    voiceAssetKey = [instrumentMetrics3 voiceAssetKey];
    speakTask3 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics4 = [speakTask3 instrumentMetrics];
    [instrumentMetrics4 setVoiceAssetKey:voiceAssetKey];

    instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    voiceResourceAssetKey = [instrumentMetrics5 voiceResourceAssetKey];
    speakTask4 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics6 = [speakTask4 instrumentMetrics];
    [instrumentMetrics6 setVoiceResourceAssetKey:voiceResourceAssetKey];

    instrumentMetrics7 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    synthesisBeginTimestamp = [instrumentMetrics7 synthesisBeginTimestamp];
    speakTask5 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics8 = [speakTask5 instrumentMetrics];
    [instrumentMetrics8 setSynthesisBeginTimestamp:synthesisBeginTimestamp];

    instrumentMetrics9 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    synthesisEndTimestamp = [instrumentMetrics9 synthesisEndTimestamp];
    speakTask6 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics10 = [speakTask6 instrumentMetrics];
    [instrumentMetrics10 setSynthesisEndTimestamp:synthesisEndTimestamp];

    instrumentMetrics11 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    speechBeginTimestamp = [instrumentMetrics11 speechBeginTimestamp];
    speakTask7 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics12 = [speakTask7 instrumentMetrics];
    [instrumentMetrics12 setSpeechBeginTimestamp:speechBeginTimestamp];

    instrumentMetrics13 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    speechEndTimestamp = [instrumentMetrics13 speechEndTimestamp];
    speakTask8 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics14 = [speakTask8 instrumentMetrics];
    [instrumentMetrics14 setSpeechEndTimestamp:speechEndTimestamp];

    instrumentMetrics15 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    audioStartTimestampDiffs = [instrumentMetrics15 audioStartTimestampDiffs];
    speakTask9 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics16 = [speakTask9 instrumentMetrics];
    [instrumentMetrics16 setAudioStartTimestampDiffs:audioStartTimestampDiffs];

    instrumentMetrics17 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics17 audioDuration];
    v40 = v39;
    speakTask10 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics18 = [speakTask10 instrumentMetrics];
    [instrumentMetrics18 setAudioDuration:v40];

    instrumentMetrics19 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    isWarmStart = [instrumentMetrics19 isWarmStart];
    speakTask11 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics20 = [speakTask11 instrumentMetrics];
    [instrumentMetrics20 setIsWarmStart:isWarmStart];

    speakTask12 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics21 = [speakTask12 instrumentMetrics];
    requestCreatedTimestamp = [instrumentMetrics21 requestCreatedTimestamp];
    instrumentMetrics22 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v51 = requestCreatedTimestamp - [instrumentMetrics22 requestCreatedTimestamp];
    speakTask13 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics23 = [speakTask13 instrumentMetrics];
    [instrumentMetrics23 setEagerRequestCreatedTimestampDiffs:v51];

    instrumentMetrics24 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    promptCount = [instrumentMetrics24 promptCount];
    speakTask14 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics25 = [speakTask14 instrumentMetrics];
    [instrumentMetrics25 setPromptCount:promptCount];

    instrumentMetrics26 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    errorCode = [instrumentMetrics26 errorCode];
    speakTask15 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics27 = [speakTask15 instrumentMetrics];
    [instrumentMetrics27 setErrorCode:errorCode];

    v62 = VSGetLogDefault();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      speakTask16 = [(VSSpeechSynthesisTask *)self speakTask];
      instrumentMetrics28 = [speakTask16 instrumentMetrics];
      requestCreatedTimestamp2 = [instrumentMetrics28 requestCreatedTimestamp];
      speakTask17 = [(VSSpeechSynthesisTask *)self speakTask];
      instrumentMetrics29 = [speakTask17 instrumentMetrics];
      v81 = 134218242;
      v82 = requestCreatedTimestamp2;
      v83 = 2112;
      v84 = instrumentMetrics29;
      _os_log_impl(&dword_2727E4000, v62, OS_LOG_TYPE_DEFAULT, "Device SpeakTask %llu: Instrument metric: %@", &v81, 0x16u);
    }

    speakTask18 = [(VSSpeechSynthesisTask *)self speakTask];
    delegate2 = [speakTask18 delegate];
    speakTask19 = [(VSSpeechSynthesisTask *)self speakTask];
    request = [speakTask19 request];
    speakTask20 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics30 = [speakTask20 instrumentMetrics];
    [delegate2 speechRequest:request didReportInstrumentMetrics:instrumentMetrics30];

    v74 = +[VSDiagnosticService defaultService];
    speakTask21 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics31 = [speakTask21 instrumentMetrics];
    dictionaryMetrics = [instrumentMetrics31 dictionaryMetrics];
    speakTask22 = [(VSSpeechSynthesisTask *)self speakTask];
    instrumentMetrics32 = [speakTask22 instrumentMetrics];
    [v74 dumpInstrumentMetrics:dictionaryMetrics withTimestamp:{objc_msgSend(instrumentMetrics32, "requestCreatedTimestamp")}];
  }

  v80 = *MEMORY[0x277D85DE8];
}

- (void)reportTimingInfo
{
  v25 = *MEMORY[0x277D85DE8];
  delegate = [(VSSpeechSpeakTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(VSSpeechSpeakTask *)self delegate];
    request = [(VSSpeechSpeakTask *)self request];
    timingInfos = [(VSSpeechSpeakTask *)self timingInfos];
    [delegate2 synthesisRequest:request didReceiveTimingInfo:timingInfos];

    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v23 = 134217984;
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      _os_log_debug_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEBUG, "Task %llu reported word time info", &v23, 0xCu);
    }
  }

  speakTask = [(VSSpeechSynthesisTask *)self speakTask];
  delegate3 = [speakTask delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    speakTask2 = [(VSSpeechSynthesisTask *)self speakTask];
    delegate4 = [speakTask2 delegate];
    speakTask3 = [(VSSpeechSynthesisTask *)self speakTask];
    request2 = [speakTask3 request];
    timingInfos2 = [(VSSpeechSpeakTask *)self timingInfos];
    [delegate4 speechRequest:request2 didReceiveTimingInfo:timingInfos2];

    v17 = VSGetLogDefault();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      speakTask4 = [(VSSpeechSynthesisTask *)self speakTask];
      instrumentMetrics2 = [speakTask4 instrumentMetrics];
      requestCreatedTimestamp2 = [instrumentMetrics2 requestCreatedTimestamp];
      v23 = 134217984;
      requestCreatedTimestamp = requestCreatedTimestamp2;
      _os_log_debug_impl(&dword_2727E4000, v17, OS_LOG_TYPE_DEBUG, "Task %llu reported word time info", &v23, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setObserverForWordTimings:(id)timings
{
  timingsCopy = timings;
  speakTask = [(VSSpeechSynthesisTask *)self speakTask];
  delegate = [speakTask delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    objc_initWeak(&location, self);
    playbackService = [(VSSpeechSpeakTask *)self playbackService];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__VSSpeechSynthesisTask_setObserverForWordTimings___block_invoke;
    v9[3] = &unk_279E4B9C0;
    objc_copyWeak(&v10, &location);
    [playbackService setBoundaryTimeObserverForTimingInfos:timingsCopy usingBlock:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __51__VSSpeechSynthesisTask_setObserverForWordTimings___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained speakTask];
    v6 = [v5 delegate];
    v7 = [v4 request];
    v8 = [v10 textRange];
    [v6 speechRequest:v7 didStartWithMark:1 forRange:{v8, v9}];
  }
}

- (void)setSpeakTask:(id)task
{
  taskCopy = task;
  kdebug_trace();
  kdebug_trace();
  speakTask = self->_speakTask;
  self->_speakTask = taskCopy;
}

- (void)synthesize
{
  v31 = *MEMORY[0x277D85DE8];
  [(VSSpeechSpeakTask *)self prepareForSynthesis];
  error = [(VSSpeechSpeakTask *)self error];

  if (!error && ([(VSSpeechSynthesisTask *)self isCancelled]& 1) == 0)
  {
    speakTask = [(VSSpeechSynthesisTask *)self speakTask];

    if (speakTask)
    {
      speakTask2 = [(VSSpeechSynthesisTask *)self speakTask];
      request = [speakTask2 request];
      -[VSSpeechSpeakTask startPlaybackServiceWithAudioSessionID:](self, "startPlaybackServiceWithAudioSessionID:", [request audioSessionID]);
    }

    v7 = mach_absolute_time();
    instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics setSynthesisBeginTimestamp:v7];

    kdebug_trace();
    engine = [(VSSpeechSpeakTask *)self engine];
    request2 = [(VSSpeechSpeakTask *)self request];
    utterance = [request2 utterance];
    request3 = [(VSSpeechSpeakTask *)self request];
    canLogRequestText = [request3 canLogRequestText];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __35__VSSpeechSynthesisTask_synthesize__block_invoke;
    v24[3] = &unk_279E4B460;
    v24[4] = self;
    v14 = [engine synthesizeText:utterance loggable:canLogRequestText callback:v24];

    if (v14)
    {
      [(VSSpeechSpeakTask *)self setError:v14];
    }

    v15 = VSGetLogDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      request4 = [(VSSpeechSpeakTask *)self request];
      utterance2 = [request4 utterance];
      v18 = [utterance2 length];
      streamAudio = [(VSSpeechSpeakTask *)self streamAudio];
      [streamAudio duration];
      v21 = v20;
      error2 = [(VSSpeechSpeakTask *)self error];
      *buf = 134218498;
      v26 = v18;
      v27 = 2048;
      v28 = v21;
      v29 = 2112;
      v30 = error2;
      _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_INFO, "SynthesisTask done synthesize %lu characters, audio duration %f, error %@", buf, 0x20u);
    }

    [(VSSpeechSpeakTask *)self waitUntilAudioFinished];
  }

  v23 = *MEMORY[0x277D85DE8];
}

id __35__VSSpeechSynthesisTask_synthesize__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (v4 == 3)
  {
    kdebug_trace();
    v10 = mach_absolute_time();
    v11 = [*(a1 + 32) instrumentMetrics];
    [v11 setSynthesisEndTimestamp:v10];

    if ([v3 neuralDidFallback])
    {
      v12 = 1;
    }

    else
    {
      v12 = [v3 hasAudioClick];
    }

    [*(a1 + 32) setSynthesisHasIssue:v12];
    v13 = [v3 numOfPromptsTriggered];
    v14 = [*(a1 + 32) instrumentMetrics];
    [v14 setPromptCount:v13];

    v15 = [*(a1 + 32) timingInfos];

    if (!v15)
    {
      v16 = [v3 wordTimingInfos];
      [*(a1 + 32) setTimingInfos:v16];

      v17 = MEMORY[0x277D799B8];
      v18 = [*(a1 + 32) timingInfos];
      v19 = [*(a1 + 32) request];
      v20 = [v19 contextInfo];
      [v17 adjustWordTimingInfo:v18 forContext:v20];
    }

    [*(a1 + 32) reportTimingInfo];
    v21 = [v3 hasAlignmentStall];
    v22 = [*(a1 + 32) instrumentMetrics];
    [v22 setNeuralAlignmentStall:v21];

    v23 = [v3 hasAudioClick];
    v24 = [*(a1 + 32) instrumentMetrics];
    [v24 setNeuralAudioClick:v23];

    v25 = [v3 neuralDidFallback];
    v26 = [*(a1 + 32) instrumentMetrics];
    [v26 setNeuralFallback:v25];
  }

  else if (v4 == 2)
  {
    v5 = [*(a1 + 32) error];
    if (v5)
    {
      goto LABEL_13;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = [v3 mutablePCMData];
    v8 = [*(a1 + 32) voiceBooster];
    v9 = [v8 processData:v7];

    if (v9)
    {
      goto LABEL_5;
    }

    v28 = [*(a1 + 32) streamAudio];
    [v28 appendAudioData:v7 packetCount:0 packetDescriptions:0];

    v29 = [*(a1 + 32) request];
    v30 = [v29 shouldStreamAudioData];

    if (v30)
    {
      v31 = objc_alloc_init(MEMORY[0x277D79920]);
      v32 = [*(a1 + 32) engine];
      v33 = v32;
      if (v32)
      {
        [v32 asbd];
      }

      else
      {
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
      }

      v50[0] = v52;
      v50[1] = v53;
      v51 = v54;
      [v31 setAsbd:v50];

      [v31 setAudioData:v7];
      v34 = [*(a1 + 32) delegate];
      v35 = [*(a1 + 32) request];
      [v34 synthesisRequest:v35 didGenerateAudioChunk:v31];
    }

    v36 = [*(a1 + 32) speakTask];

    if (v36)
    {
      v37 = *(a1 + 32);
      v38 = [v37 speakTask];
      v39 = [v38 request];
      [v37 startPlaybackServiceWithAudioSessionID:{objc_msgSend(v39, "audioSessionID")}];

      v40 = [*(a1 + 32) error];
      if (v40)
      {
        v9 = v40;
LABEL_5:
        v5 = v9;

        objc_autoreleasePoolPop(v6);
        goto LABEL_13;
      }

      v41 = [*(a1 + 32) playbackService];
      [v41 enqueue:v7 packetCount:0 packetDescriptions:0];

      v42 = [*(a1 + 32) taskAuxiliaryQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __35__VSSpeechSynthesisTask_synthesize__block_invoke_2;
      block[3] = &unk_279E4BAC8;
      block[4] = *(a1 + 32);
      dispatch_async(v42, block);

      v43 = [*(a1 + 32) timingInfos];
      if (!v43)
      {
        v44 = objc_alloc(MEMORY[0x277CBEA60]);
        v45 = [v3 wordTimingInfos];
        v43 = [v44 initWithArray:v45 copyItems:1];

        v46 = MEMORY[0x277D799B8];
        v47 = [*(a1 + 32) request];
        v48 = [v47 contextInfo];
        [v46 adjustWordTimingInfo:v43 forContext:v48];
      }

      [*(a1 + 32) setObserverForWordTimings:v43];
    }

    objc_autoreleasePoolPop(v6);
  }

  v5 = 0;
LABEL_13:

  return v5;
}

- (void)main
{
  v60[1] = *MEMORY[0x277D85DE8];
  kdebug_trace();
  [(VSSpeechSpeakTask *)self fetchVoiceResource];
  [(VSSpeechSpeakTask *)self fetchVoiceAsset];
  v3 = objc_opt_new();
  request = [(VSSpeechSpeakTask *)self request];
  text = [request text];
  request2 = [(VSSpeechSpeakTask *)self request];
  languageCode = [request2 languageCode];
  request3 = [(VSSpeechSpeakTask *)self request];
  voiceName = [request3 voiceName];
  v10 = [v3 estimatedTTSWordTimingForText:text withLanguage:languageCode voiceName:voiceName];
  [(VSSpeechSpeakTask *)self setTimingInfos:v10];

  v11 = MEMORY[0x277D799B8];
  timingInfos = [(VSSpeechSpeakTask *)self timingInfos];
  request4 = [(VSSpeechSpeakTask *)self request];
  contextInfo = [request4 contextInfo];
  [v11 adjustWordTimingInfo:timingInfos forContext:contextInfo];

  error = [(VSSpeechSpeakTask *)self error];

  if (!error)
  {
    cachingService = [(VSSpeechSpeakTask *)self cachingService];
    [cachingService fetchCacheForTask:self];

    speechCache = [(VSSpeechSpeakTask *)self speechCache];

    if (speechCache)
    {
      [(VSSpeechSynthesisTask *)self reportTimingInfo];
      request5 = [(VSSpeechSpeakTask *)self request];
      shouldStreamAudioData = [request5 shouldStreamAudioData];

      if (shouldStreamAudioData)
      {
        speechCache2 = [(VSSpeechSpeakTask *)self speechCache];
        delegate = [(VSSpeechSpeakTask *)self delegate];
        request6 = [(VSSpeechSpeakTask *)self request];
        audio = [speechCache2 audio];
        [delegate synthesisRequest:request6 didGenerateAudioChunk:audio];
      }

      speakTask = [(VSSpeechSynthesisTask *)self speakTask];

      if (speakTask)
      {
        [(VSSpeechSpeakTask *)self speakCachedAudio];
      }
    }

    else
    {
      [(VSSpeechSynthesisTask *)self synthesize];
      error2 = [(VSSpeechSpeakTask *)self error];

      if (!error2)
      {
        streamAudio = [(VSSpeechSpeakTask *)self streamAudio];
        [streamAudio duration];
        v48 = v47;
        instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
        [instrumentMetrics setAudioDuration:v48];
      }
    }

    instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    speechBeginTimestamp = [instrumentMetrics2 speechBeginTimestamp];

    if (speechBeginTimestamp >= 1)
    {
      v52 = mach_absolute_time();
      instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      [instrumentMetrics3 setSpeechEndTimestamp:v52];

      playbackService = [(VSSpeechSpeakTask *)self playbackService];
      LODWORD(instrumentMetrics3) = [playbackService discontinuedDuringPlayback];

      if (instrumentMetrics3)
      {
        instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        [instrumentMetrics4 setErrorCode:452];
      }
    }
  }

  [(VSSpeechSynthesisTask *)self setReadyForEagerTask:0];
  if ([(VSSpeechSynthesisTask *)self isCancelled])
  {
    v16 = MEMORY[0x277CCA9B8];
    v59 = *MEMORY[0x277CCA460];
    v60[0] = @"Synthesis is cancelled/interrupted.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    v18 = [v16 errorWithDomain:@"VoiceServicesErrorDomain" code:400 userInfo:v17];
    [(VSSpeechSpeakTask *)self setError:v18];
  }

  error3 = [(VSSpeechSpeakTask *)self error];

  if (!error3)
  {
    [(VSSpeechSynthesisTask *)self reportInstrumentMetrics];
  }

  error4 = [(VSSpeechSpeakTask *)self error];
  if (!error4)
  {
    speakTask2 = [(VSSpeechSynthesisTask *)self speakTask];

    if (!speakTask2)
    {
      goto LABEL_10;
    }

    kdebug_trace();
    error4 = +[VSDiagnosticService defaultService];
    streamAudio2 = [(VSSpeechSpeakTask *)self streamAudio];
    request7 = [(VSSpeechSpeakTask *)self request];
    [error4 dumpStreamAudio:streamAudio2 forRequest:request7];
  }

LABEL_10:
  error5 = [(VSSpeechSpeakTask *)self error];

  if (!error5)
  {
    request8 = [(VSSpeechSpeakTask *)self request];
    outputPath = [request8 outputPath];
    path = [outputPath path];

    if (path)
    {
      streamAudio3 = [(VSSpeechSpeakTask *)self streamAudio];
      v29 = [streamAudio3 writeWaveToFilePath:path];

      if ((v29 & 1) == 0)
      {
        v30 = MEMORY[0x277CCA9B8];
        v57 = *MEMORY[0x277CCA460];
        v58 = @"writeWaveToFilePath failed.";
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v32 = [v30 errorWithDomain:@"VoiceServicesErrorDomain" code:501 userInfo:v31];
        [(VSSpeechSpeakTask *)self setError:v32];
      }
    }

    if (([(VSSpeechSynthesisTask *)self isCancelled]& 1) != 0)
    {
      goto LABEL_19;
    }

    request9 = [(VSSpeechSpeakTask *)self request];
    if ([request9 shouldCache])
    {
      speechCache3 = [(VSSpeechSpeakTask *)self speechCache];
      if (!speechCache3)
      {
        synthesisHasIssue = [(VSSpeechSpeakTask *)self synthesisHasIssue];

        if (!synthesisHasIssue)
        {
          [(VSSpeechSpeakTask *)self enqueueCache];
        }

        goto LABEL_19;
      }
    }

LABEL_19:
  }

  [(VSSpeechSynthesisTask *)self reportFinish];
  [(VSSpeechSpeakTask *)self logFinish];
  kdebug_trace();
  v35 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSpeaking
{
  speakTask = [(VSSpeechSynthesisTask *)self speakTask];

  return speakTask != 0;
}

- (VSSpeechSynthesisTask)initWithRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = VSSpeechSynthesisTask;
  result = [(VSSpeechSpeakTask *)&v4 initWithRequest:request];
  if (result)
  {
    result->_readyForEagerTask = 1;
  }

  return result;
}

@end