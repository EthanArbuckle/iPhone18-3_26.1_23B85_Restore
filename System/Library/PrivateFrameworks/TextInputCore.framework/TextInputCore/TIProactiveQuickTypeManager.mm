@interface TIProactiveQuickTypeManager
+ (id)buildSecureCandidateFrom:(id)a3 withSecureCandidateRenderer:(id)a4 input:(id)a5;
+ (id)proactiveTriggerForTextContentType:(id)a3;
+ (id)proactiveTriggerForTextContentType:(id)a3 withContextBeforeInput:(id)a4 autofillMode:(unint64_t)a5;
+ (id)sharedInstance;
+ (id)singletonInstance;
+ (void)setSharedTIProactiveQuickTypeManager:(id)a3;
- (BOOL)isAutoCompleteEnabled;
- (BOOL)isAutoPopupEnabled;
- (BOOL)isEnabled;
- (TIProactiveQuickTypeManager)init;
- (TIProactiveQuickTypeManager)initWithICManager:(id)a3;
- (id)_makeQueue;
- (id)generateAndRenderProactiveSuggestionsWithInput:(id)a3 withSecureCandidateRenderer:(id)a4 withRenderTraits:(id)a5 textContentType:(id)a6;
- (id)generateAndRenderProactiveSuggestionsWithTriggers:(id)a3 withKeyboardState:(id)a4 withAdditionalPredictions:(id)a5 withSecureCandidateRenderer:(id)a6 withRenderTraits:(id)a7 withInput:(id)a8 withRecipient:(id)a9 withApplication:(id)a10 withLocale:(id)a11 nextInputWillInsertAutospace:(BOOL)a12 withAvailableApps:(id)a13 logBlock:(id)a14;
- (id)renderItems:(id)a3 withAdditionalPredictions:(id)a4 withSecureCandidateRenderer:(id)a5 withRenderTraits:(id)a6 withInput:(id)a7;
- (id)searchForMeCardEmailAddresses;
- (id)searchForMeCardRegions;
- (unint64_t)matchProactiveCandidateToUserInput:(id)a3 userInput:(id)a4;
- (void)addToTypologyTrace:(id)a3 withTriggerSource:(id)a4 withTriggerType:(id)a5 withTriggerSubType:(id)a6 withPredictionResults:(id)a7 withFirstTrigger:(id)a8;
- (void)dealloc;
- (void)generateAndRenderProactiveSuggestionsForInput:(id)a3 withKeyboardState:(id)a4 withAdditionalPredictions:(id)a5 withSecureCandidateRenderer:(id)a6 withRenderTraits:(id)a7 withInput:(id)a8 withRecipient:(id)a9 withApplication:(id)a10 withLocale:(id)a11 nextInputWillInsertAutospace:(BOOL)a12 withIsResponseDenyListed:(BOOL)a13 withShouldDisableAutoCaps:(BOOL)a14 withAvailableApps:(id)a15 logBlock:(id)a16 async:(BOOL)a17 completion:(id)a18;
- (void)generateAndRenderProactiveSuggestionsWithInput:(id)a3 withSecureCandidateRenderer:(id)a4 withRenderTraits:(id)a5 textContentType:(id)a6 async:(BOOL)a7 completion:(id)a8;
- (void)keyboardActivityDidTransition:(id)a3;
- (void)loggingProactiveEngagementMetric:(unint64_t)a3 withLocale:(id)a4 fieldType:(id)a5;
- (void)propogateMetrics:(id)a3 data:(id)a4;
- (void)reset;
- (void)suggestionAccepted:(id)a3 fieldType:(id)a4;
- (void)suggestionNotAccepted:(id)a3;
- (void)userActionWithNoNewTriggers:(id)a3 fieldType:(id)a4;
@end

@implementation TIProactiveQuickTypeManager

+ (id)singletonInstance
{
  if (singletonInstance_onceToken_6637 != -1)
  {
    dispatch_once(&singletonInstance_onceToken_6637, &__block_literal_global_6638);
  }

  v3 = singletonInstance_singleton;

  return v3;
}

+ (id)sharedInstance
{
  if (__testingInstance_6640)
  {
    v2 = __testingInstance_6640;
  }

  else
  {
    v2 = +[TIProactiveQuickTypeManager singletonInstance];
  }

  return v2;
}

- (void)reset
{
  v3 = [(TIProactiveQuickTypeManager *)self inputContextPredictionManager];
  [v3 reset];

  lastSuggestionTime = self->_lastSuggestionTime;
  self->_lastSuggestionTime = 0;

  maxLengthProactiveCandidate = self->_maxLengthProactiveCandidate;
  self->_maxLengthProactiveCandidate = 0;
}

- (id)searchForMeCardRegions
{
  v2 = [(TIProactiveQuickTypeManager *)self inputContextPredictionManager];
  v3 = [v2 searchForMeCardRegions];

  return v3;
}

- (BOOL)isAutoCompleteEnabled
{
  v2 = TIGetProactiveQuickTypeSettingValue();
  v3 = [v2 integerValue];

  return (v3 >> 2) & 1;
}

- (BOOL)isAutoPopupEnabled
{
  v2 = TIGetProactiveQuickTypeSettingValue();
  v3 = [v2 integerValue];

  return (v3 >> 1) & 1;
}

- (BOOL)isEnabled
{
  v2 = TIGetProactiveQuickTypeSettingValue();
  v3 = [v2 integerValue];

  return v3 & 1;
}

- (void)propogateMetrics:(id)a3 data:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TIProactiveQuickTypeManager *)self inputContextPredictionManager];
  [v8 propogateMetrics:v7 data:v6];
}

- (unint64_t)matchProactiveCandidateToUserInput:(id)a3 userInput:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v6 _editDistanceFrom:v5];
    v9 = ((v8 / [v5 length]) * 100.0);
    v10 = 3;
    if (v9 > 66.66)
    {
      v10 = 4;
    }

    if (v9 <= 33.33)
    {
      v7 = 2;
    }

    else
    {
      v7 = v10;
    }
  }

  return v7;
}

- (void)loggingProactiveEngagementMetric:(unint64_t)a3 withLocale:(id)a4 fieldType:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v10 = TIOSLogFacility();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  switch(a3)
  {
    case 3uLL:
      if (v11)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Proactive suggestion %@ not selected by user and mildly matching user input!", "-[TIProactiveQuickTypeManager loggingProactiveEngagementMetric:withLocale:fieldType:]", self->_maxLengthProactiveCandidate];
        *buf = 138412290;
        v20 = v16;
        _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v12 = kTIStatisticsZeroEngagementDescriptionMildlyMatchedToUserInput;
      break;
    case 2uLL:
      if (v11)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Proactive suggestion %@ not selected by user and moderately matching user input!", "-[TIProactiveQuickTypeManager loggingProactiveEngagementMetric:withLocale:fieldType:]", self->_maxLengthProactiveCandidate];
        *buf = 138412290;
        v20 = v15;
        _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v12 = kTIStatisticsZeroEngagementDescriptionModeratelyMatchedToUserInput;
      break;
    case 1uLL:
      if (v11)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Proactive suggestion %@ not selected by user and exactly matching user input!", "-[TIProactiveQuickTypeManager loggingProactiveEngagementMetric:withLocale:fieldType:]", self->_maxLengthProactiveCandidate];
        *buf = 138412290;
        v20 = v17;
        _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v12 = kTIStatisticsZeroEngagementDescriptionExactlyMatchedToUserInput;
      break;
    default:
      if (v11)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Proactive suggestion %@ not selected by user and zero matching user input!", "-[TIProactiveQuickTypeManager loggingProactiveEngagementMetric:withLocale:fieldType:]", self->_maxLengthProactiveCandidate];
        *buf = 138412290;
        v20 = v18;
        _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v12 = &kTIStatisticsZeroEngagementDescriptionNotMatchedToUserInput;
      break;
  }

  v13 = [(__CFString *)*v12 copy];
  TIStatisticLogProactiveDescription(v8, self->_lastTriggerForSuggestion, v13, @"engagement", v9);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)keyboardActivityDidTransition:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__TIProactiveQuickTypeManager_keyboardActivityDidTransition___block_invoke;
  v8[3] = &unk_278733738;
  v9 = v4;
  v10 = self;
  v6 = v4;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v8);
  TIDispatchAsync();
}

