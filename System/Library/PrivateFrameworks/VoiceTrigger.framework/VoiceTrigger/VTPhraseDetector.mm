@interface VTPhraseDetector
- (BOOL)_isSecondChanceCandidateWithScore:(float)score effectiveThreshold:(float)threshold secondChanceThreshold:(float)chanceThreshold;
- (VTPhraseDetector)init;
- (id)_getResultWithPhId:(unint64_t)id phraseDetectorInfo:(id)info ndapiResult:(id)result quasarResult:(id)quasarResult forceMaximized:(BOOL)maximized;
- (id)_phraseDetectorResultFromNDAPIResults:(id)results quasarResult:(id)result forceMaximized:(BOOL)maximized;
- (id)_resultCopyWithKeywordDetectorDecision:(unint64_t)decision bestPhId:(unint64_t)id phraseResult:(id)result;
- (id)getAnalyzedResultFromFloatAudioBuffer:(id)buffer numSamples:(unint64_t)samples;
- (id)getAnalyzedResultFromFlushedAudio;
- (id)getAnalyzedResultFromInt16AudioBuffer:(id)buffer numSamples:(unint64_t)samples;
- (id)phraseDetectorInfoFromPhId:(unint64_t)id;
- (void)dealloc;
- (void)reset;
- (void)setConfig:(id)config;
- (void)setRunAsSecondChance:(BOOL)chance;
@end

@implementation VTPhraseDetector

- (id)_resultCopyWithKeywordDetectorDecision:(unint64_t)decision bestPhId:(unint64_t)id phraseResult:(id)result
{
  v31 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v8 = [resultCopy objectAtIndexedSubscript:id];
  decision = [v8 decision];

  if (decision == decision)
  {
    v10 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      decisionCopy2 = decision;
      v29 = 2048;
      idCopy = id;
      _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "Reporting decision (%tu) from (%tu)", buf, 0x16u);
    }

    v11 = [resultCopy objectAtIndexedSubscript:id];
    v12 = v11;
LABEL_16:
    v17 = [v11 copy];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = resultCopy;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if ([v11 decision] == decision)
          {
            v18 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v18;
              phId = [v11 phId];
              *buf = 134218240;
              decisionCopy2 = decision;
              v29 = 2048;
              idCopy = phId;
              _os_log_impl(&dword_223A31000, v19, OS_LOG_TYPE_DEFAULT, "Reporting decision (%tu) from (%tu)", buf, 0x16u);
            }

            goto LABEL_16;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)_isSecondChanceCandidateWithScore:(float)score effectiveThreshold:(float)threshold secondChanceThreshold:(float)chanceThreshold
{
  if (self->_isSecondChance)
  {
    return 0;
  }

  return score >= chanceThreshold && score < threshold;
}

