@interface VTPhraseSpotter
+ (void)initialize;
- (BOOL)_configureWithConfig:(id)a3 resourcePath:(id)a4;
- (BOOL)_getSecondChanceEffective;
- (BOOL)_isDeviceHandheld;
- (BOOL)_shouldPerformRetrainingWithAnalyzerNDAPI:(id)a3 resourcePath:(id)a4;
- (VTPhraseSpotter)init;
- (VTPhraseSpotter)initWithConfig:(id)a3 assetDir:(id)a4 runMode:(unint64_t)a5;
- (VTPhraseSpotter)initWithConfig:(id)a3 resourcePath:(id)a4;
- (VTPhraseSpotter)initWithHardwareSampleRate:(double)a3;
- (VTPhraseSpotter)initWithHardwareSampleRate:(double)a3 readyCompletion:(id)a4;
- (VTPhraseSpotter)initWithLanguageCodeForSATEnrollment:(id)a3;
- (double)_computeSATScore:(const _ndresult *)a3;
- (id)_analyzeEvents:(const _ndresult *)a3;
- (id)_analyzeMakeResult:(const _ndresult *)a3 eventKind:(unsigned __int8)a4 satScore:(double)a5;
- (id)_capturePathWithPrefix:(id)a3 eventKind:(unsigned __int8)a4;
- (id)_createVTEventInfoString:(id)a3;
- (id)_handleTriggerEvent:(const _ndresult *)a3 num_new_samples:(unsigned int)a4 satScore:(double)a5;
- (id)_randomSubset:(id)a3 numSelected:(unsigned int)a4;
- (id)_sampleFromSortedArray:(id)a3 numSelected:(unint64_t)a4;
- (id)_storeTrainingAudioAndMetaInfo;
- (id)analyze:(AudioBuffer)a3;
- (id)analyzeBufferList:(AudioBufferList *)a3;
- (id)assetDictionary;
- (id)getCorealisRTModel;
- (int64_t)_getNumberOfAudioFilesInDirectory:(id)a3;
- (int64_t)isFollowedBySpeech;
- (unint64_t)_addExtraTime:(double)a3 to:(unint64_t)a4;
- (unint64_t)_applyExtraTime:(double)a3 to:(unint64_t)a4;
- (unint64_t)_getBiometricMatchResult;
- (unint64_t)_sampleLengthFrom:(unsigned int)a3 To:(unsigned int)a4;
- (unint64_t)getAdjustedDeviceStartTime:(unint64_t)a3;
- (void)VTLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4;
- (void)_analyzeResetWithOption:(unsigned __int8)a3;
- (void)_cancelSecondChance;
- (void)_commonInit;
- (void)_createFirstChanceMeta:(const _ndresult *)a3;
- (void)_firstUnlockedAndSpringBoardStarted;
- (void)_handleAssetChangeForLanguageCode:(id)a3;
- (void)_initDetector;
- (void)_logCorruptAudio;
- (void)_logMetaData:(id)a3;
- (void)_logPrepareProperty:(id)a3;
- (void)_notifyAssetChangedCallback;
- (void)_performReadyCompletion;
- (void)_phraseSpotterEnabledDidChange;
- (void)_resetCounters;
- (void)_resetVoiceTriggerDueToRTSTrigger;
- (void)_safeConfigureWithAnalyzer:(id)a3 path:(id)a4 data:(id)a5 resourcePath:(id)a6;
- (void)_safeReconfig;
- (void)_setDeviceHandHeld;
- (void)_setSecondChance;
- (void)_storeFirstChanceAudio;
- (void)_voiceTriggerEnabledDidChange;
- (void)dealloc;
- (void)didReceiveSiriSessionCancellation:(id)a3;
- (void)looseTriggerThreshold;
- (void)notifyAssetChangeWithCallback:(id)a3;
- (void)prepareWithProperty:(id)a3 readyCompletion:(id)a4;
- (void)requestFoceTrigger;
- (void)requestSecondChance;
- (void)setBypass:(BOOL)a3;
- (void)startAudioCapture;
- (void)stopAudioCapture;
- (void)textDependentSpeakerRecognizer:(id)a3 failedWithError:(id)a4;
- (void)textDependentSpeakerRecognizer:(id)a3 hasSatScore:(float)a4;
@end

@implementation VTPhraseSpotter

- (void)textDependentSpeakerRecognizer:(id)a3 failedWithError:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    satDetectionTdSr = self->_satDetectionTdSr;
    v15 = 138543874;
    *v16 = v6;
    *&v16[8] = 2114;
    v17 = satDetectionTdSr;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "TDSR-ERROR:: tdSR: %{public}@, _tdSrForSatDetection:%{public}@, ERROR: %{public}@", &v15, 0x20u);
    v8 = VTLogContextFacilityVoiceTrigger;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isRunningSATDetection = self->_isRunningSATDetection;
    isRunningSATEnrollment = self->_isRunningSATEnrollment;
    v15 = 67240448;
    *v16 = isRunningSATDetection;
    *&v16[4] = 1026;
    *&v16[6] = isRunningSATEnrollment;
    _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "_isRunningSATDetection: %{public}d, _isRunningSATEnrollment: %{public}d", &v15, 0xEu);
    v8 = VTLogContextFacilityVoiceTrigger;
  }

  v12 = self->_satDetectionTdSr;
  v13 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v12 == v6)
  {
    if (v13)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "VTTextDependentSpeakerRecognizer failed with Error during DETECTION", &v15, 2u);
    }

    v14 = +[VTAggregator sharedAggregator];
    [v14 logTdPsrFailedDuringSATDetection];
  }

  else if (v13)
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "ERR: VTTextDependentSpeakerRecognizer failed for unmanaged TD-SR instance!!!", &v15, 2u);
  }
}

- (void)textDependentSpeakerRecognizer:(id)a3 hasSatScore:(float)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v6;
    v11 = 2050;
    v12 = a4;
    _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "textDependentSpeakerRecognizer:hasSatScore: %{public}@: %{public}f, signalling now", &v9, 0x16u);
  }

  if (self->_satDetectionTdSr == v6)
  {
    dispatch_semaphore_signal(self->_satDetectionTdSrSemaphore);
  }

  else
  {
    v8 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "ERR: textDependentSpeakerRecognizer called for unmanaged TD-SR instance: %{public}@", &v9, 0xCu);
    }
  }
}

- (id)assetDictionary
{
  v15 = *MEMORY[0x277D85DE8];
  resourcePath = self->_resourcePath;
  if (resourcePath && (v4 = self->_configVersion) != 0)
  {
    v9[0] = @"resourcePath";
    v9[1] = @"configVersion";
    v10[0] = resourcePath;
    v10[1] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  else
  {
    v6 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      configVersion = self->_configVersion;
      *buf = 138412546;
      v12 = resourcePath;
      v13 = 2112;
      v14 = configVersion;
      _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "VoiceTrigger Asset Not confgiured yet!. _resourcePath=%@, _configVersion=%@", buf, 0x16u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)stopAudioCapture
{
  ndetectQueue = self->_ndetectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__VTPhraseSpotter_stopAudioCapture__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(ndetectQueue, block);
}

void __35__VTPhraseSpotter_stopAudioCapture__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 161) = 0;
  v1 = +[VTAudioFileLog sharedInstance];
  [v1 stopRecording];
}

- (void)startAudioCapture
{
  ndetectQueue = self->_ndetectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__VTPhraseSpotter_startAudioCapture__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(ndetectQueue, block);
}

void __36__VTPhraseSpotter_startAudioCapture__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 160) & 1) == 0)
  {
    *(v2 + 161) = 1;
    v3 = +[VTAudioFileLog sharedInstance];
    [v3 startRecording];
  }
}

- (int64_t)isFollowedBySpeech
{
  transcriber = self->_transcriber;
  if (transcriber)
  {
    v3 = [(VTTranscriber *)transcriber isTriggerFollowedByWords];
    v4 = VTLogContextFacilityVoiceTrigger;
    v5 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "isFollowedBySpeech: YES", buf, 2u);
      }

      return 2;
    }

    else
    {
      if (v5)
      {
        *v9 = 0;
        _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "isFollowedBySpeech: NO", v9, 2u);
      }

      return 1;
    }
  }

  else
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "isFollowedBySpeech: Unknown", v8, 2u);
    }

    return 0;
  }
}

- (void)_resetCounters
{
  self->_samplecount = 0;
  *&self->_samplecountAtLastTriggerStart = 0;
  *&self->_sampleCountAtFirstChance = 0;
  *(&self->_lastEventEnd + 1) = 0;
  self->_lastScore = -INFINITY;
  self->_earlyDetectTime = 0.0;
  self->_earlyDetecFiredMachTime = 0;
  self->_heartbeatCounter = 0;
}

- (void)_safeReconfig
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446210;
    v13 = "[VTPhraseSpotter _safeReconfig]";
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v12, 0xCu);
  }

  v4 = self->_configPath;
  v5 = self->_resourcePath;
  if (self->_audioLoggingEnabled && ([MEMORY[0x277CCAA00] defaultManager], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "fileExistsAtPath:", v4), v6, v7))
  {
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 MD5HashString];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [[VTAnalyzerNDAPI alloc] initWithConfigPath:v4 resourcePath:v5];
  if (v11)
  {
    [(VTPhraseSpotter *)self _safeConfigureWithAnalyzer:v11 path:v4 data:v10 resourcePath:v5];
  }
}

- (id)_sampleFromSortedArray:(id)a3 numSelected:(unint64_t)a4
{
  v5 = a3;
  if ([v5 count] <= a4)
  {
    v6 = v5;
  }

  else if (a4)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a4];
    v7 = [v5 count];
    if ([v5 count])
    {
      v8 = 0;
      v9 = (v7 / a4);
      v10 = 1;
      do
      {
        v11 = [v5 objectAtIndexedSubscript:v8];
        [v6 addObject:v11];

        v8 += v9;
        if (v8 >= [v5 count])
        {
          break;
        }
      }

      while (v10++ < a4);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_randomSubset:(id)a3 numSelected:(unsigned int)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] <= a4)
  {
    v9 = v5;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CBEB18]);
    v8 = [v5 subarrayWithRange:{0, a4}];
    v9 = [v7 initWithArray:v8];

    if ([v5 count] > a4)
    {
      v10 = a4 + 1;
      do
      {
        v11 = arc4random_uniform(v10);
        if (v11 < a4)
        {
          v12 = v11;
          v13 = [v5 objectAtIndexedSubscript:v6];
          [v9 setObject:v13 atIndexedSubscript:v12];
        }

        v6 = v10++;
      }

      while ([v5 count] > v6);
    }
  }

  return v9;
}

- (void)_safeConfigureWithAnalyzer:(id)a3 path:(id)a4 data:(id)a5 resourcePath:(id)a6
{
  v151 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  [VTSpeakerIdUtilities getSATAudioDirectoryForType:1 forLanguageCode:self->_languageCode];
  v129 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  [(VTPhraseSpotter *)self _resetCounters];
  self->_samplerate = 16000;
  objc_storeStrong(&self->_resourcePath, a6);
  objc_storeStrong(&self->_configPath, a4);
  objc_storeStrong(&self->_configData, a5);
  v15 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    configVersion = self->_configVersion;
    configData = self->_configData;
    *buf = 138543618;
    v143 = configVersion;
    v144 = 2114;
    v145 = *&configData;
    _os_log_impl(&dword_223A31000, v15, OS_LOG_TYPE_DEFAULT, "::: config version: %{public}@; data: %{public}@", buf, 0x16u);
  }

  [v11 getNDAPITriggerThreshold];
  self->_ndapiThreshold = v18;
  [v11 getNDAPISecondChanceThreshold];
  self->_ndapiThresholdSecondChance = v19;
  [v11 getNDAPILoggingThreshold];
  self->_ndapiThresholdLogNearMisses = v20;
  *&self->_threshold = *&self->_ndapiThreshold;
  self->_thresholdLogNearMisses = v20;
  [v11 getCombinedTriggerThreshold];
  self->_combinedThreshold = v21;
  [v11 getCombinedSecondChanceThreshold];
  self->_combinedThresholdSecondChance = v22;
  [v11 getCombinedLoggingThreshold];
  self->_combinedThresholdLogNearMisses = v23;
  [v11 getExtraSamplesAtStart];
  self->_extraSamplesAtStart = v24;
  [v11 getSecondPassTrailingTime];
  self->_secondPassTrailingTime = v25;
  self->_doSuperVectorSecondaryTest = [v11 getDoSupervectorSecondaryTest];
  [v11 getThresholdPresuperVector];
  self->_thresholdPreSuperVector = v26;
  v27 = [v11 getUseRecognizer];
  self->_useRecognizer = v27;
  if (v27)
  {
    if (+[VTUtilities supportPremiumAssets])
    {
      if (!self->_isRunningSATEnrollment)
      {
        v28 = [v11 getRecognizerConfig];
        recognizerConfigName = self->_recognizerConfigName;
        self->_recognizerConfigName = v28;

        [v11 getRecognizerThresholdOffset];
        self->_recognizerThresholdOffset = v30;
        [v11 getRecognizerWaitTime];
        self->_recognizerWaitTime = v31;
        [v11 getRecognizerScoreScaleFactor];
        self->_recognizerScoreScaleFactor = v32;
        v33 = [v11 getTriggerTokens];
        triggerTokens = self->_triggerTokens;
        self->_triggerTokens = v33;

        self->_useFallbackThresholdUponTimeout = [v11 getUseFallbackThresholdUponTimeout];
        self->_useKeywordSpotting = [v11 getUseKeywordSpotting];
        goto LABEL_14;
      }
    }

    else if (!self->_isRunningSATEnrollment)
    {
      v35 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v36 = "Device does not support recognizer config, ignoring...";
        goto LABEL_12;
      }

LABEL_13:

      self->_useRecognizer = 0;
      goto LABEL_14;
    }

    v35 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v36 = "recognizer config ignored during enrollment...";
LABEL_12:
      _os_log_impl(&dword_223A31000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_14:
  if (!self->_isRunningSATEnrollment)
  {
    self->_isRunningSATDetection = [v11 getDoSAT];
    [v11 getThresholdSAT];
    self->_thresholdSAT = v40;
    v41 = [v11 getRetrainNumExplicitUtt];
    self->_retrainNumExplicitUtt = v41;
    if (v41 <= 4)
    {
      v42 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        v143 = 5;
        _os_log_impl(&dword_223A31000, v42, OS_LOG_TYPE_DEFAULT, "# of explicit utterances must be larger than %{public}lu, overriding...", buf, 0xCu);
      }

      self->_retrainNumExplicitUtt = 5;
    }

    self->_retrainNumImplicitUtt = [v11 getRetrainNumImplicitUtt];
    v43 = [v11 getRetrainSamplingPolicy];
    retrainSamplingPolicy = self->_retrainSamplingPolicy;
    self->_retrainSamplingPolicy = v43;

    [v11 getRetrainThresholdTrigger];
    self->_retrainThresholdTrigger = v45;
    [v11 getRetrainThresholdSAT];
    self->_retrainThresholdSAT = v46;
    if (self->_isRunningSATEnrollment)
    {
      goto LABEL_23;
    }

LABEL_22:
    isRunningSATDetection = self->_isRunningSATDetection;
    if (!isRunningSATDetection)
    {
      goto LABEL_92;
    }

    goto LABEL_23;
  }

  self->_isRunningSATDetection = 0;
  self->_thresholdSAT = INFINITY;
  v37 = [VTSpeakerIdUtilities createSATDirectoriesForType:2 forLanguageCode:self->_languageCode];
  v38 = [VTSpeakerIdUtilities createSATDirectoriesForType:1 forLanguageCode:self->_languageCode];
  v39 = [VTSpeakerIdUtilities createSATDirectoriesForType:3 forLanguageCode:self->_languageCode];
  if (!self->_isRunningSATEnrollment)
  {
    goto LABEL_22;
  }

