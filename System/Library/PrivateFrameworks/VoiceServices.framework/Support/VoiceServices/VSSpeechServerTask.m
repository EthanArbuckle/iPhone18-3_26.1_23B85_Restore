@interface VSSpeechServerTask
- (BOOL)isSpeaking;
- (BOOL)shouldDeferDeviceTTS;
- (BOOL)shouldRelyOnServerTTS;
- (VSSpeechServerTask)init;
- (VSSpeechServiceDelegate)delegate;
- (_opaque_pthread_cond_t)timeoutCondition;
- (_opaque_pthread_mutex_t)racingMutex;
- (id)audioPowerProvider;
- (id)eagerTaskHashForRequest:(id)a3;
- (id)enqueueAudioData:(id)a3;
- (id)handleDeviceSynthesis:(id)a3 timingInfo:(id)a4;
- (id)handleServerResponse:(id)a3 timingInfo:(id)a4;
- (id)voiceKey;
- (void)cancel;
- (void)dealloc;
- (void)fallbackToDeviceSynthesis;
- (void)main;
- (void)ospreyCore:(id)a3 didReceiveAudio:(id)a4 wordTimingInfo:(id)a5;
- (void)proceedWithServerTTS;
- (void)proceedWithSpeechCache:(id)a3;
- (void)reportFinish;
- (void)reportInstrumentMetrics;
- (void)reportSpeechStart;
- (void)reportTimingInfo;
- (void)resume;
- (void)setObserverForWordTimings:(id)a3;
- (void)setRacingMutex:(_opaque_pthread_mutex_t *)a3;
- (void)setTimeoutCondition:(_opaque_pthread_cond_t *)a3;
- (void)speakRetryPhrase;
- (void)suspend;
- (void)writeAudioIfNeeded:(id)a3;
@end

@implementation VSSpeechServerTask

- (void)setRacingMutex:(_opaque_pthread_mutex_t *)a3
{
  v3 = *&a3->__opaque[40];
  v5 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  *&self->_racingMutex.__opaque[24] = *&a3->__opaque[24];
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

- (void)setTimeoutCondition:(_opaque_pthread_cond_t *)a3
{
  v4 = *&a3->__opaque[8];
  v3 = *&a3->__opaque[24];
  *&self->_timeoutCondition.__sig = *&a3->__sig;
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

- (void)ospreyCore:(id)a3 didReceiveAudio:(id)a4 wordTimingInfo:(id)a5
{
  v21 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(VSSpeechServerTask *)self instrumentMetrics];
  v11 = [v10 voiceAssetKey];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = [v21 voice];

    if (!v13)
    {
      goto LABEL_6;
    }

    v10 = [v21 voice];
    v12 = [v10 voiceKey];
    v14 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v14 setVoiceAssetKey:v12];
  }

LABEL_6:
  v15 = [(VSSpeechServerTask *)self instrumentMetrics];
  v16 = [v15 voiceResourceAssetKey];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v18 = [v21 voiceResource];

    if (!v18)
    {
      goto LABEL_11;
    }

    v15 = [v21 voiceResource];
    v17 = [v15 key];
    v19 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v19 setVoiceResourceAssetKey:v17];
  }

LABEL_11:
  v20 = [(VSSpeechServerTask *)self handleServerResponse:v8 timingInfo:v9];
}

- (id)audioPowerProvider
{
  v2 = [(VSSpeechServerTask *)self playbackService];
  v3 = [v2 audioPowerProvider];

  return v3;
}

