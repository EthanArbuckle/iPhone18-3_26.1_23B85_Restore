@interface VSDeviceTTSCore
- (VSDeviceTTSCore)initWithRequest:(id)a3;
- (VSDeviceTTSCoreDelegate)delegate;
- (VSInstrumentMetrics)instrumentMetrics;
- (VSVoiceAssetSelection)selectedVoice;
- (VSVoiceResourceAsset)selectedVoiceResource;
- (id)getCacheForHash:(id)a3;
- (id)prepareForSynthesis;
- (id)taskHash;
- (id)voiceSelectionWithRequest:(id)a3 error:(id *)a4;
- (id)voiceSelection_noRetry_WithRequest:(id)a3 error:(id *)a4;
- (void)cancel;
- (void)main;
- (void)reportAudio:(id)a3;
- (void)reportProcessingWordTimingInfo:(id)a3;
- (void)reportWordTimingInfo:(id)a3;
- (void)setEngine:(id)a3;
@end

@implementation VSDeviceTTSCore

- (VSInstrumentMetrics)instrumentMetrics
{
  WeakRetained = objc_loadWeakRetained(&self->_instrumentMetrics);

  return WeakRetained;
}

- (VSDeviceTTSCoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)reportAudio:(id)a3
{
  v7 = a3;
  v4 = [(VSDeviceTTSCore *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VSDeviceTTSCore *)self delegate];
    [v6 synthesisCore:self didReceiveAudio:v7];
  }
}

- (void)reportWordTimingInfo:(id)a3
{
  v7 = a3;
  v4 = [(VSDeviceTTSCore *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VSDeviceTTSCore *)self delegate];
    [v6 synthesisCore:self didReceiveWordTimingInfo:v7];
  }
}

- (void)reportProcessingWordTimingInfo:(id)a3
{
  v7 = a3;
  v4 = [(VSDeviceTTSCore *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VSDeviceTTSCore *)self delegate];
    [v6 synthesisCore:self didReceiveProcessingWordTimingInfo:v7];
  }
}

