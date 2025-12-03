@interface VSSpeechSpeakTask
- (OS_dispatch_queue)taskAuxiliaryQueue;
- (VSSpeechServiceDelegate)delegate;
- (VSSpeechSpeakTask)initWithRequest:(id)request;
- (id)_fetchVoiceAsset_NoRetry;
- (id)audioPowerProvider;
- (id)taskHash;
- (void)cancel;
- (void)enqueueCache;
- (void)fetchVoiceAsset;
- (void)fetchVoiceResource;
- (void)logFinish;
- (void)main;
- (void)pausePlayback;
- (void)prepareForSynthesis;
- (void)reportFinish;
- (void)reportInstrumentMetrics;
- (void)reportSpeechStart;
- (void)reportTimingInfo;
- (void)resumePlayback;
- (void)setObserverForWordTimings:(id)timings;
- (void)speakCachedAudio;
- (void)synthesizeAndSpeak;
- (void)waitUntilAudioFinished;
@end

@implementation VSSpeechSpeakTask

- (VSSpeechServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)audioPowerProvider
{
  playbackService = [(VSSpeechSpeakTask *)self playbackService];
  audioPowerProvider = [playbackService audioPowerProvider];

  return audioPowerProvider;
}

- (void)reportTimingInfo
{
  v13 = *MEMORY[0x277D85DE8];
  delegate = [(VSSpeechSpeakTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(VSSpeechSpeakTask *)self delegate];
    request = [(VSSpeechSpeakTask *)self request];
    timingInfos = [(VSSpeechSpeakTask *)self timingInfos];
    [delegate2 speechRequest:request didReceiveTimingInfo:timingInfos];

    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v11 = 134217984;
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      _os_log_debug_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEBUG, "Task %llu reported word time info", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setObserverForWordTimings:(id)timings
{
  timingsCopy = timings;
  delegate = [(VSSpeechSpeakTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    playbackService = [(VSSpeechSpeakTask *)self playbackService];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__VSSpeechSpeakTask_setObserverForWordTimings___block_invoke;
    v8[3] = &unk_279E4B9C0;
    objc_copyWeak(&v9, &location);
    [playbackService setBoundaryTimeObserverForTimingInfos:timingsCopy usingBlock:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __47__VSSpeechSpeakTask_setObserverForWordTimings___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    v6 = [v4 request];
    v7 = [v9 textRange];
    [v5 speechRequest:v6 didStartWithMark:1 forRange:{v7, v8}];
  }
}

- (void)reportSpeechStart
{
  v38 = *MEMORY[0x277D85DE8];
  instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
  speechBeginTimestamp = [instrumentMetrics speechBeginTimestamp];

  if (!speechBeginTimestamp)
  {
    kdebug_trace();
    v5 = mach_absolute_time();
    instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics2 setSpeechBeginTimestamp:v5];

    delegate = [(VSSpeechSpeakTask *)self delegate];
    LOBYTE(instrumentMetrics2) = objc_opt_respondsToSelector();

    if (instrumentMetrics2)
    {
      delegate2 = [(VSSpeechSpeakTask *)self delegate];
      request = [(VSSpeechSpeakTask *)self request];
      [delegate2 speechRequestDidStart:request];

      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        *buf = 134217984;
        requestCreatedTimestamp = [instrumentMetrics3 requestCreatedTimestamp];
        _os_log_debug_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEBUG, "Task %llu started speaking", buf, 0xCu);
      }
    }

    siriInstrumentation = [(VSSpeechSpeakTask *)self siriInstrumentation];
    instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    sourceOfTTS = [instrumentMetrics4 sourceOfTTS];
    instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics5 timeToSpeakLatency];
    v14 = v13;
    playbackService = [(VSSpeechSpeakTask *)self playbackService];
    outputRouteInfo = [playbackService outputRouteInfo];
    voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
    voiceData = [voiceSelection voiceData];
    type = [voiceData type];
    voiceSelection2 = [(VSSpeechSpeakTask *)self voiceSelection];
    voiceData2 = [voiceSelection2 voiceData];
    footprint = [voiceData2 footprint];
    voiceSelection3 = [(VSSpeechSpeakTask *)self voiceSelection];
    voiceData3 = [voiceSelection3 voiceData];
    contentVersion = [voiceData3 contentVersion];
    unsignedIntegerValue = [contentVersion unsignedIntegerValue];
    voiceResource = [(VSSpeechSpeakTask *)self voiceResource];
    contentVersion2 = [voiceResource contentVersion];
    unsignedIntegerValue2 = [contentVersion2 unsignedIntegerValue];
    request2 = [(VSSpeechSpeakTask *)self request];
    LOBYTE(v25) = [request2 shouldWhisper];
    [siriInstrumentation instrumentSpeechStartedWithSource:sourceOfTTS customerPerceivedLatency:outputRouteInfo audioOutputRoute:type voiceType:footprint voiceFootprint:unsignedIntegerValue voiceVersion:unsignedIntegerValue2 resourceVersion:v14 isWhisper:v25];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)reportFinish
{
  v63 = *MEMORY[0x277D85DE8];
  delegate = [(VSSpeechSpeakTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(VSSpeechSpeakTask *)self delegate];
    request = [(VSSpeechSpeakTask *)self request];
    isCancelled = [(VSSpeechSpeakTask *)self isCancelled];
    phonemes = [(VSSpeechSpeakTask *)self phonemes];
    v9 = [phonemes componentsJoinedByString:@" "];
    error = [(VSSpeechSpeakTask *)self error];
    [delegate2 speechRequest:request didStopWithSuccess:isCancelled ^ 1u phonemesSpoken:v9 error:error];

    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      error2 = [(VSSpeechSpeakTask *)self error];
      *buf = 134218242;
      v60 = requestCreatedTimestamp;
      v61 = 2112;
      v62 = error2;
      _os_log_debug_impl(&dword_2727E4000, v11, OS_LOG_TYPE_DEBUG, "Task %llu reported finish, error: %@", buf, 0x16u);
    }
  }

  v12 = MEMORY[0x277D79918];
  instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [v12 reportInstrumentMetrics:instrumentMetrics2];

  error3 = [(VSSpeechSpeakTask *)self error];
  if (error3)
  {
    v15 = error3;
    error4 = [(VSSpeechSpeakTask *)self error];
    if ([error4 code] == 400)
    {
    }

    else
    {
      error5 = [(VSSpeechSpeakTask *)self error];
      code = [error5 code];

      if (code != 501)
      {
        siriInstrumentation = [(VSSpeechSpeakTask *)self siriInstrumentation];
        v45 = MEMORY[0x277CCABB0];
        error6 = [(VSSpeechSpeakTask *)self error];
        v47 = [v45 numberWithInteger:{objc_msgSend(error6, "code")}];
        v58 = v47;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
        [siriInstrumentation instrumentSpeechFailedWithErrorCodes:v48];

        goto LABEL_21;
      }
    }
  }

  voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
  voiceData = [voiceSelection voiceData];
  languages = [voiceData languages];
  firstObject = [languages firstObject];
  request2 = [(VSSpeechSpeakTask *)self request];
  languageCode = [request2 languageCode];
  if (![firstObject isEqualToString:languageCode])
  {

    goto LABEL_14;
  }

  request3 = [(VSSpeechSpeakTask *)self request];
  voiceName = [request3 voiceName];
  if (!voiceName)
  {

    goto LABEL_16;
  }

  v56 = voiceName;
  request4 = [(VSSpeechSpeakTask *)self request];
  voiceName2 = [request4 voiceName];
  voiceSelection2 = [(VSSpeechSpeakTask *)self voiceSelection];
  [voiceSelection2 voiceData];
  v28 = v54 = request3;
  name = [v28 name];
  v57 = [voiceName2 isEqualToString:name];

  if ((v57 & 1) == 0)
  {
LABEL_14:
    voiceSelection = [(VSSpeechSpeakTask *)self siriInstrumentation];
    voiceData = [(VSSpeechSpeakTask *)self voiceSelection];
    languages = [voiceData voiceData];
    firstObject = [(VSSpeechSpeakTask *)self voiceResource];
    [voiceSelection instrumentVoiceFallbackOccurredWithVoice:languages resource:firstObject];
LABEL_16:
  }

  isCancelled2 = [(VSSpeechSpeakTask *)self isCancelled];
  siriInstrumentation2 = [(VSSpeechSpeakTask *)self siriInstrumentation];
  siriInstrumentation = siriInstrumentation2;
  if (isCancelled2)
  {
    [siriInstrumentation2 instrumentSpeechCancelled];
  }

  else
  {
    instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics3 audioDuration];
    v35 = v34;
    instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics4 ttsSynthesisLatency];
    v38 = v37;
    instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics5 cappedRealTimeFactor];
    v41 = v40;
    instrumentMetrics6 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    promptCount = [instrumentMetrics6 promptCount];
    instrumentMetrics7 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [siriInstrumentation instrumentSpeechEndedWithAudioDuration:promptCount synthesisLatency:objc_msgSend(instrumentMetrics7 realTimeFactor:"errorCode") promptCount:v35 errorCode:{v38, v41}];
  }