- (id)_getResultWithPhId:(unint64_t)id phraseDetectorInfo:(id)info ndapiResult:(id)result quasarResult:(id)quasarResult forceMaximized:(BOOL)maximized
{
  maximizedCopy = maximized;
  v88 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  resultCopy = result;
  quasarResultCopy = quasarResult;
  if ([(NSMutableArray *)self->_phraseResult count]<= id)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v15 = [(NSMutableArray *)self->_phraseResult objectAtIndex:id];
  phraseConfig = [infoCopy phraseConfig];
  if (v15)
  {
    [v15 ndapiScore];
    v18 = v17;
  }

  else
  {
    v18 = -INFINITY;
  }

  hasPendingNearMiss = [infoCopy hasPendingNearMiss];
  [infoCopy effectiveKeywordThreshold];
  v21 = v20;
  [phraseConfig loggingThreshold];
  v23 = v22;
  [phraseConfig ndapiScaleFactor];
  v25 = v24;
  v26 = phraseConfig;
  [phraseConfig recognizerScoreScaleFactor];
  v28 = v27;
  v75 = resultCopy;
  v29 = v15;
  if (quasarResultCopy)
  {
    [quasarResultCopy triggerConfidence];
    v31 = v30;
  }

  else
  {
    v31 = -1000.0;
  }

  idCopy = id;
  v74 = quasarResultCopy;
  [v75 bestScore];
  v34 = v33;
  samplesFed = [v75 samplesFed];
  v36 = _getResultWithPhId_phraseDetectorInfo_ndapiResult_quasarResult_forceMaximized__heartbeat;
  if (0xCCCCCCCCCCCCCCCDLL * _getResultWithPhId_phraseDetectorInfo_ndapiResult_quasarResult_forceMaximized__heartbeat <= 0x3333333333333333)
  {
    v37 = VTLogContextFacilityVoiceTrigger;
    v38 = *&samplesFed;
    v39 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO);
    samplesFed = *&v38;
    if (v39)
    {
      *buf = 134219264;
      v77 = idCopy;
      v78 = 2050;
      v79 = v34;
      v80 = 2050;
      v81 = v38;
      v82 = 2050;
      v83 = v31;
      v84 = 2050;
      v85 = v25;
      v86 = 2050;
      v87 = v28;
      _os_log_impl(&dword_223A31000, v37, OS_LOG_TYPE_INFO, "[(%lu)] : NDAPI second pass best score = %{public}f with analyzed samples:                   %{public}tu with quasar score = %{public}f, ndapi scale factor = %{public}f, quasar scale factor = %{public}f", buf, 0x3Eu);
      samplesFed = *&v38;
      v36 = _getResultWithPhId_phraseDetectorInfo_ndapiResult_quasarResult_forceMaximized__heartbeat;
    }
  }

  v40 = v36 + 1;
  _getResultWithPhId_phraseDetectorInfo_ndapiResult_quasarResult_forceMaximized__heartbeat = v36 + 1;
  v41 = v34;
  if (self->_syncKeywordAnalyzerQuasar)
  {
    v41 = (v25 * v34) + v31 * v28;
  }

  v42 = v29;
  v43 = idCopy;
  if (v18 >= v34 || maximizedCopy)
  {
    if (v41 >= v21)
    {
      v61 = VTLogContextFacilityVoiceTrigger;
      v45 = v26;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v62 = v61;
        resultCopy = v75;
        *&v63 = COERCE_DOUBLE([v75 samplesFed]);
        *buf = 134218752;
        v77 = v43;
        v78 = 2050;
        v79 = *&v63;
        v80 = 2050;
        v81 = v41;
        v82 = 2050;
        v83 = v21;
        _os_log_impl(&dword_223A31000, v62, OS_LOG_TYPE_DEFAULT, "[(%tu)] : Trigger detected with %{public}tu analyzed samples in NDAPI,                   combined score = %{public}lf, effective threshold = %{public}f", buf, 0x2Au);

        v44 = 1;
        v46 = hasPendingNearMiss;
        goto LABEL_19;
      }

      v44 = 1;
      goto LABEL_17;
    }

    v45 = v26;
    if (v41 < v23)
    {
      v46 = hasPendingNearMiss;
      if (!maximizedCopy)
      {
        v44 = 0;
        goto LABEL_18;
      }

      v58 = *&samplesFed;
      v59 = hasPendingNearMiss;
      v60 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v77 = idCopy;
        v78 = 2050;
        v79 = v58;
        v43 = idCopy;
        v80 = 2050;
        v81 = v41;
        _os_log_impl(&dword_223A31000, v60, OS_LOG_TYPE_DEFAULT, "[(%tu)] : Notify second pass reject at: %{public}tu                   with best score up to: %{public}.3f", buf, 0x20u);
        v44 = 3;
LABEL_33:
        v46 = v59;
        goto LABEL_18;
      }

      v44 = 3;
      goto LABEL_43;
    }

    v59 = hasPendingNearMiss;
    if (maximizedCopy)
    {
LABEL_31:
      v64 = *&samplesFed;
      v65 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v77 = idCopy;
        v78 = 2050;
        v79 = v64;
        v43 = idCopy;
        v80 = 2050;
        v81 = v41;
        _os_log_impl(&dword_223A31000, v65, OS_LOG_TYPE_DEFAULT, "[(%tu)] : Detected near miss at %{public}lu samples                       with best score up to: %{public}.3f", buf, 0x20u);
        v44 = 2;
        goto LABEL_33;
      }

      v44 = 2;