- (id)prepareForSynthesis
{
  v49[1] = *MEMORY[0x277D85DE8];
  if (self->_engine)
  {
    goto LABEL_3;
  }

  prewarmService = self->_prewarmService;
  v4 = [(VSDeviceTTSCore *)self selectedVoice];
  v5 = [(VSDeviceTTSCore *)self selectedVoiceResource];
  v6 = [(VSPrewarmService *)prewarmService cachedEngineForVoice:v4 resources:v5];
  engine = self->_engine;
  self->_engine = v6;

  if (self->_engine)
  {
LABEL_3:
    v8 = 1;
  }

  else
  {
    v40 = self->_prewarmService;
    v41 = [(VSDeviceTTSCore *)self selectedVoice];
    v42 = [(VSDeviceTTSCore *)self selectedVoiceResource];
    v43 = [(VSPrewarmService *)v40 loadEngineForVoice:v41 resources:v42];
    v44 = self->_engine;
    self->_engine = v43;

    v8 = 0;
  }

  v9 = [(VSDeviceTTSCore *)self instrumentMetrics];
  [v9 setIsWarmStart:v8];

  if (self->_engine)
  {
    v10 = [VSStreamAudioData alloc];
    v11 = self->_engine;
    if (v11)
    {
      [(VSSpeechEngine *)v11 asbd];
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
    }

    v15 = [(VSStreamAudioData *)v10 initWithASBD:&v45];
    streamAudio = self->_streamAudio;
    self->_streamAudio = v15;

    v17 = [(VSDeviceTTSCore *)self request];
    [v17 volume];
    if (v18 == 0.0)
    {
      v19 = [(VSDeviceTTSCore *)self selectedVoiceResource];
      [v19 volume];
      if (v20 == 0.0)
      {
        [(VSSpeechEngine *)self->_engine volume];
      }

      [(VSSpeechEngine *)self->_engine setVolume:v45, v46, v47];
    }

    else
    {
      *&v18 = v18;
      [(VSSpeechEngine *)self->_engine setVolume:v18];
    }

    v21 = [(VSDeviceTTSCore *)self request];
    [v21 pitch];
    if (v22 == 0.0)
    {
      v23 = [(VSDeviceTTSCore *)self selectedVoiceResource];
      [v23 pitch];
      if (v24 == 0.0)
      {
        [(VSSpeechEngine *)self->_engine pitch];
      }

      [(VSSpeechEngine *)self->_engine setPitch:v45, v46, v47];
    }

    else
    {
      *&v22 = v22;
      [(VSSpeechEngine *)self->_engine setPitch:v22];
    }

    v25 = [(VSDeviceTTSCore *)self request];
    [v25 rate];
    if (v26 == 0.0)
    {
      v27 = [(VSDeviceTTSCore *)self selectedVoiceResource];
      [v27 rate];
      if (v28 == 0.0)
      {
        [(VSSpeechEngine *)self->_engine rate];
      }

      [(VSSpeechEngine *)self->_engine setRate:v45, v46, v47];
    }

    else
    {
      *&v26 = v26;
      [(VSSpeechEngine *)self->_engine setRate:v26];
    }

    v29 = [VSVoiceBooster alloc];
    v30 = self->_engine;
    if (v30)
    {
      [(VSSpeechEngine *)v30 asbd];
      v30 = self->_engine;
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
    }

    v31 = [(VSVoiceBooster *)v29 initWithStreamDescription:&v45 pcmBufferSize:[(VSSpeechEngine *)v30 pcmBufferSize:v45]];
    [(VSDeviceTTSCore *)self setVoiceBooster:v31];

    v13 = [(VSDeviceTTSCore *)self selectedVoice];
    v32 = [v13 voiceData];
    v33 = [(VSDeviceTTSCore *)self request];
    [v33 volume];
    [v32 gainDecibelWithVolume:?];
    v35 = v34;
    v36 = [(VSDeviceTTSCore *)self voiceBooster];
    LODWORD(v37) = v35;
    [v36 setVoiceBoostGainDecibels:v37];

    v14 = 0;
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA470];
    v49[0] = @"Can't create VSSpeechEngine";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v14 = [v12 errorWithDomain:@"VoiceServicesErrorDomain" code:0 userInfo:v13];
  }

  v38 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)voiceSelection_noRetry_WithRequest:(id)a3 error:(id *)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D79950] sharedManager];
  v7 = [v5 languageCode];
  v8 = [v5 voiceName];
  v9 = [v6 selectVoiceForLang:v7 name:v8 type:objc_msgSend(v5 gender:"voiceType") footprint:{objc_msgSend(v5, "gender"), objc_msgSend(v5, "footprint")}];

  if (v9)
  {
    if ([v5 disableCompactVoiceFallback] && (objc_msgSend(v9, "voiceData"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "footprint"), v10, v11 == 1))
    {
      v12 = VSGetLogDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v12, OS_LOG_TYPE_ERROR, "Compact voice is explicitly disabled.", buf, 2u);
      }

      if (a4)
      {
        v13 = MEMORY[0x277CCA9B8];
        v33 = *MEMORY[0x277CCA450];
        v34 = @"Compact voice is explicitly disabled.";
        v14 = MEMORY[0x277CBEAC0];
        v15 = &v34;
        v16 = &v33;
LABEL_14:
        v21 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
        v22 = v13;
        v23 = 401;
LABEL_19:
        *a4 = [v22 errorWithDomain:@"VoiceServicesErrorDomain" code:v23 userInfo:v21];

        a4 = 0;
      }
    }

    else
    {
      v17 = [MEMORY[0x277CCAA00] defaultManager];
      v18 = [v9 voicePath];
      v19 = [v17 fileExistsAtPath:v18];

      if (v19)
      {
        a4 = v9;
        goto LABEL_20;
      }

      v24 = VSGetLogDefault();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v28 = [v9 voicePath];
        *buf = 138412290;
        v32 = v28;
        _os_log_error_impl(&dword_2727E4000, v24, OS_LOG_TYPE_ERROR, "Voice is deleted at path '%@'", buf, 0xCu);
      }

      if (a4)
      {
        v25 = MEMORY[0x277CCA9B8];
        v29 = *MEMORY[0x277CCA450];
        v30 = @"Voice is deleted already.";
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v22 = v25;
        v23 = 402;
        goto LABEL_19;
      }
    }
  }

  else
  {
    v20 = VSGetLogDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2727E4000, v20, OS_LOG_TYPE_ERROR, "No voice available", buf, 2u);
    }

    if (a4)
    {
      v13 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA450];
      v36[0] = @"No voice available";
      v14 = MEMORY[0x277CBEAC0];
      v15 = v36;
      v16 = &v35;
      goto LABEL_14;
    }
  }

