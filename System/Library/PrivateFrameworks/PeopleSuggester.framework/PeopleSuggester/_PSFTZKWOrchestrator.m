@interface _PSFTZKWOrchestrator
- (_PSFTZKWOrchestrator)initWithKNNModel:(id)a3 interactionStore:(id)a4;
- (id)_getBlendingLayerSuggestionsWithContext:(id)a3;
- (id)_getDirectSuggestionsWithContext:(id)a3 withTimeout:(double)a4;
- (id)getSuggestionsWithPredictionContext:(id)a3;
- (void)_createFaceTimeInteractionModelWithKNNModel:(id)a3;
- (void)_createFallbackInteractionModelWithKNNModel:(id)a3;
- (void)_createStructuredCalendarModelWithEventStore:(id)a3 contactStore:(id)a4;
- (void)_createUnstructuredCalendarModelWithEventStore:(id)a3 contactStore:(id)a4 interactionStore:(id)a5;
- (void)_createUnstructuredReminderModelWithEventStore:(id)a3 contactStore:(id)a4 interactionStore:(id)a5;
- (void)populateCaches;
- (void)updateConfigWithTrialData:(id)a3;
@end

@implementation _PSFTZKWOrchestrator

- (void)_createStructuredCalendarModelWithEventStore:(id)a3 contactStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v15 = [[_PSCalendarEventPredictor alloc] initWithEventStore:v7 contactStore:v6];

  v8 = [_PSCalendarEventPredictorDelegateWrapper alloc];
  v9 = [(_PSFTZKWConfig *)self->_config calendarEventConfig];
  v10 = [(_PSCalendarEventPredictorDelegateWrapper *)v8 initWithCalendarEventPredictor:v15 config:v9];
  calendarDelegateWrapper = self->_calendarDelegateWrapper;
  self->_calendarDelegateWrapper = v10;

  if ([(_PSFTZKWConfig *)self->_config useBlendingLayer]&& ProactiveSuggestionClientModelLibraryCore_1())
  {
    v12 = objc_alloc(getATXProactiveSuggestionClientModelClass_0());
    v13 = [getATXProactiveSuggestionClientModelClass_0() clientModelIdFromClientModelType:29];
    v14 = [v12 initWithClientModelId:v13 requestDelegate:self->_calendarDelegateWrapper];

    if (v14)
    {
      [(NSMutableArray *)self->_clientModels addObject:v14];
    }
  }
}

- (void)_createUnstructuredCalendarModelWithEventStore:(id)a3 contactStore:(id)a4 interactionStore:(id)a5
{
  v7 = a5;
  v8 = a3;
  v16 = [[_PSSuggestionFromTextPredictor alloc] initWithEventStore:v8 interactionStore:v7];

  v9 = [_PSSuggestionFromTextPredictorDelegateWrapper alloc];
  v10 = [(_PSFTZKWConfig *)self->_config unstructuredCalendarConfig];
  v11 = [(_PSSuggestionFromTextPredictorDelegateWrapper *)v9 initWithTextPredictor:v16 calendarConfig:v10];
  unstructuredCalendarDelegateWrapper = self->_unstructuredCalendarDelegateWrapper;
  self->_unstructuredCalendarDelegateWrapper = v11;

  if ([(_PSFTZKWConfig *)self->_config useBlendingLayer]&& ProactiveSuggestionClientModelLibraryCore_1())
  {
    v13 = objc_alloc(getATXProactiveSuggestionClientModelClass_0());
    v14 = [getATXProactiveSuggestionClientModelClass_0() clientModelIdFromClientModelType:30];
    v15 = [v13 initWithClientModelId:v14 requestDelegate:self->_unstructuredCalendarDelegateWrapper];

    [(NSMutableArray *)self->_clientModels addObject:v15];
  }
}

