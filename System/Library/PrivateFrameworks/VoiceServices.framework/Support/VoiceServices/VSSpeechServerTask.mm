@interface VSSpeechServerTask
- (BOOL)isSpeaking;
- (BOOL)shouldDeferDeviceTTS;
- (BOOL)shouldRelyOnServerTTS;
- (VSSpeechServiceDelegate)delegate;
- (_opaque_pthread_cond_t)timeoutCondition;
- (_opaque_pthread_mutex_t)racingMutex;
- (id)audioPowerProvider;
- (id)eagerTaskHashForRequest:(id)request;
- (id)enqueueAudioData:(id)data;
- (id)handleDeviceSynthesis:(id)synthesis timingInfo:(id)info;
- (id)handleServerResponse:(id)response timingInfo:(id)info;
- (id)voiceKey;
- (void)cancel;
- (void)dealloc;
- (void)fallbackToDeviceSynthesis;
- (void)main;
- (void)ospreyCore:(id)core didReceiveAudio:(id)audio wordTimingInfo:(id)info;
- (void)proceedWithServerTTS;
- (void)proceedWithSpeechCache:(id)cache;
- (void)reportFinish;
- (void)reportInstrumentMetrics;
- (void)reportSpeechStart;
- (void)reportTimingInfo;
- (void)resume;
- (void)setObserverForWordTimings:(id)timings;
- (void)setRacingMutex:(_opaque_pthread_mutex_t *)mutex;
- (void)setTimeoutCondition:(_opaque_pthread_cond_t *)condition;
- (void)speakRetryPhrase;
- (void)suspend;
- (void)writeAudioIfNeeded:(id)needed;
@end

@implementation VSSpeechServerTask

- (void)setRacingMutex:(_opaque_pthread_mutex_t *)mutex
{
  v3 = *&mutex->__opaque[40];
  v5 = *&mutex->__sig;
  v4 = *&mutex->__opaque[8];
  *&self->_racingMutex.__opaque[24] = *&mutex->__opaque[24];
  *&self->_racingMutex.__opaque[40] = v3;
  *&self->_racingMutex.__sig = v5;
  *&self->_racingMutex.__opaque[8] = v4;
}

- (_opaque_pthread_mutex_t)racingMutex
{
  v3 = *&self[7].__sig;
  *&retstr->__sig = *&self[6].__opaque[40];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[7].__opaque[24];
  *&retstr->__opaque[24] = *&self[7].__opaque[8];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setTimeoutCondition:(_opaque_pthread_cond_t *)condition
{
  v4 = *&condition->__opaque[8];
  v3 = *&condition->__opaque[24];
  *&self->_timeoutCondition.__sig = *&condition->__sig;
  *&self->_timeoutCondition.__opaque[8] = v4;
  *&self->_timeoutCondition.__opaque[24] = v3;
}

- (_opaque_pthread_cond_t)timeoutCondition
{
  v3 = *&self[8].__opaque[8];
  *&retstr->__sig = *&self[8].__sig;
  *&retstr->__opaque[8] = v3;
  *&retstr->__opaque[24] = *&self[8].__opaque[24];
  return self;
}

- (VSSpeechServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)ospreyCore:(id)core didReceiveAudio:(id)audio wordTimingInfo:(id)info
{
  coreCopy = core;
  audioCopy = audio;
  infoCopy = info;
  instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
  voiceAssetKey = [instrumentMetrics voiceAssetKey];
  if (voiceAssetKey)
  {
    voiceKey = voiceAssetKey;
  }

  else
  {
    voice = [coreCopy voice];

    if (!voice)
    {
      goto LABEL_6;
    }

    instrumentMetrics = [coreCopy voice];
    voiceKey = [instrumentMetrics voiceKey];
    instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics2 setVoiceAssetKey:voiceKey];
  }

LABEL_6:
  instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
  voiceResourceAssetKey = [instrumentMetrics3 voiceResourceAssetKey];
  if (voiceResourceAssetKey)
  {
    v17 = voiceResourceAssetKey;
  }

  else
  {
    voiceResource = [coreCopy voiceResource];

    if (!voiceResource)
    {
      goto LABEL_11;
    }

    instrumentMetrics3 = [coreCopy voiceResource];
    v17 = [instrumentMetrics3 key];
    instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics4 setVoiceResourceAssetKey:v17];
  }

LABEL_11:
  v20 = [(VSSpeechServerTask *)self handleServerResponse:audioCopy timingInfo:infoCopy];
}

- (id)audioPowerProvider
{
  playbackService = [(VSSpeechServerTask *)self playbackService];
  audioPowerProvider = [playbackService audioPowerProvider];

  return audioPowerProvider;
}

- (void)writeAudioIfNeeded:(id)needed
{
  v24[1] = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    v6 = neededCopy;
  }

  else
  {
    objc_opt_class();
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v5 = neededCopy;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v9 = neededCopy;
  v7 = v5;
  v8 = v6;
LABEL_5:
  speakTask = [(VSSpeechServerTask *)self speakTask];
  if (speakTask)
  {
  }

  else if (![(VSSpeechServerTask *)self shouldSpeak])
  {
    goto LABEL_13;
  }

  if (v8)
  {
    v11 = +[VSDiagnosticService defaultService];
    request = [(VSSpeechServerTask *)self request];
    [v11 dumpStreamAudio:v8 forRequest:request];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    v11 = +[VSDiagnosticService defaultService];
    request = [(VSSpeechServerTask *)self request];
    [v11 dumpCompressedAudio:v7 forRequest:request];
  }

LABEL_13:
  request2 = [(VSSpeechServerTask *)self request];
  outputPath = [request2 outputPath];
  path = [outputPath path];

  if (!path)
  {
    goto LABEL_22;
  }

  if (v8)
  {
    v16 = [v8 writeWaveToFilePath:path];
  }

  else
  {
    if (!v7)
    {
      v17 = 0;
      goto LABEL_19;
    }

    v16 = [v7 writeToFilePath:path];
  }

  v17 = v16 ^ 1;
LABEL_19:
  error = [(VSSpeechServerTask *)self error];

  if (!error && v17)
  {
    v19 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA460];
    v24[0] = @"writeWaveToFilePath failed.";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v21 = [v19 errorWithDomain:@"VoiceServicesErrorDomain" code:501 userInfo:v20];
    [(VSSpeechServerTask *)self setError:v21];
  }

