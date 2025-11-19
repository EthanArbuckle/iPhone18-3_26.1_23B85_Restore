@interface _LTHybridEndpointer
- (BOOL)didEndpointWithFeatures:(id)a3 silenceFeatures:(id)a4 endpointer:(id)a5;
- (_LTHybridEndpointer)init;
- (void)addSpeechAudioData:(id)a3;
- (void)clientSilenceFeaturesAvailable:(id)a3;
- (void)endAudio;
- (void)setServerEndpointerFeatures:(id)a3 withLocale:(id)a4;
- (void)startEndpointingWithContext:(id)a3 delegate:(id)a4;
@end

@implementation _LTHybridEndpointer

- (_LTHybridEndpointer)init
{
  v27 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = _LTHybridEndpointer;
  v2 = [(_LTHybridEndpointer *)&v20 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_samplingRate = xmmword_233005CC0;
    v2->_clientLagThresholdMs = _LTPreferencesHybridEndpointerClientLagThreshold();
    v3->_clampedSFLatencyMsForClientLag = _LTPreferencesHybridEndpointerClientLagClampedLatency();
    v3->_useDefaultServerFeaturesOnClientLag = _LTPreferencesHybridEndpointerUseDefaultFeaturesOnClientLagThreshold();
    v4 = _LTOSLogSpeech();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      clientLagThresholdMs = v3->_clientLagThresholdMs;
      clampedSFLatencyMsForClientLag = v3->_clampedSFLatencyMsForClientLag;
      useDefaultServerFeaturesOnClientLag = v3->_useDefaultServerFeaturesOnClientLag;
      *buf = 134218496;
      v22 = clientLagThresholdMs;
      v23 = 2048;
      v24 = clampedSFLatencyMsForClientLag;
      v25 = 1024;
      v26 = useDefaultServerFeaturesOnClientLag;
      _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Client lag configuration is %f, %f, %{BOOL}i", buf, 0x1Cu);
    }

    v8 = dispatch_queue_create("com.apple.siri.translation.HEP", 0);
    queue = v3->_queue;
    v3->_queue = v8;

    v10 = dispatch_queue_create("com.apple.siri.translation.HEP.features", 0);
    featureQueue = v3->_featureQueue;
    v3->_featureQueue = v10;

    v12 = _LTOSLogSpeech();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "Init of HEP", buf, 2u);
    }

    v3->_didEndpoint = 0;
    sourceEndpointer = v3->_sourceEndpointer;
    v3->_sourceEndpointer = 0;

    sourceEndpointerFeatures = v3->_sourceEndpointerFeatures;
    v3->_sourceEndpointerFeatures = 0;

    targetEndpointer = v3->_targetEndpointer;
    v3->_targetEndpointer = 0;

    targetEndpointerFeatures = v3->_targetEndpointerFeatures;
    v3->_targetEndpointerFeatures = 0;

    v17 = v3;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)startEndpointingWithContext:(id)a3 delegate:(id)a4
{
  *&v100[5] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 autoEndpoint];
  v10 = _LTOSLogSpeech();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Start new HEP request", buf, 2u);
    }

    self->_didEndpoint = 0;
    objc_storeStrong(&self->_context, a3);
    objc_storeWeak(&self->_delegate, v8);
    sourceEndpointer = self->_sourceEndpointer;
    self->_sourceEndpointer = 0;

    sourceEndpointerFeatures = self->_sourceEndpointerFeatures;
    self->_sourceEndpointerFeatures = 0;

    targetEndpointer = self->_targetEndpointer;
    self->_targetEndpointer = 0;

    targetEndpointerFeatures = self->_targetEndpointerFeatures;
    self->_targetEndpointerFeatures = 0;

    v16 = objc_alloc_init(_LTOfflineAssetManager);
    v98 = 0;
    v17 = [(_LTOfflineAssetManager *)v16 endpointAssetInfoWithContext:v7 error:&v98];
    v18 = v98;
    asset = self->_asset;
    self->_asset = v17;

    if (v18 || (v21 = self->_asset) == 0)
    {
      v20 = _LTOSLogSpeech();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_LTHybridEndpointer startEndpointingWithContext:v18 delegate:v20];
      }

      goto LABEL_46;
    }

    v22 = [(_LTHybridEndpointerAssetInfo *)v21 caesuraModelURL];
    if (!v22)
    {
      v55 = _LTOSLogSpeech();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v55, OS_LOG_TYPE_INFO, "Could not obtain SPG (silence posterior generator) asset", buf, 2u);
      }

      goto LABEL_45;
    }

    v23 = objc_alloc(MEMORY[0x277D071D8]);
    v24 = [v22 path];
    v25 = [v23 initWithConfigFile:v24 samplingRate:self->_samplingRate];
    spg = self->_spg;
    self->_spg = v25;

    [(EARCaesuraSilencePosteriorGenerator *)self->_spg setDelegate:self];
    v27 = self->_asset;
    v28 = [v7 localePair];
    v29 = [v28 sourceLocale];
    v30 = [(_LTHybridEndpointerAssetInfo *)v27 endpointerModelURL:v29];

    v97 = v30;
    if (v30)
    {
      v96 = v22;
      v31 = objc_alloc(MEMORY[0x277D07230]);
      v32 = self->_asset;
      v33 = [v7 localePair];
      v34 = [v33 sourceLocale];
      v35 = [(_LTHybridEndpointerAssetInfo *)v32 endpointerModelURL:v34];
      v36 = [v35 path];
      v37 = [v31 initWithConfiguration:v36];
      v38 = self->_sourceEndpointer;
      self->_sourceEndpointer = v37;

      v39 = [MEMORY[0x277CE1B70] featuresForEndpointer:self->_sourceEndpointer];
      v40 = self->_sourceEndpointerFeatures;
      self->_sourceEndpointerFeatures = v39;

      if (([(_EAREndpointer *)self->_sourceEndpointer requestSupportedWithSamplingRate:self->_samplingRate]& 1) != 0)
      {
        v41 = [v7 localePair];
        v42 = [v41 sourceLocale];
        v43 = _LTPreferencesHybridEndpointerThresholdForLocale(v42);
        sourceEndpointerThreshold = self->_sourceEndpointerThreshold;
        self->_sourceEndpointerThreshold = v43;

        v45 = [v7 localePair];
        v46 = [v45 sourceLocale];
        v47 = _LTPreferencesDisconnectedHybridEndpointerThresholdForLocale(v46);
        sourceDisconnectedEndpointerThreshold = self->_sourceDisconnectedEndpointerThreshold;
        self->_sourceDisconnectedEndpointerThreshold = v47;

        if (self->_sourceDisconnectedEndpointerThreshold)
        {
          v49 = _LTOSLogSpeech();
          v22 = v96;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            v50 = self->_sourceDisconnectedEndpointerThreshold;
            v51 = v49;
            [(NSNumber *)v50 floatValue];
            *buf = 134217984;
            *v100 = v52;
            _os_log_impl(&dword_232E53000, v51, OS_LOG_TYPE_INFO, "Updating disconnected source endpointer threshold to %f", buf, 0xCu);
          }

          v53 = self->_sourceEndpointer;
          v54 = self->_sourceDisconnectedEndpointerThreshold;
LABEL_26:
          [(NSNumber *)v54 floatValue];
          [(_EAREndpointer *)v53 updateEndpointerThresholdWithValue:?];
          goto LABEL_27;
        }

        v22 = v96;
        if (self->_sourceEndpointerThreshold)
        {
          v58 = _LTOSLogSpeech();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v59 = self->_sourceEndpointerThreshold;
            v60 = v58;
            [(NSNumber *)v59 floatValue];
            *buf = 134217984;
            *v100 = v61;
            _os_log_impl(&dword_232E53000, v60, OS_LOG_TYPE_INFO, "Updating source endpointer threshold to %f", buf, 0xCu);
          }

          v53 = self->_sourceEndpointer;
          v54 = self->_sourceEndpointerThreshold;
          goto LABEL_26;
        }
      }

      else
      {
        v56 = _LTOSLogSpeech();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_232E53000, v56, OS_LOG_TYPE_INFO, "Request for sampling rate failed for source locale", buf, 2u);
        }

        v57 = self->_sourceEndpointer;
        self->_sourceEndpointer = 0;

        v22 = v96;
      }
    }