- (void)writeAudioIfNeeded:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    v6 = v4;
  }

  else
  {
    objc_opt_class();
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v5 = v4;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v9 = v4;
  v7 = v5;
  v8 = v6;
LABEL_5:
  v10 = [(VSSpeechServerTask *)self speakTask];
  if (v10)
  {
  }

  else if (![(VSSpeechServerTask *)self shouldSpeak])
  {
    goto LABEL_13;
  }

  if (v8)
  {
    v11 = +[VSDiagnosticService defaultService];
    v12 = [(VSSpeechServerTask *)self request];
    [v11 dumpStreamAudio:v8 forRequest:v12];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    v11 = +[VSDiagnosticService defaultService];
    v12 = [(VSSpeechServerTask *)self request];
    [v11 dumpCompressedAudio:v7 forRequest:v12];
  }

LABEL_13:
  v13 = [(VSSpeechServerTask *)self request];
  v14 = [v13 outputPath];
  v15 = [v14 path];

  if (!v15)
  {
    goto LABEL_22;
  }

  if (v8)
  {
    v16 = [v8 writeWaveToFilePath:v15];
  }

  else
  {
    if (!v7)
    {
      v17 = 0;
      goto LABEL_19;
    }

    v16 = [v7 writeToFilePath:v15];
  }

  v17 = v16 ^ 1;
LABEL_19:
  v18 = [(VSSpeechServerTask *)self error];

  if (!v18 && v17)
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
  v4 = [(VSSpeechServerTask *)self delegate];
  if (shouldSpeak)
  {
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(VSSpeechServerTask *)self delegate];
      v7 = [(VSSpeechServerTask *)self request];
      v8 = [(VSSpeechServerTask *)self isCancelled];
      v9 = [(VSSpeechServerTask *)self error];
      [v6 speechRequest:v7 didStopWithSuccess:v8 ^ 1u phonemesSpoken:&stru_2881CBD18 error:v9];
LABEL_6:
    }
  }

  else
  {
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v6 = [(VSSpeechServerTask *)self delegate];
      v7 = [(VSSpeechServerTask *)self request];
      v9 = [(VSSpeechServerTask *)self instrumentMetrics];
      v11 = [(VSSpeechServerTask *)self error];
      [v6 synthesisRequest:v7 didFinishWithInstrumentMetrics:v9 error:v11];

      goto LABEL_6;
    }
  }

  v12 = [(VSSpeechServerTask *)self speakTask];
  if (v12)
  {
    v13 = v12;
    v14 = [(VSSpeechServerTask *)self speakTask];
    v15 = [v14 delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(VSSpeechServerTask *)self speakTask];
      v18 = [v17 delegate];
      v19 = [(VSSpeechServerTask *)self speakTask];
      v20 = [v19 request];
      v21 = [(VSSpeechServerTask *)self isCancelled];
      v22 = [(VSSpeechServerTask *)self error];
      [v18 speechRequest:v20 didStopWithSuccess:v21 ^ 1u phonemesSpoken:&stru_2881CBD18 error:v22];
    }
  }

  v23 = [(VSSpeechServerTask *)self error];
  if (!v23)
  {
    goto LABEL_14;
  }

  v24 = v23;
  v25 = [(VSSpeechServerTask *)self error];
  if ([v25 code] == 400)
  {

LABEL_14:
    v28 = [(VSSpeechServerTask *)self speakTask];
    if (v28)
    {
      v29 = 1;
    }

    else
    {
      v29 = [(VSSpeechServerTask *)self isEagerCache];
    }

    v30 = [(VSSpeechServerTask *)self voiceKey];
    v31 = VSGetLogDefault();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v84 = [(VSSpeechServerTask *)self instrumentMetrics];
      v80 = [v84 requestCreatedTimestamp];
      v32 = [(VSSpeechServerTask *)self isCancelled];
      v33 = @"Finished";
      if (v32)
      {
        v33 = @"Cancelled";
      }

      v78 = v33;
      v34 = [(VSSpeechServerTask *)self isSpeaking];
      v35 = @"synthesizing";
      if (v34)
      {
        v35 = @"speaking";
      }

      v77 = v35;
      v83 = [(VSSpeechServerTask *)self request];
      v36 = [v83 logUtterance];
      v37 = @"(null)";
      if (v30)
      {
        v37 = v30;
      }

      v88[0] = v37;
      v86 = v36;
      v87[0] = @"voice";
      v87[1] = @"is_eager";
      v82 = [MEMORY[0x277CCABB0] numberWithBool:v29];
      v88[1] = v82;
      v87[2] = @"is_one_shot";
      v38 = MEMORY[0x277CCABB0];
      v81 = [(VSSpeechServerTask *)self instrumentMetrics];
      v79 = [v81 isServerTTS];
      v85 = v30;
      if (v79)
      {
        v76 = [(VSSpeechServerTask *)self instrumentMetrics];
        if ([v76 isSynthesisCached])
        {
          v39 = v29 ^ 1;
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
      v42 = [(VSSpeechServerTask *)self instrumentMetrics];
      v43 = [v41 numberWithBool:{objc_msgSend(v42, "isServerTimeout")}];
      v88[3] = v43;
      v87[4] = @"is_device_tts";
      v44 = MEMORY[0x277CCABB0];
      v45 = [(VSSpeechServerTask *)self instrumentMetrics];
      v46 = [v44 numberWithInt:{objc_msgSend(v45, "isServerTTS") ^ 1}];
      v88[4] = v46;
      v87[5] = @"source_of_tts";
      v47 = MEMORY[0x277D79938];
      v48 = [(VSSpeechServerTask *)self instrumentMetrics];
      v49 = [v47 stringOfSourceOfTTS:{objc_msgSend(v48, "sourceOfTTS")}];
      v88[5] = v49;
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:6];
      *buf = 134219010;
      v90 = v80;
      v91 = 2112;
      v92 = v78;
      v93 = 2112;
      v94 = v77;
      v95 = 2112;
      v96 = v86;
      v97 = 2114;
      v98 = v50;
      _os_log_impl(&dword_2727E4000, v31, OS_LOG_TYPE_DEFAULT, "Server task %llu: %@ %@ utterance: '%@', %{public}@", buf, 0x34u);

      if (v79)
      {
      }

      v30 = v85;
    }

    v51 = [(VSSpeechServerTask *)self isCancelled];
    v52 = [(VSSpeechServerTask *)self siriInstrumentation];
    v53 = v52;
    if (v51)
    {
      [v52 instrumentSpeechCancelled];
    }

    else
    {
      v54 = [(VSSpeechServerTask *)self instrumentMetrics];
      [v54 audioDuration];
      v56 = v55;
      v57 = [(VSSpeechServerTask *)self instrumentMetrics];
      [v57 ttsSynthesisLatency];
      v59 = v58;
      v60 = [(VSSpeechServerTask *)self instrumentMetrics];
      [v60 cappedRealTimeFactor];
      v62 = v61;
      v63 = [(VSSpeechServerTask *)self instrumentMetrics];
      v64 = [v63 promptCount];
      v65 = [(VSSpeechServerTask *)self instrumentMetrics];
      [v53 instrumentSpeechEndedWithAudioDuration:v64 synthesisLatency:objc_msgSend(v65 realTimeFactor:"errorCode") promptCount:v56 errorCode:{v59, v62}];
    }

    v66 = MEMORY[0x277D79918];
    v67 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v66 reportInstrumentMetrics:v67];
    goto LABEL_36;
  }

  v26 = [(VSSpeechServerTask *)self error];
  v27 = [v26 code];

  if (v27 == 501)
  {
    goto LABEL_14;
  }

  v69 = VSGetLogDefault();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    v73 = [(VSSpeechServerTask *)self instrumentMetrics];
    v74 = [v73 requestCreatedTimestamp];
    v75 = [(VSSpeechServerTask *)self error];
    *buf = 134218242;
    v90 = v74;
    v91 = 2112;
    v92 = v75;
    _os_log_error_impl(&dword_2727E4000, v69, OS_LOG_TYPE_ERROR, "Error in server task %llu, error: %@", buf, 0x16u);
  }

  v30 = [(VSSpeechServerTask *)self siriInstrumentation];
  v70 = MEMORY[0x277CCABB0];
  v67 = [(VSSpeechServerTask *)self error];
  v71 = [v70 numberWithInteger:{objc_msgSend(v67, "code")}];
  v99[0] = v71;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:1];
  [(__CFString *)v30 instrumentSpeechFailedWithErrorCodes:v72];