- (void)_createUnstructuredReminderModelWithEventStore:(id)a3 contactStore:(id)a4 interactionStore:(id)a5
{
  v7 = a5;
  v8 = a3;
  v16 = [[_PSSuggestionFromTextPredictor alloc] initWithEventStore:v8 interactionStore:v7];

  v9 = [_PSSuggestionFromTextPredictorDelegateWrapper alloc];
  v10 = [(_PSFTZKWConfig *)self->_config unstructuredRemindersConfig];
  v11 = [(_PSSuggestionFromTextPredictorDelegateWrapper *)v9 initWithTextPredictor:v16 remindersConfig:v10];
  unstructuredRemindersDelegateWrapper = self->_unstructuredRemindersDelegateWrapper;
  self->_unstructuredRemindersDelegateWrapper = v11;

  if ([(_PSFTZKWConfig *)self->_config useBlendingLayer]&& ProactiveSuggestionClientModelLibraryCore_1())
  {
    v13 = objc_alloc(getATXProactiveSuggestionClientModelClass_0());
    v14 = [getATXProactiveSuggestionClientModelClass_0() clientModelIdFromClientModelType:31];
    v15 = [v13 initWithClientModelId:v14 requestDelegate:self->_unstructuredRemindersDelegateWrapper];

    [(NSMutableArray *)self->_clientModels addObject:v15];
  }
}

- (void)_createFaceTimeInteractionModelWithKNNModel:(id)a3
{
  v4 = a3;
  v5 = [_PSKNNZKWATXDelegateWrapper alloc];
  v6 = [(_PSFTZKWConfig *)self->_config faceTimeInteractionsConfig];
  v7 = [(_PSKNNZKWATXDelegateWrapper *)v5 initWithKNNModel:v4 primaryInteractionsConfig:v6];

  faceTimeInteractionModelDelegateWrapper = self->_faceTimeInteractionModelDelegateWrapper;
  self->_faceTimeInteractionModelDelegateWrapper = v7;

  if ([(_PSFTZKWConfig *)self->_config useBlendingLayer]&& ProactiveSuggestionClientModelLibraryCore_1())
  {
    v9 = objc_alloc(getATXProactiveSuggestionClientModelClass_0());
    v10 = [getATXProactiveSuggestionClientModelClass_0() clientModelIdFromClientModelType:32];
    v11 = [v9 initWithClientModelId:v10 requestDelegate:self->_faceTimeInteractionModelDelegateWrapper];

    [(NSMutableArray *)self->_clientModels addObject:v11];
  }
}

- (void)_createFallbackInteractionModelWithKNNModel:(id)a3
{
  v4 = a3;
  v5 = [_PSKNNZKWATXDelegateWrapper alloc];
  v6 = [(_PSFTZKWConfig *)self->_config fallbackInteractionsConfig];
  v7 = [(_PSKNNZKWATXDelegateWrapper *)v5 initWithKNNModel:v4 fallbackInteractionConfig:v6];

  fallbackInteractionModelDelegateWrapper = self->_fallbackInteractionModelDelegateWrapper;
  self->_fallbackInteractionModelDelegateWrapper = v7;

  if ([(_PSFTZKWConfig *)self->_config useBlendingLayer]&& ProactiveSuggestionClientModelLibraryCore_1())
  {
    v9 = objc_alloc(getATXProactiveSuggestionClientModelClass_0());
    v10 = [getATXProactiveSuggestionClientModelClass_0() clientModelIdFromClientModelType:33];
    v11 = [v9 initWithClientModelId:v10 requestDelegate:self->_fallbackInteractionModelDelegateWrapper];

    [(NSMutableArray *)self->_clientModels addObject:v11];
  }
}

