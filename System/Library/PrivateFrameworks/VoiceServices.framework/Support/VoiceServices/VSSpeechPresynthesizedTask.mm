@interface VSSpeechPresynthesizedTask
- (AudioStreamBasicDescription)asbd;
- (NSString)description;
- (VSSpeechPresynthesizedTask)initWithRequest:(id)request;
- (VSSpeechServiceDelegate)delegate;
- (id)audioPowerProvider;
- (void)cancel;
- (void)main;
- (void)reportFinish;
- (void)reportSpeechStart;
- (void)resume;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
- (void)suspend;
@end

@implementation VSSpeechPresynthesizedTask

- (void)setAsbd:(AudioStreamBasicDescription *)asbd
{
  v3 = *&asbd->mBitsPerChannel;
  v4 = *&asbd->mBytesPerPacket;
  *&self->_asbd.mSampleRate = *&asbd->mSampleRate;
  *&self->_asbd.mBytesPerPacket = v4;
  *&self->_asbd.mBitsPerChannel = v3;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[8].mSampleRate;
  *&retstr->mSampleRate = *&self[7].mBytesPerFrame;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[8].mBytesPerPacket;
  return self;
}

- (VSSpeechServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)audioPowerProvider
{
  playbackService = [(VSSpeechPresynthesizedTask *)self playbackService];
  audioPowerProvider = [playbackService audioPowerProvider];

  return audioPowerProvider;
}

- (void)reportFinish
{
  v66[1] = *MEMORY[0x277D85DE8];
  delegate = [(VSSpeechPresynthesizedTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(VSSpeechPresynthesizedTask *)self delegate];
    request = [(VSSpeechPresynthesizedTask *)self request];
    instrumentMetrics = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
    error = [(VSSpeechPresynthesizedTask *)self error];
    [delegate2 audioRequest:request didReportInstrumentMetrics:instrumentMetrics error:error];
  }

  delegate3 = [(VSSpeechPresynthesizedTask *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate4 = [(VSSpeechPresynthesizedTask *)self delegate];
    request2 = [(VSSpeechPresynthesizedTask *)self request];
    error2 = [(VSSpeechPresynthesizedTask *)self error];
    error3 = [(VSSpeechPresynthesizedTask *)self error];
    [delegate4 audioRequest:request2 didStopAtEnd:error2 == 0 error:error3];
  }

  error4 = [(VSSpeechPresynthesizedTask *)self error];
  if (!error4)
  {
    goto LABEL_9;
  }

  v16 = error4;
  error5 = [(VSSpeechPresynthesizedTask *)self error];
  if ([error5 code] == 400)
  {

LABEL_9:
    v20 = VSGetLogDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics2 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics2 requestCreatedTimestamp];
      if ([(VSSpeechPresynthesizedTask *)self isCancelled])
      {
        v22 = @"Cancelled";
      }

      else
      {
        v22 = @"Finished";
      }

      request3 = [(VSSpeechPresynthesizedTask *)self request];
      text = [request3 text];
      v25 = text;
      if (text)
      {
        v26 = text;
      }

      else
      {
        v26 = &stru_2881CBD18;
      }

      v56 = @"audio_duration";
      v27 = MEMORY[0x277CCABB0];
      instrumentMetrics3 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics3 audioDuration];
      v29 = [v27 numberWithDouble:?];
      v57 = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      *buf = 134218754;
      v59 = requestCreatedTimestamp;
      v60 = 2112;
      v61 = v22;
      v62 = 2112;
      v63 = v26;
      v64 = 2114;
      v65 = v30;
      _os_log_impl(&dword_2727E4000, v20, OS_LOG_TYPE_DEFAULT, "Audio task %llu: %@ speaking utterance '%@', %{public}@", buf, 0x2Au);
    }

    isCancelled = [(VSSpeechPresynthesizedTask *)self isCancelled];
    siriInstrumentation = [(VSSpeechPresynthesizedTask *)self siriInstrumentation];
    siriInstrumentation2 = siriInstrumentation;
    if (isCancelled)
    {
      [siriInstrumentation instrumentSpeechCancelled];
    }

    else
    {
      instrumentMetrics4 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics4 audioDuration];
      v36 = v35;
      instrumentMetrics5 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics5 ttsSynthesisLatency];
      v39 = v38;
      instrumentMetrics6 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics6 cappedRealTimeFactor];
      v42 = v41;
      instrumentMetrics7 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      promptCount = [instrumentMetrics7 promptCount];
      instrumentMetrics8 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [siriInstrumentation2 instrumentSpeechEndedWithAudioDuration:promptCount synthesisLatency:objc_msgSend(instrumentMetrics8 realTimeFactor:"errorCode") promptCount:v36 errorCode:{v39, v42}];
    }

    goto LABEL_23;
  }

  error6 = [(VSSpeechPresynthesizedTask *)self error];
  code = [error6 code];

  if (code == 501)
  {
    goto LABEL_9;
  }

  v46 = VSGetLogDefault();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    request4 = [(VSSpeechPresynthesizedTask *)self request];
    requestCreatedTimestamp2 = [request4 requestCreatedTimestamp];
    error7 = [(VSSpeechPresynthesizedTask *)self error];
    *buf = 134218242;
    v59 = requestCreatedTimestamp2;
    v60 = 2112;
    v61 = error7;
    _os_log_error_impl(&dword_2727E4000, v46, OS_LOG_TYPE_ERROR, "Error in audio task %llu, error: %@", buf, 0x16u);
  }

  siriInstrumentation2 = [(VSSpeechPresynthesizedTask *)self siriInstrumentation];
  v47 = MEMORY[0x277CCABB0];
  error8 = [(VSSpeechPresynthesizedTask *)self error];
  v49 = [v47 numberWithInteger:{objc_msgSend(error8, "code")}];
  v66[0] = v49;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];
  [siriInstrumentation2 instrumentSpeechFailedWithErrorCodes:v50];