void __61__TIProactiveQuickTypeManager_keyboardActivityDidTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) toState];
  if (v2 == 3)
  {
    v3 = [*(a1 + 40) inputContextPredictionManager];
    [v3 hibernate];
  }

  else
  {
    if (v2 != 1)
    {
      return;
    }

    v3 = [*(a1 + 40) inputContextPredictionManager];
    [v3 warmUp];
  }
}

- (void)generateAndRenderProactiveSuggestionsWithInput:(id)a3 withSecureCandidateRenderer:(id)a4 withRenderTraits:(id)a5 textContentType:(id)a6 async:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v20 = [v14 componentsSeparatedByCharactersInSet:v19];

  v21 = [v20 lastObject];
  if ([v21 length])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __156__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithInput_withSecureCandidateRenderer_withRenderTraits_textContentType_async_completion___block_invoke;
    aBlock[3] = &unk_2787304F8;
    aBlock[4] = self;
    v29 = v15;
    v43 = v15;
    v44 = v16;
    v22 = v21;
    v45 = v22;
    v46 = v14;
    v47 = v17;
    v48 = v18;
    v23 = _Block_copy(aBlock);
    if (v9)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __156__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithInput_withSecureCandidateRenderer_withRenderTraits_textContentType_async_completion___block_invoke_2;
      block[3] = &unk_278733820;
      block[4] = self;
      v40 = v22;
      v41 = v23;
      v25 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
      TIDispatchAsync();

      v26 = v40;
    }

    else
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__6482;
      v37 = __Block_byref_object_dispose__6483;
      v38 = 0;
      v27 = self->_queue;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __156__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithInput_withSecureCandidateRenderer_withRenderTraits_textContentType_async_completion___block_invoke_4;
      v30[3] = &unk_2787337C0;
      v32 = &v33;
      v30[4] = self;
      v31 = v22;
      v28 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v30);
      TIDispatchSync();

      (*(v23 + 2))(v23, v34[5]);
      _Block_object_dispose(&v33, 8);
      v26 = v38;
    }

    v15 = v29;
  }

  else
  {
    (*(v18 + 2))(v18, 0);
  }
}

void __156__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithInput_withSecureCandidateRenderer_withRenderTraits_textContentType_async_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  if ([v16 count])
  {
    v3 = [*(a1 + 32) renderItems:v16 withAdditionalPredictions:0 withSecureCandidateRenderer:*(a1 + 40) withRenderTraits:*(a1 + 48) withInput:*(a1 + 56)];
    v4 = [v3 mutableCopy];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  if (*(v5 + 40))
  {
    if (*(v5 + 48) && [*(a1 + 64) length] >= *(*(a1 + 32) + 48))
    {
      v6 = [*(a1 + 64) length] - *(*(a1 + 32) + 48);
      if (v6 >= [*(*(a1 + 32) + 40) length])
      {
        v7 = [*(a1 + 64) substringFromIndex:*(*(a1 + 32) + 48)];
        v8 = [v7 lowercaseString];

        v9 = [*(a1 + 32) matchProactiveCandidateToUserInput:*(*(a1 + 32) + 40) userInput:v8];
        v10 = *(a1 + 32);
        v11 = [*(a1 + 40) localeIdentifier];
        [v10 loggingProactiveEngagementMetric:v9 withLocale:v11 fieldType:*(a1 + 72)];

        v12 = *(a1 + 32);
        v13 = *(v12 + 40);
        *(v12 + 40) = 0;

        *(*(a1 + 32) + 48) = 0;
        v14 = *(a1 + 32);
        v15 = *(v14 + 24);
        *(v14 + 24) = 0;
      }
    }

    else
    {
      *(*(a1 + 32) + 48) = [*(a1 + 64) length] - 1;
    }
  }

  (*(*(a1 + 80) + 16))();
}

void __156__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithInput_withSecureCandidateRenderer_withRenderTraits_textContentType_async_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) inputContextPredictionManager];
  v3 = [v2 lastCachedResultWithInitialCharacters:*(a1 + 40)];

  v5 = *(a1 + 48);
  v4 = v3;
  TIDispatchAsync();
}

void __156__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithInput_withSecureCandidateRenderer_withRenderTraits_textContentType_async_completion___block_invoke_4(uint64_t a1)
{
  v5 = [*(a1 + 32) inputContextPredictionManager];
  v2 = [v5 lastCachedResultWithInitialCharacters:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)generateAndRenderProactiveSuggestionsWithInput:(id)a3 withSecureCandidateRenderer:(id)a4 withRenderTraits:(id)a5 textContentType:(id)a6
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6482;
  v13 = __Block_byref_object_dispose__6483;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __139__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithInput_withSecureCandidateRenderer_withRenderTraits_textContentType___block_invoke;
  v8[3] = &unk_278731EE8;
  v8[4] = &v9;
  [(TIProactiveQuickTypeManager *)self generateAndRenderProactiveSuggestionsWithInput:a3 withSecureCandidateRenderer:a4 withRenderTraits:a5 textContentType:a6 async:0 completion:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)searchForMeCardEmailAddresses
{
  v2 = [(TIProactiveQuickTypeManager *)self inputContextPredictionManager];
  v3 = [v2 searchForMeCardEmailAddresses];

  return v3;
}

- (void)suggestionNotAccepted:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!self->_maxLengthProactiveCandidate)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 candidate];
            v12 = [v11 length];
            v13 = [(NSString *)self->_maxLengthProactiveCandidate length];

            if (v12 > v13)
            {
              v14 = [v10 candidate];
              maxLengthProactiveCandidate = self->_maxLengthProactiveCandidate;
              self->_maxLengthProactiveCandidate = v14;
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    if ([(NSString *)self->_maxLengthProactiveCandidate length]>= 0x14)
    {
      v16 = [(NSString *)self->_maxLengthProactiveCandidate substringToIndex:20];
      v17 = self->_maxLengthProactiveCandidate;
      self->_maxLengthProactiveCandidate = v16;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)suggestionAccepted:(id)a3 fieldType:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  lastSuggestionTime = self->_lastSuggestionTime;
  if (lastSuggestionTime)
  {
    [(NSDate *)lastSuggestionTime timeIntervalSinceNow];
    TIStatisticsLogProactiveTimeOnScreen(v6, self->_lastTriggerForSuggestion, 1, v7);
    v9 = self->_lastSuggestionTime;
    self->_lastSuggestionTime = 0;
  }

  else
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v10 = TIOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: ERROR on proactive Time SHOULD HAVE HAD A LAST SUGGESTION TIME", "-[TIProactiveQuickTypeManager suggestionAccepted:fieldType:]"];
      *buf = 138412290;
      v14 = v12;
      _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)userActionWithNoNewTriggers:(id)a3 fieldType:(id)a4
{
  lastSuggestionTime = self->_lastSuggestionTime;
  if (lastSuggestionTime)
  {
    v7 = a4;
    v8 = a3;
    [(NSDate *)lastSuggestionTime timeIntervalSinceNow];
    TIStatisticsLogProactiveTimeOnScreen(v8, self->_lastTriggerForSuggestion, 0, v7);

    v9 = self->_lastSuggestionTime;
    self->_lastSuggestionTime = 0;
  }
}

