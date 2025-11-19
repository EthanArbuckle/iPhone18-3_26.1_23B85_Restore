@interface VSSpeechSpeakTask
- (OS_dispatch_queue)taskAuxiliaryQueue;
- (VSSpeechServiceDelegate)delegate;
- (VSSpeechSpeakTask)init;
- (VSSpeechSpeakTask)initWithRequest:(id)a3;
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
- (void)setObserverForWordTimings:(id)a3;
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
  v2 = [(VSSpeechSpeakTask *)self playbackService];
  v3 = [v2 audioPowerProvider];

  return v3;
}

- (void)reportTimingInfo
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(VSSpeechSpeakTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VSSpeechSpeakTask *)self delegate];
    v6 = [(VSSpeechSpeakTask *)self request];
    v7 = [(VSSpeechSpeakTask *)self timingInfos];
    [v5 speechRequest:v6 didReceiveTimingInfo:v7];

    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v11 = 134217984;
      v12 = [v10 requestCreatedTimestamp];
      _os_log_debug_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEBUG, "Task %llu reported word time info", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setObserverForWordTimings:(id)a3
{
  v4 = a3;
  v5 = [(VSSpeechSpeakTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = [(VSSpeechSpeakTask *)self playbackService];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__VSSpeechSpeakTask_setObserverForWordTimings___block_invoke;
    v8[3] = &unk_279E4B9C0;
    objc_copyWeak(&v9, &location);
    [v7 setBoundaryTimeObserverForTimingInfos:v4 usingBlock:v8];

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
  v3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  v4 = [v3 speechBeginTimestamp];

  if (!v4)
  {
    kdebug_trace();
    v5 = mach_absolute_time();
    v6 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v6 setSpeechBeginTimestamp:v5];

    v7 = [(VSSpeechSpeakTask *)self delegate];
    LOBYTE(v6) = objc_opt_respondsToSelector();

    if (v6)
    {
      v8 = [(VSSpeechSpeakTask *)self delegate];
      v9 = [(VSSpeechSpeakTask *)self request];
      [v8 speechRequestDidStart:v9];

      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v24 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        *buf = 134217984;
        v37 = [v24 requestCreatedTimestamp];
        _os_log_debug_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEBUG, "Task %llu started speaking", buf, 0xCu);
      }
    }

    v11 = [(VSSpeechSpeakTask *)self siriInstrumentation];
    v35 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v12 = [v35 sourceOfTTS];
    v34 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v34 timeToSpeakLatency];
    v14 = v13;
    v33 = [(VSSpeechSpeakTask *)self playbackService];
    v28 = [v33 outputRouteInfo];
    v32 = [(VSSpeechSpeakTask *)self voiceSelection];
    v31 = [v32 voiceData];
    v27 = [v31 type];
    v30 = [(VSSpeechSpeakTask *)self voiceSelection];
    v29 = [v30 voiceData];
    v26 = [v29 footprint];
    v15 = [(VSSpeechSpeakTask *)self voiceSelection];
    v16 = [v15 voiceData];
    v17 = [v16 contentVersion];
    v18 = [v17 unsignedIntegerValue];
    v19 = [(VSSpeechSpeakTask *)self voiceResource];
    v20 = [v19 contentVersion];
    v21 = [v20 unsignedIntegerValue];
    v22 = [(VSSpeechSpeakTask *)self request];
    LOBYTE(v25) = [v22 shouldWhisper];
    [v11 instrumentSpeechStartedWithSource:v12 customerPerceivedLatency:v28 audioOutputRoute:v27 voiceType:v26 voiceFootprint:v18 voiceVersion:v21 resourceVersion:v14 isWhisper:v25];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)reportFinish
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = [(VSSpeechSpeakTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VSSpeechSpeakTask *)self delegate];
    v6 = [(VSSpeechSpeakTask *)self request];
    v7 = [(VSSpeechSpeakTask *)self isCancelled];
    v8 = [(VSSpeechSpeakTask *)self phonemes];
    v9 = [v8 componentsJoinedByString:@" "];
    v10 = [(VSSpeechSpeakTask *)self error];
    [v5 speechRequest:v6 didStopWithSuccess:v7 ^ 1u phonemesSpoken:v9 error:v10];

    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v50 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v51 = [v50 requestCreatedTimestamp];
      v52 = [(VSSpeechSpeakTask *)self error];
      *buf = 134218242;
      v60 = v51;
      v61 = 2112;
      v62 = v52;
      _os_log_debug_impl(&dword_2727E4000, v11, OS_LOG_TYPE_DEBUG, "Task %llu reported finish, error: %@", buf, 0x16u);
    }
  }

  v12 = MEMORY[0x277D79918];
  v13 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [v12 reportInstrumentMetrics:v13];

  v14 = [(VSSpeechSpeakTask *)self error];
  if (v14)
  {
    v15 = v14;
    v16 = [(VSSpeechSpeakTask *)self error];
    if ([v16 code] == 400)
    {
    }

    else
    {
      v17 = [(VSSpeechSpeakTask *)self error];
      v18 = [v17 code];

      if (v18 != 501)
      {
        v32 = [(VSSpeechSpeakTask *)self siriInstrumentation];
        v45 = MEMORY[0x277CCABB0];
        v46 = [(VSSpeechSpeakTask *)self error];
        v47 = [v45 numberWithInteger:{objc_msgSend(v46, "code")}];
        v58 = v47;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
        [v32 instrumentSpeechFailedWithErrorCodes:v48];

        goto LABEL_21;
      }
    }
  }

  v19 = [(VSSpeechSpeakTask *)self voiceSelection];
  v20 = [v19 voiceData];
  v21 = [v20 languages];
  v22 = [v21 firstObject];
  v23 = [(VSSpeechSpeakTask *)self request];
  v24 = [v23 languageCode];
  if (![v22 isEqualToString:v24])
  {

    goto LABEL_14;
  }

  v25 = [(VSSpeechSpeakTask *)self request];
  v26 = [v25 voiceName];
  if (!v26)
  {

    goto LABEL_16;
  }

  v56 = v26;
  v55 = [(VSSpeechSpeakTask *)self request];
  v27 = [v55 voiceName];
  v53 = [(VSSpeechSpeakTask *)self voiceSelection];
  [v53 voiceData];
  v28 = v54 = v25;
  v29 = [v28 name];
  v57 = [v27 isEqualToString:v29];

  if ((v57 & 1) == 0)
  {
LABEL_14:
    v19 = [(VSSpeechSpeakTask *)self siriInstrumentation];
    v20 = [(VSSpeechSpeakTask *)self voiceSelection];
    v21 = [v20 voiceData];
    v22 = [(VSSpeechSpeakTask *)self voiceResource];
    [v19 instrumentVoiceFallbackOccurredWithVoice:v21 resource:v22];
LABEL_16:
  }

  v30 = [(VSSpeechSpeakTask *)self isCancelled];
  v31 = [(VSSpeechSpeakTask *)self siriInstrumentation];
  v32 = v31;
  if (v30)
  {
    [v31 instrumentSpeechCancelled];
  }

  else
  {
    v33 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v33 audioDuration];
    v35 = v34;
    v36 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v36 ttsSynthesisLatency];
    v38 = v37;
    v39 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v39 cappedRealTimeFactor];
    v41 = v40;
    v42 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v43 = [v42 promptCount];
    v44 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v32 instrumentSpeechEndedWithAudioDuration:v43 synthesisLatency:objc_msgSend(v44 realTimeFactor:"errorCode") promptCount:v35 errorCode:{v38, v41}];
  }

