@interface UPContextualizer
- (UPContextualizer)initWithPrebuiltIntentThreshold:(double)threshold;
- (id)_contextualizeByDialogActTypeUsingContextualizerInput:(id)input;
- (id)resultWithContextualizerInput:(id)input;
@end

@implementation UPContextualizer

- (id)_contextualizeByDialogActTypeUsingContextualizerInput:(id)input
{
  v23[3] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v22[0] = objc_opt_class();
  v23[0] = self->_offerContextualizerStrategy;
  v22[1] = objc_opt_class();
  v23[1] = self->_optionsContextualizerStrategy;
  v22[2] = objc_opt_class();
  v23[2] = self->_promptContextualizerStrategy;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  dialogAct = [inputCopy dialogAct];
  coreResult = [inputCopy coreResult];
  v8 = [UPContextualizerUtilities createConfirmOrRejectedDialogActsFor:coreResult reference:0];

  v9 = [UPContextualizerInput alloc];
  domainResult = [inputCopy domainResult];
  modelIdentifier = [inputCopy modelIdentifier];
  query = [inputCopy query];

  v13 = [(UPContextualizerInput *)v9 initWithDomainResult:domainResult coreResult:v8 modelIdentifier:modelIdentifier query:query dialogAct:dialogAct];
  v14 = [v5 objectForKey:objc_opt_class()];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 resultUsingContextualizerInput:v13];
  }

  else
  {
    v17 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 138739971;
      v21 = dialogAct;
      _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_ERROR, "Could not find contextualizer strategy for dialog act: %{sensitive}@", &v20, 0xCu);
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)resultWithContextualizerInput:(id)input
{
  inputCopy = input;
  coreResult = [inputCopy coreResult];
  candidateCount = [coreResult candidateCount];

  if (!candidateCount || ([(UPContextualizerStrategyCancel *)self->_cancelContextualizerStrategy resultUsingContextualizerInput:inputCopy], (domainResult = objc_claimAutoreleasedReturnValue()) == 0) && ([(UPContextualizer *)self _contextualizeByDialogActTypeUsingContextualizerInput:inputCopy], (domainResult = objc_claimAutoreleasedReturnValue()) == 0))
  {
    domainResult = [inputCopy domainResult];
  }

  v8 = domainResult;

  return v8;
}

- (UPContextualizer)initWithPrebuiltIntentThreshold:(double)threshold
{
  v15.receiver = self;
  v15.super_class = UPContextualizer;
  v4 = [(UPContextualizer *)&v15 init];
  if (v4)
  {
    v5 = objc_alloc_init(UPUsoSerializer);
    v4->_prebuiltIntentThreshold = threshold;
    v6 = [[UPContextualizerStrategyCancel alloc] initWithPrebuiltIntentThreshold:v4->_prebuiltIntentThreshold];
    cancelContextualizerStrategy = v4->_cancelContextualizerStrategy;
    v4->_cancelContextualizerStrategy = v6;

    v8 = [[UPContextualizerStrategyOffer alloc] initWithPrebuiltIntentThreshold:v4->_prebuiltIntentThreshold];
    offerContextualizerStrategy = v4->_offerContextualizerStrategy;
    v4->_offerContextualizerStrategy = v8;

    v10 = [[UPContextualizerStrategyOptions alloc] initWithPrebuiltIntentThreshold:v5 usoSerializer:v4->_prebuiltIntentThreshold];
    optionsContextualizerStrategy = v4->_optionsContextualizerStrategy;
    v4->_optionsContextualizerStrategy = v10;

    v12 = [[UPContextualizerStrategyPrompt alloc] initWithPrebuiltIntentThreshold:v5 usoSerializer:v4->_prebuiltIntentThreshold];
    promptContextualizerStrategy = v4->_promptContextualizerStrategy;
    v4->_promptContextualizerStrategy = v12;
  }

  return v4;
}

@end