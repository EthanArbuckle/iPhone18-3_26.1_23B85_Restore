@interface UPContextualizerStrategyCancel
- (UPContextualizerStrategyCancel)initWithPrebuiltIntentThreshold:(double)threshold;
- (id)resultUsingContextualizerInput:(id)input;
@end

@implementation UPContextualizerStrategyCancel

- (id)resultUsingContextualizerInput:(id)input
{
  v13[1] = *MEMORY[0x277D85DE8];
  coreResult = [input coreResult];
  prebuiltIntentThreshold = self->_prebuiltIntentThreshold;
  v13[0] = @"cancel";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v7 = [UPContextualizerUtilities hasTopCandidate:coreResult excedingProbability:v6 matchingOneOfIntents:prebuiltIntentThreshold];

  if (v7)
  {
    v8 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "UPContextualizerStrategyCancel: Detected high-probability cancel intent in core result", v12, 2u);
    }

    v9 = [UPResult createResultFromExistingResult:coreResult truncatedTo:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (UPContextualizerStrategyCancel)initWithPrebuiltIntentThreshold:(double)threshold
{
  v5.receiver = self;
  v5.super_class = UPContextualizerStrategyCancel;
  result = [(UPContextualizerStrategyCancel *)&v5 init];
  if (result)
  {
    result->_prebuiltIntentThreshold = threshold;
  }

  return result;
}

@end