LABEL_23:
  [VTSpeakerIdUtilities getSpeakerModelPathForType:1 withLanguageCode:self->_languageCode withConfigPath:v12 createDirectory:?];
  v128 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v48 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&v143 = v128;
    _os_log_impl(&dword_223A31000, v48, OS_LOG_TYPE_DEFAULT, "SAT speaker file location is %{public}@", buf, 0xCu);
  }

  v49 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&v143 = v129;
    _os_log_impl(&dword_223A31000, v49, OS_LOG_TYPE_DEFAULT, "SAT training utterances stored in %{public}@", buf, 0xCu);
  }

  v50 = [VTUtilities getAssetHashFromConfigPath:v12];
  v126 = [VTSpeakerIdUtilities getSATDirectoryForModelType:1 forLanguageCode:self->_languageCode];
  v127 = v50;
  v51 = [[VTTextDependentSpeakerRecognizer alloc] initWithResourcePath:v14 satDirectory:v126 assetHash:v50 shouldCreateModelDir:0 delegate:self];
  satDetectionTdSr = self->_satDetectionTdSr;
  self->_satDetectionTdSr = v51;

  v53 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = self->_satDetectionTdSr;
    *buf = 138543362;
    v143 = v54;
    _os_log_impl(&dword_223A31000, v53, OS_LOG_TYPE_DEFAULT, "TDSR:: Created _tdSrForSatDetection: %{public}@", buf, 0xCu);
  }

  v55 = v129;
  if (self->_isRunningSATEnrollment)
  {
    v56 = [MEMORY[0x277CCAA00] defaultManager];
    v57 = [v56 fileExistsAtPath:*&v128 isDirectory:0];

    if (v57)
    {
      v58 = [MEMORY[0x277CCAA00] defaultManager];
      v140 = 0;
      [v58 removeItemAtPath:*&v128 error:&v140];
      v59 = v140;

      if (v59)
      {
        v60 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          [v59 localizedDescription];
          v61 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138543618;
          *&v143 = v128;
          v144 = 2114;
          v145 = v61;
          _os_log_impl(&dword_223A31000, v60, OS_LOG_TYPE_DEFAULT, "Couldn't delete speaker model at path %{public}@ %{public}@", buf, 0x16u);
        }
      }
    }

    v62 = [MEMORY[0x277CCAA00] defaultManager];
    v139 = 0;
    v63 = [v62 contentsOfDirectoryAtPath:*&v129 error:&v139];
    v64 = v139;

    v125 = v63;
    if (v64 || !v63)
    {
      v75 = VTLogContextFacilityVoiceTrigger;
      v76 = v64;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v77 = v75;
        [v64 localizedDescription];
        v78 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138543618;
        *&v143 = v129;
        v144 = 2114;
        v145 = v78;
        _os_log_impl(&dword_223A31000, v77, OS_LOG_TYPE_DEFAULT, "Coudn't fetch the list of training utterances at path: %{public}@ %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v121 = v14;
      v122 = v13;
      v123 = v12;
      v124 = v11;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v65 = v63;
      v66 = [v65 countByEnumeratingWithState:&v135 objects:v150 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v136;
        do
        {
          for (i = 0; i != v67; ++i)
          {
            if (*v136 != v68)
            {
              objc_enumerationMutation(v65);
            }

            if (*(*(&v135 + 1) + 8 * i))
            {
              [*&v55 stringByAppendingPathComponent:?];
              v70 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v71 = [MEMORY[0x277CCAA00] defaultManager];
              v134 = 0;
              [v71 removeItemAtPath:*&v70 error:&v134];
              v72 = v134;

              if (v72)
              {
                v73 = VTLogContextFacilityVoiceTrigger;
                if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                {
                  [v72 localizedDescription];
                  v74 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  *buf = 138543618;
                  *&v143 = v70;
                  v144 = 2114;
                  v145 = v74;
                  _os_log_impl(&dword_223A31000, v73, OS_LOG_TYPE_DEFAULT, "Couldn't delete training utterance at path %{public}@ %{public}@", buf, 0x16u);

                  v55 = v129;
                }
              }
            }
          }

          v67 = [v65 countByEnumeratingWithState:&v135 objects:v150 count:16];
        }

        while (v67);
      }

      v12 = v123;
      v11 = v124;
      v14 = v121;
      v13 = v122;
      v76 = 0;
    }
  }

  if ([v11 initializeSAT:*&v128])
  {
    if (self->_isRunningSATDetection)
    {
      if ([VTVoiceProfileMigration checkIfMigrationNecessaryForCompatibilityVersion:1 forLanguageCode:self->_languageCode])
      {
        v79 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_223A31000, v79, OS_LOG_TYPE_DEFAULT, "Performing Migration of Voice Profile...", buf, 2u);
        }

        v80 = [VTVoiceProfileMigration migrateVoiceProfileToVersion:1 forLanguageCode:self->_languageCode];
      }

      else
      {
        v80 = 0;
      }

      v82 = [[VTVoiceProfileRetrainer alloc] initWithAnalyzer:v11 languageCode:self->_languageCode modelType:1 configPath:self->_configPath resourcePath:self->_resourcePath];
      if (v80 || [(VTPhraseSpotter *)self _shouldPerformRetrainingWithAnalyzerNDAPI:v11 resourcePath:v14])
      {
        if ([(VTVoiceProfileRetrainer *)v82 pruneVoiceProfileIfNecessary])
        {
          v83 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_223A31000, v83, OS_LOG_TYPE_DEFAULT, "Pruned Voice profile", buf, 2u);
          }
        }

        v84 = +[VTPreferences sharedPreferences];
        v85 = [v84 voiceTriggerEnabled];

        v86 = VTLogContextFacilityVoiceTrigger;
        if (v85)
        {
          v87 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_223A31000, v87, OS_LOG_TYPE_DEFAULT, "Retraining SAT speaker models with previous enrollment data", buf, 2u);
          }

          if (![VTSpeakerIdUtilities deleteExistingSATModelForLanguageCode:self->_languageCode])
          {
            v88 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_223A31000, v88, OS_LOG_TYPE_ERROR, "ERR: Cannot delete invalidated spk model", buf, 2u);
            }
          }

          [(VTTextDependentSpeakerRecognizer *)self->_satDetectionTdSr deleteExistingSATModel];
          v130[0] = MEMORY[0x277D85DD0];
          v130[1] = 3221225472;
          v130[2] = __69__VTPhraseSpotter__safeConfigureWithAnalyzer_path_data_resourcePath___block_invoke;
          v130[3] = &unk_2784ED208;
          v130[4] = self;
          v131 = v14;
          v132 = v126;
          v133 = v127;
          [(VTVoiceProfileRetrainer *)v82 retrainSATModelWithCompletion:v130];
        }

        else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_223A31000, v86, OS_LOG_TYPE_DEFAULT, "Not performing retraining while Voice Trigger is disabled", buf, 2u);
        }
      }

      if ([v11 getSATVectorCount] <= 0)
      {
        v89 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_223A31000, v89, OS_LOG_TYPE_DEFAULT, "SAT model file can't be read correctly, turning off SAT for workaround", buf, 2u);
        }

        self->_isRunningSATDetection = 0;
      }
    }
  }

  else
  {
    v81 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&v143 = v128;
      _os_log_impl(&dword_223A31000, v81, OS_LOG_TYPE_DEFAULT, "Couldn't load or initialize speaker model file at path %{public}@, disabling SAT", buf, 0xCu);
    }

    self->_isRunningSATDetection = 0;
  }

  LOBYTE(isRunningSATDetection) = self->_isRunningSATDetection;
  if (isRunningSATDetection)
  {
    v90 = self->_satDetectionTdSr;
    if (v90)
    {
      [(VTTextDependentSpeakerRecognizer *)v90 getThresholdSAT];
      self->_tdSpeakerRecognizerSATThreshold = v91;
      [(VTTextDependentSpeakerRecognizer *)self->_satDetectionTdSr getCombinationWeight];
      self->_tdSpeakerRecognizerCombinationWeight = v92;
    }

    v93 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      v94 = self->_satDetectionTdSr;
      thresholdSAT = self->_thresholdSAT;
      tdSpeakerRecognizerSATThreshold = self->_tdSpeakerRecognizerSATThreshold;
      tdSpeakerRecognizerCombinationWeight = self->_tdSpeakerRecognizerCombinationWeight;
      *buf = 138544130;
      v143 = v94;
      v144 = 2050;
      v145 = thresholdSAT;
      v146 = 2050;
      v147 = tdSpeakerRecognizerSATThreshold;
      v148 = 2050;
      v149 = tdSpeakerRecognizerCombinationWeight;
      _os_log_impl(&dword_223A31000, v93, OS_LOG_TYPE_DEFAULT, "_satDetectionTdSr: %{public}@: _thresholdSAT=%{public}f, _tdSpeakerRecognizerSATThreshold=%{public}f, _tdSpeakerRecognizerCombinationWeight=%{public}f", buf, 0x2Au);
    }

    LOBYTE(isRunningSATDetection) = self->_isRunningSATDetection;
  }

LABEL_92:
  self->_isSuperVectorNeeded = isRunningSATDetection || self->_isRunningSATEnrollment || self->_doSuperVectorSecondaryTest;
  if (self->_useRecognizer && self->_recognizerConfigName)
  {
    v98 = [MEMORY[0x277CCAC38] processInfo];
    [v98 systemUptime];
    v100 = v99;

    [(NSString *)self->_resourcePath stringByAppendingPathComponent:self->_recognizerConfigName];
    v101 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v102 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&v143 = v101;
      _os_log_impl(&dword_223A31000, v102, OS_LOG_TYPE_DEFAULT, "Speech recognizer config path: %{public}@", buf, 0xCu);
    }

    v103 = [[VTTranscriber alloc] initWithConfiguration:*&v101 triggerTokens:self->_triggerTokens useKeywordSpotting:self->_useKeywordSpotting];
    transcriber = self->_transcriber;
    self->_transcriber = v103;

    v105 = [MEMORY[0x277CCAC38] processInfo];
    [v105 systemUptime];
    v107 = v106;

    v108 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      *&v143 = (v107 - v100) * 1000.0;
      _os_log_impl(&dword_223A31000, v108, OS_LOG_TYPE_DEFAULT, "Speech model loading took %{public}.3fms", buf, 0xCu);
    }

    if (!self->_transcriber)
    {
      self->_useRecognizer = 0;
    }
  }

  if (!self->_audioBuffer && [(VTPhraseSpotter *)self _shouldCreateAudioBuffer])
  {
    v109 = [[VTAudioCircularBuffer alloc] initWithNumChannels:1 recordingDuration:2 samplingRate:16000];
    audioBuffer = self->_audioBuffer;
    self->_audioBuffer = v109;
  }

  analyzer = self->_analyzer;
  if (analyzer)
  {
    self->_analyzer = 0;
  }

  objc_storeStrong(&self->_analyzer, a3);
  v112 = +[VTPreferences sharedPreferences];
  v113 = [v112 localizedTriggerPhraseForLanguageCode:self->_languageCode];
  v141 = v113;
  v114 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
  triggerPhrases = self->_triggerPhrases;
  self->_triggerPhrases = v114;

  self->_isMaximized = 0;
  self->_earlyDetected = 0;
  self->_earlyDetectTime = 0.0;
  self->_earlyDetecFiredMachTime = 0;
  self->_numFramesFromPreTrigger = 0;
  v116 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    languageCode = self->_languageCode;
    threshold = self->_threshold;
    thresholdLogNearMisses = self->_thresholdLogNearMisses;
    v120 = self->_triggerPhrases;
    *buf = 138544130;
    v143 = languageCode;
    v144 = 2050;
    v145 = threshold;
    v146 = 2050;
    v147 = thresholdLogNearMisses;
    v148 = 2114;
    v149 = *&v120;
    _os_log_impl(&dword_223A31000, v116, OS_LOG_TYPE_DEFAULT, "Initialized detector. LanguageCode: %{public}@; Threshold set to %{public}f; logging threshold: %{public}f; trigger phrases: %{public}@", buf, 0x2Au);
  }
}

void __69__VTPhraseSpotter__safeConfigureWithAnalyzer_path_data_resourcePath___block_invoke(void *a1, int a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [[VTTextDependentSpeakerRecognizer alloc] initWithResourcePath:a1[5] satDirectory:a1[6] assetHash:a1[7] shouldCreateModelDir:0 delegate:a1[4]];
    v6 = a1[4];
    v7 = *(v6 + 584);
    *(v6 + 584) = v5;

    v8 = VTLogContextFacilityVoiceTrigger;
    if (!os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = *(a1[4] + 584);
    v15 = 138543362;
    v16 = v9;
    v10 = "TDSR:: _satRetrainingTdSr Success. Recreated _satDetectionTdSr: %{public}@";
  }

  else
  {
    v11 = a1[4];
    v12 = *(v11 + 584);
    *(v11 + 584) = 0;

    v8 = VTLogContextFacilityVoiceTrigger;
    if (!os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = *(a1[4] + 584);
    v15 = 138543362;
    v16 = v13;
    v10 = "TDSR:: _satRetrainingTdSr FAILED. Setting _satDetectionTdSr to nil: %{public}@";
  }

  _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, v10, &v15, 0xCu);
LABEL_7:
  if (a2)
  {
    notify_post("com.apple.voicetrigger.PHSProfileModified");
  }

  else
  {
    v14 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_223A31000, v14, OS_LOG_TYPE_DEFAULT, "Retraining failed, turning off SAT for workaround", &v15, 2u);
    }

    *(a1[4] + 241) = 0;
  }
}

- (BOOL)_shouldPerformRetrainingWithAnalyzerNDAPI:(id)a3 resourcePath:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:1 forLanguageCode:self->_languageCode];
  v39 = 0;
  if ([v8 fileExistsAtPath:v9 isDirectory:&v39] & 1) != 0 || (v10 = v39, (v39))
  {
    v11 = [VTSpeakerIdUtilities getSpeakerModelPathForType:1 withLanguageCode:self->_languageCode withConfigPath:self->_configPath createDirectory:0];
    if ([v8 fileExistsAtPath:v11 isDirectory:0])
    {
      v37 = v11;
      v12 = v7;
      v13 = [(VTPhraseSpotter *)self _getNumberOfAudioFilesInDirectory:v9];
      v14 = [v6 getSATVectorCount];
      v15 = [v6 getMaximumSpeakerVectors];
      v16 = VTLogContextFacilityVoiceTrigger;
      v38 = v6;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349826;
        v17 = v15;
        v41 = v13;
        v42 = 2114;
        v43 = v6;
        v18 = v14;
        v44 = 2050;
        v45 = v14;
        v46 = 2050;
        v47 = v15;
        _os_log_impl(&dword_223A31000, v16, OS_LOG_TYPE_DEFAULT, "SV: numAudioFiles: %{public}ld, analyzerNDAPI: %{public}@, numSATSpeakerVectors: %{public}ld, maxSpeakerVectors: %{public}ld", buf, 0x2Au);
      }

      else
      {
        v17 = v15;
        v18 = v14;
      }

      v7 = v12;
      if (v13 <= v17 && v13 != v18)
      {
        v25 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_223A31000, v25, OS_LOG_TYPE_DEFAULT, "Needs Retraining: (PHS)SpeakerVectors MISMATCH. numSATSpeakerVectors != numAudioFiles", buf, 2u);
        }

        v23 = 1;
        v11 = v37;
        v6 = v38;
        goto LABEL_33;
      }

      if (v13 > v17 && v14 != v15)
      {
        v26 = VTLogContextFacilityVoiceTrigger;
        v11 = v37;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_223A31000, v26, OS_LOG_TYPE_DEFAULT, "Needs Retraining: (PHS)SpeakerVectors MISMATCH. numSATSpeakerVectors != maxSpeakerVectors", buf, 2u);
        }

        v23 = 1;
        v6 = v38;
        goto LABEL_33;
      }

      v11 = v37;
      if ([VTTextDependentSpeakerRecognizer psrTdAssetExistsAtResourcePath:v12])
      {
        v27 = v18;
        v28 = [(VTTextDependentSpeakerRecognizer *)self->_satDetectionTdSr tdSATModelFilePath];
        v29 = [v8 fileExistsAtPath:v28 isDirectory:0];

        v6 = v38;
        if ((v29 & 1) == 0)
        {
          v33 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            satDetectionTdSr = self->_satDetectionTdSr;
            v35 = v33;
            v36 = [(VTTextDependentSpeakerRecognizer *)satDetectionTdSr tdSATModelFilePath];
            *buf = 138543362;
            v41 = v36;
            _os_log_impl(&dword_223A31000, v35, OS_LOG_TYPE_DEFAULT, "Needs Retraining: psrTD SAT file doesnt exist at: %{public}@", buf, 0xCu);
          }

          goto LABEL_9;
        }

        v30 = [(VTTextDependentSpeakerRecognizer *)self->_satDetectionTdSr getSATVectorCount];
        v31 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          v41 = v30;
          _os_log_impl(&dword_223A31000, v31, OS_LOG_TYPE_DEFAULT, "numPsrTdSpeakerVectors: %{public}ld", buf, 0xCu);
          v31 = VTLogContextFacilityVoiceTrigger;
        }

        if (v30 != v27)
        {
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_9;
          }

          *buf = 0;
          v20 = "Needs Retraining: (TD-PSR)SpeakerVectors MISMATCH! numPsrTdSpeakerVectors != numSATSpeakerVectors";
          v21 = v31;
          v22 = 2;
          goto LABEL_8;
        }
      }

      else
      {
        v31 = VTLogContextFacilityVoiceTrigger;
        v6 = v38;
      }

      v23 = 0;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_223A31000, v31, OS_LOG_TYPE_DEFAULT, "VT does not need retraining: ", buf, 2u);
        v23 = 0;
      }

      goto LABEL_33;
    }

    v19 = VTLogContextFacilityVoiceTrigger;
    if (!os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      v23 = 1;
LABEL_33:

      goto LABEL_34;
    }

    *buf = 138543362;
    v41 = v11;
    v20 = "Needs Retraining: phsSATFile doesnt exist at: %{public}@.";
    v21 = v19;
    v22 = 12;
LABEL_8:
    _os_log_impl(&dword_223A31000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
    goto LABEL_9;
  }

  v24 = VTLogContextFacilityVoiceTrigger;
  v23 = 0;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v41 = v9;
    v42 = 1026;
    LODWORD(v43) = v10;
    _os_log_impl(&dword_223A31000, v24, OS_LOG_TYPE_DEFAULT, "Cannot find SAT Audio dir at %{public}@: isDir: %{public}d", buf, 0x12u);
    v23 = 0;
  }

LABEL_34:

  return v23;
}

- (int64_t)_getNumberOfAudioFilesInDirectory:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v17[0] = *MEMORY[0x277CBE8E8];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v14 = 0;
    v7 = [v5 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v6 options:0 error:&v14];
    v8 = v14;

    if (v8)
    {
      v9 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = v4;
        *&buf[12] = 2114;
        *&buf[14] = v8;
        _os_log_error_impl(&dword_223A31000, v9, OS_LOG_TYPE_ERROR, "Error reading contents of audioDir: %{public}@, err: %{public}@", buf, 0x16u);
      }

      v10 = -1;
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v16 = 0;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __53__VTPhraseSpotter__getNumberOfAudioFilesInDirectory___block_invoke;
      v13[3] = &unk_2784ED1E0;
      v13[4] = buf;
      [v7 enumerateObjectsUsingBlock:v13];
      v10 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v11 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_223A31000, v11, OS_LOG_TYPE_ERROR, "ERR: audioDir is nil - Bailing out", buf, 2u);
    }

    v10 = -1;
  }

  return v10;
}

void __53__VTPhraseSpotter__getNumberOfAudioFilesInDirectory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pathExtension];
  v4 = [v3 isEqualToString:@"wav"];

  if (v4)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (BOOL)_configureWithConfig:(id)a3 resourcePath:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v15 = "[VTPhraseSpotter _configureWithConfig:resourcePath:]";
    v16 = 2114;
    v17 = v5;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "::: %{public}s config: %{public}@; resources: %{public}@", buf, 0x20u);
  }

  kdebug_trace();
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 fileExistsAtPath:v5];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
    v11 = v10;
    if (v10)
    {
      [v10 MD5HashString];
      objc_claimAutoreleasedReturnValue();
    }
  }

  nd_initlog(ndapilog_callback);
  nd_logcontrol("NLogLevelVerbose", v12);
}

- (void)_handleAssetChangeForLanguageCode:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  assetChangedQueue = self->_assetChangedQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__VTPhraseSpotter__handleAssetChangeForLanguageCode___block_invoke;
  v7[3] = &unk_2784ED190;
  v8 = v4;
  v9 = self;
  v6 = v4;
  objc_copyWeak(&v10, &location);
  dispatch_async(assetChangedQueue, v7);
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __53__VTPhraseSpotter__handleAssetChangeForLanguageCode___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v3 + 168);
  if (v2)
  {
    if ([v2 isEqualToString:v4])
    {
      goto LABEL_7;
    }

    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v7 = *(v5 + 168);
    *(v5 + 168) = v6;
  }

  else
  {
    if (v4)
    {
      goto LABEL_7;
    }

    v7 = 0;
    *(v3 + 168) = @"en-US";
  }

LABEL_7:
  v8 = +[VTAssetManager sharedInstance];
  v9 = [v8 assetForLanguage:*(*(a1 + 40) + 168)];

  if (!v9)
  {
    goto LABEL_36;
  }

  v10 = [v9 path];
  v11 = [v10 stringByAppendingPathComponent:@"config.txt"];
  if (+[VTUtilities VTIsHorseman])
  {
    v12 = [v10 stringByAppendingPathComponent:@"config_marsh.txt"];
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [v13 fileExistsAtPath:v12 isDirectory:0];

    v15 = VTLogContextFacilityVoiceTrigger;
    v16 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        *buf = 138543362;
        v57 = v12;
        v17 = "::: using marsh config: %{public}@";
LABEL_16:
        _os_log_impl(&dword_223A31000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    if (!v16)
    {
      goto LABEL_23;
    }

    *buf = 138543362;
    v57 = v12;
    v21 = "::: marsh config doesn't exist: %{public}@, defaulting to normal config";
LABEL_22:
    _os_log_impl(&dword_223A31000, v15, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
    goto LABEL_23;
  }

  if (!+[VTUtilities isAlwaysOn])
  {
    goto LABEL_24;
  }

  v12 = [v10 stringByAppendingPathComponent:@"config_quasar.txt"];
  v18 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = [v18 fileExistsAtPath:v12 isDirectory:0];

  v15 = VTLogContextFacilityVoiceTrigger;
  v20 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_23;
    }

    *buf = 138543362;
    v57 = v12;
    v21 = "::: quasar config doesn't exist: %{public}@, defaulting to normal config";
    goto LABEL_22;
  }

  if (v20)
  {
    *buf = 138543362;
    v57 = v12;
    v17 = "::: using quasar config: %{public}@";
    goto LABEL_16;
  }

LABEL_17:
  v12 = v12;

  v11 = v12;
LABEL_23:

