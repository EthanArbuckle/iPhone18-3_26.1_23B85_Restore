@interface VSSiriInlineTTSStreamTask
- (BOOL)waitForNewData:(double)data;
- (VSSiriInlineTTSStreamTask)initWithRequest:(id)request withStreamID:(id)d;
- (VSSpeechServiceDelegate)delegate;
- (id)audioPowerProvider;
- (id)voiceKey;
- (void)cancel;
- (void)dealloc;
- (void)handleBegin:(id)begin;
- (void)handleChunk:(id)chunk;
- (void)handleEnd:(id)end;
- (void)handleStreamNotification:(id)notification;
- (void)main;
- (void)reportFinish;
- (void)reportInstrumentMetrics;
- (void)reportSpeechStart;
- (void)reportTimingInfo;
- (void)resume;
- (void)signalNewDataWithError:(id)error;
- (void)startPlayback;
- (void)suspend;
- (void)synthesisCore:(id)core didReceiveAudio:(id)audio;
- (void)synthesisCore:(id)core didReceiveProcessingWordTimingInfo:(id)info;
- (void)synthesisCore:(id)core didReceiveWordTimingInfo:(id)info;
@end

@implementation VSSiriInlineTTSStreamTask

- (VSSpeechServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)synthesisCore:(id)core didReceiveWordTimingInfo:(id)info
{
  infoCopy = info;
  finalTimingInfo = [(VSSiriInlineTTSStreamTask *)self finalTimingInfo];
  [finalTimingInfo addObjectsFromArray:infoCopy];
}

- (void)synthesisCore:(id)core didReceiveProcessingWordTimingInfo:(id)info
{
  coreCopy = core;
  infoCopy = info;
  delegate = [(VSSiriInlineTTSStreamTask *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    objc_initWeak(&location, self);
    playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__VSSiriInlineTTSStreamTask_synthesisCore_didReceiveProcessingWordTimingInfo___block_invoke;
    v11[3] = &unk_279E4B9C0;
    objc_copyWeak(&v12, &location);
    [playbackServices setBoundaryTimeObserverForTimingInfos:infoCopy usingBlock:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __78__VSSiriInlineTTSStreamTask_synthesisCore_didReceiveProcessingWordTimingInfo___block_invoke(uint64_t a1, void *a2)
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

- (void)synthesisCore:(id)core didReceiveAudio:(id)audio
{
  v44[1] = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  error = [(VSSiriInlineTTSStreamTask *)self error];

  if (!error)
  {
    playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];

    if (!playbackServices)
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v40) = 0;
        _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEFAULT, "Initializing fallback playback service", &v40, 2u);
      }

      v9 = [VSAudioPlaybackService alloc];
      request = [(VSSiriInlineTTSStreamTask *)self request];
      audioSessionID = [request audioSessionID];
      if (audioCopy)
      {
        [audioCopy asbd];
      }

      else
      {
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
      }

      v12 = [(VSSiriInlineTTSStreamTask *)self request:v40];
      accessoryID = [v12 accessoryID];
      v14 = [(VSAudioPlaybackService *)v9 initWithAudioSessionID:audioSessionID asbd:&v40 useAVSBAR:accessoryID != 0];
      [(VSSiriInlineTTSStreamTask *)self setPlaybackServices:v14];

      playbackServices2 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
      outputRouteInfo = [playbackServices2 outputRouteInfo];
      audioRouteName = [outputRouteInfo audioRouteName];
      instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics setAudioOutputRoute:audioRouteName];

      playbackServices3 = [(VSSiriInlineTTSStreamTask *)self playbackServices];

      if (!playbackServices3)
      {
        v38 = MEMORY[0x277CCA9B8];
        v43 = *MEMORY[0x277CCA450];
        v44[0] = @"Unable to create playback service";
        instrumentMetrics5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
        v39 = [v38 errorWithDomain:@"VoiceServicesErrorDomain" code:450 userInfo:instrumentMetrics5];
        [(VSSiriInlineTTSStreamTask *)self setError:v39];

LABEL_15:
        goto LABEL_16;
      }

      v20 = mach_absolute_time();
      playbackServices4 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
      start = [playbackServices4 start];

      if (start)
      {
        [(VSSiriInlineTTSStreamTask *)self setError:start];
      }

      v23 = mach_absolute_time() - v20;
      instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics2 setAudioStartTimestampDiffs:v23];
    }

    instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    speechBeginTimestamp = [instrumentMetrics3 speechBeginTimestamp];

    if (!speechBeginTimestamp)
    {
      v27 = mach_absolute_time();
      instrumentMetrics4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics4 setSpeechBeginTimestamp:v27];

      [(VSSiriInlineTTSStreamTask *)self reportSpeechStart];
    }

    playbackServices5 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
    audioData = [audioCopy audioData];
    packetCount = [audioCopy packetCount];
    packetDescriptions = [audioCopy packetDescriptions];
    [playbackServices5 enqueue:audioData packetCount:packetCount packetDescriptions:packetDescriptions];

    instrumentMetrics5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [audioCopy duration];
    v35 = v34;
    [instrumentMetrics5 audioDuration];
    [instrumentMetrics5 setAudioDuration:v35 + v36];
    goto LABEL_15;
  }

LABEL_16:

  v37 = *MEMORY[0x277D85DE8];
}

