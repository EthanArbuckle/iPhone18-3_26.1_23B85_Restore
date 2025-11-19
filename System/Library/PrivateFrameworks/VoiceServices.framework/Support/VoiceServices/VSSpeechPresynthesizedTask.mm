@interface VSSpeechPresynthesizedTask
- (AudioStreamBasicDescription)asbd;
- (NSString)description;
- (VSSpeechPresynthesizedTask)init;
- (VSSpeechPresynthesizedTask)initWithRequest:(id)a3;
- (VSSpeechServiceDelegate)delegate;
- (id)audioPowerProvider;
- (void)cancel;
- (void)main;
- (void)reportFinish;
- (void)reportSpeechStart;
- (void)resume;
- (void)setAsbd:(AudioStreamBasicDescription *)a3;
- (void)suspend;
@end

@implementation VSSpeechPresynthesizedTask

- (void)setAsbd:(AudioStreamBasicDescription *)a3
{
  v3 = *&a3->mBitsPerChannel;
  v4 = *&a3->mBytesPerPacket;
  *&self->_asbd.mSampleRate = *&a3->mSampleRate;
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
  v2 = [(VSSpeechPresynthesizedTask *)self playbackService];
  v3 = [v2 audioPowerProvider];

  return v3;
}

- (void)reportFinish
{
  v66[1] = *MEMORY[0x277D85DE8];
  v3 = [(VSSpeechPresynthesizedTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VSSpeechPresynthesizedTask *)self delegate];
    v6 = [(VSSpeechPresynthesizedTask *)self request];
    v7 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
    v8 = [(VSSpeechPresynthesizedTask *)self error];
    [v5 audioRequest:v6 didReportInstrumentMetrics:v7 error:v8];
  }

  v9 = [(VSSpeechPresynthesizedTask *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(VSSpeechPresynthesizedTask *)self delegate];
    v12 = [(VSSpeechPresynthesizedTask *)self request];
    v13 = [(VSSpeechPresynthesizedTask *)self error];
    v14 = [(VSSpeechPresynthesizedTask *)self error];
    [v11 audioRequest:v12 didStopAtEnd:v13 == 0 error:v14];
  }

  v15 = [(VSSpeechPresynthesizedTask *)self error];
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [(VSSpeechPresynthesizedTask *)self error];
  if ([v17 code] == 400)
  {

LABEL_9:
    v20 = VSGetLogDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v55 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      v21 = [v55 requestCreatedTimestamp];
      if ([(VSSpeechPresynthesizedTask *)self isCancelled])
      {
        v22 = @"Cancelled";
      }

      else
      {
        v22 = @"Finished";
      }

      v23 = [(VSSpeechPresynthesizedTask *)self request];
      v24 = [v23 text];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = &stru_2881CBD18;
      }

      v56 = @"audio_duration";
      v27 = MEMORY[0x277CCABB0];
      v28 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [v28 audioDuration];
      v29 = [v27 numberWithDouble:?];
      v57 = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      *buf = 134218754;
      v59 = v21;
      v60 = 2112;
      v61 = v22;
      v62 = 2112;
      v63 = v26;
      v64 = 2114;
      v65 = v30;
      _os_log_impl(&dword_2727E4000, v20, OS_LOG_TYPE_DEFAULT, "Audio task %llu: %@ speaking utterance '%@', %{public}@", buf, 0x2Au);
    }

    v31 = [(VSSpeechPresynthesizedTask *)self isCancelled];
    v32 = [(VSSpeechPresynthesizedTask *)self siriInstrumentation];
    v33 = v32;
    if (v31)
    {
      [v32 instrumentSpeechCancelled];
    }

    else
    {
      v34 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [v34 audioDuration];
      v36 = v35;
      v37 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [v37 ttsSynthesisLatency];
      v39 = v38;
      v40 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [v40 cappedRealTimeFactor];
      v42 = v41;
      v43 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      v44 = [v43 promptCount];
      v45 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [v33 instrumentSpeechEndedWithAudioDuration:v44 synthesisLatency:objc_msgSend(v45 realTimeFactor:"errorCode") promptCount:v36 errorCode:{v39, v42}];
    }

    goto LABEL_23;
  }

  v18 = [(VSSpeechPresynthesizedTask *)self error];
  v19 = [v18 code];

  if (v19 == 501)
  {
    goto LABEL_9;
  }

  v46 = VSGetLogDefault();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    v52 = [(VSSpeechPresynthesizedTask *)self request];
    v53 = [v52 requestCreatedTimestamp];
    v54 = [(VSSpeechPresynthesizedTask *)self error];
    *buf = 134218242;
    v59 = v53;
    v60 = 2112;
    v61 = v54;
    _os_log_error_impl(&dword_2727E4000, v46, OS_LOG_TYPE_ERROR, "Error in audio task %llu, error: %@", buf, 0x16u);
  }

  v33 = [(VSSpeechPresynthesizedTask *)self siriInstrumentation];
  v47 = MEMORY[0x277CCABB0];
  v48 = [(VSSpeechPresynthesizedTask *)self error];
  v49 = [v47 numberWithInteger:{objc_msgSend(v48, "code")}];
  v66[0] = v49;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];
  [v33 instrumentSpeechFailedWithErrorCodes:v50];

