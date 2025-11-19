@interface VSSiriInlineTTSStreamTask
- (BOOL)waitForNewData:(double)a3;
- (VSSiriInlineTTSStreamTask)init;
- (VSSiriInlineTTSStreamTask)initWithRequest:(id)a3 withStreamID:(id)a4;
- (VSSpeechServiceDelegate)delegate;
- (id)audioPowerProvider;
- (id)voiceKey;
- (void)cancel;
- (void)dealloc;
- (void)handleBegin:(id)a3;
- (void)handleChunk:(id)a3;
- (void)handleEnd:(id)a3;
- (void)handleStreamNotification:(id)a3;
- (void)main;
- (void)reportFinish;
- (void)reportInstrumentMetrics;
- (void)reportSpeechStart;
- (void)reportTimingInfo;
- (void)resume;
- (void)signalNewDataWithError:(id)a3;
- (void)startPlayback;
- (void)suspend;
- (void)synthesisCore:(id)a3 didReceiveAudio:(id)a4;
- (void)synthesisCore:(id)a3 didReceiveProcessingWordTimingInfo:(id)a4;
- (void)synthesisCore:(id)a3 didReceiveWordTimingInfo:(id)a4;
@end

@implementation VSSiriInlineTTSStreamTask

- (VSSpeechServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)synthesisCore:(id)a3 didReceiveWordTimingInfo:(id)a4
{
  v5 = a4;
  v6 = [(VSSiriInlineTTSStreamTask *)self finalTimingInfo];
  [v6 addObjectsFromArray:v5];
}

- (void)synthesisCore:(id)a3 didReceiveProcessingWordTimingInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VSSiriInlineTTSStreamTask *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    objc_initWeak(&location, self);
    v10 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__VSSiriInlineTTSStreamTask_synthesisCore_didReceiveProcessingWordTimingInfo___block_invoke;
    v11[3] = &unk_279E4B9C0;
    objc_copyWeak(&v12, &location);
    [v10 setBoundaryTimeObserverForTimingInfos:v7 usingBlock:v11];

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

- (void)synthesisCore:(id)a3 didReceiveAudio:(id)a4
{
  v44[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(VSSiriInlineTTSStreamTask *)self error];

  if (!v6)
  {
    v7 = [(VSSiriInlineTTSStreamTask *)self playbackServices];

    if (!v7)
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v40) = 0;
        _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEFAULT, "Initializing fallback playback service", &v40, 2u);
      }

      v9 = [VSAudioPlaybackService alloc];
      v10 = [(VSSiriInlineTTSStreamTask *)self request];
      v11 = [v10 audioSessionID];
      if (v5)
      {
        [v5 asbd];
      }

      else
      {
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
      }

      v12 = [(VSSiriInlineTTSStreamTask *)self request:v40];
      v13 = [v12 accessoryID];
      v14 = [(VSAudioPlaybackService *)v9 initWithAudioSessionID:v11 asbd:&v40 useAVSBAR:v13 != 0];
      [(VSSiriInlineTTSStreamTask *)self setPlaybackServices:v14];

      v15 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
      v16 = [v15 outputRouteInfo];
      v17 = [v16 audioRouteName];
      v18 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [v18 setAudioOutputRoute:v17];

      v19 = [(VSSiriInlineTTSStreamTask *)self playbackServices];

      if (!v19)
      {
        v38 = MEMORY[0x277CCA9B8];
        v43 = *MEMORY[0x277CCA450];
        v44[0] = @"Unable to create playback service";
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
        v39 = [v38 errorWithDomain:@"VoiceServicesErrorDomain" code:450 userInfo:v33];
        [(VSSiriInlineTTSStreamTask *)self setError:v39];

LABEL_15:
        goto LABEL_16;
      }

      v20 = mach_absolute_time();
      v21 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
      v22 = [v21 start];

      if (v22)
      {
        [(VSSiriInlineTTSStreamTask *)self setError:v22];
      }

      v23 = mach_absolute_time() - v20;
      v24 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [v24 setAudioStartTimestampDiffs:v23];
    }

    v25 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    v26 = [v25 speechBeginTimestamp];

    if (!v26)
    {
      v27 = mach_absolute_time();
      v28 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [v28 setSpeechBeginTimestamp:v27];

      [(VSSiriInlineTTSStreamTask *)self reportSpeechStart];
    }

    v29 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
    v30 = [v5 audioData];
    v31 = [v5 packetCount];
    v32 = [v5 packetDescriptions];
    [v29 enqueue:v30 packetCount:v31 packetDescriptions:v32];

    v33 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [v5 duration];
    v35 = v34;
    [v33 audioDuration];
    [v33 setAudioDuration:v35 + v36];
    goto LABEL_15;
  }