LABEL_24:
  if (v10 && ([v9 isAvailableLocally] & 1) != 0)
  {
    if ([*(*(a1 + 40) + 176) isEqualToString:v11])
    {
      v22 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(*(a1 + 40) + 168);
        *buf = 138543362;
        v57 = v23;
        _os_log_impl(&dword_223A31000, v22, OS_LOG_TYPE_DEFAULT, "resource path for %{public}@ has not been updated.", buf, 0xCu);
      }

      if ([VTVoiceProfileMigration checkIfMigrationNecessaryForCompatibilityVersion:1 forLanguageCode:*(*(a1 + 40) + 168)])
      {
        v24 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_223A31000, v24, OS_LOG_TYPE_DEFAULT, "Performing Migration of Voice Profile...", buf, 2u);
        }

        [VTVoiceProfileMigration migrateVoiceProfileToVersion:1 forLanguageCode:*(*(a1 + 40) + 168)];
      }
    }

    else
    {
      v26 = [v9 languages];
      v27 = [v26 containsObject:*(*(a1 + 40) + 168)];

      v28 = VTLogContextFacilityVoiceTrigger;
      v29 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        if (v29)
        {
          *buf = 138543362;
          v57 = v10;
          _os_log_impl(&dword_223A31000, v28, OS_LOG_TYPE_DEFAULT, "::: resource path:  %{public}@", buf, 0xCu);
        }

        v30 = [v9 compatibilityVersion];
        v31 = [v30 stringValue];
        v32 = *(a1 + 40);
        v33 = *(v32 + 200);
        *(v32 + 200) = v31;

        v34 = *(a1 + 40);
        if (*(v34 + 200))
        {
          v35 = [v9 version];

          v34 = *(a1 + 40);
          if (v35)
          {
            v36 = *(v34 + 200);
            v37 = [v9 version];
            v38 = [v37 stringValue];
            v39 = [v36 stringByAppendingFormat:@".%@", v38];
            v40 = *(a1 + 40);
            v41 = *(v40 + 200);
            *(v40 + 200) = v39;

            v34 = *(a1 + 40);
          }
        }

        if (*(v34 + 200))
        {
          v42 = [v9 footprint];

          if (v42)
          {
            v43 = *(*(a1 + 40) + 200);
            v44 = [v9 footprint];
            v45 = [v43 stringByAppendingFormat:@".%@", v44];
            v46 = *(a1 + 40);
            v47 = *(v46 + 200);
            *(v46 + 200) = v45;
          }
        }

        v48 = +[VTAggregator sharedAggregator];
        [v48 setAssetString:*(*(a1 + 40) + 200)];

        objc_storeStrong((*(a1 + 40) + 192), *(*(a1 + 40) + 168));
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        [WeakRetained _configureWithConfig:v11 resourcePath:v10];

        v50 = *(a1 + 40);
        v51 = *(v50 + 448);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __53__VTPhraseSpotter__handleAssetChangeForLanguageCode___block_invoke_670;
        block[3] = &unk_2784ECFF8;
        block[4] = v50;
        dispatch_async(v51, block);
      }

      else if (v29)
      {
        v52 = v28;
        v53 = [v9 languages];
        v54 = *(*(a1 + 40) + 168);
        *buf = 138543618;
        v57 = v53;
        v58 = 2114;
        v59 = v54;
        _os_log_impl(&dword_223A31000, v52, OS_LOG_TYPE_DEFAULT, "::: new resource for locales %{public}@ is not applicable to the current locale(%{public}@)", buf, 0x16u);
      }
    }
  }

  else
  {
    v25 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v25, OS_LOG_TYPE_DEFAULT, "::: resource path NOT found, waiting to be notified...", buf, 2u);
    }
  }

LABEL_36:
}

uint64_t __53__VTPhraseSpotter__handleAssetChangeForLanguageCode___block_invoke_670(uint64_t result)
{
  v1 = *(*(result + 32) + 504);
  if (v1)
  {
    v2 = result;
    v3 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "VTPhraseSpotter is re-configured with new assets, calling back VTSM for model update", v4, 2u);
      v1 = *(*(v2 + 32) + 504);
    }

    return (*(v1 + 16))(v1);
  }

  return result;
}

- (void)_notifyAssetChangedCallback
{
  assetChangedCallback = self->_assetChangedCallback;
  if (assetChangedCallback)
  {
    assetChangedCallback[2]();
  }
}

- (void)_firstUnlockedAndSpringBoardStarted
{
  objc_initWeak(&location, self);
  ndetectQueue = self->_ndetectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__VTPhraseSpotter__firstUnlockedAndSpringBoardStarted__block_invoke;
  block[3] = &unk_2784ED168;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(ndetectQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __54__VTPhraseSpotter__firstUnlockedAndSpringBoardStarted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAssetChangeForLanguageCode:*(*(a1 + 32) + 168)];
}

- (void)requestSecondChance
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "Received forrced second chance event creation", v4, 2u);
  }

  [(VTPhraseSpotter *)self looseTriggerThreshold];
}

- (void)requestFoceTrigger
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "Received forrced trigger event creation", buf, 2u);
  }

  ndetectQueue = self->_ndetectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__VTPhraseSpotter_requestFoceTrigger__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(ndetectQueue, block);
}

void __37__VTPhraseSpotter_requestFoceTrigger__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  [v2 systemUptime];
  v4 = v3;

  v5 = *(*(a1 + 32) + 624);
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  [v5 addObject:v6];
}

- (void)didReceiveSiriSessionCancellation:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "::: Received siriSessionCancel Event with reason: %{public}@", buf, 0xCu);
  }

  ndetectQueue = self->_ndetectQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__VTPhraseSpotter_didReceiveSiriSessionCancellation___block_invoke;
  v8[3] = &unk_2784ED118;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(ndetectQueue, v8);
}

void __53__VTPhraseSpotter_didReceiveSiriSessionCancellation___block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 256) == 1)
  {
    v3 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "::: Removing the last implicit utterance", buf, 2u);
      v2 = *(a1 + 32);
    }

    [*(v2 + 16) deleteVectorIndex:0xFFFFFFFFLL];
    [*(*(a1 + 32) + 584) deleteVectorAtIndex:0xFFFFFFFFLL];
    *(*(a1 + 32) + 256) = 0;
    if (*(*(a1 + 32) + 264))
    {
      v4 = [MEMORY[0x277CCAA00] defaultManager];
      v5 = [v4 fileExistsAtPath:*(*(a1 + 32) + 264)];

      if (v5)
      {
        v6 = [MEMORY[0x277CCAA00] defaultManager];
        [v6 removeItemAtPath:*(*(a1 + 32) + 264) error:0];
      }

      v7 = [*(*(a1 + 32) + 264) stringByDeletingPathExtension];
      v8 = [v7 stringByAppendingPathExtension:@"json"];

      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [v9 fileExistsAtPath:v8];

      if (v10)
      {
        v11 = [MEMORY[0x277CCAA00] defaultManager];
        [v11 removeItemAtPath:v8 error:0];
      }

      v12 = *(a1 + 32);
      v13 = *(v12 + 264);
      *(v12 + 264) = 0;

      if (*(*(a1 + 32) + 264))
      {
        v14 = [MEMORY[0x277CCAA00] defaultManager];
        v15 = [v14 fileExistsAtPath:*(*(a1 + 32) + 264)];

        if (v15)
        {
          v16 = [MEMORY[0x277CCAA00] defaultManager];
          [v16 removeItemAtPath:*(*(a1 + 32) + 264) error:0];

          v17 = *(a1 + 32);
          v18 = *(v17 + 264);
          *(v17 + 264) = 0;
        }
      }
    }
  }

  if (*(*(a1 + 32) + 136) == 1)
  {
    v19 = @"???";
    if (*(a1 + 40))
    {
      v19 = *(a1 + 40);
    }

    v31 = @"siriCancelReason";
    v32[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v28 = 0;
    v21 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v20 options:1 error:&v28];
    v22 = v28;
    v23 = VTMakeTimestampedAudioLogFilenameWithPrefixAndSuffix(&stru_28370C9A8, @"-cancel.json");
    if (v22)
    {
      v24 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        v26 = [v22 localizedDescription];
        *buf = 138543362;
        v30 = v26;
        _os_log_impl(&dword_223A31000, v25, OS_LOG_TYPE_DEFAULT, "::: Error writing out Siri cancellation meta: %{public}@", buf, 0xCu);
      }
    }

    [v21 writeToFile:v23 atomically:0];
    v27 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = v23;
      _os_log_impl(&dword_223A31000, v27, OS_LOG_TYPE_DEFAULT, "::: Siri session cancellation data written into %{public}@", buf, 0xCu);
    }
  }
}

- (void)setBypass:(BOOL)a3
{
  ndetectQueue = self->_ndetectQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__VTPhraseSpotter_setBypass___block_invoke;
  v4[3] = &unk_2784ED0F0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(ndetectQueue, v4);
}

- (void)VTLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4
{
  v5 = a4;
  notify_post("com.apple.corespeech.voicetriggerassetchange");
  v7 = v5;
  v6 = +[VTAggregator sharedAggregator];
  [v6 setLanguageCode:v7];

  [(VTPhraseSpotter *)self _handleAssetChangeForLanguageCode:v7];
}

- (id)_capturePathWithPrefix:(id)a3 eventKind:(unsigned __int8)a4
{
  if ((a4 - 1) > 3u)
  {
    v6 = @"-triggered.wav";
  }

  else
  {
    v6 = off_2784ED228[(a4 - 1)];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", a3, v6, v4, v5];
}

- (unint64_t)getAdjustedDeviceStartTime:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(VTPhraseSpotter *)self _applyExtraTime:0.5 to:?];
  v5 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134349568;
    v8 = 0x3FE0000000000000;
    v9 = 2050;
    v10 = a3;
    v11 = 2050;
    v12 = v4;
    _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "Start audio device %{public}.1fs earlier -- received trigger time %{public}lld and adjusted device start time: %{public}lld", &v7, 0x20u);
  }

  return v4;
}

- (unint64_t)_addExtraTime:(double)a3 to:(unint64_t)a4
{
  info = 0;
  mach_timebase_info(&info);
  if (info.numer)
  {
    LODWORD(v6) = info.denom;
    v7 = (v6 / info.numer * 1000000000.0 * a3);
  }

  else
  {
    v7 = 0;
  }

  return v7 + a4;
}

- (unint64_t)_applyExtraTime:(double)a3 to:(unint64_t)a4
{
  info = 0;
  mach_timebase_info(&info);
  if (info.numer)
  {
    LODWORD(v6) = info.denom;
    v7 = (v6 / info.numer * 1000000000.0 * a3);
  }

  else
  {
    v7 = 0;
  }

  v8 = a4 >= v7;
  v9 = a4 - v7;
  if (v8)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

- (id)getCorealisRTModel
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_languageCode)
  {
    languageCode = self->_languageCode;
  }

  else
  {
    languageCode = @"xx-XX";
  }

  v4 = [@"RT Model for " stringByAppendingString:languageCode];
  v5 = [v4 stringByAppendingString:@" from asset "];

  v6 = v5;
  resourcePath = self->_resourcePath;
  if (!resourcePath || !self->_configPath)
  {
    goto LABEL_18;
  }

  v8 = [(NSString *)resourcePath stringByAppendingPathComponent:@"config_rt.txt"];
  if (!+[VTUtilities isAlwaysOn])
  {
    goto LABEL_10;
  }

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 fileExistsAtPath:v8 isDirectory:0];

  if ((v10 & 1) == 0)
  {
    v11 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      configPath = self->_configPath;
      *buf = 138543618;
      v29 = v8;
      v30 = 2114;
      v31 = configPath;
      _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "RT specific configuration %{public}@ does not exist, defaulting to unified configuration %{public}@", buf, 0x16u);
    }

LABEL_10:
    v13 = self->_configPath;

    v8 = v13;
  }

  v14 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v8;
    _os_log_impl(&dword_223A31000, v14, OS_LOG_TYPE_DEFAULT, "Creating RT blob using: %{public}@", buf, 0xCu);
  }

  v15 = [VTBlobBuilder getBlobWithConfigFilename:v8 rootDirectory:self->_resourcePath];
  if (v15)
  {
    v16 = v15;
    v17 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v17, OS_LOG_TYPE_DEFAULT, "CorealisRT model creation done successfully", buf, 2u);
    }

    v18 = [VTUtilities getAssetHashFromConfigPath:v8];
    v19 = [v6 stringByAppendingString:v18];

    goto LABEL_24;
  }

LABEL_18:
  v20 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v20, OS_LOG_TYPE_DEFAULT, "Defaulting to en_US CorealisRT model", buf, 2u);
  }

  v21 = +[VTBlobBuilder getDefaultBlob];
  if (!v21)
  {
    v23 = 0;
    v19 = v6;
    goto LABEL_28;
  }

  v16 = v21;
  v22 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v22, OS_LOG_TYPE_DEFAULT, "Default CorealisRT model creation done successfully", buf, 2u);
  }

  v19 = [v6 stringByAppendingString:@"default config"];
  v8 = v6;
LABEL_24:

  v26[0] = @"CorealisRTModel";
  v26[1] = @"CorealisRTModelVersion";
  v27[0] = v16;
  v27[1] = v19;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v24 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v19;
    _os_log_impl(&dword_223A31000, v24, OS_LOG_TYPE_DEFAULT, "RT Model queried - %{public}@", buf, 0xCu);
  }

LABEL_28:

  return v23;
}

- (void)_logMetaData:(id)a3
{
  v51[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 copy];
    lastVoiceTriggerEventInfo = self->_lastVoiceTriggerEventInfo;
    self->_lastVoiceTriggerEventInfo = v6;

    v8 = [(VTPhraseSpotter *)self _createVTEventInfoString:v5];
    v9 = [v5 objectForKeyedSubscript:@"isTriggerEvent"];
    v10 = [v9 BOOLValue];

    if (self->_audioLoggingEnabled)
    {
      v36 = [v5 objectForKey:@"captureFilePath"];
      v11 = [v5 objectForKey:@"triggerStartTime"];
      [v11 doubleValue];
      v13 = v12;

      v14 = [v5 objectForKey:@"triggerEndTime"];
      [v14 doubleValue];
      v16 = v15;

      v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v5];
      v50[0] = @"totalSamplesAtTriggerEnd";
      v35 = v10;
      [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_samplecountAtLastTriggerEnd];
      v18 = v37 = v8;
      v51[0] = v18;
      v50[1] = @"totalSamplesAtTriggerStart";
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_samplecountAtLastTriggerStart];
      v51[1] = v19;
      v50[2] = @"totalSamplesAtEndOfCapture";
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_samplecount];
      v21 = v20;
      configPath = self->_configPath;
      if (!configPath)
      {
        configPath = @"n/a";
      }

      v51[2] = v20;
      v51[3] = configPath;
      v50[3] = @"configPath";
      v50[4] = @"triggerDuration";
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:v16 - v13];
      v51[4] = v23;
      v50[5] = @"productVersion";
      v24 = +[VTUtilities deviceProductVersion];
      v51[5] = v24;
      v50[6] = @"buildVersion";
      v25 = MGCopyAnswer();
      v51[6] = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:7];
      [v17 addEntriesFromDictionary:v26];

      v8 = v37;
      loggingQueue = self->_loggingQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__VTPhraseSpotter__logMetaData___block_invoke;
      block[3] = &unk_2784ED140;
      v39 = v36;
      v40 = v17;
      v43 = v35;
      v41 = v5;
      v42 = v37;
      v28 = v17;
      v29 = v36;
      dispatch_async(loggingQueue, block);
    }

    else
    {
      v30 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        if (v10)
        {
          v31 = @"Trigger Event";
        }

        else
        {
          v31 = @"Nearly Triggered Event";
        }

        v32 = v30;
        v33 = [v5 objectForKeyedSubscript:@"triggerScore"];
        [v33 doubleValue];
        *buf = 138543874;
        v45 = v31;
        v46 = 2050;
        v47 = v34;
        v48 = 2114;
        v49 = v8;
        _os_log_impl(&dword_223A31000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ [score %{public}7.5f]: %{public}@", buf, 0x20u);
      }
    }
  }
}

void __32__VTPhraseSpotter__logMetaData___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) stringByReplacingOccurrencesOfString:@".wav" withString:@".json" options:1 range:{objc_msgSend(*(a1 + 32), "length") - 4, 4}];
  v3 = *(a1 + 40);
  v15 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:1 error:&v15];
  v5 = v15;
  [v4 writeToFile:v2 atomically:0];

  v6 = VTLogContextFacilityVoiceTrigger;
  if (v5 && os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "::: Error writing out metadata: %{public}@", buf, 0xCu);

    v6 = VTLogContextFacilityVoiceTrigger;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 64))
    {
      v9 = @"Trigger Event";
    }

    else
    {
      v9 = @"Nearly Triggered Event";
    }

    v10 = *(a1 + 48);
    v11 = v6;
    v12 = [v10 objectForKeyedSubscript:@"triggerScore"];
    [v12 doubleValue];
    v13 = *(a1 + 56);
    *buf = 138543874;
    v17 = v9;
    v18 = 2050;
    v19 = v14;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ [score %{public}7.5f]: %{public}@", buf, 0x20u);
  }
}

- (id)_createVTEventInfoString:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (_createVTEventInfoString__onceToken != -1)
  {
    dispatch_once(&_createVTEventInfoString__onceToken, &__block_literal_global_574);
  }

  v4 = [MEMORY[0x277CCAB68] stringWithUTF8String:"\n"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = _createVTEventInfoString__printingWhiteList;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];

        if (v11)
        {
          v12 = MEMORY[0x277CCACA8];
          v13 = [v3 objectForKey:v10];
          v14 = [v12 stringWithFormat:@"\t%@: %@\n", v10, v13, v16];
          [v4 appendString:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

void __44__VTPhraseSpotter__createVTEventInfoString___block_invoke()
{
  v2[29] = *MEMORY[0x277D85DE8];
  v2[0] = @"configVersion";
  v2[1] = @"languageCode";
  v2[2] = @"isSecondChance";
  v2[3] = @"triggerScore";
  v2[4] = @"effectiveThreshold";
  v2[5] = @"threshold";
  v2[6] = @"firstPassScore";
  v2[7] = @"recognizerScore";
  v2[8] = @"recognizerThresholdOffset";
  v2[9] = @"recognizerWaitTime";
  v2[10] = @"recognizerScoreScaleFactor";
  v2[11] = @"tdSpeakerRecognizerScore";
  v2[12] = @"tdSpeakerRecognizerCombinedScore";
  v2[13] = @"tdSpeakerRecognizerCombinedThreshold";
  v2[14] = @"tdSpeakerRecognizerCombinationWeight";
  v2[15] = @"satTriggered";
  v2[16] = @"satScore";
  v2[17] = @"satThreshold";
  v2[18] = @"satNumTrainingUtts";
  v2[19] = @"earlyDetectFiredTime";
  v2[20] = @"triggerStartTime";
  v2[21] = @"triggerEndTime";
  v2[22] = @"triggerFiredTime";
  v2[23] = @"triggerFireSeconds";
  v2[24] = @"extraSamplesAtStart";
  v2[25] = @"onBatteryPower";
  v2[26] = @"uptime";
  v2[27] = @"downtime";
  v2[28] = @"configDataHash";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:29];
  v1 = _createVTEventInfoString__printingWhiteList;
  _createVTEventInfoString__printingWhiteList = v0;
}

- (void)_logPrepareProperty:(id)a3
{
  v32[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && self->_audioLoggingEnabled)
  {
    v6 = [v4 objectForKeyedSubscript:@"AOPVoiceTriggerData"];
    if (v6)
    {
      v7 = [v5 objectForKeyedSubscript:@"currentHostTime"];
      if (v7)
      {
        v8 = v7;
        v9 = [v6 objectForKeyedSubscript:@"trigger-time"];

        if (v9)
        {
          v10 = [v5 objectForKeyedSubscript:@"currentHostTime"];
          v11 = [v10 longLongValue];

          v12 = [v6 objectForKeyedSubscript:@"trigger-time"];
          v13 = [v12 longLongValue];

          v31[0] = @"trigger-woke-ap";
          v15 = [v6 objectForKeyedSubscript:?];
          v17 = v15;
          v18 = MEMORY[0x277CBEC28];
          if (v15)
          {
            v18 = v15;
          }

          v32[0] = v18;
          v31[1] = @"trigger-start-time";
          v14 = (v13 - v11) / 24000.0;
          *&v16 = v14;
          v19 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
          v32[1] = v19;
          v31[2] = @"trigger-time";
          v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v13];
          v32[2] = v20;
          v31[3] = @"currentHostTime";
          v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
          v32[3] = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];

          v23 = VTMakeTimestampedAudioLogFilenameWithPrefixAndSuffix(&stru_28370C9A8, &stru_28370C9A8);
          v24 = [(VTPhraseSpotter *)self _capturePathWithPrefix:v23 eventKind:3];
          loggingQueue = self->_loggingQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __39__VTPhraseSpotter__logPrepareProperty___block_invoke;
          block[3] = &unk_2784ED118;
          v29 = v24;
          v30 = v22;
          v26 = v22;
          v27 = v24;
          dispatch_async(loggingQueue, block);
        }
      }
    }
  }
}