- (id)audioPowerProvider
{
  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  audioPowerProvider = [playbackServices audioPowerProvider];

  return audioPowerProvider;
}

- (void)reportInstrumentMetrics
{
  v19 = *MEMORY[0x277D85DE8];
  delegate = [(VSSiriInlineTTSStreamTask *)self delegate];
  request = [(VSSiriInlineTTSStreamTask *)self request];
  instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [delegate speechRequest:request didReportInstrumentMetrics:instrumentMetrics];

  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    requestCreatedTimestamp = [instrumentMetrics2 requestCreatedTimestamp];
    instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    v15 = 134218242;
    v16 = requestCreatedTimestamp;
    v17 = 2112;
    v18 = instrumentMetrics3;
    _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEFAULT, "Stream task %llu: Instrument metric: %@", &v15, 0x16u);
  }

  v10 = +[VSDiagnosticService defaultService];
  instrumentMetrics4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  dictionaryMetrics = [instrumentMetrics4 dictionaryMetrics];
  instrumentMetrics5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v10 dumpInstrumentMetrics:dictionaryMetrics withTimestamp:{objc_msgSend(instrumentMetrics5, "requestCreatedTimestamp")}];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)reportTimingInfo
{
  delegate = [(VSSiriInlineTTSStreamTask *)self delegate];
  request = [(VSSiriInlineTTSStreamTask *)self request];
  finalTimingInfo = [(VSSiriInlineTTSStreamTask *)self finalTimingInfo];
  [delegate speechRequest:request didReceiveTimingInfo:finalTimingInfo];
}

- (void)reportFinish
{
  v60[1] = *MEMORY[0x277D85DE8];
  delegate = [(VSSiriInlineTTSStreamTask *)self delegate];
  request = [(VSSiriInlineTTSStreamTask *)self request];
  isCancelled = [(VSSiriInlineTTSStreamTask *)self isCancelled];
  error = [(VSSiriInlineTTSStreamTask *)self error];
  [delegate speechRequest:request didStopWithSuccess:isCancelled ^ 1u phonemesSpoken:&stru_2881CBD18 error:error];

  error2 = [(VSSiriInlineTTSStreamTask *)self error];
  if (!error2)
  {
    goto LABEL_5;
  }

  v8 = error2;
  error3 = [(VSSiriInlineTTSStreamTask *)self error];
  if ([error3 code] == 400)
  {

LABEL_5:
    voiceKey = [(VSSiriInlineTTSStreamTask *)self voiceKey];
    v13 = VSGetLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      if ([(VSSiriInlineTTSStreamTask *)self isCancelled])
      {
        v15 = @"Cancelled";
      }

      else
      {
        v15 = @"Finished";
      }

      request2 = [(VSSiriInlineTTSStreamTask *)self request];
      logText = [request2 logText];
      if (voiceKey)
      {
        v18 = voiceKey;
      }

      else
      {
        v18 = @"(null)";
      }

      v50[0] = @"voice";
      v50[1] = @"voice_resource";
      v51[0] = v18;
      instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      voiceResourceAssetKey = [instrumentMetrics2 voiceResourceAssetKey];
      v21 = voiceResourceAssetKey;
      if (voiceResourceAssetKey)
      {
        v22 = voiceResourceAssetKey;
      }

      else
      {
        v22 = @"(null)";
      }

      v51[1] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
      *buf = 134218754;
      v53 = requestCreatedTimestamp;
      v54 = 2112;
      v55 = v15;
      v56 = 2112;
      v57 = logText;
      v58 = 2114;
      v59 = v23;
      _os_log_impl(&dword_2727E4000, v13, OS_LOG_TYPE_DEFAULT, "Stream task %llu: %@ speaking text: '%@', %{public}@", buf, 0x2Au);
    }

    isCancelled2 = [(VSSiriInlineTTSStreamTask *)self isCancelled];
    siriInstrumentation = [(VSSiriInlineTTSStreamTask *)self siriInstrumentation];
    v26 = siriInstrumentation;
    if (isCancelled2)
    {
      [siriInstrumentation instrumentSpeechCancelled];
    }

    else
    {
      instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics3 audioDuration];
      v29 = v28;
      instrumentMetrics4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics4 ttsSynthesisLatency];
      v32 = v31;
      instrumentMetrics5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics5 cappedRealTimeFactor];
      v35 = v34;
      instrumentMetrics6 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      promptCount = [instrumentMetrics6 promptCount];
      instrumentMetrics7 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [v26 instrumentSpeechEndedWithAudioDuration:promptCount synthesisLatency:objc_msgSend(instrumentMetrics7 realTimeFactor:"errorCode") promptCount:v29 errorCode:{v32, v35}];
    }

    v39 = MEMORY[0x277D79918];
    instrumentMetrics8 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [v39 reportInstrumentMetrics:instrumentMetrics8];
    goto LABEL_20;
  }

  error4 = [(VSSiriInlineTTSStreamTask *)self error];
  code = [error4 code];

  if (code == 501)
  {
    goto LABEL_5;
  }

  v42 = VSGetLogDefault();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    instrumentMetrics9 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    requestCreatedTimestamp2 = [instrumentMetrics9 requestCreatedTimestamp];
    error5 = [(VSSiriInlineTTSStreamTask *)self error];
    *buf = 134218242;
    v53 = requestCreatedTimestamp2;
    v54 = 2112;
    v55 = error5;
    _os_log_error_impl(&dword_2727E4000, v42, OS_LOG_TYPE_ERROR, "Error in stream task %llu, error: %@", buf, 0x16u);
  }

  voiceKey = [(VSSiriInlineTTSStreamTask *)self siriInstrumentation];
  v43 = MEMORY[0x277CCABB0];
  instrumentMetrics8 = [(VSSiriInlineTTSStreamTask *)self error];
  v44 = [v43 numberWithInteger:{objc_msgSend(instrumentMetrics8, "code")}];
  v60[0] = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
  [(__CFString *)voiceKey instrumentSpeechFailedWithErrorCodes:v45];

