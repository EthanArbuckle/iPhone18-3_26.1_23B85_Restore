@interface VTKeywordAnalyzerNDAPI
- (VTKeywordAnalyzerNDAPI)initWithConfigPath:(id)a3 resourcePath:(id)a4;
- (float)getLoggingThreshold;
- (float)getRejectLoggingThreshold;
- (float)getThreshold;
- (id)_keywordAnalyzerNDAPIResultFromNovDetectorResult:(id)a3 phId:(unint64_t)a4;
- (id)getAnalyzedResults;
- (id)getAnalyzedResultsFromFloatAudioBuffer:(id)a3 numSamples:(unint64_t)a4;
- (id)getAnalyzedResultsFromInt16AudioBuffer:(id)a3 numSamples:(unint64_t)a4;
- (id)getBestAnalyzedResults;
- (id)getBestAnalyzedResultsFromFloatAudioBuffer:(id)a3 numSamples:(unint64_t)a4;
- (id)getBestAnalyzedResultsFromInt16AudioBuffer:(id)a3 numSamples:(unint64_t)a4;
- (void)_processAudioFloatBuffer:(id)a3 numSamples:(unint64_t)a4;
- (void)_processAudioInt16Buffer:(id)a3 numSamples:(unint64_t)a4;
- (void)_setStartAnalyzeTime:(unint64_t)a3;
- (void)reset;
@end

@implementation VTKeywordAnalyzerNDAPI

- (float)getRejectLoggingThreshold
{
  v2 = [(VTNovDetector *)self->_novDetector getOptionValue:@"threshold_reject_logging"];
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v6 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_223A31000, v6, OS_LOG_TYPE_ERROR, "NDAPI config doesn't contain threshold_reject_logging", v8, 2u);
    }

    v5 = INFINITY;
  }

  return v5;
}

- (float)getLoggingThreshold
{
  v2 = [(VTNovDetector *)self->_novDetector getOptionValue:@"threshold_logging"];
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v6 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_223A31000, v6, OS_LOG_TYPE_ERROR, "NDAPI config doesn't contain threshold_logging", v8, 2u);
    }

    v5 = INFINITY;
  }

  return v5;
}

- (float)getThreshold
{
  v2 = [(VTNovDetector *)self->_novDetector getOptionValue:@"threshold_normal"];
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v6 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_223A31000, v6, OS_LOG_TYPE_FAULT, "NDAPI config doesn't contain threshold_normal", v8, 2u);
    }

    v5 = INFINITY;
  }

  return v5;
}

- (id)getBestAnalyzedResults
{
  v3 = [(VTNovDetector *)self->_novDetector getBestAnalyzedResult];
  v4 = -[VTKeywordAnalyzerNDAPI _keywordAnalyzerNDAPIResultFromNovDetectorResult:phId:](self, "_keywordAnalyzerNDAPIResultFromNovDetectorResult:phId:", v3, [v3 bestPhrase]);

  return v4;
}