- (void)generateAndRenderProactiveSuggestionsForInput:(id)a3 withKeyboardState:(id)a4 withAdditionalPredictions:(id)a5 withSecureCandidateRenderer:(id)a6 withRenderTraits:(id)a7 withInput:(id)a8 withRecipient:(id)a9 withApplication:(id)a10 withLocale:(id)a11 nextInputWillInsertAutospace:(BOOL)a12 withIsResponseDenyListed:(BOOL)a13 withShouldDisableAutoCaps:(BOOL)a14 withAvailableApps:(id)a15 logBlock:(id)a16 async:(BOOL)a17 completion:(id)a18
{
  v160 = *MEMORY[0x277D85DE8];
  v102 = a3;
  v107 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v101 = a8;
  v26 = a9;
  v27 = a10;
  v106 = a11;
  v105 = a15;
  v28 = a16;
  v29 = a18;
  v30 = v29;
  if (!v25)
  {
    (*(v29 + 2))(v29, MEMORY[0x277CBEBF8]);
    v39 = v107;
    v40 = v101;
    goto LABEL_46;
  }

  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v31 = v107;
  v97 = v26;
  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v32 = v30;
    v33 = TIOSLogFacility();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v89 = v28;
      v90 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: Found triggers, count = %lu", "-[TIProactiveQuickTypeManager generateAndRenderProactiveSuggestionsForInput:withKeyboardState:withAdditionalPredictions:withSecureCandidateRenderer:withRenderTraits:withInput:withRecipient:withApplication:withLocale:nextInputWillInsertAutospace:withIsResponseDenyListed:withShouldDisableAutoCaps:withAvailableApps:logBlock:async:completion:]", objc_msgSend(v102, "count")];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v90;
      _os_log_debug_impl(&dword_22CA55000, v33, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);

      v28 = v89;
    }

    v30 = v32;
    v31 = v107;
  }

  v91 = [MEMORY[0x277CBEAA8] date];
  v104 = [MEMORY[0x277CBEB18] array];
  v98 = v25;
  v99 = v23;
  v93 = v24;
  v94 = v27;
  v95 = v28;
  v96 = v30;
  if ([(TIProactiveQuickTypeManager *)self usePQT2Flow])
  {
    v34 = v27;

    v35 = [v31 documentState];
    v36 = [v35 contextBeforeInput];
    if (v36)
    {
      v37 = [v31 documentState];
      v38 = [v37 contextBeforeInput];
    }

    else
    {
      v38 = &stru_283FDFAF8;
    }

    v59 = [MEMORY[0x277CCA900] newlineCharacterSet];
    v60 = [(__CFString *)v38 componentsSeparatedByCharactersInSet:v59];
    v61 = [v60 lastObject];

    if (a12)
    {
      v62 = [v61 stringByAppendingString:@" "];
    }

    else
    {
      v62 = v61;
    }

    v27 = v34;
    v63 = [v31 textInputTraits];
    v64 = [v63 textContentType];

    if (![v64 length])
    {
      v65 = [v31 autofillMode];
      if ((v65 - 4) <= 2)
      {
        v66 = **(&unk_278730538 + v65 - 4);

        v64 = v66;
      }
    }

    v67 = objc_alloc(MEMORY[0x277D1C0D0]);
    v68 = [v31 inputContextHistory];
    v69 = [v67 initWithContext:v62 inputContextHistory:v68 contentType:v64];

    [v69 setAvailableApps:v105];
    [v104 addObject:v69];
    if ([v64 length])
    {
      v70 = v62;
      v71 = v101;
    }

    else
    {
      v73 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v74 = [v62 componentsSeparatedByCharactersInSet:v73];
      v75 = [v74 lastObject];
      v76 = v31;
      v77 = v75;
      if (v75)
      {
        v78 = v75;
      }

      else
      {
        v78 = &stru_283FDFAF8;
      }

      v70 = v78;

      v31 = v76;
      v71 = v73;
    }

    v41 = v62;

    v45 = 0;
    v56 = 0;
    v57 = v70;
    v58 = 0;
    v28 = v95;
LABEL_38:
    v72 = v91;
    goto LABEL_39;
  }

  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v41 = v102;
  v42 = [v41 countByEnumeratingWithState:&v150 objects:v159 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = v41;
    v103 = 0;
    v45 = 0;
    v46 = *v151;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v151 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v48 = *(*(&v150 + 1) + 8 * i);
        v49 = [v48 triggerSourceType];
        if (v49 > 2)
        {
          v50 = 0;
        }

        else
        {
          v50 = v49;
          v103 = off_278730550[v49];
          v45 = dword_22CC8A408[v49];
        }

        v51 = [v107 textInputTraits];
        v52 = [v51 textContentType];
        TIStatisticLogProactive(v106, v48, 0, v52, 0);

        v53 = objc_alloc(MEMORY[0x277D1C0D0]);
        v54 = [v48 attributes];
        v55 = [v53 initWithSource:v50 attributes:v54];

        [v55 setAvailableApps:v105];
        [v104 addObject:v55];
      }

      v43 = [v44 countByEnumeratingWithState:&v150 objects:v159 count:16];
    }

    while (v43);
    v41 = v44;
    v56 = v44;
    v31 = v107;
    v27 = v94;
    v28 = v95;
    v57 = v101;
    v58 = v103;
    goto LABEL_38;
  }

  v58 = 0;
  v45 = 0;
  v56 = v41;
  v72 = v91;
  v57 = v101;
LABEL_39:

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke;
  aBlock[3] = &unk_278730480;
  aBlock[4] = self;
  v102 = v56;
  v136 = v102;
  v147 = v28;
  v137 = v58;
  v92 = v72;
  v138 = v92;
  v79 = v27;
  v139 = v79;
  v140 = v31;
  v80 = v106;
  v141 = v80;
  v148 = v96;
  v142 = v98;
  v143 = v99;
  v144 = v93;
  v40 = v57;
  v145 = v40;
  v81 = v104;
  v146 = v81;
  v149 = v45;
  v82 = _Block_copy(aBlock);
  if ([(TIProactiveQuickTypeManager *)self usePQT2Flow])
  {
    v83 = 3;
  }

  else
  {
    v83 = 2;
  }

  if (a17)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_167;
    block[3] = &unk_2787304A8;
    block[4] = self;
    v126 = v81;
    v127 = v79;
    v128 = v97;
    v129 = v80;
    v133 = a13;
    v134 = a14;
    v131 = v45;
    v132 = v83;
    v130 = v82;
    v85 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    TIDispatchAsync();

    v24 = v93;
    v27 = v94;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v155 = 0x3032000000;
    v156 = __Block_byref_object_copy__6482;
    v157 = __Block_byref_object_dispose__6483;
    v158 = 0;
    v119 = 0;
    v120 = &v119;
    v121 = 0x3032000000;
    v122 = __Block_byref_object_copy__6482;
    v123 = __Block_byref_object_dispose__6483;
    v124 = 0;
    v86 = self->_queue;
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_3_169;
    v108[3] = &unk_2787304D0;
    v113 = &v119;
    v108[4] = self;
    v109 = v81;
    v110 = v79;
    v111 = v97;
    v117 = a13;
    v118 = a14;
    v115 = v45;
    v116 = v83;
    v112 = v80;
    p_buf = &buf;
    v24 = v93;
    v27 = v94;
    v87 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v108);
    TIDispatchSync();

    (*(v82 + 2))(v82, v120[5], *(*(&buf + 1) + 40));
    _Block_object_dispose(&v119, 8);

    _Block_object_dispose(&buf, 8);
  }

  v25 = v98;
  v23 = v99;
  v30 = v96;
  v26 = v97;
  v28 = v95;
  v39 = v107;
LABEL_46:

  v88 = *MEMORY[0x277D85DE8];
}