void __39__VTPhraseSpotter__logPrepareProperty___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) stringByReplacingOccurrencesOfString:@".wav" withString:@".json"];
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:1 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v5 localizedDescription];
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "::: Error writing out prepare property: %{public}@", buf, 0xCu);
    }
  }

  [v4 writeToFile:v2 atomically:0];
}

- (void)_logCorruptAudio
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (self->_audioLoggingEnabled)
  {
    v3 = VTMakeTimestampedAudioLogFilenameWithPrefixAndSuffix(&stru_28370C9A8, &stru_28370C9A8);
    v4 = [(VTPhraseSpotter *)self _capturePathWithPrefix:v3 eventKind:4];
    v5 = [(VTCorruptDetector *)self->_corruptDetector getMaxZeroSampleCount];
    v6 = v5;
    v17[0] = @"num-zero-samples";
    v7 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    v17[1] = @"zero-in-seconds";
    v18[0] = v7;
    *&v8 = v6 / 16000.0;
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    v18[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

    loggingQueue = self->_loggingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__VTPhraseSpotter__logCorruptAudio__block_invoke;
    block[3] = &unk_2784ED118;
    v15 = v4;
    v16 = v10;
    v12 = v10;
    v13 = v4;
    dispatch_async(loggingQueue, block);
  }
}

void __35__VTPhraseSpotter__logCorruptAudio__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) stringByReplacingOccurrencesOfString:@".wav" withString:@".json"];
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:1 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v5 localizedDescription];
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "::: Error writing out prepare property: %{public}@", buf, 0xCu);
    }
  }

  [v4 writeToFile:v2 atomically:0];
}

- (id)_analyzeMakeResult:(const _ndresult *)a3 eventKind:(unsigned __int8)a4 satScore:(double)a5
{
  v120[29] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = 0;
    goto LABEL_60;
  }

  v6 = a4;
  +[VTUtilities systemUpTime];
  v10 = v9;
  var1 = a3->var1;
  samplerate = self->_samplerate;
  v13 = ((a3->var0 - var1) / samplerate);
  v14 = ((a3->var0 - a3->var2) / samplerate);
  if (self->_audioLoggingEnabled)
  {
    v116 = VTMakeTimestampedAudioLogFilenameWithPrefixAndSuffix(&stru_28370C9A8, &stru_28370C9A8);
    v15 = [VTPhraseSpotter _capturePathWithPrefix:"_capturePathWithPrefix:eventKind:" eventKind:?];
    var1 = a3->var1;
  }

  else
  {
    v15 = 0;
    v116 = 0;
  }

  v17 = v10 - v13;
  v18 = v10 - v14;
  self->_samplecountAtRealTriggerStart = var1;
  extraSamplesAtStart = self->_extraSamplesAtStart;
  v20 = a3->var1;
  if (extraSamplesAtStart >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = extraSamplesAtStart;
  }

  v22 = v20 >= extraSamplesAtStart;
  v23 = v20 - extraSamplesAtStart;
  if (!v22)
  {
    v23 = 0;
  }

  self->_samplecountAtLastTriggerStart = v23;
  self->_samplecountAtLastTriggerEnd = a3->var2;
  self->_lastSupervecScore = a5;
  v24 = (self->_samplecount - v23) / 16000.0;
  v115 = v15;
  if (v6 || self->_numFramesFromPreTrigger)
  {
    v113 = 0;
    v114 = 0;
  }

  else
  {
    v85 = +[VTAggregator sharedAggregator];
    v117 = 0;
    v118 = 0;
    [v85 cumulativeUptime:&v118 cumulativeDowntime:&v117 reset:1];
    v86 = v118;
    v87 = v117;

    v114 = v86;
    [v86 floatValue];
    self->_lastUptime = v88;
    v113 = v87;
    [v87 floatValue];
    self->_lastDowntime = v89;
  }

  v110 = v6;
  v25 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:3 forLanguageCode:self->_languageCode];
  v26 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:2 forLanguageCode:self->_languageCode];
  triggerPhrases = self->_triggerPhrases;
  if (!triggerPhrases)
  {
    triggerPhrases = MEMORY[0x277CBEBF8];
  }

  v120[0] = triggerPhrases;
  v119[0] = @"triggerPhrases";
  v119[1] = @"triggerScore";
  v109 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastScore];
  v120[1] = v109;
  v119[2] = @"earlyDetectFiredTime";
  v108 = [MEMORY[0x277CCABB0] numberWithDouble:self->_earlyDetectTime];
  v120[2] = v108;
  v119[3] = @"triggerStartTime";
  v107 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  v120[3] = v107;
  v119[4] = @"triggerEndTime";
  v106 = [MEMORY[0x277CCABB0] numberWithDouble:v10 - v14];
  v120[4] = v106;
  v119[5] = @"triggerFiredTime";
  v105 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v120[5] = v105;
  v119[6] = @"triggerFireSeconds";
  v104 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
  v120[6] = v104;
  v119[7] = @"isTriggerEvent";
  v90 = v6 == 0;
  v103 = [MEMORY[0x277CCABB0] numberWithInt:v6 == 0];
  v120[7] = v103;
  v119[8] = @"numFramesFromPreTrigger";
  v102 = [MEMORY[0x277CCABB0] numberWithInt:self->_numFramesFromPreTrigger];
  v120[8] = v102;
  v119[9] = @"isMaximized";
  v101 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMaximized];
  v120[9] = v101;
  v119[10] = @"extraSamplesAtStart";
  v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v21];
  v120[10] = v100;
  v119[11] = @"isSecondChance";
  v99 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSecondChanceEffective];
  v120[11] = v99;
  v119[12] = @"threshold";
  v98 = [MEMORY[0x277CCABB0] numberWithDouble:self->_threshold];
  v120[12] = v98;
  v119[13] = @"effectiveThreshold";
  v97 = [MEMORY[0x277CCABB0] numberWithDouble:self->_effectiveThreshold];
  v120[13] = v97;
  v119[14] = @"hardwareSamplerate";
  v96 = [MEMORY[0x277CCABB0] numberWithDouble:self->_hardwareSampleRate];
  v120[14] = v96;
  v119[15] = @"uptime";
  v95 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastUptime];
  v120[15] = v95;
  v119[16] = @"downtime";
  v94 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastDowntime];
  v120[16] = v94;
  v119[17] = @"didWakeAP";
  v93 = [MEMORY[0x277CCABB0] numberWithBool:self->_didWakeAP];
  v120[17] = v93;
  v119[18] = @"onBatteryPower";
  v28 = MEMORY[0x277CCABB0];
  v92 = +[VTBatteryMonitor sharedInstance];
  v91 = [v28 numberWithInt:{objc_msgSend(v92, "batteryState") == 2}];
  v120[18] = v91;
  v119[19] = @"siriIsActiveOrOtherAssertion";
  v29 = MEMORY[0x277CCABB0];
  v30 = +[VTSiriAssertionMonitor sharedInstance];
  v31 = [v29 numberWithBool:{objc_msgSend(v30, "isEnabled")}];
  v32 = v31;
  configVersion = self->_configVersion;
  if (!configVersion)
  {
    configVersion = @"n/a";
  }

  v120[19] = v31;
  v120[20] = configVersion;
  v119[20] = @"configVersion";
  v119[21] = @"languageCode";
  languageCode = self->_languageCode;
  if (!languageCode)
  {
    languageCode = @"n/a";
  }

  v120[21] = languageCode;
  v119[22] = @"deviceHandHeld";
  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[VTPhraseSpotter _isDeviceHandheld](self, "_isDeviceHandheld")}];
  v36 = v35;
  configData = self->_configData;
  if (!configData)
  {
    configData = @"n/a";
  }

  v120[22] = v35;
  v120[23] = configData;
  v119[23] = @"configDataHash";
  v119[24] = @"biometricClue";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[VTPhraseSpotter _getBiometricMatchResult](self, "_getBiometricMatchResult")}];
  v120[24] = v38;
  v119[25] = @"numberOfHSPayloadUtterances";
  v112 = v25;
  v39 = [MEMORY[0x277CCABB0] numberWithInteger:{-[VTPhraseSpotter _getNumberOfAudioFilesInDirectory:](self, "_getNumberOfAudioFilesInDirectory:", v25)}];
  v120[25] = v39;
  v119[26] = @"numberOfPayloadUtterances";
  v111 = v26;
  v40 = [MEMORY[0x277CCABB0] numberWithInteger:{-[VTPhraseSpotter _getNumberOfAudioFilesInDirectory:](self, "_getNumberOfAudioFilesInDirectory:", v26)}];
  v120[26] = v40;
  v119[27] = @"lastConsecutivePHSRejects";
  v41 = [MEMORY[0x277CCABB0] numberWithDouble:self->_consecutivePHSRejects];
  v120[27] = v41;
  v119[28] = @"deltaTimeFromlastPHSReject";
  consecutivePHSRejects = self->_consecutivePHSRejects;
  if (consecutivePHSRejects == 0.0)
  {
    v45 = &unk_2837154A0;
  }

  else
  {
    v43 = MEMORY[0x277CCABB0];
    +[VTUtilities systemUpTime];
    v45 = [v43 numberWithDouble:v44 - self->_lastPHSRejectedTime];
  }

  v120[28] = v45;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:29];
  if (consecutivePHSRejects != 0.0)
  {
  }

  if (v115)
  {
    v47 = [v46 mutableCopy];
    [v47 setObject:v115 forKey:@"captureFilePath"];

    if (self->_audioBuffer)
    {
      v48 = [(VTPhraseSpotter *)self _sampleLengthFrom:self->_samplecountAtLastTriggerStart To:self->_samplecount];
      audioBuffer = self->_audioBuffer;
      v50 = [(VTAudioCircularBuffer *)audioBuffer sampleCount]- v48;
      v51 = [(VTAudioCircularBuffer *)self->_audioBuffer sampleCount];
      v52 = [MEMORY[0x277CBEBC0] URLWithString:v115];
      [(VTAudioCircularBuffer *)audioBuffer saveRecordingBufferFrom:v50 to:v51 toURL:v52];

      if (self->_isSecondPass)
      {
        [(VTTextDependentSpeakerRecognizer *)self->_satDetectionTdSr logWithAudioFilepath:v115];
      }
    }
  }

  else
  {
    v47 = v46;
  }

  if (self->_isRunningSATDetection)
  {
    v53 = [v47 mutableCopy];
    v54 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    [v53 setObject:v54 forKey:@"satScore"];

    v55 = [MEMORY[0x277CCABB0] numberWithDouble:self->_thresholdSAT];
    [v53 setObject:v55 forKey:@"satThreshold"];

    v56 = [MEMORY[0x277CCABB0] numberWithInt:v90];
    [v53 setObject:v56 forKey:@"satTriggered"];

    v57 = [MEMORY[0x277CCABB0] numberWithBool:self->_implicitlyTrained];
    [v53 setObject:v57 forKey:@"satBeingTrained"];

    v58 = [(VTAnalyzerNDAPI *)self->_analyzer getSATVectorCount];
    v59 = [MEMORY[0x277CCABB0] numberWithInt:v58];
    [v53 setObject:v59 forKey:@"satNumTrainingUtts"];

    if (!v110)
    {
      self->_lastPHSRejectedTime = -INFINITY;
      v61 = 0.0;
      goto LABEL_38;
    }

    if (v110 == 1)
    {
      +[VTUtilities systemUpTime];
      self->_lastPHSRejectedTime = v60;
      v61 = self->_consecutivePHSRejects + 1.0;
LABEL_38:
      self->_consecutivePHSRejects = v61;
    }
  }

  else
  {
    v53 = v47;
  }

  if (self->_isRunningRecognizer)
  {
    v62 = [v53 mutableCopy];
    v63 = [MEMORY[0x277CCABB0] numberWithDouble:self->_recognizerScore];
    [v62 setObject:v63 forKey:@"recognizerScore"];

    v64 = [MEMORY[0x277CCABB0] numberWithDouble:self->_recognizerThresholdOffset];
    [v62 setObject:v64 forKey:@"recognizerThresholdOffset"];

    v65 = [MEMORY[0x277CCABB0] numberWithDouble:self->_recognizerWaitTime];
    [v62 setObject:v65 forKey:@"recognizerWaitTime"];

    v66 = [MEMORY[0x277CCABB0] numberWithDouble:self->_recognizerScoreScaleFactor];
    [v62 setObject:v66 forKey:@"recognizerScoreScaleFactor"];

    v53 = v62;
  }

  if (self->_isSecondPass)
  {
    satDetectionTdSr = self->_satDetectionTdSr;
    if (satDetectionTdSr)
    {
      if ([(VTTextDependentSpeakerRecognizer *)satDetectionTdSr tdPsrCanProcessRequest])
      {
        [(VTTextDependentSpeakerRecognizer *)self->_satDetectionTdSr lastRequestSatScore];
        if (v68 > 0.0)
        {
          v69 = [v53 mutableCopy];
          v70 = MEMORY[0x277CCABB0];
          [(VTTextDependentSpeakerRecognizer *)self->_satDetectionTdSr lastRequestSatScore];
          v71 = [v70 numberWithFloat:?];
          [v69 setObject:v71 forKeyedSubscript:@"tdSpeakerRecognizerScore"];

          v72 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastCombinedTdSpeakerRecognizerSATScore];
          [v69 setObject:v72 forKeyedSubscript:@"tdSpeakerRecognizerCombinedScore"];

          v73 = [MEMORY[0x277CCABB0] numberWithDouble:self->_tdSpeakerRecognizerSATThreshold];
          [v69 setObject:v73 forKeyedSubscript:@"tdSpeakerRecognizerCombinedThreshold"];

          v74 = [MEMORY[0x277CCABB0] numberWithDouble:self->_tdSpeakerRecognizerCombinationWeight];
          [v69 setObject:v74 forKeyedSubscript:@"tdSpeakerRecognizerCombinationWeight"];

          v53 = v69;
        }
      }
    }
  }

  if (self->_injectedAudioFilePath)
  {
    v75 = [v53 mutableCopy];
    [v75 setObject:self->_injectedAudioFilePath forKeyedSubscript:@"injectedAudioFilePath"];

    v53 = v75;
  }

  v16 = [v53 mutableCopy];
  if (self->_earlyDetecFiredMachTime)
  {
    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [v16 setObject:v76 forKey:@"earlyDetectFiredMachTime"];
  }

  if (self->_triggerStartMachTime)
  {
    v77 = [(VTPhraseSpotter *)self _addExtraTime:v18 - v17 to:?];
    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_triggerStartMachTime];
    [v16 setObject:v78 forKey:@"triggerStartMachTime"];

    v79 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v77];
    [v16 setObject:v79 forKey:@"triggerEndMachTime"];
  }

  if (self->_triggerFireMachTime)
  {
    v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [v16 setObject:v80 forKey:@"triggerFireMachTime"];
  }

  if (!self->_triggerStartMachTime && self->_triggerFireMachTime)
  {
    v81 = [(VTPhraseSpotter *)self _applyExtraTime:v14 to:?];
    v82 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v81];
    [v16 setObject:v82 forKey:@"triggerEndMachTime"];
  }

  if (self->_isSecondPass)
  {
    v83 = [MEMORY[0x277CCABB0] numberWithDouble:self->_firstPassScore];
    [v16 setObject:v83 forKey:@"firstPassScore"];
  }

LABEL_60:

  return v16;
}

- (void)_analyzeResetWithOption:(unsigned __int8)a3
{
  ndetectQueue = self->_ndetectQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__VTPhraseSpotter__analyzeResetWithOption___block_invoke;
  v4[3] = &unk_2784ED0F0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(ndetectQueue, v4);
}

uint64_t __43__VTPhraseSpotter__analyzeResetWithOption___block_invoke(uint64_t a1)
{
  if (+[VTUtilities VTIsHorseman])
  {
    v2 = *(*(a1 + 32) + 16);
LABEL_5:
    result = [v2 reset];
    goto LABEL_6;
  }

  v2 = *(*(a1 + 32) + 16);
  if (*(a1 + 40) != 1)
  {
    goto LABEL_5;
  }

  result = [v2 resetBest];
LABEL_6:
  *(*(a1 + 32) + 416) = 0xFFF0000000000000;
  *(*(a1 + 32) + 52) = 0;
  *(*(a1 + 32) + 424) = 0;
  *(*(a1 + 32) + 432) = 0;
  *(*(a1 + 32) + 656) = 0;
  *(*(a1 + 32) + 56) = 0;
  *(*(a1 + 32) + 400) = 0;
  *(*(a1 + 32) + 408) = 0;
  *(*(a1 + 32) + 372) = 0;
  *(*(a1 + 32) + 376) = 0;
  return result;
}

- (double)_computeSATScore:(const _ndresult *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(VTAnalyzerNDAPI *)self->_analyzer getSuperVectorWithEndPoint:a3->var2];
  v5 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (v4 && v4->var0)
    {
      v6 = @"YES";
    }

    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_INFO, "::: getting supervector successful? %{public}@", &v10, 0xCu);
  }

  v7 = 0.0;
  if (v4)
  {
    v8 = [(VTAnalyzerNDAPI *)self->_analyzer analyzeSAT:v4->var0 size:v4->var1];
    if (v8)
    {
      return v8->var0;
    }
  }

  return v7;
}

- (id)_analyzeEvents:(const _ndresult *)a3
{
  v98 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_13;
  }

  samplecount = self->_samplecount;
  var0 = a3->var0;
  self->_samplecount = a3->var0;
  v7 = var0 - samplecount;
  if (var0 >= samplecount)
  {
    lastEventEnd = self->_lastEventEnd;
  }

  else
  {
    lastEventEnd = 0;
    self->_lastEventEnd = 0;
    self->_sampleCountAtFirstChance = 0;
  }

  nearMissLogPreDelayTimer = self->_nearMissLogPreDelayTimer;
  if (nearMissLogPreDelayTimer >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  self->_nearMissLogPreDelayTimer = nearMissLogPreDelayTimer - v10;
  if (a3->var1 < lastEventEnd)
  {
    v11 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "::: Not a new event. Must reset scores", buf, 2u);
    }

    v12 = self;
    v13 = 1;