LABEL_36:
  v68 = *MEMORY[0x277D85DE8];
}

- (id)voiceKey
{
  v3 = [(VSSpeechServerTask *)self instrumentMetrics];
  v4 = [v3 isServerTTS];

  if ((v4 & 1) == 0)
  {
    v7 = [(VSSpeechServerTask *)self synthesisCore];
    v8 = [v7 selectedVoice];
    v10 = [v8 voiceData];
    v9 = [v10 descriptiveKey];

    goto LABEL_5;
  }

  v5 = [(VSSpeechServerTask *)self instrumentMetrics];
  v6 = [v5 sourceOfTTS];

  if (v6 == 5)
  {
    v7 = [(VSSpeechServerTask *)self ospreyCore];
    v8 = [v7 voice];
    v9 = [v8 descriptiveKey];
LABEL_5:

    goto LABEL_7;
  }

  v7 = [(VSSpeechServerTask *)self instrumentMetrics];
  v9 = [v7 voiceAssetKey];
LABEL_7:

  return v9;
}

- (void)reportInstrumentMetrics
{
  v46 = *MEMORY[0x277D85DE8];
  if (self->_shouldSpeak)
  {
    v3 = [(VSSpeechServerTask *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(VSSpeechServerTask *)self delegate];
      v6 = [(VSSpeechServerTask *)self request];
      v7 = [(VSSpeechServerTask *)self instrumentMetrics];
      [v5 speechRequest:v6 didReportInstrumentMetrics:v7];
    }
  }

  v8 = [(VSSpeechServerTask *)self speakTask];
  v9 = [v8 delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(VSSpeechServerTask *)self speakTask];
    v12 = [v11 instrumentMetrics];

    v13 = [(VSSpeechServerTask *)self instrumentMetrics];
    v14 = [v13 voiceAssetKey];
    [v12 setVoiceAssetKey:v14];

    v15 = [(VSSpeechServerTask *)self instrumentMetrics];
    v16 = [v15 voiceResourceAssetKey];
    [v12 setVoiceResourceAssetKey:v16];

    v17 = [(VSSpeechServerTask *)self instrumentMetrics];
    v18 = [v17 utterance];
    [v12 setUtterance:v18];

    v19 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v12 setSynthesisBeginTimestamp:{objc_msgSend(v19, "synthesisBeginTimestamp")}];

    v20 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v12 setSynthesisEndTimestamp:{objc_msgSend(v20, "synthesisEndTimestamp")}];

    v21 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v12 setSpeechBeginTimestamp:{objc_msgSend(v21, "speechBeginTimestamp")}];

    v22 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v12 setSpeechEndTimestamp:{objc_msgSend(v22, "speechEndTimestamp")}];

    v23 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v12 setAudioStartTimestampDiffs:{objc_msgSend(v23, "audioStartTimestampDiffs")}];

    v24 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v24 audioDuration];
    [v12 setAudioDuration:?];

    v25 = [v12 requestCreatedTimestamp];
    v26 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v12 setEagerRequestCreatedTimestampDiffs:{v25 - objc_msgSend(v26, "requestCreatedTimestamp")}];

    v27 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v12 setIsServerTimeout:{objc_msgSend(v27, "isServerTimeout")}];

    v28 = [(VSSpeechServerTask *)self speakTask];
    v29 = [v28 delegate];
    v30 = [(VSSpeechServerTask *)self speakTask];
    v31 = [v30 request];
    v32 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v29 speechRequest:v31 didReportInstrumentMetrics:v32];
  }

  v33 = VSGetLogDefault();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [(VSSpeechServerTask *)self instrumentMetrics];
    v35 = [v34 requestCreatedTimestamp];
    v36 = [(VSSpeechServerTask *)self instrumentMetrics];
    v42 = 134218242;
    v43 = v35;
    v44 = 2112;
    v45 = v36;
    _os_log_impl(&dword_2727E4000, v33, OS_LOG_TYPE_DEFAULT, "Server task %llu: Instrument metric: %@", &v42, 0x16u);
  }

  v37 = +[VSDiagnosticService defaultService];
  v38 = [(VSSpeechServerTask *)self instrumentMetrics];
  v39 = [v38 dictionaryMetrics];
  v40 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v37 dumpInstrumentMetrics:v39 withTimestamp:{objc_msgSend(v40, "requestCreatedTimestamp")}];

  v41 = *MEMORY[0x277D85DE8];
}

