@interface UPContextualizerStrategyOffer
- (UPContextualizerStrategyOffer)initWithPrebuiltIntentThreshold:(double)a3;
- (id)resultUsingContextualizerInput:(id)a3;
@end

@implementation UPContextualizerStrategyOffer

- (id)resultUsingContextualizerInput:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 dialogAct];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[UPContextualizerStrategyOffer resultUsingContextualizerInput:]", "UPContextualizerStrategyOffer.m", 39, "[contextualizerInput.dialogAct isKindOfClass:[UPDialogActOffer class]]");
  }

  v6 = [v4 coreResult];
  prebuiltIntentThreshold = self->_prebuiltIntentThreshold;
  v15[0] = @"no";
  v15[1] = @"yes";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v9 = [UPContextualizerUtilities hasTopCandidate:v6 excedingProbability:v8 matchingOneOfIntents:prebuiltIntentThreshold];

  if (v9)
  {
    v10 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "UPContextualizerStrategyOffer: Detected high-probability yes/no intent in core result", v14, 2u);
    }

    v11 = [UPResult createResultFromExistingResult:v6 truncatedTo:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (UPContextualizerStrategyOffer)initWithPrebuiltIntentThreshold:(double)a3
{
  v5.receiver = self;
  v5.super_class = UPContextualizerStrategyOffer;
  result = [(UPContextualizerStrategyOffer *)&v5 init];
  if (result)
  {
    result->_prebuiltIntentThreshold = a3;
  }

  return result;
}

@end