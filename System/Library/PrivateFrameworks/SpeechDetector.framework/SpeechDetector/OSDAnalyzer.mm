@interface OSDAnalyzer
- (OSDAnalyzer)initWithConfigFile:(id)a3 sampleRate:(unint64_t)a4 context:(id)a5 queue:(id)a6 delegate:(id)a7;
- (OSDAnalyzerDelegate)delegate;
- (void)addFaceTrackingData:(id)a3 atMachAbsTime:(unint64_t)a4;
- (void)clientSilenceFeaturesAvailable:(id)a3;
- (void)didUpdateVisualSpeechProbability:(double)a3 from:(unint64_t)a4 to:(unint64_t)a5;
- (void)setupLipMovementVADWithModelPath:(id)a3;
@end

@implementation OSDAnalyzer

- (OSDAnalyzerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)clientSilenceFeaturesAvailable:(id)a3
{
  v4 = a3;
  v5 = [OSDFeatures alloc];
  [v4 silenceFramesCountMs];
  v7 = v6;
  [v4 silenceProbability];
  v9 = v8;
  [v4 silenceDurationMs];
  v11 = v10;
  [v4 processedAudioMs];
  v13 = v12;
  v14 = [v4 inferenceTime];

  v15 = [(OSDFeatures *)v5 initWithSilenceFramesCountMs:v14 silenceProbability:v7 silenceDurationMs:v9 processedAudioMs:v11 inferenceTime:v13];
  osdFeatures = self->_osdFeatures;
  self->_osdFeatures = v15;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v18 = WeakRetained;
    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = objc_loadWeakRetained(&self->_delegate);
      [v21 osdAnalyzer:self didUpdateOSDFeatures:self->_osdFeatures];
    }
  }

  if (!self->_startOfSpeechDetected)
  {
    [(OSDFeatures *)self->_osdFeatures silenceProbability];
    if (v22 >= 0.6)
    {
      self->_numConsecutiveNonSilenceFrames = 0;
    }

    else
    {
      v23 = self->_numConsecutiveNonSilenceFrames + 1;
      self->_numConsecutiveNonSilenceFrames = v23;
      if (v23 >= 0xA)
      {
        v24 = objc_loadWeakRetained(&self->_delegate);
        v25 = objc_opt_respondsToSelector();

        if (v25)
        {
          v26 = objc_loadWeakRetained(&self->_delegate);
          [(OSDFeatures *)self->_osdFeatures processedAudioMs];
          [v26 osdAnalyzer:self didDetectStartOfSpeechAt:?];
        }

        self->_startOfSpeechDetected = 1;
      }
    }
  }

  if (!self->_endOfSpeechDetected && self->_startOfSpeechDetected)
  {
    [(OSDFeatures *)self->_osdFeatures silenceDurationMs];
    if (v27 >= 0.975)
    {
      v28 = objc_loadWeakRetained(&self->_delegate);
      if (v28)
      {
        v29 = v28;
        v30 = objc_loadWeakRetained(&self->_delegate);
        v31 = objc_opt_respondsToSelector();

        if (v31)
        {
          v32 = objc_loadWeakRetained(&self->_delegate);
          [(OSDFeatures *)self->_osdFeatures processedAudioMs];
          [v32 osdAnalyzer:self didDetectEndOfSpeechAt:?];
        }
      }

      self->_endOfSpeechDetected = 1;
    }
  }
}

- (void)addFaceTrackingData:(id)a3 atMachAbsTime:(unint64_t)a4
{
  v6 = a3;
  lipMovementQueue = self->_lipMovementQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__OSDAnalyzer_addFaceTrackingData_atMachAbsTime___block_invoke;
  block[3] = &unk_279CD90B8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(lipMovementQueue, block);
}

- (void)didUpdateVisualSpeechProbability:(double)a3 from:(unint64_t)a4 to:(unint64_t)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 osdAnalyzer:self didUpdateVisualSpeechProbability:a4 from:a5 to:a3];
    }
  }
}

- (void)setupLipMovementVADWithModelPath:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SDLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(SDLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[OSDAnalyzer setupLipMovementVADWithModelPath:]";
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_26B2CF000, v5, OS_LOG_TYPE_DEFAULT, "%s Creating lipmovementvad with model path of: %{public}@", &v9, 0x16u);
  }

  v6 = [[SDLipMovementVAD alloc] initWithModelFile:v4];
  lipMovementVAD = self->_lipMovementVAD;
  self->_lipMovementVAD = v6;

  [(SDLipMovementVAD *)self->_lipMovementVAD setDelegate:self];
  v8 = *MEMORY[0x277D85DE8];
}

- (OSDAnalyzer)initWithConfigFile:(id)a3 sampleRate:(unint64_t)a4 context:(id)a5 queue:(id)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v30.receiver = self;
  v30.super_class = OSDAnalyzer;
  v16 = [(OSDAnalyzer *)&v30 init];
  if (v16)
  {
    if (SDLogInitIfNeeded_once != -1)
    {
      dispatch_once(&SDLogInitIfNeeded_once, &__block_literal_global);
    }

    objc_storeWeak(&v16->_delegate, v15);
    v17 = [v13 copy];
    osdContext = v16->_osdContext;
    v16->_osdContext = v17;

    if (v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = dispatch_queue_create("OSD queue", 0);
    }

    queue = v16->_queue;
    v16->_queue = v19;

    v21 = [objc_alloc(MEMORY[0x277D071E0]) initWithConfigFile:v12 samplingRate:a4 queue:v16->_queue];
    caesuraSPG = v16->_caesuraSPG;
    v16->_caesuraSPG = v21;

    v23 = v16->_caesuraSPG;
    if (!v23)
    {
      v28 = 0;
      goto LABEL_11;
    }

    [(EARCaesuraSilencePosteriorGenerator *)v23 setDelegate:v16];
    v24 = [[OSDFeatures alloc] initWithSilenceFramesCountMs:0 silenceProbability:0.0 silenceDurationMs:0.0 processedAudioMs:0.0 inferenceTime:0.0];
    osdFeatures = v16->_osdFeatures;
    v16->_osdFeatures = v24;

    v26 = dispatch_queue_create("LipMovementVAD queue", 0);
    lipMovementQueue = v16->_lipMovementQueue;
    v16->_lipMovementQueue = v26;
  }

  v28 = v16;
LABEL_11:

  return v28;
}

@end