@interface TIProactiveQuickTypeManagerMock
- (TIProactiveQuickTypeManagerMock)init;
- (id)generateAndRenderProactiveSuggestionsWithTriggers:(id)triggers withKeyboardState:(id)state withAdditionalPredictions:(id)predictions withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits withInput:(id)input withRecipient:(id)recipient withApplication:(id)self0 withLocale:(id)self1 isContinuousPath:(BOOL)self2 withAvailableApps:(id)self3 logBlock:(id)self4;
- (void)generateAndRenderProactiveSuggestionsForInput:(id)input withKeyboardState:(id)state withAdditionalPredictions:(id)predictions withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits withInput:(id)withInput withRecipient:(id)recipient withApplication:(id)self0 withLocale:(id)self1 nextInputWillInsertAutospace:(BOOL)self2 withIsResponseDenyListed:(BOOL)self3 withShouldDisableAutoCaps:(BOOL)self4 withAvailableApps:(id)self5 logBlock:(id)self6 async:(BOOL)self7 completion:(id)self8;
- (void)generateAndRenderProactiveSuggestionsWithTriggers:(id)triggers withKeyboardState:(id)state withAdditionalPredictions:(id)predictions withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits withInput:(id)input withRecipient:(id)recipient withApplication:(id)self0 withLocale:(id)self1 isContinuousPath:(BOOL)self2 withAvailableApps:(id)self3 logBlock:(id)self4 async:(BOOL)self5 completion:(id)self6;
@end

@implementation TIProactiveQuickTypeManagerMock

- (void)generateAndRenderProactiveSuggestionsForInput:(id)input withKeyboardState:(id)state withAdditionalPredictions:(id)predictions withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits withInput:(id)withInput withRecipient:(id)recipient withApplication:(id)self0 withLocale:(id)self1 nextInputWillInsertAutospace:(BOOL)self2 withIsResponseDenyListed:(BOOL)self3 withShouldDisableAutoCaps:(BOOL)self4 withAvailableApps:(id)self5 logBlock:(id)self6 async:(BOOL)self7 completion:(id)self8
{
  completionCopy = completion;
  v20 = MEMORY[0x277CBEAC0];
  withInputCopy = withInput;
  v22 = [v20 dictionaryWithObjects:&unk_287ED4AD8 forKeys:&unk_287ED4AF0];
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v24 = [withInputCopy componentsSeparatedByCharactersInSet:newlineCharacterSet];

  lastObject = [v24 lastObject];

  v25 = [v22 objectForKey:lastObject];
  if (v25)
  {
    v26 = [MEMORY[0x277D6F3D8] secureCandidateForInput:v25 slotID:100];
    array = [MEMORY[0x277CBEB18] array];
    [array addObject:v26];
  }

  else
  {
    array = 0;
  }

  completionCopy[2](completionCopy, array);
}

- (void)generateAndRenderProactiveSuggestionsWithTriggers:(id)triggers withKeyboardState:(id)state withAdditionalPredictions:(id)predictions withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits withInput:(id)input withRecipient:(id)recipient withApplication:(id)self0 withLocale:(id)self1 isContinuousPath:(BOOL)self2 withAvailableApps:(id)self3 logBlock:(id)self4 async:(BOOL)self5 completion:(id)self6
{
  completionCopy = completion;
  v17 = [triggers count];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v17];
    do
    {
      v20 = [MEMORY[0x277D6F3D8] secureCandidateForInput:&stru_287EC4808 slotID:100];
      [v19 addObject:v20];

      --v18;
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  completionCopy[2](completionCopy, v19);
}

- (id)generateAndRenderProactiveSuggestionsWithTriggers:(id)triggers withKeyboardState:(id)state withAdditionalPredictions:(id)predictions withSecureCandidateRenderer:(id)renderer withRenderTraits:(id)traits withInput:(id)input withRecipient:(id)recipient withApplication:(id)self0 withLocale:(id)self1 isContinuousPath:(BOOL)self2 withAvailableApps:(id)self3 logBlock:(id)self4
{
  triggersCopy = triggers;
  stateCopy = state;
  predictionsCopy = predictions;
  rendererCopy = renderer;
  traitsCopy = traits;
  inputCopy = input;
  recipientCopy = recipient;
  applicationCopy = application;
  localeCopy = locale;
  appsCopy = apps;
  blockCopy = block;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__1597;
  v41 = __Block_byref_object_dispose__1598;
  v42 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __269__TIProactiveQuickTypeManagerMock_generateAndRenderProactiveSuggestionsWithTriggers_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_isContinuousPath_withAvailableApps_logBlock___block_invoke;
  v36[3] = &unk_279DA10D8;
  v36[4] = &v37;
  LOBYTE(v31) = 0;
  LOBYTE(v30) = path;
  v34 = stateCopy;
  [(TIProactiveQuickTypeManagerMock *)self generateAndRenderProactiveSuggestionsWithTriggers:triggersCopy withKeyboardState:stateCopy withAdditionalPredictions:predictionsCopy withSecureCandidateRenderer:rendererCopy withRenderTraits:traitsCopy withInput:inputCopy withRecipient:recipientCopy withApplication:applicationCopy withLocale:localeCopy isContinuousPath:v30 withAvailableApps:appsCopy logBlock:blockCopy async:v31 completion:v36];
  v28 = v38[5];
  _Block_object_dispose(&v37, 8);

  return v28;
}

- (TIProactiveQuickTypeManagerMock)init
{
  v6.receiver = self;
  v6.super_class = TIProactiveQuickTypeManagerMock;
  v2 = [(TIProactiveQuickTypeManagerMock *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    metrics = v2->_metrics;
    v2->_metrics = dictionary;
  }

  return v2;
}

@end