LABEL_22:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)reportFinish
{
  v99[1] = *MEMORY[0x277D85DE8];
  shouldSpeak = self->_shouldSpeak;
  delegate = [(VSSpeechServerTask *)self delegate];
  if (shouldSpeak)
  {
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(VSSpeechServerTask *)self delegate];
      request = [(VSSpeechServerTask *)self request];
      isCancelled = [(VSSpeechServerTask *)self isCancelled];
      error = [(VSSpeechServerTask *)self error];
      [delegate2 speechRequest:request didStopWithSuccess:isCancelled ^ 1u phonemesSpoken:&stru_2881CBD18 error:error];
LABEL_6:
    }
  }

  else
  {
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(VSSpeechServerTask *)self delegate];
      request = [(VSSpeechServerTask *)self request];
      error = [(VSSpeechServerTask *)self instrumentMetrics];
      error2 = [(VSSpeechServerTask *)self error];
      [delegate2 synthesisRequest:request didFinishWithInstrumentMetrics:error error:error2];

      goto LABEL_6;
    }
  }

  speakTask = [(VSSpeechServerTask *)self speakTask];
  if (speakTask)
  {
    v13 = speakTask;
    speakTask2 = [(VSSpeechServerTask *)self speakTask];
    delegate3 = [speakTask2 delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      speakTask3 = [(VSSpeechServerTask *)self speakTask];
      delegate4 = [speakTask3 delegate];
      speakTask4 = [(VSSpeechServerTask *)self speakTask];
      request2 = [speakTask4 request];
      isCancelled2 = [(VSSpeechServerTask *)self isCancelled];
      error3 = [(VSSpeechServerTask *)self error];
      [delegate4 speechRequest:request2 didStopWithSuccess:isCancelled2 ^ 1u phonemesSpoken:&stru_2881CBD18 error:error3];
    }
  }

  error4 = [(VSSpeechServerTask *)self error];
  if (!error4)
  {
    goto LABEL_14;
  }

  v24 = error4;
  error5 = [(VSSpeechServerTask *)self error];
  if ([error5 code] == 400)
  {

LABEL_14:
    speakTask5 = [(VSSpeechServerTask *)self speakTask];
    if (speakTask5)
    {
      isEagerCache = 1;
    }

    else
    {
      isEagerCache = [(VSSpeechServerTask *)self isEagerCache];
    }

    voiceKey = [(VSSpeechServerTask *)self voiceKey];
    v31 = VSGetLogDefault();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
      isCancelled3 = [(VSSpeechServerTask *)self isCancelled];
      v33 = @"Finished";
      if (isCancelled3)
      {
        v33 = @"Cancelled";
      }

      v78 = v33;
      isSpeaking = [(VSSpeechServerTask *)self isSpeaking];
      v35 = @"synthesizing";
      if (isSpeaking)
      {
        v35 = @"speaking";
      }

      v77 = v35;
      request3 = [(VSSpeechServerTask *)self request];
      logUtterance = [request3 logUtterance];
      v37 = @"(null)";
      if (voiceKey)
      {
        v37 = voiceKey;
      }

      v88[0] = v37;
      v86 = logUtterance;
      v87[0] = @"voice";
      v87[1] = @"is_eager";
      v82 = [MEMORY[0x277CCABB0] numberWithBool:isEagerCache];
      v88[1] = v82;
      v87[2] = @"is_one_shot";
      v38 = MEMORY[0x277CCABB0];
      instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
      isServerTTS = [instrumentMetrics2 isServerTTS];
      v85 = voiceKey;
      if (isServerTTS)
      {
        instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
        if ([instrumentMetrics3 isSynthesisCached])
        {
          v39 = isEagerCache ^ 1;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = 0;
      }

      v40 = [v38 numberWithInt:v39];
      v88[2] = v40;
      v87[3] = @"is_time_out";
      v41 = MEMORY[0x277CCABB0];
      instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
      v43 = [v41 numberWithBool:{objc_msgSend(instrumentMetrics4, "isServerTimeout")}];
      v88[3] = v43;
      v87[4] = @"is_device_tts";
      v44 = MEMORY[0x277CCABB0];
      instrumentMetrics5 = [(VSSpeechServerTask *)self instrumentMetrics];
      v46 = [v44 numberWithInt:{objc_msgSend(instrumentMetrics5, "isServerTTS") ^ 1}];
      v88[4] = v46;
      v87[5] = @"source_of_tts";
      v47 = MEMORY[0x277D79938];
      instrumentMetrics6 = [(VSSpeechServerTask *)self instrumentMetrics];
      v49 = [v47 stringOfSourceOfTTS:{objc_msgSend(instrumentMetrics6, "sourceOfTTS")}];
      v88[5] = v49;
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:6];
      *buf = 134219010;
      v90 = requestCreatedTimestamp;
      v91 = 2112;
      v92 = v78;
      v93 = 2112;
      v94 = v77;
      v95 = 2112;
      v96 = v86;
      v97 = 2114;
      v98 = v50;
      _os_log_impl(&dword_2727E4000, v31, OS_LOG_TYPE_DEFAULT, "Server task %llu: %@ %@ utterance: '%@', %{public}@", buf, 0x34u);

      if (isServerTTS)
      {
      }

      voiceKey = v85;
    }

    isCancelled4 = [(VSSpeechServerTask *)self isCancelled];
    siriInstrumentation = [(VSSpeechServerTask *)self siriInstrumentation];
    v53 = siriInstrumentation;
    if (isCancelled4)
    {
      [siriInstrumentation instrumentSpeechCancelled];
    }

    else
    {
      instrumentMetrics7 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics7 audioDuration];
      v56 = v55;
      instrumentMetrics8 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics8 ttsSynthesisLatency];
      v59 = v58;
      instrumentMetrics9 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics9 cappedRealTimeFactor];
      v62 = v61;
      instrumentMetrics10 = [(VSSpeechServerTask *)self instrumentMetrics];
      promptCount = [instrumentMetrics10 promptCount];
      instrumentMetrics11 = [(VSSpeechServerTask *)self instrumentMetrics];
      [v53 instrumentSpeechEndedWithAudioDuration:promptCount synthesisLatency:objc_msgSend(instrumentMetrics11 realTimeFactor:"errorCode") promptCount:v56 errorCode:{v59, v62}];
    }

    v66 = MEMORY[0x277D79918];
    instrumentMetrics12 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v66 reportInstrumentMetrics:instrumentMetrics12];
    goto LABEL_36;
  }

  error6 = [(VSSpeechServerTask *)self error];
  code = [error6 code];

  if (code == 501)
  {
    goto LABEL_14;
  }

  v69 = VSGetLogDefault();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    instrumentMetrics13 = [(VSSpeechServerTask *)self instrumentMetrics];
    requestCreatedTimestamp2 = [instrumentMetrics13 requestCreatedTimestamp];
    error7 = [(VSSpeechServerTask *)self error];
    *buf = 134218242;
    v90 = requestCreatedTimestamp2;
    v91 = 2112;
    v92 = error7;
    _os_log_error_impl(&dword_2727E4000, v69, OS_LOG_TYPE_ERROR, "Error in server task %llu, error: %@", buf, 0x16u);
  }

  voiceKey = [(VSSpeechServerTask *)self siriInstrumentation];
  v70 = MEMORY[0x277CCABB0];
  instrumentMetrics12 = [(VSSpeechServerTask *)self error];
  v71 = [v70 numberWithInteger:{objc_msgSend(instrumentMetrics12, "code")}];
  v99[0] = v71;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:1];
  [(__CFString *)voiceKey instrumentSpeechFailedWithErrorCodes:v72];

LABEL_36:
  v68 = *MEMORY[0x277D85DE8];
}

