@interface _PSKNNZKWATXDelegateWrapper
- (_PSKNNZKWATXDelegateWrapper)initWithKNNModel:(id)a3 fallbackInteractionConfig:(id)a4;
- (_PSKNNZKWATXDelegateWrapper)initWithKNNModel:(id)a3 modelType:(int64_t)a4 modelConfiguration:(id)a5 maxSuggestions:(unint64_t)a6 transformers:(id)a7 isEnabled:(BOOL)a8 defaultConfidenceCategory:(int64_t)a9;
- (_PSKNNZKWATXDelegateWrapper)initWithKNNModel:(id)a3 primaryInteractionsConfig:(id)a4;
- (id)getSuggestionsWithPredictionContext:(id)a3;
- (void)suggestionsForInteractionSuggestionRequest:(id)a3 clientModelId:(id)a4 reply:(id)a5;
- (void)updateWithFallbackInteractionsConfig:(id)a3;
- (void)updateWithPrimaryInteractionsConfig:(id)a3;
@end

@implementation _PSKNNZKWATXDelegateWrapper

- (_PSKNNZKWATXDelegateWrapper)initWithKNNModel:(id)a3 modelType:(int64_t)a4 modelConfiguration:(id)a5 maxSuggestions:(unint64_t)a6 transformers:(id)a7 isEnabled:(BOOL)a8 defaultConfidenceCategory:(int64_t)a9
{
  v16 = a3;
  v17 = a5;
  v18 = a7;
  v22.receiver = self;
  v22.super_class = _PSKNNZKWATXDelegateWrapper;
  v19 = [(_PSKNNZKWATXDelegateWrapper *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_knnModel, a3);
    v20->_modelType = a4;
    objc_storeStrong(&v20->_modelConfiguration, a5);
    v20->_maxSuggestions = a6;
    objc_storeStrong(&v20->_transformers, a7);
    v20->_isEnabled = a8;
    v20->_defaultConfidenceCategory = a9;
  }

  return v20;
}