LABEL_27:
    v62 = self->_asset;
    v63 = [v7 localePair];
    v64 = [v63 targetLocale];
    v65 = [(_LTHybridEndpointerAssetInfo *)v62 endpointerModelURL:v64];

    if (!v65 || ![v7 autodetectLanguage])
    {
      goto LABEL_42;
    }

    v66 = objc_alloc(MEMORY[0x277D07230]);
    v67 = [v65 path];
    v68 = [v66 initWithConfiguration:v67];
    v69 = self->_targetEndpointer;
    self->_targetEndpointer = v68;

    v70 = [MEMORY[0x277CE1B70] featuresForEndpointer:self->_targetEndpointer];
    v71 = self->_targetEndpointerFeatures;
    self->_targetEndpointerFeatures = v70;

    if (([(_EAREndpointer *)self->_targetEndpointer requestSupportedWithSamplingRate:self->_samplingRate]& 1) == 0)
    {
      v86 = _LTOSLogSpeech();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v86, OS_LOG_TYPE_INFO, "Request for sampling rate failed for source locale", buf, 2u);
      }

      v87 = self->_targetEndpointer;
      self->_targetEndpointer = 0;

      goto LABEL_42;
    }

    v72 = [v7 localePair];
    v73 = [v72 targetLocale];
    v74 = _LTPreferencesHybridEndpointerThresholdForLocale(v73);
    targetEndpointerThreshold = self->_targetEndpointerThreshold;
    self->_targetEndpointerThreshold = v74;

    v76 = [v7 localePair];
    v77 = [v76 targetLocale];
    v78 = _LTPreferencesDisconnectedHybridEndpointerThresholdForLocale(v77);
    targetDisconnectedEndpointerThreshold = self->_targetDisconnectedEndpointerThreshold;
    self->_targetDisconnectedEndpointerThreshold = v78;

    if (self->_targetDisconnectedEndpointerThreshold)
    {
      v80 = _LTOSLogSpeech();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        v81 = self->_targetDisconnectedEndpointerThreshold;
        v82 = v80;
        [(NSNumber *)v81 floatValue];
        *buf = 134217984;
        *v100 = v83;
        _os_log_impl(&dword_232E53000, v82, OS_LOG_TYPE_INFO, "Updating disconnected target endpointer threshold to %f", buf, 0xCu);
      }

      v84 = self->_targetEndpointer;
      v85 = self->_targetDisconnectedEndpointerThreshold;
    }

    else
    {
      if (!self->_targetEndpointerThreshold)
      {
LABEL_42:
        v92 = _LTOSLogSpeech();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
        {
          v93 = self->_sourceEndpointer != 0;
          v94 = self->_targetEndpointer != 0;
          *buf = 67109376;
          v100[0] = v93;
          LOWORD(v100[1]) = 1024;
          *(&v100[1] + 2) = v94;
          _os_log_impl(&dword_232E53000, v92, OS_LOG_TYPE_INFO, "Have hybrid endpointer for source %{BOOL}i, for target %{BOOL}i", buf, 0xEu);
        }

LABEL_45:
LABEL_46:

        goto LABEL_47;
      }

      v88 = _LTOSLogSpeech();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
      {
        v89 = self->_targetEndpointerThreshold;
        v90 = v88;
        [(NSNumber *)v89 floatValue];
        *buf = 134217984;
        *v100 = v91;
        _os_log_impl(&dword_232E53000, v90, OS_LOG_TYPE_INFO, "Updating target endpointer threshold to %f", buf, 0xCu);
      }

      v84 = self->_targetEndpointer;
      v85 = self->_targetEndpointerThreshold;
    }

    [(NSNumber *)v85 floatValue];
    [(_EAREndpointer *)v84 updateEndpointerThresholdWithValue:?];
    goto LABEL_42;
  }

  if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Auto endpointing is turned off", buf, 2u);
  }