- (void)reportSpeechStart
{
  v43 = *MEMORY[0x277D85DE8];
  if (self->_shouldSpeak)
  {
    v3 = [(VSSpeechServerTask *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(VSSpeechServerTask *)self delegate];
      v6 = [(VSSpeechServerTask *)self request];
      [v5 speechRequestDidStart:v6];
    }
  }

  v7 = [(VSSpeechServerTask *)self speakTask];
  if (v7)
  {
    v8 = v7;
    v9 = [(VSSpeechServerTask *)self speakTask];
    v10 = [v9 delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(VSSpeechServerTask *)self speakTask];
      v13 = [v12 delegate];
      v14 = [(VSSpeechServerTask *)self speakTask];
      v15 = [v14 request];
      [v13 speechRequestDidStart:v15];
    }
  }

  if ([(VSSpeechServerTask *)self useServerResponse])
  {
    v16 = [(VSSpeechServerTask *)self ospreyCore];
    v17 = [v16 voice];
  }

  else
  {
    v16 = [(VSSpeechServerTask *)self synthesisCore];
    v18 = [v16 selectedVoice];
    v17 = [v18 voiceData];
  }

  if ([(VSSpeechServerTask *)self useServerResponse])
  {
    v19 = [(VSSpeechServerTask *)self ospreyCore];
    [v19 voiceResource];
  }

  else
  {
    v19 = [(VSSpeechServerTask *)self synthesisCore];
    [v19 selectedVoiceResource];
  }
  v39 = ;

  v20 = [(VSSpeechServerTask *)self siriInstrumentation];
  v38 = [(VSSpeechServerTask *)self instrumentMetrics];
  v35 = [v38 sourceOfTTS];
  v37 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v37 timeToSpeakLatency];
  v22 = v21;
  v36 = [(VSSpeechServerTask *)self playbackService];
  v23 = [v36 outputRouteInfo];
  v24 = [v17 type];
  v25 = [v17 footprint];
  [v17 contentVersion];
  v26 = v40 = v17;
  v27 = [v26 unsignedIntegerValue];
  v28 = [v39 contentVersion];
  v29 = [v28 unsignedIntegerValue];
  v30 = [(VSSpeechServerTask *)self request];
  LOBYTE(v34) = [v30 shouldWhisper];
  [v20 instrumentSpeechStartedWithSource:v35 customerPerceivedLatency:v23 audioOutputRoute:v24 voiceType:v25 voiceFootprint:v27 voiceVersion:v29 resourceVersion:v22 isWhisper:v34];

  v31 = VSGetLogDefault();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v33 = [(VSSpeechServerTask *)self instrumentMetrics];
    *buf = 134217984;
    v42 = [v33 requestCreatedTimestamp];
    _os_log_debug_impl(&dword_2727E4000, v31, OS_LOG_TYPE_DEBUG, "Server task %llu started speaking", buf, 0xCu);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)reportTimingInfo
{
  shouldSpeak = self->_shouldSpeak;
  v4 = [(VSSpeechServerTask *)self delegate];
  if (shouldSpeak)
  {
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = [(VSSpeechServerTask *)self delegate];
    v7 = [(VSSpeechServerTask *)self request];
    v8 = [(VSSpeechServerTask *)self wordTimingInfo];
    [v6 speechRequest:v7 didReceiveTimingInfo:v8];
  }

  else
  {
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = [(VSSpeechServerTask *)self delegate];
    v7 = [(VSSpeechServerTask *)self request];
    v8 = [(VSSpeechServerTask *)self wordTimingInfo];
    [v6 synthesisRequest:v7 didReceiveTimingInfo:v8];
  }

LABEL_7:
  v10 = [(VSSpeechServerTask *)self speakTask];
  v11 = [v10 delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v17 = [(VSSpeechServerTask *)self speakTask];
    v13 = [v17 delegate];
    v14 = [(VSSpeechServerTask *)self speakTask];
    v15 = [v14 request];
    v16 = [(VSSpeechServerTask *)self wordTimingInfo];
    [v13 speechRequest:v15 didReceiveTimingInfo:v16];
  }
}

- (void)setObserverForWordTimings:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(VSSpeechServerTask *)self playbackService];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__VSSpeechServerTask_setObserverForWordTimings___block_invoke;
  v6[3] = &unk_279E4B9C0;
  objc_copyWeak(&v7, &location);
  [v5 setBoundaryTimeObserverForTimingInfos:v4 usingBlock:v6];

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

  v3 = [(VSSpeechServerTask *)self speakTask];
  v2 = v3 != 0;

  return v2;
}

- (void)resume
{
  v3 = [(VSSpeechServerTask *)self playbackService];
  v2 = [v3 start];
}

- (void)suspend
{
  v2 = [(VSSpeechServerTask *)self playbackService];
  [v2 pause];
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

  v4 = [(VSSpeechServerTask *)self playbackService];
  [v4 stop];

  v5 = [(VSSpeechServerTask *)self synthesisCore];
  [v5 cancel];

  v6 = [(VSSpeechServerTask *)self ospreyCore];
  [v6 cancel];

  pthread_cond_broadcast(&self->_timeoutCondition);
}