LABEL_23:
  v51 = *MEMORY[0x277D85DE8];
}

- (void)reportSpeechStart
{
  delegate = [(VSSpeechPresynthesizedTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(VSSpeechPresynthesizedTask *)self delegate];
    request = [(VSSpeechPresynthesizedTask *)self request];
    [delegate2 audioRequestDidStart:request];
  }

  siriInstrumentation = [(VSSpeechPresynthesizedTask *)self siriInstrumentation];
  instrumentMetrics = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [instrumentMetrics timeToSpeakLatency];
  v9 = v8;
  playbackService = [(VSSpeechPresynthesizedTask *)self playbackService];
  outputRouteInfo = [playbackService outputRouteInfo];
  LOBYTE(v12) = 0;
  [siriInstrumentation instrumentSpeechStartedWithSource:7 customerPerceivedLatency:outputRouteInfo audioOutputRoute:0 voiceType:0 voiceFootprint:0 voiceVersion:0 resourceVersion:v9 isWhisper:v12];
}

- (void)resume
{
  playbackService = [(VSSpeechPresynthesizedTask *)self playbackService];
  start = [playbackService start];
}

- (void)suspend
{
  playbackService = [(VSSpeechPresynthesizedTask *)self playbackService];
  [playbackService pause];
}

- (void)cancel
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VoiceServicesErrorDomain" code:400 userInfo:0];
  [(VSSpeechPresynthesizedTask *)self setError:v3];

  if (([(VSSpeechPresynthesizedTask *)self isExecuting]& 1) != 0 || ([(VSSpeechPresynthesizedTask *)self isCancelled]& 1) != 0 || ([(VSSpeechPresynthesizedTask *)self isFinished]& 1) != 0)
  {
    v7.receiver = self;
    v7.super_class = VSSpeechPresynthesizedTask;
    [(VSSpeechPresynthesizedTask *)&v7 cancel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VSSpeechPresynthesizedTask;
    [(VSSpeechPresynthesizedTask *)&v8 cancel];
    [(VSSpeechPresynthesizedTask *)self reportFinish];
  }

  playbackService = [(VSSpeechPresynthesizedTask *)self playbackService];
  [playbackService stop];

  delegate = [(VSSpeechPresynthesizedTask *)self delegate];
  request = [(VSSpeechPresynthesizedTask *)self request];
  [delegate audioRequest:request didStopAtEnd:0 error:0];
}