LABEL_20:

  v26 = *MEMORY[0x277D85DE8];

  return a4;
}

- (id)voiceSelectionWithRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v7 = [(VSDeviceTTSCore *)self voiceSelection_noRetry_WithRequest:v6 error:&v18];
  v8 = v18;
  v9 = v8;
  if (v8 && [v8 code] == 402)
  {
    notify_post([@"com.apple.voiceservices.notification.voice-update" UTF8String]);
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Reset MobileAsset query cache and retry selecting voice", buf, 2u);
    }

    v11 = [MEMORY[0x277D79950] sharedManager];
    [v11 resetCache];

    v16 = v9;
    v12 = [(VSDeviceTTSCore *)self voiceSelection_noRetry_WithRequest:v6 error:&v16];
    v13 = v16;

    v7 = v12;
    v9 = v13;
  }

  if (a4)
  {
    v14 = v9;
    *a4 = v9;
  }

  return v7;
}

- (id)getCacheForHash:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VSDeviceTTSCore *)self cachingService];
  v6 = [v5 inMemoryCacheForHash:v4];

  if (v6)
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 key];
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_2727E4000, v7, OS_LOG_TYPE_DEFAULT, "In-memory cached synthesis %@ is found.", &v15, 0xCu);
    }

    v9 = [(VSDeviceTTSCore *)self instrumentMetrics];
    [v9 setIsCacheHitFromMemory:1];
  }

  else
  {
    v10 = [(VSDeviceTTSCore *)self cachingService];
    v6 = [v10 onDiskCacheForHash:v4];

    if (!v6)
    {
      goto LABEL_10;
    }

    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 key];
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_DEFAULT, "On-disk cached synthesis %@ is found.", &v15, 0xCu);
    }

    v9 = [(VSDeviceTTSCore *)self instrumentMetrics];
    [v9 setIsCacheHitFromDisk:1];
  }

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setEngine:(id)a3
{
  v5 = a3;
  if (([(VSDeviceTTSCore *)self isExecuting]& 1) == 0)
  {
    objc_storeStrong(&self->_engine, a3);
  }
}

- (VSVoiceResourceAsset)selectedVoiceResource
{
  selectedVoiceResource = self->_selectedVoiceResource;
  if (!selectedVoiceResource)
  {
    v4 = [MEMORY[0x277D79950] sharedManager];
    v5 = [(VSDeviceTTSCore *)self request];
    v6 = [v5 languageCode];
    v7 = [v4 selectVoiceResourceAssetForLanguage:v6];
    v8 = self->_selectedVoiceResource;
    self->_selectedVoiceResource = v7;

    selectedVoiceResource = self->_selectedVoiceResource;
  }

  return selectedVoiceResource;
}