LABEL_21:

  v49 = *MEMORY[0x277D85DE8];
}

- (void)reportInstrumentMetrics
{
  v21 = *MEMORY[0x277D85DE8];
  delegate = [(VSSpeechSpeakTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v17 = 134218242;
      v18 = requestCreatedTimestamp;
      v19 = 2112;
      v20 = instrumentMetrics2;
      _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_DEFAULT, "Device task %llu: Instrument metric: %@", &v17, 0x16u);
    }

    delegate2 = [(VSSpeechSpeakTask *)self delegate];
    request = [(VSSpeechSpeakTask *)self request];
    instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [delegate2 speechRequest:request didReportInstrumentMetrics:instrumentMetrics3];

    v12 = +[VSDiagnosticService defaultService];
    instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    dictionaryMetrics = [instrumentMetrics4 dictionaryMetrics];
    instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v12 dumpInstrumentMetrics:dictionaryMetrics withTimestamp:{objc_msgSend(instrumentMetrics5, "requestCreatedTimestamp")}];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)synthesizeAndSpeak
{
  v77 = *MEMORY[0x277D85DE8];
  [(VSSpeechSpeakTask *)self prepareForSynthesis];
  error = [(VSSpeechSpeakTask *)self error];

  if (!error)
  {
    request = [(VSSpeechSpeakTask *)self request];
    -[VSSpeechSpeakTask startPlaybackServiceWithAudioSessionID:](self, "startPlaybackServiceWithAudioSessionID:", [request audioSessionID]);

    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v68[3] = mach_absolute_time();
    voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
    voiceData = [voiceSelection voiceData];
    v7 = [voiceData type] == 4;

    if (v7)
    {
      v8 = dispatch_semaphore_create(0);
      [(VSSpeechSpeakTask *)self setNeuralPlaybackSemaphore:v8];

      taskAuxiliaryQueue = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke;
      block[3] = &unk_279E4BAC8;
      block[4] = self;
      dispatch_async(taskAuxiliaryQueue, block);
    }

    error2 = [(VSSpeechSpeakTask *)self error];

    if (!error2 && ([(VSSpeechSpeakTask *)self isCancelled]& 1) == 0)
    {
      v11 = mach_absolute_time();
      instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
      [instrumentMetrics setSynthesisBeginTimestamp:v11];

      array = [MEMORY[0x277CBEB18] array];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      request2 = [(VSSpeechSpeakTask *)self request];
      customResourceURLs = [request2 customResourceURLs];

      v16 = [customResourceURLs countByEnumeratingWithState:&v63 objects:v76 count:16];
      if (v16)
      {
        v17 = *v64;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v64 != v17)
            {
              objc_enumerationMutation(customResourceURLs);
            }

            v19 = *(*(&v63 + 1) + 8 * i);
            engine = [(VSSpeechSpeakTask *)self engine];
            v21 = [engine loadResource:v19 error:0];

            if (v21)
            {
              [array addObject:v21];
            }
          }

          v16 = [customResourceURLs countByEnumeratingWithState:&v63 objects:v76 count:16];
        }

        while (v16);
      }

      engine2 = [(VSSpeechSpeakTask *)self engine];
      v23 = engine2;
      if (engine2)
      {
        [engine2 asbd];
        LODWORD(v24) = DWORD2(v61);
        v25 = v24;
      }

      else
      {
        v62 = 0;
        v60 = 0u;
        v61 = 0u;
        v25 = 0.0;
      }

      engine3 = [(VSSpeechSpeakTask *)self engine];
      v27 = engine3;
      if (engine3)
      {
        [engine3 asbd];
        v28 = *&v57;
      }

      else
      {
        v59 = 0;
        v57 = 0u;
        v58 = 0u;
        v28 = 0.0;
      }

      kdebug_trace();
      engine4 = [(VSSpeechSpeakTask *)self engine];
      request3 = [(VSSpeechSpeakTask *)self request];
      utterance = [request3 utterance];
      request4 = [(VSSpeechSpeakTask *)self request];
      canLogRequestText = [request4 canLogRequestText];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke_45;
      v56[3] = &unk_279E4B4F8;
      v56[4] = self;
      v56[5] = v68;
      v56[6] = (v28 * v25);
      v34 = [engine4 synthesizeText:utterance loggable:canLogRequestText callback:v56];

      if (v34)
      {
        [(VSSpeechSpeakTask *)self setError:v34];
      }

      neuralPlaybackSemaphore = [(VSSpeechSpeakTask *)self neuralPlaybackSemaphore];

      if (neuralPlaybackSemaphore)
      {
        neuralPlaybackSemaphore2 = [(VSSpeechSpeakTask *)self neuralPlaybackSemaphore];
        dispatch_semaphore_signal(neuralPlaybackSemaphore2);
      }

      v37 = VSGetLogDefault();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        request5 = [(VSSpeechSpeakTask *)self request];
        utterance2 = [request5 utterance];
        v40 = [utterance2 length];
        streamAudio = [(VSSpeechSpeakTask *)self streamAudio];
        [streamAudio duration];
        v43 = v42;
        error3 = [(VSSpeechSpeakTask *)self error];
        *buf = 134218498;
        v71 = v40;
        v72 = 2048;
        v73 = v43;
        v74 = 2112;
        v75 = error3;
        _os_log_impl(&dword_2727E4000, v37, OS_LOG_TYPE_INFO, "SpeakTask done synthesize %lu characters, audio duration %f, error %@", buf, 0x20u);
      }

      notify_post([*MEMORY[0x277D79A18] UTF8String]);
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v45 = array;
      v46 = [v45 countByEnumeratingWithState:&v52 objects:v69 count:16];
      if (v46)
      {
        v47 = *v53;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v53 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v52 + 1) + 8 * j);
            engine5 = [(VSSpeechSpeakTask *)self engine];
            [engine5 unloadResource:v49];
          }

          v46 = [v45 countByEnumeratingWithState:&v52 objects:v69 count:16];
        }

        while (v46);
      }

      [(VSSpeechSpeakTask *)self waitUntilAudioFinished];
    }

    _Block_object_dispose(v68, 8);
  }

  v51 = *MEMORY[0x277D85DE8];
}