- (id)voiceKey
{
  instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
  isServerTTS = [instrumentMetrics isServerTTS];

  if ((isServerTTS & 1) == 0)
  {
    synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
    selectedVoice = [synthesisCore selectedVoice];
    voiceData = [selectedVoice voiceData];
    descriptiveKey = [voiceData descriptiveKey];

    goto LABEL_5;
  }

  instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
  sourceOfTTS = [instrumentMetrics2 sourceOfTTS];

  if (sourceOfTTS == 5)
  {
    synthesisCore = [(VSSpeechServerTask *)self ospreyCore];
    selectedVoice = [synthesisCore voice];
    descriptiveKey = [selectedVoice descriptiveKey];
LABEL_5:

    goto LABEL_7;
  }

  synthesisCore = [(VSSpeechServerTask *)self instrumentMetrics];
  descriptiveKey = [synthesisCore voiceAssetKey];
LABEL_7:

  return descriptiveKey;
}

- (void)reportInstrumentMetrics
{
  v46 = *MEMORY[0x277D85DE8];
  if (self->_shouldSpeak)
  {
    delegate = [(VSSpeechServerTask *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [(VSSpeechServerTask *)self delegate];
      request = [(VSSpeechServerTask *)self request];
      instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
      [delegate2 speechRequest:request didReportInstrumentMetrics:instrumentMetrics];
    }
  }

  speakTask = [(VSSpeechServerTask *)self speakTask];
  delegate3 = [speakTask delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    speakTask2 = [(VSSpeechServerTask *)self speakTask];
    instrumentMetrics2 = [speakTask2 instrumentMetrics];

    instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
    voiceAssetKey = [instrumentMetrics3 voiceAssetKey];
    [instrumentMetrics2 setVoiceAssetKey:voiceAssetKey];

    instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
    voiceResourceAssetKey = [instrumentMetrics4 voiceResourceAssetKey];
    [instrumentMetrics2 setVoiceResourceAssetKey:voiceResourceAssetKey];

    instrumentMetrics5 = [(VSSpeechServerTask *)self instrumentMetrics];
    utterance = [instrumentMetrics5 utterance];
    [instrumentMetrics2 setUtterance:utterance];

    instrumentMetrics6 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics2 setSynthesisBeginTimestamp:{objc_msgSend(instrumentMetrics6, "synthesisBeginTimestamp")}];

    instrumentMetrics7 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics2 setSynthesisEndTimestamp:{objc_msgSend(instrumentMetrics7, "synthesisEndTimestamp")}];

    instrumentMetrics8 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics2 setSpeechBeginTimestamp:{objc_msgSend(instrumentMetrics8, "speechBeginTimestamp")}];

    instrumentMetrics9 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics2 setSpeechEndTimestamp:{objc_msgSend(instrumentMetrics9, "speechEndTimestamp")}];

    instrumentMetrics10 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics2 setAudioStartTimestampDiffs:{objc_msgSend(instrumentMetrics10, "audioStartTimestampDiffs")}];

    instrumentMetrics11 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics11 audioDuration];
    [instrumentMetrics2 setAudioDuration:?];

    requestCreatedTimestamp = [instrumentMetrics2 requestCreatedTimestamp];
    instrumentMetrics12 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics2 setEagerRequestCreatedTimestampDiffs:{requestCreatedTimestamp - objc_msgSend(instrumentMetrics12, "requestCreatedTimestamp")}];

    instrumentMetrics13 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics2 setIsServerTimeout:{objc_msgSend(instrumentMetrics13, "isServerTimeout")}];

    speakTask3 = [(VSSpeechServerTask *)self speakTask];
    delegate4 = [speakTask3 delegate];
    speakTask4 = [(VSSpeechServerTask *)self speakTask];
    request2 = [speakTask4 request];
    instrumentMetrics14 = [(VSSpeechServerTask *)self instrumentMetrics];
    [delegate4 speechRequest:request2 didReportInstrumentMetrics:instrumentMetrics14];
  }

  v33 = VSGetLogDefault();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    instrumentMetrics15 = [(VSSpeechServerTask *)self instrumentMetrics];
    requestCreatedTimestamp2 = [instrumentMetrics15 requestCreatedTimestamp];
    instrumentMetrics16 = [(VSSpeechServerTask *)self instrumentMetrics];
    v42 = 134218242;
    v43 = requestCreatedTimestamp2;
    v44 = 2112;
    v45 = instrumentMetrics16;
    _os_log_impl(&dword_2727E4000, v33, OS_LOG_TYPE_DEFAULT, "Server task %llu: Instrument metric: %@", &v42, 0x16u);
  }

  v37 = +[VSDiagnosticService defaultService];
  instrumentMetrics17 = [(VSSpeechServerTask *)self instrumentMetrics];
  dictionaryMetrics = [instrumentMetrics17 dictionaryMetrics];
  instrumentMetrics18 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v37 dumpInstrumentMetrics:dictionaryMetrics withTimestamp:{objc_msgSend(instrumentMetrics18, "requestCreatedTimestamp")}];

  v41 = *MEMORY[0x277D85DE8];
}

- (void)reportSpeechStart
{
  v43 = *MEMORY[0x277D85DE8];
  if (self->_shouldSpeak)
  {
    delegate = [(VSSpeechServerTask *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [(VSSpeechServerTask *)self delegate];
      request = [(VSSpeechServerTask *)self request];
      [delegate2 speechRequestDidStart:request];
    }
  }

  speakTask = [(VSSpeechServerTask *)self speakTask];
  if (speakTask)
  {
    v8 = speakTask;
    speakTask2 = [(VSSpeechServerTask *)self speakTask];
    delegate3 = [speakTask2 delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      speakTask3 = [(VSSpeechServerTask *)self speakTask];
      delegate4 = [speakTask3 delegate];
      speakTask4 = [(VSSpeechServerTask *)self speakTask];
      request2 = [speakTask4 request];
      [delegate4 speechRequestDidStart:request2];
    }
  }

  if ([(VSSpeechServerTask *)self useServerResponse])
  {
    ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
    voice = [ospreyCore voice];
  }

  else
  {
    ospreyCore = [(VSSpeechServerTask *)self synthesisCore];
    selectedVoice = [ospreyCore selectedVoice];
    voice = [selectedVoice voiceData];
  }

  if ([(VSSpeechServerTask *)self useServerResponse])
  {
    ospreyCore2 = [(VSSpeechServerTask *)self ospreyCore];
    [ospreyCore2 voiceResource];
  }

  else
  {
    ospreyCore2 = [(VSSpeechServerTask *)self synthesisCore];
    [ospreyCore2 selectedVoiceResource];
  }
  v39 = ;

  siriInstrumentation = [(VSSpeechServerTask *)self siriInstrumentation];
  instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
  sourceOfTTS = [instrumentMetrics sourceOfTTS];
  instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics2 timeToSpeakLatency];
  v22 = v21;
  playbackService = [(VSSpeechServerTask *)self playbackService];
  outputRouteInfo = [playbackService outputRouteInfo];
  type = [voice type];
  footprint = [voice footprint];
  [voice contentVersion];
  v26 = v40 = voice;
  unsignedIntegerValue = [v26 unsignedIntegerValue];
  contentVersion = [v39 contentVersion];
  unsignedIntegerValue2 = [contentVersion unsignedIntegerValue];
  request3 = [(VSSpeechServerTask *)self request];
  LOBYTE(v34) = [request3 shouldWhisper];
  [siriInstrumentation instrumentSpeechStartedWithSource:sourceOfTTS customerPerceivedLatency:outputRouteInfo audioOutputRoute:type voiceType:footprint voiceFootprint:unsignedIntegerValue voiceVersion:unsignedIntegerValue2 resourceVersion:v22 isWhisper:v34];

  v31 = VSGetLogDefault();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
    *buf = 134217984;
    requestCreatedTimestamp = [instrumentMetrics3 requestCreatedTimestamp];
    _os_log_debug_impl(&dword_2727E4000, v31, OS_LOG_TYPE_DEBUG, "Server task %llu started speaking", buf, 0xCu);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)reportTimingInfo
{
  shouldSpeak = self->_shouldSpeak;
  delegate = [(VSSpeechServerTask *)self delegate];
  if (shouldSpeak)
  {
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    delegate2 = [(VSSpeechServerTask *)self delegate];
    request = [(VSSpeechServerTask *)self request];
    wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];
    [delegate2 speechRequest:request didReceiveTimingInfo:wordTimingInfo];
  }

  else
  {
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_7;
    }

    delegate2 = [(VSSpeechServerTask *)self delegate];
    request = [(VSSpeechServerTask *)self request];
    wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];
    [delegate2 synthesisRequest:request didReceiveTimingInfo:wordTimingInfo];
  }

