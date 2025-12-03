@interface UPContextualizerStrategyOffer
- (UPContextualizerStrategyOffer)initWithPrebuiltIntentThreshold:(double)threshold;
- (id)resultUsingContextualizerInput:(id)input;
@end

@implementation UPContextualizerStrategyOffer

- (id)resultUsingContextualizerInput:(id)input
{
  v15[2] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  dialogAct = [inputCopy dialogAct];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[UPContextualizerStrategyOffer resultUsingContextualizerInput:]", "UPContextualizerStrategyOffer.m", 39, "[contextualizerInput.dialogAct isKindOfClass:[UPDialogActOffer class]]");
  }

  coreResult = [inputCopy coreResult];
  prebuiltIntentThreshold = self->_prebuiltIntentThreshold;
  v15[0] = @"no";
  v15[1] = @"yes";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v9 = [UPContextualizerUtilities hasTopCandidate:coreResult excedingProbability:v8 matchingOneOfIntents:prebuiltIntentThreshold];

  if (v9)
  {
    v10 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "UPContextualizerStrategyOffer: Detected high-probability yes/no intent in core result", v14, 2u);
    }

    v11 = [UPResult createResultFromExistingResult:coreResult truncatedTo:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (UPContextualizerStrategyOffer)initWithPrebuiltIntentThreshold:(double)threshold
{
  v5.receiver = self;
  v5.super_class = UPContextualizerStrategyOffer;
  result = [(UPContextualizerStrategyOffer *)&v5 init];
  if (result)
  {
    result->_prebuiltIntentThreshold = threshold;
  }

  return result;
}

@end