@interface TIProactiveQuickTypeManagerMock
- (TIProactiveQuickTypeManagerMock)init;
- (id)generateAndRenderProactiveSuggestionsWithTriggers:(id)a3 withKeyboardState:(id)a4 withAdditionalPredictions:(id)a5 withSecureCandidateRenderer:(id)a6 withRenderTraits:(id)a7 withInput:(id)a8 withRecipient:(id)a9 withApplication:(id)a10 withLocale:(id)a11 isContinuousPath:(BOOL)a12 withAvailableApps:(id)a13 logBlock:(id)a14;
- (void)generateAndRenderProactiveSuggestionsForInput:(id)a3 withKeyboardState:(id)a4 withAdditionalPredictions:(id)a5 withSecureCandidateRenderer:(id)a6 withRenderTraits:(id)a7 withInput:(id)a8 withRecipient:(id)a9 withApplication:(id)a10 withLocale:(id)a11 nextInputWillInsertAutospace:(BOOL)a12 withIsResponseDenyListed:(BOOL)a13 withShouldDisableAutoCaps:(BOOL)a14 withAvailableApps:(id)a15 logBlock:(id)a16 async:(BOOL)a17 completion:(id)a18;
- (void)generateAndRenderProactiveSuggestionsWithTriggers:(id)a3 withKeyboardState:(id)a4 withAdditionalPredictions:(id)a5 withSecureCandidateRenderer:(id)a6 withRenderTraits:(id)a7 withInput:(id)a8 withRecipient:(id)a9 withApplication:(id)a10 withLocale:(id)a11 isContinuousPath:(BOOL)a12 withAvailableApps:(id)a13 logBlock:(id)a14 async:(BOOL)a15 completion:(id)a16;
@end

@implementation TIProactiveQuickTypeManagerMock

- (void)generateAndRenderProactiveSuggestionsForInput:(id)a3 withKeyboardState:(id)a4 withAdditionalPredictions:(id)a5 withSecureCandidateRenderer:(id)a6 withRenderTraits:(id)a7 withInput:(id)a8 withRecipient:(id)a9 withApplication:(id)a10 withLocale:(id)a11 nextInputWillInsertAutospace:(BOOL)a12 withIsResponseDenyListed:(BOOL)a13 withShouldDisableAutoCaps:(BOOL)a14 withAvailableApps:(id)a15 logBlock:(id)a16 async:(BOOL)a17 completion:(id)a18
{
  v19 = a18;
  v20 = MEMORY[0x277CBEAC0];
  v21 = a8;
  v22 = [v20 dictionaryWithObjects:&unk_287ED4AD8 forKeys:&unk_287ED4AF0];
  v23 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v24 = [v21 componentsSeparatedByCharactersInSet:v23];

  v28 = [v24 lastObject];

  v25 = [v22 objectForKey:v28];
  if (v25)
  {
    v26 = [MEMORY[0x277D6F3D8] secureCandidateForInput:v25 slotID:100];
    v27 = [MEMORY[0x277CBEB18] array];
    [v27 addObject:v26];
  }

  else
  {
    v27 = 0;
  }

  v19[2](v19, v27);
}

- (void)generateAndRenderProactiveSuggestionsWithTriggers:(id)a3 withKeyboardState:(id)a4 withAdditionalPredictions:(id)a5 withSecureCandidateRenderer:(id)a6 withRenderTraits:(id)a7 withInput:(id)a8 withRecipient:(id)a9 withApplication:(id)a10 withLocale:(id)a11 isContinuousPath:(BOOL)a12 withAvailableApps:(id)a13 logBlock:(id)a14 async:(BOOL)a15 completion:(id)a16
{
  v21 = a16;
  v17 = [a3 count];
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

  v21[2](v21, v19);
}

- (id)generateAndRenderProactiveSuggestionsWithTriggers:(id)a3 withKeyboardState:(id)a4 withAdditionalPredictions:(id)a5 withSecureCandidateRenderer:(id)a6 withRenderTraits:(id)a7 withInput:(id)a8 withRecipient:(id)a9 withApplication:(id)a10 withLocale:(id)a11 isContinuousPath:(BOOL)a12 withAvailableApps:(id)a13 logBlock:(id)a14
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v33 = a6;
  v22 = a7;
  v32 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a13;
  v27 = a14;
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
  LOBYTE(v30) = a12;
  v34 = v20;
  [(TIProactiveQuickTypeManagerMock *)self generateAndRenderProactiveSuggestionsWithTriggers:v19 withKeyboardState:v20 withAdditionalPredictions:v21 withSecureCandidateRenderer:v33 withRenderTraits:v22 withInput:v32 withRecipient:v23 withApplication:v24 withLocale:v25 isContinuousPath:v30 withAvailableApps:v26 logBlock:v27 async:v31 completion:v36];
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
    v3 = [MEMORY[0x277CBEB38] dictionary];
    metrics = v2->_metrics;
    v2->_metrics = v3;
  }

  return v2;
}

@end