LABEL_7:
  speakTask = [(VSSpeechServerTask *)self speakTask];
  delegate3 = [speakTask delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    speakTask2 = [(VSSpeechServerTask *)self speakTask];
    delegate4 = [speakTask2 delegate];
    speakTask3 = [(VSSpeechServerTask *)self speakTask];
    request2 = [speakTask3 request];
    wordTimingInfo2 = [(VSSpeechServerTask *)self wordTimingInfo];
    [delegate4 speechRequest:request2 didReceiveTimingInfo:wordTimingInfo2];
  }
}

- (void)setObserverForWordTimings:(id)timings
{
  timingsCopy = timings;
  objc_initWeak(&location, self);
  playbackService = [(VSSpeechServerTask *)self playbackService];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__VSSpeechServerTask_setObserverForWordTimings___block_invoke;
  v6[3] = &unk_279E4B9C0;
  objc_copyWeak(&v7, &location);
  [playbackService setBoundaryTimeObserverForTimingInfos:timingsCopy usingBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __48__VSSpeechServerTask_setObserverForWordTimings___block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[248] == 1)
    {
      v5 = [WeakRetained delegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = [v4 delegate];
        v8 = [v4 request];
        v9 = [v21 textRange];
        [v7 speechRequest:v8 didStartWithMark:1 forRange:{v9, v10}];
      }
    }

    v11 = [v4 speakTask];
    if (v11)
    {
      v12 = v11;
      v13 = [v4 speakTask];
      v14 = [v13 delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = [v4 speakTask];
        v17 = [v16 delegate];
        v18 = [v4 request];
        v19 = [v21 textRange];
        [v17 speechRequest:v18 didStartWithMark:1 forRange:{v19, v20}];
      }
    }
  }
}

- (BOOL)isSpeaking
{
  if (self->_shouldSpeak)
  {
    return 1;
  }

  speakTask = [(VSSpeechServerTask *)self speakTask];
  v2 = speakTask != 0;

  return v2;
}

- (void)resume
{
  playbackService = [(VSSpeechServerTask *)self playbackService];
  start = [playbackService start];
}

- (void)suspend
{
  playbackService = [(VSSpeechServerTask *)self playbackService];
  [playbackService pause];
}

- (void)cancel
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VoiceServicesErrorDomain" code:400 userInfo:0];
  [(VSSpeechServerTask *)self setError:v3];

  if (([(VSSpeechServerTask *)self isExecuting]& 1) != 0 || ([(VSSpeechServerTask *)self isCancelled]& 1) != 0 || ([(VSSpeechServerTask *)self isFinished]& 1) != 0)
  {
    v7.receiver = self;
    v7.super_class = VSSpeechServerTask;
    [(VSSpeechServerTask *)&v7 cancel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VSSpeechServerTask;
    [(VSSpeechServerTask *)&v8 cancel];
    [(VSSpeechServerTask *)self reportFinish];
  }

  playbackService = [(VSSpeechServerTask *)self playbackService];
  [playbackService stop];

  synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
  [synthesisCore cancel];

  ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
  [ospreyCore cancel];

  pthread_cond_broadcast(&self->_timeoutCondition);
}

- (void)proceedWithServerTTS
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = mach_absolute_time();
  instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics setSynthesisBeginTimestamp:v3];

  kdebug_trace();
  mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
  request = [(VSSpeechServerTask *)self request];
  languageCode = [request languageCode];
  v8 = [mEMORY[0x277D79950] selectVoiceResourceAssetForLanguage:languageCode];

  request2 = [(VSSpeechServerTask *)self request];
  voiceName = [request2 voiceName];
  v11 = [voiceName length];

  if (!v11)
  {
    request3 = [(VSSpeechServerTask *)self request];
    gender = [request3 gender];

    if (!gender)
    {
      defaultVoiceGender = [v8 defaultVoiceGender];
      request4 = [(VSSpeechServerTask *)self request];
      [request4 setGender:defaultVoiceGender];
    }

    request5 = [(VSSpeechServerTask *)self request];
    v17 = [v8 defaultVoiceNameForGender:{objc_msgSend(request5, "gender")}];
    request6 = [(VSSpeechServerTask *)self request];
    [request6 setVoiceName:v17];
  }

  v19 = objc_opt_new();
  request7 = [(VSSpeechServerTask *)self request];
  text = [request7 text];
  request8 = [(VSSpeechServerTask *)self request];
  languageCode2 = [request8 languageCode];
  request9 = [(VSSpeechServerTask *)self request];
  voiceName2 = [request9 voiceName];
  v26 = [v19 estimatedTTSWordTimingForText:text withLanguage:languageCode2 voiceName:voiceName2];
  [(VSSpeechServerTask *)self setWordTimingInfo:v26];

  wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];

  if (wordTimingInfo)
  {
    [(VSSpeechServerTask *)self reportTimingInfo];
  }

  v28 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__VSSpeechServerTask_proceedWithServerTTS__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_async(v28, block);

  request10 = [(VSSpeechServerTask *)self request];
  disableDeviceRacing = [request10 disableDeviceRacing];

  if (disableDeviceRacing)
  {
    v31 = VSGetLogDefault();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v32 = "Device TTS will not race";
    v33 = v31;
    v34 = 2;
    goto LABEL_14;
  }

  instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics2 setIsServerTTSRacing:1];

  v36 = VSGetLogDefault();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2727E4000, v36, OS_LOG_TYPE_DEFAULT, "Device TTS is racing with Server TTS", buf, 2u);
  }

  synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
  [synthesisCore start];

  v31 = VSGetLogDefault();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    [(VSSpeechServerTask *)self deviceTTSWaitTime];
    *buf = 134217984;
    v54 = v38;
    v32 = "Device TTS wait time for server audio: %.2f";
    v33 = v31;
    v34 = 12;