LABEL_43:
      v46 = v59;
      v43 = idCopy;
      goto LABEL_18;
    }

    if (hasPendingNearMiss)
    {
      nearMissDelayTimeout = self->_nearMissDelayTimeout;
      nearMissCandidateDetectedSamples = self->_nearMissCandidateDetectedSamples;
      if (nearMissDelayTimeout + nearMissCandidateDetectedSamples < samplesFed)
      {
        goto LABEL_31;
      }

      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v40, 1) <= 0x1999999999999999uLL)
      {
        v68 = samplesFed;
        v69 = VTLogContextFacilityVoiceTrigger;
        resultCopy = v75;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v77 = v43;
          v78 = 2050;
          *&v79 = v68 - nearMissCandidateDetectedSamples + nearMissDelayTimeout;
          _os_log_impl(&dword_223A31000, v69, OS_LOG_TYPE_INFO, "[(%tu)] : Waiting for logging near miss                               until timeout %{public}lu samples", buf, 0x16u);
          v46 = 1;
          v44 = 0;
        }

        else
        {
          v44 = 0;
          v46 = 1;
        }

        goto LABEL_19;
      }
    }

    else
    {
      self->_nearMissCandidateDetectedSamples = samplesFed;
      v70 = VTLogContextFacilityVoiceTrigger;
      v71 = *&samplesFed;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v72 = self->_nearMissDelayTimeout;
        *buf = 134218496;
        v77 = idCopy;
        v78 = 2050;
        v79 = v71;
        v80 = 2050;
        v81 = *&v72;
        _os_log_impl(&dword_223A31000, v70, OS_LOG_TYPE_DEFAULT, "[(%tu)] : Detected near miss candidate at %{public}tu,                       let's wait %{public}tu samples to log", buf, 0x20u);
      }
    }

    v44 = 0;
    v46 = 1;
    goto LABEL_18;
  }

  v44 = 0;
  v45 = v26;
LABEL_17:
  v46 = hasPendingNearMiss;
LABEL_18:
  resultCopy = v75;
LABEL_19:
  [infoCopy setHasPendingNearMiss:v46];
  phraseConfig2 = [infoCopy phraseConfig];
  [phraseConfig2 secondChanceThreshold];
  LODWORD(v49) = v48;
  *&v50 = v41;
  *&v51 = v21;
  v52 = [(VTPhraseDetector *)self _isSecondChanceCandidateWithScore:v50 effectiveThreshold:v51 secondChanceThreshold:v49];

  v53 = [VTSinglePhraseResult alloc];
  *&v54 = v31;
  *&v55 = v41;
  *&v56 = v34;
  v19 = [(VTSinglePhraseResult *)v53 initWithPhId:v43 keywordDetectorDecision:v44 combinedScore:resultCopy ndapiScore:self->_isSecondChance ndapiResult:v52 recognizerScore:self->_syncKeywordAnalyzerQuasar != 0 isSecondChance:v55 isSecondChanceCandidate:v56 isRunningQuasar:v54];

  quasarResultCopy = v74;
LABEL_20:

  return v19;
}