LABEL_16:

  v37 = *MEMORY[0x277D85DE8];
}

- (id)audioPowerProvider
{
  v2 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  v3 = [v2 audioPowerProvider];

  return v3;
}

- (void)reportInstrumentMetrics
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(VSSiriInlineTTSStreamTask *)self delegate];
  v4 = [(VSSiriInlineTTSStreamTask *)self request];
  v5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v3 speechRequest:v4 didReportInstrumentMetrics:v5];

  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    v8 = [v7 requestCreatedTimestamp];
    v9 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    v15 = 134218242;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEFAULT, "Stream task %llu: Instrument metric: %@", &v15, 0x16u);
  }

  v10 = +[VSDiagnosticService defaultService];
  v11 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  v12 = [v11 dictionaryMetrics];
  v13 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v10 dumpInstrumentMetrics:v12 withTimestamp:{objc_msgSend(v13, "requestCreatedTimestamp")}];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)reportTimingInfo
{
  v5 = [(VSSiriInlineTTSStreamTask *)self delegate];
  v3 = [(VSSiriInlineTTSStreamTask *)self request];
  v4 = [(VSSiriInlineTTSStreamTask *)self finalTimingInfo];
  [v5 speechRequest:v3 didReceiveTimingInfo:v4];
}

- (void)reportFinish
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = [(VSSiriInlineTTSStreamTask *)self delegate];
  v4 = [(VSSiriInlineTTSStreamTask *)self request];
  v5 = [(VSSiriInlineTTSStreamTask *)self isCancelled];
  v6 = [(VSSiriInlineTTSStreamTask *)self error];
  [v3 speechRequest:v4 didStopWithSuccess:v5 ^ 1u phonemesSpoken:&stru_2881CBD18 error:v6];

  v7 = [(VSSiriInlineTTSStreamTask *)self error];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [(VSSiriInlineTTSStreamTask *)self error];
  if ([v9 code] == 400)
  {

LABEL_5:
    v12 = [(VSSiriInlineTTSStreamTask *)self voiceKey];
    v13 = VSGetLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      v14 = [v49 requestCreatedTimestamp];
      if ([(VSSiriInlineTTSStreamTask *)self isCancelled])
      {
        v15 = @"Cancelled";
      }

      else
      {
        v15 = @"Finished";
      }

      v16 = [(VSSiriInlineTTSStreamTask *)self request];
      v17 = [v16 logText];
      if (v12)
      {
        v18 = v12;
      }

      else
      {
        v18 = @"(null)";
      }

      v50[0] = @"voice";
      v50[1] = @"voice_resource";
      v51[0] = v18;
      v19 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      v20 = [v19 voiceResourceAssetKey];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = @"(null)";
      }

      v51[1] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
      *buf = 134218754;
      v53 = v14;
      v54 = 2112;
      v55 = v15;
      v56 = 2112;
      v57 = v17;
      v58 = 2114;
      v59 = v23;
      _os_log_impl(&dword_2727E4000, v13, OS_LOG_TYPE_DEFAULT, "Stream task %llu: %@ speaking text: '%@', %{public}@", buf, 0x2Au);
    }

    v24 = [(VSSiriInlineTTSStreamTask *)self isCancelled];
    v25 = [(VSSiriInlineTTSStreamTask *)self siriInstrumentation];
    v26 = v25;
    if (v24)
    {
      [v25 instrumentSpeechCancelled];
    }

    else
    {
      v27 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [v27 audioDuration];
      v29 = v28;
      v30 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [v30 ttsSynthesisLatency];
      v32 = v31;
      v33 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [v33 cappedRealTimeFactor];
      v35 = v34;
      v36 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      v37 = [v36 promptCount];
      v38 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [v26 instrumentSpeechEndedWithAudioDuration:v37 synthesisLatency:objc_msgSend(v38 realTimeFactor:"errorCode") promptCount:v29 errorCode:{v32, v35}];
    }

    v39 = MEMORY[0x277D79918];
    v40 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [v39 reportInstrumentMetrics:v40];
    goto LABEL_20;
  }

  v10 = [(VSSiriInlineTTSStreamTask *)self error];
  v11 = [v10 code];

  if (v11 == 501)
  {
    goto LABEL_5;
  }

  v42 = VSGetLogDefault();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v46 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    v47 = [v46 requestCreatedTimestamp];
    v48 = [(VSSiriInlineTTSStreamTask *)self error];
    *buf = 134218242;
    v53 = v47;
    v54 = 2112;
    v55 = v48;
    _os_log_error_impl(&dword_2727E4000, v42, OS_LOG_TYPE_ERROR, "Error in stream task %llu, error: %@", buf, 0x16u);
  }

  v12 = [(VSSiriInlineTTSStreamTask *)self siriInstrumentation];
  v43 = MEMORY[0x277CCABB0];
  v40 = [(VSSiriInlineTTSStreamTask *)self error];
  v44 = [v43 numberWithInteger:{objc_msgSend(v40, "code")}];
  v60[0] = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
  [(__CFString *)v12 instrumentSpeechFailedWithErrorCodes:v45];