LABEL_47:

  v95 = *MEMORY[0x277D85DE8];
}

- (void)setServerEndpointerFeatures:(id)a3 withLocale:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  featureQueue = self->_featureQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62___LTHybridEndpointer_setServerEndpointerFeatures_withLocale___block_invoke;
  v11[3] = &unk_2789B6C78;
  objc_copyWeak(&v14, &location);
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(featureQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)addSpeechAudioData:(id)a3
{
  v4 = a3;
  if (!self->_didEndpoint && (self->_sourceEndpointer || self->_targetEndpointer))
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42___LTHybridEndpointer_addSpeechAudioData___block_invoke;
    block[3] = &unk_2789B5288;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_async(queue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)endAudio
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31___LTHybridEndpointer_endAudio__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)didEndpointWithFeatures:(id)a3 silenceFeatures:(id)a4 endpointer:(id)a5
{
  v131 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v9 processedAudioMs];
  if (v11 >= [v8 processedAudioDurationInMilliseconds])
  {
    [v9 processedAudioMs];
    v43 = v42 - [v8 processedAudioDurationInMilliseconds];
    v44 = objc_alloc(MEMORY[0x277D07220]);
    v45 = [v8 wordCount];
    v46 = [v8 trailingSilenceDuration];
    [v8 eosLikelihood];
    v48 = v47;
    v49 = [v8 pauseCounts];
    [v8 silencePosterior];
    v51 = v50;
    [v9 silenceFramesCountMs];
    v53 = v52;
    [v9 silenceProbability];
    v55 = v54;
    [v9 silenceDurationMs];
    *&v57 = v56;
    *&v58 = v43;
    v41 = [v44 initWithWordCount:v45 trailingSilenceDuration:v46 endOfSentenceLikelihood:v49 pauseCounts:v48 silencePosterior:v51 clientSilenceFramesCountMs:v53 clientSilenceProbability:v55 silencePosteriorNF:v57 serverFeaturesLatency:v58];

    if (!v41)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = _LTOSLogSpeech();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      *&v14 = COERCE_DOUBLE([v8 processedAudioDurationInMilliseconds]);
      [v9 processedAudioMs];
      *buf = 134349312;
      v108 = *&v14;
      v109 = 2050;
      v110 = v15;
      _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_INFO, "ClientLag: serverProcessedAudioMs(%{public}ld) > effectiveClientProcessedAudioMs(%{public}f)", buf, 0x16u);
    }

    [v9 processedAudioMs];
    v17 = v16 - [v8 processedAudioDurationInMilliseconds];
    if (v17 > self->_clientLagThresholdMs)
    {
      v80 = _LTOSLogSpeech();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        clientLagThresholdMs = self->_clientLagThresholdMs;
        *buf = 134349312;
        v108 = v17;
        v109 = 2050;
        v110 = clientLagThresholdMs;
        v82 = "ClientLag: Not invoking HybridClassifier: sfLatency > clientLagThreshold: %{public}f > %{public}f";
        v83 = v80;
        v84 = 22;
LABEL_21:
        _os_log_impl(&dword_232E53000, v83, OS_LOG_TYPE_INFO, v82, buf, v84);
      }