- (id)_phraseDetectorResultFromNDAPIResults:(id)results quasarResult:(id)result forceMaximized:(BOOL)maximized
{
  maximizedCopy = maximized;
  v65 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  resultCopy = result;
  v47 = resultsCopy;
  v10 = [resultsCopy count];
  if (v10 >= [(NSMutableArray *)self->_phraseDetectorInfos count])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = self->_phraseDetectorInfos;
    v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v13)
    {
      v15 = v13;
      v16 = 0;
      v17 = *v57;
      *&v14 = 134217984;
      v45 = v14;
      v18 = resultCopy;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v57 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v56 + 1) + 8 * i);
          if ([resultCopy count] <= v16)
          {
            v22 = 0;
          }

          else
          {
            v22 = [resultCopy objectAtIndex:v16];
          }

          v23 = [v47 objectAtIndex:v16];
          v24 = [(VTPhraseDetector *)self _getResultWithPhId:v16 phraseDetectorInfo:v21 ndapiResult:v23 quasarResult:v22 forceMaximized:maximizedCopy];

          if (v24 && [(NSMutableArray *)self->_phraseResult count]> v16)
          {
            [(NSMutableArray *)self->_phraseResult setObject:v24 atIndexedSubscript:v16];
          }

          else
          {
            v20 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
            {
              *buf = v45;
              v63 = v16;
              _os_log_error_impl(&dword_223A31000, v20, OS_LOG_TYPE_ERROR, "Received invalid result with %tu", buf, 0xCu);
            }
          }

          ++v16;

          resultCopy = v18;
        }

        v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v15);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v25 = self->_phraseResult;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v26)
    {
      v27 = v26;
      phId = 0;
      v29 = *v53;
      v30 = -INFINITY;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v53 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v32 = *(*(&v52 + 1) + 8 * j);
          [v32 ndapiScore];
          if (v33 > v30)
          {
            [v32 ndapiScore];
            v30 = v34;
            phId = [v32 phId];
          }
        }

        v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v27);
    }

    else
    {
      phId = 0;
    }

    v35 = [(VTPhraseDetector *)self _resultCopyWithKeywordDetectorDecision:1 bestPhId:phId phraseResult:self->_phraseResult];
    if (v35)
    {
      goto LABEL_31;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v36 = self->_phraseResult;
    v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v49;
LABEL_34:
      v40 = 0;
      while (1)
      {
        if (*v49 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v48 + 1) + 8 * v40);
        if (![(NSMutableArray *)v41 decision])
        {
          break;
        }

        if (v38 == ++v40)
        {
          v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v48 objects:v60 count:16];
          if (v38)
          {
            goto LABEL_34;
          }

          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_40:

      v35 = [(VTPhraseDetector *)self _resultCopyWithKeywordDetectorDecision:2 bestPhId:phId phraseResult:self->_phraseResult];
      if (v35 || ([(VTPhraseDetector *)self _resultCopyWithKeywordDetectorDecision:3 bestPhId:phId phraseResult:self->_phraseResult], (v35 = objc_claimAutoreleasedReturnValue()) != 0))
      {
LABEL_31:
        v12 = v35;
        goto LABEL_46;
      }

      v42 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_223A31000, v42, OS_LOG_TYPE_FAULT, "Phrase detector results fall-into unexpected use case", buf, 2u);
      }

      v41 = [(NSMutableArray *)self->_phraseResult objectAtIndexedSubscript:phId];
      v36 = v41;
    }

    v12 = [(NSMutableArray *)v41 copy];

    goto LABEL_46;
  }

  v11 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    v44 = v11;
    *buf = 67109120;
    LODWORD(v63) = [resultsCopy count];
    _os_log_error_impl(&dword_223A31000, v44, OS_LOG_TYPE_ERROR, "Unable to process due to number of result mismatch, ndapiResults number = %d", buf, 8u);
  }

  v12 = 0;
LABEL_46:

  return v12;
}

- (id)phraseDetectorInfoFromPhId:(unint64_t)id
{
  if ([(NSMutableArray *)self->_phraseDetectorInfos count]<= id)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_phraseDetectorInfos objectAtIndex:id];
  }

  return v5;
}

