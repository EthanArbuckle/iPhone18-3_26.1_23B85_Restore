@interface VSSpeechSynthesisTask
- (BOOL)isSpeaking;
- (VSSpeechSynthesisTask)initWithRequest:(id)a3;
- (void)main;
- (void)reportFinish;
- (void)reportInstrumentMetrics;
- (void)reportSpeechStart;
- (void)reportTimingInfo;
- (void)setObserverForWordTimings:(id)a3;
- (void)setSpeakTask:(id)a3;
- (void)synthesize;
@end

@implementation VSSpeechSynthesisTask

- (void)reportFinish
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(VSSpeechSynthesisTask *)self speakTask];
  v4 = [v3 delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VSSpeechSynthesisTask *)self speakTask];
    v7 = [v6 delegate];
    v8 = [(VSSpeechSpeakTask *)self request];
    v9 = [(VSSpeechSynthesisTask *)self isCancelled];
    v10 = [(VSSpeechSpeakTask *)self phonemes];
    v11 = [v10 componentsJoinedByString:@" "];
    v12 = [(VSSpeechSpeakTask *)self error];
    [v7 speechRequest:v8 didStopWithSuccess:v9 ^ 1u phonemesSpoken:v11 error:v12];

    v13 = VSGetLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v26 = [(VSSpeechSynthesisTask *)self speakTask];
      v27 = [v26 instrumentMetrics];
      v28 = [v27 requestCreatedTimestamp];
      v29 = [(VSSpeechSpeakTask *)self error];
      v33 = 134218242;
      v34 = v28;
      v35 = 2112;
      v36 = v29;
      _os_log_debug_impl(&dword_2727E4000, v13, OS_LOG_TYPE_DEBUG, "Task %llu reported finish, error: %@", &v33, 0x16u);
    }
  }

  v14 = [(VSSpeechSpeakTask *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = VSGetLogDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v18 = [v17 requestCreatedTimestamp];
      v19 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v33 = 134218242;
      v34 = v18;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&dword_2727E4000, v16, OS_LOG_TYPE_DEFAULT, "Device EagerTask %llu: Instrument metric: %@", &v33, 0x16u);
    }

    v20 = [(VSSpeechSpeakTask *)self delegate];
    v21 = [(VSSpeechSpeakTask *)self request];
    v22 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v23 = [(VSSpeechSpeakTask *)self error];
    [v20 synthesisRequest:v21 didFinishWithInstrumentMetrics:v22 error:v23];

    v24 = VSGetLogDefault();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v30 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v31 = [v30 requestCreatedTimestamp];
      v32 = [(VSSpeechSpeakTask *)self error];
      v33 = 134218242;
      v34 = v31;
      v35 = 2112;
      v36 = v32;
      _os_log_debug_impl(&dword_2727E4000, v24, OS_LOG_TYPE_DEBUG, "Task %llu reported finish, error: %@", &v33, 0x16u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)reportSpeechStart
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  v4 = [v3 speechBeginTimestamp];

  if (!v4)
  {
    kdebug_trace();
    v5 = mach_absolute_time();
    v6 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v6 setSpeechBeginTimestamp:v5];

    v7 = [(VSSpeechSynthesisTask *)self speakTask];
    v8 = [v7 delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(VSSpeechSynthesisTask *)self speakTask];
      v11 = [v10 delegate];
      v12 = [(VSSpeechSpeakTask *)self request];
      [v11 speechRequestDidStart:v12];

      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        v16 = 134217984;
        v17 = [v15 requestCreatedTimestamp];
        _os_log_debug_impl(&dword_2727E4000, v13, OS_LOG_TYPE_DEBUG, "Task %llu started speaking", &v16, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)reportInstrumentMetrics
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = [(VSSpeechSynthesisTask *)self speakTask];
  v4 = [v3 delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v7 = [v6 utterance];
    v8 = [(VSSpeechSynthesisTask *)self speakTask];
    v9 = [v8 instrumentMetrics];
    [v9 setUtterance:v7];

    v10 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v11 = [v10 voiceAssetKey];
    v12 = [(VSSpeechSynthesisTask *)self speakTask];
    v13 = [v12 instrumentMetrics];
    [v13 setVoiceAssetKey:v11];

    v14 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v15 = [v14 voiceResourceAssetKey];
    v16 = [(VSSpeechSynthesisTask *)self speakTask];
    v17 = [v16 instrumentMetrics];
    [v17 setVoiceResourceAssetKey:v15];

    v18 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v19 = [v18 synthesisBeginTimestamp];
    v20 = [(VSSpeechSynthesisTask *)self speakTask];
    v21 = [v20 instrumentMetrics];
    [v21 setSynthesisBeginTimestamp:v19];

    v22 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v23 = [v22 synthesisEndTimestamp];
    v24 = [(VSSpeechSynthesisTask *)self speakTask];
    v25 = [v24 instrumentMetrics];
    [v25 setSynthesisEndTimestamp:v23];

    v26 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v27 = [v26 speechBeginTimestamp];
    v28 = [(VSSpeechSynthesisTask *)self speakTask];
    v29 = [v28 instrumentMetrics];
    [v29 setSpeechBeginTimestamp:v27];

    v30 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v31 = [v30 speechEndTimestamp];
    v32 = [(VSSpeechSynthesisTask *)self speakTask];
    v33 = [v32 instrumentMetrics];
    [v33 setSpeechEndTimestamp:v31];

    v34 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v35 = [v34 audioStartTimestampDiffs];
    v36 = [(VSSpeechSynthesisTask *)self speakTask];
    v37 = [v36 instrumentMetrics];
    [v37 setAudioStartTimestampDiffs:v35];

    v38 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v38 audioDuration];
    v40 = v39;
    v41 = [(VSSpeechSynthesisTask *)self speakTask];
    v42 = [v41 instrumentMetrics];
    [v42 setAudioDuration:v40];

    v43 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v44 = [v43 isWarmStart];
    v45 = [(VSSpeechSynthesisTask *)self speakTask];
    v46 = [v45 instrumentMetrics];
    [v46 setIsWarmStart:v44];

    v47 = [(VSSpeechSynthesisTask *)self speakTask];
    v48 = [v47 instrumentMetrics];
    v49 = [v48 requestCreatedTimestamp];
    v50 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v51 = v49 - [v50 requestCreatedTimestamp];
    v52 = [(VSSpeechSynthesisTask *)self speakTask];
    v53 = [v52 instrumentMetrics];
    [v53 setEagerRequestCreatedTimestampDiffs:v51];

    v54 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v55 = [v54 promptCount];
    v56 = [(VSSpeechSynthesisTask *)self speakTask];
    v57 = [v56 instrumentMetrics];
    [v57 setPromptCount:v55];

    v58 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v59 = [v58 errorCode];
    v60 = [(VSSpeechSynthesisTask *)self speakTask];
    v61 = [v60 instrumentMetrics];
    [v61 setErrorCode:v59];

    v62 = VSGetLogDefault();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = [(VSSpeechSynthesisTask *)self speakTask];
      v64 = [v63 instrumentMetrics];
      v65 = [v64 requestCreatedTimestamp];
      v66 = [(VSSpeechSynthesisTask *)self speakTask];
      v67 = [v66 instrumentMetrics];
      v81 = 134218242;
      v82 = v65;
      v83 = 2112;
      v84 = v67;
      _os_log_impl(&dword_2727E4000, v62, OS_LOG_TYPE_DEFAULT, "Device SpeakTask %llu: Instrument metric: %@", &v81, 0x16u);
    }

    v68 = [(VSSpeechSynthesisTask *)self speakTask];
    v69 = [v68 delegate];
    v70 = [(VSSpeechSynthesisTask *)self speakTask];
    v71 = [v70 request];
    v72 = [(VSSpeechSynthesisTask *)self speakTask];
    v73 = [v72 instrumentMetrics];
    [v69 speechRequest:v71 didReportInstrumentMetrics:v73];

    v74 = +[VSDiagnosticService defaultService];
    v75 = [(VSSpeechSynthesisTask *)self speakTask];
    v76 = [v75 instrumentMetrics];
    v77 = [v76 dictionaryMetrics];
    v78 = [(VSSpeechSynthesisTask *)self speakTask];
    v79 = [v78 instrumentMetrics];
    [v74 dumpInstrumentMetrics:v77 withTimestamp:{objc_msgSend(v79, "requestCreatedTimestamp")}];
  }

  v80 = *MEMORY[0x277D85DE8];
}