LABEL_21:

  v49 = *MEMORY[0x277D85DE8];
}

- (void)reportInstrumentMetrics
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(VSSpeechSpeakTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v7 = [v6 requestCreatedTimestamp];
      v8 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v17 = 134218242;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_DEFAULT, "Device task %llu: Instrument metric: %@", &v17, 0x16u);
    }

    v9 = [(VSSpeechSpeakTask *)self delegate];
    v10 = [(VSSpeechSpeakTask *)self request];
    v11 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v9 speechRequest:v10 didReportInstrumentMetrics:v11];

    v12 = +[VSDiagnosticService defaultService];
    v13 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v14 = [v13 dictionaryMetrics];
    v15 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v12 dumpInstrumentMetrics:v14 withTimestamp:{objc_msgSend(v15, "requestCreatedTimestamp")}];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)synthesizeAndSpeak
{
  v77 = *MEMORY[0x277D85DE8];
  [(VSSpeechSpeakTask *)self prepareForSynthesis];
  v3 = [(VSSpeechSpeakTask *)self error];

  if (!v3)
  {
    v4 = [(VSSpeechSpeakTask *)self request];
    -[VSSpeechSpeakTask startPlaybackServiceWithAudioSessionID:](self, "startPlaybackServiceWithAudioSessionID:", [v4 audioSessionID]);

    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v68[3] = mach_absolute_time();
    v5 = [(VSSpeechSpeakTask *)self voiceSelection];
    v6 = [v5 voiceData];
    v7 = [v6 type] == 4;

    if (v7)
    {
      v8 = dispatch_semaphore_create(0);
      [(VSSpeechSpeakTask *)self setNeuralPlaybackSemaphore:v8];

      v9 = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke;
      block[3] = &unk_279E4BAC8;
      block[4] = self;
      dispatch_async(v9, block);
    }

    v10 = [(VSSpeechSpeakTask *)self error];

    if (!v10 && ([(VSSpeechSpeakTask *)self isCancelled]& 1) == 0)
    {
      v11 = mach_absolute_time();
      v12 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      [v12 setSynthesisBeginTimestamp:v11];

      v13 = [MEMORY[0x277CBEB18] array];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v14 = [(VSSpeechSpeakTask *)self request];
      v15 = [v14 customResourceURLs];

      v16 = [v15 countByEnumeratingWithState:&v63 objects:v76 count:16];
      if (v16)
      {
        v17 = *v64;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v64 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v63 + 1) + 8 * i);
            v20 = [(VSSpeechSpeakTask *)self engine];
            v21 = [v20 loadResource:v19 error:0];

            if (v21)
            {
              [v13 addObject:v21];
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v63 objects:v76 count:16];
        }

        while (v16);
      }

      v22 = [(VSSpeechSpeakTask *)self engine];
      v23 = v22;
      if (v22)
      {
        [v22 asbd];
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

      v26 = [(VSSpeechSpeakTask *)self engine];
      v27 = v26;
      if (v26)
      {
        [v26 asbd];
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
      v29 = [(VSSpeechSpeakTask *)self engine];
      v30 = [(VSSpeechSpeakTask *)self request];
      v31 = [v30 utterance];
      v32 = [(VSSpeechSpeakTask *)self request];
      v33 = [v32 canLogRequestText];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __39__VSSpeechSpeakTask_synthesizeAndSpeak__block_invoke_45;
      v56[3] = &unk_279E4B4F8;
      v56[4] = self;
      v56[5] = v68;
      v56[6] = (v28 * v25);
      v34 = [v29 synthesizeText:v31 loggable:v33 callback:v56];

      if (v34)
      {
        [(VSSpeechSpeakTask *)self setError:v34];
      }

      v35 = [(VSSpeechSpeakTask *)self neuralPlaybackSemaphore];

      if (v35)
      {
        v36 = [(VSSpeechSpeakTask *)self neuralPlaybackSemaphore];
        dispatch_semaphore_signal(v36);
      }

      v37 = VSGetLogDefault();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = [(VSSpeechSpeakTask *)self request];
        v39 = [v38 utterance];
        v40 = [v39 length];
        v41 = [(VSSpeechSpeakTask *)self streamAudio];
        [v41 duration];
        v43 = v42;
        v44 = [(VSSpeechSpeakTask *)self error];
        *buf = 134218498;
        v71 = v40;
        v72 = 2048;
        v73 = v43;
        v74 = 2112;
        v75 = v44;
        _os_log_impl(&dword_2727E4000, v37, OS_LOG_TYPE_INFO, "SpeakTask done synthesize %lu characters, audio duration %f, error %@", buf, 0x20u);
      }

      notify_post([*MEMORY[0x277D79A18] UTF8String]);
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v45 = v13;
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
            v50 = [(VSSpeechSpeakTask *)self engine];
            [v50 unloadResource:v49];
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

  v4 = [(VSSpeechSpeakTask *)self engine];
  [v4 stopAtMarker:0];

  v5 = [(VSSpeechSpeakTask *)self neuralPlaybackSemaphore];

  if (v5)
  {
    v6 = [(VSSpeechSpeakTask *)self neuralPlaybackSemaphore];
    dispatch_semaphore_signal(v6);
  }

  v7 = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__VSSpeechSpeakTask_cancel__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_async(v7, block);
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
    v75 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    *buf = 134217984;
    v81 = [v75 requestCreatedTimestamp];
    _os_log_debug_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEBUG, "Starting speech task %llu", buf, 0xCu);
  }

  v4 = [(VSSpeechSpeakTask *)self cachingService];
  v5 = [(VSSpeechSpeakTask *)self request];
  v6 = [v5 text];
  v7 = [v4 popShortTermCacheForHash:v6];

  if (v7)
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VSSpeechSpeakTask *)self request];
      v10 = [v9 logText];
      *buf = 138412290;
      v81 = v10;
      _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEFAULT, "Short-term cached synthesis is found for text '%@'", buf, 0xCu);
    }

    v11 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v11 setIsServerTTS:1];

    v12 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v12 setIsCacheHitFromMemory:1];

    v13 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v13 setSourceOfTTS:6];

    v14 = [v7 voiceKey];
    v15 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v15 setVoiceAssetKey:v14];

    v16 = [v7 voiceResourceKey];
    v17 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v17 setVoiceResourceAssetKey:v16];

    v18 = [v7 timingInfos];
    [(VSSpeechSpeakTask *)self setTimingInfos:v18];

    v19 = [v7 audio];
    [v19 duration];
    v21 = v20;
    v22 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v22 setAudioDuration:v21];

    [(VSSpeechSpeakTask *)self setSpeechCache:v7];
  }

  else
  {
    v23 = objc_opt_new();
    v24 = [(VSSpeechSpeakTask *)self request];
    v25 = [v24 text];
    v26 = [(VSSpeechSpeakTask *)self request];
    v27 = [v26 languageCode];
    v28 = [(VSSpeechSpeakTask *)self request];
    v29 = [v28 voiceName];
    v30 = [v23 estimatedTTSWordTimingForText:v25 withLanguage:v27 voiceName:v29];
    [(VSSpeechSpeakTask *)self setTimingInfos:v30];

    v31 = MEMORY[0x277D799B8];
    v32 = [(VSSpeechSpeakTask *)self timingInfos];
    v33 = [(VSSpeechSpeakTask *)self request];
    v34 = [v33 contextInfo];
    [v31 adjustWordTimingInfo:v32 forContext:v34];

    [(VSSpeechSpeakTask *)self fetchVoiceResource];
    [(VSSpeechSpeakTask *)self fetchVoiceAsset];
    v35 = [(VSSpeechSpeakTask *)self error];

    if (!v35)
    {
      v36 = [(VSSpeechSpeakTask *)self cachingService];
      [v36 fetchCacheForTask:self];
    }
  }

  v37 = [(VSSpeechSpeakTask *)self error];

  if (!v37)
  {
    v38 = [(VSSpeechSpeakTask *)self speechCache];

    if (v38)
    {
      [(VSSpeechSpeakTask *)self reportTimingInfo];
      [(VSSpeechSpeakTask *)self speakCachedAudio];
    }

    else
    {
      [(VSSpeechSpeakTask *)self synthesizeAndSpeak];
      v39 = [(VSSpeechSpeakTask *)self error];

      if (!v39)
      {
        v40 = [(VSSpeechSpeakTask *)self streamAudio];
        [v40 duration];
        v42 = v41;
        v43 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        [v43 setAudioDuration:v42];
      }
    }

    v44 = mach_absolute_time();
    v45 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v45 setSpeechEndTimestamp:v44];

    v46 = [(VSSpeechSpeakTask *)self playbackService];
    LODWORD(v45) = [v46 discontinuedDuringPlayback];

    if (v45)
    {
      v47 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      [v47 setErrorCode:452];
    }

    v48 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v48 setIsSpeechRequest:1];
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

  v52 = [(VSSpeechSpeakTask *)self error];

  if (!v52)
  {
    [(VSSpeechSpeakTask *)self reportInstrumentMetrics];
    v53 = [(VSSpeechSpeakTask *)self streamAudio];

    if (v53)
    {
      v54 = +[VSDiagnosticService defaultService];
      v55 = [(VSSpeechSpeakTask *)self streamAudio];
      v56 = [(VSSpeechSpeakTask *)self request];
      [v54 dumpStreamAudio:v55 forRequest:v56];
    }

    else
    {
      v57 = [(VSSpeechSpeakTask *)self compressedAudio];

      if (!v57)
      {
LABEL_25:
        v58 = [(VSSpeechSpeakTask *)self speechCache];
        if (v58)
        {
        }

        else
        {
          v59 = [(VSSpeechSpeakTask *)self request];
          if ([v59 shouldCache])
          {
            v60 = [(VSSpeechSpeakTask *)self synthesisHasIssue];

            if (!v60)
            {
              [(VSSpeechSpeakTask *)self enqueueCache];
            }
          }

          else
          {
          }
        }

        v61 = [(VSSpeechSpeakTask *)self request];
        v62 = [v61 outputPath];
        v63 = [v62 path];

        if (v63)
        {
          v64 = [(VSSpeechSpeakTask *)self streamAudio];
          v65 = [v64 writeWaveToFilePath:v63];

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

        v69 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        v70 = [v69 errorCode];
        v71 = VSSpeakTaskTailSpinDumpInProgress;

        if (v70 == 452 && (v71 & 1) == 0)
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
      v55 = [(VSSpeechSpeakTask *)self compressedAudio];
      v56 = [(VSSpeechSpeakTask *)self request];
      [v54 dumpCompressedAudio:v55 forRequest:v56];
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
  v25 = [(VSSpeechSpeakTask *)self request];
  v20 = [v25 utterance];
  v24 = [(VSSpeechSpeakTask *)self voiceSelection];
  v3 = [v24 key];
  v23 = [(VSSpeechSpeakTask *)self voiceResource];
  v4 = [v23 key];
  v21 = [(VSSpeechSpeakTask *)self request];
  [v21 rate];
  v6 = v5;
  v7 = [(VSSpeechSpeakTask *)self request];
  [v7 pitch];
  v9 = v8;
  v10 = [(VSSpeechSpeakTask *)self request];
  [v10 volume];
  v12 = v11;
  v13 = [(VSSpeechSpeakTask *)self request];
  v14 = [v13 contextInfo];
  v15 = [(VSSpeechSpeakTask *)self request];
  v16 = [v15 customResourceURLs];
  v17 = [v22 stringWithFormat:@"%@ %@ %@ %@ %.2f %.2f %.2f %@ %@", @"2", v20, v3, v4, v6, v9, v12, v14, v16];

  v18 = [v17 sha256hex];

  return v18;
}

- (OS_dispatch_queue)taskAuxiliaryQueue
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_taskAuxiliaryQueue)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create(0, v3);
    taskAuxiliaryQueue = v2->_taskAuxiliaryQueue;
    v2->_taskAuxiliaryQueue = v4;
  }

  objc_sync_exit(v2);

  v6 = v2->_taskAuxiliaryQueue;

  return v6;
}