- (id)getAnalyzedResultFromFlushedAudio
{
  getAnalyzedResults = [(VTKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI getAnalyzedResults];
  getResultsFromFlushedAudio = [(VTSyncKeywordAnalyzerQuasar *)self->_syncKeywordAnalyzerQuasar getResultsFromFlushedAudio];
  v5 = [(VTPhraseDetector *)self _phraseDetectorResultFromNDAPIResults:getAnalyzedResults quasarResult:getResultsFromFlushedAudio forceMaximized:1];

  return v5;
}

- (id)getAnalyzedResultFromInt16AudioBuffer:(id)buffer numSamples:(unint64_t)samples
{
  if (buffer)
  {
    syncKeywordAnalyzerNDAPI = self->_syncKeywordAnalyzerNDAPI;
    bufferCopy = buffer;
    v8 = [(VTKeywordAnalyzerNDAPI *)syncKeywordAnalyzerNDAPI getAnalyzedResultsFromInt16AudioBuffer:bufferCopy numSamples:samples];
    v9 = [(VTSyncKeywordAnalyzerQuasar *)self->_syncKeywordAnalyzerQuasar getAnalyzedResultsFromInt16AudioBuffer:bufferCopy numSamples:samples];

    v10 = [(VTPhraseDetector *)self _phraseDetectorResultFromNDAPIResults:v8 quasarResult:v9 forceMaximized:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)getAnalyzedResultFromFloatAudioBuffer:(id)buffer numSamples:(unint64_t)samples
{
  if (buffer)
  {
    syncKeywordAnalyzerNDAPI = self->_syncKeywordAnalyzerNDAPI;
    bufferCopy = buffer;
    v8 = [(VTKeywordAnalyzerNDAPI *)syncKeywordAnalyzerNDAPI getAnalyzedResultsFromFloatAudioBuffer:bufferCopy numSamples:samples];
    v9 = [(VTSyncKeywordAnalyzerQuasar *)self->_syncKeywordAnalyzerQuasar getAnalyzedResultsFromFloatAudioBuffer:bufferCopy numSamples:samples];

    v10 = [(VTPhraseDetector *)self _phraseDetectorResultFromNDAPIResults:v8 quasarResult:v9 forceMaximized:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setConfig:(id)config
{
  v93 = *MEMORY[0x277D85DE8];
  configCopy = config;
  phraseConfigs = [configCopy phraseConfigs];
  v6 = [phraseConfigs count];

  if (v6)
  {
    [(NSMutableArray *)self->_phraseDetectorInfos removeAllObjects];
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    phraseConfigs2 = [configCopy phraseConfigs];
    v8 = [phraseConfigs2 countByEnumeratingWithState:&v82 objects:v92 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v83;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v83 != v10)
          {
            objc_enumerationMutation(phraseConfigs2);
          }

          v12 = [[VTPhraseDetectorInfo alloc] initWithPhraseConfig:*(*(&v82 + 1) + 8 * i)];
          if (v12)
          {
            [(NSMutableArray *)self->_phraseDetectorInfos addObject:v12];
          }
        }

        v9 = [phraseConfigs2 countByEnumeratingWithState:&v82 objects:v92 count:16];
      }

      while (v9);
    }

    v13 = [VTKeywordAnalyzerNDAPI alloc];
    configPathNDAPI = [configCopy configPathNDAPI];
    resourcePath = [configCopy resourcePath];
    v16 = [(VTKeywordAnalyzerNDAPI *)v13 initWithConfigPath:configPathNDAPI resourcePath:resourcePath];
    syncKeywordAnalyzerNDAPI = self->_syncKeywordAnalyzerNDAPI;
    self->_syncKeywordAnalyzerNDAPI = v16;

    v73 = configCopy;
    if (self->_syncKeywordAnalyzerNDAPI && +[VTUtilities supportPremiumAssets](VTUtilities, "supportPremiumAssets") && [configCopy useRecognizerCombination])
    {
      array = [MEMORY[0x277CBEB18] array];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v19 = self->_phraseDetectorInfos;
      v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v78 objects:v91 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v79;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v79 != v22)
            {
              objc_enumerationMutation(v19);
            }

            phraseConfig = [*(*(&v78 + 1) + 8 * j) phraseConfig];
            recognizerToken = [phraseConfig recognizerToken];
            [array addObject:recognizerToken];
          }

          v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v78 objects:v91 count:16];
        }

        while (v21);
      }

      overwritingVoiceTriggerMLock = +[VTUtilities horsemanDeviceType]== 3;
      v63 = +[VTPreferences sharedPreferences];
      shouldOverwriteVoiceTriggerMLock = [v63 shouldOverwriteVoiceTriggerMLock];

      if (shouldOverwriteVoiceTriggerMLock)
      {
        v65 = +[VTPreferences sharedPreferences];
        overwritingVoiceTriggerMLock = [v65 overwritingVoiceTriggerMLock];
      }

      v66 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *&v67 = COERCE_DOUBLE(@"disabled");
        if (overwritingVoiceTriggerMLock)
        {
          *&v67 = COERCE_DOUBLE(@"enabled");
        }

        *buf = 138412290;
        v87 = *&v67;
        _os_log_impl(&dword_223A31000, v66, OS_LOG_TYPE_DEFAULT, "VoiceTrigger memory lock %@", buf, 0xCu);
      }

      v68 = [VTSyncKeywordAnalyzerQuasar alloc];
      configPathRecognizer = [v73 configPathRecognizer];
      v70 = [(VTSyncKeywordAnalyzerQuasar *)v68 initWithConfigPath:configPathRecognizer triggerTokensArray:array preventDuplicatedReset:+[VTUtilities memoryLock:"VTIsHorseman"], overwritingVoiceTriggerMLock];
      syncKeywordAnalyzerQuasar = self->_syncKeywordAnalyzerQuasar;
      self->_syncKeywordAnalyzerQuasar = v70;
    }

    else
    {
      array = self->_syncKeywordAnalyzerQuasar;
      self->_syncKeywordAnalyzerQuasar = 0;
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v26 = self->_phraseDetectorInfos;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v74 objects:v90 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v75;
      v72 = 134349312;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v75 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v34 = *(*(&v74 + 1) + 8 * k);
          phraseConfig2 = [v34 phraseConfig];
          [phraseConfig2 threshold];
          v37 = v36;
          [phraseConfig2 secondChanceThreshold];
          v39 = v38;
          [phraseConfig2 loggingThreshold];
          v41 = v40;
          [phraseConfig2 ndapiScaleFactor];
          v48 = LODWORD(v42);
          if (self->_syncKeywordAnalyzerNDAPI)
          {
            if (self->_syncKeywordAnalyzerQuasar)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v53 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_223A31000, v53, OS_LOG_TYPE_DEFAULT, "Reset all thresholds to HUGE_VALF since NDAPI is nil", buf, 2u);
            }

            v41 = INFINITY;
            v39 = INFINITY;
            v37 = INFINITY;
            if (self->_syncKeywordAnalyzerQuasar)
            {
LABEL_32:
              [phraseConfig2 recognizerScoreOffset];
              v50 = v49;
              v37 = v37 + v49;
              v39 = v39 + v49;
              [phraseConfig2 recognizerScoreScaleFactor];
              v52 = v51;
              [phraseConfig2 keywordRejectLoggingThreshold];
              LODWORD(v31) = LODWORD(v42);
              if (!self->_syncKeywordAnalyzerNDAPI)
              {
                goto LABEL_27;
              }

              goto LABEL_38;
            }
          }

          v50 = 0.0;
          LODWORD(v31) = 2139095040;
          v52 = 0;
          if (!self->_syncKeywordAnalyzerNDAPI)
          {
            goto LABEL_27;
          }