- (VSVoiceAssetSelection)selectedVoice
{
  selectedVoice = self->_selectedVoice;
  if (!selectedVoice)
  {
    v4 = [(VSDeviceTTSCore *)self request];
    v5 = [(VSDeviceTTSCore *)self voiceSelectionWithRequest:v4 error:0];
    v6 = self->_selectedVoice;
    self->_selectedVoice = v5;

    selectedVoice = self->_selectedVoice;
  }

  return selectedVoice;
}

- (void)cancel
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = VSDeviceTTSCore;
  [(VSDeviceTTSCore *)&v6 cancel];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_INFO, "Device core %p is cancelled", buf, 0xCu);
  }

  v4 = [(VSDeviceTTSCore *)self engine];
  [v4 stopAtMarker:0];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v87[1] = *MEMORY[0x277D85DE8];
  v3 = [(VSDeviceTTSCore *)self request];
  v4 = [v3 utterance];
  v5 = [v4 length];

  if (!v5)
  {
    v15 = MEMORY[0x277CCA9B8];
    v86 = *MEMORY[0x277CCA450];
    v87[0] = @"Missing utterance in the request (preprocessing missing?).";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:&v86 count:1];
    v16 = [v15 errorWithDomain:@"VoiceServicesErrorDomain" code:100 userInfo:v10];
    [(VSDeviceTTSCore *)self setError:v16];

    goto LABEL_35;
  }

  v6 = [(VSDeviceTTSCore *)self selectedVoiceResource];
  v7 = [(VSDeviceTTSCore *)self selectedVoice];
  v8 = [(VSDeviceTTSCore *)self selectedVoice];

  if (!v8)
  {
    v17 = [(VSDeviceTTSCore *)self request];
    v83 = 0;
    v18 = [(VSDeviceTTSCore *)self voiceSelectionWithRequest:v17 error:&v83];
    v10 = v83;

    [(VSDeviceTTSCore *)self setError:v10];
    goto LABEL_35;
  }

  if (([(VSDeviceTTSCore *)self isCancelled]& 1) == 0)
  {
    v9 = [(VSDeviceTTSCore *)self taskHash];
    v10 = [(VSDeviceTTSCore *)self getCacheForHash:v9];

    if (v10)
    {
      v11 = [v10 audio];
      compressedAudio = self->_compressedAudio;
      self->_compressedAudio = v11;

      v13 = [v10 timingInfos];
      [(VSDeviceTTSCore *)self reportWordTimingInfo:v13];

      v14 = [v10 audio];
      [(VSDeviceTTSCore *)self reportAudio:v14];

LABEL_35:
      goto LABEL_36;
    }

    if (([(VSDeviceTTSCore *)self isCancelled]& 1) != 0)
    {
LABEL_34:
      v10 = 0;
      goto LABEL_35;
    }

    v19 = [(VSDeviceTTSCore *)self prepareForSynthesis];
    if (v19)
    {
      [(VSDeviceTTSCore *)self setError:v19];

      goto LABEL_34;
    }

    v77 = 0;
    v78 = &v77;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy__1808;
    v81 = __Block_byref_object_dispose__1809;
    v82 = 0;
    v20 = objc_opt_new();
    v21 = [(VSDeviceTTSCore *)self request];
    v22 = [v21 text];
    v23 = [(VSDeviceTTSCore *)self request];
    v24 = [v23 languageCode];
    v25 = [(VSDeviceTTSCore *)self request];
    v26 = [v25 voiceName];
    v27 = [v20 estimatedTTSWordTimingForText:v22 withLanguage:v24 voiceName:v26];
    v28 = v78[5];
    v78[5] = v27;

    v29 = MEMORY[0x277D799B8];
    v30 = v78[5];
    v31 = [(VSDeviceTTSCore *)self request];
    v32 = [v31 contextInfo];
    [v29 adjustWordTimingInfo:v30 forContext:v32];

    v33 = [MEMORY[0x277CBEB18] array];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v34 = [(VSDeviceTTSCore *)self request];
    v35 = [v34 customResourceURLs];

    v36 = [v35 countByEnumeratingWithState:&v73 objects:v85 count:16];
    if (v36)
    {
      v37 = *v74;
      do
      {
        v38 = 0;
        do
        {
          if (*v74 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v39 = *(*(&v73 + 1) + 8 * v38);
          v40 = [(VSDeviceTTSCore *)self engine];
          v41 = [v40 loadResource:v39 error:0];

          if (v41)
          {
            [v33 addObject:v41];
          }

          ++v38;
        }

        while (v36 != v38);
        v36 = [v35 countByEnumeratingWithState:&v73 objects:v85 count:16];
      }

      while (v36);
    }

    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    v42 = [(VSDeviceTTSCore *)self engine];
    v43 = [(VSDeviceTTSCore *)self request];
    v44 = [v43 utterance];
    v45 = [(VSDeviceTTSCore *)self request];
    v46 = [v45 canLogRequestText];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __23__VSDeviceTTSCore_main__block_invoke;
    v68[3] = &unk_279E4B7C8;
    v68[4] = self;
    v68[5] = &v77;
    v68[6] = &v69;
    v47 = [v42 synthesizeText:v44 loggable:v46 callback:v68];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v48 = v33;
    v49 = [v48 countByEnumeratingWithState:&v64 objects:v84 count:16];
    if (v49)
    {
      v50 = *v65;
      do
      {
        v51 = 0;
        do
        {
          if (*v65 != v50)
          {
            objc_enumerationMutation(v48);
          }

          v52 = *(*(&v64 + 1) + 8 * v51);
          v53 = [(VSDeviceTTSCore *)self engine];
          [v53 unloadResource:v52];

          ++v51;
        }

        while (v49 != v51);
        v49 = [v48 countByEnumeratingWithState:&v64 objects:v84 count:16];
      }

      while (v49);
    }

    if (!v47 && ([(VSDeviceTTSCore *)self isCancelled]& 1) == 0)
    {
      v54 = [(VSDeviceTTSCore *)self request];
      if (![v54 shouldCache])
      {
LABEL_32:

        goto LABEL_33;
      }

      v55 = *(v70 + 24);

      if ((v55 & 1) == 0)
      {
        v54 = [(VSDeviceTTSCore *)self taskHash];
        v63 = [(VSDeviceTTSCore *)self cachingService];
        streamAudio = self->_streamAudio;
        v57 = v78[5];
        v58 = [(VSDeviceTTSCore *)self selectedVoice];
        v59 = [v58 key];
        v60 = [(VSDeviceTTSCore *)self selectedVoiceResource];
        v61 = [v60 key];
        [v63 enqueueCacheWithHash:v54 streamAudio:streamAudio timingInfo:v57 voiceKey:v59 voiceResourceKey:v61 completion:0];

        goto LABEL_32;
      }
    }

LABEL_33:
    [(VSDeviceTTSCore *)self setError:v47];
    _Block_object_dispose(&v69, 8);

    _Block_object_dispose(&v77, 8);
    goto LABEL_34;
  }

LABEL_36:
  v62 = *MEMORY[0x277D85DE8];
}