- (VSSpeechSpeakTask)initWithRequest:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22.receiver = self;
  v22.super_class = VSSpeechSpeakTask;
  v6 = [(VSSpeechSpeakTask *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = objc_alloc_init(MEMORY[0x277D79938]);
    instrumentMetrics = v7->_instrumentMetrics;
    v7->_instrumentMetrics = v8;

    if ([v5 requestCreatedTimestamp])
    {
      v10 = [v5 requestCreatedTimestamp];
    }

    else
    {
      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v11, OS_LOG_TYPE_ERROR, "Using timestamp inside voiced for task", buf, 2u);
      }

      v10 = mach_absolute_time();
    }

    [(VSInstrumentMetrics *)v7->_instrumentMetrics setRequestCreatedTimestamp:v10];
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(VSInstrumentMetrics *)v7->_instrumentMetrics requestCreatedTimestamp];
      *buf = 134218240;
      v24 = v13;
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_INFO, "Created Task %llu (%p)", buf, 0x16u);
    }

    kdebug_trace();
    v14 = [v5 text];
    [(VSInstrumentMetrics *)v7->_instrumentMetrics setUtterance:v14];

    -[VSInstrumentMetrics setCanUseServerTTS:](v7->_instrumentMetrics, "setCanUseServerTTS:", [v5 canUseServerTTS]);
    v15 = [v5 clientBundleIdentifier];
    [(VSInstrumentMetrics *)v7->_instrumentMetrics setClientBundleIdentifier:v15];

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