LABEL_12:
    [(VTPhraseSpotter *)v12 _analyzeResetWithOption:v13];
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  var4 = a3->var4;
  if (self->_isRunningRecognizer)
  {
    [(VTTranscriber *)self->_transcriber triggerConfidence];
    self->_recognizerScore = v17;
    var4 = var4 + v17 * self->_recognizerScoreScaleFactor;
  }

  v18 = var4;
  self->_isMaximized = self->_lastScore >= v18;
  self->_lastScore = v18;
  if (self->_isSecondPass)
  {
    secondPassBestScore = self->_secondPassBestScore;
    if (secondPassBestScore < v18)
    {
      secondPassBestScore = v18;
    }

    self->_secondPassBestScore = secondPassBestScore;
  }

  heartbeatCounter = self->_heartbeatCounter;
  self->_heartbeatCounter = heartbeatCounter + 1;
  HIDWORD(v21) = -286331153 * heartbeatCounter + 143165576;
  LODWORD(v21) = HIDWORD(v21);
  if ((v21 >> 1) <= 0x8888888)
  {
    v22 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
    {
      v23 = self->_samplecount;
      *buf = 67240448;
      *v90 = v23;
      *&v90[4] = 2050;
      *&v90[6] = v18;
      _os_log_impl(&dword_223A31000, v22, OS_LOG_TYPE_INFO, "::: heartbeat: %{public}u score: %{public}f", buf, 0x12u);
    }
  }

  if (!self->_isRunningSATEnrollment && a3->var5 && !self->_earlyDetected)
  {
    self->_earlyDetected = 1;
    v24 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v24, OS_LOG_TYPE_DEFAULT, "::: Early detect.  Send a notification to preheat.", buf, 2u);
    }

    kdebug_trace();
    +[VTUtilities systemUpTime];
    self->_earlyDetectTime = v25;
    self->_earlyDetecFiredMachTime = mach_absolute_time();
    v26 = +[VTPreferences sharedPreferences];
    v27 = [v26 useSiriActivationSPIForiOS];

    if (v27)
    {
      AFSiriActivationBuiltInMicVoiceTriggerPrewarm();
    }

    else
    {
      notify_post("com.apple.voicetrigger.EarlyDetect");
      v28 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_223A31000, v28, OS_LOG_TYPE_DEFAULT, "Use legacy notification", buf, 2u);
      }
    }
  }

  var1 = a3->var1;
  sampleCountAtFirstChance = self->_sampleCountAtFirstChance;
  self->_isSecondChanceEffective = 0;
  if (var1 >= sampleCountAtFirstChance)
  {
    v33 = [(VTPhraseSpotter *)self _getSecondChanceEffective];
    threshold = self->_threshold;
    self->_effectiveThreshold = threshold;
    p_effectiveThreshold = &self->_effectiveThreshold;
    self->_isSecondChanceEffective = v33;
    if (v33)
    {
      if (threshold >= self->_thresholdSecondChance)
      {
        threshold = self->_thresholdSecondChance;
      }

      self->_effectiveThreshold = threshold;
    }
  }

  else
  {
    threshold = self->_threshold;
    self->_effectiveThreshold = threshold;
    p_effectiveThreshold = &self->_effectiveThreshold;
  }

  if (self->_isRunningRecognizer)
  {
    self->_effectiveThreshold = self->_recognizerThresholdOffset + threshold;
  }

  v34 = 128;
  if (self->_doSuperVectorSecondaryTest)
  {
    v34 = 336;
  }

  if (*(&self->super.isa + v34) <= v18)
  {
    if (self->_isSecondPass)
    {
      self->_secondPassAccepted = 1;
    }

    if (self->_isSuperVectorNeeded)
    {
      v41 = [(VTAnalyzerNDAPI *)self->_analyzer getSuperVectorWithEndPoint:a3->var2];
      v42 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
      {
        v43 = @"NO";
        if (v41 && v41->var0)
        {
          v43 = @"YES";
        }

        *buf = 138543362;
        *v90 = v43;
        _os_log_impl(&dword_223A31000, v42, OS_LOG_TYPE_INFO, "::: getting supervector successful? %{public}@", buf, 0xCu);
      }

      if (!v41 || !v41->var0 || !v41->var1)
      {
        v72 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_223A31000, v72, OS_LOG_TYPE_DEFAULT, "supervector is not available, cannot proceed", buf, 2u);
        }

        v12 = self;
        v13 = 0;
        goto LABEL_12;
      }

      if (self->_doSuperVectorSecondaryTest)
      {
        v44 = [VTAnalyzerNDAPI getScoreSuperVector:"getScoreSuperVector:size:" size:?];
        if (v44)
        {
          v45 = v44->var0;
          self->_lastSupervecScore = v45;
          v46 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134349056;
            *v90 = v45;
            _os_log_impl(&dword_223A31000, v46, OS_LOG_TYPE_DEFAULT, "::: supervector score is computed: %{public}.3f", buf, 0xCu);
          }

          if (*p_effectiveThreshold <= v45)
          {
            v50 = 1;
            goto LABEL_82;
          }

          if (var1 >= sampleCountAtFirstChance && self->_thresholdSecondChance < v45)
          {
            v47 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
            {
              v48 = a3->var1;
              var2 = a3->var2;
              *buf = 134349568;
              *v90 = v18;
              *&v90[8] = 1026;
              *&v90[10] = v48;
              *&v90[14] = 1026;
              *&v90[16] = var2;
              _os_log_impl(&dword_223A31000, v47, OS_LOG_TYPE_DEFAULT, "::: Detected a second chance trigger - 1st of 2 [score: %{public}5.3f]  start: %{public}d end: %{public}d", buf, 0x18u);
            }

            self->_sampleCountAtFirstChance = a3->var2;
            [(VTPhraseSpotter *)self _setSecondChance];
            [(VTPhraseSpotter *)self _storeFirstChanceAudio];
            [(VTPhraseSpotter *)self _createFirstChanceMeta:a3];
          }

          [(VTPhraseSpotter *)self _analyzeResetWithOption:0];
        }
      }
    }

    else
    {
      v41 = 0;
    }

    v50 = 0;
LABEL_82:
    self->_implicitlyTrained = 0;
    lastImplicitlyTrainedAudioFile = self->_lastImplicitlyTrainedAudioFile;
    self->_lastImplicitlyTrainedAudioFile = 0;

    v52 = 0.0;
    if (!self->_isRunningSATDetection || !self->_isMaximized || (thresholdSAT = self->_thresholdSAT, (v54 = [(VTAnalyzerNDAPI *)self->_analyzer analyzeSAT:v41->var0 size:v41->var1]) == 0))
    {
      v70 = 0;
      v71 = 0;
      goto LABEL_93;
    }

    v52 = v54->var0;
    self->_lastCombinedTdSpeakerRecognizerSATScore = v52;
    if (!self->_isSecondPass || (satDetectionTdSr = self->_satDetectionTdSr) == 0 || ![(VTTextDependentSpeakerRecognizer *)satDetectionTdSr tdPsrCanProcessRequest])
    {
      v58 = 0;
      v77 = v52;
LABEL_113:
      v78 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349568;
        *v90 = v52;
        *&v90[8] = 2050;
        *&v90[10] = v77;
        *&v90[18] = 2050;
        v91 = thresholdSAT;
        _os_log_impl(&dword_223A31000, v78, OS_LOG_TYPE_DEFAULT, ":::[SAT Result] SAT score: %{public}f, combinedScore=%{public}f, vs threshold %{public}f", buf, 0x20u);
      }

      if (v77 >= thresholdSAT)
      {
        ndetectQueue = self->_ndetectQueue;
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __34__VTPhraseSpotter__analyzeEvents___block_invoke_553;
        v88[3] = &unk_2784ED0C8;
        v88[4] = self;
        v88[5] = v58;
        dispatch_sync(ndetectQueue, v88);
        v70 = 0;
        v71 = 1;
      }

      else
      {
        v79 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349568;
          *v90 = v52;
          *&v90[8] = 2050;
          *&v90[10] = v77;
          *&v90[18] = 2050;
          v91 = thresholdSAT;
          _os_log_impl(&dword_223A31000, v79, OS_LOG_TYPE_DEFAULT, ":::[SAT Rejection] SAT rejected (SAT {satScore=[%{public}f], combinedScore=[%{public}f]} < threshold [%{public}f])", buf, 0x20u);
        }

        v71 = 0;
        v70 = 1;
      }

LABEL_93:
      if (self->_isRunningSATEnrollment)
      {
        if (self->_isMaximized)
        {
          if ([(VTAnalyzerNDAPI *)self->_analyzer analyzeSAT:v41->var0 size:v41->var1])
          {
            [(VTAnalyzerNDAPI *)self->_analyzer updateSAT];
          }

          goto LABEL_107;
        }

LABEL_120:
        v74 = 0;
LABEL_121:
        if ((v70 & self->_isRunningSATDetection) == 1)
        {
          v80 = [(VTPhraseSpotter *)self _analyzeMakeResult:a3 eventKind:1 satScore:v52];

          if (+[VTUtilities isInternalInstall])
          {
            v81 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_223A31000, v81, OS_LOG_TYPE_DEFAULT, "Sending PHS reject notification", buf, 2u);
            }

            notify_post("com.apple.voicetrigger.PHSReject");
          }

          [(VTPhraseSpotter *)self _logMetaData:v80];
          [(VTPhraseSpotter *)self _analyzeResetWithOption:0];
          v14 = v80;
          self->_lastEventEnd = a3->var2;
        }

        else
        {
          v14 = v74;
        }

        goto LABEL_14;
      }

      isRunningSATDetection = self->_isRunningSATDetection;
      if (self->_doSuperVectorSecondaryTest)
      {
        if (!self->_isRunningSATDetection)
        {
          v71 = v50;
        }

        if ((v50 | !isRunningSATDetection) != 1)
        {
          goto LABEL_120;
        }
      }

      else if (!isRunningSATDetection)
      {
        if (!self->_isMaximized)
        {
          goto LABEL_120;
        }

        goto LABEL_107;
      }

      if (!v71)
      {
        goto LABEL_120;
      }

LABEL_107:
      self->_triggerFireMachTime = mach_absolute_time();
      v74 = [(VTPhraseSpotter *)self _handleTriggerEvent:a3 num_new_samples:v7 satScore:v52];
      if (self->_isSecondPass && !self->_secondPassTriggered)
      {
        self->_secondPassTriggered = 1;
        v75 = +[VTAggregator sharedAggregator];
        [v75 logSecondPassResult:1];

        if (self->_secondPassAudioLoggingEnabled)
        {
          v76 = +[VTAudioFileLog sharedInstance];
          [v76 stopRecording];
        }
      }

      goto LABEL_121;
    }

    v56 = [MEMORY[0x277CBEAA8] date];
    v57 = dispatch_time(0, 300000000);
    v58 = dispatch_semaphore_wait(self->_satDetectionTdSrSemaphore, v57);
    v59 = [MEMORY[0x277CBEAA8] date];
    [v59 timeIntervalSinceDate:v56];
    v61 = v60 * 1000.0;
    v62 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v63 = self->_satDetectionTdSr;
      v64 = v62;
      [(VTTextDependentSpeakerRecognizer *)v63 lastRequestSatScore];
      tdSpeakerRecognizerCombinationWeight = self->_tdSpeakerRecognizerCombinationWeight;
      tdSpeakerRecognizerSATThreshold = self->_tdSpeakerRecognizerSATThreshold;
      *buf = 138544642;
      *v90 = v63;
      *&v90[8] = 2050;
      *&v90[10] = v58;
      *&v90[18] = 2050;
      v91 = v61;
      v92 = 2050;
      v93 = v67;
      v94 = 2050;
      v95 = tdSpeakerRecognizerCombinationWeight;
      v96 = 2050;
      v97 = tdSpeakerRecognizerSATThreshold;
      _os_log_impl(&dword_223A31000, v64, OS_LOG_TYPE_DEFAULT, "TDSR:: SATDetection: Done Waiting with _satDetectionTdSr: %{public}@, psrTDTimedOut=%{public}ld, tdPsrSATDetectionWaitTimeMs: %{public}fms, _lastTdSpeakerRecognizerSATScore=%{public}f, _tdSpeakerRecognizerCombinationWeight=%{public}f, _tdSpeakerRecognizerSATThreshold: %{public}f", buf, 0x3Eu);
    }

    v68 = +[VTAggregator sharedAggregator];
    v69 = v68;
    if (v58)
    {
      [v68 logTdPsrSATDetectionTimedOut];
    }

    else
    {
      [v68 logTdPsrSATDetectionWaitTimeMs:v61];

      if (self->_tdSpeakerRecognizerCombinationWeight > 0.0)
      {
        [(VTTextDependentSpeakerRecognizer *)self->_satDetectionTdSr lastRequestSatScore];
        v77 = v52;
        if (v85 > 0.0)
        {
          v86 = self->_tdSpeakerRecognizerCombinationWeight;
          [(VTTextDependentSpeakerRecognizer *)self->_satDetectionTdSr lastRequestSatScore];
          v77 = v86 * v87 + (1.0 - v86) * v52;
          self->_lastCombinedTdSpeakerRecognizerSATScore = v77;
          thresholdSAT = self->_tdSpeakerRecognizerSATThreshold;
        }

        goto LABEL_139;
      }
    }

    v77 = v52;
LABEL_139:

    goto LABEL_113;
  }

  v14 = 0;
  if (!self->_doSuperVectorSecondaryTest && self->_isMaximized)
  {
    thresholdLogNearMisses = self->_thresholdLogNearMisses;
    if (var1 >= sampleCountAtFirstChance && self->_thresholdSecondChance < v18)
    {
      v36 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v37 = a3->var1;
        v38 = a3->var2;
        *buf = 134349568;
        *v90 = v18;
        *&v90[8] = 1026;
        *&v90[10] = v37;
        *&v90[14] = 1026;
        *&v90[16] = v38;
        _os_log_impl(&dword_223A31000, v36, OS_LOG_TYPE_DEFAULT, "::: Detected a second chance trigger - 1st of 2 [score: %{public}5.3f]  start: %{public}d end: %{public}d", buf, 0x18u);
      }

      self->_sampleCountAtFirstChance = a3->var2;
      [(VTPhraseSpotter *)self _setSecondChance];
      [(VTPhraseSpotter *)self _storeFirstChanceAudio];
      [(VTPhraseSpotter *)self _createFirstChanceMeta:a3];
    }

    if (thresholdLogNearMisses >= v18)
    {
      goto LABEL_13;
    }

    if (self->_nearMissLogPending)
    {
      v39 = self->_nearMissLogPreDelayTimer;
      if ((v39 & 0x80000000) == 0)
      {
        v40 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
        {
          *buf = 67240192;
          *v90 = v39;
          _os_log_impl(&dword_223A31000, v40, OS_LOG_TYPE_INFO, "::: will log in %{public}d elapsed samples", buf, 8u);
        }

        goto LABEL_13;
      }

      [(VTPhraseSpotter *)self _computeSATScore:a3];
      v83 = [(VTPhraseSpotter *)self _analyzeMakeResult:a3 eventKind:2 satScore:?];
      if (+[VTUtilities isInternalInstall])
      {
        v84 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_223A31000, v84, OS_LOG_TYPE_DEFAULT, "Sending near trigger notification", buf, 2u);
        }

        notify_post("com.apple.voicetrigger.NearTrigger");
      }

      [(VTPhraseSpotter *)self _logMetaData:v83];
      [(VTPhraseSpotter *)self _analyzeResetWithOption:1];
      v14 = v83;
    }

    else
    {
      v14 = 0;
      self->_nearMissLogPreDelayTimer = 8000;
      self->_nearMissLogPending = 1;
    }
  }

LABEL_14:

  return v14;
}

uint64_t __34__VTPhraseSpotter__analyzeEvents___block_invoke_553(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) getSATVectorCount];
  v3 = *(a1 + 32);
  if (*(v3 + 477) == 1)
  {
    v4 = *(v3 + 584);
    if (!v4)
    {
      v5 = *(v3 + 16);
      goto LABEL_9;
    }

    if (!*(a1 + 40) && [v4 tdPsrCanProcessRequest])
    {
      [*(*(a1 + 32) + 16) updateSAT];
      v5 = *(*(a1 + 32) + 584);
LABEL_9:
      [v5 updateSAT];
      goto LABEL_10;
    }

    v6 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(*(a1 + 32) + 584);
      v9 = v6;
      v11 = 134349570;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v15 = 1026;
      v16 = [v8 tdPsrCanProcessRequest];
      _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "Not updating SAT & PSR models: psrTDTimedOut: %{public}ld, _satDetectionTdSr: %{public}@, tdPsrCanProcessRequest: %{public}d", &v11, 0x1Cu);
    }
  }

LABEL_10:
  result = [*(*(a1 + 32) + 16) getSATVectorCount];
  *(*(a1 + 32) + 256) = result - v2 == 1;
  return result;
}

void __34__VTPhraseSpotter__analyzeEvents___block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VTLogContextFacilityVoiceTrigger;
  if (a2)
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "AFSiriActivationBuiltInMicVoiceTriggerPrewarm success", &v8, 2u);
    }
  }

  else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = [v4 localizedDescription];
    v8 = 138543362;
    v9 = v7;
    _os_log_error_impl(&dword_223A31000, v6, OS_LOG_TYPE_ERROR, "AFSiriActivationBuiltInMicVoiceTriggerPrewarm failed : %{public}@", &v8, 0xCu);
  }
}