LABEL_20:
  v41 = *MEMORY[0x277D85DE8];
}

- (id)voiceKey
{
  instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  isServerTimeout = [instrumentMetrics isServerTimeout];

  if (isServerTimeout)
  {
    deviceTTSCore = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    selectedVoice = [deviceTTSCore selectedVoice];
    voiceData = [selectedVoice voiceData];
    descriptiveKey = [voiceData descriptiveKey];
  }

  else
  {
    deviceTTSCore = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    descriptiveKey = [deviceTTSCore voiceAssetKey];
  }

  return descriptiveKey;
}

- (void)reportSpeechStart
{
  v32 = *MEMORY[0x277D85DE8];
  delegate = [(VSSiriInlineTTSStreamTask *)self delegate];
  request = [(VSSiriInlineTTSStreamTask *)self request];
  [delegate speechRequestDidStart:request];

  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    *buf = 134217984;
    requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Task %llu started speaking", buf, 0xCu);
  }

  siriInstrumentation = [(VSSiriInlineTTSStreamTask *)self siriInstrumentation];
  instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  sourceOfTTS = [instrumentMetrics2 sourceOfTTS];
  instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics3 timeToSpeakLatency];
  v10 = v9;
  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  outputRouteInfo = [playbackServices outputRouteInfo];
  v11 = MEMORY[0x277D799C8];
  streamingVoice = [(VSSiriInlineTTSStreamTask *)self streamingVoice];
  type = [streamingVoice type];
  v23 = [v11 typeFromString:type];
  v12 = MEMORY[0x277D799C8];
  streamingVoice2 = [(VSSiriInlineTTSStreamTask *)self streamingVoice];
  quality = [streamingVoice2 quality];
  v15 = [v12 footprintFromString:quality];
  streamingVoice3 = [(VSSiriInlineTTSStreamTask *)self streamingVoice];
  contentVersion = [streamingVoice3 contentVersion];
  integerValue = [contentVersion integerValue];
  streamingResource = [(VSSiriInlineTTSStreamTask *)self streamingResource];
  resourceVersion = [streamingResource resourceVersion];
  LOBYTE(v22) = 0;
  [siriInstrumentation instrumentSpeechStartedWithSource:sourceOfTTS customerPerceivedLatency:outputRouteInfo audioOutputRoute:v23 voiceType:v15 voiceFootprint:integerValue voiceVersion:objc_msgSend(resourceVersion resourceVersion:"integerValue") isWhisper:{v10, v22}];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)suspend
{
  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  [playbackServices pause];
}

- (void)resume
{
  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  start = [playbackServices start];
}

- (void)cancel
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VoiceServicesErrorDomain" code:400 userInfo:0];
  [(VSSiriInlineTTSStreamTask *)self setError:v3];

  if (([(VSSiriInlineTTSStreamTask *)self isExecuting]& 1) != 0 || ([(VSSiriInlineTTSStreamTask *)self isCancelled]& 1) != 0 || ([(VSSiriInlineTTSStreamTask *)self isFinished]& 1) != 0)
  {
    v6.receiver = self;
    v6.super_class = VSSiriInlineTTSStreamTask;
    [(VSSiriInlineTTSStreamTask *)&v6 cancel];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VSSiriInlineTTSStreamTask;
    [(VSSiriInlineTTSStreamTask *)&v7 cancel];
    [(VSSiriInlineTTSStreamTask *)self reportFinish];
  }

  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  [playbackServices stop];

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ServerTTSErrorDomain" code:400 userInfo:MEMORY[0x277CBEC10]];
  [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:v5];
}