LABEL_38:
          if (!self->_syncKeywordAnalyzerQuasar)
          {
            v54 = LODWORD(v31);
            useRecognizerCombination = [v73 useRecognizerCombination];
            LODWORD(v31) = v54;
            if (useRecognizerCombination)
            {
              [(VTKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI getThreshold];
              v37 = v56;
              [(VTKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI getLoggingThreshold];
              v41 = v57;
              [(VTKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI getRejectLoggingThreshold];
              v59 = v58;
              v60 = VTLogContextFacilityVoiceTrigger;
              if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v72;
                v87 = v37;
                v88 = 2050;
                v89 = v41;
                _os_log_impl(&dword_223A31000, v60, OS_LOG_TYPE_DEFAULT, "Using threshold from NDAPI since we are not able to use Quasar, threshold = %{public}f, logging threshold = %{public}f", buf, 0x16u);
              }

              LODWORD(v31) = v59;
            }
          }

LABEL_27:
          *&v42 = v37;
          *&v43 = v39;
          *&v44 = v41;
          LODWORD(v45) = v48;
          *&v46 = v50;
          LODWORD(v47) = v52;
          v32 = [phraseConfig2 copyWithThreshold:v42 secondChanceThreshold:v43 loggingThreshold:v44 ndapiScaleFactor:v45 recognizerScoreOffset:v46 recognizerScoreScaleFactor:v47 keywordRejectLoggingThreshold:v31];
          [v34 setPhraseConfig:v32];
          *&v33 = v37;
          [v34 setEffectiveKeywordThreshold:v33];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v74 objects:v90 count:16];
      }

      while (v28);
    }

    [(VTPhraseDetector *)self reset];
    configCopy = v73;
  }

  else
  {
    v61 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_223A31000, v61, OS_LOG_TYPE_ERROR, "Invalid assets config!", buf, 2u);
    }
  }
}