- (void)proceedWithServerTTS
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = mach_absolute_time();
  v4 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v4 setSynthesisBeginTimestamp:v3];

  kdebug_trace();
  v5 = [MEMORY[0x277D79950] sharedManager];
  v6 = [(VSSpeechServerTask *)self request];
  v7 = [v6 languageCode];
  v8 = [v5 selectVoiceResourceAssetForLanguage:v7];

  v9 = [(VSSpeechServerTask *)self request];
  v10 = [v9 voiceName];
  v11 = [v10 length];

  if (!v11)
  {
    v12 = [(VSSpeechServerTask *)self request];
    v13 = [v12 gender];

    if (!v13)
    {
      v14 = [v8 defaultVoiceGender];
      v15 = [(VSSpeechServerTask *)self request];
      [v15 setGender:v14];
    }

    v16 = [(VSSpeechServerTask *)self request];
    v17 = [v8 defaultVoiceNameForGender:{objc_msgSend(v16, "gender")}];
    v18 = [(VSSpeechServerTask *)self request];
    [v18 setVoiceName:v17];
  }

  v19 = objc_opt_new();
  v20 = [(VSSpeechServerTask *)self request];
  v21 = [v20 text];
  v22 = [(VSSpeechServerTask *)self request];
  v23 = [v22 languageCode];
  v24 = [(VSSpeechServerTask *)self request];
  v25 = [v24 voiceName];
  v26 = [v19 estimatedTTSWordTimingForText:v21 withLanguage:v23 voiceName:v25];
  [(VSSpeechServerTask *)self setWordTimingInfo:v26];

  v27 = [(VSSpeechServerTask *)self wordTimingInfo];

  if (v27)
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

  v29 = [(VSSpeechServerTask *)self request];
  v30 = [v29 disableDeviceRacing];

  if (v30)
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

  v35 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v35 setIsServerTTSRacing:1];

  v36 = VSGetLogDefault();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2727E4000, v36, OS_LOG_TYPE_DEFAULT, "Device TTS is racing with Server TTS", buf, 2u);
  }

  v37 = [(VSSpeechServerTask *)self synthesisCore];
  [v37 start];

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

  v39 = [(VSSpeechServerTask *)self shouldRelyOnServerTTS];
  if (([(VSSpeechServerTask *)self isCancelled]& 1) == 0)
  {
    if (v39)
    {
      v40 = [(VSSpeechServerTask *)self ospreyCore];
      [v40 waitUntilFinished];
    }

    else
    {
      [(VSSpeechServerTask *)self deviceTTSWaitTime];
      if (v41 <= 0.0)
      {
        goto LABEL_27;
      }

      v40 = [(VSSpeechServerTask *)self ospreyCore];
      [(VSSpeechServerTask *)self deviceTTSWaitTime];
      [v40 waitUntilFinishedIfAudioReceivedWithin:?];
    }

    if (([(VSSpeechServerTask *)self isCancelled]& 1) == 0)
    {
      v42 = [(VSSpeechServerTask *)self ospreyCore];
      v43 = [v42 error];
      v44 = [v43 code];

      if (v44 != 603)
      {
        v46 = [(VSSpeechServerTask *)self ospreyCore];
        v47 = [v46 error];
        if (v47)
        {
        }

        else
        {
          v48 = [(VSSpeechServerTask *)self error];
          v49 = [v48 domain];
          v50 = [v49 isEqualToString:@"ServerTTSErrorDomain"];

          if (!v50)
          {
            goto LABEL_27;
          }
        }

        [(VSSpeechServerTask *)self fallbackToDeviceSynthesis];
        goto LABEL_27;
      }

      v45 = [(VSSpeechServerTask *)self instrumentMetrics];
      [v45 setErrorCode:603];

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

- (void)proceedWithSpeechCache:(id)a3
{
  v4 = a3;
  [(VSSpeechServerTask *)self setUseServerResponse:1];
  v5 = [v4 voiceKey];
  v6 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v6 setVoiceAssetKey:v5];

  v7 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v7 setIsCacheHitFromMemory:1];

  v8 = [v4 timingInfos];
  [(VSSpeechServerTask *)self setWordTimingInfo:v8];

  [(VSSpeechServerTask *)self reportTimingInfo];
  v9 = [v4 audio];
  v10 = [(VSSpeechServerTask *)self enqueueAudioData:v9];

  v11 = [(VSSpeechServerTask *)self wordTimingInfo];
  [(VSSpeechServerTask *)self setObserverForWordTimings:v11];

  v12 = [v4 audio];

  [(VSSpeechServerTask *)self setServerAudio:v12];
}