LABEL_14:
    _os_log_impl(&dword_2727E4000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
  }

LABEL_15:

  shouldRelyOnServerTTS = [(VSSpeechServerTask *)self shouldRelyOnServerTTS];
  if (([(VSSpeechServerTask *)self isCancelled]& 1) == 0)
  {
    if (shouldRelyOnServerTTS)
    {
      ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
      [ospreyCore waitUntilFinished];
    }

    else
    {
      [(VSSpeechServerTask *)self deviceTTSWaitTime];
      if (v41 <= 0.0)
      {
        goto LABEL_27;
      }

      ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
      [(VSSpeechServerTask *)self deviceTTSWaitTime];
      [ospreyCore waitUntilFinishedIfAudioReceivedWithin:?];
    }

    if (([(VSSpeechServerTask *)self isCancelled]& 1) == 0)
    {
      ospreyCore2 = [(VSSpeechServerTask *)self ospreyCore];
      error = [ospreyCore2 error];
      code = [error code];

      if (code != 603)
      {
        ospreyCore3 = [(VSSpeechServerTask *)self ospreyCore];
        error2 = [ospreyCore3 error];
        if (error2)
        {
        }

        else
        {
          error3 = [(VSSpeechServerTask *)self error];
          domain = [error3 domain];
          v50 = [domain isEqualToString:@"ServerTTSErrorDomain"];

          if (!v50)
          {
            goto LABEL_27;
          }
        }

        [(VSSpeechServerTask *)self fallbackToDeviceSynthesis];
        goto LABEL_27;
      }

      instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics3 setErrorCode:603];

      [(VSSpeechServerTask *)self speakRetryPhrase];
    }
  }

LABEL_27:

  v51 = *MEMORY[0x277D85DE8];
}

void __42__VSSpeechServerTask_proceedWithServerTTS__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ospreyCore];
  [v1 start];
}

- (void)proceedWithSpeechCache:(id)cache
{
  cacheCopy = cache;
  [(VSSpeechServerTask *)self setUseServerResponse:1];
  voiceKey = [cacheCopy voiceKey];
  instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics setVoiceAssetKey:voiceKey];

  instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics2 setIsCacheHitFromMemory:1];

  timingInfos = [cacheCopy timingInfos];
  [(VSSpeechServerTask *)self setWordTimingInfo:timingInfos];

  [(VSSpeechServerTask *)self reportTimingInfo];
  audio = [cacheCopy audio];
  v10 = [(VSSpeechServerTask *)self enqueueAudioData:audio];

  wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];
  [(VSSpeechServerTask *)self setObserverForWordTimings:wordTimingInfo];

  audio2 = [cacheCopy audio];

  [(VSSpeechServerTask *)self setServerAudio:audio2];
}

- (void)main
{
  kdebug_trace();
  serverTTSConfig = [(VSSpeechServerTask *)self serverTTSConfig];
  experimentIdentifier = [serverTTSConfig experimentIdentifier];
  instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics setExperimentIdentifier:experimentIdentifier];

  cachingService = [(VSSpeechServerTask *)self cachingService];
  request = [(VSSpeechServerTask *)self request];
  text = [request text];
  v9 = [cachingService popShortTermCacheForHash:text];

  if (v9)
  {
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Inline server TTS is previously cached.", buf, 2u);
    }

    instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics2 setSourceOfTTS:6];
  }

  else
  {
    cachingService2 = [(VSSpeechServerTask *)self cachingService];
    request = [(VSSpeechServerTask *)self request];
    v13 = [(VSSpeechServerTask *)self eagerTaskHashForRequest:request];
    v9 = [cachingService2 popShortTermCacheForHash:v13];

    if (!v9)
    {
      [(VSSpeechServerTask *)self proceedWithServerTTS];
      goto LABEL_10;
    }

    v14 = VSGetLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v44 = 0;
      _os_log_impl(&dword_2727E4000, v14, OS_LOG_TYPE_INFO, "Eager server TTS is previously cached.", v44, 2u);
    }

    [(VSSpeechServerTask *)self setIsEagerCache:1];
  }

  [(VSSpeechServerTask *)self proceedWithSpeechCache:v9];
LABEL_10:
  notify_post([*MEMORY[0x277D79A18] UTF8String]);
  [(VSSpeechServerTask *)self setReadyForEagerTask:0];
  if ([(VSSpeechServerTask *)self shouldSpeak]|| ([(VSSpeechServerTask *)self speakTask], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    playbackService = [(VSSpeechServerTask *)self playbackService];
    [playbackService flushAndStop];

    error = [(VSSpeechServerTask *)self error];

    if (!error)
    {
      playbackService2 = [(VSSpeechServerTask *)self playbackService];
      error2 = [playbackService2 error];
      [(VSSpeechServerTask *)self setError:error2];
    }

    request = mach_absolute_time();
    instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics3 setSpeechEndTimestamp:request];
    goto LABEL_15;
  }

  instrumentMetrics3 = [(VSSpeechServerTask *)self request];
  if (![instrumentMetrics3 shouldCache] || !-[VSSpeechServerTask useServerResponse](self, "useServerResponse") || (-[VSSpeechServerTask isCancelled](self, "isCancelled") & 1) != 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  request = [(VSSpeechServerTask *)self error];

  if (!request)
  {
    instrumentMetrics3 = [(VSSpeechServerTask *)self cachingService];
    request2 = [(VSSpeechServerTask *)self request];
    v33 = [(VSSpeechServerTask *)self eagerTaskHashForRequest:request2];
    serverAudio = [(VSSpeechServerTask *)self serverAudio];
    wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];
    instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
    voiceAssetKey = [instrumentMetrics4 voiceAssetKey];
    instrumentMetrics5 = [(VSSpeechServerTask *)self instrumentMetrics];
    request = [instrumentMetrics5 voiceResourceAssetKey];
    [instrumentMetrics3 enqueueShortTermCacheWithHash:v33 audio:serverAudio timingInfo:wordTimingInfo voiceKey:voiceAssetKey voiceResourceKey:request completion:0];

    goto LABEL_15;
  }