- (void)_createFirstChanceMeta:(const _ndresult *)a3
{
  v46[20] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    firstChanceTriggeredDate = self->_firstChanceTriggeredDate;
    self->_firstChanceTriggeredDate = v5;

    +[VTUtilities systemUpTime];
    v8 = v7;
    var1 = a3->var1;
    samplerate = self->_samplerate;
    v11 = v7 - ((a3->var0 - var1) / samplerate);
    v12 = v7 - ((a3->var0 - a3->var2) / samplerate);
    extraSamplesAtStart = self->_extraSamplesAtStart;
    if (extraSamplesAtStart >= var1)
    {
      v14 = var1;
    }

    else
    {
      v14 = extraSamplesAtStart;
    }

    triggerPhrases = self->_triggerPhrases;
    if (!triggerPhrases)
    {
      triggerPhrases = MEMORY[0x277CBEBF8];
    }

    v46[0] = triggerPhrases;
    v45[0] = @"triggerPhrases";
    v45[1] = @"triggerScore";
    v42 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastScore];
    v46[1] = v42;
    v45[2] = @"earlyDetectFiredTime";
    v41 = [MEMORY[0x277CCABB0] numberWithDouble:self->_earlyDetectTime];
    v46[2] = v41;
    v45[3] = @"triggerStartTime";
    v40 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    v46[3] = v40;
    v45[4] = @"triggerEndTime";
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    v46[4] = v39;
    v45[5] = @"triggerFiredTime";
    v38 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v46[5] = v38;
    v45[6] = @"numFramesFromPreTrigger";
    v37 = [MEMORY[0x277CCABB0] numberWithInt:self->_numFramesFromPreTrigger];
    v46[6] = v37;
    v45[7] = @"isMaximized";
    v36 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMaximized];
    v46[7] = v36;
    v45[8] = @"extraSamplesAtStart";
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v14];
    v46[8] = v35;
    v45[9] = @"isSecondChance";
    v34 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSecondChanceEffective];
    v46[9] = v34;
    v45[10] = @"threshold";
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:self->_threshold];
    v46[10] = v33;
    v45[11] = @"effectiveThreshold";
    v32 = [MEMORY[0x277CCABB0] numberWithDouble:self->_effectiveThreshold];
    v46[11] = v32;
    v45[12] = @"hardwareSamplerate";
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_hardwareSampleRate];
    v46[12] = v16;
    v45[13] = @"uptime";
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastUptime];
    v46[13] = v17;
    v45[14] = @"downtime";
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastDowntime];
    v46[14] = v18;
    v45[15] = @"didWakeAP";
    v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_didWakeAP];
    v46[15] = v19;
    v45[16] = @"onBatteryPower";
    v20 = MEMORY[0x277CCABB0];
    v21 = +[VTBatteryMonitor sharedInstance];
    v22 = [v20 numberWithInt:{objc_msgSend(v21, "batteryState") == 2}];
    v46[16] = v22;
    v45[17] = @"siriIsActiveOrOtherAssertion";
    v23 = MEMORY[0x277CCABB0];
    v24 = +[VTSiriAssertionMonitor sharedInstance];
    v25 = [v23 numberWithBool:{objc_msgSend(v24, "isEnabled")}];
    v26 = v25;
    configVersion = self->_configVersion;
    if (!configVersion)
    {
      configVersion = @"n/a";
    }

    v46[17] = v25;
    v46[18] = configVersion;
    v45[18] = @"configVersion";
    v45[19] = @"languageCode";
    languageCode = self->_languageCode;
    if (!languageCode)
    {
      languageCode = @"n/a";
    }

    v46[19] = languageCode;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:20];

    objc_storeStrong(&self->_firstChanceVTEventInfo, v29);
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_firstChanceVTEventInfo];
    v31 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v44 = v30;
      _os_log_impl(&dword_223A31000, v31, OS_LOG_TYPE_DEFAULT, "First Chance Meta : %{public}@", buf, 0xCu);
    }
  }
}

- (void)_storeFirstChanceAudio
{
  ndetectQueue = self->_ndetectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__VTPhraseSpotter__storeFirstChanceAudio__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(ndetectQueue, block);
}

void __41__VTPhraseSpotter__storeFirstChanceAudio__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 312);
  if (v2)
  {
    v4 = 0;
    v3 = [v2 copyBufferWithNumSamplesCopiedIn:&v4];
    if (v3)
    {
      objc_storeStrong((*(a1 + 32) + 696), v3);
    }
  }
}

- (BOOL)_getSecondChanceEffective
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ndetectQueue = self->_ndetectQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__VTPhraseSpotter__getSecondChanceEffective__block_invoke;
  v5[3] = &unk_2784ED078;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(ndetectQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__VTPhraseSpotter__getSecondChanceEffective__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 377) == 1)
  {
    v1 = result;
    result = +[VTUtilities systemUpTime];
    v3 = *(v1 + 32);
    if (v2 > 0.0 && (v4 = *(v3 + 384), v4 > 0.0) && ((v5 = v2 - v4, v5 > 0.0) ? (v6 = v5 < 8.0) : (v6 = 0), v6))
    {
      *(*(*(v1 + 40) + 8) + 24) = 1;
    }

    else
    {
      *(v3 + 377) = 0;
    }
  }

  return result;
}

- (void)_cancelSecondChance
{
  ndetectQueue = self->_ndetectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__VTPhraseSpotter__cancelSecondChance__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(ndetectQueue, block);
}

- (void)_setSecondChance
{
  ndetectQueue = self->_ndetectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__VTPhraseSpotter__setSecondChance__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(ndetectQueue, block);
}

uint64_t __35__VTPhraseSpotter__setSecondChance__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 377) = 1;
  result = +[VTUtilities systemUpTime];
  *(*(a1 + 32) + 384) = v3;
  return result;
}

- (unint64_t)_getBiometricMatchResult
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 0;
  v3 = mach_continuous_time();
  if ([(VTBiometricMatchMonitor *)self->_biometricMonitor getLastBiometricMatchEvent:&v14 atTime:&v13])
  {
    [VTUtilities VTMachAbsoluteTimeGetTimeInterval:v3 - v13];
    v5 = v4;
    v6 = v14;
    v7 = VTLogContextFacilityVoiceTrigger;
    v8 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
    if (v6 == 1 && v5 < 3.0)
    {
      if (v8)
      {
        *buf = 134349056;
        v16 = v5;
        _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Biometric match happened in last %{public}f secs", buf, 0xCu);
      }

      return 1;
    }

    else
    {
      if (v8)
      {
        v10 = @"MIS-MATCH";
        if (v6)
        {
          v10 = @"MATCH";
        }

        *buf = 138543618;
        v16 = *&v10;
        v17 = 2050;
        v18 = v5;
        _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "Biometric match result: %{public}@ happened in last %{public}f secs", buf, 0x16u);
        LOBYTE(v6) = v14;
      }

      if (v6)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {
    v12 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "No biometric information available", buf, 2u);
    }

    return 0;
  }
}

- (id)_storeTrainingAudioAndMetaInfo
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = [v4 stringByAppendingString:@".wav"];

  if (self->_audioBuffer)
  {
    v6 = [VTSpeakerIdUtilities getSATAudioDirectoryForType:1 forLanguageCode:self->_languageCode];
    v7 = [v6 stringByAppendingPathComponent:v5];

    v8 = [(VTPhraseSpotter *)self _sampleLengthFrom:self->_samplecountAtLastTriggerStart To:self->_samplecount];
    audioBuffer = self->_audioBuffer;
    v10 = [(VTAudioCircularBuffer *)audioBuffer sampleCount]- v8;
    v11 = [(VTAudioCircularBuffer *)self->_audioBuffer sampleCount];
    v12 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    [(VTAudioCircularBuffer *)audioBuffer saveRecordingBufferFrom:v10 to:v11 toURL:v12];

    [VTUtteranceMetadataManager saveUtteranceMetadataForUtterance:v7 isExplicitEnrollment:self->_isRunningSATEnrollment isHandheldEnrollment:[(VTPhraseSpotter *)self _isDeviceHandheld] withBiometricResult:[(VTPhraseSpotter *)self _getBiometricMatchResult]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_sampleLengthFrom:(unsigned int)a3 To:(unsigned int)a4
{
  v4 = -a3;
  if (a3 > a4)
  {
    v4 = ~a3;
  }

  return v4 + a4;
}

- (id)_handleTriggerEvent:(const _ndresult *)a3 num_new_samples:(unsigned int)a4 satScore:(double)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = [(VTPhraseSpotter *)self _analyzeMakeResult:a3 eventKind:0 satScore:a5];
  self->_numFramesFromPreTrigger += a4;
  if (self->_isMaximized)
  {
    kdebug_trace();
    ++self->_triggerCount;
    self->_lastTriggerType = 1;
    if (self->_isSecondChanceEffective)
    {
      v9 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        var4 = a3->var4;
        var1 = a3->var1;
        var2 = a3->var2;
        v19 = 134349568;
        v20 = var4;
        v21 = 1026;
        v22 = var1;
        v23 = 1026;
        v24 = var2;
        _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "::: Detected a second chance trigger - 2nd of 2 [score: %{public}5.3f] start: %{public}d end: %{public}d", &v19, 0x18u);
      }

      self->_lastTriggerType = 2;
    }

    [(VTPhraseSpotter *)self _cancelSecondChance];
    v13 = +[VTAggregator sharedAggregator];
    [v13 logActivation];

    [(VTPhraseSpotter *)self _logMetaData:v8];
    [(VTPhraseSpotter *)self _analyzeResetWithOption:0];
    self->_lastEventEnd = a3->var2;
    if (self->_isRunningSATEnrollment)
    {
      v14 = [(VTPhraseSpotter *)self _storeTrainingAudioAndMetaInfo];
    }

    else if (self->_isRunningSATDetection && self->_implicitlyTrained)
    {
      v15 = [(VTPhraseSpotter *)self _storeTrainingAudioAndMetaInfo];
      lastImplicitlyTrainedAudioFile = self->_lastImplicitlyTrainedAudioFile;
      self->_lastImplicitlyTrainedAudioFile = v15;

      notify_post("com.apple.voicetrigger.PHSProfileModified");
    }

    if (!+[VTUtilities VTIsHorseman]&& self->_isRunningRecognizer)
    {
      v17 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_223A31000, v17, OS_LOG_TYPE_DEFAULT, "Stopping audio feed to recognizer per trigger event", &v19, 2u);
      }

      [(VTTranscriber *)self->_transcriber endAudio];
    }
  }

  return v8;
}

- (id)analyzeBufferList:(AudioBufferList *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  if (!a3)
  {
    v16 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26[0]) = 0;
      _os_log_error_impl(&dword_223A31000, v16, OS_LOG_TYPE_ERROR, "Received NULL bufferList", v26, 2u);
    }

    goto LABEL_21;
  }

  if (!+[VTUtilities VTIsHorseman]|| self->_numChannels < 2)
  {
    v15 = [(VTPhraseSpotter *)self analyze:*&a3->mBuffers[0].mNumberChannels, a3->mBuffers[0].mData];
    goto LABEL_22;
  }

  mDataByteSize = a3->mBuffers[0].mDataByteSize;
  v7 = [MEMORY[0x277CBEB28] dataWithLength:mDataByteSize];
  v8 = [v7 mutableBytes];
  numChannels = self->_numChannels;
  v10 = mDataByteSize / numChannels;
  deinterleavedABL = self->_deinterleavedABL;
  v12 = (mDataByteSize / numChannels);
  if (numChannels <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = self->_numChannels;
  }

  if (numChannels <= 1)
  {
    v14 = 0;
LABEL_15:
    v20 = v13 - v14;
    p_mData = &deinterleavedABL->mBuffers[v14].mData;
    do
    {
      *(p_mData - 2) = 1;
      *(p_mData - 1) = v10;
      *p_mData = (v8 + v14 * v12);
      p_mData += 2;
      ++v14;
      --v20;
    }

    while (v20);
    goto LABEL_17;
  }

  v17 = 0;
  v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
  v18 = &deinterleavedABL->mBuffers[0].mData;
  v19 = v13 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v18 - 2) = 1;
    *(v18 - 1) = v10;
    *(v18 + 2) = 1;
    *(v18 + 3) = v10;
    *v18 = (v8 + v17 * v12);
    v18[2] = (v8 + (v17 | 1) * v12);
    v17 += 2;
    v18 += 4;
    v19 -= 2;
  }

  while (v19);
  if (numChannels != v14)
  {
    goto LABEL_15;
  }

LABEL_17:
  v22 = AudioConverterConvertComplexBuffer(self->_deinterleaver, v12 >> 1, a3, deinterleavedABL);
  if (v22)
  {
    v23 = v22;
    v24 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v26[0] = 67240192;
      v26[1] = v23;
      _os_log_impl(&dword_223A31000, v24, OS_LOG_TYPE_DEFAULT, "Failed to deinterleave data: %{public}d", v26, 8u);
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v15 = [(VTPhraseSpotter *)self analyze:*&self->_deinterleavedABL->mBuffers[0].mNumberChannels, self->_deinterleavedABL->mBuffers[0].mData];

LABEL_22:
  objc_autoreleasePoolPop(v5);

  return v15;
}

- (id)analyze:(AudioBuffer)a3
{
  mData = a3.mData;
  v4 = *&a3.mNumberChannels;
  v67 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v6 = *&a3.mNumberChannels >> 33;
  v7 = analyze__audioSampleHeartBeat;
  if ((-286331153 * analyze__audioSampleHeartBeat + 143165576) <= 0x11111110)
  {
    v9 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240448;
      *&buf[4] = v6;
      LOWORD(v64) = 1026;
      *(&v64 + 2) = v7;
      _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "::: Received %{public}d samples, heartbeat : %{public}d", buf, 0xEu);
    }

    v8 = 1;
  }

  else
  {
    v8 = analyze__audioSampleHeartBeat + 1;
  }

  analyze__audioSampleHeartBeat = v8;
  audioFileReader = self->_audioFileReader;
  if (audioFileReader)
  {
    v11 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "::: Reading %d samples from file", buf, 8u);
      audioFileReader = self->_audioFileReader;
    }

    v12 = [(VTAudioFileReader *)audioFileReader readSamples:v6];
    v13 = v12;
    mData = [v12 bytes];
    LODWORD(v6) = [v12 length];
  }

  else
  {
    v6 = HIDWORD(v4);
  }

  if (!self->_isSecondPass)
  {
LABEL_18:
    v17 = v4 | (v6 << 32);
    if (self->_audioCaptureRequested)
    {
      v18 = +[VTAudioFileLog sharedInstance];
      [v18 appendAudioData:{v17, mData}];
    }

    mach_absolute_time();
    kdebug_trace();
    *buf = 0;
    v64 = buf;
    v65 = 0x2020000000;
    v66 = 0;
    ndetectQueue = self->_ndetectQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__VTPhraseSpotter_analyze___block_invoke;
    block[3] = &unk_2784ED0A0;
    block[7] = v17;
    block[8] = mData;
    block[4] = self;
    block[5] = &v56;
    block[6] = buf;
    dispatch_sync(ndetectQueue, block);
    if (+[VTUtilities VTIsHorseman])
    {
      if (self->_useRecognizer)
      {
        v20 = v57[3];
        if (v20)
        {
          if (*(v20 + 21) == 1 && !self->_isRunningRecognizer)
          {
            v21 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
            {
              v23 = *v20;
              v22 = v20[1];
              *v62 = 67240448;
              *&v62[4] = v22;
              *&v62[8] = 1026;
              *&v62[10] = v23;
              _os_log_impl(&dword_223A31000, v21, OS_LOG_TYPE_DEFAULT, "Let's start running recognizer from trigger_start: %{public}d samples_fed %{public}d", v62, 0xEu);
              v21 = VTLogContextFacilityVoiceTrigger;
            }

            self->_isSecondPass = 1;
            self->_secondPassTriggered = 0;
            self->_secondPassAccepted = 0;
            self->_secondPassBestScore = -INFINITY;
            self->_isRunningRecognizer = 1;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *v62 = 134349056;
              *&v62[4] = 0x3FF0000000000000;
              _os_log_impl(&dword_223A31000, v21, OS_LOG_TYPE_DEFAULT, "Set to wait up to samples of %{public}.2f seconds for the first recognition results to come back", v62, 0xCu);
            }

            self->_secondPassResetTimer = 16000;
            self->_nearMissLogPreDelayTimer = 24000;
            if (!self->_nearMissLogPending)
            {
              self->_nearMissLogPending = 1;
            }

            self->_firstRecognitionResultReceived = 0;
            [(VTTranscriber *)self->_transcriber reset];
            transcriber = self->_transcriber;
            v54[0] = MEMORY[0x277D85DD0];
            v54[1] = 3221225472;
            v54[2] = __27__VTPhraseSpotter_analyze___block_invoke_512;
            v54[3] = &unk_2784ECFF8;
            v54[4] = self;
            [(VTTranscriber *)transcriber runRecognitionWithCallback:v54];
            *v62 = 0;
            v25 = [(VTAudioCircularBuffer *)self->_audioBuffer copySamplesFrom:[(VTAudioCircularBuffer *)self->_audioBuffer sampleCount]- [(VTPhraseSpotter *)self _sampleLengthFrom:*(v57[3] + 4) To:*v57[3]] to:[(VTAudioCircularBuffer *)self->_audioBuffer sampleCount] withNumSamplesCopiedIn:v62];
            v26 = self->_transcriber;
            v27 = v25;
            v28 = [v25 bytes];
            [(VTTranscriber *)v26 recognizeWavData:v28 length:*v62];
            self->_isRecognitionResultPending = 1;
            v29 = dispatch_time(0, 500000000);
            v30 = self->_ndetectQueue;
            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v53[2] = __27__VTPhraseSpotter_analyze___block_invoke_513;
            v53[3] = &unk_2784ECFF8;
            v53[4] = self;
            dispatch_after(v29, v30, v53);
          }
        }
      }
    }

    if (v64[24] == 1)
    {
      samplecount = self->_samplecount;
      self->_samplecountAtLastTriggerStart = samplecount;
      self->_samplecountAtLastTriggerEnd = samplecount;
      v60 = @"isTriggerEvent";
      v61 = MEMORY[0x277CBEC38];
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v32 = 0;
      self->_lastTriggerType = 3;
    }

    else
    {
      if (v57[3])
      {
        v32 = [(VTPhraseSpotter *)self _analyzeEvents:?];
      }

      else
      {
        v32 = 0;
      }

      if (self->_isSecondPass && !self->_secondPassTriggered)
      {
        secondPassResetTimer = self->_secondPassResetTimer;
        if (secondPassResetTimer < 0)
        {
          v34 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            *v62 = 67240192;
            *&v62[4] = secondPassResetTimer;
            _os_log_impl(&dword_223A31000, v34, OS_LOG_TYPE_DEFAULT, "secondPassResetTimerFired: %{public}d", v62, 8u);
          }

          [(VTTextDependentSpeakerRecognizer *)self->_satDetectionTdSr endAudio];
          if (self->_isRunningRecognizer)
          {
            if (self->_isRecognitionResultPending)
            {
              if (!self->_firstRecognitionResultReceived)
              {
                v35 = +[VTAggregator sharedAggregator];
                [v35 logRecognizerTimedOut];

                if (self->_useFallbackThresholdUponTimeout)
                {
                  self->_isRunningRecognizer = 0;
                  self->_isMaximized = 0;
                  v36 = VTLogContextFacilityVoiceTrigger;
                  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                  {
                    *v62 = 0;
                    _os_log_impl(&dword_223A31000, v36, OS_LOG_TYPE_DEFAULT, "We are falling back to normal threshold due to recognizer timeout", v62, 2u);
                  }
                }
              }
            }

            else
            {
              v37 = VTLogContextFacilityVoiceTrigger;
              if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
              {
                *v62 = 0;
                _os_log_impl(&dword_223A31000, v37, OS_LOG_TYPE_DEFAULT, "Stopping audio feed to recognizer per second pass stop timer", v62, 2u);
              }

              [(VTTranscriber *)self->_transcriber endAudio];
              if (!self->_firstRecognitionResultReceived)
              {
                self->_isRecognitionResultPending = 1;
                v48 = VTLogContextFacilityVoiceTrigger;
                if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                {
                  recognizerWaitTime = self->_recognizerWaitTime;
                  *v62 = 134349056;
                  *&v62[4] = recognizerWaitTime;
                  _os_log_impl(&dword_223A31000, v48, OS_LOG_TYPE_DEFAULT, "Set to wait up to samples of %{public}.2f seconds for the first recognition results to come back", v62, 0xCu);
                }

                v50 = (self->_recognizerWaitTime * 16000.0);
                self->_secondPassResetTimer = v50;
                nearMissLogPreDelayTimer = self->_nearMissLogPreDelayTimer;
                v15 = 0;
                if ((nearMissLogPreDelayTimer & 0x80000000) == 0)
                {
                  self->_nearMissLogPreDelayTimer = nearMissLogPreDelayTimer + v50;
                }

                goto LABEL_65;
              }
            }
          }

          if (self->_isMaximized || (v38 = v57[3]) == 0)
          {
            v40 = v32;
          }

          else
          {
            v39 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
            {
              *v62 = 0;
              _os_log_impl(&dword_223A31000, v39, OS_LOG_TYPE_DEFAULT, "Checking one more time if we are triggered by enforcing maximization", v62, 2u);
              v38 = v57[3];
            }

            v40 = [(VTPhraseSpotter *)self _analyzeEvents:v38];
          }

          if (!self->_secondPassTriggered)
          {
            v42 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
            {
              secondPassBestScore = self->_secondPassBestScore;
              *v62 = 134349056;
              *&v62[4] = secondPassBestScore;
              _os_log_impl(&dword_223A31000, v42, OS_LOG_TYPE_DEFAULT, "We didn't trigger with 2nd-pass score at most up to: %{public}.3f", v62, 0xCu);
            }

            v44 = +[VTAggregator sharedAggregator];
            [v44 logSecondPassResult:self->_secondPassAccepted];

            v45 = +[VTAggregator sharedAggregator];
            [v45 logFalseWakeUp:self->_didWakeAP];

            if (self->_secondPassAudioLoggingEnabled)
            {
              v46 = +[VTAudioFileLog sharedInstance];
              [v46 stopRecording];
            }

            if (self->_secondPassAccepted || self->_nearMissLogPreDelayTimer < 0 || !v57[3] || self->_lastScore < self->_thresholdLogNearMisses)
            {
              v32 = v40;
            }

            else
            {
              [(VTPhraseSpotter *)self _computeSATScore:?];
              v32 = [(VTPhraseSpotter *)self _analyzeMakeResult:v57[3] eventKind:2 satScore:?];

              if (+[VTUtilities isInternalInstall])
              {
                v52 = VTLogContextFacilityVoiceTrigger;
                if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                {
                  *v62 = 0;
                  _os_log_impl(&dword_223A31000, v52, OS_LOG_TYPE_DEFAULT, "Sending near trigger notification...", v62, 2u);
                }

                notify_post("com.apple.voicetrigger.NearTrigger");
              }

              [(VTPhraseSpotter *)self _logMetaData:v32];
              [(VTPhraseSpotter *)self _analyzeResetWithOption:0];
            }

            if (+[VTUtilities VTIsHorseman]&& self->_useRecognizer)
            {
              [(VTPhraseSpotter *)self _analyzeResetWithOption:0];
              v15 = 0;
              self->_isSecondPass = 0;
              self->_secondPassTriggered = 0;
              self->_secondPassAccepted = 0;
              self->_secondPassBestScore = -INFINITY;
              *&self->_isRunningRecognizer = 0;
            }

            else
            {
              if ([(VTCorruptDetector *)self->_corruptDetector audioHasZeroRun])
              {
                [(VTPhraseSpotter *)self _logCorruptAudio];
                v47 = +[VTAggregator sharedAggregator];
                [v47 logZeroRunAudio:{-[VTCorruptDetector getMaxZeroSampleCount](self->_corruptDetector, "getMaxZeroSampleCount")}];
              }

              self->_secondPassStopSent = 1;
              v15 = &unk_283715580;
            }

            goto LABEL_65;
          }

          v32 = v40;
        }
      }

      if (+[VTUtilities VTIsHorseman]&& self->_useRecognizer && self->_isSecondPass && self->_secondPassTriggered)
      {
        self->_isSecondPass = 0;
        self->_secondPassTriggered = 0;
        self->_secondPassAccepted = 0;
        self->_secondPassBestScore = -INFINITY;
        *&self->_isRunningRecognizer = 0;
      }

      v32 = v32;
      v15 = v32;
    }