- (void)main
{
  kdebug_trace();
  v3 = [(VSSpeechServerTask *)self serverTTSConfig];
  v4 = [v3 experimentIdentifier];
  v5 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v5 setExperimentIdentifier:v4];

  v6 = [(VSSpeechServerTask *)self cachingService];
  v7 = [(VSSpeechServerTask *)self request];
  v8 = [v7 text];
  v9 = [v6 popShortTermCacheForHash:v8];

  if (v9)
  {
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Inline server TTS is previously cached.", buf, 2u);
    }

    v11 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v11 setSourceOfTTS:6];
  }

  else
  {
    v12 = [(VSSpeechServerTask *)self cachingService];
    v7 = [(VSSpeechServerTask *)self request];
    v13 = [(VSSpeechServerTask *)self eagerTaskHashForRequest:v7];
    v9 = [v12 popShortTermCacheForHash:v13];

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
    v16 = [(VSSpeechServerTask *)self playbackService];
    [v16 flushAndStop];

    v17 = [(VSSpeechServerTask *)self error];

    if (!v17)
    {
      v18 = [(VSSpeechServerTask *)self playbackService];
      v19 = [v18 error];
      [(VSSpeechServerTask *)self setError:v19];
    }

    v7 = mach_absolute_time();
    v20 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v20 setSpeechEndTimestamp:v7];
    goto LABEL_15;
  }

  v20 = [(VSSpeechServerTask *)self request];
  if (![v20 shouldCache] || !-[VSSpeechServerTask useServerResponse](self, "useServerResponse") || (-[VSSpeechServerTask isCancelled](self, "isCancelled") & 1) != 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v7 = [(VSSpeechServerTask *)self error];

  if (!v7)
  {
    v20 = [(VSSpeechServerTask *)self cachingService];
    v43 = [(VSSpeechServerTask *)self request];
    v33 = [(VSSpeechServerTask *)self eagerTaskHashForRequest:v43];
    v34 = [(VSSpeechServerTask *)self serverAudio];
    v35 = [(VSSpeechServerTask *)self wordTimingInfo];
    v42 = [(VSSpeechServerTask *)self instrumentMetrics];
    v36 = [v42 voiceAssetKey];
    v37 = [(VSSpeechServerTask *)self instrumentMetrics];
    v7 = [v37 voiceResourceAssetKey];
    [v20 enqueueShortTermCacheWithHash:v33 audio:v34 timingInfo:v35 voiceKey:v36 voiceResourceKey:v7 completion:0];

    goto LABEL_15;
  }

LABEL_16:
  v21 = [(VSSpeechServerTask *)self useServerResponse];
  if (v21)
  {
    v22 = [(VSSpeechServerTask *)self error];
    if (!v22)
    {
LABEL_24:
      [(VSSpeechServerTask *)self reportInstrumentMetrics];
      goto LABEL_25;
    }

    v7 = v22;
    if (![(VSSpeechServerTask *)self useDeviceSynthesis])
    {

      goto LABEL_25;
    }
  }

  else if (![(VSSpeechServerTask *)self useDeviceSynthesis])
  {
    goto LABEL_25;
  }

  v23 = [(VSSpeechServerTask *)self synthesisCore];
  v24 = [v23 error];

  if (v21)
  {
  }

  if (!v24)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (![(VSSpeechServerTask *)self useDeviceSynthesis])
  {
    goto LABEL_28;
  }

  v25 = [(VSSpeechServerTask *)self error];
  v26 = [(VSSpeechServerTask *)self ospreyCore];
  v27 = [v26 error];
  v28 = v27;
  if (v25 == v27)
  {

LABEL_36:
    [(VSSpeechServerTask *)self setError:0];
    if (v9)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  v29 = [(VSSpeechServerTask *)self error];
  v30 = [v29 domain];
  v31 = [v30 isEqualToString:@"ServerTTSErrorDomain"];

  if (v31)
  {
    goto LABEL_36;
  }

LABEL_28:
  if (v9)
  {
LABEL_29:
    v32 = [v9 audio];
LABEL_39:
    v38 = v32;
    [(VSSpeechServerTask *)self writeAudioIfNeeded:v32];
    goto LABEL_40;
  }

LABEL_37:
  if ([(VSSpeechServerTask *)self useServerResponse])
  {
    v32 = [(VSSpeechServerTask *)self serverAudio];
    goto LABEL_39;
  }

  if (![(VSSpeechServerTask *)self useDeviceSynthesis])
  {
    goto LABEL_41;
  }

  v38 = [(VSSpeechServerTask *)self synthesisCore];
  v39 = [v38 streamAudio];
  if (v39)
  {
    [(VSSpeechServerTask *)self writeAudioIfNeeded:v39];
  }

  else
  {
    v40 = [(VSSpeechServerTask *)self synthesisCore];
    v41 = [v40 compressedAudio];
    [(VSSpeechServerTask *)self writeAudioIfNeeded:v41];
  }

LABEL_40:
LABEL_41:
  [(VSSpeechServerTask *)self reportFinish];
  kdebug_trace();
}

- (id)eagerTaskHashForRequest:(id)a3
{
  v18 = MEMORY[0x277CCACA8];
  v3 = a3;
  v4 = [v3 languageCode];
  v5 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v3, "gender")}];
  v6 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v3, "voiceType")}];
  v7 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v3, "footprint")}];
  v8 = [v3 text];
  v9 = MEMORY[0x277CCABB0];
  [v3 rate];
  v10 = [v9 numberWithDouble:?];
  v11 = MEMORY[0x277CCABB0];
  [v3 pitch];
  v12 = [v11 numberWithDouble:?];
  v13 = MEMORY[0x277CCABB0];
  [v3 volume];
  v14 = [v13 numberWithDouble:?];
  v15 = [v3 contextInfo];

  v16 = [v18 stringWithFormat:@"EagerTTS:%@:%@:%@:%@:%@:%@:%@:%@:%@", v4, v5, v6, v7, v8, v10, v12, v14, v15];

  return v16;
}

- (id)enqueueAudioData:(id)a3
{
  v46[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(VSSpeechServerTask *)self setReadyForEagerTask:0];
  v5 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v4 duration];
  v7 = v6;
  [v5 audioDuration];
  [v5 setAudioDuration:v7 + v8];

  if (![(VSSpeechServerTask *)self shouldSpeak])
  {
    v9 = [(VSSpeechServerTask *)self speakTask];

    if (!v9)
    {
      v19 = [(VSSpeechServerTask *)self request];
      v20 = [v19 shouldStreamAudioData];

      if (v20)
      {
        v21 = [(VSSpeechServerTask *)self delegate];
        v22 = [(VSSpeechServerTask *)self request];
        [v21 synthesisRequest:v22 didGenerateAudioChunk:v4];
      }

      goto LABEL_10;
    }
  }

  v10 = [(VSSpeechServerTask *)self playbackService];

  if (v10)
  {
LABEL_4:
    v11 = [(VSSpeechServerTask *)self playbackService];
    v12 = [v4 audioData];
    v13 = [v4 packetCount];
    v14 = [v4 packetDescriptions];
    [v11 enqueue:v12 packetCount:v13 packetDescriptions:v14];

    if (![(VSSpeechServerTask *)self speechStartReported])
    {
      v15 = mach_absolute_time();
      v16 = [(VSSpeechServerTask *)self instrumentMetrics];
      [v16 setSpeechBeginTimestamp:v15];

      [(VSSpeechServerTask *)self reportSpeechStart];
      [(VSSpeechServerTask *)self setSpeechStartReported:1];
    }

LABEL_10:
    v23 = 0;
    goto LABEL_11;
  }

  if (self->_shouldSpeak)
  {
    v17 = [(VSSpeechServerTask *)self request];
    v18 = [v17 audioSessionID];
  }

  else
  {
    v17 = [(VSSpeechServerTask *)self speakTask];
    v26 = [v17 request];
    v18 = [v26 audioSessionID];
  }

  v27 = [VSAudioPlaybackService alloc];
  if (v4)
  {
    [v4 asbd];
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
  }

  v28 = [(VSSpeechServerTask *)self request:v42];
  v29 = [v28 accessoryID];
  v30 = [(VSAudioPlaybackService *)v27 initWithAudioSessionID:v18 asbd:&v42 useAVSBAR:v29 != 0];
  [(VSSpeechServerTask *)self setPlaybackService:v30];

  v31 = [(VSSpeechServerTask *)self playbackService];
  v32 = [v31 outputRouteInfo];
  v33 = [v32 audioRouteName];
  v34 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v34 setAudioOutputRoute:v33];

  v35 = [(VSSpeechServerTask *)self playbackService];

  if (v35)
  {
    v36 = mach_absolute_time();
    v37 = [(VSSpeechServerTask *)self playbackService];
    v23 = [v37 start];

    if (!v23)
    {
      v38 = mach_absolute_time() - v36;
      v39 = [(VSSpeechServerTask *)self instrumentMetrics];
      [v39 setAudioStartTimestampDiffs:v38];

      goto LABEL_4;
    }
  }

  else
  {
    v40 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA450];
    v46[0] = @"Unable to create playback service";
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v23 = [v40 errorWithDomain:@"VoiceServicesErrorDomain" code:450 userInfo:v41];
  }