LABEL_16:
  useServerResponse = [(VSSpeechServerTask *)self useServerResponse];
  if (useServerResponse)
  {
    error3 = [(VSSpeechServerTask *)self error];
    if (!error3)
    {
LABEL_24:
      [(VSSpeechServerTask *)self reportInstrumentMetrics];
      goto LABEL_25;
    }

    request = error3;
    if (![(VSSpeechServerTask *)self useDeviceSynthesis])
    {

      goto LABEL_25;
    }
  }

  else if (![(VSSpeechServerTask *)self useDeviceSynthesis])
  {
    goto LABEL_25;
  }

  synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
  error4 = [synthesisCore error];

  if (useServerResponse)
  {
  }

  if (!error4)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (![(VSSpeechServerTask *)self useDeviceSynthesis])
  {
    goto LABEL_28;
  }

  error5 = [(VSSpeechServerTask *)self error];
  ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
  error6 = [ospreyCore error];
  v28 = error6;
  if (error5 == error6)
  {

LABEL_36:
    [(VSSpeechServerTask *)self setError:0];
    if (v9)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  error7 = [(VSSpeechServerTask *)self error];
  domain = [error7 domain];
  v31 = [domain isEqualToString:@"ServerTTSErrorDomain"];

  if (v31)
  {
    goto LABEL_36;
  }

LABEL_28:
  if (v9)
  {
LABEL_29:
    audio = [v9 audio];
LABEL_39:
    synthesisCore2 = audio;
    [(VSSpeechServerTask *)self writeAudioIfNeeded:audio];
    goto LABEL_40;
  }

LABEL_37:
  if ([(VSSpeechServerTask *)self useServerResponse])
  {
    audio = [(VSSpeechServerTask *)self serverAudio];
    goto LABEL_39;
  }

  if (![(VSSpeechServerTask *)self useDeviceSynthesis])
  {
    goto LABEL_41;
  }

  synthesisCore2 = [(VSSpeechServerTask *)self synthesisCore];
  streamAudio = [synthesisCore2 streamAudio];
  if (streamAudio)
  {
    [(VSSpeechServerTask *)self writeAudioIfNeeded:streamAudio];
  }

  else
  {
    synthesisCore3 = [(VSSpeechServerTask *)self synthesisCore];
    compressedAudio = [synthesisCore3 compressedAudio];
    [(VSSpeechServerTask *)self writeAudioIfNeeded:compressedAudio];
  }

LABEL_40:
LABEL_41:
  [(VSSpeechServerTask *)self reportFinish];
  kdebug_trace();
}

- (id)eagerTaskHashForRequest:(id)request
{
  v18 = MEMORY[0x277CCACA8];
  requestCopy = request;
  languageCode = [requestCopy languageCode];
  v5 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(requestCopy, "gender")}];
  v6 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(requestCopy, "voiceType")}];
  v7 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(requestCopy, "footprint")}];
  text = [requestCopy text];
  v9 = MEMORY[0x277CCABB0];
  [requestCopy rate];
  v10 = [v9 numberWithDouble:?];
  v11 = MEMORY[0x277CCABB0];
  [requestCopy pitch];
  v12 = [v11 numberWithDouble:?];
  v13 = MEMORY[0x277CCABB0];
  [requestCopy volume];
  v14 = [v13 numberWithDouble:?];
  contextInfo = [requestCopy contextInfo];

  v16 = [v18 stringWithFormat:@"EagerTTS:%@:%@:%@:%@:%@:%@:%@:%@:%@", languageCode, v5, v6, v7, text, v10, v12, v14, contextInfo];

  return v16;
}

- (id)enqueueAudioData:(id)data
{
  v46[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  [(VSSpeechServerTask *)self setReadyForEagerTask:0];
  instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
  [dataCopy duration];
  v7 = v6;
  [instrumentMetrics audioDuration];
  [instrumentMetrics setAudioDuration:v7 + v8];

  if (![(VSSpeechServerTask *)self shouldSpeak])
  {
    speakTask = [(VSSpeechServerTask *)self speakTask];

    if (!speakTask)
    {
      request = [(VSSpeechServerTask *)self request];
      shouldStreamAudioData = [request shouldStreamAudioData];

      if (shouldStreamAudioData)
      {
        delegate = [(VSSpeechServerTask *)self delegate];
        request2 = [(VSSpeechServerTask *)self request];
        [delegate synthesisRequest:request2 didGenerateAudioChunk:dataCopy];
      }

      goto LABEL_10;
    }
  }

  playbackService = [(VSSpeechServerTask *)self playbackService];

  if (playbackService)
  {
LABEL_4:
    playbackService2 = [(VSSpeechServerTask *)self playbackService];
    audioData = [dataCopy audioData];
    packetCount = [dataCopy packetCount];
    packetDescriptions = [dataCopy packetDescriptions];
    [playbackService2 enqueue:audioData packetCount:packetCount packetDescriptions:packetDescriptions];

    if (![(VSSpeechServerTask *)self speechStartReported])
    {
      v15 = mach_absolute_time();
      instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics2 setSpeechBeginTimestamp:v15];

      [(VSSpeechServerTask *)self reportSpeechStart];
      [(VSSpeechServerTask *)self setSpeechStartReported:1];
    }

LABEL_10:
    start = 0;
    goto LABEL_11;
  }

  if (self->_shouldSpeak)
  {
    request3 = [(VSSpeechServerTask *)self request];
    audioSessionID = [request3 audioSessionID];
  }

  else
  {
    request3 = [(VSSpeechServerTask *)self speakTask];
    v17Request = [request3 request];
    audioSessionID = [v17Request audioSessionID];
  }

  v27 = [VSAudioPlaybackService alloc];
  if (dataCopy)
  {
    [dataCopy asbd];
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
  }

  v28 = [(VSSpeechServerTask *)self request:v42];
  accessoryID = [v28 accessoryID];
  v30 = [(VSAudioPlaybackService *)v27 initWithAudioSessionID:audioSessionID asbd:&v42 useAVSBAR:accessoryID != 0];
  [(VSSpeechServerTask *)self setPlaybackService:v30];

  playbackService3 = [(VSSpeechServerTask *)self playbackService];
  outputRouteInfo = [playbackService3 outputRouteInfo];
  audioRouteName = [outputRouteInfo audioRouteName];
  instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics3 setAudioOutputRoute:audioRouteName];

  playbackService4 = [(VSSpeechServerTask *)self playbackService];

  if (playbackService4)
  {
    v36 = mach_absolute_time();
    playbackService5 = [(VSSpeechServerTask *)self playbackService];
    start = [playbackService5 start];

    if (!start)
    {
      v38 = mach_absolute_time() - v36;
      instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics4 setAudioStartTimestampDiffs:v38];

      goto LABEL_4;
    }
  }

  else
  {
    v40 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA450];
    v46[0] = @"Unable to create playback service";
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    start = [v40 errorWithDomain:@"VoiceServicesErrorDomain" code:450 userInfo:v41];
  }

LABEL_11:

  v24 = *MEMORY[0x277D85DE8];

  return start;
}

- (id)handleDeviceSynthesis:(id)synthesis timingInfo:(id)info
{
  synthesisCopy = synthesis;
  infoCopy = info;
  pthread_mutex_lock(&self->_racingMutex);
  if ([(VSSpeechServerTask *)self useServerResponse])
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_INFO, "Received server TTS previously, ignore device TTS", buf, 2u);
    }