void __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke(uint64_t a1)
{
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_INFO, "Holding audio playback before we get fast synthesis.", v6, 2u);
  }

  v3 = [*(a1 + 32) neuralPlaybackSemaphore];

  if (v3)
  {
    v4 = [*(a1 + 32) neuralPlaybackSemaphore];
    v5 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v4, v5);
  }
}

id __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke_45(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (v4 == 3)
  {
    v7 = mach_absolute_time();
    v8 = [*(a1 + 32) instrumentMetrics];
    [v8 setSynthesisEndTimestamp:v7];

    if ([v3 neuralDidFallback])
    {
      v9 = 1;
    }

    else
    {
      v9 = [v3 hasAudioClick];
    }

    [*(a1 + 32) setSynthesisHasIssue:v9];
    v10 = [v3 numOfPromptsTriggered];
    v11 = [*(a1 + 32) instrumentMetrics];
    [v11 setPromptCount:v10];

    kdebug_trace();
    v12 = [*(a1 + 32) timingInfos];

    if (!v12)
    {
      v13 = [v3 wordTimingInfos];
      [*(a1 + 32) setTimingInfos:v13];

      v14 = MEMORY[0x277D799B8];
      v15 = [*(a1 + 32) timingInfos];
      v16 = [*(a1 + 32) request];
      v17 = [v16 contextInfo];
      [v14 adjustWordTimingInfo:v15 forContext:v17];
    }

    v18 = *(a1 + 32);
    v19 = [v18 timingInfos];
    [v18 setObserverForWordTimings:v19];

    v20 = [v3 phonemes];
    [*(a1 + 32) setPhonemes:v20];

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

    goto LABEL_11;
  }

  if (v4 != 2)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_15;
  }

  v5 = [*(a1 + 32) error];
  if (!v5)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = [v3 mutablePCMData];
    v29 = [*(a1 + 32) voiceBooster];
    v30 = [v29 processData:v28];

    if (v30)
    {
      v6 = v30;

      objc_autoreleasePoolPop(v27);
      goto LABEL_14;
    }

    v32 = [*(a1 + 32) neuralPlaybackSemaphore];

    if (v32)
    {
      v33 = mach_absolute_time();
      v34 = *(*(*(a1 + 40) + 8) + 24);
      v35 = [v28 length] / *(a1 + 48);
      VSAbsoluteTimeToSecond();
      *(*(*(a1 + 40) + 8) + 24) = v33;
      if (v35 / v36 > 1.2)
      {
        v37 = [*(a1 + 32) neuralPlaybackSemaphore];
        dispatch_semaphore_signal(v37);
      }
    }

    v38 = [*(a1 + 32) streamAudio];
    [v38 appendAudioData:v28 packetCount:0 packetDescriptions:0];

    v39 = [*(a1 + 32) taskAuxiliaryQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke_2;
    block[3] = &unk_279E4BC28;
    block[4] = *(a1 + 32);
    v50 = v28;
    v40 = v28;
    dispatch_async(v39, block);

    objc_autoreleasePoolPop(v27);
    v41 = [*(a1 + 32) taskAuxiliaryQueue];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke_3;
    v48[3] = &unk_279E4BAC8;
    v48[4] = *(a1 + 32);
    dispatch_async(v41, v48);

    v42 = [*(a1 + 32) timingInfos];
    if (!v42)
    {
      v43 = objc_alloc(MEMORY[0x277CBEA60]);
      v44 = [v3 wordTimingInfos];
      v42 = [v43 initWithArray:v44 copyItems:1];

      v45 = MEMORY[0x277D799B8];
      v46 = [*(a1 + 32) request];
      v47 = [v46 contextInfo];
      [v45 adjustWordTimingInfo:v42 forContext:v47];
    }

    [*(a1 + 32) setObserverForWordTimings:v42];

    goto LABEL_11;
  }

  v6 = v5;
LABEL_14:

LABEL_15:

  return v6;
}

void __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackService];
  [v2 enqueue:*(a1 + 40) packetCount:0 packetDescriptions:0];
}

- (void)cancel
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VoiceServicesErrorDomain" code:400 userInfo:0];
  [(VSSpeechSpeakTask *)self setError:v3];

  if (([(VSSpeechSpeakTask *)self isExecuting]& 1) != 0 || ([(VSSpeechSpeakTask *)self isCancelled]& 1) != 0 || ([(VSSpeechSpeakTask *)self isFinished]& 1) != 0)
  {
    v9.receiver = self;
    v9.super_class = VSSpeechSpeakTask;
    [(VSSpeechSpeakTask *)&v9 cancel];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VSSpeechSpeakTask;
    [(VSSpeechSpeakTask *)&v10 cancel];
    [(VSSpeechSpeakTask *)self reportFinish];
  }

  engine = [(VSSpeechSpeakTask *)self engine];
  [engine stopAtMarker:0];

  neuralPlaybackSemaphore = [(VSSpeechSpeakTask *)self neuralPlaybackSemaphore];

  if (neuralPlaybackSemaphore)
  {
    neuralPlaybackSemaphore2 = [(VSSpeechSpeakTask *)self neuralPlaybackSemaphore];
    dispatch_semaphore_signal(neuralPlaybackSemaphore2);
  }

  taskAuxiliaryQueue = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__VSSpeechSpeakTask_cancel__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_async(taskAuxiliaryQueue, block);
}