- (void)main
{
  v109[1] = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v3 = mach_absolute_time();
  instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics setSynthesisBeginTimestamp:v3];

  v5 = +[VSSiriServerConfiguration defaultConfig];
  experimentIdentifier = [v5 experimentIdentifier];
  instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics2 setExperimentIdentifier:experimentIdentifier];

  kdebug_trace();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  streamID = [(VSSiriInlineTTSStreamTask *)self streamID];
  [defaultCenter addObserver:self selector:sel_handleStreamNotification_ name:streamID object:0];

  v10 = +[VSInlineStreamService sharedService];
  streamID2 = [(VSSiriInlineTTSStreamTask *)self streamID];
  [v10 startStreamingWithId:streamID2];

  do
  {
    [(VSSiriInlineTTSStreamTask *)self timeoutValue];
    v12 = [(VSSiriInlineTTSStreamTask *)self waitForNewData:?];
    error = [(VSSiriInlineTTSStreamTask *)self error];

    if (error)
    {
      break;
    }

    if (!v12)
    {
      instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      synthesisEndTimestamp = [instrumentMetrics3 synthesisEndTimestamp];

      if (!synthesisEndTimestamp)
      {
        instrumentMetrics4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
        speechBeginTimestamp = [instrumentMetrics4 speechBeginTimestamp];

        v20 = VSGetLogDefault();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        if (speechBeginTimestamp)
        {
          if (v21)
          {
            *buf = 0;
            _os_log_error_impl(&dword_2727E4000, v20, OS_LOG_TYPE_ERROR, "Stream TTS network stall.", buf, 2u);
          }

          v22 = 701;
        }

        else
        {
          if (v21)
          {
            *buf = 0;
            _os_log_error_impl(&dword_2727E4000, v20, OS_LOG_TYPE_ERROR, "Inline streaming TTS timeout.", buf, 2u);
          }

          v22 = 702;
        }

        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ServerTTSErrorDomain" code:v22 userInfo:MEMORY[0x277CBEC10]];
        [(VSSiriInlineTTSStreamTask *)self setError:v23];

        error2 = [(VSSiriInlineTTSStreamTask *)self error];
        code = [error2 code];
        instrumentMetrics5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
        [instrumentMetrics5 setErrorCode:code];

        instrumentMetrics6 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
        [instrumentMetrics6 setIsServerTimeout:1];

        v28 = mach_absolute_time();
        instrumentMetrics7 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
        [instrumentMetrics7 setSynthesisEndTimestamp:v28];

        kdebug_trace();
        notify_post([*MEMORY[0x277D79A18] UTF8String]);
        break;
      }
    }

    instrumentMetrics8 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    synthesisEndTimestamp2 = [instrumentMetrics8 synthesisEndTimestamp];
  }

  while (!synthesisEndTimestamp2);
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self];

  if (([(VSSiriInlineTTSStreamTask *)self isCancelled]& 1) != 0)
  {
    retryDeviceOnNetworkStall = 0;
  }

  else
  {
    instrumentMetrics9 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    if ([instrumentMetrics9 errorCode] == 701)
    {
      request = [(VSSiriInlineTTSStreamTask *)self request];
      retryDeviceOnNetworkStall = [request retryDeviceOnNetworkStall];
    }

    else
    {
      retryDeviceOnNetworkStall = 0;
    }
  }

  if (([(VSSiriInlineTTSStreamTask *)self isCancelled]& 1) != 0 || ([(VSSiriInlineTTSStreamTask *)self error], v34 = objc_claimAutoreleasedReturnValue(), v34, !v34))
  {
    if (!retryDeviceOnNetworkStall)
    {
      goto LABEL_36;
    }
  }

  else
  {
    deviceTTSCore = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    request2 = [deviceTTSCore request];
    utterance = [request2 utterance];
    v38 = [utterance length];

    if (!v38)
    {
      v39 = MEMORY[0x277CCA9B8];
      v108 = *MEMORY[0x277CCA450];
      v109[0] = @"Missing utterance in the request (preprocessing missing?). Can't fallback to device TTS.";
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:&v108 count:1];
      v41 = [v39 errorWithDomain:@"VoiceServicesErrorDomain" code:100 userInfo:v40];
      [(VSSiriInlineTTSStreamTask *)self setError:v41];

      if ((retryDeviceOnNetworkStall & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  v42 = VSGetLogDefault();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    error3 = [(VSSiriInlineTTSStreamTask *)self error];
    instrumentMetrics10 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    errorCode = [instrumentMetrics10 errorCode];
    *buf = 138412546;
    v105 = error3;
    v106 = 1024;
    v107 = errorCode;
    _os_log_error_impl(&dword_2727E4000, v42, OS_LOG_TYPE_ERROR, "Streaming error: %@, error_code: %d", buf, 0x12u);
  }

  [(VSSiriInlineTTSStreamTask *)self setServerAudio:0];
  finalTimingInfo = [(VSSiriInlineTTSStreamTask *)self finalTimingInfo];
  [finalTimingInfo removeAllObjects];

  [(VSSiriInlineTTSStreamTask *)self setError:0];
  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  [playbackServices stop];

  [(VSSiriInlineTTSStreamTask *)self setPlaybackServices:0];
  if ((retryDeviceOnNetworkStall & 1) != 0 || (-[VSSiriInlineTTSStreamTask instrumentMetrics](self, "instrumentMetrics"), v45 = objc_claimAutoreleasedReturnValue(), v46 = [v45 speechBeginTimestamp], v45, v46))
  {
    v47 = MEMORY[0x277D79940];
    v48 = *MEMORY[0x277D79A10];
    request3 = [(VSSiriInlineTTSStreamTask *)self request];
    languageCode = [request3 languageCode];
    v51 = [v47 localizedInterstitialStringForKey:v48 language:languageCode];

    v52 = MEMORY[0x277CCACA8];
    if (v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = &stru_2881CBD18;
    }

    deviceTTSCore2 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    request4 = [deviceTTSCore2 request];
    utterance2 = [request4 utterance];
    v57 = [v52 stringWithFormat:@"%@ %@", v53, utterance2];
    deviceTTSCore3 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    request5 = [deviceTTSCore3 request];
    [request5 setUtterance:v57];

    v60 = MEMORY[0x277CCACA8];
    deviceTTSCore4 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    request6 = [deviceTTSCore4 request];
    text = [request6 text];
    v64 = [v60 stringWithFormat:@"%@ %@", v53, text];
    deviceTTSCore5 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    request7 = [deviceTTSCore5 request];
    [request7 setText:v64];
  }

  deviceTTSCore6 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
  [deviceTTSCore6 start];

  deviceTTSCore7 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
  error4 = [deviceTTSCore7 error];
  [(VSSiriInlineTTSStreamTask *)self setError:error4];

  instrumentMetrics11 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics11 setIsServerStreamTTS:0];

  instrumentMetrics12 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics12 setIsServerTTS:0];

  instrumentMetrics13 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics13 setIsServerTimeout:1];

  instrumentMetrics14 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics14 setSourceOfTTS:1];

  deviceTTSCore8 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
  selectedVoice = [deviceTTSCore8 selectedVoice];
  v76 = [selectedVoice key];
  instrumentMetrics15 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics15 setVoiceAssetKey:v76];

  deviceTTSCore9 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
  selectedVoiceResource = [deviceTTSCore9 selectedVoiceResource];
  v80 = [selectedVoiceResource key];
  instrumentMetrics16 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics16 setVoiceResourceAssetKey:v80];