LABEL_5:
    v9 = 0;
    goto LABEL_22;
  }

  if (synthesisCopy)
  {
    instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
    synthesisEndTimestamp = [instrumentMetrics synthesisEndTimestamp];

    if (!synthesisEndTimestamp)
    {
      v12 = mach_absolute_time();
      instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
      [instrumentMetrics2 setSynthesisEndTimestamp:v12];

      kdebug_trace();
    }
  }

  if (![(VSSpeechServerTask *)self useDeviceSynthesis]&& [(VSSpeechServerTask *)self shouldDeferDeviceTTS])
  {
    v14 = VSGetLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v29 = 0;
      _os_log_impl(&dword_2727E4000, v14, OS_LOG_TYPE_INFO, "Received audio from device synthesis, but it's deferred.", v29, 2u);
    }

    if (infoCopy)
    {
      [(VSSpeechServerTask *)self setDeferredTTSTimingInfo:infoCopy];
    }

    goto LABEL_5;
  }

  if (![(VSSpeechServerTask *)self useDeviceSynthesis])
  {
    v15 = VSGetLogDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v30 = 0;
      _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_INFO, "Received audio from device synthesis. Use device synthesis immediately.", v30, 2u);
    }

    [(VSSpeechServerTask *)self setUseDeviceSynthesis:1];
    ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
    [ospreyCore cancel];

    instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics3 setIsServerTTS:0];

    instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics4 setSourceOfTTS:1];
  }

  if (synthesisCopy)
  {
    synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
    selectedVoice = [synthesisCore selectedVoice];
    v21 = [selectedVoice key];
    instrumentMetrics5 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics5 setVoiceAssetKey:v21];

    synthesisCore2 = [(VSSpeechServerTask *)self synthesisCore];
    selectedVoiceResource = [synthesisCore2 selectedVoiceResource];
    v25 = [selectedVoiceResource key];
    instrumentMetrics6 = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics6 setVoiceResourceAssetKey:v25];

    v9 = [(VSSpeechServerTask *)self enqueueAudioData:synthesisCopy];
    if (!infoCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v9 = 0;
  if (infoCopy)
  {
LABEL_21:
    [(VSSpeechServerTask *)self setWordTimingInfo:infoCopy];
    wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];
    [(VSSpeechServerTask *)self setObserverForWordTimings:wordTimingInfo];

    [(VSSpeechServerTask *)self reportTimingInfo];
  }

LABEL_22:
  pthread_mutex_unlock(&self->_racingMutex);

  return v9;
}

- (BOOL)shouldDeferDeviceTTS
{
  if ([(VSSpeechServerTask *)self shouldRelyOnServerTTS])
  {
    return 1;
  }

  [(VSSpeechServerTask *)self deviceTTSWaitTime];
  return v4 > 0.0;
}

- (BOOL)shouldRelyOnServerTTS
{
  request = [(VSSpeechServerTask *)self request];
  if ([request disableDeviceRacing])
  {
    v4 = 1;
  }

  else
  {
    synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
    if ([synthesisCore isCancelled])
    {
      v4 = 1;
    }

    else
    {
      synthesisCore2 = [(VSSpeechServerTask *)self synthesisCore];
      error = [synthesisCore2 error];
      if (error)
      {
        v4 = 1;
      }

      else
      {
        synthesisCore3 = [(VSSpeechServerTask *)self synthesisCore];
        selectedVoice = [synthesisCore3 selectedVoice];
        voiceData = [selectedVoice voiceData];
        if ([voiceData footprint] == 1)
        {
          v4 = 1;
        }

        else
        {
          synthesisCore4 = [(VSSpeechServerTask *)self synthesisCore];
          selectedVoice2 = [synthesisCore4 selectedVoice];
          voiceData2 = [selectedVoice2 voiceData];
          v4 = [voiceData2 type] == 4 && self->_isNeuralFallbackCondition;
        }
      }
    }
  }

  return v4;
}

- (void)fallbackToDeviceSynthesis
{
  v55 = *MEMORY[0x277D85DE8];
  error = [(VSSpeechServerTask *)self error];

  if (error)
  {
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      error2 = [(VSSpeechServerTask *)self error];
      localizedDescription = [error2 localizedDescription];
      *buf = 138412290;
      v54 = localizedDescription;
      _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, "Server network error: %@", buf, 0xCu);
    }
  }

  ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
  if (([ospreyCore isCancelled] & 1) == 0)
  {

    goto LABEL_9;
  }

  ospreyCore2 = [(VSSpeechServerTask *)self ospreyCore];
  error3 = [ospreyCore2 error];
  code = [error3 code];

  if (code == 602)
  {
LABEL_9:
    instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics setIsServerTimeout:1];
  }

  request = [(VSSpeechServerTask *)self request];
  disableDeviceRacing = [request disableDeviceRacing];

  if (disableDeviceRacing)
  {
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_DEFAULT, "Start device synthesis fallback.", buf, 2u);
    }

    synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
    [synthesisCore start];
  }

  synthesisCore2 = [(VSSpeechServerTask *)self synthesisCore];
  error4 = [synthesisCore2 error];
  if (error4)
  {

    goto LABEL_35;
  }

  synthesisCore3 = [(VSSpeechServerTask *)self synthesisCore];
  streamAudio = [synthesisCore3 streamAudio];
  if (streamAudio)
  {
  }

  else
  {
    synthesisCore4 = [(VSSpeechServerTask *)self synthesisCore];
    compressedAudio = [synthesisCore4 compressedAudio];

    if (!compressedAudio)
    {
      goto LABEL_35;
    }
  }

  v20 = VSGetLogDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2727E4000, v20, OS_LOG_TYPE_DEFAULT, "Start playing device synthesis instead.", buf, 2u);
  }

  [(VSSpeechServerTask *)self setUseDeviceSynthesis:1];
  deferredTTSTimingInfo = [(VSSpeechServerTask *)self deferredTTSTimingInfo];
  [(VSSpeechServerTask *)self setWordTimingInfo:deferredTTSTimingInfo];

  instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics2 setIsServerTTS:0];

  instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics3 setSourceOfTTS:1];

  synthesisCore5 = [(VSSpeechServerTask *)self synthesisCore];
  selectedVoice = [synthesisCore5 selectedVoice];
  v26 = [selectedVoice key];
  instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics4 setVoiceAssetKey:v26];

  synthesisCore6 = [(VSSpeechServerTask *)self synthesisCore];
  selectedVoiceResource = [synthesisCore6 selectedVoiceResource];
  domain = [selectedVoiceResource key];
  instrumentMetrics5 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics5 setVoiceResourceAssetKey:domain];

  synthesisCore7 = [(VSSpeechServerTask *)self synthesisCore];
  streamAudio2 = [synthesisCore7 streamAudio];

  synthesisCore8 = [(VSSpeechServerTask *)self synthesisCore];
  synthesisCore9 = synthesisCore8;
  if (streamAudio2)
  {
    streamAudio3 = [synthesisCore8 streamAudio];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __47__VSSpeechServerTask_fallbackToDeviceSynthesis__block_invoke;
    v52[3] = &unk_279E4BB18;
    v52[4] = self;
    [streamAudio3 enumerateAudioWithBlock:v52];
LABEL_25:

    goto LABEL_26;
  }

  compressedAudio2 = [synthesisCore8 compressedAudio];

  if (compressedAudio2)
  {
    synthesisCore9 = [(VSSpeechServerTask *)self synthesisCore];
    streamAudio3 = [synthesisCore9 compressedAudio];
    v38 = [(VSSpeechServerTask *)self enqueueAudioData:streamAudio3];
    goto LABEL_25;
  }