LABEL_20:
  v41 = *MEMORY[0x277D85DE8];
}

- (id)voiceKey
{
  v3 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  v4 = [v3 isServerTimeout];

  if (v4)
  {
    v5 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    v6 = [v5 selectedVoice];
    v7 = [v6 voiceData];
    v8 = [v7 descriptiveKey];
  }

  else
  {
    v5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    v8 = [v5 voiceAssetKey];
  }

  return v8;
}

- (void)reportSpeechStart
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(VSSiriInlineTTSStreamTask *)self delegate];
  v4 = [(VSSiriInlineTTSStreamTask *)self request];
  [v3 speechRequestDidStart:v4];

  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    *buf = 134217984;
    v31 = [v6 requestCreatedTimestamp];
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Task %llu started speaking", buf, 0xCu);
  }

  v7 = [(VSSiriInlineTTSStreamTask *)self siriInstrumentation];
  v29 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  v8 = [v29 sourceOfTTS];
  v28 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v28 timeToSpeakLatency];
  v10 = v9;
  v27 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  v24 = [v27 outputRouteInfo];
  v11 = MEMORY[0x277D799C8];
  v26 = [(VSSiriInlineTTSStreamTask *)self streamingVoice];
  v25 = [v26 type];
  v23 = [v11 typeFromString:v25];
  v12 = MEMORY[0x277D799C8];
  v13 = [(VSSiriInlineTTSStreamTask *)self streamingVoice];
  v14 = [v13 quality];
  v15 = [v12 footprintFromString:v14];
  v16 = [(VSSiriInlineTTSStreamTask *)self streamingVoice];
  v17 = [v16 contentVersion];
  v18 = [v17 integerValue];
  v19 = [(VSSiriInlineTTSStreamTask *)self streamingResource];
  v20 = [v19 resourceVersion];
  LOBYTE(v22) = 0;
  [v7 instrumentSpeechStartedWithSource:v8 customerPerceivedLatency:v24 audioOutputRoute:v23 voiceType:v15 voiceFootprint:v18 voiceVersion:objc_msgSend(v20 resourceVersion:"integerValue") isWhisper:{v10, v22}];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)suspend
{
  v2 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  [v2 pause];
}

- (void)resume
{
  v3 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  v2 = [v3 start];
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

  v4 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  [v4 stop];

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ServerTTSErrorDomain" code:400 userInfo:MEMORY[0x277CBEC10]];
  [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:v5];
}