void __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v194 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) usePQT2Flow] & 1) == 0)
  {
    a3 = [*(a1 + 40) objectAtIndexedSubscript:0];
    v7 = [a3 attributes];
    v8 = [v7 valueForKey:*MEMORY[0x277D23050]];

    v9 = [a3 attributes];
    v10 = [v9 valueForKey:*MEMORY[0x277D23028]];

    [*(a1 + 32) addToTypologyTrace:*(a1 + 128) withTriggerSource:*(a1 + 48) withTriggerType:v8 withTriggerSubType:v10 withPredictionResults:v5 withFirstTrigger:a3];
  }

  [*(a1 + 56) timeIntervalSinceNow];
  v12 = v11;
  v135 = v5;
  v151 = a1;
  if ([v5 count])
  {
    v13 = [v5 objectAtIndexedSubscript:0];
    v14 = [v13 trigger];
    if ([v14 triggerSourceType] == 3)
    {

      goto LABEL_16;
    }

    a3 = [v5 objectAtIndexedSubscript:0];
    v15 = [a3 trigger];
    v138 = v6;
    if ([v15 triggerSourceType] == 2)
    {
    }

    else
    {
      v16 = *MEMORY[0x277D23008];
      v191[0] = *MEMORY[0x277D23000];
      v191[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v191 count:2];
      v18 = [v5 objectAtIndexedSubscript:0];
      v19 = [v18 trigger];
      v20 = [v19 attributedString];
      v21 = [v20 objectForKeyedSubscript:@"subtype"];
      v146 = [v17 containsObject:v21];

      a1 = v151;
      v6 = v138;

      if ((v146 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v22 = [v5 objectAtIndexedSubscript:0];
    v23 = [v22 trigger];
    v24 = [v23 triggerSourceType];

    v25 = [v5 firstObject];
    v26 = [v25 originatingBundleID];

    v27 = *(a1 + 64);
    v28 = [v5 objectAtIndexedSubscript:0];
    v29 = [v28 predictionAge];

    if (v29 == -1)
    {
      v147 = 0;
    }

    else
    {
      v30 = [v5 objectAtIndexedSubscript:0];
      v147 = [v30 predictionAge];
    }

    v31 = [v5 objectAtIndexedSubscript:0];
    v32 = [v31 trigger];
    v33 = [v32 attributedString];
    v34 = [v33 objectForKeyedSubscript:@"field"];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v37 = [v5 objectAtIndexedSubscript:0];
      [v37 trigger];
      v38 = objc = v26;
      [v38 attributedString];
      v39 = v27;
      v41 = v40 = v24;
      v36 = [v41 objectForKeyedSubscript:@"type"];

      v24 = v40;
      v27 = v39;

      v26 = objc;
    }

    v42 = v24 != 2;
    v43 = v24 == 2;

    a3 = +[TIConnectionsMetricsTracker sharedInstance];
    a1 = v151;
    v44 = [*(v151 + 72) textInputTraits];
    v45 = [v44 textContentType];
    BYTE1(v132) = v43;
    LOBYTE(v132) = v42;
    [a3 trackPredictionEngagmentWithConversion:0 age:v147 fieldType:v45 resultType:v36 fromBundleId:v26 targetApp:v27 linguistic:v132 semantic:?];

    v5 = v135;
    v6 = v138;
  }

LABEL_16:
  if (v6)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v46 = TIOSLogFacility();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v126 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: Error returned from InputContext: %@, response time = %lf seconds", "-[TIProactiveQuickTypeManager generateAndRenderProactiveSuggestionsForInput:withKeyboardState:withAdditionalPredictions:withSecureCandidateRenderer:withRenderTraits:withInput:withRecipient:withApplication:withLocale:nextInputWillInsertAutospace:withIsResponseDenyListed:withShouldDisableAutoCaps:withAvailableApps:logBlock:async:completion:]_block_invoke", v6, -v12];
      *buf = 138412290;
      v193 = v126;
      _os_log_debug_impl(&dword_22CA55000, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (([*(a1 + 32) usePQT2Flow] & 1) == 0)
    {
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      obj = *(a1 + 40);
      v47 = [obj countByEnumeratingWithState:&v179 objects:v190 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v180;
        v136 = *v180;
        v139 = v6;
        do
        {
          v50 = 0;
          v140 = v48;
          do
          {
            if (*v180 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v51 = *(*(&v179 + 1) + 8 * v50);
            if ([v6 code] == 5)
            {
              v52 = [v6 localizedDescription];
              v53 = *(a1 + 80);
              v148 = [*(a1 + 72) textInputTraits];
              v54 = [v148 textContentType];
              v55 = v53;
              v56 = v51;
              v57 = v52;
              v58 = v54;
              v59 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v60 = [v57 componentsSeparatedByCharactersInSet:v59];

              v185 = 0u;
              v186 = 0u;
              v183 = 0u;
              v184 = 0u;
              v61 = v60;
              v62 = [v61 countByEnumeratingWithState:&v183 objects:buf count:16];
              if (v62)
              {
                v63 = v62;
                v64 = *v184;
                do
                {
                  for (i = 0; i != v63; ++i)
                  {
                    if (*v184 != v64)
                    {
                      objc_enumerationMutation(v61);
                    }

                    TIStatisticLogProactiveDescription(v55, v56, *(*(&v183 + 1) + 8 * i), @"suggestion", v58);
                  }

                  v63 = [v61 countByEnumeratingWithState:&v183 objects:buf count:16];
                }

                while (v63);
              }

              a1 = v151;
              v66 = *(v151 + 80);
              v67 = [*(v151 + 72) textInputTraits];
              v68 = [v67 textContentType];
              TIStatisticLogProactive(v66, v56, 1, v68, 0);

              v49 = v136;
              v6 = v139;
              v48 = v140;
            }

            else
            {
              v69 = *(a1 + 80);
              v57 = [*(a1 + 72) textInputTraits];
              v67 = [v57 textContentType];
              TIStatisticLogProactive(v69, v51, 2, v67, 0);
            }

            ++v50;
          }

          while (v50 != v48);
          v48 = [obj countByEnumeratingWithState:&v179 objects:v190 count:16];
        }

        while (v48);
      }

      v5 = v135;
    }

    (*(*(a1 + 136) + 16))();
    goto LABEL_112;
  }

  v70 = [v5 count];
  if (v70 >= 1)
  {
    if ([*(a1 + 40) count])
    {
      v141 = [*(a1 + 40) objectAtIndex:0];
    }

    else
    {
      v141 = 0;
    }

    v83 = "TextInputCore";
    while (1)
    {
      if (!_os_feature_enabled_impl() || [*(a1 + 72) autofillMode] != 4)
      {
        goto LABEL_77;
      }

      [*(a1 + 72) documentState];
      v85 = v84 = a1;
      v86 = [v85 contextBeforeInput];
      if (v86)
      {
        v6 = [*(v84 + 72) documentState];
        a3 = [v6 contextBeforeInput];
        if ([a3 length])
        {
          v87 = 0;
          goto LABEL_73;
        }

        v84 = v151;
      }

      v149 = a3;
      v88 = [*(v84 + 72) documentState];
      v89 = [v88 contextAfterInput];
      if (!v89)
      {

        if (!v86)
        {

          a3 = v149;
          a1 = v151;
LABEL_74:
          if (([*(a1 + 88) disableHideMyEmail] & 1) == 0)
          {
            [*(a1 + 88) setShouldOfferHideMyEmail:1];
          }

          goto LABEL_77;
        }

        v87 = 1;
        a3 = v149;
        goto LABEL_73;
      }

      v90 = v89;
      obja = v6;
      v91 = v83;
      v92 = [*(v84 + 72) documentState];
      v93 = [v92 contextAfterInput];
      v94 = [v93 length];
      v87 = v94 == 0;

      if (v86)
      {
        v83 = v91;
        v6 = obja;
        a3 = v149;
LABEL_73:

        a1 = v151;
        if (v87)
        {
          goto LABEL_74;
        }

        goto LABEL_77;
      }

      a3 = v149;
      a1 = v151;
      v83 = v91;
      v6 = obja;
      if (!v94)
      {
        goto LABEL_74;
      }

LABEL_77:
      if (!--v70)
      {
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel > 1)
        {
          v95 = TIOSLogFacility();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
          {
            v127 = MEMORY[0x277CCACA8];
            v128 = [v135 count];
            [*(a1 + 56) timeIntervalSinceNow];
            v130 = [v127 stringWithFormat:@"%s ProactiveQuickType:TI: %lu results returned from InputContext, response time = %lf seconds", "-[TIProactiveQuickTypeManager generateAndRenderProactiveSuggestionsForInput:withKeyboardState:withAdditionalPredictions:withSecureCandidateRenderer:withRenderTraits:withInput:withRecipient:withApplication:withLocale:nextInputWillInsertAutospace:withIsResponseDenyListed:withShouldDisableAutoCaps:withAvailableApps:logBlock:async:completion:]_block_invoke", v128, -v129];
            *buf = 138412290;
            v193 = v130;
            _os_log_debug_impl(&dword_22CA55000, v95, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        v96 = [*(a1 + 32) renderItems:v135 withAdditionalPredictions:*(a1 + 96) withSecureCandidateRenderer:*(a1 + 104) withRenderTraits:*(a1 + 88) withInput:*(a1 + 112)];
        v137 = [v96 mutableCopy];

        context = objc_autoreleasePoolPush();
        if ([*(a1 + 32) usePQT2Flow])
        {
          v177 = 0u;
          v178 = 0u;
          v175 = 0u;
          v176 = 0u;
          v97 = v135;
          v98 = [v97 countByEnumeratingWithState:&v175 objects:v189 count:16];
          v6 = 0;
          if (v98)
          {
            v99 = v98;
            v100 = *v176;
            do
            {
              for (j = 0; j != v99; ++j)
              {
                if (*v176 != v100)
                {
                  objc_enumerationMutation(v97);
                }

                v102 = *(*(&v175 + 1) + 8 * j);
                v103 = [v102 value];
                v104 = [v103 length];

                if (v104)
                {
                  v105 = +[TIProactiveQuickTypeManager sharedInstance];
                  v106 = [v102 value];
                  [v105 provideFeedbackForString:v106 type:3 style:1];
                }
              }

              v99 = [v97 countByEnumeratingWithState:&v175 objects:v189 count:16];
            }

            while (v99);
          }

          v107 = +[TIProactiveQuickTypeManager sharedInstance];
          [v107 provideFeedbackForString:&stru_283FDFAF8 type:3 style:1];
        }

        else
        {
          v133 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(*(a1 + 120), "count")}];
          v108 = [MEMORY[0x277CCAB58] indexSet];
          v109 = [MEMORY[0x277CCAB58] indexSet];
          v150 = objc_opt_new();
          v171 = 0u;
          v172 = 0u;
          v173 = 0u;
          v174 = 0u;
          objb = v135;
          v110 = [objb countByEnumeratingWithState:&v171 objects:v188 count:16];
          if (v110)
          {
            v111 = v110;
            v112 = *v172;
            do
            {
              for (k = 0; k != v111; ++k)
              {
                if (*v172 != v112)
                {
                  objc_enumerationMutation(objb);
                }

                v114 = *(*(&v171 + 1) + 8 * k);
                v115 = *(v151 + 120);
                v170[0] = MEMORY[0x277D85DD0];
                v170[1] = 3221225472;
                v170[2] = __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_159;
                v170[3] = &unk_278730408;
                v170[4] = v114;
                v116 = [v115 indexOfObjectPassingTest:v170];
                v117 = [v114 value];
                [v150 addObject:v117];

                if ([v108 containsIndex:v116])
                {
                  v118 = v109;
                }

                else
                {
                  v118 = v108;
                }

                [v118 addIndex:v116];
              }

              v111 = [objb countByEnumeratingWithState:&v171 objects:v188 count:16];
            }

            while (v111);
          }

          v107 = v133;
          [v133 removeIndexes:v108];
          v119 = v109;
          [v108 removeIndexes:v109];
          v166[0] = MEMORY[0x277D85DD0];
          v166[1] = 3221225472;
          v166[2] = __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_2;
          v166[3] = &unk_278730430;
          a1 = v151;
          v167 = *(v151 + 80);
          v168 = *(v151 + 40);
          v169 = *(v151 + 72);
          [v133 enumerateIndexesUsingBlock:v166];
          v161[0] = MEMORY[0x277D85DD0];
          v161[1] = 3221225472;
          v161[2] = __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_3;
          v161[3] = &unk_278730458;
          v162 = *(v151 + 80);
          v163 = *(v151 + 40);
          v164 = *(v151 + 72);
          v120 = v150;
          v165 = v120;
          [v108 enumerateIndexesUsingBlock:v161];
          v156[0] = MEMORY[0x277D85DD0];
          v156[1] = 3221225472;
          v156[2] = __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_4;
          v156[3] = &unk_278730458;
          v157 = *(v151 + 80);
          v158 = *(v151 + 40);
          v159 = *(v151 + 72);
          v160 = v120;
          v121 = v120;
          [v119 enumerateIndexesUsingBlock:v156];

          v6 = 0;
        }

        objc_autoreleasePoolPop(context);
        (*(*(a1 + 136) + 16))();
        if ([v137 count] && v141)
        {
          v122 = [MEMORY[0x277CBEAA8] date];
          v123 = *(a1 + 32);
          v124 = *(v123 + 32);
          *(v123 + 32) = v122;

          objc_storeStrong((*(a1 + 32) + 24), v141);
        }

        v5 = v135;
        goto LABEL_112;
      }
    }
  }

  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v71 = TIOSLogFacility();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      v131 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: No suggestions returned from InputContext, response time = %lf seconds", "-[TIProactiveQuickTypeManager generateAndRenderProactiveSuggestionsForInput:withKeyboardState:withAdditionalPredictions:withSecureCandidateRenderer:withRenderTraits:withInput:withRecipient:withApplication:withLocale:nextInputWillInsertAutospace:withIsResponseDenyListed:withShouldDisableAutoCaps:withAvailableApps:logBlock:async:completion:]_block_invoke_5", -v12];
      *buf = 138412290;
      v193 = v131;
      _os_log_debug_impl(&dword_22CA55000, v71, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v72 = *(v151 + 144);
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v73 = *(v151 + 40);
  v74 = [v73 countByEnumeratingWithState:&v152 objects:v187 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v153;
    if (v12 * -1000.0 <= v72)
    {
      v77 = 1;
    }

    else
    {
      v77 = 3;
    }

    do
    {
      for (m = 0; m != v75; ++m)
      {
        if (*v153 != v76)
        {
          objc_enumerationMutation(v73);
        }

        v79 = *(*(&v152 + 1) + 8 * m);
        v80 = *(v151 + 80);
        v81 = [*(v151 + 72) textInputTraits];
        v82 = [v81 textContentType];
        TIStatisticLogProactive(v80, v79, v77, v82, 0);
      }

      v75 = [v73 countByEnumeratingWithState:&v152 objects:v187 count:16];
    }

    while (v75);
  }

  (*(*(v151 + 136) + 16))();
  v5 = v135;
  v6 = 0;
LABEL_112:

  v125 = *MEMORY[0x277D85DE8];
}

void __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_167(uint64_t a1)
{
  v2 = [*(a1 + 32) inputContextPredictionManager];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 88);
  v8 = *(a1 + 89);
  v9 = *(a1 + 80);
  v10 = *(a1 + 84);
  v16 = 0;
  v11 = [v2 searchWithTriggers:v3 application:v4 recipient:v5 localeIdentifier:v6 isResponseDenyListed:v7 shouldDisableAutoCaps:v8 timeoutInMilliseconds:__PAIR64__(v10 resultLimit:v9) error:&v16];
  v12 = v16;

  v15 = *(a1 + 72);
  v13 = v12;
  v14 = v11;
  TIDispatchAsync();
}

void __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_3_169(uint64_t a1)
{
  v2 = [*(a1 + 32) inputContextPredictionManager];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 96);
  v8 = *(a1 + 97);
  v9 = *(a1 + 88);
  v10 = *(a1 + 92);
  v11 = *(*(a1 + 80) + 8);
  obj = *(v11 + 40);
  v12 = [v2 searchWithTriggers:v3 application:v4 recipient:v5 localeIdentifier:v6 isResponseDenyListed:v7 shouldDisableAutoCaps:v8 timeoutInMilliseconds:__PAIR64__(v10 resultLimit:v9) error:&obj];
  objc_storeStrong((v11 + 40), obj);
  v13 = *(*(a1 + 72) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

uint64_t __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_159(uint64_t a1, void *a2)
{
  v3 = [a2 attributedString];
  v4 = [*(a1 + 32) trigger];
  v5 = [v4 attributedString];
  v6 = [v3 isEqual:v5];

  return v6;
}

void __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v4 = [*(a1 + 48) textInputTraits];
  v5 = [v4 textContentType];
  TIStatisticLogProactive(v3, v6, 1, v5, 0);
}

void __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v5 = [*(a1 + 48) textInputTraits];
  v6 = [v5 textContentType];
  v14[0] = [*(a1 + 56) firstObject];
  v7 = MEMORY[0x277CBEA60];
  v8 = v14[0];
  v9 = v6;
  v13 = v4;
  v10 = v3;
  v11 = [v7 arrayWithObjects:v14 count:1];

  TIStatisticLogProactive(v10, v13, 4, v9, v11);
  v12 = *MEMORY[0x277D85DE8];
}

void __341__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsForInput_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withIsResponseDenyListed_withShouldDisableAutoCaps_withAvailableApps_logBlock_async_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v4 = [*(a1 + 48) textInputTraits];
  v5 = [v4 textContentType];
  TIStatisticLogProactive(v3, v6, 5, v5, *(a1 + 56));
}

