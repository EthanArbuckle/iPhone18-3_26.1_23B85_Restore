@interface VTKeywordAnalyzerNDAPIResult
- (NSDictionary)dictionary;
- (VTKeywordAnalyzerNDAPIResult)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VTKeywordAnalyzerNDAPIResult

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VTKeywordAnalyzerNDAPIResult);
  [(VTKeywordAnalyzerNDAPIResult *)v4 setPhId:self->_phId];
  [(VTKeywordAnalyzerNDAPIResult *)v4 setSamplesFed:self->_samplesFed];
  [(VTKeywordAnalyzerNDAPIResult *)v4 setBestPhrase:self->_bestPhrase];
  [(VTKeywordAnalyzerNDAPIResult *)v4 setBestStart:self->_bestStart];
  [(VTKeywordAnalyzerNDAPIResult *)v4 setBestEnd:self->_bestEnd];
  *&v5 = self->_bestScore;
  [(VTKeywordAnalyzerNDAPIResult *)v4 setBestScore:v5];
  [(VTKeywordAnalyzerNDAPIResult *)v4 setIsEarlyWarning:self->_isEarlyWarning];
  [(VTKeywordAnalyzerNDAPIResult *)v4 setIsRescoring:self->_isRescoring];
  [(VTKeywordAnalyzerNDAPIResult *)v4 setSamplesAtFire:self->_samplesAtFire];
  [(VTKeywordAnalyzerNDAPIResult *)v4 setStartSampleCount:self->_startSampleCount];
  return v4;
}

- (NSDictionary)dictionary
{
  v16[9] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{self->_samplesFed, @"samples_fed"}];
  v16[0] = v3;
  v15[1] = @"best_phrase";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bestPhrase];
  v16[1] = v4;
  v15[2] = @"best_start";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bestStart];
  v16[2] = v5;
  v15[3] = @"best_end";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bestEnd];
  v16[3] = v6;
  v15[4] = @"best_score";
  *&v7 = self->_bestScore;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v16[4] = v8;
  v15[5] = @"early_warning";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEarlyWarning];
  v16[5] = v9;
  v15[6] = @"is_rescoring";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_isRescoring];
  v16[6] = v10;
  v15[7] = @"samples_at_fire";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_samplesAtFire];
  v16[7] = v11;
  v15[8] = @"start_sample_count";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_startSampleCount];
  v16[8] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:9];

  return v13;
}

- (VTKeywordAnalyzerNDAPIResult)init
{
  v3.receiver = self;
  v3.super_class = VTKeywordAnalyzerNDAPIResult;
  result = [(VTKeywordAnalyzerNDAPIResult *)&v3 init];
  if (result)
  {
    result->_bestScore = -1000000.0;
  }

  return result;
}

@end