- (void)main
{
  v109[1] = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v3 = mach_absolute_time();
  v4 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v4 setSynthesisBeginTimestamp:v3];

  v5 = +[VSSiriServerConfiguration defaultConfig];
  v6 = [v5 experimentIdentifier];
  v7 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v7 setExperimentIdentifier:v6];

  kdebug_trace();
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = [(VSSiriInlineTTSStreamTask *)self streamID];
  [v8 addObserver:self selector:sel_handleStreamNotification_ name:v9 object:0];

  v10 = +[VSInlineStreamService sharedService];
  v11 = [(VSSiriInlineTTSStreamTask *)self streamID];
  [v10 startStreamingWithId:v11];

  do
  {
    [(VSSiriInlineTTSStreamTask *)self timeoutValue];
    v12 = [(VSSiriInlineTTSStreamTask *)self waitForNewData:?];
    v13 = [(VSSiriInlineTTSStreamTask *)self error];

    if (v13)
    {
      break;
    }

    if (!v12)
    {
      v14 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      v15 = [v14 synthesisEndTimestamp];

      if (!v15)
      {
        v18 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
        v19 = [v18 speechBeginTimestamp];

        v20 = VSGetLogDefault();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        if (v19)
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

        v24 = [(VSSiriInlineTTSStreamTask *)self error];
        v25 = [v24 code];
        v26 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
        [v26 setErrorCode:v25];

        v27 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
        [v27 setIsServerTimeout:1];

        v28 = mach_absolute_time();
        v29 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
        [v29 setSynthesisEndTimestamp:v28];

        kdebug_trace();
        notify_post([*MEMORY[0x277D79A18] UTF8String]);
        break;
      }
    }

    v16 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    v17 = [v16 synthesisEndTimestamp];
  }

  while (!v17);
  v30 = [MEMORY[0x277CCAB98] defaultCenter];
  [v30 removeObserver:self];

  if (([(VSSiriInlineTTSStreamTask *)self isCancelled]& 1) != 0)
  {
    v31 = 0;
  }

  else
  {
    v32 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    if ([v32 errorCode] == 701)
    {
      v33 = [(VSSiriInlineTTSStreamTask *)self request];
      v31 = [v33 retryDeviceOnNetworkStall];
    }

    else
    {
      v31 = 0;
    }
  }

  if (([(VSSiriInlineTTSStreamTask *)self isCancelled]& 1) != 0 || ([(VSSiriInlineTTSStreamTask *)self error], v34 = objc_claimAutoreleasedReturnValue(), v34, !v34))
  {
    if (!v31)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v35 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    v36 = [v35 request];
    v37 = [v36 utterance];
    v38 = [v37 length];

    if (!v38)
    {
      v39 = MEMORY[0x277CCA9B8];
      v108 = *MEMORY[0x277CCA450];
      v109[0] = @"Missing utterance in the request (preprocessing missing?). Can't fallback to device TTS.";
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:&v108 count:1];
      v41 = [v39 errorWithDomain:@"VoiceServicesErrorDomain" code:100 userInfo:v40];
      [(VSSiriInlineTTSStreamTask *)self setError:v41];

      if ((v31 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  v42 = VSGetLogDefault();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v101 = [(VSSiriInlineTTSStreamTask *)self error];
    v102 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    v103 = [v102 errorCode];
    *buf = 138412546;
    v105 = v101;
    v106 = 1024;
    v107 = v103;
    _os_log_error_impl(&dword_2727E4000, v42, OS_LOG_TYPE_ERROR, "Streaming error: %@, error_code: %d", buf, 0x12u);
  }

  [(VSSiriInlineTTSStreamTask *)self setServerAudio:0];
  v43 = [(VSSiriInlineTTSStreamTask *)self finalTimingInfo];
  [v43 removeAllObjects];

  [(VSSiriInlineTTSStreamTask *)self setError:0];
  v44 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  [v44 stop];

  [(VSSiriInlineTTSStreamTask *)self setPlaybackServices:0];
  if ((v31 & 1) != 0 || (-[VSSiriInlineTTSStreamTask instrumentMetrics](self, "instrumentMetrics"), v45 = objc_claimAutoreleasedReturnValue(), v46 = [v45 speechBeginTimestamp], v45, v46))
  {
    v47 = MEMORY[0x277D79940];
    v48 = *MEMORY[0x277D79A10];
    v49 = [(VSSiriInlineTTSStreamTask *)self request];
    v50 = [v49 languageCode];
    v51 = [v47 localizedInterstitialStringForKey:v48 language:v50];

    v52 = MEMORY[0x277CCACA8];
    if (v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = &stru_2881CBD18;
    }

    v54 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    v55 = [v54 request];
    v56 = [v55 utterance];
    v57 = [v52 stringWithFormat:@"%@ %@", v53, v56];
    v58 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    v59 = [v58 request];
    [v59 setUtterance:v57];

    v60 = MEMORY[0x277CCACA8];
    v61 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    v62 = [v61 request];
    v63 = [v62 text];
    v64 = [v60 stringWithFormat:@"%@ %@", v53, v63];
    v65 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    v66 = [v65 request];
    [v66 setText:v64];
  }

  v67 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
  [v67 start];

  v68 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
  v69 = [v68 error];
  [(VSSiriInlineTTSStreamTask *)self setError:v69];

  v70 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v70 setIsServerStreamTTS:0];

  v71 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v71 setIsServerTTS:0];

  v72 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v72 setIsServerTimeout:1];

  v73 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v73 setSourceOfTTS:1];

  v74 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
  v75 = [v74 selectedVoice];
  v76 = [v75 key];
  v77 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v77 setVoiceAssetKey:v76];

  v78 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
  v79 = [v78 selectedVoiceResource];
  v80 = [v79 key];
  v81 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v81 setVoiceResourceAssetKey:v80];