- (id)generateAndRenderProactiveSuggestionsWithTriggers:(id)a3 withKeyboardState:(id)a4 withAdditionalPredictions:(id)a5 withSecureCandidateRenderer:(id)a6 withRenderTraits:(id)a7 withInput:(id)a8 withRecipient:(id)a9 withApplication:(id)a10 withLocale:(id)a11 nextInputWillInsertAutospace:(BOOL)a12 withAvailableApps:(id)a13 logBlock:(id)a14
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6482;
  v23 = __Block_byref_object_dispose__6483;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __277__TIProactiveQuickTypeManager_generateAndRenderProactiveSuggestionsWithTriggers_withKeyboardState_withAdditionalPredictions_withSecureCandidateRenderer_withRenderTraits_withInput_withRecipient_withApplication_withLocale_nextInputWillInsertAutospace_withAvailableApps_logBlock___block_invoke;
  v18[3] = &unk_278731EE8;
  v18[4] = &v19;
  LOBYTE(v17) = 0;
  *(&v16 + 1) = 0;
  LOBYTE(v16) = a12;
  [TIProactiveQuickTypeManager generateAndRenderProactiveSuggestionsForInput:"generateAndRenderProactiveSuggestionsForInput:withKeyboardState:withAdditionalPredictions:withSecureCandidateRenderer:withRenderTraits:withInput:withRecipient:withApplication:withLocale:nextInputWillInsertAutospace:withIsResponseDenyListed:withShouldDisableAutoCaps:withAvailableApps:logBlock:async:completion:" withKeyboardState:a3 withAdditionalPredictions:a4 withSecureCandidateRenderer:a5 withRenderTraits:a6 withInput:a7 withRecipient:a8 withApplication:a9 withLocale:a10 nextInputWillInsertAutospace:a11 withIsResponseDenyListed:v16 withShouldDisableAutoCaps:a13 withAvailableApps:a14 logBlock:v17 async:v18 completion:?];
  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v14;
}