- (VSSpeechSpeakTask)init
  v2 = {;
  objc_exception_throw(v2);
}

- (void)enqueueCache
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(VSSpeechSpeakTask *)self taskHash];
  v4 = [(VSSpeechSpeakTask *)self streamAudio];

  v5 = [(VSSpeechSpeakTask *)self cachingService];
  if (v4)
  {
    v6 = [(VSSpeechSpeakTask *)self streamAudio];
    v7 = [(VSSpeechSpeakTask *)self timingInfos];
    v8 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v9 = [v8 voiceAssetKey];
    v10 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v11 = [v10 voiceResourceAssetKey];
    [v5 enqueueCacheWithHash:v3 streamAudio:v6 timingInfo:v7 voiceKey:v9 voiceResourceKey:v11 completion:0];

    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v22 = 134218242;
      v23 = [v13 requestCreatedTimestamp];
      v24 = 2112;
      v25 = v3;
      v14 = "Cached streamAudio in task %llu with hash %@ in memory";
LABEL_6:
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_INFO, v14, &v22, 0x16u);
    }
  }

  else
  {
    v15 = [(VSSpeechSpeakTask *)self compressedAudio];
    v16 = [(VSSpeechSpeakTask *)self timingInfos];
    v17 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v18 = [v17 voiceAssetKey];
    v19 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v20 = [v19 voiceResourceAssetKey];
    [v5 enqueueCacheWithHash:v3 audio:v15 timingInfo:v16 voiceKey:v18 voiceResourceKey:v20 completion:0];

    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v22 = 134218242;
      v23 = [v13 requestCreatedTimestamp];
      v24 = 2112;
      v25 = v3;
      v14 = "Cached audio in task %llu with hash %@ in memory";
      goto LABEL_6;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)logFinish
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = [(VSSpeechSpeakTask *)self error];
  if (v3 && (v4 = v3, -[VSSpeechSpeakTask error](self, "error"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 code], v5, v4, v6 != 400))
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v21 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v22 = [v21 requestCreatedTimestamp];
      v23 = [(VSSpeechSpeakTask *)self error];
      *buf = 134218242;
      v69 = v22;
      v70 = 2112;
      v71 = v23;
      _os_log_error_impl(&dword_2727E4000, v8, OS_LOG_TYPE_ERROR, "Error in device task %llu, error: %@", buf, 0x16u);
    }
  }

  else
  {
    v7 = [(VSSpeechSpeakTask *)self voiceSelection];
    v8 = [v7 voiceData];

    v9 = [(VSSpeechSpeakTask *)self voiceResource];
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v63 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v56 = [v63 requestCreatedTimestamp];
      v11 = [(VSSpeechSpeakTask *)self isCancelled];
      v12 = @"Finished";
      if (v11)
      {
        v12 = @"Cancelled";
      }

      v55 = v12;
      v13 = [(VSSpeechSpeakTask *)self isSpeaking];
      v14 = @"synthesizing";
      if (v13)
      {
        v14 = @"speaking";
      }

      v54 = v14;
      v62 = [(VSSpeechSpeakTask *)self request];
      v65 = [v62 logUtterance];
      v66[0] = @"voice";
      v61 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v15 = [v61 voiceAssetKey];
      v60 = v15;
      if (!v15)
      {
        v16 = [v8 voiceKey];
        v47 = v16;
        if (v16)
        {
          v15 = v16;
        }

        else
        {
          v15 = @"(null)";
        }
      }

      v67[0] = v15;
      v66[1] = @"voice_resource";
      v17 = [v9 key];
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
      v58 = [(VSSpeechSpeakTask *)self speechCache];
      if (v58)
      {
        v57 = [(VSSpeechSpeakTask *)self request];
        [v57 rate];
      }

      else
      {
        v57 = [(VSSpeechSpeakTask *)self engine];
        [v57 rate];
        v20 = v24;
      }

      v53 = [v19 numberWithDouble:v20];
      v67[2] = v53;
      v66[3] = @"pitch";
      v25 = MEMORY[0x277CCABB0];
      v52 = [(VSSpeechSpeakTask *)self speechCache];
      if (v52)
      {
        v51 = [(VSSpeechSpeakTask *)self request];
        [v51 pitch];
      }

      else
      {
        v51 = [(VSSpeechSpeakTask *)self engine];
        [v51 pitch];
        v26 = v27;
      }

      v50 = [v25 numberWithDouble:v26];
      v67[3] = v50;
      v66[4] = @"volume";
      v28 = MEMORY[0x277CCABB0];
      v49 = [(VSSpeechSpeakTask *)self speechCache];
      v64 = v9;
      if (v49)
      {
        v48 = [(VSSpeechSpeakTask *)self request];
        [v48 volume];
      }

      else
      {
        v48 = [(VSSpeechSpeakTask *)self engine];
        [v48 volume];
        v29 = v30;
      }

      v31 = [v28 numberWithDouble:v29];
      v67[4] = v31;
      v66[5] = @"isEager";
      v32 = MEMORY[0x277CCABB0];
      v33 = [(VSSpeechSpeakTask *)self isSpeaking];
      if (v33)
      {
        v46 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        v34 = [v46 eagerRequestCreatedTimestampDiffs] > 0;
      }

      else
      {
        v34 = 0;
      }

      v35 = [v32 numberWithInt:v34];
      v67[5] = v35;
      v66[6] = @"neuralIssue";
      v36 = MEMORY[0x277CCABB0];
      v37 = [(VSSpeechSpeakTask *)self instrumentMetrics];
      v38 = [v37 neuralAlignmentStall];
      if (v38)
      {
        v39 = 0;
        v40 = 1;
      }

      else
      {
        v45 = [(VSSpeechSpeakTask *)self instrumentMetrics];
        if ([v45 neuralAudioClick])
        {
          v39 = 0;
          v40 = 1;
        }

        else
        {
          v44 = [(VSSpeechSpeakTask *)self instrumentMetrics];
          v40 = [v44 neuralFallback];
          v39 = 1;
        }
      }

      v41 = [v36 numberWithInt:v40];
      v67[6] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:7];
      *buf = 134219010;
      v69 = v56;
      v70 = 2112;
      v71 = v55;
      v72 = 2112;
      v73 = v54;
      v74 = 2112;
      v75 = v65;
      v76 = 2114;
      v77 = v42;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "Device task %llu: %@ %@ utterance: '%@', %{public}@", buf, 0x34u);

      if (v39)
      {
      }

      if ((v38 & 1) == 0)
      {
      }

      if (v33)
      {
      }

      v9 = v64;
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
  v3 = [MEMORY[0x277D79950] sharedManager];
  v37 = [(VSSpeechSpeakTask *)self request];
  v4 = [v37 languageCode];
  v5 = [(VSSpeechSpeakTask *)self request];
  v6 = [v5 voiceName];
  v7 = [(VSSpeechSpeakTask *)self request];
  v8 = [v7 voiceType];
  v9 = [(VSSpeechSpeakTask *)self request];
  v10 = [v9 gender];
  v11 = [(VSSpeechSpeakTask *)self request];
  v12 = [v3 selectVoiceForLang:v4 name:v6 type:v8 gender:v10 footprint:{objc_msgSend(v11, "footprint")}];

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

  v13 = [(VSSpeechSpeakTask *)self request];
  if ([v13 disableCompactVoiceFallback])
  {
    v14 = [v12 voiceData];
    v15 = [v14 footprint];

    if (v15 == 1)
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

  v25 = [MEMORY[0x277CCAA00] defaultManager];
  v26 = [v12 voicePath];
  v27 = [v25 fileExistsAtPath:v26];

  if (v27)
  {
    [(VSSpeechSpeakTask *)self setVoiceSelection:v12];
    v28 = [(VSSpeechSpeakTask *)self voiceSelection];
    v29 = [v28 key];
    v30 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v30 setVoiceAssetKey:v29];

    v31 = 0;
    goto LABEL_18;
  }

  v32 = VSGetLogDefault();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v36 = [v12 voicePath];
    *buf = 138412290;
    v41 = v36;
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
  v3 = [(VSSpeechSpeakTask *)self _fetchVoiceAsset_NoRetry];
  [(VSSpeechSpeakTask *)self setError:v3];

  v4 = [(VSSpeechSpeakTask *)self error];
  if (v4)
  {
    v5 = v4;
    v6 = [(VSSpeechSpeakTask *)self error];
    v7 = [v6 code];

    if (v7 == 402)
    {
      notify_post([@"com.apple.voiceservices.notification.voice-update" UTF8String]);
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_INFO, "Reset MobileAsset query cache and retry selecting voice", &v17, 2u);
      }

      v9 = [MEMORY[0x277D79950] sharedManager];
      [v9 resetCache];

      v10 = [(VSSpeechSpeakTask *)self _fetchVoiceAsset_NoRetry];
      [(VSSpeechSpeakTask *)self setError:v10];
    }
  }

  v11 = VSGetLogDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    v13 = [v12 requestCreatedTimestamp];
    v14 = [(VSSpeechSpeakTask *)self voiceSelection];
    v15 = [v14 voiceData];
    v17 = 134218242;
    v18 = v13;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_INFO, "Task %llu fetched voice %@", &v17, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fetchVoiceResource
{
  v3 = [MEMORY[0x277D79950] sharedManager];
  v4 = [(VSSpeechSpeakTask *)self request];
  v5 = [v4 languageCode];
  v6 = [v3 selectVoiceResourceAssetForLanguage:v5];
  [(VSSpeechSpeakTask *)self setVoiceResource:v6];

  v9 = [(VSSpeechSpeakTask *)self voiceResource];
  v7 = [v9 key];
  v8 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [v8 setVoiceResourceAssetKey:v7];
}