- (void)reportTimingInfo
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(VSSpeechSpeakTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VSSpeechSpeakTask *)self delegate];
    v6 = [(VSSpeechSpeakTask *)self request];
    v7 = [(VSSpeechSpeakTask *)self timingInfos];
    [v5 synthesisRequest:v6 didReceiveTimingInfo:v7];

    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v19 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v23 = 134217984;
      v24 = [v19 requestCreatedTimestamp];
      _os_log_debug_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEBUG, "Task %llu reported word time info", &v23, 0xCu);
    }
  }

  v9 = [(VSSpeechSynthesisTask *)self speakTask];
  v10 = [v9 delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(VSSpeechSynthesisTask *)self speakTask];
    v13 = [v12 delegate];
    v14 = [(VSSpeechSynthesisTask *)self speakTask];
    v15 = [v14 request];
    v16 = [(VSSpeechSpeakTask *)self timingInfos];
    [v13 speechRequest:v15 didReceiveTimingInfo:v16];

    v17 = VSGetLogDefault();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v20 = [(VSSpeechSynthesisTask *)self speakTask];
      v21 = [v20 instrumentMetrics];
      v22 = [v21 requestCreatedTimestamp];
      v23 = 134217984;
      v24 = v22;
      _os_log_debug_impl(&dword_2727E4000, v17, OS_LOG_TYPE_DEBUG, "Task %llu reported word time info", &v23, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setObserverForWordTimings:(id)a3
{
  v4 = a3;
  v5 = [(VSSpeechSynthesisTask *)self speakTask];
  v6 = [v5 delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    objc_initWeak(&location, self);
    v8 = [(VSSpeechSpeakTask *)self playbackService];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__VSSpeechSynthesisTask_setObserverForWordTimings___block_invoke;
    v9[3] = &unk_279E4B9C0;
    objc_copyWeak(&v10, &location);
    [v8 setBoundaryTimeObserverForTimingInfos:v4 usingBlock:v9];

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

- (void)setSpeakTask:(id)a3
{
  v4 = a3;
  kdebug_trace();
  kdebug_trace();
  speakTask = self->_speakTask;
  self->_speakTask = v4;
}

- (void)synthesize
{
  v31 = *MEMORY[0x277D85DE8];
  [(VSSpeechSpeakTask *)self prepareForSynthesis];
  v3 = [(VSSpeechSpeakTask *)self error];

  if (!v3 && ([(VSSpeechSynthesisTask *)self isCancelled]& 1) == 0)
  {
    v4 = [(VSSpeechSynthesisTask *)self speakTask];

    if (v4)
    {
      v5 = [(VSSpeechSynthesisTask *)self speakTask];
      v6 = [v5 request];
      -[VSSpeechSpeakTask startPlaybackServiceWithAudioSessionID:](self, "startPlaybackServiceWithAudioSessionID:", [v6 audioSessionID]);
    }

    v7 = mach_absolute_time();
    v8 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v8 setSynthesisBeginTimestamp:v7];

    kdebug_trace();
    v9 = [(VSSpeechSpeakTask *)self engine];
    v10 = [(VSSpeechSpeakTask *)self request];
    v11 = [v10 utterance];
    v12 = [(VSSpeechSpeakTask *)self request];
    v13 = [v12 canLogRequestText];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __35__VSSpeechSynthesisTask_synthesize__block_invoke;
    v24[3] = &unk_279E4B460;
    v24[4] = self;
    v14 = [v9 synthesizeText:v11 loggable:v13 callback:v24];

    if (v14)
    {
      [(VSSpeechSpeakTask *)self setError:v14];
    }

    v15 = VSGetLogDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [(VSSpeechSpeakTask *)self request];
      v17 = [v16 utterance];
      v18 = [v17 length];
      v19 = [(VSSpeechSpeakTask *)self streamAudio];
      [v19 duration];
      v21 = v20;
      v22 = [(VSSpeechSpeakTask *)self error];
      *buf = 134218498;
      v26 = v18;
      v27 = 2048;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
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
  v4 = [(VSSpeechSpeakTask *)self request];
  v5 = [v4 text];
  v6 = [(VSSpeechSpeakTask *)self request];
  v7 = [v6 languageCode];
  v8 = [(VSSpeechSpeakTask *)self request];
  v9 = [v8 voiceName];
  v10 = [v3 estimatedTTSWordTimingForText:v5 withLanguage:v7 voiceName:v9];
  [(VSSpeechSpeakTask *)self setTimingInfos:v10];

  v11 = MEMORY[0x277D799B8];
  v12 = [(VSSpeechSpeakTask *)self timingInfos];
  v13 = [(VSSpeechSpeakTask *)self request];
  v14 = [v13 contextInfo];
  [v11 adjustWordTimingInfo:v12 forContext:v14];

  v15 = [(VSSpeechSpeakTask *)self error];

  if (!v15)
  {
    v36 = [(VSSpeechSpeakTask *)self cachingService];
    [v36 fetchCacheForTask:self];

    v37 = [(VSSpeechSpeakTask *)self speechCache];

    if (v37)
    {
      [(VSSpeechSynthesisTask *)self reportTimingInfo];
      v38 = [(VSSpeechSpeakTask *)self request];
      v39 = [v38 shouldStreamAudioData];

      if (v39)
      {
        v40 = [(VSSpeechSpeakTask *)self speechCache];
        v41 = [(VSSpeechSpeakTask *)self delegate];
        v42 = [(VSSpeechSpeakTask *)self request];
        v43 = [v40 audio];
        [v41 synthesisRequest:v42 didGenerateAudioChunk:v43];
      }

      v44 = [(VSSpeechSynthesisTask *)self speakTask];

      if (v44)
      {
        [(VSSpeechSpeakTask *)self speakCachedAudio];
      }
    }

    else
    {
      [(VSSpeechSynthesisTask *)self synthesize];
      v45 = [(VSSpeechSpeakTask *)self error];

      if (!v45)
      {
        v46 = [(VSSpeechSpeakTask *)self streamAudio];
        [v46 duration];
        v48 = v47;
        v49 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        [v49 setAudioDuration:v48];
      }
    }

    v50 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v51 = [v50 speechBeginTimestamp];

    if (v51 >= 1)
    {
      v52 = mach_absolute_time();
      v53 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      [v53 setSpeechEndTimestamp:v52];

      v54 = [(VSSpeechSpeakTask *)self playbackService];
      LODWORD(v53) = [v54 discontinuedDuringPlayback];

      if (v53)
      {
        v55 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        [v55 setErrorCode:452];
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

  v19 = [(VSSpeechSpeakTask *)self error];

  if (!v19)
  {
    [(VSSpeechSynthesisTask *)self reportInstrumentMetrics];
  }

  v20 = [(VSSpeechSpeakTask *)self error];
  if (!v20)
  {
    v21 = [(VSSpeechSynthesisTask *)self speakTask];

    if (!v21)
    {
      goto LABEL_10;
    }

    kdebug_trace();
    v20 = +[VSDiagnosticService defaultService];
    v22 = [(VSSpeechSpeakTask *)self streamAudio];
    v23 = [(VSSpeechSpeakTask *)self request];
    [v20 dumpStreamAudio:v22 forRequest:v23];
  }

LABEL_10:
  v24 = [(VSSpeechSpeakTask *)self error];

  if (!v24)
  {
    v25 = [(VSSpeechSpeakTask *)self request];
    v26 = [v25 outputPath];
    v27 = [v26 path];

    if (v27)
    {
      v28 = [(VSSpeechSpeakTask *)self streamAudio];
      v29 = [v28 writeWaveToFilePath:v27];

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

    v33 = [(VSSpeechSpeakTask *)self request];
    if ([v33 shouldCache])
    {
      v34 = [(VSSpeechSpeakTask *)self speechCache];
      if (!v34)
      {
        v56 = [(VSSpeechSpeakTask *)self synthesisHasIssue];

        if (!v56)
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
  v2 = [(VSSpeechSynthesisTask *)self speakTask];

  return v2 != 0;
}

- (VSSpeechSynthesisTask)initWithRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = VSSpeechSynthesisTask;
  result = [(VSSpeechSpeakTask *)&v4 initWithRequest:a3];
  if (result)
  {
    result->_readyForEagerTask = 1;
  }

  return result;
}

@end