LABEL_65:

    _Block_object_dispose(buf, 8);
    goto LABEL_66;
  }

  if (!self->_secondPassStopSent)
  {
    if (self->_secondPassAudioLoggingEnabled)
    {
      v16 = +[VTAudioFileLog sharedInstance];
      [v16 appendAudioData:{v4 | (v6 << 32), mData}];
    }

    goto LABEL_18;
  }

  v14 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v14, OS_LOG_TYPE_DEFAULT, "We already returned secondPassStop = 1, returning again to ensure stopping", buf, 2u);
  }

  v15 = &unk_283715558;
LABEL_66:
  _Block_object_dispose(&v56, 8);

  return v15;
}

uint64_t __27__VTPhraseSpotter_analyze___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 60) >> 1;
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if (v4 && *(v3 + 473) == 1 && (*(v3 + 476) & 1) == 0 && (*(v3 + 784) & 1) == 0)
  {
    [v4 analyzeWavData:*(a1 + 64) length:v2];
    *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 16) getAnalyzedResult:0];
    v5 = *(a1 + 32);
    v6 = *(v5 + 312);
    if (v6)
    {
      [v6 addSamples:*(a1 + 64) numSamples:v2];
      v5 = *(a1 + 32);
    }

    if (*(v5 + 477) == 1 && (*(v5 + 240) & 1) == 0)
    {
      v7 = *(v5 + 584);
      if (v7)
      {
        [v7 processAudio:*(a1 + 64) numSamples:v2];
      }

      else
      {
        v8 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412546;
          v23 = 0.0;
          v24 = 1024;
          LODWORD(v25) = v2;
          _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "Unable to feed audio to TDSR: _satDetectionTdSr=%@, missedSamples=%d", &v22, 0x12u);
        }
      }
    }

    v9 = *(a1 + 32);
    if (*(v9 + 521) == 1)
    {
      [*(v9 + 576) recognizeWavData:*(a1 + 64) length:v2];
      v9 = *(a1 + 32);
    }

    [*(v9 + 640) analyze:{*(a1 + 56), *(a1 + 64)}];
    v3 = *(a1 + 32);
  }

  result = [*(v3 + 624) count];
  if (result)
  {
    v11 = [MEMORY[0x277CCAC38] processInfo];
    [v11 systemUptime];
    v13 = v12;

    v14 = [*(*(a1 + 32) + 624) lastObject];
    [v14 doubleValue];
    v16 = v15;

    v17 = VTLogContextFacilityVoiceTrigger;
    v18 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
    if (v13 - v16 > 0.0 && v13 - v16 < 7.0)
    {
      if (v18)
      {
        v22 = 134349312;
        v23 = v16;
        v24 = 2050;
        v25 = v13;
        _os_log_impl(&dword_223A31000, v17, OS_LOG_TYPE_DEFAULT, "nonceTrigger time::: received %{public}f vs. current %{public}f", &v22, 0x16u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      result = [*(*(a1 + 32) + 624) removeLastObject];
    }

    else
    {
      if (v18)
      {
        v22 = 134349312;
        v23 = v16;
        v24 = 2050;
        v25 = v13;
        _os_log_impl(&dword_223A31000, v17, OS_LOG_TYPE_DEFAULT, "nonceTrigger is outdated::: received %{public}f vs. current %{public}f", &v22, 0x16u);
      }

      result = [*(*(a1 + 32) + 624) removeAllObjects];
    }
  }

  v20 = *(a1 + 32);
  if (*(v20 + 477) == 1)
  {
    v21 = *(v20 + 480);
    if ((v21 & 0x80000000) == 0)
    {
      *(v20 + 480) = v21 - v2;
    }
  }

  return result;
}

void __27__VTPhraseSpotter_analyze___block_invoke_512(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 523) & 1) == 0)
  {
    v3 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "Received first recognition result...", v5, 2u);
      v1 = *(a1 + 32);
    }

    *(v1 + 523) = 1;
    v4 = *(a1 + 32);
    if (*(v4 + 522) == 1)
    {
      *(v4 + 480) = -10101;
    }
  }
}

uint64_t __27__VTPhraseSpotter_analyze___block_invoke_513(uint64_t a1)
{
  v2 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "Stopping audio feed to recognizer per dispatch timer", v4, 2u);
  }

  return [*(*(a1 + 32) + 576) endAudio];
}

- (void)_resetVoiceTriggerDueToRTSTrigger
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "RTSTriggered. Resetting VoiceTrigger", v4, 2u);
  }

  [(VTPhraseSpotter *)self _commonInit];
  self->_isSecondPass = 0;
  self->_secondPassResetTimer = 0;
  *&self->_didWakeAP = 0;
  self->_earlyDetecFiredMachTime = 0;
  self->_triggerFireMachTime = 0;
  self->_triggerStartMachTime = 0;
  self->_firstPassScore = -1000.0;
  [(VTCorruptDetector *)self->_corruptDetector reset];
}

- (BOOL)_isDeviceHandheld
{
  if (!self->_deviceHandheld)
  {
    return 0;
  }

  +[VTUtilities systemUpTime];
  if (v3 <= 0.0)
  {
    return 0;
  }

  handHeldDetectedTime = self->_handHeldDetectedTime;
  if (handHeldDetectedTime <= 0.0)
  {
    return 0;
  }

  v5 = v3 - handHeldDetectedTime;
  if (v5 > 0.0 && v5 < 8.0)
  {
    return 1;
  }

  result = 0;
  self->_deviceHandheld = 0;
  return result;
}

- (void)_setDeviceHandHeld
{
  self->_deviceHandheld = 1;
  +[VTUtilities systemUpTime];
  self->_handHeldDetectedTime = v3;
}

- (void)looseTriggerThreshold
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "::: will loose trigger threshold", v4, 2u);
  }

  [(VTPhraseSpotter *)self _setSecondChance];
}

- (void)_voiceTriggerEnabledDidChange
{
  assetChangedQueue = self->_assetChangedQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__VTPhraseSpotter__voiceTriggerEnabledDidChange__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(assetChangedQueue, block);
}

void __48__VTPhraseSpotter__voiceTriggerEnabledDidChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 448);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__VTPhraseSpotter__voiceTriggerEnabledDidChange__block_invoke_2;
  block[3] = &unk_2784ECFF8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __48__VTPhraseSpotter__voiceTriggerEnabledDidChange__block_invoke_2(uint64_t a1)
{
  v2 = +[VTPreferences sharedPreferences];
  v3 = [v2 voiceTriggerEnabled];

  v4 = *(a1 + 32);
  if (*(v4 + 475) != v3)
  {
    *(v4 + 475) = v3;
    v5 = *(a1 + 32);
    if (v5[475] == 1)
    {
      v6 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "VoiceTrigger is enabled, reload phrase spotter", v7, 2u);
        v5 = *(a1 + 32);
      }

      [v5 _safeReconfig];
    }
  }
}

- (void)_phraseSpotterEnabledDidChange
{
  assetChangedQueue = self->_assetChangedQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__VTPhraseSpotter__phraseSpotterEnabledDidChange__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(assetChangedQueue, block);
}

void __49__VTPhraseSpotter__phraseSpotterEnabledDidChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 448);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__VTPhraseSpotter__phraseSpotterEnabledDidChange__block_invoke_2;
  block[3] = &unk_2784ECFF8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __49__VTPhraseSpotter__phraseSpotterEnabledDidChange__block_invoke_2(uint64_t a1)
{
  v2 = +[VTPreferences sharedPreferences];
  v3 = [v2 phraseSpotterEnabled];

  v4 = *(a1 + 32);
  if (*(v4 + 473) != v3)
  {
    *(v4 + 473) = v3;
    v5 = *(a1 + 32);
    if (v5[473] == 1)
    {

      [v5 _safeReconfig];
    }
  }
}

- (void)_performReadyCompletion
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy__6569;
  v4[4] = __Block_byref_object_dispose__6570;
  v5 = 0;
  ndetectQueue = self->_ndetectQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__VTPhraseSpotter__performReadyCompletion__block_invoke;
  v3[3] = &unk_2784ED078;
  v3[4] = self;
  v3[5] = v4;
  dispatch_async(ndetectQueue, v3);
  _Block_object_dispose(v4, 8);
}

void __42__VTPhraseSpotter__performReadyCompletion__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    v3 = 32;
  }

  else
  {
    if (!*(v2 + 40))
    {
      goto LABEL_6;
    }

    v3 = 40;
  }

  v4 = MEMORY[0x223DF24E0]();
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);
  v8 = *(v7 + v3);
  *(v7 + v3) = 0;

LABEL_6:
  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (v9)
  {
    v10 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "calling back to start feeding us the samples", v11, 2u);
      v9 = *(*(*(a1 + 40) + 8) + 40);
    }

    (*(v9 + 16))(v9);
  }
}

- (void)dealloc
{
  if (self->_registeredforVoiceTriggerEnabledNotification)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"kVTPreferencesVoiceTriggerEnabledDidChangeDarwinNotification", 0);
    self->_registeredforVoiceTriggerEnabledNotification = 0;
  }

  if (self->_registeredForPhraseSpotterNotification)
  {
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v4, self, @"kVTPreferencesPhraseSpotterEnabledDidChangeDarwinNotification", 0);
    self->_registeredForPhraseSpotterNotification = 0;
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  analyzer = self->_analyzer;
  if (analyzer)
  {
    self->_analyzer = 0;
  }

  v7 = +[VTLanguageCodeUpdateMonitor sharedInstance];
  [v7 removeObserver:self];

  v8 = +[VTAssetMonitor sharedInstance];
  [v8 removeObserver:self];

  audioBuffer = self->_audioBuffer;
  self->_audioBuffer = 0;

  v10 = _currentSpotter;
  _currentSpotter = 0;

  transcriber = self->_transcriber;
  self->_transcriber = 0;

  [(VTTextDependentSpeakerRecognizer *)self->_satDetectionTdSr endAudio];
  satDetectionTdSr = self->_satDetectionTdSr;
  self->_satDetectionTdSr = 0;

  deinterleavedABL = self->_deinterleavedABL;
  if (deinterleavedABL)
  {
    free(deinterleavedABL);
  }

  v14.receiver = self;
  v14.super_class = VTPhraseSpotter;
  [(VTPhraseSpotter *)&v14 dealloc];
}

- (void)_commonInit
{
  ndetectQueue = self->_ndetectQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__VTPhraseSpotter__commonInit__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(ndetectQueue, block);
}

void *__30__VTPhraseSpotter__commonInit__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) reset];
  *(*(a1 + 32) + 424) = 0;
  *(*(a1 + 32) + 432) = 0;
  *(*(a1 + 32) + 656) = 0;
  [*(a1 + 32) _resetCounters];
  result = *(*(a1 + 32) + 312);
  if (result)
  {

    return [result reset];
  }

  return result;
}

- (void)_initDetector
{
  self->_isRunningSATEnrollment = 0;
  if (self->_ndetectQueue)
  {
    if (self->_assetChangedQueue)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = dispatch_queue_create("voiceTrigger reload queue", 0);
    ndetectQueue = self->_ndetectQueue;
    self->_ndetectQueue = v26;

    if (self->_assetChangedQueue)
    {
      goto LABEL_3;
    }
  }

  v28 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v29 = dispatch_queue_create("voiceTrigger asset changed", v28);
  assetChangedQueue = self->_assetChangedQueue;
  self->_assetChangedQueue = v29;

LABEL_3:
  v3 = +[VTPreferences sharedPreferences];
  [v3 synchronize];

  v4 = +[VTPreferences sharedPreferences];
  self->_audioLoggingEnabled = [v4 fileLoggingIsEnabled];

  *&self->_secondPassAudioLoggingEnabled = 0;
  if (self->_audioLoggingEnabled)
  {
    if (!self->_loggingQueue)
    {
      v5 = dispatch_queue_create("voiceTrigger logging queue", MEMORY[0x277D85CD8]);
      loggingQueue = self->_loggingQueue;
      self->_loggingQueue = v5;
    }

    v7 = VTMakeTimestampedAudioLogFilenameWithPrefixAndSuffix(&stru_28370C9A8, &stru_28370C9A8);
    v8 = +[VTPreferences sharedPreferences];
    self->_secondPassAudioLoggingEnabled = [v8 secondPassAudioLoggingEnabled];
  }

  v9 = +[VTPreferences sharedPreferences];
  self->_voiceTriggerEnabled = [v9 voiceTriggerEnabled];

  if (!self->_registeredforVoiceTriggerEnabledNotification)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _VoiceTriggerEnabledDidChange, @"kVTPreferencesVoiceTriggerEnabledDidChangeDarwinNotification", 0, CFNotificationSuspensionBehaviorDrop);
    self->_registeredforVoiceTriggerEnabledNotification = 1;
  }

  v11 = +[VTPreferences sharedPreferences];
  self->_phraseSpotterEnabled = [v11 phraseSpotterEnabled];

  if (!self->_registeredForPhraseSpotterNotification)
  {
    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v12, self, _PhraseSpotterEnabledDidChange, @"kVTPreferencesPhraseSpotterEnabledDidChangeDarwinNotification", 0, CFNotificationSuspensionBehaviorDrop);
    self->_registeredForPhraseSpotterNotification = 1;
  }

  self->_phraseSpotterBypassed = 0;
  self->_externalPhraseSpotterRunning = 0;
  v13 = +[VTLanguageCodeUpdateMonitor sharedInstance];
  [v13 addObserver:self];

  v14 = objc_alloc_init(VTPhraseSpotterEnabledPolicy);
  policy = self->_policy;
  self->_policy = v14;

  objc_initWeak(&location, self);
  v16 = self->_policy;
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __32__VTPhraseSpotter__initDetector__block_invoke;
  v34 = &unk_2784ED050;
  objc_copyWeak(&v35, &location);
  [(VTPolicy *)v16 setCallback:&v31];
  v17 = [VTAssetMonitor sharedInstance:v31];
  [v17 addObserver:self];

  v18 = AFPreferencesMobileUserSessionLanguage();
  v19 = +[VTAggregator sharedAggregator];
  [v19 setLanguageCode:v18];

  [(VTPhraseSpotter *)self _handleAssetChangeForLanguageCode:v18];
  v20 = [MEMORY[0x277CBEB18] array];
  nonceTriggerEvents = self->_nonceTriggerEvents;
  self->_nonceTriggerEvents = v20;

  v22 = objc_alloc_init(VTCorruptDetector);
  corruptDetector = self->_corruptDetector;
  self->_corruptDetector = v22;

  self->_triggerCount = 0;
  v24 = +[VTBiometricMatchMonitor sharedInstance];
  biometricMonitor = self->_biometricMonitor;
  self->_biometricMonitor = v24;

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

void __32__VTPhraseSpotter__initDetector__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v4 = WeakRetained;
    [WeakRetained _firstUnlockedAndSpringBoardStarted];
    WeakRetained = v4;
  }
}

- (void)notifyAssetChangeWithCallback:(id)a3
{
  self->_assetChangedCallback = MEMORY[0x223DF24E0](a3, a2);

  MEMORY[0x2821F96F8]();
}