- (void)main
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    request = [(VSSpeechPresynthesizedTask *)self request];
    *buf = 138412290;
    *&buf[4] = request;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "Speaking pre-synthesized audio: %@", buf, 0xCu);
  }

  v5 = mach_absolute_time();
  instrumentMetrics = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [instrumentMetrics setSynthesisBeginTimestamp:v5];

  v7 = +[VSSiriServerConfiguration defaultConfig];
  experimentIdentifier = [v7 experimentIdentifier];
  instrumentMetrics2 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [instrumentMetrics2 setExperimentIdentifier:experimentIdentifier];

  v10 = MEMORY[0x277D79920];
  request2 = [(VSSpeechPresynthesizedTask *)self request];
  v12 = [v10 audioDataFromPresynthesisRequest:request2];

  v13 = mach_absolute_time();
  instrumentMetrics3 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [instrumentMetrics3 setSynthesisEndTimestamp:v13];

  if (v12)
  {
    [v12 asbd];
  }

  else
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
  }

  *buf = v52;
  v60 = v53;
  v61 = v54;
  [(VSSpeechPresynthesizedTask *)self setAsbd:buf, v52, v53, v54];
  v15 = [VSAudioPlaybackService alloc];
  request3 = [(VSSpeechPresynthesizedTask *)self request];
  audioSessionID = [request3 audioSessionID];
  [(VSSpeechPresynthesizedTask *)self asbd];
  request4 = [(VSSpeechPresynthesizedTask *)self request];
  accessoryID = [request4 accessoryID];
  v20 = [(VSAudioPlaybackService *)v15 initWithAudioSessionID:audioSessionID asbd:buf useAVSBAR:accessoryID != 0];
  [(VSSpeechPresynthesizedTask *)self setPlaybackService:v20];

  playbackService = [(VSSpeechPresynthesizedTask *)self playbackService];
  outputRouteInfo = [playbackService outputRouteInfo];
  audioRouteName = [outputRouteInfo audioRouteName];
  instrumentMetrics4 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [instrumentMetrics4 setAudioOutputRoute:audioRouteName];

  playbackService2 = [(VSSpeechPresynthesizedTask *)self playbackService];

  if (!playbackService2)
  {
    v46 = MEMORY[0x277CCA9B8];
    v57 = *MEMORY[0x277CCA470];
    v58 = @"Can't create VSAudioPlaybackService";
    v47 = MEMORY[0x277CBEAC0];
    v48 = &v58;
    v49 = &v57;
LABEL_13:
    instrumentMetrics8 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:1];
    v50 = [v46 errorWithDomain:@"VoiceServicesErrorDomain" code:0 userInfo:instrumentMetrics8];
    [(VSSpeechPresynthesizedTask *)self setError:v50];

    goto LABEL_14;
  }

  if (!v12)
  {
    v46 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA450];
    v56 = @"Can't decode audio data";
    v47 = MEMORY[0x277CBEAC0];
    v48 = &v56;
    v49 = &v55;
    goto LABEL_13;
  }

  if (([(VSSpeechPresynthesizedTask *)self isCancelled]& 1) == 0)
  {
    error = [(VSSpeechPresynthesizedTask *)self error];

    if (!error)
    {
      v27 = mach_absolute_time();
      playbackService3 = [(VSSpeechPresynthesizedTask *)self playbackService];
      start = [playbackService3 start];

      v30 = mach_absolute_time() - v27;
      instrumentMetrics5 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics5 setAudioStartTimestampDiffs:v30];

      playbackService4 = [(VSSpeechPresynthesizedTask *)self playbackService];
      audioData = [v12 audioData];
      packetCount = [v12 packetCount];
      packetDescriptions = [v12 packetDescriptions];
      [playbackService4 enqueue:audioData packetCount:packetCount packetDescriptions:packetDescriptions];

      v36 = mach_absolute_time();
      instrumentMetrics6 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics6 setSpeechBeginTimestamp:v36];

      [(VSSpeechPresynthesizedTask *)self reportSpeechStart];
      playbackService5 = [(VSSpeechPresynthesizedTask *)self playbackService];
      [playbackService5 flushAndStop];

      playbackService6 = [(VSSpeechPresynthesizedTask *)self playbackService];
      error2 = [playbackService6 error];
      [(VSSpeechPresynthesizedTask *)self setError:error2];

      v41 = mach_absolute_time();
      instrumentMetrics7 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics7 setSpeechEndTimestamp:v41];

      [v12 duration];
      v44 = v43;
      instrumentMetrics8 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [instrumentMetrics8 setAudioDuration:v44];
LABEL_14:
    }
  }

  [(VSSpeechPresynthesizedTask *)self reportFinish];

  v51 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[VSSpeechPresynthesizedTask isExecuting](self, "isExecuting")}];
  v5 = [v3 stringWithFormat:@"task: inprogress %@, request: %@", v4, self->_request];

  return v5;
}

- (VSSpeechPresynthesizedTask)initWithRequest:(id)request
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v18.receiver = self;
  v18.super_class = VSSpeechPresynthesizedTask;
  v6 = [(VSSpeechPresynthesizedTask *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    v8 = objc_alloc_init(MEMORY[0x277D79938]);
    instrumentMetrics = v7->_instrumentMetrics;
    v7->_instrumentMetrics = v8;

    [(VSInstrumentMetrics *)v7->_instrumentMetrics setSourceOfTTS:7];
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
        _os_log_error_impl(&dword_2727E4000, v11, OS_LOG_TYPE_ERROR, "Using timestamp inside voiced for Presynthesized task", buf, 2u);
      }

      requestCreatedTimestamp = mach_absolute_time();
    }

    [(VSInstrumentMetrics *)v7->_instrumentMetrics setRequestCreatedTimestamp:requestCreatedTimestamp];
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      instrumentMetrics = [(VSSpeechPresynthesizedTask *)v7 instrumentMetrics];
      requestCreatedTimestamp2 = [instrumentMetrics requestCreatedTimestamp];
      *buf = 134217984;
      v20 = requestCreatedTimestamp2;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_INFO, "Created Presynthesized Task %llu", buf, 0xCu);
    }

    clientBundleIdentifier = [requestCopy clientBundleIdentifier];
    [(VSInstrumentMetrics *)v7->_instrumentMetrics setClientBundleIdentifier:clientBundleIdentifier];

    kdebug_trace();
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

@end