LABEL_36:
  error5 = [(VSSiriInlineTTSStreamTask *)self error];

  if (error5)
  {
    error6 = [(VSSiriInlineTTSStreamTask *)self error];
    code2 = [error6 code];
    instrumentMetrics17 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [instrumentMetrics17 setErrorCode:code2];
  }

  else
  {
    playbackServices2 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
    [playbackServices2 flushAndStop];

    error6 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
    instrumentMetrics17 = [error6 error];
    [(VSSiriInlineTTSStreamTask *)self setError:instrumentMetrics17];
  }

  v87 = mach_absolute_time();
  instrumentMetrics18 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics18 setSpeechEndTimestamp:v87];

  error7 = [(VSSiriInlineTTSStreamTask *)self error];

  if (!error7)
  {
    [(VSSiriInlineTTSStreamTask *)self reportInstrumentMetrics];
    [(VSSiriInlineTTSStreamTask *)self reportTimingInfo];
    instrumentMetrics19 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    sourceOfTTS = [instrumentMetrics19 sourceOfTTS];

    if (sourceOfTTS == 3)
    {
      v92 = +[VSDiagnosticService defaultService];
      serverAudio = [(VSSiriInlineTTSStreamTask *)self serverAudio];
      request8 = [(VSSiriInlineTTSStreamTask *)self request];
      [v92 dumpCompressedAudio:serverAudio forRequest:request8];
LABEL_47:

      goto LABEL_48;
    }

    deviceTTSCore10 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    streamAudio = [deviceTTSCore10 streamAudio];

    if (streamAudio)
    {
      v92 = +[VSDiagnosticService defaultService];
      serverAudio = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
      request8 = [serverAudio streamAudio];
      request9 = [(VSSiriInlineTTSStreamTask *)self request];
      [v92 dumpStreamAudio:request8 forRequest:request9];
LABEL_46:

      goto LABEL_47;
    }

    deviceTTSCore11 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    compressedAudio = [deviceTTSCore11 compressedAudio];

    if (compressedAudio)
    {
      v92 = +[VSDiagnosticService defaultService];
      serverAudio = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
      request8 = [serverAudio compressedAudio];
      request9 = [(VSSiriInlineTTSStreamTask *)self request];
      [v92 dumpCompressedAudio:request8 forRequest:request9];
      goto LABEL_46;
    }
  }

LABEL_48:
  [(VSSiriInlineTTSStreamTask *)self reportFinish];
  kdebug_trace();
  v100 = *MEMORY[0x277D85DE8];
}

- (void)signalNewDataWithError:(id)error
{
  errorCopy = error;
  refreshTimeoutCondition = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [refreshTimeoutCondition lock];

  error = [(VSSiriInlineTTSStreamTask *)self error];

  if (!error)
  {
    [(VSSiriInlineTTSStreamTask *)self setError:errorCopy];
  }

  refreshTimeoutCondition2 = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [refreshTimeoutCondition2 signal];

  refreshTimeoutCondition3 = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [refreshTimeoutCondition3 unlock];
}

- (BOOL)waitForNewData:(double)data
{
  refreshTimeoutCondition = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [refreshTimeoutCondition lock];

  refreshTimeoutCondition2 = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:data];
  v8 = [refreshTimeoutCondition2 waitUntilDate:v7];

  refreshTimeoutCondition3 = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [refreshTimeoutCondition3 unlock];

  return v8;
}

- (void)startPlayback
{
  v3 = mach_absolute_time();
  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  start = [playbackServices start];

  v5 = mach_absolute_time() - v3;
  instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics setAudioStartTimestampDiffs:v5];

  if (start)
  {
    [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:start];
  }

  else
  {
    v7 = mach_absolute_time();
    instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [instrumentMetrics2 setSpeechBeginTimestamp:v7];

    [(VSSiriInlineTTSStreamTask *)self reportSpeechStart];
  }
}