LABEL_11:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)handleDeviceSynthesis:(id)a3 timingInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  if (v6)
  {
    v10 = [(VSSpeechServerTask *)self instrumentMetrics];
    v11 = [v10 synthesisEndTimestamp];

    if (!v11)
    {
      v12 = mach_absolute_time();
      v13 = [(VSSpeechServerTask *)self instrumentMetrics];
      [v13 setSynthesisEndTimestamp:v12];

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

    if (v7)
    {
      [(VSSpeechServerTask *)self setDeferredTTSTimingInfo:v7];
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
    v16 = [(VSSpeechServerTask *)self ospreyCore];
    [v16 cancel];

    v17 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v17 setIsServerTTS:0];

    v18 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v18 setSourceOfTTS:1];
  }

  if (v6)
  {
    v19 = [(VSSpeechServerTask *)self synthesisCore];
    v20 = [v19 selectedVoice];
    v21 = [v20 key];
    v22 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v22 setVoiceAssetKey:v21];

    v23 = [(VSSpeechServerTask *)self synthesisCore];
    v24 = [v23 selectedVoiceResource];
    v25 = [v24 key];
    v26 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v26 setVoiceResourceAssetKey:v25];

    v9 = [(VSSpeechServerTask *)self enqueueAudioData:v6];
    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v9 = 0;
  if (v7)
  {
LABEL_21:
    [(VSSpeechServerTask *)self setWordTimingInfo:v7];
    v27 = [(VSSpeechServerTask *)self wordTimingInfo];
    [(VSSpeechServerTask *)self setObserverForWordTimings:v27];

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
  v3 = [(VSSpeechServerTask *)self request];
  if ([v3 disableDeviceRacing])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(VSSpeechServerTask *)self synthesisCore];
    if ([v5 isCancelled])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(VSSpeechServerTask *)self synthesisCore];
      v7 = [v6 error];
      if (v7)
      {
        v4 = 1;
      }

      else
      {
        v8 = [(VSSpeechServerTask *)self synthesisCore];
        v9 = [v8 selectedVoice];
        v10 = [v9 voiceData];
        if ([v10 footprint] == 1)
        {
          v4 = 1;
        }

        else
        {
          v14 = [(VSSpeechServerTask *)self synthesisCore];
          v11 = [v14 selectedVoice];
          v12 = [v11 voiceData];
          v4 = [v12 type] == 4 && self->_isNeuralFallbackCondition;
        }
      }
    }
  }

  return v4;
}

- (void)fallbackToDeviceSynthesis
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = [(VSSpeechServerTask *)self error];

  if (v3)
  {
    v4 = VSGetLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v50 = [(VSSpeechServerTask *)self error];
      v51 = [v50 localizedDescription];
      *buf = 138412290;
      v54 = v51;
      _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, "Server network error: %@", buf, 0xCu);
    }
  }

  v5 = [(VSSpeechServerTask *)self ospreyCore];
  if (([v5 isCancelled] & 1) == 0)
  {

    goto LABEL_9;
  }

  v6 = [(VSSpeechServerTask *)self ospreyCore];
  v7 = [v6 error];
  v8 = [v7 code];

  if (v8 == 602)
  {
LABEL_9:
    v9 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v9 setIsServerTimeout:1];
  }

  v10 = [(VSSpeechServerTask *)self request];
  v11 = [v10 disableDeviceRacing];

  if (v11)
  {
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_DEFAULT, "Start device synthesis fallback.", buf, 2u);
    }

    v13 = [(VSSpeechServerTask *)self synthesisCore];
    [v13 start];
  }

  v14 = [(VSSpeechServerTask *)self synthesisCore];
  v15 = [v14 error];
  if (v15)
  {

    goto LABEL_35;
  }

  v16 = [(VSSpeechServerTask *)self synthesisCore];
  v17 = [v16 streamAudio];
  if (v17)
  {
  }

  else
  {
    v18 = [(VSSpeechServerTask *)self synthesisCore];
    v19 = [v18 compressedAudio];

    if (!v19)
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
  v21 = [(VSSpeechServerTask *)self deferredTTSTimingInfo];
  [(VSSpeechServerTask *)self setWordTimingInfo:v21];

  v22 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v22 setIsServerTTS:0];

  v23 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v23 setSourceOfTTS:1];

  v24 = [(VSSpeechServerTask *)self synthesisCore];
  v25 = [v24 selectedVoice];
  v26 = [v25 key];
  v27 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v27 setVoiceAssetKey:v26];

  v28 = [(VSSpeechServerTask *)self synthesisCore];
  v29 = [v28 selectedVoiceResource];
  v30 = [v29 key];
  v31 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v31 setVoiceResourceAssetKey:v30];

  v32 = [(VSSpeechServerTask *)self synthesisCore];
  v33 = [v32 streamAudio];

  v34 = [(VSSpeechServerTask *)self synthesisCore];
  v35 = v34;
  if (v33)
  {
    v36 = [v34 streamAudio];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __47__VSSpeechServerTask_fallbackToDeviceSynthesis__block_invoke;
    v52[3] = &unk_279E4BB18;
    v52[4] = self;
    [v36 enumerateAudioWithBlock:v52];
LABEL_25:

    goto LABEL_26;
  }

  v37 = [v34 compressedAudio];

  if (v37)
  {
    v35 = [(VSSpeechServerTask *)self synthesisCore];
    v36 = [v35 compressedAudio];
    v38 = [(VSSpeechServerTask *)self enqueueAudioData:v36];
    goto LABEL_25;
  }