void __27__VSSpeechSpeakTask_cancel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) playbackService];
  [v1 stop];
}

- (void)main
{
  v82 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  kdebug_trace();
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
    *buf = 134217984;
    requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
    _os_log_debug_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEBUG, "Starting speech task %llu", buf, 0xCu);
  }

  cachingService = [(VSSpeechSpeakTask *)self cachingService];
  request = [(VSSpeechSpeakTask *)self request];
  text = [request text];
  v7 = [cachingService popShortTermCacheForHash:text];

  if (v7)
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      request2 = [(VSSpeechSpeakTask *)self request];
      logText = [request2 logText];
      *buf = 138412290;
      requestCreatedTimestamp = logText;
      _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEFAULT, "Short-term cached synthesis is found for text '%@'", buf, 0xCu);
    }

    instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics2 setIsServerTTS:1];

    instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics3 setIsCacheHitFromMemory:1];

    instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics4 setSourceOfTTS:6];

    voiceKey = [v7 voiceKey];
    instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics5 setVoiceAssetKey:voiceKey];

    voiceResourceKey = [v7 voiceResourceKey];
    instrumentMetrics6 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics6 setVoiceResourceAssetKey:voiceResourceKey];

    timingInfos = [v7 timingInfos];
    [(VSSpeechSpeakTask *)self setTimingInfos:timingInfos];

    audio = [v7 audio];
    [audio duration];
    v21 = v20;
    instrumentMetrics7 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics7 setAudioDuration:v21];

    [(VSSpeechSpeakTask *)self setSpeechCache:v7];
  }

  else
  {
    v23 = objc_opt_new();
    request3 = [(VSSpeechSpeakTask *)self request];
    text2 = [request3 text];
    request4 = [(VSSpeechSpeakTask *)self request];
    languageCode = [request4 languageCode];
    request5 = [(VSSpeechSpeakTask *)self request];
    voiceName = [request5 voiceName];
    v30 = [v23 estimatedTTSWordTimingForText:text2 withLanguage:languageCode voiceName:voiceName];
    [(VSSpeechSpeakTask *)self setTimingInfos:v30];

    v31 = MEMORY[0x277D799B8];
    timingInfos2 = [(VSSpeechSpeakTask *)self timingInfos];
    request6 = [(VSSpeechSpeakTask *)self request];
    contextInfo = [request6 contextInfo];
    [v31 adjustWordTimingInfo:timingInfos2 forContext:contextInfo];

    [(VSSpeechSpeakTask *)self fetchVoiceResource];
    [(VSSpeechSpeakTask *)self fetchVoiceAsset];
    error = [(VSSpeechSpeakTask *)self error];

    if (!error)
    {
      cachingService2 = [(VSSpeechSpeakTask *)self cachingService];
      [cachingService2 fetchCacheForTask:self];
    }
  }

  error2 = [(VSSpeechSpeakTask *)self error];

  if (!error2)
  {
    speechCache = [(VSSpeechSpeakTask *)self speechCache];

    if (speechCache)
    {
      [(VSSpeechSpeakTask *)self reportTimingInfo];
      [(VSSpeechSpeakTask *)self speakCachedAudio];
    }

    else
    {
      [(VSSpeechSpeakTask *)self synthesizeAndSpeak];
      error3 = [(VSSpeechSpeakTask *)self error];

      if (!error3)
      {
        streamAudio = [(VSSpeechSpeakTask *)self streamAudio];
        [streamAudio duration];
        v42 = v41;
        instrumentMetrics8 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        [instrumentMetrics8 setAudioDuration:v42];
      }
    }

    v44 = mach_absolute_time();
    instrumentMetrics9 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics9 setSpeechEndTimestamp:v44];

    playbackService = [(VSSpeechSpeakTask *)self playbackService];
    LODWORD(instrumentMetrics9) = [playbackService discontinuedDuringPlayback];

    if (instrumentMetrics9)
    {
      instrumentMetrics10 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      [instrumentMetrics10 setErrorCode:452];
    }

    instrumentMetrics11 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics11 setIsSpeechRequest:1];
  }

  if ([(VSSpeechSpeakTask *)self isCancelled])
  {
    v49 = MEMORY[0x277CCA9B8];
    v78 = *MEMORY[0x277CCA460];
    v79 = @"Speech is cancelled/interrupted.";
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v51 = [v49 errorWithDomain:@"VoiceServicesErrorDomain" code:400 userInfo:v50];
    [(VSSpeechSpeakTask *)self setError:v51];
  }

  error4 = [(VSSpeechSpeakTask *)self error];

  if (!error4)
  {
    [(VSSpeechSpeakTask *)self reportInstrumentMetrics];
    streamAudio2 = [(VSSpeechSpeakTask *)self streamAudio];

    if (streamAudio2)
    {
      v54 = +[VSDiagnosticService defaultService];
      streamAudio3 = [(VSSpeechSpeakTask *)self streamAudio];
      request7 = [(VSSpeechSpeakTask *)self request];
      [v54 dumpStreamAudio:streamAudio3 forRequest:request7];
    }

    else
    {
      compressedAudio = [(VSSpeechSpeakTask *)self compressedAudio];

      if (!compressedAudio)
      {
LABEL_25:
        speechCache2 = [(VSSpeechSpeakTask *)self speechCache];
        if (speechCache2)
        {
        }

        else
        {
          request8 = [(VSSpeechSpeakTask *)self request];
          if ([request8 shouldCache])
          {
            synthesisHasIssue = [(VSSpeechSpeakTask *)self synthesisHasIssue];

            if (!synthesisHasIssue)
            {
              [(VSSpeechSpeakTask *)self enqueueCache];
            }
          }

          else
          {
          }
        }

        request9 = [(VSSpeechSpeakTask *)self request];
        outputPath = [request9 outputPath];
        path = [outputPath path];

        if (path)
        {
          streamAudio4 = [(VSSpeechSpeakTask *)self streamAudio];
          v65 = [streamAudio4 writeWaveToFilePath:path];

          if ((v65 & 1) == 0)
          {
            v66 = MEMORY[0x277CCA9B8];
            v76 = *MEMORY[0x277CCA460];
            v77 = @"writeWaveToFilePath failed.";
            v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
            v68 = [v66 errorWithDomain:@"VoiceServicesErrorDomain" code:501 userInfo:v67];
            [(VSSpeechSpeakTask *)self setError:v68];
          }
        }

        instrumentMetrics12 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        errorCode = [instrumentMetrics12 errorCode];
        v71 = VSSpeakTaskTailSpinDumpInProgress;

        if (errorCode == 452 && (v71 & 1) == 0)
        {
          v72 = VSGetLogDefault();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2727E4000, v72, OS_LOG_TYPE_INFO, "Detected synthesis stall, starting tailspin", buf, 2u);
          }

          VSSpeakTaskTailSpinDumpInProgress = 1;
          v73 = +[VSDiagnosticService defaultService];
          [v73 collectTailspin:&__block_literal_global_273];
        }

        goto LABEL_40;
      }

      v54 = +[VSDiagnosticService defaultService];
      streamAudio3 = [(VSSpeechSpeakTask *)self compressedAudio];
      request7 = [(VSSpeechSpeakTask *)self request];
      [v54 dumpCompressedAudio:streamAudio3 forRequest:request7];
    }

    goto LABEL_25;
  }