- (void)reset
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, &unk_223B261F6, v10, 2u);
  }

  [(VTKeywordAnalyzerNDAPI *)self->_syncKeywordAnalyzerNDAPI reset];
  [(VTSyncKeywordAnalyzerQuasar *)self->_syncKeywordAnalyzerQuasar reset];
  [(NSMutableArray *)self->_phraseResult removeAllObjects];
  if ([(NSMutableArray *)self->_phraseDetectorInfos count])
  {
    v4 = 0;
    do
    {
      v5 = [VTSinglePhraseResult alloc];
      LODWORD(v6) = -8388608;
      LODWORD(v7) = -8388608;
      LODWORD(v8) = -998637568;
      v9 = [(VTSinglePhraseResult *)v5 initWithPhId:v4 keywordDetectorDecision:0 combinedScore:0 ndapiScore:0 ndapiResult:0 recognizerScore:self->_syncKeywordAnalyzerQuasar != 0 isSecondChance:v6 isSecondChanceCandidate:v7 isRunningQuasar:v8];
      [(NSMutableArray *)self->_phraseResult addObject:v9];

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_phraseDetectorInfos count]);
  }
}

- (void)setRunAsSecondChance:(BOOL)chance
{
  v30 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  selfCopy = self;
  v3 = self->_phraseDetectorInfos;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    if (chance)
    {
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          phraseConfig = [v9 phraseConfig];
          v11 = phraseConfig;
          if (phraseConfig)
          {
            [phraseConfig secondChanceThreshold];
            v13 = v12;
            [v11 threshold];
            *&v14 = v13;
            [v9 setEffectiveKeywordThreshold:v14];
            v15 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134349056;
              v28 = v13;
              _os_log_impl(&dword_223A31000, v15, OS_LOG_TYPE_DEFAULT, "Using second chance threshold for voice trigger second pass: %{public}f", buf, 0xCu);
            }
          }

          else
          {
            v8 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_223A31000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch config", buf, 2u);
            }
          }
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v5);
    }

    else
    {
      do
      {
        for (j = 0; j != v5; ++j)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v17 = *(*(&v23 + 1) + 8 * j);
          phraseConfig2 = [v17 phraseConfig];
          v19 = phraseConfig2;
          if (phraseConfig2)
          {
            [phraseConfig2 secondChanceThreshold];
            [v19 threshold];
            [v17 setEffectiveKeywordThreshold:?];
          }

          else
          {
            v20 = VTLogContextFacilityVoiceTrigger;
            if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_223A31000, v20, OS_LOG_TYPE_ERROR, "Failed to fetch config", buf, 2u);
            }
          }
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v5);
    }
  }

  selfCopy->_isSecondChance = chance;
}

- (void)dealloc
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "VTPhraseDetector Deallocated", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = VTPhraseDetector;
  [(VTPhraseDetector *)&v4 dealloc];
}

- (VTPhraseDetector)init
{
  v9.receiver = self;
  v9.super_class = VTPhraseDetector;
  v2 = [(VTPhraseDetector *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_nearMissDelayTimeout = 8000;
    array = [MEMORY[0x277CBEB18] array];
    phraseDetectorInfos = v3->_phraseDetectorInfos;
    v3->_phraseDetectorInfos = array;

    array2 = [MEMORY[0x277CBEB18] array];
    phraseResult = v3->_phraseResult;
    v3->_phraseResult = array2;
  }

  return v3;
}

@end