LABEL_36:
  v82 = [(VSSiriInlineTTSStreamTask *)self error];

  if (v82)
  {
    v83 = [(VSSiriInlineTTSStreamTask *)self error];
    v84 = [v83 code];
    v85 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [v85 setErrorCode:v84];
  }

  else
  {
    v86 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
    [v86 flushAndStop];

    v83 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
    v85 = [v83 error];
    [(VSSiriInlineTTSStreamTask *)self setError:v85];
  }

  v87 = mach_absolute_time();
  v88 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v88 setSpeechEndTimestamp:v87];

  v89 = [(VSSiriInlineTTSStreamTask *)self error];

  if (!v89)
  {
    [(VSSiriInlineTTSStreamTask *)self reportInstrumentMetrics];
    [(VSSiriInlineTTSStreamTask *)self reportTimingInfo];
    v90 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    v91 = [v90 sourceOfTTS];

    if (v91 == 3)
    {
      v92 = +[VSDiagnosticService defaultService];
      v93 = [(VSSiriInlineTTSStreamTask *)self serverAudio];
      v94 = [(VSSiriInlineTTSStreamTask *)self request];
      [v92 dumpCompressedAudio:v93 forRequest:v94];
LABEL_47:

      goto LABEL_48;
    }

    v95 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    v96 = [v95 streamAudio];

    if (v96)
    {
      v92 = +[VSDiagnosticService defaultService];
      v93 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
      v94 = [v93 streamAudio];
      v97 = [(VSSiriInlineTTSStreamTask *)self request];
      [v92 dumpStreamAudio:v94 forRequest:v97];
LABEL_46:

      goto LABEL_47;
    }

    v98 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
    v99 = [v98 compressedAudio];

    if (v99)
    {
      v92 = +[VSDiagnosticService defaultService];
      v93 = [(VSSiriInlineTTSStreamTask *)self deviceTTSCore];
      v94 = [v93 compressedAudio];
      v97 = [(VSSiriInlineTTSStreamTask *)self request];
      [v92 dumpCompressedAudio:v94 forRequest:v97];
      goto LABEL_46;
    }
  }

LABEL_48:
  [(VSSiriInlineTTSStreamTask *)self reportFinish];
  kdebug_trace();
  v100 = *MEMORY[0x277D85DE8];
}

- (void)signalNewDataWithError:(id)a3
{
  v8 = a3;
  v4 = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [v4 lock];

  v5 = [(VSSiriInlineTTSStreamTask *)self error];

  if (!v5)
  {
    [(VSSiriInlineTTSStreamTask *)self setError:v8];
  }

  v6 = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [v6 signal];

  v7 = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [v7 unlock];
}

- (BOOL)waitForNewData:(double)a3
{
  v5 = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [v5 lock];

  v6 = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
  v8 = [v6 waitUntilDate:v7];

  v9 = [(VSSiriInlineTTSStreamTask *)self refreshTimeoutCondition];
  [v9 unlock];

  return v8;
}

- (void)startPlayback
{
  v3 = mach_absolute_time();
  v4 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  v9 = [v4 start];

  v5 = mach_absolute_time() - v3;
  v6 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v6 setAudioStartTimestampDiffs:v5];

  if (v9)
  {
    [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:v9];
  }

  else
  {
    v7 = mach_absolute_time();
    v8 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [v8 setSpeechBeginTimestamp:v7];

    [(VSSiriInlineTTSStreamTask *)self reportSpeechStart];
  }
}