LABEL_40:
  [(VSSpeechSpeakTask *)self reportFinish];
  [(VSSpeechSpeakTask *)self logFinish];
  kdebug_trace();

  v74 = *MEMORY[0x277D85DE8];
}

void __25__VSSpeechSpeakTask_main__block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  VSSpeakTaskTailSpinDumpInProgress = 0;
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Finished tail spin, success:%d, file: %@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)taskHash
{
  v22 = MEMORY[0x277CCACA8];
  request = [(VSSpeechSpeakTask *)self request];
  utterance = [request utterance];
  voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
  v3 = [voiceSelection key];
  voiceResource = [(VSSpeechSpeakTask *)self voiceResource];
  v4 = [voiceResource key];
  request2 = [(VSSpeechSpeakTask *)self request];
  [request2 rate];
  v6 = v5;
  request3 = [(VSSpeechSpeakTask *)self request];
  [request3 pitch];
  v9 = v8;
  request4 = [(VSSpeechSpeakTask *)self request];
  [request4 volume];
  v12 = v11;
  request5 = [(VSSpeechSpeakTask *)self request];
  contextInfo = [request5 contextInfo];
  request6 = [(VSSpeechSpeakTask *)self request];
  customResourceURLs = [request6 customResourceURLs];
  v17 = [v22 stringWithFormat:@"%@ %@ %@ %@ %.2f %.2f %.2f %@ %@", @"2", utterance, v3, v4, v6, v9, v12, contextInfo, customResourceURLs];

  sha256hex = [v17 sha256hex];

  return sha256hex;
}

- (OS_dispatch_queue)taskAuxiliaryQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_taskAuxiliaryQueue)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create(0, v3);
    taskAuxiliaryQueue = selfCopy->_taskAuxiliaryQueue;
    selfCopy->_taskAuxiliaryQueue = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_taskAuxiliaryQueue;

  return v6;
}