- (id)getAnalyzedResults
{
  v3 = [(VTNovDetector *)self->_novDetector numResultsAvailable];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = 0;
    v7 = v4;
    do
    {
      v8 = [(VTNovDetector *)self->_novDetector getAnalyzedResultForPhId:v6];
      v9 = [(VTKeywordAnalyzerNDAPI *)self _keywordAnalyzerNDAPIResultFromNovDetectorResult:v8 phId:v6];
      [v5 addObject:v9];

      ++v6;
    }

    while (v7 != v6);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_keywordAnalyzerNDAPIResultFromNovDetectorResult:(id)a3 phId:(unint64_t)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = objc_alloc_init(VTKeywordAnalyzerNDAPIResult);
    [(VTKeywordAnalyzerNDAPIResult *)v7 setPhId:a4];
    -[VTKeywordAnalyzerNDAPIResult setSamplesFed:](v7, "setSamplesFed:", [v6 sampleFed]);
    -[VTKeywordAnalyzerNDAPIResult setBestPhrase:](v7, "setBestPhrase:", [v6 bestPhrase]);
    -[VTKeywordAnalyzerNDAPIResult setBestStart:](v7, "setBestStart:", self->_startAnalyzeSampleCount + [v6 bestStart] + self->_sampleFedWrapAroundOffset);
    -[VTKeywordAnalyzerNDAPIResult setBestEnd:](v7, "setBestEnd:", self->_startAnalyzeSampleCount + [v6 bestEnd] + self->_sampleFedWrapAroundOffset);
    [v6 bestScore];
    [(VTKeywordAnalyzerNDAPIResult *)v7 setBestScore:?];
    -[VTKeywordAnalyzerNDAPIResult setIsEarlyWarning:](v7, "setIsEarlyWarning:", [v6 earlyWarning]);
    v8 = [v6 sampleFed];

    [(VTKeywordAnalyzerNDAPIResult *)v7 setSamplesAtFire:self->_startAnalyzeSampleCount + v8 + self->_sampleFedWrapAroundOffset];
    [(VTKeywordAnalyzerNDAPIResult *)v7 setStartSampleCount:self->_startAnalyzeSampleCount];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_processAudioInt16Buffer:(id)a3 numSamples:(unint64_t)a4
{
  [(VTKeywordAnalyzerNDAPI *)self analyzeWavData:a3 numSamples:a4];
  v5 = [(VTNovDetector *)self->_novDetector getAnalyzedResultForPhId:self->_activePhId];
  if (v5)
  {
    v6 = v5;
    if ([v5 sampleFed] < self->_lastSampleFed)
    {
      self->_sampleFedWrapAroundOffset += 0xFFFFFFFFLL;
    }

    self->_lastSampleFed = [v6 sampleFed];
    v5 = v6;
  }
}

- (void)_processAudioFloatBuffer:(id)a3 numSamples:(unint64_t)a4
{
  [(VTKeywordAnalyzerNDAPI *)self analyzeWavFloatData:a3 numSamples:a4];
  v5 = [(VTNovDetector *)self->_novDetector getAnalyzedResultForPhId:self->_activePhId];
  if (v5)
  {
    v6 = v5;
    if ([v5 sampleFed] < self->_lastSampleFed)
    {
      self->_sampleFedWrapAroundOffset += 0xFFFFFFFFLL;
    }

    self->_lastSampleFed = [v6 sampleFed];
    v5 = v6;
  }
}

- (id)getBestAnalyzedResultsFromInt16AudioBuffer:(id)a3 numSamples:(unint64_t)a4
{
  [(VTKeywordAnalyzerNDAPI *)self _processAudioInt16Buffer:a3 numSamples:a4];

  return [(VTKeywordAnalyzerNDAPI *)self getBestAnalyzedResults];
}

- (id)getBestAnalyzedResultsFromFloatAudioBuffer:(id)a3 numSamples:(unint64_t)a4
{
  [(VTKeywordAnalyzerNDAPI *)self _processAudioFloatBuffer:a3 numSamples:a4];

  return [(VTKeywordAnalyzerNDAPI *)self getBestAnalyzedResults];
}

- (id)getAnalyzedResultsFromInt16AudioBuffer:(id)a3 numSamples:(unint64_t)a4
{
  [(VTKeywordAnalyzerNDAPI *)self _processAudioInt16Buffer:a3 numSamples:a4];

  return [(VTKeywordAnalyzerNDAPI *)self getAnalyzedResults];
}

- (id)getAnalyzedResultsFromFloatAudioBuffer:(id)a3 numSamples:(unint64_t)a4
{
  [(VTKeywordAnalyzerNDAPI *)self _processAudioFloatBuffer:a3 numSamples:a4];

  return [(VTKeywordAnalyzerNDAPI *)self getAnalyzedResults];
}

- (void)_setStartAnalyzeTime:(unint64_t)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (!self->_isStartSampleCountMarked)
  {
    self->_isStartSampleCountMarked = 1;
    self->_startAnalyzeSampleCount = a3;
    v4 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134349056;
      v6 = a3;
      _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "set StartAnalyzeSampleCount = %{public}lld", &v5, 0xCu);
    }
  }
}

- (void)reset
{
  self->_lastSampleFed = 0;
  self->_sampleFedWrapAroundOffset = 0;
  [(VTNovDetector *)self->_novDetector reset];

  [(VTKeywordAnalyzerNDAPI *)self _resetStartAnalyzeTime];
}

- (VTKeywordAnalyzerNDAPI)initWithConfigPath:(id)a3 resourcePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = VTKeywordAnalyzerNDAPI;
  v8 = [(VTKeywordAnalyzerNDAPI *)&v15 init];
  if (v8 && (v9 = [[VTNovDetector alloc] initWithConfigPath:v6 resourcePath:v7], novDetector = v8->_novDetector, v8->_novDetector = v9, novDetector, !v8->_novDetector))
  {
    v12 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_223A31000, v12, OS_LOG_TYPE_ERROR, "NDAPI initialization failed", v14, 2u);
    }

    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

@end