- (void)handleEnd:(id)end
{
  v32 = *MEMORY[0x277D85DE8];
  endCopy = end;
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    streamId = [endCopy streamId];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(endCopy, "count")}];
    *buf = 138412546;
    v29 = streamId;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Handle stream end with streamId: %@, count: %@", buf, 0x16u);
  }

  instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  synthesisEndTimestamp = [instrumentMetrics synthesisEndTimestamp];

  if (!synthesisEndTimestamp)
  {
    v10 = mach_absolute_time();
    instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [instrumentMetrics2 setSynthesisEndTimestamp:v10];

    kdebug_trace();
  }

  if ([endCopy errorCode] && objc_msgSend(endCopy, "errorCode") != 200)
  {
    v13 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v14 = MEMORY[0x277CCACA8];
    errorCode = [endCopy errorCode];
    errorMessage = [endCopy errorMessage];
    v17 = [v14 stringWithFormat:@"Unknown inline streaming error %d, %@", errorCode, errorMessage];
    v27 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v19 = [v13 errorWithDomain:@"ServerTTSErrorDomain" code:700 userInfo:v18];

    [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:v19];
  }

  else
  {
    instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    if ([instrumentMetrics3 speechBeginTimestamp])
    {
    }

    else
    {
      instrumentMetrics4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics4 audioDuration];
      v22 = v21;
      [(VSSiriInlineTTSStreamTask *)self bufferDurationLimit];
      v24 = v23;

      if (v22 < v24)
      {
        [(VSSiriInlineTTSStreamTask *)self startPlayback];
      }
    }

    [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:0];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleChunk:(id)chunk
{
  v63 = *MEMORY[0x277D85DE8];
  chunkCopy = chunk;
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    streamId = [chunkCopy streamId];
    *buf = 138412290;
    *&buf[4] = streamId;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Handle stream chunk with streamId: %@", buf, 0xCu);
  }

  instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  serverFirstPacketTimestamp = [instrumentMetrics serverFirstPacketTimestamp];

  if (!serverFirstPacketTimestamp)
  {
    v9 = mach_absolute_time();
    instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [instrumentMetrics2 setServerFirstPacketTimestamp:v9];
  }

  v11 = mach_absolute_time();
  instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics3 setServerLastPacketTimestamp:v11];

  v13 = objc_alloc_init(MEMORY[0x277D79920]);
  playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  if (playbackServices && (v15 = playbackServices, [playbackServices asbd], v15, v59 == 1819304813))
  {
    audioData = [chunkCopy audioData];
    [v13 populateWithPCMData:audioData];
  }

  else
  {
    playbackServices2 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
    if (!playbackServices2 || (v18 = playbackServices2, [playbackServices2 asbd], v18, v58 != 1869641075))
    {
      serverAudio = [MEMORY[0x277CCA9B8] errorWithDomain:@"ServerTTSErrorDomain" code:451 userInfo:MEMORY[0x277CBEC10]];
      [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:serverAudio];
LABEL_25:

      goto LABEL_26;
    }

    audioData = [chunkCopy audioData];
    [v13 populateWithOpusData:audioData];
  }

  playbackServices3 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  v20 = playbackServices3;
  if (playbackServices3)
  {
    [playbackServices3 asbd];
  }

  else
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
  }

  *buf = v55;
  v61 = v56;
  v62 = v57;
  [v13 setAsbd:{buf, v55, v56, v57}];

  playbackServices4 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  audioData2 = [v13 audioData];
  packetCount = [v13 packetCount];
  packetDescriptions = [v13 packetDescriptions];
  [playbackServices4 enqueue:audioData2 packetCount:packetCount packetDescriptions:packetDescriptions];

  instrumentMetrics4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v13 duration];
  v28 = v27;
  [instrumentMetrics4 audioDuration];
  [instrumentMetrics4 setAudioDuration:v28 + v29];

  instrumentMetrics5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics5 audioDuration];
  v32 = v31;
  instrumentMetrics6 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics6 setServerStreamedAudioDuration:v32];

  instrumentMetrics7 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics7 audioDuration];
  v36 = v35;
  [(VSSiriInlineTTSStreamTask *)self bufferDurationLimit];
  if (v36 < v37)
  {

    goto LABEL_18;
  }

  instrumentMetrics8 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  speechBeginTimestamp = [instrumentMetrics8 speechBeginTimestamp];

  if (speechBeginTimestamp)
  {
LABEL_18:
    instrumentMetrics9 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    speechBeginTimestamp2 = [instrumentMetrics9 speechBeginTimestamp];

    if (speechBeginTimestamp2)
    {
      date = [MEMORY[0x277CBEAA8] date];
      playbackBeginDate = [(VSSiriInlineTTSStreamTask *)self playbackBeginDate];
      [date timeIntervalSinceDate:playbackBeginDate];
      v45 = v44;

      instrumentMetrics10 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics10 audioDuration];
      v48 = v47 - v45;

      [(VSSiriInlineTTSStreamTask *)self setTimeoutValue:v48];
    }

    goto LABEL_23;
  }

  v49 = VSGetLogDefault();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2727E4000, v49, OS_LOG_TYPE_INFO, "Reached buffer threshold. Start playing audio.", buf, 2u);
  }

  [(VSSiriInlineTTSStreamTask *)self startPlayback];
  date2 = [MEMORY[0x277CBEAA8] date];
  [(VSSiriInlineTTSStreamTask *)self setPlaybackBeginDate:date2];

  instrumentMetrics11 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics11 audioDuration];
  [(VSSiriInlineTTSStreamTask *)self setTimeoutValue:?];