- (void)resumePlayback
{
  v3 = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__VSSpeechSpeakTask_Utilities__resumePlayback__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_sync(v3, block);
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
  v3 = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__VSSpeechSpeakTask_Utilities__pausePlayback__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __45__VSSpeechSpeakTask_Utilities__pausePlayback__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) playbackService];
  [v1 pause];
}

- (void)waitUntilAudioFinished
{
  v3 = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  dispatch_sync(v3, &__block_literal_global_35);

  v4 = [(VSSpeechSpeakTask *)self playbackService];
  [v4 flushAndStop];

  v5 = [(VSSpeechSpeakTask *)self error];

  if (!v5)
  {
    v7 = [(VSSpeechSpeakTask *)self playbackService];
    v6 = [v7 error];
    [(VSSpeechSpeakTask *)self setError:v6];
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
  v4 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [v4 setSynthesisBeginTimestamp:v3];

  v5 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  v6 = [v5 synthesisBeginTimestamp];
  v7 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [v7 setSynthesisEndTimestamp:v6];

  v17 = [(VSSpeechSpeakTask *)self speechCache];
  v8 = [v17 audio];
  [(VSSpeechSpeakTask *)self setCompressedAudio:v8];

  v9 = [v17 timingInfos];
  [(VSSpeechSpeakTask *)self setTimingInfos:v9];

  v10 = [(VSSpeechSpeakTask *)self request];
  -[VSSpeechSpeakTask startPlaybackServiceWithAudioSessionID:](self, "startPlaybackServiceWithAudioSessionID:", [v10 audioSessionID]);

  v11 = [(VSSpeechSpeakTask *)self taskAuxiliaryQueue];
  dispatch_sync(v11, &__block_literal_global_3375);

  if (([(VSSpeechSpeakTask *)self isCancelled]& 1) == 0)
  {
    v12 = [(VSSpeechSpeakTask *)self error];

    if (!v12)
    {
      [(VSSpeechSpeakTask *)self reportSpeechStart];
      v13 = [v17 timingInfos];
      [(VSSpeechSpeakTask *)self setObserverForWordTimings:v13];

      v14 = [(VSSpeechSpeakTask *)self playbackService];
      [v14 flushAndStop];

      v15 = [(VSSpeechSpeakTask *)self playbackService];
      v16 = [v15 error];
      [(VSSpeechSpeakTask *)self setError:v16];
    }
  }
}

- (void)prepareForSynthesis
{
  v54[1] = *MEMORY[0x277D85DE8];
  v3 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [v3 setSourceOfTTS:1];

  v4 = +[VSSiriServerConfiguration defaultConfig];
  v5 = [v4 experimentIdentifier];
  v6 = [(VSSpeechSpeakTask *)self instrumentMetrics];
  [v6 setExperimentIdentifier:v5];

  v7 = [(VSSpeechSpeakTask *)self prewarmService];
  v8 = [(VSSpeechSpeakTask *)self voiceSelection];
  v9 = [(VSSpeechSpeakTask *)self voiceResource];
  v10 = [v7 cachedEngineForVoice:v8 resources:v9];

  if (v10)
  {
    v11 = v10;
    goto LABEL_4;
  }

  v12 = [(VSSpeechSpeakTask *)self prewarmService];
  v13 = [(VSSpeechSpeakTask *)self voiceSelection];
  v14 = [(VSSpeechSpeakTask *)self voiceResource];
  v11 = [v12 loadEngineForVoice:v13 resources:v14];

  if (v11)
  {
LABEL_4:
    v15 = [(VSSpeechSpeakTask *)self instrumentMetrics];
    [v15 setIsWarmStart:v10 != 0];

    v16 = [VSStreamAudioData alloc];
    [v11 asbd];
    v17 = [(VSStreamAudioData *)v16 initWithASBD:buf];
    [(VSSpeechSpeakTask *)self setStreamAudio:v17];

    v18 = [(VSSpeechSpeakTask *)self request];
    [v18 volume];
    if (v19 == 0.0)
    {
      v20 = [(VSSpeechSpeakTask *)self voiceResource];
      [v20 volume];
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

    v22 = [(VSSpeechSpeakTask *)self request];
    [v22 pitch];
    if (v23 == 0.0)
    {
      v24 = [(VSSpeechSpeakTask *)self voiceResource];
      [v24 pitch];
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

    v26 = [(VSSpeechSpeakTask *)self request];
    [v26 rate];
    if (v27 == 0.0)
    {
      v28 = [(VSSpeechSpeakTask *)self voiceResource];
      [v28 rate];
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

    v30 = [(VSSpeechSpeakTask *)self request];
    v31 = [v30 powerProfile];

    if (v31)
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
        v31 = qword_272832710[v49];
LABEL_28:

LABEL_29:
        [v11 setPowerProfile:v31];
        v39 = [VSVoiceBooster alloc];
        [v11 asbd];
        v40 = -[VSVoiceBooster initWithStreamDescription:pcmBufferSize:](v39, "initWithStreamDescription:pcmBufferSize:", buf, [v11 pcmBufferSize]);
        [(VSSpeechSpeakTask *)self setVoiceBooster:v40];

        v41 = [(VSSpeechSpeakTask *)self voiceSelection];
        v42 = [v41 voiceData];
        v43 = [(VSSpeechSpeakTask *)self request];
        [v43 volume];
        [v42 gainDecibelWithVolume:?];
        v45 = v44;
        v46 = [(VSSpeechSpeakTask *)self voiceBooster];
        LODWORD(v47) = v45;
        [v46 setVoiceBoostGainDecibels:v47];

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

    v31 = 0;
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