- (_PSKNNZKWATXDelegateWrapper)initWithKNNModel:(id)a3 primaryInteractionsConfig:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [_PSKNNModelConfiguration alloc];
  v9 = [v6 mechanisms];
  v10 = [v6 interactionCountMaxDepths];
  v11 = [v6 interactionHistoryRelativeStartDates];
  v12 = [v6 bundleIds];
  v13 = [v6 modelType];
  v14 = [(_PSKNNZKWATXDelegateWrapper *)self _getInteractionFilterForPrimaryInteractionsModel];
  v15 = [(_PSKNNModelConfiguration *)v8 initWithInteractionMechanisms:v9 interactionCountMaxDepths:v10 interactionHistoryRelativeStartDates:v11 bundleIds:v12 modelType:v13 clusterPruneThreshold:5 modelName:@"PastFaceTimeCallsorMessages" shouldExcludeInteractionBlock:v14];

  v16 = objc_opt_new();
  v17 = [v6 maxSuggestions];
  v18 = [v16 mapRecipientsToContactsWithUnmapped:0];
  v25[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v20 = [v6 isEnabled];
  v21 = [v6 defaultConfidenceCategory];

  v22 = [(_PSKNNZKWATXDelegateWrapper *)self initWithKNNModel:v7 modelType:32 modelConfiguration:v15 maxSuggestions:v17 transformers:v19 isEnabled:v20 defaultConfidenceCategory:v21];
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (_PSKNNZKWATXDelegateWrapper)initWithKNNModel:(id)a3 fallbackInteractionConfig:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [_PSKNNModelConfiguration alloc];
  v9 = [v6 mechanisms];
  v10 = [v6 interactionCountMaxDepths];
  v11 = [v6 interactionHistoryRelativeStartDates];
  v12 = [v6 bundleIds];
  v13 = -[_PSKNNModelConfiguration initWithInteractionMechanisms:interactionCountMaxDepths:interactionHistoryRelativeStartDates:bundleIds:modelType:clusterPruneThreshold:modelName:](v8, "initWithInteractionMechanisms:interactionCountMaxDepths:interactionHistoryRelativeStartDates:bundleIds:modelType:clusterPruneThreshold:modelName:", v9, v10, v11, v12, [v6 modelType], 5, @"PastPhoneCalls");

  v14 = objc_opt_new();
  v15 = [v6 maxSuggestions];
  v16 = [v14 mapRecipientsToContactsWithUnmapped:0];
  v23[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v18 = [v6 isEnabled];
  v19 = [v6 defaultConfidenceCategory];

  v20 = [(_PSKNNZKWATXDelegateWrapper *)self initWithKNNModel:v7 modelType:33 modelConfiguration:v13 maxSuggestions:v15 transformers:v17 isEnabled:v18 defaultConfidenceCategory:v19];
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)updateWithPrimaryInteractionsConfig:(id)a3
{
  v4 = a3;
  v5 = [_PSKNNModelConfiguration alloc];
  v6 = [v4 mechanisms];
  v7 = [v4 interactionCountMaxDepths];
  v8 = [v4 interactionHistoryRelativeStartDates];
  v9 = [v4 bundleIds];
  v10 = [v4 modelType];
  v11 = [(_PSKNNZKWATXDelegateWrapper *)self _getInteractionFilterForPrimaryInteractionsModel];
  v12 = [(_PSKNNModelConfiguration *)v5 initWithInteractionMechanisms:v6 interactionCountMaxDepths:v7 interactionHistoryRelativeStartDates:v8 bundleIds:v9 modelType:v10 clusterPruneThreshold:5 modelName:@"PastFaceTimeCallsorMessages" shouldExcludeInteractionBlock:v11];
  modelConfiguration = self->_modelConfiguration;
  self->_modelConfiguration = v12;

  self->_isEnabled = [v4 isEnabled];
  v14 = [v4 defaultConfidenceCategory];

  self->_defaultConfidenceCategory = v14;
}

- (void)updateWithFallbackInteractionsConfig:(id)a3
{
  v4 = a3;
  v5 = [_PSKNNModelConfiguration alloc];
  v6 = [v4 mechanisms];
  v7 = [v4 interactionCountMaxDepths];
  v8 = [v4 interactionHistoryRelativeStartDates];
  v9 = [v4 bundleIds];
  v10 = -[_PSKNNModelConfiguration initWithInteractionMechanisms:interactionCountMaxDepths:interactionHistoryRelativeStartDates:bundleIds:modelType:clusterPruneThreshold:modelName:](v5, "initWithInteractionMechanisms:interactionCountMaxDepths:interactionHistoryRelativeStartDates:bundleIds:modelType:clusterPruneThreshold:modelName:", v6, v7, v8, v9, [v4 modelType], 5, @"PastPhoneCalls");
  modelConfiguration = self->_modelConfiguration;
  self->_modelConfiguration = v10;

  self->_isEnabled = [v4 isEnabled];
  v12 = [v4 defaultConfidenceCategory];

  self->_defaultConfidenceCategory = v12;
}

- (id)getSuggestionsWithPredictionContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  modelType = self->_modelType;
  if (!self->_isEnabled)
  {
    v7 = +[_PSLogging generalChannel];
    v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (modelType == 32)
    {
      if (!v11)
      {
        goto LABEL_26;
      }

      LOWORD(v18) = 0;
      v12 = "ZKW primary interaction model disabled. Not generating suggestions.";
    }

    else
    {
      if (!v11)
      {
        goto LABEL_26;
      }

      LOWORD(v18) = 0;
      v12 = "ZKW fallback interaction model disabled. Not generating suggestions.";
    }

    _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_DEFAULT, v12, &v18, 2u);
    goto LABEL_26;
  }

  if (modelType == 33)
  {
    v13 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v13))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSFallbackInteractionModelTotalTime", " enableTelemetry=YES ", &v18, 2u);
    }

    v7 = [(_PSKNNModel *)self->_knnModel rankedZkwSuggestionsWithPredictionContext:v4 modelConfiguration:self->_modelConfiguration maxSuggestions:self->_maxSuggestions];
    v14 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v14))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSFallbackInteractionModelTotalTime", &unk_1B5FD970D, &v18, 2u);
    }

    v9 = +[_PSLogging generalChannel];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v18 = 138739971;
    v19 = v7;
    v10 = "ZKW fallback interaction suggestions: %{sensitive}@";
    goto LABEL_22;
  }

  if (modelType == 32)
  {
    v6 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v6))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSFaceTimeInteractionModelTotalTime", " enableTelemetry=YES ", &v18, 2u);
    }

    v7 = [(_PSKNNModel *)self->_knnModel rankedZkwSuggestionsWithPredictionContext:v4 modelConfiguration:self->_modelConfiguration maxSuggestions:self->_maxSuggestions];
    v8 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v8))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSFaceTimeInteractionModelTotalTime", &unk_1B5FD970D, &v18, 2u);
    }

    v9 = +[_PSLogging generalChannel];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v18 = 138739971;
    v19 = v7;
    v10 = "ZKW primary interaction suggestions: %{sensitive}@";