LABEL_23:
  [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:0];
  standardInstance = [MEMORY[0x277D79998] standardInstance];
  enableAudioDump = [standardInstance enableAudioDump];

  if (enableAudioDump)
  {
    serverAudio = [(VSSiriInlineTTSStreamTask *)self serverAudio];
    [serverAudio concatenateWithAudio:v13];
    goto LABEL_25;
  }

LABEL_26:

  v54 = *MEMORY[0x277D85DE8];
}

- (void)handleBegin:(id)begin
{
  v56 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  speechSynthesisVoice = [beginCopy speechSynthesisVoice];
  [(VSSiriInlineTTSStreamTask *)self setStreamingVoice:speechSynthesisVoice];

  speechSynthesisResource = [beginCopy speechSynthesisResource];
  [(VSSiriInlineTTSStreamTask *)self setStreamingResource:speechSynthesisResource];

  v7 = VSGetLogDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    streamId = [beginCopy streamId];
    text = [beginCopy text];
    decoderStreamDescription = [beginCopy decoderStreamDescription];
    vsDescription = [decoderStreamDescription vsDescription];
    *buf = 138412802;
    *&buf[4] = streamId;
    *&buf[12] = 2112;
    *&buf[14] = text;
    *&buf[22] = 2112;
    *&buf[24] = vsDescription;
    _os_log_impl(&dword_2727E4000, v7, OS_LOG_TYPE_INFO, "Handle stream begin with streamId: %@, text: %@, decoder: %@", buf, 0x20u);
  }

  standardInstance = [MEMORY[0x277D79998] standardInstance];
  [standardInstance streamBufferDuration];
  if (v13 == 0.0)
  {
    [beginCopy streamingPlaybackBufferSize];
  }

  [(VSSiriInlineTTSStreamTask *)self setBufferDurationLimit:v13];

  v14 = objc_alloc_init(MEMORY[0x277D79920]);
  [(VSSiriInlineTTSStreamTask *)self setServerAudio:v14];

  v15 = MEMORY[0x277D79920];
  decoderStreamDescription2 = [beginCopy decoderStreamDescription];
  [v15 asbdFromDescription:decoderStreamDescription2];
  serverAudio = [(VSSiriInlineTTSStreamTask *)self serverAudio];
  *buf = v49;
  *&buf[16] = v50;
  v55 = v51;
  [serverAudio setAsbd:buf];

  v18 = [VSAudioPlaybackService alloc];
  request = [(VSSiriInlineTTSStreamTask *)self request];
  audioSessionID = [request audioSessionID];
  serverAudio2 = [(VSSiriInlineTTSStreamTask *)self serverAudio];
  v22 = serverAudio2;
  if (serverAudio2)
  {
    [serverAudio2 asbd];
  }

  else
  {
    v55 = 0;
    memset(buf, 0, sizeof(buf));
  }

  request2 = [(VSSiriInlineTTSStreamTask *)self request];
  accessoryID = [request2 accessoryID];
  v25 = [(VSAudioPlaybackService *)v18 initWithAudioSessionID:audioSessionID asbd:buf useAVSBAR:accessoryID != 0];

  error = [(VSSiriInlineTTSStreamTask *)self error];
  if (error)
  {
  }

  else
  {
    instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    errorCode = [instrumentMetrics errorCode];

    if (!errorCode)
    {
      [(VSSiriInlineTTSStreamTask *)self setPlaybackServices:v25];
      text2 = [beginCopy text];
      instrumentMetrics2 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics2 setUtterance:text2];

      speechSynthesisVoice2 = [beginCopy speechSynthesisVoice];
      vsDescription2 = [speechSynthesisVoice2 vsDescription];
      instrumentMetrics3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics3 setVoiceAssetKey:vsDescription2];

      speechSynthesisResource2 = [beginCopy speechSynthesisResource];
      vsDescription3 = [speechSynthesisResource2 vsDescription];
      instrumentMetrics4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics4 setVoiceResourceAssetKey:vsDescription3];

      playbackServices = [(VSSiriInlineTTSStreamTask *)self playbackServices];
      outputRouteInfo = [playbackServices outputRouteInfo];
      audioRouteName = [outputRouteInfo audioRouteName];
      instrumentMetrics5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [instrumentMetrics5 setAudioOutputRoute:audioRouteName];

      playbackServices2 = [(VSSiriInlineTTSStreamTask *)self playbackServices];

      if (playbackServices2)
      {
        goto LABEL_13;
      }

      v44 = MEMORY[0x277CCA9B8];
      v52 = *MEMORY[0x277CCA450];
      v53 = @"Unable to create playback service";
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      error2 = [v44 errorWithDomain:@"VoiceServicesErrorDomain" code:450 userInfo:v29];
      [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:error2];
      goto LABEL_19;
    }
  }

  v29 = VSGetLogDefault();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    error2 = [(VSSiriInlineTTSStreamTask *)self error];
    code = [error2 code];
    if (code)
    {
      *buf = 134217984;
      *&buf[4] = code;
      _os_log_error_impl(&dword_2727E4000, v29, OS_LOG_TYPE_ERROR, "Ignoring stream begin: error already occurred: %ld", buf, 0xCu);
    }

    else
    {
      instrumentMetrics6 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      errorCode2 = [instrumentMetrics6 errorCode];
      *buf = 134217984;
      *&buf[4] = errorCode2;
      _os_log_error_impl(&dword_2727E4000, v29, OS_LOG_TYPE_ERROR, "Ignoring stream begin: error already occurred: %ld", buf, 0xCu);
    }