- (VSSpeechSpeakTask)initWithRequest:(id)request
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v22.receiver = self;
  v22.super_class = VSSpeechSpeakTask;
  v6 = [(VSSpeechSpeakTask *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    v8 = objc_alloc_init(MEMORY[0x277D79938]);
    instrumentMetrics = v7->_instrumentMetrics;
    v7->_instrumentMetrics = v8;

    if ([requestCopy requestCreatedTimestamp])
    {
      requestCreatedTimestamp = [requestCopy requestCreatedTimestamp];
    }

    else
    {
      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v11, OS_LOG_TYPE_ERROR, "Using timestamp inside voiced for task", buf, 2u);
      }

      requestCreatedTimestamp = mach_absolute_time();
    }

    [(VSInstrumentMetrics *)v7->_instrumentMetrics setRequestCreatedTimestamp:requestCreatedTimestamp];
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      requestCreatedTimestamp2 = [(VSInstrumentMetrics *)v7->_instrumentMetrics requestCreatedTimestamp];
      *buf = 134218240;
      v24 = requestCreatedTimestamp2;
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_INFO, "Created Task %llu (%p)", buf, 0x16u);
    }

    kdebug_trace();
    text = [requestCopy text];
    [(VSInstrumentMetrics *)v7->_instrumentMetrics setUtterance:text];

    -[VSInstrumentMetrics setCanUseServerTTS:](v7->_instrumentMetrics, "setCanUseServerTTS:", [requestCopy canUseServerTTS]);
    clientBundleIdentifier = [requestCopy clientBundleIdentifier];
    [(VSInstrumentMetrics *)v7->_instrumentMetrics setClientBundleIdentifier:clientBundleIdentifier];

    [(VSInstrumentMetrics *)v7->_instrumentMetrics setSourceOfTTS:1];
    v16 = +[VSCachingService standardService];
    cachingService = v7->_cachingService;
    v7->_cachingService = v16;

    v18 = +[VSPrewarmService sharedService];
    prewarmService = v7->_prewarmService;
    v7->_prewarmService = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)enqueueCache
{
  v26 = *MEMORY[0x277D85DE8];
  taskHash = [(VSSpeechSpeakTask *)self taskHash];
  streamAudio = [(VSSpeechSpeakTask *)self streamAudio];

  cachingService = [(VSSpeechSpeakTask *)self cachingService];
  if (streamAudio)
  {
    streamAudio2 = [(VSSpeechSpeakTask *)self streamAudio];
    timingInfos = [(VSSpeechSpeakTask *)self timingInfos];
    instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
    voiceAssetKey = [instrumentMetrics voiceAssetKey];
    instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    voiceResourceAssetKey = [instrumentMetrics2 voiceResourceAssetKey];
    [cachingService enqueueCacheWithHash:taskHash streamAudio:streamAudio2 timingInfo:timingInfos voiceKey:voiceAssetKey voiceResourceKey:voiceResourceAssetKey completion:0];

    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v22 = 134218242;
      requestCreatedTimestamp = [instrumentMetrics3 requestCreatedTimestamp];
      v24 = 2112;
      v25 = taskHash;
      v14 = "Cached streamAudio in task %llu with hash %@ in memory";
LABEL_6:
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_INFO, v14, &v22, 0x16u);
    }
  }

  else
  {
    compressedAudio = [(VSSpeechSpeakTask *)self compressedAudio];
    timingInfos2 = [(VSSpeechSpeakTask *)self timingInfos];
    instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    voiceAssetKey2 = [instrumentMetrics4 voiceAssetKey];
    instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    voiceResourceAssetKey2 = [instrumentMetrics5 voiceResourceAssetKey];
    [cachingService enqueueCacheWithHash:taskHash audio:compressedAudio timingInfo:timingInfos2 voiceKey:voiceAssetKey2 voiceResourceKey:voiceResourceAssetKey2 completion:0];

    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v22 = 134218242;
      requestCreatedTimestamp = [instrumentMetrics3 requestCreatedTimestamp];
      v24 = 2112;
      v25 = taskHash;
      v14 = "Cached audio in task %llu with hash %@ in memory";
      goto LABEL_6;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)logFinish
{
  v78 = *MEMORY[0x277D85DE8];
  error = [(VSSpeechSpeakTask *)self error];
  if (error && (v4 = error, -[VSSpeechSpeakTask error](self, "error"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 code], v5, v4, v6 != 400))
  {
    voiceData = VSGetLogDefault();
    if (os_log_type_enabled(voiceData, OS_LOG_TYPE_ERROR))
    {
      instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      error2 = [(VSSpeechSpeakTask *)self error];
      *buf = 134218242;
      v69 = requestCreatedTimestamp;
      v70 = 2112;
      v71 = error2;
      _os_log_error_impl(&dword_2727E4000, voiceData, OS_LOG_TYPE_ERROR, "Error in device task %llu, error: %@", buf, 0x16u);
    }
  }

  else
  {
    voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
    voiceData = [voiceSelection voiceData];

    voiceResource = [(VSSpeechSpeakTask *)self voiceResource];
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      requestCreatedTimestamp2 = [instrumentMetrics2 requestCreatedTimestamp];
      isCancelled = [(VSSpeechSpeakTask *)self isCancelled];
      v12 = @"Finished";
      if (isCancelled)
      {
        v12 = @"Cancelled";
      }

      v55 = v12;
      isSpeaking = [(VSSpeechSpeakTask *)self isSpeaking];
      v14 = @"synthesizing";
      if (isSpeaking)
      {
        v14 = @"speaking";
      }

      v54 = v14;
      request = [(VSSpeechSpeakTask *)self request];
      logUtterance = [request logUtterance];
      v66[0] = @"voice";
      instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      voiceAssetKey = [instrumentMetrics3 voiceAssetKey];
      v60 = voiceAssetKey;
      if (!voiceAssetKey)
      {
        voiceKey = [voiceData voiceKey];
        v47 = voiceKey;
        if (voiceKey)
        {
          voiceAssetKey = voiceKey;
        }

        else
        {
          voiceAssetKey = @"(null)";
        }
      }

      v67[0] = voiceAssetKey;
      v66[1] = @"voice_resource";
      v17 = [voiceResource key];
      v59 = v17;
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = @"(null)";
      }

      v67[1] = v18;
      v66[2] = @"rate";
      v19 = MEMORY[0x277CCABB0];
      speechCache = [(VSSpeechSpeakTask *)self speechCache];
      if (speechCache)
      {
        request2 = [(VSSpeechSpeakTask *)self request];
        [request2 rate];
      }

      else
      {
        request2 = [(VSSpeechSpeakTask *)self engine];
        [request2 rate];
        v20 = v24;
      }

      v53 = [v19 numberWithDouble:v20];
      v67[2] = v53;
      v66[3] = @"pitch";
      v25 = MEMORY[0x277CCABB0];
      speechCache2 = [(VSSpeechSpeakTask *)self speechCache];
      if (speechCache2)
      {
        request3 = [(VSSpeechSpeakTask *)self request];
        [request3 pitch];
      }

      else
      {
        request3 = [(VSSpeechSpeakTask *)self engine];
        [request3 pitch];
        v26 = v27;
      }

      v50 = [v25 numberWithDouble:v26];
      v67[3] = v50;
      v66[4] = @"volume";
      v28 = MEMORY[0x277CCABB0];
      speechCache3 = [(VSSpeechSpeakTask *)self speechCache];
      v64 = voiceResource;
      if (speechCache3)
      {
        request4 = [(VSSpeechSpeakTask *)self request];
        [request4 volume];
      }

      else
      {
        request4 = [(VSSpeechSpeakTask *)self engine];
        [request4 volume];
        v29 = v30;
      }

      v31 = [v28 numberWithDouble:v29];
      v67[4] = v31;
      v66[5] = @"isEager";
      v32 = MEMORY[0x277CCABB0];
      isSpeaking2 = [(VSSpeechSpeakTask *)self isSpeaking];
      if (isSpeaking2)
      {
        instrumentMetrics4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        v34 = [instrumentMetrics4 eagerRequestCreatedTimestampDiffs] > 0;
      }

      else
      {
        v34 = 0;
      }

      v35 = [v32 numberWithInt:v34];
      v67[5] = v35;
      v66[6] = @"neuralIssue";
      v36 = MEMORY[0x277CCABB0];
      instrumentMetrics5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      neuralAlignmentStall = [instrumentMetrics5 neuralAlignmentStall];
      if (neuralAlignmentStall)
      {
        v39 = 0;
        neuralFallback = 1;
      }

      else
      {
        instrumentMetrics6 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        if ([instrumentMetrics6 neuralAudioClick])
        {
          v39 = 0;
          neuralFallback = 1;
        }

        else
        {
          instrumentMetrics7 = [(VSSpeechSpeakTask *)self instrumentMetrics];
          neuralFallback = [instrumentMetrics7 neuralFallback];
          v39 = 1;
        }
      }

      v41 = [v36 numberWithInt:neuralFallback];
      v67[6] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:7];
      *buf = 134219010;
      v69 = requestCreatedTimestamp2;
      v70 = 2112;
      v71 = v55;
      v72 = 2112;
      v73 = v54;
      v74 = 2112;
      v75 = logUtterance;
      v76 = 2114;
      v77 = v42;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "Device task %llu: %@ %@ utterance: '%@', %{public}@", buf, 0x34u);

      if (v39)
      {
      }

      if ((neuralAlignmentStall & 1) == 0)
      {
      }

      if (isSpeaking2)
      {
      }

      voiceResource = v64;
      if (!v60)
      {
      }
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (id)_fetchVoiceAsset_NoRetry
{
  v45[1] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
  request = [(VSSpeechSpeakTask *)self request];
  languageCode = [request languageCode];
  request2 = [(VSSpeechSpeakTask *)self request];
  voiceName = [request2 voiceName];
  request3 = [(VSSpeechSpeakTask *)self request];
  voiceType = [request3 voiceType];
  request4 = [(VSSpeechSpeakTask *)self request];
  gender = [request4 gender];
  request5 = [(VSSpeechSpeakTask *)self request];
  v12 = [mEMORY[0x277D79950] selectVoiceForLang:languageCode name:voiceName type:voiceType gender:gender footprint:{objc_msgSend(request5, "footprint")}];

  if (!v12)
  {
    v21 = VSGetLogDefault();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2727E4000, v21, OS_LOG_TYPE_ERROR, "No voice available", buf, 2u);
    }

    v17 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    v45[0] = @"No voice available";
    v18 = MEMORY[0x277CBEAC0];
    v19 = v45;
    v20 = &v44;
    goto LABEL_10;
  }

  request6 = [(VSSpeechSpeakTask *)self request];
  if ([request6 disableCompactVoiceFallback])
  {
    voiceData = [v12 voiceData];
    footprint = [voiceData footprint];

    if (footprint == 1)
    {
      v16 = VSGetLogDefault();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v16, OS_LOG_TYPE_ERROR, "Compact voice is explicitly disabled.", buf, 2u);
      }

      v17 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      v43 = @"Compact voice is explicitly disabled.";
      v18 = MEMORY[0x277CBEAC0];
      v19 = &v43;
      v20 = &v42;