LABEL_23:
  v51 = *MEMORY[0x277D85DE8];
}

- (void)reportSpeechStart
{
  v3 = [(VSSpeechPresynthesizedTask *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VSSpeechPresynthesizedTask *)self delegate];
    v6 = [(VSSpeechPresynthesizedTask *)self request];
    [v5 audioRequestDidStart:v6];
  }

  v13 = [(VSSpeechPresynthesizedTask *)self siriInstrumentation];
  v7 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [v7 timeToSpeakLatency];
  v9 = v8;
  v10 = [(VSSpeechPresynthesizedTask *)self playbackService];
  v11 = [v10 outputRouteInfo];
  LOBYTE(v12) = 0;
  [v13 instrumentSpeechStartedWithSource:7 customerPerceivedLatency:v11 audioOutputRoute:0 voiceType:0 voiceFootprint:0 voiceVersion:0 resourceVersion:v9 isWhisper:v12];
}

- (void)resume
{
  v3 = [(VSSpeechPresynthesizedTask *)self playbackService];
  v2 = [v3 start];
}

- (void)suspend
{
  v2 = [(VSSpeechPresynthesizedTask *)self playbackService];
  [v2 pause];
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

  v4 = [(VSSpeechPresynthesizedTask *)self playbackService];
  [v4 stop];

  v5 = [(VSSpeechPresynthesizedTask *)self delegate];
  v6 = [(VSSpeechPresynthesizedTask *)self request];
  [v5 audioRequest:v6 didStopAtEnd:0 error:0];
}