LABEL_26:
  wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];
  [(VSSpeechServerTask *)self setObserverForWordTimings:wordTimingInfo];

  [(VSSpeechServerTask *)self reportTimingInfo];
  ospreyCore3 = [(VSSpeechServerTask *)self ospreyCore];
  error5 = [ospreyCore3 error];
  if (error5)
  {
  }

  else
  {
    error6 = [(VSSpeechServerTask *)self error];
    domain = [error6 domain];
    v43 = [domain isEqualToString:@"ServerTTSErrorDomain"];

    if (!v43)
    {
      goto LABEL_35;
    }
  }

  ospreyCore4 = [(VSSpeechServerTask *)self ospreyCore];
  error7 = [ospreyCore4 error];
  if (error7)
  {
    domain = [(VSSpeechServerTask *)self ospreyCore];
    [domain error];
  }

  else
  {
    [(VSSpeechServerTask *)self error];
  }
  v46 = ;
  code2 = [v46 code];
  instrumentMetrics6 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics6 setErrorCode:code2];

  if (error7)
  {

    v46 = domain;
  }

  [(VSSpeechServerTask *)self setError:0];
LABEL_35:
  v49 = *MEMORY[0x277D85DE8];
}

void __47__VSSpeechServerTask_fallbackToDeviceSynthesis__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v9 = MEMORY[0x277D79920];
  v10 = a4;
  v11 = a2;
  v12 = objc_alloc_init(v9);
  v13 = [*(a1 + 32) synthesisCore];
  v14 = [v13 streamAudio];
  v15 = v14;
  if (v14)
  {
    [v14 asbd];
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
  }

  v17[0] = v19;
  v17[1] = v20;
  v18 = v21;
  [v12 setAsbd:v17];

  [v12 setPacketCount:a3];
  [v12 setPacketDescriptions:v10];

  [v12 setAudioData:v11];
  v16 = [*(a1 + 32) enqueueAudioData:v12];
  if (v16)
  {
    *a5 = 1;
  }
}

- (void)speakRetryPhrase
{
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "Encountered Osprey streaming network stall. Retry with device TTS.", buf, 2u);
  }

  v4 = MEMORY[0x277D79940];
  v5 = *MEMORY[0x277D79A10];
  request = [(VSSpeechServerTask *)self request];
  languageCode = [request languageCode];
  v8 = [v4 localizedInterstitialStringForKey:v5 language:languageCode];

  request2 = [(VSSpeechServerTask *)self request];
  v10 = [request2 copy];

  v11 = MEMORY[0x277CCACA8];
  synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
  request3 = [synthesisCore request];
  utterance = [request3 utterance];
  v15 = [v11 stringWithFormat:@"%@ %@", v8, utterance];
  [v10 setUtterance:v15];

  v16 = MEMORY[0x277CCACA8];
  synthesisCore2 = [(VSSpeechServerTask *)self synthesisCore];
  request4 = [synthesisCore2 request];
  text = [request4 text];
  v20 = [v16 stringWithFormat:@"%@ %@", v8, text];
  [v10 setText:v20];

  playbackService = [(VSSpeechServerTask *)self playbackService];
  [playbackService stop];

  [(VSSpeechServerTask *)self setPlaybackService:0];
  [(VSSpeechServerTask *)self setUseServerResponse:0];
  [(VSSpeechServerTask *)self setUseDeviceSynthesis:1];
  v22 = [[VSDeviceTTSCore alloc] initWithRequest:v10];
  [(VSDeviceTTSCore *)v22 setDelegate:self];
  [(VSDeviceTTSCore *)v22 start];
}

- (id)handleServerResponse:(id)response timingInfo:(id)info
{
  responseCopy = response;
  infoCopy = info;
  pthread_mutex_lock(&self->_racingMutex);
  if ([(VSSpeechServerTask *)self useDeviceSynthesis])
  {
    synthesisCore = [(VSSpeechServerTask *)self synthesisCore];
    selectedVoice = [synthesisCore selectedVoice];
    voiceData = [selectedVoice voiceData];
    footprint = [voiceData footprint];

    if (footprint != 1)
    {
      synthesisCore3 = VSGetLogDefault();
      if (os_log_type_enabled(synthesisCore3, OS_LOG_TYPE_INFO))
      {
        *v33 = 0;
        _os_log_impl(&dword_2727E4000, synthesisCore3, OS_LOG_TYPE_INFO, "Received device synthesis previously, ignore server TTS.", v33, 2u);
      }

      goto LABEL_16;
    }
  }

  if (![(VSSpeechServerTask *)self useServerResponse])
  {
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_DEFAULT, "Received server TTS response. Use Server TTS.", buf, 2u);
    }

    [(VSSpeechServerTask *)self setUseServerResponse:1];
    instrumentMetrics = [(VSSpeechServerTask *)self instrumentMetrics];
    [instrumentMetrics setIsServerTTS:1];
  }

  v14 = mach_absolute_time();
  instrumentMetrics2 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics2 setSynthesisEndTimestamp:v14];

  kdebug_trace();
  ospreyCore = [(VSSpeechServerTask *)self ospreyCore];
  voice = [ospreyCore voice];
  voiceKey = [voice voiceKey];
  instrumentMetrics3 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics3 setVoiceAssetKey:voiceKey];

  ospreyCore2 = [(VSSpeechServerTask *)self ospreyCore];
  voiceResource = [ospreyCore2 voiceResource];
  v22 = [voiceResource key];
  instrumentMetrics4 = [(VSSpeechServerTask *)self instrumentMetrics];
  [instrumentMetrics4 setVoiceResourceAssetKey:v22];

  wordTimingInfo = [(VSSpeechServerTask *)self wordTimingInfo];

  if (!wordTimingInfo)
  {
    [(VSSpeechServerTask *)self setWordTimingInfo:infoCopy];
    [(VSSpeechServerTask *)self reportTimingInfo];
  }

  v25 = [(VSSpeechServerTask *)self enqueueAudioData:responseCopy];
  wordTimingInfo2 = [(VSSpeechServerTask *)self wordTimingInfo];
  [(VSSpeechServerTask *)self setObserverForWordTimings:wordTimingInfo2];

  serverAudio = [(VSSpeechServerTask *)self serverAudio];

  if (serverAudio)
  {
    serverAudio2 = [(VSSpeechServerTask *)self serverAudio];
    [serverAudio2 concatenateWithAudio:responseCopy];
  }

  else
  {
    [(VSSpeechServerTask *)self setServerAudio:responseCopy];
  }

  synthesisCore2 = [(VSSpeechServerTask *)self synthesisCore];
  isCancelled = [synthesisCore2 isCancelled];

  if ((isCancelled & 1) == 0)
  {
    synthesisCore3 = [(VSSpeechServerTask *)self synthesisCore];
    [synthesisCore3 cancel];
LABEL_16:
  }

  pthread_mutex_unlock(&self->_racingMutex);

  return 0;
}

- (void)dealloc
{
  pthread_cond_destroy(&self->_timeoutCondition);
  v3.receiver = self;
  v3.super_class = VSSpeechServerTask;
  [(VSSpeechServerTask *)&v3 dealloc];
}

@end