LABEL_10:
      v22 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
      v23 = v17;
      v24 = 401;
      goto LABEL_17;
    }
  }

  else
  {
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  voicePath = [v12 voicePath];
  v27 = [defaultManager fileExistsAtPath:voicePath];

  if (v27)
  {
    [(VSSpeechSpeakTask *)self setVoiceSelection:v12];
    voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
    v29 = [voiceSelection key];
    instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics setVoiceAssetKey:v29];

    v31 = 0;
    goto LABEL_18;
  }

  v32 = VSGetLogDefault();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    voicePath2 = [v12 voicePath];
    *buf = 138412290;
    v41 = voicePath2;
    _os_log_error_impl(&dword_2727E4000, v32, OS_LOG_TYPE_ERROR, "Voice is deleted at path '%@'", buf, 0xCu);
  }

  v33 = MEMORY[0x277CCA9B8];
  v38 = *MEMORY[0x277CCA450];
  v39 = @"Voice is deleted already.";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v23 = v33;
  v24 = 402;
LABEL_17:
  v31 = [v23 errorWithDomain:@"VoiceServicesErrorDomain" code:v24 userInfo:v22];

LABEL_18:
  v34 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)fetchVoiceAsset
{
  v21 = *MEMORY[0x277D85DE8];
  _fetchVoiceAsset_NoRetry = [(VSSpeechSpeakTask *)self _fetchVoiceAsset_NoRetry];
  [(VSSpeechSpeakTask *)self setError:_fetchVoiceAsset_NoRetry];

  error = [(VSSpeechSpeakTask *)self error];
  if (error)
  {
    v5 = error;
    error2 = [(VSSpeechSpeakTask *)self error];
    code = [error2 code];

    if (code == 402)
    {
      notify_post([@"com.apple.voiceservices.notification.voice-update" UTF8String]);
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_INFO, "Reset MobileAsset query cache and retry selecting voice", &v17, 2u);
      }

      mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
      [mEMORY[0x277D79950] resetCache];

      _fetchVoiceAsset_NoRetry2 = [(VSSpeechSpeakTask *)self _fetchVoiceAsset_NoRetry];
      [(VSSpeechSpeakTask *)self setError:_fetchVoiceAsset_NoRetry2];
    }
  }

  v11 = VSGetLogDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
    requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
    voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
    voiceData = [voiceSelection voiceData];
    v17 = 134218242;
    v18 = requestCreatedTimestamp;
    v19 = 2112;
    v20 = voiceData;
    _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_INFO, "Task %llu fetched voice %@", &v17, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fetchVoiceResource
{
  mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
  request = [(VSSpeechSpeakTask *)self request];
  languageCode = [request languageCode];
  v6 = [mEMORY[0x277D79950] selectVoiceResourceAssetForLanguage:languageCode];
  [(VSSpeechSpeakTask *)self setVoiceResource:v6];

  voiceResource = [(VSSpeechSpeakTask *)self voiceResource];
  v7 = [voiceResource key];
  instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [instrumentMetrics setVoiceResourceAssetKey:v7];
}

- (void)resumePlayback
{
  taskAuxiliaryQueue = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__VSSpeechSpeakTask_Utilities__resumePlayback__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_sync(taskAuxiliaryQueue, block);
}

void __46__VSSpeechSpeakTask_Utilities__resumePlayback__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = [*(a1 + 32) playbackService];
    v3 = [v2 start];

    if ([*(a1 + 32) isCancelled])
    {
      v4 = [*(a1 + 32) playbackService];
      [v4 stop];
    }
  }
}

- (void)pausePlayback
{
  taskAuxiliaryQueue = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__VSSpeechSpeakTask_Utilities__pausePlayback__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_sync(taskAuxiliaryQueue, block);
}

void __45__VSSpeechSpeakTask_Utilities__pausePlayback__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) playbackService];
  [v1 pause];
}

- (void)waitUntilAudioFinished
{
  taskAuxiliaryQueue = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  dispatch_sync(taskAuxiliaryQueue, &__block_literal_global_35);

  playbackService = [(VSSpeechSpeakTask *)self playbackService];
  [playbackService flushAndStop];

  error = [(VSSpeechSpeakTask *)self error];

  if (!error)
  {
    playbackService2 = [(VSSpeechSpeakTask *)self playbackService];
    error2 = [playbackService2 error];
    [(VSSpeechSpeakTask *)self setError:error2];
  }
}

void __71__VSSpeechSpeakTask_Utilities__startPlaybackServiceWithAudioSessionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) instrumentMetrics];
  v3 = [v2 audioStartTimestampDiffs];

  if (!v3)
  {
    if ([*(a1 + 32) isCancelled])
    {

      kdebug_trace();
    }

    else
    {
      v4 = VSGetLogDefault();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 0;
        _os_log_debug_impl(&dword_2727E4000, v4, OS_LOG_TYPE_DEBUG, "Starting AudioQueue", v11, 2u);
      }

      v5 = mach_absolute_time();
      v6 = [*(a1 + 32) playbackService];
      v7 = [v6 start];
      [*(a1 + 32) setError:v7];

      v8 = mach_absolute_time() - v5;
      v9 = [*(a1 + 32) instrumentMetrics];
      [v9 setAudioStartTimestampDiffs:v8];

      kdebug_trace();
      if ([*(a1 + 32) isCancelled])
      {
        v10 = [*(a1 + 32) playbackService];
        [v10 stop];
      }
    }
  }
}

void __71__VSSpeechSpeakTask_Utilities__startPlaybackServiceWithAudioSessionID___block_invoke_32(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) taskAuxiliaryQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__VSSpeechSpeakTask_Utilities__startPlaybackServiceWithAudioSessionID___block_invoke_2;
  v12[3] = &unk_279E4BAF0;
  v12[4] = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v15 = a3;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

void __71__VSSpeechSpeakTask_Utilities__startPlaybackServiceWithAudioSessionID___block_invoke_3(uint64_t a1)
{
  v8 = [*(a1 + 32) playbackService];
  v2 = [*(a1 + 32) compressedAudio];
  v3 = [v2 audioData];
  v4 = [*(a1 + 32) compressedAudio];
  v5 = [v4 packetCount];
  v6 = [*(a1 + 32) compressedAudio];
  v7 = [v6 packetDescriptions];
  [v8 enqueue:v3 packetCount:v5 packetDescriptions:v7];
}

void __71__VSSpeechSpeakTask_Utilities__startPlaybackServiceWithAudioSessionID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackService];
  [v2 enqueue:*(a1 + 40) packetCount:*(a1 + 56) packetDescriptions:*(a1 + 48)];
}