- (void)handleEnd:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 streamId];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "count")}];
    *buf = 138412546;
    v29 = v6;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Handle stream end with streamId: %@, count: %@", buf, 0x16u);
  }

  v8 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  v9 = [v8 synthesisEndTimestamp];

  if (!v9)
  {
    v10 = mach_absolute_time();
    v11 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [v11 setSynthesisEndTimestamp:v10];

    kdebug_trace();
  }

  if ([v4 errorCode] && objc_msgSend(v4, "errorCode") != 200)
  {
    v13 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v14 = MEMORY[0x277CCACA8];
    v15 = [v4 errorCode];
    v16 = [v4 errorMessage];
    v17 = [v14 stringWithFormat:@"Unknown inline streaming error %d, %@", v15, v16];
    v27 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v19 = [v13 errorWithDomain:@"ServerTTSErrorDomain" code:700 userInfo:v18];

    [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:v19];
  }

  else
  {
    v12 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    if ([v12 speechBeginTimestamp])
    {
    }

    else
    {
      v20 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [v20 audioDuration];
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

- (void)handleChunk:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 streamId];
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "Handle stream chunk with streamId: %@", buf, 0xCu);
  }

  v7 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  v8 = [v7 serverFirstPacketTimestamp];

  if (!v8)
  {
    v9 = mach_absolute_time();
    v10 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    [v10 setServerFirstPacketTimestamp:v9];
  }

  v11 = mach_absolute_time();
  v12 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v12 setServerLastPacketTimestamp:v11];

  v13 = objc_alloc_init(MEMORY[0x277D79920]);
  v14 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  if (v14 && (v15 = v14, [v14 asbd], v15, v59 == 1819304813))
  {
    v16 = [v4 audioData];
    [v13 populateWithPCMData:v16];
  }

  else
  {
    v17 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
    if (!v17 || (v18 = v17, [v17 asbd], v18, v58 != 1869641075))
    {
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ServerTTSErrorDomain" code:451 userInfo:MEMORY[0x277CBEC10]];
      [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:v21];
LABEL_25:

      goto LABEL_26;
    }

    v16 = [v4 audioData];
    [v13 populateWithOpusData:v16];
  }

  v19 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  v20 = v19;
  if (v19)
  {
    [v19 asbd];
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

  v22 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
  v23 = [v13 audioData];
  v24 = [v13 packetCount];
  v25 = [v13 packetDescriptions];
  [v22 enqueue:v23 packetCount:v24 packetDescriptions:v25];

  v26 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v13 duration];
  v28 = v27;
  [v26 audioDuration];
  [v26 setAudioDuration:v28 + v29];

  v30 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v30 audioDuration];
  v32 = v31;
  v33 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v33 setServerStreamedAudioDuration:v32];

  v34 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v34 audioDuration];
  v36 = v35;
  [(VSSiriInlineTTSStreamTask *)self bufferDurationLimit];
  if (v36 < v37)
  {

    goto LABEL_18;
  }

  v38 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  v39 = [v38 speechBeginTimestamp];

  if (v39)
  {
LABEL_18:
    v40 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    v41 = [v40 speechBeginTimestamp];

    if (v41)
    {
      v42 = [MEMORY[0x277CBEAA8] date];
      v43 = [(VSSiriInlineTTSStreamTask *)self playbackBeginDate];
      [v42 timeIntervalSinceDate:v43];
      v45 = v44;

      v46 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [v46 audioDuration];
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
  v50 = [MEMORY[0x277CBEAA8] date];
  [(VSSiriInlineTTSStreamTask *)self setPlaybackBeginDate:v50];

  v51 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v51 audioDuration];
  [(VSSiriInlineTTSStreamTask *)self setTimeoutValue:?];

LABEL_23:
  [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:0];
  v52 = [MEMORY[0x277D79998] standardInstance];
  v53 = [v52 enableAudioDump];

  if (v53)
  {
    v21 = [(VSSiriInlineTTSStreamTask *)self serverAudio];
    [v21 concatenateWithAudio:v13];
    goto LABEL_25;
  }

LABEL_26:

  v54 = *MEMORY[0x277D85DE8];
}