id __23__VSDeviceTTSCore_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (v4 == 3)
  {
    if ([v3 neuralDidFallback])
    {
      v9 = 1;
    }

    else
    {
      v9 = [v3 hasAudioClick];
    }

    *(*(*(a1 + 48) + 8) + 24) = v9;
    v10 = [v3 numOfPromptsTriggered];
    v11 = [*(a1 + 32) instrumentMetrics];
    [v11 setPromptCount:v10];

    v12 = *(*(*(a1 + 40) + 8) + 40);
    if (!v12)
    {
      v13 = [v3 wordTimingInfos];
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v16 = MEMORY[0x277D799B8];
      v17 = *(*(*(a1 + 40) + 8) + 40);
      v18 = [*(a1 + 32) request];
      v19 = [v18 contextInfo];
      [v16 adjustWordTimingInfo:v17 forContext:v19];

      v12 = *(*(*(a1 + 40) + 8) + 40);
    }

    [*(a1 + 32) reportWordTimingInfo:v12];
    v20 = [v3 hasAlignmentStall];
    v21 = [*(a1 + 32) instrumentMetrics];
    [v21 setNeuralAlignmentStall:v20];

    v22 = [v3 hasAudioClick];
    v23 = [*(a1 + 32) instrumentMetrics];
    [v23 setNeuralAudioClick:v22];

    v24 = [v3 neuralDidFallback];
    v25 = [*(a1 + 32) instrumentMetrics];
    [v25 setNeuralFallback:v24];
  }

  else if (v4 == 2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [v3 mutablePCMData];
    v7 = [*(a1 + 32) voiceBooster];
    v8 = [v7 processData:v6];

    if (v8)
    {

      objc_autoreleasePoolPop(v5);
      goto LABEL_18;
    }

    v26 = [*(a1 + 32) streamAudio];
    [v26 appendAudioData:v6 packetCount:0 packetDescriptions:0];

    v27 = objc_alloc_init(MEMORY[0x277D79920]);
    v28 = [*(a1 + 32) engine];
    v29 = v28;
    if (v28)
    {
      [v28 asbd];
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
    }

    v37[0] = v39;
    v37[1] = v40;
    v38 = v41;
    [v27 setAsbd:v37];

    [v27 setAudioData:v6];
    [v27 setPacketCount:0];
    [v27 setPacketDescriptions:0];
    [*(a1 + 32) reportAudio:v27];
    v30 = *(*(*(a1 + 40) + 8) + 40);
    if (!v30)
    {
      v31 = objc_alloc(MEMORY[0x277CBEA60]);
      v32 = [v3 wordTimingInfos];
      v30 = [v31 initWithArray:v32 copyItems:1];

      v33 = MEMORY[0x277D799B8];
      v34 = [*(a1 + 32) request];
      v35 = [v34 contextInfo];
      [v33 adjustWordTimingInfo:v30 forContext:v35];
    }

    [*(a1 + 32) reportProcessingWordTimingInfo:v30];

    objc_autoreleasePoolPop(v5);
  }

  v8 = 0;