- (void)prepareWithProperty:(id)a3 readyCompletion:(id)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(VTPhraseSpotter *)self _commonInit];
  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.mSampleRate) = 138543362;
    *(&buf.mSampleRate + 4) = v6;
    _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "preparing VTPhraseSpotter with property: %{public}@", &buf, 0xCu);
  }

  self->_isSecondPass = 0;
  self->_secondPassResetTimer = 0;
  *&self->_didWakeAP = 0;
  self->_earlyDetecFiredMachTime = 0;
  self->_triggerFireMachTime = 0;
  self->_triggerStartMachTime = 0;
  self->_firstPassScore = -1000.0;
  *&self->_isRunningRecognizer = 0;
  self->_firstRecognitionResultReceived = 0;
  [(VTTranscriber *)self->_transcriber reset];
  *&self->_threshold = *&self->_ndapiThreshold;
  self->_thresholdLogNearMisses = self->_ndapiThresholdLogNearMisses;
  if (v6)
  {
    v9 = [v6 objectForKeyedSubscript:@"isSecondPass"];
    v10 = v9;
    if (v9 && [v9 BOOLValue])
    {
      satDetectionTdSr = self->_satDetectionTdSr;
      if (satDetectionTdSr)
      {
        self->_lastCombinedTdSpeakerRecognizerSATScore = 0.0;
        [(VTTextDependentSpeakerRecognizer *)satDetectionTdSr resetForNewRequest];
        v12 = dispatch_semaphore_create(0);
        satDetectionTdSrSemaphore = self->_satDetectionTdSrSemaphore;
        self->_satDetectionTdSrSemaphore = v12;

        v14 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.mSampleRate) = 138412546;
          *(&buf.mSampleRate + 4) = v10;
          LOWORD(buf.mFormatFlags) = 2112;
          *(&buf.mFormatFlags + 2) = v6;
          _os_log_impl(&dword_223A31000, v14, OS_LOG_TYPE_DEFAULT, "Created _satDetectionTdSrSemaphore: isSecondPass=%@, property: %@", &buf, 0x16u);
        }
      }

      self->_isSecondPass = 1;
      self->_secondPassResetTimer = 48000;
      self->_secondPassAccepted = 0;
      self->_secondPassStopSent = 0;
      self->_secondPassBestScore = -INFINITY;
      if (self->_secondPassAudioLoggingEnabled)
      {
        v15 = +[VTAudioFileLog sharedInstance];
        [v15 startRecording];
      }

      v16 = [v6 objectForKeyedSubscript:@"AOPVoiceTriggerData"];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 objectForKeyedSubscript:@"trigger-woke-ap"];
        v19 = v18;
        if (v18 && [v18 BOOLValue])
        {
          self->_didWakeAP = 1;
        }

        v72 = v19;
        if (!self->_isRunningSATEnrollment)
        {
          v20 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.mSampleRate) = 0;
            _os_log_impl(&dword_223A31000, v20, OS_LOG_TYPE_DEFAULT, "Received AOPVoiceTrigger, need to send early detect", &buf, 2u);
          }

          +[VTUtilities systemUpTime];
          self->_earlyDetectTime = v21;
          self->_earlyDetecFiredMachTime = mach_absolute_time();
          v22 = +[VTPreferences sharedPreferences];
          v23 = [v22 useSiriActivationSPIForiOS];

          if (v23)
          {
            AFSiriActivationBuiltInMicVoiceTriggerPrewarm();
          }

          else
          {
            notify_post("com.apple.voicetrigger.EarlyDetect");
            v24 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.mSampleRate) = 0;
              _os_log_impl(&dword_223A31000, v24, OS_LOG_TYPE_DEFAULT, "Use legacy notification", &buf, 2u);
            }
          }
        }

        v25 = [v17 objectForKeyedSubscript:@"trigger-time"];
        v26 = [v6 objectForKeyedSubscript:@"currentHostTime"];
        v27 = v26;
        if (v25)
        {
          if (v26)
          {
            self->_triggerStartMachTime = [v25 unsignedLongLongValue];
            v28 = -[VTPhraseSpotter _applyExtraTime:to:](self, "_applyExtraTime:to:", [v25 unsignedLongLongValue], 0.5);
            if ([v27 unsignedLongLongValue] > v28)
            {
              v29 = [v27 unsignedLongLongValue];
              info.mSampleRate = 0.0;
              mach_timebase_info(&info);
              if (LODWORD(info.mSampleRate))
              {
                LODWORD(v30) = HIDWORD(info.mSampleRate);
                secondPassTrailingTime = self->_secondPassTrailingTime;
                v32 = secondPassTrailingTime + (v29 - v28) / (v30 / LODWORD(info.mSampleRate) * 1000000000.0);
                v33 = (v32 * 16000.0);
                if (v33 >= 1 && self->_secondPassResetTimer > v33)
                {
                  self->_secondPassResetTimer = v33;
                  v34 = VTLogContextFacilityVoiceTrigger;
                  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf.mSampleRate) = 134349568;
                    *(&buf.mSampleRate + 4) = v32;
                    LOWORD(buf.mFormatFlags) = 2050;
                    *(&buf.mFormatFlags + 2) = secondPassTrailingTime;
                    HIWORD(buf.mFramesPerPacket) = 1026;
                    buf.mBytesPerFrame = (v32 * 16000.0);
                    _os_log_impl(&dword_223A31000, v34, OS_LOG_TYPE_DEFAULT, "VT 2nd-pass is set to analyze %{public}.2f (%{public}.2f more) seconds (%{public}d samples)", &buf, 0x1Cu);
                  }
                }
              }
            }
          }
        }

        v35 = [v17 objectForKeyedSubscript:@"trigger-config-blob"];
        v36 = v35;
        self->_firstPassScore = -1000.0;
        if (v35)
        {
          if ([v35 length] >= 0x18 && objc_msgSend(v36, "bytes"))
          {
            self->_firstPassScore = *([v36 bytes] + 16);
          }

          else
          {
            v37 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
            {
              v69 = v37;
              v71 = [v36 length];
              v70 = [v36 bytes];
              LODWORD(buf.mSampleRate) = 67240448;
              HIDWORD(buf.mSampleRate) = v71;
              LOWORD(buf.mFormatID) = 1026;
              *(&buf.mFormatID + 2) = v70 == 0;
              _os_log_error_impl(&dword_223A31000, v69, OS_LOG_TYPE_ERROR, "firstPassOutData is invalid. VoiceTrigger is not able to decode size(%{public}d), isNull(%{public}d)", &buf, 0xEu);
            }
          }
        }
      }

      if (self->_useRecognizer)
      {
        self->_isRunningRecognizer = 1;
        *&self->_threshold = *&self->_combinedThreshold;
        self->_thresholdLogNearMisses = self->_combinedThresholdLogNearMisses;
        transcriber = self->_transcriber;
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __55__VTPhraseSpotter_prepareWithProperty_readyCompletion___block_invoke_487;
        v73[3] = &unk_2784ECFF8;
        v73[4] = self;
        [(VTTranscriber *)transcriber runRecognitionWithCallback:v73];
      }
    }

    if (+[VTUtilities VTIsHorseman])
    {
      self->_numChannels = 1;
      v39 = [v6 objectForKeyedSubscript:@"channelCount"];
      v40 = v39;
      if (v39 && [v39 integerValue] >= 2)
      {
        v41 = [v40 integerValue];
        self->_numChannels = v41;
        outAudioConverter = 0;
        buf.mSampleRate = 16000.0;
        *&buf.mFormatID = 0xC6C70636DLL;
        buf.mBytesPerFrame = 2 * v41;
        buf.mChannelsPerFrame = v41;
        buf.mBytesPerPacket = 2 * v41;
        buf.mFramesPerPacket = 1;
        *&buf.mBitsPerChannel = 16;
        *&info.mSampleRate = *&buf.mSampleRate;
        *&info.mBytesPerPacket = *&buf.mBytesPerPacket;
        *&info.mBitsPerChannel = 16;
        info.mBytesPerFrame = 2;
        info.mFormatFlags = 44;
        info.mBytesPerPacket = 2;
        v42 = AudioConverterNew(&buf, &info, &outAudioConverter);
        if (v42)
        {
          v43 = v42;
          v44 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            *v76 = 67240192;
            v77 = v43;
            _os_log_impl(&dword_223A31000, v44, OS_LOG_TYPE_DEFAULT, "Cannot create AudioConverter using AudioConverterNew: %{public}d", v76, 8u);
          }

          v45 = 0;
        }

        else
        {
          v45 = outAudioConverter;
        }

        self->_deinterleaver = v45;
        deinterleavedABL = self->_deinterleavedABL;
        if (deinterleavedABL)
        {
          free(deinterleavedABL);
        }

        v47 = malloc_type_malloc(24 * self->_numChannels, 0x10800404ACF7207uLL);
        self->_deinterleavedABL = v47;
        v47->mNumberBuffers = self->_numChannels;
      }
    }
  }

  [(VTCorruptDetector *)self->_corruptDetector reset];
  v48 = +[VTPreferences sharedPreferences];
  v49 = [v48 audioInjectionFilePath];

  if (v49)
  {
    self->_secondPassResetTimer = 48000;
    audioInjectionIndex = self->_audioInjectionIndex;
    if (audioInjectionIndex >= [v49 count])
    {
      v51 = 0;
      self->_audioInjectionIndex = 0;
    }

    else
    {
      v51 = self->_audioInjectionIndex;
    }

    v54 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v54;
      v56 = [v49 objectAtIndexedSubscript:v51];
      v57 = self->_audioInjectionIndex;
      LODWORD(buf.mSampleRate) = 138412546;
      *(&buf.mSampleRate + 4) = v56;
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = v57;
      _os_log_impl(&dword_223A31000, v55, OS_LOG_TYPE_DEFAULT, "::: Audio Injection for file : %@, %d", &buf, 0x12u);

      v51 = self->_audioInjectionIndex;
    }

    v58 = [v49 objectAtIndexedSubscript:v51];
    injectedAudioFilePath = self->_injectedAudioFilePath;
    self->_injectedAudioFilePath = v58;

    v60 = [VTAudioFileReader alloc];
    v61 = MEMORY[0x277CBEBC0];
    v62 = [v49 objectAtIndexedSubscript:self->_audioInjectionIndex];
    v63 = [v61 URLWithString:v62];
    v64 = [(VTAudioFileReader *)v60 initWithURL:v63];
    audioFileReader = self->_audioFileReader;
    self->_audioFileReader = v64;

    ++self->_audioInjectionIndex;
  }

  else
  {
    v52 = self->_audioFileReader;
    self->_audioFileReader = 0;

    v53 = self->_injectedAudioFilePath;
    self->_injectedAudioFilePath = 0;
  }

  v66 = MEMORY[0x223DF24E0](v7);

  readyForAnalyze = self->_readyForAnalyze;
  self->_readyForAnalyze = v66;

  [(VTPhraseSpotter *)self _performReadyCompletion];
  v68 = [v6 copy];
  [(VTPhraseSpotter *)self _logPrepareProperty:v68];
}

void __55__VTPhraseSpotter_prepareWithProperty_readyCompletion___block_invoke_487(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 523) & 1) == 0)
  {
    v3 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "Received first recognition result...", v5, 2u);
      v1 = *(a1 + 32);
    }

    *(v1 + 523) = 1;
    v4 = *(a1 + 32);
    if (*(v4 + 522) == 1)
    {
      *(v4 + 480) = -10101;
    }
  }
}

void __55__VTPhraseSpotter_prepareWithProperty_readyCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VTLogContextFacilityVoiceTrigger;
  if (a2)
  {
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "AFSiriActivationBuiltInMicVoiceTriggerPrewarm success", &v8, 2u);
    }
  }

  else if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = [v4 localizedDescription];
    v8 = 138543362;
    v9 = v7;
    _os_log_error_impl(&dword_223A31000, v6, OS_LOG_TYPE_ERROR, "AFSiriActivationBuiltInMicVoiceTriggerPrewarm failed : %{public}@", &v8, 0xCu);
  }
}

- (VTPhraseSpotter)initWithConfig:(id)a3 assetDir:(id)a4 runMode:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[VTPreferences sharedPreferences];
  v11 = [v10 corespeechDaemonEnabled];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [(VTPhraseSpotter *)self init];
    v14 = v13;
    if (v13)
    {
      languageCode = v13->_languageCode;
      v13->_languageCode = @"XX-XX";

      if (a5 <= 2)
      {
        *(&v14->super.isa + qword_223B14108[a5]) = 1;
      }

      v14->_phraseSpotterEnabled = 1;
      v14->_phraseSpotterBypassed = 0;
      v14->_externalPhraseSpotterRunning = 0;
      configVersion = v14->_configVersion;
      v14->_configVersion = @"1.0";

      objc_storeStrong(&v14->_configLanguageCode, v14->_languageCode);
      [(VTPhraseSpotter *)v14 _configureWithConfig:v8 resourcePath:v9];
      dispatch_sync(v14->_ndetectQueue, &__block_literal_global_463);
      objc_storeStrong(&_currentSpotter, v14);
    }

    self = v14;
    v12 = self;
  }

  return v12;
}

- (VTPhraseSpotter)initWithConfig:(id)a3 resourcePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[VTPreferences sharedPreferences];
  v9 = [v8 corespeechDaemonEnabled];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(VTPhraseSpotter *)self init];
    v12 = v11;
    if (v11)
    {
      [(VTPhraseSpotter *)v11 _commonInit];
      languageCode = v12->_languageCode;
      v12->_languageCode = @"??-??";

      [(VTPhraseSpotter *)v12 _configureWithConfig:v6 resourcePath:v7];
    }

    dispatch_sync(v12->_ndetectQueue, &__block_literal_global_6584);
    objc_storeStrong(&_currentSpotter, v12);
    self = v12;
    v10 = self;
  }

  return v10;
}

- (VTPhraseSpotter)initWithLanguageCodeForSATEnrollment:(id)a3
{
  v5 = a3;
  v6 = +[VTPreferences sharedPreferences];
  v7 = [v6 corespeechDaemonEnabled];

  if ((v7 & 1) == 0)
  {
    v46.receiver = self;
    v46.super_class = VTPhraseSpotter;
    v9 = [(VTPhraseSpotter *)&v46 init];
    v10 = v9;
    if (!v9)
    {
LABEL_20:
      objc_storeStrong(&_currentSpotter, v10);
      self = v10;
      v8 = self;
      goto LABEL_21;
    }

    v9->_isRunningSATEnrollment = 1;
    v9->_phraseSpotterEnabled = 1;
    v9->_phraseSpotterBypassed = 0;
    v9->_externalPhraseSpotterRunning = 0;
    v9->_hardwareSampleRate = 0.0;
    objc_storeStrong(&v9->_languageCode, a3);
    if (v10->_ndetectQueue)
    {
      if (v10->_assetChangedQueue)
      {
LABEL_6:
        v11 = dispatch_queue_create("com.apple.fides-record-creation", 0);
        desQueue = v10->_desQueue;
        v10->_desQueue = v11;

        v13 = +[VTAssetManager sharedInstance];
        v14 = [v13 installedAssetForLanguage:v10->_languageCode];

        if (v14)
        {
          v15 = [v14 path];
          v16 = [v15 stringByAppendingPathComponent:@"config.txt"];
          v17 = [v14 compatibilityVersion];
          v18 = [v17 stringValue];
          configVersion = v10->_configVersion;
          v10->_configVersion = v18;

          if (v10->_configVersion)
          {
            v20 = [v14 version];

            if (v20)
            {
              v21 = v10->_configVersion;
              v22 = [v14 version];
              v23 = [v22 stringValue];
              v24 = [(NSString *)v21 stringByAppendingFormat:@".%@", v23];
              v25 = v10->_configVersion;
              v10->_configVersion = v24;
            }

            if (v10->_configVersion)
            {
              v26 = [v14 footprint];

              if (v26)
              {
                v27 = v10->_configVersion;
                v28 = [v14 footprint];
                v29 = [(NSString *)v27 stringByAppendingFormat:@".%@", v28];
                v30 = v10->_configVersion;
                v10->_configVersion = v29;
              }
            }
          }

          v31 = +[VTAggregator sharedAggregator];
          [v31 setAssetString:v10->_configVersion];

          objc_storeStrong(&v10->_configLanguageCode, v10->_languageCode);
          [(VTPhraseSpotter *)v10 _configureWithConfig:v16 resourcePath:v15];
        }

        else
        {
          v37 = VTLogContextFacilityVoiceTrigger;
          if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_223A31000, v37, OS_LOG_TYPE_DEFAULT, "::: asset is not available for SAT enrollment, cannot do anything", buf, 2u);
          }

          v10->_phraseSpotterEnabled = 0;
        }

        ndetectQueue = v10->_ndetectQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __56__VTPhraseSpotter_initWithLanguageCodeForSATEnrollment___block_invoke;
        block[3] = &unk_2784ECFF8;
        v39 = v10;
        v44 = v39;
        dispatch_async(ndetectQueue, block);
        [(VTPhraseSpotter *)v39 _resetCounters];
        v40 = objc_alloc_init(VTCorruptDetector);
        corruptDetector = v39->_corruptDetector;
        v39->_corruptDetector = v40;

        goto LABEL_20;
      }
    }

    else
    {
      v32 = dispatch_queue_create("voiceTrigger reload queue", 0);
      v33 = v10->_ndetectQueue;
      v10->_ndetectQueue = v32;

      if (v10->_assetChangedQueue)
      {
        goto LABEL_6;
      }
    }

    v34 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v35 = dispatch_queue_create("voiceTrigger asset changed", v34);
    assetChangedQueue = v10->_assetChangedQueue;
    v10->_assetChangedQueue = v35;

    goto LABEL_6;
  }

  v8 = 0;
LABEL_21:

  return v8;
}

- (VTPhraseSpotter)initWithHardwareSampleRate:(double)a3 readyCompletion:(id)a4
{
  v6 = a4;
  v7 = +[VTPreferences sharedPreferences];
  v8 = [v7 corespeechDaemonEnabled];

  if (v8)
  {
LABEL_2:
    v9 = 0;
    goto LABEL_16;
  }

  v10 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "VT initialization start", buf, 2u);
  }

  v21.receiver = self;
  v21.super_class = VTPhraseSpotter;
  self = [(VTPhraseSpotter *)&v21 init];
  if (+[VTUtilities VTIsHorseman])
  {
    v11 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "VoiceTrigger framework not available. Returning nil for VTPhraseSpotter", buf, 2u);
      v9 = 0;
      goto LABEL_16;
    }

    goto LABEL_2;
  }

  if (self)
  {
    [(VTPhraseSpotter *)self _initDetector];
    self->_hardwareSampleRate = a3;
    [(VTPhraseSpotter *)self _commonInit];
    [(VTPhraseSpotter *)self _configureWithDefaults];
    if (v6)
    {
      v12 = MEMORY[0x223DF24E0](v6);
      readyCompletion = self->_readyCompletion;
      self->_readyCompletion = v12;

      [(VTPhraseSpotter *)self _performReadyCompletion];
    }

    else
    {
      ndetectQueue = self->_ndetectQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__VTPhraseSpotter_initWithHardwareSampleRate_readyCompletion___block_invoke;
      block[3] = &unk_2784ECFF8;
      v20 = self;
      dispatch_sync(ndetectQueue, block);
    }

    v15 = dispatch_queue_create("com.apple.fides-record-creation", 0);
    desQueue = self->_desQueue;
    self->_desQueue = v15;
  }

  objc_storeStrong(&_currentSpotter, self);
  self->_audioInjectionIndex = 0;
  v17 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v17, OS_LOG_TYPE_DEFAULT, "VT initialization complete", buf, 2u);
  }

  self = self;
  v9 = self;
LABEL_16:

  return v9;
}

void __62__VTPhraseSpotter_initWithHardwareSampleRate_readyCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

- (VTPhraseSpotter)initWithHardwareSampleRate:(double)a3
{
  v5 = +[VTPreferences sharedPreferences];
  v6 = [v5 corespeechDaemonEnabled];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    self = [(VTPhraseSpotter *)self initWithHardwareSampleRate:0 readyCompletion:a3];
    v7 = self;
  }

  return v7;
}

- (VTPhraseSpotter)init
{
  v3 = +[VTPreferences sharedPreferences];
  v4 = [v3 corespeechDaemonEnabled];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    self = [(VTPhraseSpotter *)self initWithHardwareSampleRate:16000.0];
    v5 = self;
  }

  return v5;
}

+ (void)initialize
{
  if (VTLogInitIfNeeded_once != -1)
  {
    dispatch_once(&VTLogInitIfNeeded_once, &__block_literal_global_30);
  }
}

@end