- (void)handleBegin:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 speechSynthesisVoice];
  [(VSSiriInlineTTSStreamTask *)self setStreamingVoice:v5];

  v6 = [v4 speechSynthesisResource];
  [(VSSiriInlineTTSStreamTask *)self setStreamingResource:v6];

  v7 = VSGetLogDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v4 streamId];
    v9 = [v4 text];
    v10 = [v4 decoderStreamDescription];
    v11 = [v10 vsDescription];
    *buf = 138412802;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    *&buf[24] = v11;
    _os_log_impl(&dword_2727E4000, v7, OS_LOG_TYPE_INFO, "Handle stream begin with streamId: %@, text: %@, decoder: %@", buf, 0x20u);
  }

  v12 = [MEMORY[0x277D79998] standardInstance];
  [v12 streamBufferDuration];
  if (v13 == 0.0)
  {
    [v4 streamingPlaybackBufferSize];
  }

  [(VSSiriInlineTTSStreamTask *)self setBufferDurationLimit:v13];

  v14 = objc_alloc_init(MEMORY[0x277D79920]);
  [(VSSiriInlineTTSStreamTask *)self setServerAudio:v14];

  v15 = MEMORY[0x277D79920];
  v16 = [v4 decoderStreamDescription];
  [v15 asbdFromDescription:v16];
  v17 = [(VSSiriInlineTTSStreamTask *)self serverAudio];
  *buf = v49;
  *&buf[16] = v50;
  v55 = v51;
  [v17 setAsbd:buf];

  v18 = [VSAudioPlaybackService alloc];
  v19 = [(VSSiriInlineTTSStreamTask *)self request];
  v20 = [v19 audioSessionID];
  v21 = [(VSSiriInlineTTSStreamTask *)self serverAudio];
  v22 = v21;
  if (v21)
  {
    [v21 asbd];
  }

  else
  {
    v55 = 0;
    memset(buf, 0, sizeof(buf));
  }

  v23 = [(VSSiriInlineTTSStreamTask *)self request];
  v24 = [v23 accessoryID];
  v25 = [(VSAudioPlaybackService *)v18 initWithAudioSessionID:v20 asbd:buf useAVSBAR:v24 != 0];

  v26 = [(VSSiriInlineTTSStreamTask *)self error];
  if (v26)
  {
  }

  else
  {
    v27 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
    v28 = [v27 errorCode];

    if (!v28)
    {
      [(VSSiriInlineTTSStreamTask *)self setPlaybackServices:v25];
      v31 = [v4 text];
      v32 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [v32 setUtterance:v31];

      v33 = [v4 speechSynthesisVoice];
      v34 = [v33 vsDescription];
      v35 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [v35 setVoiceAssetKey:v34];

      v36 = [v4 speechSynthesisResource];
      v37 = [v36 vsDescription];
      v38 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [v38 setVoiceResourceAssetKey:v37];

      v39 = [(VSSiriInlineTTSStreamTask *)self playbackServices];
      v40 = [v39 outputRouteInfo];
      v41 = [v40 audioRouteName];
      v42 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      [v42 setAudioOutputRoute:v41];

      v43 = [(VSSiriInlineTTSStreamTask *)self playbackServices];

      if (v43)
      {
        goto LABEL_13;
      }

      v44 = MEMORY[0x277CCA9B8];
      v52 = *MEMORY[0x277CCA450];
      v53 = @"Unable to create playback service";
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v45 = [v44 errorWithDomain:@"VoiceServicesErrorDomain" code:450 userInfo:v29];
      [(VSSiriInlineTTSStreamTask *)self signalNewDataWithError:v45];
      goto LABEL_19;
    }
  }

  v29 = VSGetLogDefault();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v45 = [(VSSiriInlineTTSStreamTask *)self error];
    v46 = [v45 code];
    if (v46)
    {
      *buf = 134217984;
      *&buf[4] = v46;
      _os_log_error_impl(&dword_2727E4000, v29, OS_LOG_TYPE_ERROR, "Ignoring stream begin: error already occurred: %ld", buf, 0xCu);
    }

    else
    {
      v47 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
      v48 = [v47 errorCode];
      *buf = 134217984;
      *&buf[4] = v48;
      _os_log_error_impl(&dword_2727E4000, v29, OS_LOG_TYPE_ERROR, "Ignoring stream begin: error already occurred: %ld", buf, 0xCu);
    }

LABEL_19:
  }