LABEL_22:
      LOBYTE(v59) = 0;
      goto LABEL_23;
    }

    useDefaultServerFeaturesOnClientLag = self->_useDefaultServerFeaturesOnClientLag;
    v19 = _LTOSLogSpeech();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (useDefaultServerFeaturesOnClientLag)
    {
      if (v20)
      {
        v21 = v19;
        [v9 processedAudioMs];
        *buf = 134349056;
        v108 = v22;
        _os_log_impl(&dword_232E53000, v21, OS_LOG_TYPE_INFO, "ClientLag: Using DefaultServerFeatures with disconnected-state sfLatency: %{public}f", buf, 0xCu);
      }

      v23 = [MEMORY[0x277CE1B70] featuresForEndpointer:v10];
      v24 = objc_alloc(MEMORY[0x277D07220]);
      v25 = [v23 wordCount];
      v26 = [v23 trailingSilenceDuration];
      [v23 eosLikelihood];
      v28 = v27;
      v29 = [v23 pauseCounts];
      [v23 silencePosterior];
      v31 = v30;
      [v9 silenceFramesCountMs];
      v33 = v32;
      [v9 silenceProbability];
      v35 = v34;
      [v9 silenceDurationMs];
      v37 = v36;
      [v9 processedAudioMs];
      *&v39 = v38;
      *&v40 = v37;
      v41 = [v24 initWithWordCount:v25 trailingSilenceDuration:v26 endOfSentenceLikelihood:v29 pauseCounts:v28 silencePosterior:v31 clientSilenceFramesCountMs:v33 clientSilenceProbability:v35 silencePosteriorNF:v40 serverFeaturesLatency:v39];

      if (!v41)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v20)
      {
        clampedSFLatencyMsForClientLag = self->_clampedSFLatencyMsForClientLag;
        *buf = 134349056;
        v108 = clampedSFLatencyMsForClientLag;
        _os_log_impl(&dword_232E53000, v19, OS_LOG_TYPE_INFO, "ClientLag: Using ServerFeatures with ClampedSFLatency: %{public}f", buf, 0xCu);
      }

      v86 = objc_alloc(MEMORY[0x277D07220]);
      v87 = [v8 wordCount];
      v88 = [v8 trailingSilenceDuration];
      [v8 eosLikelihood];
      v90 = v89;
      v91 = [v8 pauseCounts];
      [v8 silencePosterior];
      v93 = v92;
      [v9 silenceFramesCountMs];
      v95 = v94;
      [v9 silenceProbability];
      v97 = v96;
      [v9 silenceDurationMs];
      *&v99 = v98;
      *&v100 = self->_clampedSFLatencyMsForClientLag;
      v41 = [v86 initWithWordCount:v87 trailingSilenceDuration:v88 endOfSentenceLikelihood:v91 pauseCounts:v90 silencePosterior:v93 clientSilenceFramesCountMs:v95 clientSilenceProbability:v97 silencePosteriorNF:v99 serverFeaturesLatency:v100];

      if (!v41)
      {
LABEL_19:
        v101 = _LTOSLogSpeech();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v82 = "ClientLag: Not Invoking HybridClassifier as serverProcessedAudioMs > effectiveClientProcessedAudioMs";
          v83 = v101;
          v84 = 2;
          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }
  }

  v106 = 0;
  [v9 processedAudioMs];
  v105 = 0;
  v59 = [v10 didEndpointWithFeatures:v41 audioTimestamp:&v105 featuresToLog:&v106 + 4 endpointPosterior:&v106 extraDelayMs:?];
  v60 = v105;
  v61 = _LTOSLogSpeech();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
  {
    v62 = v61;
    *&v63 = COERCE_DOUBLE([v41 trailingSilenceDuration]);
    [v41 clientSilenceFramesCountMs];
    v65 = v64;
    [v41 endOfSentenceLikelihood];
    v67 = v66;
    v68 = [v41 wordCount];
    [v41 serverFeaturesLatency];
    v70 = v69;
    [v41 clientSilenceProbability];
    v72 = v71;
    v73 = [v41 pauseCounts];
    [v73 componentsJoinedByString:{@", "}];
    v74 = v104 = v10;
    [v41 silencePosterior];
    v76 = v75;
    [v9 silencePosterior];
    v78 = v77;
    [v9 processedAudioMs];
    *buf = 134351874;
    v108 = *&v63;
    v109 = 2050;
    v110 = v65;
    v111 = 2050;
    v112 = v67;
    v113 = 2050;
    v114 = v68;
    v115 = 2050;
    v116 = v70;
    v117 = 2050;
    v118 = v72;
    v119 = 2114;
    v120 = v74;
    v121 = 2050;
    v122 = v76;
    v123 = 2050;
    v124 = v78;
    v125 = 2050;
    v126 = v79;
    v127 = 2050;
    v128 = *(&v106 + 1);
    v129 = 1026;
    v130 = v59;
    _os_log_impl(&dword_232E53000, v62, OS_LOG_TYPE_INFO, "HEP.feats: [%{public}ld,%{public}f,%{public}f,%{public}ld,%{public}f,%{public}f] & [(%{public}@),%{public}f,%{public}f] @ %{public}lu [%{public}f, %{public}d]", buf, 0x76u);

    v10 = v104;
  }

LABEL_23:
  v102 = *MEMORY[0x277D85DE8];
  return v59;
}

- (void)clientSilenceFeaturesAvailable:(id)a3
{
  v4 = a3;
  v5 = _LTOSLogSpeech();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_LTHybridEndpointer clientSilenceFeaturesAvailable:v5];
  }

  if (!self->_didEndpoint)
  {
    objc_initWeak(&location, self);
    featureQueue = self->_featureQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54___LTHybridEndpointer_clientSilenceFeaturesAvailable___block_invoke;
    block[3] = &unk_2789B5288;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    dispatch_async(featureQueue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)startEndpointingWithContext:(uint64_t)a1 delegate:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Could not get appropriate endpointer assets: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end