LABEL_26:
  v39 = [(VSSpeechServerTask *)self wordTimingInfo];
  [(VSSpeechServerTask *)self setObserverForWordTimings:v39];

  [(VSSpeechServerTask *)self reportTimingInfo];
  v40 = [(VSSpeechServerTask *)self ospreyCore];
  v41 = [v40 error];
  if (v41)
  {
  }

  else
  {
    v42 = [(VSSpeechServerTask *)self error];
    v30 = [v42 domain];
    v43 = [v30 isEqualToString:@"ServerTTSErrorDomain"];

    if (!v43)
    {
      goto LABEL_35;
    }
  }

  v44 = [(VSSpeechServerTask *)self ospreyCore];
  v45 = [v44 error];
  if (v45)
  {
    v30 = [(VSSpeechServerTask *)self ospreyCore];
    [v30 error];
  }

  else
  {
    [(VSSpeechServerTask *)self error];
  }
  v46 = ;
  v47 = [v46 code];
  v48 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v48 setErrorCode:v47];

  if (v45)
  {

    v46 = v30;
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
  v6 = [(VSSpeechServerTask *)self request];
  v7 = [v6 languageCode];
  v8 = [v4 localizedInterstitialStringForKey:v5 language:v7];

  v9 = [(VSSpeechServerTask *)self request];
  v10 = [v9 copy];

  v11 = MEMORY[0x277CCACA8];
  v12 = [(VSSpeechServerTask *)self synthesisCore];
  v13 = [v12 request];
  v14 = [v13 utterance];
  v15 = [v11 stringWithFormat:@"%@ %@", v8, v14];
  [v10 setUtterance:v15];

  v16 = MEMORY[0x277CCACA8];
  v17 = [(VSSpeechServerTask *)self synthesisCore];
  v18 = [v17 request];
  v19 = [v18 text];
  v20 = [v16 stringWithFormat:@"%@ %@", v8, v19];
  [v10 setText:v20];

  v21 = [(VSSpeechServerTask *)self playbackService];
  [v21 stop];

  [(VSSpeechServerTask *)self setPlaybackService:0];
  [(VSSpeechServerTask *)self setUseServerResponse:0];
  [(VSSpeechServerTask *)self setUseDeviceSynthesis:1];
  v22 = [[VSDeviceTTSCore alloc] initWithRequest:v10];
  [(VSDeviceTTSCore *)v22 setDelegate:self];
  [(VSDeviceTTSCore *)v22 start];
}

- (id)handleServerResponse:(id)a3 timingInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  pthread_mutex_lock(&self->_racingMutex);
  if ([(VSSpeechServerTask *)self useDeviceSynthesis])
  {
    v8 = [(VSSpeechServerTask *)self synthesisCore];
    v9 = [v8 selectedVoice];
    v10 = [v9 voiceData];
    v11 = [v10 footprint];

    if (v11 != 1)
    {
      v31 = VSGetLogDefault();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *v33 = 0;
        _os_log_impl(&dword_2727E4000, v31, OS_LOG_TYPE_INFO, "Received device synthesis previously, ignore server TTS.", v33, 2u);
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
    v13 = [(VSSpeechServerTask *)self instrumentMetrics];
    [v13 setIsServerTTS:1];
  }

  v14 = mach_absolute_time();
  v15 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v15 setSynthesisEndTimestamp:v14];

  kdebug_trace();
  v16 = [(VSSpeechServerTask *)self ospreyCore];
  v17 = [v16 voice];
  v18 = [v17 voiceKey];
  v19 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v19 setVoiceAssetKey:v18];

  v20 = [(VSSpeechServerTask *)self ospreyCore];
  v21 = [v20 voiceResource];
  v22 = [v21 key];
  v23 = [(VSSpeechServerTask *)self instrumentMetrics];
  [v23 setVoiceResourceAssetKey:v22];

  v24 = [(VSSpeechServerTask *)self wordTimingInfo];

  if (!v24)
  {
    [(VSSpeechServerTask *)self setWordTimingInfo:v7];
    [(VSSpeechServerTask *)self reportTimingInfo];
  }

  v25 = [(VSSpeechServerTask *)self enqueueAudioData:v6];
  v26 = [(VSSpeechServerTask *)self wordTimingInfo];
  [(VSSpeechServerTask *)self setObserverForWordTimings:v26];

  v27 = [(VSSpeechServerTask *)self serverAudio];

  if (v27)
  {
    v28 = [(VSSpeechServerTask *)self serverAudio];
    [v28 concatenateWithAudio:v6];
  }

  else
  {
    [(VSSpeechServerTask *)self setServerAudio:v6];
  }

  v29 = [(VSSpeechServerTask *)self synthesisCore];
  v30 = [v29 isCancelled];

  if ((v30 & 1) == 0)
  {
    v31 = [(VSSpeechServerTask *)self synthesisCore];
    [v31 cancel];
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

- (VSSpeechServerTask)init
  v2 = {;
  objc_exception_throw(v2);
}

@end