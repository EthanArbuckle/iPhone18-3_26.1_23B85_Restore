@interface SSRVoiceActivityDetector
- (SSRVoiceActivityDetector)initWithContext:(id)a3 delegate:(id)a4;
- (SSRVoiceActivityDetectorDelegate)delegate;
- (void)_initializeSPGWithContext:(id)a3;
- (void)clientSilenceFeaturesAvailable:(id)a3;
- (void)processAudioData:(id)a3 numSamples:(unint64_t)a4;
- (void)resetWithContext:(id)a3;
@end

@implementation SSRVoiceActivityDetector

- (SSRVoiceActivityDetectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)clientSilenceFeaturesAvailable:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_endpointReported)
  {
    v5 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v62 = "[SSRVoiceActivityDetector clientSilenceFeaturesAvailable:]";
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Endpoint already reported. Not scheduling", buf, 0xCu);
    }
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D07228]);
    v7 = [(_EARDefaultServerEndpointFeatures *)self->_defSepFeats wordCount];
    v8 = [(_EARDefaultServerEndpointFeatures *)self->_defSepFeats trailingSilenceDuration];
    [(_EARDefaultServerEndpointFeatures *)self->_defSepFeats endOfSentenceLikelihood];
    v10 = v9;
    [(_EARDefaultServerEndpointFeatures *)self->_defSepFeats acousticEndpointerScore];
    v12 = v11;
    [(_EARDefaultServerEndpointFeatures *)self->_defSepFeats silencePosterior];
    v14 = v13;
    [v4 silenceFramesCountMs];
    v16 = v15;
    [v4 silenceProbability];
    v18 = v17;
    [v4 silenceDurationMs];
    v20 = v19;
    [v4 processedAudioMs];
    *&v22 = v21;
    *&v23 = v20;
    v24 = [v6 initWithWordCount:v7 trailingSilenceDuration:v8 endOfSentenceLikelihood:MEMORY[0x277CBEBF8] acousticEndpointerScore:0 pauseCounts:v10 silencePosterior:v12 clientSilenceFramesCountMs:v14 clientSilenceProbability:v16 silencePosteriorNF:v18 serverFeaturesLatency:v23 eagerResultEndTime:v22];
    v60 = 0;
    hybridClassifier = self->_hybridClassifier;
    [v4 processedAudioMs];
    v59 = 0;
    v26 = [(_EAREndpointer *)hybridClassifier didEndpointWithFeatures:v24 audioTimestamp:&v59 featuresToLog:&v60 + 4 endpointPosterior:&v60 extraDelayMs:?];
    v27 = v59;
    [v4 processedAudioMs];
    v29 = v28;
    *&v12 = (1000 * self->_segmentStartPointSampleCount);
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v31 = (v29 + (*&v12 / v30));
    if (v26)
    {
      self->_endpointReported = 1;
      v32 = *MEMORY[0x277D015C8];
      if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
        [v4 silenceFramesCountMs];
        v35 = v34;
        [v4 silenceDurationMs];
        v37 = v36;
        [v4 silenceProbability];
        v39 = v38;
        [v4 processedAudioMs];
        *buf = 136316162;
        v62 = "[SSRVoiceActivityDetector clientSilenceFeaturesAvailable:]";
        v63 = 2048;
        v64 = v35;
        v65 = 2048;
        v66 = v37;
        v67 = 2048;
        v68 = v39;
        v69 = 2048;
        v70 = v40;
        _os_log_impl(&dword_225E12000, v33, OS_LOG_TYPE_DEFAULT, "%s Found Endpoint at: [%f %f %f %f]", buf, 0x34u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v42 = objc_opt_respondsToSelector();

      if (v42)
      {
        v43 = objc_loadWeakRetained(&self->_delegate);
        [v43 SSRVoiceActivityDetector:self didDetectEndPointAt:v31];
      }
    }

    else if (!self->_startpointReported)
    {
      [v4 silenceProbability];
      if (v44 >= 0.5)
      {
        self->_numConsecutiveNonSilenceFrames = 0;
      }

      else
      {
        v45 = self->_numConsecutiveNonSilenceFrames + 1;
        self->_numConsecutiveNonSilenceFrames = v45;
        if (v45 >= 0xA)
        {
          v46 = *MEMORY[0x277D015C8];
          if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
          {
            v47 = v46;
            [v4 silenceFramesCountMs];
            v49 = v48;
            [v4 silenceDurationMs];
            v51 = v50;
            [v4 silenceProbability];
            v53 = v52;
            [v4 processedAudioMs];
            *buf = 136316162;
            v62 = "[SSRVoiceActivityDetector clientSilenceFeaturesAvailable:]";
            v63 = 2048;
            v64 = v49;
            v65 = 2048;
            v66 = v51;
            v67 = 2048;
            v68 = v53;
            v69 = 2048;
            v70 = v54;
            _os_log_impl(&dword_225E12000, v47, OS_LOG_TYPE_DEFAULT, "%s Found startpoint at: [%f %f %f %f]", buf, 0x34u);
          }

          v55 = objc_loadWeakRetained(&self->_delegate);
          v56 = objc_opt_respondsToSelector();

          if (v56)
          {
            v57 = objc_loadWeakRetained(&self->_delegate);
            [v57 SSRVoiceActivityDetector:self didDetectStartPointAt:v31];
          }

          self->_startpointReported = 1;
        }
      }
    }
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (void)_initializeSPGWithContext:(id)a3
{
  v4 = MEMORY[0x277D071E0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 vadResourcePath];

  v8 = [v7 path];
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  v10 = [v6 initWithConfigFile:v8 samplingRate:v9 queue:self->_spgQueue];
  earSpg = self->_earSpg;
  self->_earSpg = v10;

  v12 = self->_earSpg;

  [(EARCaesuraSilencePosteriorGenerator *)v12 setDelegate:self];
}

- (void)resetWithContext:(id)a3
{
  v4 = a3;
  [(EARCaesuraSilencePosteriorGenerator *)self->_earSpg endAudio];
  context = self->_context;
  self->_context = v4;
  v6 = v4;

  self->_segmentStartPointSampleCount = self->_numSamplesProcessed;
  self->_numConsecutiveNonSilenceFrames = 0;
  [(SSRVoiceActivityDetector *)self _initializeSPGWithContext:v6];

  *&self->_endpointReported = 0;
}

- (void)processAudioData:(id)a3 numSamples:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  [(EARCaesuraSilencePosteriorGenerator *)self->_earSpg addAudio:a3 numSamples:?];
  v6 = self->_numSamplesProcessed + a4;
  self->_numSamplesProcessed = v6;
  if (__ROR8__(0x1CAC083126E978D5 * v6, 7) <= 0x4189374BC6A7EuLL)
  {
    v7 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x277D016E0];
      v9 = v7;
      [v8 inputRecordingSampleRate];
      v12 = 136315394;
      v13 = "[SSRVoiceActivityDetector processAudioData:numSamples:]";
      v14 = 2048;
      v15 = v6 / v10;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s VAD processed %f secs of audio", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (SSRVoiceActivityDetector)initWithContext:(id)a3 delegate:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = SSRVoiceActivityDetector;
  v9 = [(SSRVoiceActivityDetector *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    v11 = [MEMORY[0x277D018F8] getSerialQueueWithQOS:33 name:@"com.apple.ssr.vad.spg" fixedPriority:*MEMORY[0x277D019B0]];
    spgQueue = v10->_spgQueue;
    v10->_spgQueue = v11;

    objc_storeStrong(&v10->_context, a3);
    v10->_numConsecutiveNonSilenceFrames = 0;
    v10->_segmentStartPointSampleCount = 0;
    v10->_numSamplesProcessed = 0;
    [(SSRVoiceActivityDetector *)v10 _initializeSPGWithContext:v7];
    v13 = objc_alloc(MEMORY[0x277D07238]);
    v14 = [v7 vadResourcePath];
    v15 = [v14 path];
    v26 = 0;
    v16 = [v13 initWithConfiguration:v15 modelVersion:&v26];
    v17 = v26;
    hybridClassifier = v10->_hybridClassifier;
    v10->_hybridClassifier = v16;

    v19 = v10->_hybridClassifier;
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    if (([(_EAREndpointer *)v19 requestSupportedWithSamplingRate:v20]& 1) == 0)
    {
      v21 = *MEMORY[0x277D015C8];
      if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v29 = "[SSRVoiceActivityDetector initWithContext:delegate:]";
        _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s ERR: Hybrid endpointer not ready for processing request", buf, 0xCu);
      }
    }

    v22 = [(_EAREndpointer *)v10->_hybridClassifier defaultServerEndpointFeatures];
    defSepFeats = v10->_defSepFeats;
    v10->_defSepFeats = v22;

    v10->_endpointReported = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v10;
}

@end