- (void)addToTypologyTrace:(id)a3 withTriggerSource:(id)a4 withTriggerType:(id)a5 withTriggerSubType:(id)a6 withPredictionResults:(id)a7 withFirstTrigger:(id)a8
{
  v43 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if ([v17 count])
  {
    if (v14 && [v14 length])
    {
      v19 = [@"Proactive Trigger:\n" stringByAppendingString:v14];
      v13[2](v13, v19);
    }

    if (v15 && [v15 length])
    {
      v20 = [@"Proactive Trigger Type:\n" stringByAppendingString:v15];
      v13[2](v13, v20);
    }

    v36 = v18;
    v37 = v14;
    if (v16 && [v16 length])
    {
      v21 = [@"Proactive Trigger SubType:\n" stringByAppendingString:v16];
      v13[2](v13, v21);
    }

    v13[2](v13, @"Proactive Suggestions:");
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v22 = v17;
    v23 = [v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v39;
      do
      {
        v26 = 0;
        do
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v38 + 1) + 8 * v26) value];
          v13[2](v13, v27);

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v24);
    }

    v18 = v36;
    v14 = v37;
  }

  else
  {
    v28 = [v18 attributes];
    v29 = [v28 objectForKey:*MEMORY[0x277D22F30]];
    v30 = [MEMORY[0x277CBEB68] null];
    v31 = [v29 isEqual:v30];

    if ((v31 & 1) == 0)
    {
      if (v14 && [v14 length])
      {
        v32 = [@"Proactive Triggers:\n" stringByAppendingString:v14];
        v13[2](v13, v32);
      }

      if (v15 && [v15 length])
      {
        v33 = [@"Proactive Trigger Type:\n" stringByAppendingString:v15];
        v13[2](v13, v33);
      }

      if (v16 && [v16 length])
      {
        v34 = [@"Proactive Trigger SubType:\n" stringByAppendingString:v16];
        v13[2](v13, v34);
      }

      v13[2](v13, @"Proactive Suggestions:\nNone");
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (id)renderItems:(id)a3 withAdditionalPredictions:(id)a4 withSecureCandidateRenderer:(id)a5 withRenderTraits:(id)a6 withInput:(id)a7
{
  v115 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v102 = a6;
  v15 = a7;
  v16 = [MEMORY[0x277CBEB18] array];
  v103 = v14;
  v104 = v15;
  v107 = v16;
  v101 = v13;
  if (![(TIProactiveQuickTypeManager *)self usePQT2Flow])
  {
LABEL_12:
    v28 = [objc_opt_class() buildSecureCandidateFrom:v12 withSecureCandidateRenderer:v14 input:v15];
    if ([v12 count] && (objc_msgSend(v12, "objectAtIndexedSubscript:", 0), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "layoutHint"), v29, v30 == 1))
    {
      [v102 setSharedCellCount:0];
      v31 = MEMORY[0x277CBEA60];
      v32 = [v28 objectAtIndexedSubscript:0];
      obja = [v31 arrayWithObject:v32];

      [v102 setSharedCellCount:0];
      if (-[TIProactiveQuickTypeManager usePQT2Flow](self, "usePQT2Flow") && [v12 count] >= 2)
      {
        if ([v12 count] >= 2)
        {
          v33 = 0;
          v34 = 1;
          while (1)
          {
            v35 = [v12 objectAtIndexedSubscript:v34];
            v36 = [v35 identifier];
            v37 = [v36 isEqualToString:@"SmartReply"];

            if (v37)
            {
              v38 = objc_alloc(MEMORY[0x277D6F568]);
              v39 = [v35 value];
              [v35 label];
              v41 = v40 = v16;
              v42 = [v38 initWithCandidate:v39 responseKitCategory:v41];
              [v40 addObject:v42];

              if (v33 == 1)
              {

                goto LABEL_30;
              }

              v33 = 1;
              v16 = v107;
            }

            if (++v34 >= [v12 count])
            {
              goto LABEL_30;
            }
          }
        }
      }

      else
      {
        v44 = [v13 count];
        if (v44 >= 2)
        {
          v45 = 2;
        }

        else
        {
          v45 = v44;
        }

        if (v44)
        {
          v46 = 0;
          do
          {
            v47 = [v13 objectAtIndexedSubscript:v46];
            v48 = MEMORY[0x277D6F3D8];
            v49 = [v47 candidate];
            v50 = [v47 input];
            v51 = [v48 candidateWithCandidate:v49 forInput:v50];
            [v16 addObject:v51];

            ++v46;
          }

          while (v45 != v46);
LABEL_30:
          v14 = v103;
        }
      }

      v43 = obja;
    }

    else
    {
      v43 = v28;
    }

    if (!_os_feature_enabled_impl() || ![v102 shouldOfferHideMyEmail])
    {
      v56 = 0;
      goto LABEL_46;
    }

    v52 = +[TIAppAutofillManager sharedInstance];
    v53 = [v52 secureCandidateRenderer];

    if (v53)
    {
      v54 = +[TIAppAutofillManager sharedInstance];
      v55 = [v54 secureCandidateRenderer];
      v56 = [v55 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];

      if (v56 && [v56 length])
      {
LABEL_45:
        [v102 setHideMyEmailLocalizedText:v56];
        v60 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:&stru_283FDFAF8 secureContent:v56 secureFormattedContent:v56 input:&stru_283FDFAF8 truncationSentinel:0];
        v61 = [v43 mutableCopy];
        [v61 removeLastObject];
        [v61 addObject:v60];

        v43 = v61;
LABEL_46:
        v62 = [v14 slotIDsFromSecureCandidates:v43 withRenderTraits:v102];
        v63 = _os_feature_enabled_impl();
        obj = v43;
        v100 = v56;
        if (v56)
        {
          if (v63)
          {
            if ([v102 shouldOfferHideMyEmail])
            {
              v64 = [v43 count];
              if (v64 == [v62 count])
              {
                v65 = [v43 lastObject];
                v66 = [v65 secureContent];
                v67 = [v66 isEqualToString:v56];

                if (v67)
                {
                  v68 = [v62 subarrayWithRange:{0, 1}];

                  v62 = v68;
                }
              }
            }
          }
        }

        if ([v62 count])
        {
          v69 = 0;
          do
          {
            v70 = [v12 objectAtIndexedSubscript:v69];
            v71 = [v70 trigger];
            if ([v71 triggerSourceType] == 3)
            {
              v72 = 3;
            }

            else
            {
              v73 = [v12 objectAtIndexedSubscript:v69];
              v74 = [v73 trigger];
              v75 = [v74 triggerSourceType];
              if (v75 == 2)
              {
                v72 = 2;
              }

              else
              {
                v72 = v75 == 1;
              }
            }

            v76 = [TIProactiveTrigger alloc];
            v77 = [v12 objectAtIndexedSubscript:v69];
            v78 = [v77 trigger];
            v79 = [v78 attributedString];
            v80 = [(TIProactiveTrigger *)v76 initWithSourceType:v72 attributes:v79];

            v81 = [v62 objectAtIndexedSubscript:v69];
            v82 = [v81 slotID];

            v83 = [MEMORY[0x277D6F3D8] secureCandidateForInput:&stru_283FDFAF8 slotID:v82];
            if ([v62 count] <= v69)
            {
              [v83 setSecureCandidateWidth:0.0];
            }

            else
            {
              v84 = [v62 objectAtIndexedSubscript:v69];
              [v84 secureCandidateWidth];
              [v83 setSecureCandidateWidth:?];
            }

            v85 = [obj objectAtIndexedSubscript:v69];
            [v83 setSecureCandidateHash:{objc_msgSend(v85, "candidateHash")}];

            [v83 setIndexForMetrics:v69];
            [v107 addObject:v83];
            v86 = objc_alloc(MEMORY[0x277D6F568]);
            v87 = [obj objectAtIndexedSubscript:v69];
            v88 = [v87 secureFormattedContent];
            v89 = [v12 objectAtIndexedSubscript:v69];
            LOBYTE(v99) = 1;
            v90 = [v86 initWithCandidate:v88 forInput:v104 rawInput:0 wordOriginFeedbackID:0 usageTrackingMask:0 sourceMask:0 secureContentCandidate:v99 proactiveTrigger:v80 proactivePredictedItem:{v89, v100}];

            [v90 setIndexForMetrics:v69];
            v91 = [v12 objectAtIndexedSubscript:v69];
            [v90 setAgeForConnectionsMetrics:{objc_msgSend(v91, "predictionAge")}];

            v14 = v103;
            v92 = [v103 secureCandidateCache];
            v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v82];
            [v92 setObject:v90 forKey:v93];

            v94 = +[TIKeyboardSecureTouchManager sharedInstance];
            [v94 registerSlotID:v82];

            ++v69;
          }

          while (v69 < [v62 count]);
        }

        v13 = v101;
        goto LABEL_65;
      }
    }

    else
    {
      v57 = TIProactiveQuickTypeOSLogFacility();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s self.secureCandidateRenderer is nil", "-[TIProactiveQuickTypeManager renderItems:withAdditionalPredictions:withSecureCandidateRenderer:withRenderTraits:withInput:]"];
        *buf = 138412290;
        v113 = v98;
        _os_log_debug_impl(&dword_22CA55000, v57, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v56 = 0;
    }

    v58 = TIProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      v97 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Localized Hide My Email text is nil", "-[TIProactiveQuickTypeManager renderItems:withAdditionalPredictions:withSecureCandidateRenderer:withRenderTraits:withInput:]"];
      *buf = 138412290;
      v113 = v97;
      _os_log_debug_impl(&dword_22CA55000, v58, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v59 = *MEMORY[0x277D6F980];
    v56 = v59;
    goto LABEL_45;
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v12;
  v17 = [obj countByEnumeratingWithState:&v108 objects:v114 count:16];
  if (!v17)
  {
    goto LABEL_66;
  }

  v18 = v17;
  v19 = *v109;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v109 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v108 + 1) + 8 * i);
      v22 = [v21 identifier];
      v23 = [v22 isEqualToString:@"SmartReply"];

      if (!v23)
      {
        v16 = v107;
        [v107 removeAllObjects];

        v13 = v101;
        goto LABEL_12;
      }

      v24 = objc_alloc(MEMORY[0x277D6F568]);
      v25 = [v21 value];
      v26 = [v21 label];
      v27 = [v24 initWithCandidate:v25 responseKitCategory:v26];
      [v107 addObject:v27];
    }

    v18 = [obj countByEnumeratingWithState:&v108 objects:v114 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

  v13 = v101;
LABEL_65:
  v16 = v107;
  v15 = v104;
LABEL_66:

  v95 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_makeQueue
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v3 = dispatch_queue_create("com.apple.TextInput.ProactiveQuickTypeManager", v2);

  return v3;
}