- (void)speakCachedAudio
{
  v3 = mach_absolute_time();
  instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [instrumentMetrics setSynthesisBeginTimestamp:v3];

  instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  synthesisBeginTimestamp = [instrumentMetrics2 synthesisBeginTimestamp];
  instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [instrumentMetrics3 setSynthesisEndTimestamp:synthesisBeginTimestamp];

  speechCache = [(VSSpeechSpeakTask *)self speechCache];
  audio = [speechCache audio];
  [(VSSpeechSpeakTask *)self setCompressedAudio:audio];

  timingInfos = [speechCache timingInfos];
  [(VSSpeechSpeakTask *)self setTimingInfos:timingInfos];

  request = [(VSSpeechSpeakTask *)self request];
  -[VSSpeechSpeakTask startPlaybackServiceWithAudioSessionID:](self, "startPlaybackServiceWithAudioSessionID:", [request audioSessionID]);

  taskAuxiliaryQueue = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  dispatch_sync(taskAuxiliaryQueue, &__block_literal_global_3375);

  if (([(VSSpeechSpeakTask *)self isCancelled]& 1) == 0)
  {
    error = [(VSSpeechSpeakTask *)self error];

    if (!error)
    {
      [(VSSpeechSpeakTask *)self reportSpeechStart];
      timingInfos2 = [speechCache timingInfos];
      [(VSSpeechSpeakTask *)self setObserverForWordTimings:timingInfos2];

      playbackService = [(VSSpeechSpeakTask *)self playbackService];
      [playbackService flushAndStop];

      playbackService2 = [(VSSpeechSpeakTask *)self playbackService];
      error2 = [playbackService2 error];
      [(VSSpeechSpeakTask *)self setError:error2];
    }
  }
}

- (void)prepareForSynthesis
{
  v54[1] = *MEMORY[0x277D85DE8];
  instrumentMetrics = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [instrumentMetrics setSourceOfTTS:1];

  v4 = +[VSSiriServerConfiguration defaultConfig];
  experimentIdentifier = [v4 experimentIdentifier];
  instrumentMetrics2 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [instrumentMetrics2 setExperimentIdentifier:experimentIdentifier];

  prewarmService = [(VSSpeechSpeakTask *)self prewarmService];
  voiceSelection = [(VSSpeechSpeakTask *)self voiceSelection];
  voiceResource = [(VSSpeechSpeakTask *)self voiceResource];
  v10 = [prewarmService cachedEngineForVoice:voiceSelection resources:voiceResource];

  if (v10)
  {
    v11 = v10;
    goto LABEL_4;
  }

  prewarmService2 = [(VSSpeechSpeakTask *)self prewarmService];
  voiceSelection2 = [(VSSpeechSpeakTask *)self voiceSelection];
  voiceResource2 = [(VSSpeechSpeakTask *)self voiceResource];
  v11 = [prewarmService2 loadEngineForVoice:voiceSelection2 resources:voiceResource2];

  if (v11)
  {
LABEL_4:
    instrumentMetrics3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [instrumentMetrics3 setIsWarmStart:v10 != 0];

    v16 = [VSStreamAudioData alloc];
    [v11 asbd];
    v17 = [(VSStreamAudioData *)v16 initWithASBD:buf];
    [(VSSpeechSpeakTask *)self setStreamAudio:v17];

    request = [(VSSpeechSpeakTask *)self request];
    [request volume];
    if (v19 == 0.0)
    {
      voiceResource3 = [(VSSpeechSpeakTask *)self voiceResource];
      [voiceResource3 volume];
      if (v21 == 0.0)
      {
        [v11 volume];
      }

      [v11 setVolume:?];
    }

    else
    {
      *&v19 = v19;
      [v11 setVolume:v19];
    }

    request2 = [(VSSpeechSpeakTask *)self request];
    [request2 pitch];
    if (v23 == 0.0)
    {
      voiceResource4 = [(VSSpeechSpeakTask *)self voiceResource];
      [voiceResource4 pitch];
      if (v25 == 0.0)
      {
        [v11 pitch];
      }

      [v11 setPitch:?];
    }

    else
    {
      *&v23 = v23;
      [v11 setPitch:v23];
    }

    request3 = [(VSSpeechSpeakTask *)self request];
    [request3 rate];
    if (v27 == 0.0)
    {
      voiceResource5 = [(VSSpeechSpeakTask *)self voiceResource];
      [voiceResource5 rate];
      if (v29 == 0.0)
      {
        [v11 rate];
      }

      [v11 setRate:?];
    }

    else
    {
      *&v27 = v27;
      [v11 setRate:v27];
    }

    request4 = [(VSSpeechSpeakTask *)self request];
    powerProfile = [request4 powerProfile];

    if (powerProfile)
    {
      goto LABEL_29;
    }

    v32 = objc_alloc_init(MEMORY[0x277CEF350]);
    v50 = 0;
    v33 = [v32 currentPowerPolicyWithError:&v50];
    v34 = v50;
    if (v33)
    {
      [v33 ttsPolicy];
      if (v49 <= 2)
      {
        powerProfile = qword_272832710[v49];
LABEL_28:

LABEL_29:
        [v11 setPowerProfile:powerProfile];
        v39 = [VSVoiceBooster alloc];
        [v11 asbd];
        v40 = -[VSVoiceBooster initWithStreamDescription:pcmBufferSize:](v39, "initWithStreamDescription:pcmBufferSize:", buf, [v11 pcmBufferSize]);
        [(VSSpeechSpeakTask *)self setVoiceBooster:v40];

        voiceSelection3 = [(VSSpeechSpeakTask *)self voiceSelection];
        voiceData = [voiceSelection3 voiceData];
        request5 = [(VSSpeechSpeakTask *)self request];
        [request5 volume];
        [voiceData gainDecibelWithVolume:?];
        v45 = v44;
        voiceBooster = [(VSSpeechSpeakTask *)self voiceBooster];
        LODWORD(v47) = v45;
        [voiceBooster setVoiceBoostGainDecibels:v47];

        [(VSSpeechSpeakTask *)self setEngine:v11];
        goto LABEL_30;
      }
    }

    else
    {
      v38 = VSGetLogDefault();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v52 = v34;
        _os_log_error_impl(&dword_2727E4000, v38, OS_LOG_TYPE_ERROR, "Unable to get power policy from Siri, error: %@", buf, 0xCu);
      }
    }

    powerProfile = 0;
    goto LABEL_28;
  }

  v35 = MEMORY[0x277CCA9B8];
  v53 = *MEMORY[0x277CCA470];
  v54[0] = @"Can't create VSSpeechEngine";
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
  v37 = [v35 errorWithDomain:@"VoiceServicesErrorDomain" code:0 userInfo:v36];
  [(VSSpeechSpeakTask *)self setError:v37];

  v11 = 0;
LABEL_30:

  v48 = *MEMORY[0x277D85DE8];
}

@end