LABEL_13:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)handleStreamNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VSSiriInlineTTSStreamTask *)self instrumentMetrics];
  [v5 audioDuration];
  if (v6 <= 0.8)
  {
  }

  else
  {
    v7 = [MEMORY[0x277D79998] standardInstance];
    v8 = [v7 simulateNetworkStall];

    if (v8)
    {
      v9 = VSGetLogDefault();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_15:

        goto LABEL_16;
      }

      v10 = [v4 object];
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "Simulate network stall is on, ignore object %@", &v17, 0xCu);
LABEL_5:

      goto LABEL_15;
    }
  }

  v11 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v13 = [v4 object];
  if (isKindOfClass)
  {
    [(VSSiriInlineTTSStreamTask *)self handleBegin:v13];
  }

  else
  {
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    v13 = [v4 object];
    if (v14)
    {
      [(VSSiriInlineTTSStreamTask *)self handleChunk:v13];
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

        v10 = [v4 object];
        v17 = 138412290;
        v18 = v10;
        _os_log_error_impl(&dword_2727E4000, v9, OS_LOG_TYPE_ERROR, "Unknown streaming object: %@", &v17, 0xCu);
        goto LABEL_5;
      }

      v13 = [v4 object];
      [(VSSiriInlineTTSStreamTask *)self handleEnd:v13];
    }
  }

LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = +[VSInlineStreamService sharedService];
  v4 = [(VSSiriInlineTTSStreamTask *)self streamID];
  [v3 removeStreamId:v4];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = VSSiriInlineTTSStreamTask;
  [(VSSiriInlineTTSStreamTask *)&v6 dealloc];
}

- (VSSiriInlineTTSStreamTask)initWithRequest:(id)a3 withStreamID:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v33.receiver = self;
  v33.super_class = VSSiriInlineTTSStreamTask;
  v9 = [(VSSiriInlineTTSStreamTask *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_streamID, a4);
    v11 = objc_alloc_init(MEMORY[0x277D79938]);
    instrumentMetrics = v10->_instrumentMetrics;
    v10->_instrumentMetrics = v11;

    if ([v7 requestCreatedTimestamp])
    {
      v13 = [v7 requestCreatedTimestamp];
    }

    else
    {
      v14 = VSGetLogDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v14, OS_LOG_TYPE_ERROR, "Using timestamp inside voiced for Stream task", buf, 2u);
      }

      v13 = mach_absolute_time();
    }

    [(VSInstrumentMetrics *)v10->_instrumentMetrics setRequestCreatedTimestamp:v13];
    v15 = VSGetLogDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [(VSSiriInlineTTSStreamTask *)v10 instrumentMetrics];
      v17 = [v16 requestCreatedTimestamp];
      streamID = v10->_streamID;
      *buf = 134218242;
      v35 = v17;
      v36 = 2112;
      v37 = streamID;
      _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_INFO, "Created Stream task %llu: streamID %@", buf, 0x16u);
    }

    v19 = [MEMORY[0x277CBEB18] array];
    finalTimingInfo = v10->_finalTimingInfo;
    v10->_finalTimingInfo = v19;

    v21 = objc_alloc_init(MEMORY[0x277CCA928]);
    refreshTimeoutCondition = v10->_refreshTimeoutCondition;
    v10->_refreshTimeoutCondition = v21;

    v23 = [MEMORY[0x277D79998] standardInstance];
    [v23 serverTTSTimeout];
    if (v24 == 0.0)
    {
      v25 = +[VSSiriServerConfiguration defaultConfig];
      v26 = [v7 clientBundleIdentifier];
      [v25 timeoutForAppId:v26];
      v10->_timeoutValue = v27;
    }

    else
    {
      v10->_timeoutValue = v24;
    }

    -[VSInstrumentMetrics setCanUseServerTTS:](v10->_instrumentMetrics, "setCanUseServerTTS:", [v7 canUseServerTTS]);
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setIsServerStreamTTS:1];
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setIsServerTTS:1];
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setIsSpeechRequest:1];
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setSourceOfTTS:3];
    v28 = [v7 clientBundleIdentifier];
    [(VSInstrumentMetrics *)v10->_instrumentMetrics setClientBundleIdentifier:v28];

    v29 = [[VSDeviceTTSCore alloc] initWithRequest:v7];
    deviceTTSCore = v10->_deviceTTSCore;
    v10->_deviceTTSCore = v29;

    [(VSDeviceTTSCore *)v10->_deviceTTSCore setDelegate:v10];
    [(VSDeviceTTSCore *)v10->_deviceTTSCore setInstrumentMetrics:v10->_instrumentMetrics];
  }

  v31 = *MEMORY[0x277D85DE8];
  return v10;
}

- (VSSiriInlineTTSStreamTask)init
  v2 = {;
  objc_exception_throw(v2);
}

@end