- (void)dealloc
{
  v3 = +[TIKeyboardActivityController sharedController];
  [v3 removeActivityObserver:self];

  v4.receiver = self;
  v4.super_class = TIProactiveQuickTypeManager;
  [(TIProactiveQuickTypeManager *)&v4 dealloc];
}

- (TIProactiveQuickTypeManager)init
{
  v12.receiver = self;
  v12.super_class = TIProactiveQuickTypeManager;
  v2 = [(TIProactiveQuickTypeManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(TIProactiveQuickTypeManager *)v2 _makeQueue];
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = [MEMORY[0x277D1C0B0] predictionManager];
    inputContextPredictionManager = v3->_inputContextPredictionManager;
    v3->_inputContextPredictionManager = v6;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__TIProactiveQuickTypeManager_init__block_invoke;
    block[3] = &unk_278733308;
    v11 = v3;
    v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    TIDispatchAsync();
  }

  return v3;
}

void __35__TIProactiveQuickTypeManager_init__block_invoke(uint64_t a1)
{
  v2 = +[TIKeyboardActivityController sharedController];
  [v2 addActivityObserver:*(a1 + 32)];
}

+ (id)buildSecureCandidateFrom:(id)a3 withSecureCandidateRenderer:(id)a4 input:(id)a5
{
  v103 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v83 = a5;
  v86 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  if ([v7 count] >= 2)
  {
    v9 = 1;
    do
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [v7 objectAtIndexedSubscript:v9 - 1];
      v12 = [v11 identifier];
      v13 = [v7 objectAtIndexedSubscript:v9];
      v14 = [v13 identifier];
      LODWORD(v10) = [v10 _string:v12 matchesString:v14];

      v84 = v10;
      if ((v10 & 1) == 0)
      {
        break;
      }

      ++v9;
    }

    while (v9 < [v7 count]);
  }

  else
  {
    v84 = 1;
  }

  v88 = [v8 _truncationSentinel];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v7;
  v85 = [obj countByEnumeratingWithState:&v96 objects:v102 count:16];
  if (v85)
  {
    v82 = *v97;
    v81 = v8;
    do
    {
      v15 = 0;
      do
      {
        if (*v97 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v96 + 1) + 8 * v15);
        v17 = [v16 operationData];
        v18 = &stru_283FDFAF8;
        if (!v17)
        {
          v18 = [v16 value];
        }

        v19 = [v16 label];
        if (v19)
        {
          v20 = v19;
          v21 = [v16 shouldAggregate];

          if (v21)
          {
            v22 = [v8 localizedStringForKey:@"LOCATION_AGGREGATED_NAME_AND_ADDRESS"];
            v23 = MEMORY[0x277CCACA8];
            v95 = 0;
            v24 = [v16 label];
            v25 = [v16 value];
            v26 = [v23 stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@%@" error:&v95, v24, v25];
            v27 = v95;
            v28 = &stru_283FDFAF8;
            if (v26)
            {
              v28 = v26;
            }

            v29 = v28;

            if (v27)
            {
              if (TICanLogMessageAtLevel_onceToken != -1)
              {
                dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
              }

              v30 = TIOSLogFacility();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: ERROR: invalid localized format for key LOCATION_AGGREGATED_NAME_AND_ADDRESS: %@", "+[TIProactiveQuickTypeManager buildSecureCandidateFrom:withSecureCandidateRenderer:input:]", v27];
                *buf = 138412290;
                v101 = v75;
                _os_log_debug_impl(&dword_22CA55000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }

            v18 = v29;
          }
        }

        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        if (TICanLogMessageAtLevel_logLevel >= 2)
        {
          v31 = TIOSLogFacility();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v72 = MEMORY[0x277CCACA8];
            v73 = [v16 value];
            v74 = [v72 stringWithFormat:@"%s ProactiveQuickType:TI: Rendering results with value= %@", "+[TIProactiveQuickTypeManager buildSecureCandidateFrom:withSecureCandidateRenderer:input:]", v73];
            *buf = 138412290;
            v101 = v74;
            _os_log_debug_impl(&dword_22CA55000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }

        v91 = [v8 localizedStringForKey:@"PARENTHESIZED_LABEL"];
        v90 = [v8 localizedStringForKey:@"APP_CONNECTION_ATTRIBUTION"];
        if ([obj count] > 1)
        {
          v32 = v84;
        }

        else
        {
          v32 = 0;
        }

        v33 = [v16 flags];
        v34 = [v16 label];
        if ([v34 length])
        {
          v35 = [v16 label];
          v36 = [v35 isEqualToString:@"unlabeled"];
        }

        else
        {
          v36 = 1;
        }

        v37 = [v16 originatingBundleID];

        if (v37)
        {
          v38 = [v16 originatingBundleID];
          v39 = [v8 localizedApplicationNameWithBundleIdentifier:v38];

          if (v39)
          {
            v94 = 0;
            v40 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v90 validFormatSpecifiers:@"%@" error:&v94, v39];
            v41 = v94;
            v42 = &stru_283FDFAF8;
            if (v40)
            {
              v42 = v40;
            }

            v89 = v42;

            if (v41)
            {
              if (TICanLogMessageAtLevel_onceToken != -1)
              {
                dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
              }

              v43 = TIOSLogFacility();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                v80 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: ERROR: invalid localized format for key APP_CONNECTION_ATTRIBUTION: %@", "+[TIProactiveQuickTypeManager buildSecureCandidateFrom:withSecureCandidateRenderer:input:]", v41];
                *buf = 138412290;
                v101 = v80;
                _os_log_debug_impl(&dword_22CA55000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          else
          {
            v89 = 0;
          }
        }

        else
        {
          v89 = 0;
          v39 = 0;
        }

        if (((v33 & 1) == 0) & ~v32 | v36 & 1)
        {
          v44 = 0;
          v45 = 0;
        }

        else
        {
          v55 = [v16 label];
          v45 = v55;
          v44 = v55 != 0;
          if ((v33 & 1) != 0 && v55)
          {
            v53 = v55;
            v45 = v53;
            goto LABEL_73;
          }
        }

        v46 = [v16 name];

        if (v46 && v44)
        {
          v47 = MEMORY[0x277CCACA8];
          v93 = 0;
          v48 = [v16 name];
          v49 = [v48 stringByAppendingString:v88];
          v50 = [v47 stringWithValidatedFormat:v91 validFormatSpecifiers:@"%@%@" error:&v93, v49, v45];
          v51 = v93;
          v52 = &stru_283FDFAF8;
          if (v50)
          {
            v52 = v50;
          }

          v53 = v52;

          if (v51)
          {
            if (TICanLogMessageAtLevel_onceToken != -1)
            {
              dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
            }

            v54 = TIOSLogFacility();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_93;
            }

            goto LABEL_71;
          }

          goto LABEL_72;
        }

        v56 = [v16 label];

        if (v56 && v39)
        {
          v57 = MEMORY[0x277CCACA8];
          v92 = 0;
          v58 = [v16 label];
          v59 = [v58 stringByAppendingString:v88];
          v60 = [v57 stringWithValidatedFormat:v91 validFormatSpecifiers:@"%@%@" error:&v92, v59, v89];
          v51 = v92;
          v61 = &stru_283FDFAF8;
          if (v60)
          {
            v61 = v60;
          }

          v53 = v61;

          if (v51)
          {
            if (TICanLogMessageAtLevel_onceToken != -1)
            {
              dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
            }

            v54 = TIOSLogFacility();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
LABEL_93:
              v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: ERROR: invalid localized format for key PARENTHESIZED_LABEL: %@", "+[TIProactiveQuickTypeManager buildSecureCandidateFrom:withSecureCandidateRenderer:input:]", v51];
              *buf = 138412290;
              v101 = v76;
              _os_log_debug_impl(&dword_22CA55000, v54, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

LABEL_71:
          }

LABEL_72:

          v8 = v81;
LABEL_73:
          v62 = [v16 value];
          v63 = [(__CFString *)v53 isEqualToString:v62];

          if (!v63)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        }

        v68 = [v16 label];
        if (v68 || !v39)
        {
        }

        else if (![v16 itemType])
        {
          v69 = v89;
          goto LABEL_90;
        }

        v70 = [v16 name];

        if (v70)
        {
          v69 = [v16 name];
        }

        else
        {
          v71 = [v16 label];

          if (!v71)
          {
            v53 = 0;
            goto LABEL_74;
          }

          v69 = [v16 label];
        }

LABEL_90:
        v53 = v69;
        if (v69)
        {
          goto LABEL_73;
        }

LABEL_74:

        v53 = &stru_283FDFAF8;
LABEL_75:
        v64 = [v16 value];
        if (([v16 flags] & 4) != 0)
        {
          v65 = [v16 label];

          v66 = [v16 name];

          v64 = v66;
          v53 = v65;
        }

        v67 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:v53 secureContent:v64 secureFormattedContent:v18 input:v83 truncationSentinel:v88];
        if (([v86 containsObject:v67] & 1) == 0)
        {
          [v86 addObject:v67];
        }

        ++v15;
      }

      while (v85 != v15);
      v77 = [obj countByEnumeratingWithState:&v96 objects:v102 count:16];
      v85 = v77;
    }

    while (v77);
  }

  v78 = *MEMORY[0x277D85DE8];

  return v86;
}

+ (id)proactiveTriggerForTextContentType:(id)a3 withContextBeforeInput:(id)a4 autofillMode:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 length] | a5)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v9 setValue:@"triggerTypeConnections" forKey:*MEMORY[0x277D23050]];
    if ([v7 length])
    {
      [v9 setValue:v7 forKey:@"textContentTypeTag"];
    }

    v10 = [v8 stringByReplacingOccurrencesOfString:@"​" withString:&stru_283FDFAF8];

    if (_os_feature_enabled_impl())
    {
      if (v10)
      {
        v11 = [v10 length];
        v12 = a5 - 4;
        if (v12 <= 2)
        {
          if (v11)
          {
            if (![v7 length])
            {
              [v9 setValue:**(&unk_278730538 + v12) forKey:@"textContentTypeTag"];
            }

            [v9 setValue:v10 forKey:@"contextBeforeInput"];
          }
        }
      }
    }

    v13 = [[TIProactiveTrigger alloc] initWithSourceType:2 attributes:v9];
  }

  else
  {
    v13 = 0;
    v10 = v8;
  }

  return v13;
}