LABEL_22:
    _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_DEFAULT, v10, &v18, 0xCu);
LABEL_23:

    v15 = [_PSFTZKWSuggestionsTransformerFactory getResultsFromTransformers:self->_transformers suggestions:v7];
    goto LABEL_27;
  }

  v7 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(_PSKNNZKWATXDelegateWrapper *)&self->_modelType getSuggestionsWithPredictionContext:v7];
  }

LABEL_26:
  v15 = MEMORY[0x1E695E0F0];
LABEL_27:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)suggestionsForInteractionSuggestionRequest:(id)a3 clientModelId:(id)a4 reply:(id)a5
{
  v78 = *MEMORY[0x1E69E9840];
  v55 = a3;
  v53 = a4;
  v51 = a5;
  v7 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_PSKNNZKWATXDelegateWrapper suggestionsForInteractionSuggestionRequest:v55 clientModelId:v7 reply:?];
  }

  v54 = [v55 psPredictionContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_PSKNNZKWATXDelegateWrapper suggestionsForInteractionSuggestionRequest:v54 clientModelId:v8 reply:?];
    }
  }

  v52 = [getATXProactiveSuggestionClientModelClass_1() clientModelIdFromClientModelType:self->_modelType];
  if ([v53 isEqualToString:v52])
  {
    v9 = [(_PSKNNZKWATXDelegateWrapper *)self getSuggestionsWithPredictionContext:v54];
    v58 = objc_opt_new();
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v9;
    v59 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
    if (v59)
    {
      v57 = *v65;
      do
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v65 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v64 + 1) + 8 * i);
          v73 = 0;
          v74 = &v73;
          v75 = 0x2050000000;
          v12 = getATXProactiveSuggestionClientModelSpecificationClass_softClass_1;
          v76 = getATXProactiveSuggestionClientModelSpecificationClass_softClass_1;
          if (!getATXProactiveSuggestionClientModelSpecificationClass_softClass_1)
          {
            v68 = MEMORY[0x1E69E9820];
            v69 = 3221225472;
            v70 = __getATXProactiveSuggestionClientModelSpecificationClass_block_invoke_1;
            v71 = &unk_1E7C23BF0;
            v72 = &v73;
            ProactiveSuggestionClientModelLibraryCore_2();
            Class = objc_getClass("ATXProactiveSuggestionClientModelSpecification");
            *(v72[1] + 24) = Class;
            getATXProactiveSuggestionClientModelSpecificationClass_softClass_1 = *(v72[1] + 24);
            v12 = v74[3];
          }

          v14 = v12;
          _Block_object_dispose(&v73, 8);
          v15 = [v12 alloc];
          v16 = [getATXProactiveSuggestionClientModelClass_1() clientModelIdFromClientModelType:self->_modelType];
          v17 = [v15 initWithClientModelId:v16 clientModelVersion:@"1.0" engagementResetPolicy:0];

          v73 = 0;
          v74 = &v73;
          v75 = 0x2050000000;
          v18 = getATXProactiveSuggestionExecutableSpecificationClass_softClass_1;
          v76 = getATXProactiveSuggestionExecutableSpecificationClass_softClass_1;
          if (!getATXProactiveSuggestionExecutableSpecificationClass_softClass_1)
          {
            v68 = MEMORY[0x1E69E9820];
            v69 = 3221225472;
            v70 = __getATXProactiveSuggestionExecutableSpecificationClass_block_invoke_1;
            v71 = &unk_1E7C23BF0;
            v72 = &v73;
            ProactiveSuggestionClientModelLibraryCore_2();
            v19 = objc_getClass("ATXProactiveSuggestionExecutableSpecification");
            *(v72[1] + 24) = v19;
            getATXProactiveSuggestionExecutableSpecificationClass_softClass_1 = *(v72[1] + 24);
            v18 = v74[3];
          }

          v20 = v18;
          _Block_object_dispose(&v73, 8);
          v21 = [v18 alloc];
          v22 = [v11 description];
          v23 = objc_opt_new();
          v24 = [v23 UUIDString];
          v25 = [v21 initWithExecutableObject:v11 executableDescription:v22 executableIdentifier:v24 suggestionExecutableType:6];

          v73 = 0;
          v74 = &v73;
          v75 = 0x2050000000;
          v26 = getATXProactiveSuggestionUISpecificationClass_softClass_1;
          v76 = getATXProactiveSuggestionUISpecificationClass_softClass_1;
          if (!getATXProactiveSuggestionUISpecificationClass_softClass_1)
          {
            v68 = MEMORY[0x1E69E9820];
            v69 = 3221225472;
            v70 = __getATXProactiveSuggestionUISpecificationClass_block_invoke_1;
            v71 = &unk_1E7C23BF0;
            v72 = &v73;
            ProactiveSuggestionClientModelLibraryCore_2();
            v27 = objc_getClass("ATXProactiveSuggestionUISpecification");
            *(v72[1] + 24) = v27;
            getATXProactiveSuggestionUISpecificationClass_softClass_1 = *(v72[1] + 24);
            v26 = v74[3];
          }

          v28 = v26;
          _Block_object_dispose(&v73, 8);
          v29 = [v26 alloc];
          v30 = [v11 groupName];
          v31 = v30;
          if (!v30)
          {
            v62 = [v11 recipients];
            v61 = [v62 firstObject];
            v60 = [v61 handle];
            v31 = v60;
          }

          v73 = 0;
          v74 = &v73;
          v75 = 0x2050000000;
          v32 = getATXProactiveSuggestionLayoutConfigClass_softClass_1;
          v76 = getATXProactiveSuggestionLayoutConfigClass_softClass_1;
          if (!getATXProactiveSuggestionLayoutConfigClass_softClass_1)
          {
            v68 = MEMORY[0x1E69E9820];
            v69 = 3221225472;
            v70 = __getATXProactiveSuggestionLayoutConfigClass_block_invoke_1;
            v71 = &unk_1E7C23BF0;
            v72 = &v73;
            ProactiveSuggestionClientModelLibraryCore_2();
            v33 = objc_getClass("ATXProactiveSuggestionLayoutConfig");
            *(v72[1] + 24) = v33;
            getATXProactiveSuggestionLayoutConfigClass_softClass_1 = *(v72[1] + 24);
            v32 = v74[3];
          }

          v34 = v32;
          _Block_object_dispose(&v73, 8);
          v35 = [v32 layoutConfigurationsForLayoutOptions:2];
          v36 = [v29 initWithTitle:v31 subtitle:0 preferredLayoutConfigs:v35 allowedOnLockscreen:1 allowedOnHomeScreen:1 allowedOnSpotlight:1];

          if (!v30)
          {
          }

          v37 = self->_modelType == 32;
          v73 = 0;
          v74 = &v73;
          v75 = 0x2050000000;
          v38 = getATXProactiveSuggestionScoreSpecificationClass_softClass_1;
          v76 = getATXProactiveSuggestionScoreSpecificationClass_softClass_1;
          if (!getATXProactiveSuggestionScoreSpecificationClass_softClass_1)
          {
            v68 = MEMORY[0x1E69E9820];
            v69 = 3221225472;
            v70 = __getATXProactiveSuggestionScoreSpecificationClass_block_invoke_1;
            v71 = &unk_1E7C23BF0;
            v72 = &v73;
            ProactiveSuggestionClientModelLibraryCore_2();
            v39 = objc_getClass("ATXProactiveSuggestionScoreSpecification");
            *(v72[1] + 24) = v39;
            getATXProactiveSuggestionScoreSpecificationClass_softClass_1 = *(v72[1] + 24);
            v38 = v74[3];
          }

          v40 = v38;
          _Block_object_dispose(&v73, 8);
          v41 = [[v38 alloc] initWithRawScore:self->_defaultConfidenceCategory suggestedConfidenceCategory:dbl_1B5FCAE30[v37]];
          v73 = 0;
          v74 = &v73;
          v75 = 0x2050000000;
          v42 = getATXProactiveSuggestionClass_softClass_1;
          v76 = getATXProactiveSuggestionClass_softClass_1;
          if (!getATXProactiveSuggestionClass_softClass_1)
          {
            v68 = MEMORY[0x1E69E9820];
            v69 = 3221225472;
            v70 = __getATXProactiveSuggestionClass_block_invoke_1;
            v71 = &unk_1E7C23BF0;
            v72 = &v73;
            ProactiveSuggestionClientModelLibraryCore_2();
            v43 = objc_getClass("ATXProactiveSuggestion");
            *(v72[1] + 24) = v43;
            getATXProactiveSuggestionClass_softClass_1 = *(v72[1] + 24);
            v42 = v74[3];
          }

          v44 = v42;
          _Block_object_dispose(&v73, 8);
          v45 = [[v42 alloc] initWithClientModelSpecification:v17 executableSpecification:v25 uiSpecification:v36 scoreSpecification:v41];
          [v58 addObject:v45];
        }

        v59 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
      }

      while (v59);
    }

    v73 = 0;
    v74 = &v73;
    v75 = 0x2050000000;
    v46 = getATXSuggestionRequestResponseClass_softClass_2;
    v76 = getATXSuggestionRequestResponseClass_softClass_2;
    if (!getATXSuggestionRequestResponseClass_softClass_2)
    {
      v68 = MEMORY[0x1E69E9820];
      v69 = 3221225472;
      v70 = __getATXSuggestionRequestResponseClass_block_invoke_2;
      v71 = &unk_1E7C23BF0;
      v72 = &v73;
      ProactiveSuggestionClientModelLibraryCore_2();
      v47 = objc_getClass("ATXSuggestionRequestResponse");
      *(v72[1] + 24) = v47;
      getATXSuggestionRequestResponseClass_softClass_2 = *(v72[1] + 24);
      v46 = v74[3];
    }

    v48 = v46;
    _Block_object_dispose(&v73, 8);
    v49 = [[v46 alloc] initWithSuggestions:v58 feedbackMetadata:0 originalRequest:v55 responseCode:2 error:0];
    v51[2](v51, v49);
  }

  else
  {
    obj = [_PSZkwUtils clientModelMismatchErrorResponseForRequest:v55 requestedClientModelId:v53 actualClientModelId:v52];
    v51[2](v51, obj);
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (void)getSuggestionsWithPredictionContext:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Unknown ZKW fallback interaction model type: %ld", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)suggestionsForInteractionSuggestionRequest:(uint64_t)a1 clientModelId:(NSObject *)a2 reply:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "Interaction model delegate call %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)suggestionsForInteractionSuggestionRequest:(uint64_t)a1 clientModelId:(NSObject *)a2 reply:.cold.2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Encountered context of unknown class: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end