LABEL_18:

  return v8;
}

- (id)taskHash
{
  v22 = MEMORY[0x277CCACA8];
  v25 = [(VSDeviceTTSCore *)self request];
  v20 = [v25 utterance];
  v24 = [(VSDeviceTTSCore *)self selectedVoice];
  v3 = [v24 key];
  v23 = [(VSDeviceTTSCore *)self selectedVoiceResource];
  v4 = [v23 key];
  v21 = [(VSDeviceTTSCore *)self request];
  [v21 rate];
  v6 = v5;
  v7 = [(VSDeviceTTSCore *)self request];
  [v7 pitch];
  v9 = v8;
  v10 = [(VSDeviceTTSCore *)self request];
  [v10 volume];
  v12 = v11;
  v13 = [(VSDeviceTTSCore *)self request];
  v14 = [v13 contextInfo];
  v15 = [(VSDeviceTTSCore *)self request];
  v16 = [v15 customResourceURLs];
  v17 = [v22 stringWithFormat:@"%@ %@ %@ %@ %.2f %.2f %.2f %@ %@", @"2", v20, v3, v4, v6, v9, v12, v14, v16];

  v18 = [v17 sha256hex];

  return v18;
}

- (VSDeviceTTSCore)initWithRequest:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = VSDeviceTTSCore;
  v6 = [(VSDeviceTTSCore *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = +[VSCachingService standardService];
    cachingService = v7->_cachingService;
    v7->_cachingService = v8;

    v10 = +[VSPrewarmService sharedService];
    prewarmService = v7->_prewarmService;
    v7->_prewarmService = v10;
  }

  return v7;
}

@end