+ (id)proactiveTriggerForTextContentType:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v4 = TIOSLogFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ProactiveQuickType:TI: Creating a connections trigger for tagged text field: %@", "+[TIProactiveQuickTypeManager proactiveTriggerForTextContentType:]", v3];
        *buf = 138412290;
        v11 = v9;
        _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v5 setValue:@"triggerTypeConnections" forKey:*MEMORY[0x277D23050]];
    [v5 setValue:v3 forKey:@"textContentTypeTag"];
    v6 = [[TIProactiveTrigger alloc] initWithSourceType:2 attributes:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __48__TIProactiveQuickTypeManager_singletonInstance__block_invoke()
{
  singletonInstance_singleton = objc_alloc_init(TIProactiveQuickTypeManager);

  return MEMORY[0x2821F96F8]();
}

- (TIProactiveQuickTypeManager)initWithICManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TIProactiveQuickTypeManager;
  v6 = [(TIProactiveQuickTypeManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(TIProactiveQuickTypeManager *)v6 _makeQueue];
    queue = v7->_queue;
    v7->_queue = v8;

    objc_storeStrong(&v7->_inputContextPredictionManager, a3);
    v10 = +[TIKeyboardActivityController sharedController];
    [v10 addActivityObserver:v7];
  }

  return v7;
}

+ (void)setSharedTIProactiveQuickTypeManager:(id)a3
{
  v4 = a3;
  if (__testingInstance_6640 != v4)
  {
    v5 = v4;
    objc_storeStrong(&__testingInstance_6640, a3);
    v4 = v5;
  }
}

@end