- (_PSFTZKWOrchestrator)initWithKNNModel:(id)a3 interactionStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = _PSFTZKWOrchestrator;
  v8 = [(_PSFTZKWOrchestrator *)&v22 init];
  if (v8)
  {
    v9 = objc_opt_new();
    clientModels = v8->_clientModels;
    v8->_clientModels = v9;

    v11 = objc_opt_new();
    config = v8->_config;
    v8->_config = v11;

    objc_storeStrong(&v8->_interactionStore, a4);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v13 = getEKEventStoreClass_softClass;
    v31 = getEKEventStoreClass_softClass;
    if (!getEKEventStoreClass_softClass)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getEKEventStoreClass_block_invoke;
      v26 = &unk_1E7C23BF0;
      v27 = &v28;
      __getEKEventStoreClass_block_invoke(&v23);
      v13 = v29[3];
    }

    v14 = v13;
    _Block_object_dispose(&v28, 8);
    v15 = [[v13 alloc] initWithEKOptions:128];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v16 = getCNContactStoreClass_softClass_7;
    v31 = getCNContactStoreClass_softClass_7;
    if (!getCNContactStoreClass_softClass_7)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getCNContactStoreClass_block_invoke_7;
      v26 = &unk_1E7C23BF0;
      v27 = &v28;
      __getCNContactStoreClass_block_invoke_7(&v23);
      v16 = v29[3];
    }

    v17 = v16;
    _Block_object_dispose(&v28, 8);
    v18 = objc_opt_new();
    [(_PSFTZKWOrchestrator *)v8 _createStructuredCalendarModelWithEventStore:v15 contactStore:v18];
    [(_PSFTZKWOrchestrator *)v8 _createUnstructuredCalendarModelWithEventStore:v15 contactStore:v18 interactionStore:v7];
    [(_PSFTZKWOrchestrator *)v8 _createUnstructuredReminderModelWithEventStore:v15 contactStore:v18 interactionStore:v7];
    [(_PSFTZKWOrchestrator *)v8 _createFaceTimeInteractionModelWithKNNModel:v6];
    [(_PSFTZKWOrchestrator *)v8 _createFallbackInteractionModelWithKNNModel:v6];
    v19 = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"ps_ft_zkw_orchestrator"];
    queue = v8->_queue;
    v8->_queue = v19;
  }

  return v8;
}

- (void)updateConfigWithTrialData:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___PSFTZKWOrchestrator_updateConfigWithTrialData___block_invoke;
  block[3] = &unk_1E7C24268;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)_getBlendingLayerSuggestionsWithContext:(id)a3
{
  v3 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v4 = getATXInteractionSuggestionRequestClass_softClass;
  v26 = getATXInteractionSuggestionRequestClass_softClass;
  if (!getATXInteractionSuggestionRequestClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getATXInteractionSuggestionRequestClass_block_invoke;
    v21 = &unk_1E7C23BF0;
    v22 = &v23;
    ProactiveSuggestionClientModelLibraryCore_1();
    v24[3] = objc_getClass("ATXInteractionSuggestionRequest");
    getATXInteractionSuggestionRequestClass_softClass = *(v22[1] + 24);
    v4 = v24[3];
  }

  v5 = v4;
  _Block_object_dispose(&v23, 8);
  v6 = [[v4 alloc] initWithOriginatorId:@"PeopleSuggester" consumerSubType:42 psPredictionContext:v3 timeout:5.0];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v7 = getATXProactiveSuggestionConsumerClass_softClass;
  v26 = getATXProactiveSuggestionConsumerClass_softClass;
  if (!getATXProactiveSuggestionConsumerClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getATXProactiveSuggestionConsumerClass_block_invoke;
    v21 = &unk_1E7C23BF0;
    v22 = &v23;
    ProactiveSuggestionClientModelLibraryCore_1();
    v24[3] = objc_getClass("ATXProactiveSuggestionConsumer");
    getATXProactiveSuggestionConsumerClass_softClass = *(v22[1] + 24);
    v7 = v24[3];
  }

  v8 = v7;
  _Block_object_dispose(&v23, 8);
  v9 = [[v7 alloc] initWithConsumerSubType:42];
  v10 = [v9 layoutForRequest:v6];
  if (!v10)
  {
    v14 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1B5ED1000, v14, OS_LOG_TYPE_DEFAULT, "nil value returned from blending layer, either models timed out or there was no suggestions given", &v18, 2u);
    }

    goto LABEL_16;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v11 = getATXSuggestionLayoutClass_softClass;
  v26 = getATXSuggestionLayoutClass_softClass;
  if (!getATXSuggestionLayoutClass_softClass)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getATXSuggestionLayoutClass_block_invoke;
    v21 = &unk_1E7C23BF0;
    v22 = &v23;
    ProactiveSuggestionClientModelLibraryCore_1();
    v24[3] = objc_getClass("ATXSuggestionLayout");
    getATXSuggestionLayoutClass_softClass = *(v22[1] + 24);
    v11 = v24[3];
  }

  v12 = v11;
  _Block_object_dispose(&v23, 8);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(_PSFTZKWOrchestrator *)v10 _getBlendingLayerSuggestionsWithContext:v14];
    }