- (void)main
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VSSpeechPresynthesizedTask *)self request];
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_DEFAULT, "Speaking pre-synthesized audio: %@", buf, 0xCu);
  }

  v5 = mach_absolute_time();
  v6 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [v6 setSynthesisBeginTimestamp:v5];

  v7 = +[VSSiriServerConfiguration defaultConfig];
  v8 = [v7 experimentIdentifier];
  v9 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [v9 setExperimentIdentifier:v8];

  v10 = MEMORY[0x277D79920];
  v11 = [(VSSpeechPresynthesizedTask *)self request];
  v12 = [v10 audioDataFromPresynthesisRequest:v11];

  v13 = mach_absolute_time();
  v14 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [v14 setSynthesisEndTimestamp:v13];

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
  v16 = [(VSSpeechPresynthesizedTask *)self request];
  v17 = [v16 audioSessionID];
  [(VSSpeechPresynthesizedTask *)self asbd];
  v18 = [(VSSpeechPresynthesizedTask *)self request];
  v19 = [v18 accessoryID];
  v20 = [(VSAudioPlaybackService *)v15 initWithAudioSessionID:v17 asbd:buf useAVSBAR:v19 != 0];
  [(VSSpeechPresynthesizedTask *)self setPlaybackService:v20];

  v21 = [(VSSpeechPresynthesizedTask *)self playbackService];
  v22 = [v21 outputRouteInfo];
  v23 = [v22 audioRouteName];
  v24 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
  [v24 setAudioOutputRoute:v23];

  v25 = [(VSSpeechPresynthesizedTask *)self playbackService];

  if (!v25)
  {
    v46 = MEMORY[0x277CCA9B8];
    v57 = *MEMORY[0x277CCA470];
    v58 = @"Can't create VSAudioPlaybackService";
    v47 = MEMORY[0x277CBEAC0];
    v48 = &v58;
    v49 = &v57;
LABEL_13:
    v45 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:1];
    v50 = [v46 errorWithDomain:@"VoiceServicesErrorDomain" code:0 userInfo:v45];
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
    v26 = [(VSSpeechPresynthesizedTask *)self error];

    if (!v26)
    {
      v27 = mach_absolute_time();
      v28 = [(VSSpeechPresynthesizedTask *)self playbackService];
      v29 = [v28 start];

      v30 = mach_absolute_time() - v27;
      v31 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [v31 setAudioStartTimestampDiffs:v30];

      v32 = [(VSSpeechPresynthesizedTask *)self playbackService];
      v33 = [v12 audioData];
      v34 = [v12 packetCount];
      v35 = [v12 packetDescriptions];
      [v32 enqueue:v33 packetCount:v34 packetDescriptions:v35];

      v36 = mach_absolute_time();
      v37 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [v37 setSpeechBeginTimestamp:v36];

      [(VSSpeechPresynthesizedTask *)self reportSpeechStart];
      v38 = [(VSSpeechPresynthesizedTask *)self playbackService];
      [v38 flushAndStop];

      v39 = [(VSSpeechPresynthesizedTask *)self playbackService];
      v40 = [v39 error];
      [(VSSpeechPresynthesizedTask *)self setError:v40];

      v41 = mach_absolute_time();
      v42 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [v42 setSpeechEndTimestamp:v41];

      [v12 duration];
      v44 = v43;
      v45 = [(VSSpeechPresynthesizedTask *)self instrumentMetrics];
      [v45 setAudioDuration:v44];
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

- (VSSpeechPresynthesizedTask)initWithRequest:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v18.receiver = self;
  v18.super_class = VSSpeechPresynthesizedTask;
  v6 = [(VSSpeechPresynthesizedTask *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = objc_alloc_init(MEMORY[0x277D79938]);
    instrumentMetrics = v7->_instrumentMetrics;
    v7->_instrumentMetrics = v8;

    [(VSInstrumentMetrics *)v7->_instrumentMetrics setSourceOfTTS:7];
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
        _os_log_error_impl(&dword_2727E4000, v11, OS_LOG_TYPE_ERROR, "Using timestamp inside voiced for Presynthesized task", buf, 2u);
      }

      v10 = mach_absolute_time();
    }

    [(VSInstrumentMetrics *)v7->_instrumentMetrics setRequestCreatedTimestamp:v10];
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(VSSpeechPresynthesizedTask *)v7 instrumentMetrics];
      v14 = [v13 requestCreatedTimestamp];
      *buf = 134217984;
      v20 = v14;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_INFO, "Created Presynthesized Task %llu", buf, 0xCu);
    }

    v15 = [v5 clientBundleIdentifier];
    [(VSInstrumentMetrics *)v7->_instrumentMetrics setClientBundleIdentifier:v15];

    kdebug_trace();
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (VSSpeechPresynthesizedTask)init
  v2 = {;
  objc_exception_throw(v2);
}

@end