LABEL_19:
  }

LABEL_13:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)handleStreamNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  instrumentMetrics = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [instrumentMetrics audioDuration];
  if (v6 <= 0.8)
  {
  }

  else
  {
    standardInstance = [MEMORY[0x277D79998] standardInstance];
    simulateNetworkStall = [standardInstance simulateNetworkStall];

    if (simulateNetworkStall)
    {
      v9 = VSGetLogDefault();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_15:

        goto LABEL_16;
      }

      object = [notificationCopy object];
      v17 = 138412290;
      v18 = object;
      _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "Simulate network stall is on, ignore object %@", &v17, 0xCu);
LABEL_5:

      goto LABEL_15;
    }
  }

  object2 = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  object3 = [notificationCopy object];
  if (isKindOfClass)
  {
    [(VSSiriInlineTTSStreamTask *)self handleBegin:object3];
  }

  else
  {
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    object3 = [notificationCopy object];
    if (v14)
    {
      [(VSSiriInlineTTSStreamTask *)self handleChunk:object3];
    }

    else
    {
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();

      if ((v15 & 1) == 0)
      {
        v9 = VSGetLogDefault();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        object = [notificationCopy object];
        v17 = 138412290;
        v18 = object;
        _os_log_error_impl(&dword_2727E4000, v9, OS_LOG_TYPE_ERROR, "Unknown streaming object: %@", &v17, 0xCu);
        goto LABEL_5;
      }

      object3 = [notificationCopy object];
      [(VSSiriInlineTTSStreamTask *)self handleEnd:object3];
    }
  }

LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = +[VSInlineStreamService sharedService];
  streamID = [(VSSiriInlineTTSStreamTask *)self streamID];
  [v3 removeStreamId:streamID];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = VSSiriInlineTTSStreamTask;
  [(VSSiriInlineTTSStreamTask *)&v6 dealloc];
}

- (VSSiriInlineTTSStreamTask)initWithRequest:(id)request withStreamID:(id)d
{
  v38 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dCopy = d;
  v33.receiver = self;
  v33.super_class = VSSiriInlineTTSStreamTask;
  v9 = [(VSSiriInlineTTSStreamTask *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_streamID, d);
    v11 = objc_alloc_init(MEMORY[0x277D79938]);
    instrumentMetrics = v10->_instrumentMetrics;
    v10->_instrumentMetrics = v11;

    if ([requestCopy requestCreatedTimestamp])
    {
      requestCreatedTimestamp = [requestCopy requestCreatedTimestamp];
    }

    else
    {
      v14 = VSGetLogDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v14, OS_LOG_TYPE_ERROR, "Using timestamp inside voiced for Stream task", buf, 2u);
      }

      requestCreatedTimestamp = mach_absolute_time();
    }

    [(VSInstrumentMetrics *)v10->_instrumentMetrics setRequestCreatedTimestamp:requestCreatedTimestamp];
    v15 = VSGetLogDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      instrumentMetrics = [(VSSiriInlineTTSStreamTask *)v10 instrumentMetrics];
      requestCreatedTimestamp2 = [instrumentMetrics requestCreatedTimestamp];
      streamID = v10->_streamID;
      *buf = 134218242;
      v35 = requestCreatedTimestamp2;
      v36 = 2112;
      v37 = streamID;
      _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_INFO, "Created Stream task %llu: streamID %@", buf, 0x16u);
    }

    array = [MEMORY[0x277CBEB18] array];
    finalTimingInfo = v10->_finalTimingInfo;
    v10->_finalTimingInfo = array;

    v21 = objc_alloc_init(MEMORY[0x277CCA928]);
    refreshTimeoutCondition = v10->_refreshTimeoutCondition;
    v10->_refreshTimeoutCondition = v21;

    standardInstance = [MEMORY[0x277D79998] standardInstance];
    [standardInstance serverTTSTimeout];
    if (v24 == 0.0)
    {
      v25 = +[VSSiriServerConfiguration defaultConfig];
      clientBundleIdentifier = [requestCopy clientBundleIdentifier];
      [v25 timeoutForAppId:clientBundleIdentifier];
      v10->_timeoutValue = v27;
    }

    else
    {
      v10->_timeoutValue = v24;
    }

    -[VSInstrumentMetrics setCanUseServerTTS:](v10->_instrumentMetrics, "setCanUseServerTTS:", [requestCopy canUseServerTTS]);
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setIsServerStreamTTS:1];
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setIsServerTTS:1];
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setIsSpeechRequest:1];
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setSourceOfTTS:3];
    clientBundleIdentifier2 = [requestCopy clientBundleIdentifier];
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setClientBundleIdentifier:clientBundleIdentifier2];

    v29 = [[VSDeviceTTSCore alloc] initWithRequest:requestCopy];
    deviceTTSCore = v10->_deviceTTSCore;
    v10->_deviceTTSCore = v29;

    [(VSDeviceTTSCore *)v10->_deviceTTSCore setDelegate:v10];
    [(VSDeviceTTSCore *)v10->_deviceTTSCore setInstrumentMetrics:v10->_instrumentMetrics];
  }

  v31 = *MEMORY[0x277D85DE8];
  return v10;
}

@end