LABEL_16:
    v16 = MEMORY[0x1E695E0F0];
    goto LABEL_17;
  }

  v13 = [v10 oneByOneSuggestions];
  v14 = [v13 _pas_mappedArrayWithTransform:&__block_literal_global_36];

  v15 = MEMORY[0x1E695E0F0];
  if (v14)
  {
    v15 = v14;
  }

  v16 = v15;
LABEL_17:

  return v16;
}

- (id)_getDirectSuggestionsWithContext:(id)a3 withTimeout:(double)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setObject:self->_calendarDelegateWrapper forKeyedSubscript:&unk_1F2D8BBF8];
  [v7 setObject:self->_unstructuredCalendarDelegateWrapper forKeyedSubscript:&unk_1F2D8BC10];
  [v7 setObject:self->_unstructuredRemindersDelegateWrapper forKeyedSubscript:&unk_1F2D8BC28];
  [v7 setObject:self->_faceTimeInteractionModelDelegateWrapper forKeyedSubscript:&unk_1F2D8BC40];
  [v7 setObject:self->_fallbackInteractionModelDelegateWrapper forKeyedSubscript:&unk_1F2D8BC58];
  v8 = objc_opt_new();
  if ([&unk_1F2D8C588 count])
  {
    v9 = 0;
    v10 = MEMORY[0x1E695E0F0];
    do
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
      [v8 setObject:v10 forKeyedSubscript:v11];

      ++v9;
    }

    while (v9 < [&unk_1F2D8C588 count]);
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2810000000;
  v36 = &unk_1B5FE851A;
  v37 = 0;
  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __69___PSFTZKWOrchestrator__getDirectSuggestionsWithContext_withTimeout___block_invoke;
  v26 = &unk_1E7C26968;
  v27 = &unk_1F2D8C588;
  v22 = v7;
  v28 = v22;
  v12 = v6;
  v29 = v12;
  v31 = &v33;
  v13 = v8;
  v30 = v13;
  v32 = a4;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  if (_getDirectSuggestionsWithContext_withTimeout___pasOnceToken10 != -1)
  {
    [_PSFTZKWOrchestrator _getDirectSuggestionsWithContext:withTimeout:];
  }

  v15 = _getDirectSuggestionsWithContext_withTimeout___pasExprOnceResult;
  dispatch_async(v15, v14);
  if (a4 <= 0.0)
  {
    v16 = 0;
  }

  else if (a4 <= 9223372040.0)
  {
    v16 = dispatch_time(0, (a4 * 1000000000.0));
  }

  else
  {
    v16 = -1;
  }

  dispatch_block_wait(v14, v16);
  v17 = objc_opt_new();
  os_unfair_lock_lock(v34 + 8);
  for (i = 0; i < [&unk_1F2D8C588 count]; ++i)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    v20 = [v13 objectForKeyedSubscript:v19];
    [v17 addObjectsFromArray:v20];
  }

  os_unfair_lock_unlock(v34 + 8);

  _Block_object_dispose(&v33, 8);

  return v17;
}

- (id)getSuggestionsWithPredictionContext:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___PSFTZKWOrchestrator_getSuggestionsWithPredictionContext___block_invoke;
  block[3] = &unk_1E7C253F8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)populateCaches
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E695DF00] now];
  [v3 setSuggestionDate:v4];

  v5 = +[_PSConstants facetimeBundleId];
  [v3 setBundleID:v5];

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___PSFTZKWOrchestrator_populateCaches__block_invoke;
  block[3] = &unk_1E7C26990;
  objc_copyWeak(&v10, &location);
  v9 = v3;
  v6 = v3;
  v7 = dispatch_block_create_with_qos_class(0, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(self->_queue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_getBlendingLayerSuggestionsWithContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Encountered layout of unknown class: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end