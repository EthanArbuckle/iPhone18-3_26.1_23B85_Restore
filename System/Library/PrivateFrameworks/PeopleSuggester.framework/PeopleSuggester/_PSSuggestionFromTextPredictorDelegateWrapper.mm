@interface _PSSuggestionFromTextPredictorDelegateWrapper
- (_PSSuggestionFromTextPredictorDelegateWrapper)initWithDelegateType:(int64_t)a3 textPredictor:(id)a4 startSecondsFromQuery:(double)a5 endSecondsFromQuery:(double)a6 priorScoreThreshold:(float)a7 isEnabled:(BOOL)a8 defaultConfidenceCategory:(int64_t)a9;
- (_PSSuggestionFromTextPredictorDelegateWrapper)initWithTextPredictor:(id)a3 calendarConfig:(id)a4;
- (_PSSuggestionFromTextPredictorDelegateWrapper)initWithTextPredictor:(id)a3 remindersConfig:(id)a4;
- (id)getSuggestionsWithPredictionContext:(id)a3;
- (void)suggestionsForInteractionSuggestionRequest:(id)a3 clientModelId:(id)a4 reply:(id)a5;
- (void)updateWithCalendarConfig:(id)a3;
- (void)updateWithRemindersConfig:(id)a3;
@end

@implementation _PSSuggestionFromTextPredictorDelegateWrapper

- (_PSSuggestionFromTextPredictorDelegateWrapper)initWithDelegateType:(int64_t)a3 textPredictor:(id)a4 startSecondsFromQuery:(double)a5 endSecondsFromQuery:(double)a6 priorScoreThreshold:(float)a7 isEnabled:(BOOL)a8 defaultConfidenceCategory:(int64_t)a9
{
  v17 = a4;
  v21.receiver = self;
  v21.super_class = _PSSuggestionFromTextPredictorDelegateWrapper;
  v18 = [(_PSSuggestionFromTextPredictorDelegateWrapper *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_delegateType = a3;
    objc_storeStrong(&v18->_textPredictor, a4);
    v19->_startSecondsFromQuery = a5;
    v19->_endSecondsFromQuery = a6;
    v19->_priorScoreThreshold = a7;
    v19->_isEnabled = a8;
    v19->_defaultConfidenceCategory = a9;
  }

  return v19;
}

- (_PSSuggestionFromTextPredictorDelegateWrapper)initWithTextPredictor:(id)a3 calendarConfig:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 startSecondsFromQuery];
  v9 = v8;
  [v6 endSecondsFromQuery];
  v11 = v10;
  [v6 priorScoreThreshold];
  v13 = v12;
  v14 = [v6 isEnabled];
  v15 = [v6 defaultConfidenceCategory];

  LODWORD(v16) = v13;
  v17 = [(_PSSuggestionFromTextPredictorDelegateWrapper *)self initWithDelegateType:1 textPredictor:v7 startSecondsFromQuery:v14 endSecondsFromQuery:v15 priorScoreThreshold:v9 isEnabled:v11 defaultConfidenceCategory:v16];

  return v17;
}

- (_PSSuggestionFromTextPredictorDelegateWrapper)initWithTextPredictor:(id)a3 remindersConfig:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 startSecondsFromQuery];
  v9 = v8;
  [v6 endSecondsFromQuery];
  v11 = v10;
  [v6 priorScoreThreshold];
  v13 = v12;
  v14 = [v6 isEnabled];
  v15 = [v6 defaultConfidenceCategory];

  LODWORD(v16) = v13;
  v17 = [(_PSSuggestionFromTextPredictorDelegateWrapper *)self initWithDelegateType:2 textPredictor:v7 startSecondsFromQuery:v14 endSecondsFromQuery:v15 priorScoreThreshold:v9 isEnabled:v11 defaultConfidenceCategory:v16];

  return v17;
}

- (void)updateWithCalendarConfig:(id)a3
{
  v4 = a3;
  [v4 startSecondsFromQuery];
  self->_startSecondsFromQuery = v5;
  [v4 endSecondsFromQuery];
  self->_endSecondsFromQuery = v6;
  [v4 priorScoreThreshold];
  self->_priorScoreThreshold = v7;
  self->_isEnabled = [v4 isEnabled];
  v8 = [v4 defaultConfidenceCategory];

  self->_defaultConfidenceCategory = v8;
}

- (void)updateWithRemindersConfig:(id)a3
{
  v4 = a3;
  [v4 startSecondsFromQuery];
  self->_startSecondsFromQuery = v5;
  [v4 endSecondsFromQuery];
  self->_endSecondsFromQuery = v6;
  [v4 priorScoreThreshold];
  self->_priorScoreThreshold = v7;
  self->_isEnabled = [v4 isEnabled];
  v8 = [v4 defaultConfidenceCategory];

  self->_defaultConfidenceCategory = v8;
}

- (id)getSuggestionsWithPredictionContext:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_isEnabled)
  {
    delegateType = self->_delegateType;
    v5 = +[_PSLogging generalChannel];
    v15 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (delegateType == 1)
    {
      if (v15)
      {
        LOWORD(v22) = 0;
        v16 = "ZKW unstructured calendar model disabled. Not generating suggestions.";
LABEL_15:
        _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, v16, &v22, 2u);
      }
    }

    else if (v15)
    {
      LOWORD(v22) = 0;
      v16 = "ZKW unstructured reminders model disabled. Not generating suggestions.";
      goto LABEL_15;
    }

    v10 = MEMORY[0x1E695E0F0];
    goto LABEL_28;
  }

  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-self->_startSecondsFromQuery];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:self->_endSecondsFromQuery];
  v7 = self->_delegateType;
  if (v7 == 2)
  {
    v17 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v17))
    {
      LOWORD(v22) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSUnstructuredRemindersModelTotalTime", " enableTelemetry=YES ", &v22, 2u);
    }

    *&v18 = self->_priorScoreThreshold;
    v10 = [(_PSSuggestionFromTextPredictor *)self->_textPredictor suggestionsFromIncompleteRemindersWithContext:v4 startDate:v5 endDate:v6 priorScoreThreshold:v18];
    v19 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v19))
    {
      LOWORD(v22) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSUnstructuredRemindersModelTotalTime", &unk_1B5FD970D, &v22, 2u);
    }

    v12 = +[_PSLogging generalChannel];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v22 = 138412290;
    v23 = v10;
    v13 = "ZKW unstructured reminders suggestions: %@";
    goto LABEL_23;
  }

  if (v7 != 1)
  {
    v12 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(_PSSuggestionFromTextPredictorDelegateWrapper *)&self->_delegateType getSuggestionsWithPredictionContext:v12];
    }

    v10 = MEMORY[0x1E695E0F0];
    goto LABEL_27;
  }

  v8 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v8))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSUnstructuredCalendarModelTotalTime", " enableTelemetry=YES ", &v22, 2u);
  }

  *&v9 = self->_priorScoreThreshold;
  v10 = [(_PSSuggestionFromTextPredictor *)self->_textPredictor suggestionsFromUnstructuredCalendarEventsWithContext:v4 startDate:v5 endDate:v6 priorScoreThreshold:v9];
  v11 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v11))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSUnstructuredCalendarModelTotalTime", &unk_1B5FD970D, &v22, 2u);
  }

  v12 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v10;
    v13 = "ZKW unstructured calendar suggestions: %@";
LABEL_23:
    _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_DEFAULT, v13, &v22, 0xCu);
  }

LABEL_27:

LABEL_28:
  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)suggestionsForInteractionSuggestionRequest:(id)a3 clientModelId:(id)a4 reply:(id)a5
{
  v78 = *MEMORY[0x1E69E9840];
  v54 = a3;
  v58 = a4;
  v52 = a5;
  v7 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_PSSuggestionFromTextPredictorDelegateWrapper suggestionsForInteractionSuggestionRequest:v54 clientModelId:self reply:v7];
  }

  if (!self->_delegateType)
  {
    v53 = [objc_alloc(getATXSuggestionRequestResponseClass_0()) initWithSuggestions:MEMORY[0x1E695E0F0] feedbackMetadata:0 originalRequest:v54 responseCode:2 error:0];
    v52[2](v52, v53);
    goto LABEL_44;
  }

  v53 = [v54 psPredictionContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggestionFromTextPredictorDelegateWrapper suggestionsForInteractionSuggestionRequest:v53 clientModelId:v8 reply:?];
    }
  }

  delegateType = self->_delegateType;
  if (delegateType == 1)
  {
    v10 = 30;
    goto LABEL_13;
  }

  if (delegateType == 2)
  {
    v10 = 31;
LABEL_13:
    v73 = 0;
    v74 = &v73;
    v75 = 0x2050000000;
    v11 = getATXProactiveSuggestionClientModelClass_softClass_0;
    v76 = getATXProactiveSuggestionClientModelClass_softClass_0;
    if (!getATXProactiveSuggestionClientModelClass_softClass_0)
    {
      v68 = MEMORY[0x1E69E9820];
      v69 = 3221225472;
      v70 = __getATXProactiveSuggestionClientModelClass_block_invoke_0;
      v71 = &unk_1E7C23BF0;
      v72 = &v73;
      ProactiveSuggestionClientModelLibraryCore_0();
      v74[3] = objc_getClass("ATXProactiveSuggestionClientModel");
      getATXProactiveSuggestionClientModelClass_softClass_0 = *(v72[1] + 24);
      v11 = v74[3];
    }

    v12 = v11;
    _Block_object_dispose(&v73, 8);
    v50 = [v11 clientModelIdFromClientModelType:v10];
    v13 = [v50 isEqualToString:{v58, v50}];
    goto LABEL_17;
  }

  v13 = [0 isEqualToString:{v58, 0}];
LABEL_17:
  if (v13)
  {
    v14 = [(_PSSuggestionFromTextPredictorDelegateWrapper *)self getSuggestionsWithPredictionContext:v53];
    v57 = objc_opt_new();
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v14;
    v60 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
    if (v60)
    {
      v56 = *v65;
      do
      {
        for (i = 0; i != v60; ++i)
        {
          if (*v65 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v64 + 1) + 8 * i);
          v73 = 0;
          v74 = &v73;
          v75 = 0x2050000000;
          v17 = getATXProactiveSuggestionClientModelSpecificationClass_softClass_0;
          v76 = getATXProactiveSuggestionClientModelSpecificationClass_softClass_0;
          if (!getATXProactiveSuggestionClientModelSpecificationClass_softClass_0)
          {
            v68 = MEMORY[0x1E69E9820];
            v69 = 3221225472;
            v70 = __getATXProactiveSuggestionClientModelSpecificationClass_block_invoke_0;
            v71 = &unk_1E7C23BF0;
            v72 = &v73;
            ProactiveSuggestionClientModelLibraryCore_0();
            Class = objc_getClass("ATXProactiveSuggestionClientModelSpecification");
            *(v72[1] + 24) = Class;
            getATXProactiveSuggestionClientModelSpecificationClass_softClass_0 = *(v72[1] + 24);
            v17 = v74[3];
          }

          v19 = v17;
          _Block_object_dispose(&v73, 8);
          v20 = [[v17 alloc] initWithClientModelId:v58 clientModelVersion:@"1.0" engagementResetPolicy:0];
          v73 = 0;
          v74 = &v73;
          v75 = 0x2050000000;
          v21 = getATXProactiveSuggestionExecutableSpecificationClass_softClass_0;
          v76 = getATXProactiveSuggestionExecutableSpecificationClass_softClass_0;
          if (!getATXProactiveSuggestionExecutableSpecificationClass_softClass_0)
          {
            v68 = MEMORY[0x1E69E9820];
            v69 = 3221225472;
            v70 = __getATXProactiveSuggestionExecutableSpecificationClass_block_invoke_0;
            v71 = &unk_1E7C23BF0;
            v72 = &v73;
            ProactiveSuggestionClientModelLibraryCore_0();
            v22 = objc_getClass("ATXProactiveSuggestionExecutableSpecification");
            *(v72[1] + 24) = v22;
            getATXProactiveSuggestionExecutableSpecificationClass_softClass_0 = *(v72[1] + 24);
            v21 = v74[3];
          }

          v23 = v21;
          _Block_object_dispose(&v73, 8);
          v24 = [v21 alloc];
          v25 = [v16 description];
          v26 = objc_opt_new();
          v27 = [v26 UUIDString];
          v28 = [v24 initWithExecutableObject:v16 executableDescription:v25 executableIdentifier:v27 suggestionExecutableType:6];

          v73 = 0;
          v74 = &v73;
          v75 = 0x2050000000;
          v29 = getATXProactiveSuggestionUISpecificationClass_softClass_0;
          v76 = getATXProactiveSuggestionUISpecificationClass_softClass_0;
          if (!getATXProactiveSuggestionUISpecificationClass_softClass_0)
          {
            v68 = MEMORY[0x1E69E9820];
            v69 = 3221225472;
            v70 = __getATXProactiveSuggestionUISpecificationClass_block_invoke_0;
            v71 = &unk_1E7C23BF0;
            v72 = &v73;
            ProactiveSuggestionClientModelLibraryCore_0();
            v30 = objc_getClass("ATXProactiveSuggestionUISpecification");
            *(v72[1] + 24) = v30;
            getATXProactiveSuggestionUISpecificationClass_softClass_0 = *(v72[1] + 24);
            v29 = v74[3];
          }

          v31 = v29;
          _Block_object_dispose(&v73, 8);
          v32 = [v29 alloc];
          v33 = [v16 groupName];
          v34 = v33;
          if (!v33)
          {
            v63 = [v16 recipients];
            v62 = [v63 firstObject];
            v61 = [v62 handle];
            v34 = v61;
          }

          v73 = 0;
          v74 = &v73;
          v75 = 0x2050000000;
          v35 = getATXProactiveSuggestionLayoutConfigClass_softClass_0;
          v76 = getATXProactiveSuggestionLayoutConfigClass_softClass_0;
          if (!getATXProactiveSuggestionLayoutConfigClass_softClass_0)
          {
            v68 = MEMORY[0x1E69E9820];
            v69 = 3221225472;
            v70 = __getATXProactiveSuggestionLayoutConfigClass_block_invoke_0;
            v71 = &unk_1E7C23BF0;
            v72 = &v73;
            ProactiveSuggestionClientModelLibraryCore_0();
            v36 = objc_getClass("ATXProactiveSuggestionLayoutConfig");
            *(v72[1] + 24) = v36;
            getATXProactiveSuggestionLayoutConfigClass_softClass_0 = *(v72[1] + 24);
            v35 = v74[3];
          }

          v37 = v35;
          _Block_object_dispose(&v73, 8);
          v38 = [v35 layoutConfigurationsForLayoutOptions:2];
          v39 = [v32 initWithTitle:v34 subtitle:0 preferredLayoutConfigs:v38 allowedOnLockscreen:1 allowedOnHomeScreen:1 allowedOnSpotlight:1];

          if (!v33)
          {
          }

          v73 = 0;
          v74 = &v73;
          v75 = 0x2050000000;
          v40 = getATXProactiveSuggestionScoreSpecificationClass_softClass_0;
          v76 = getATXProactiveSuggestionScoreSpecificationClass_softClass_0;
          if (!getATXProactiveSuggestionScoreSpecificationClass_softClass_0)
          {
            v68 = MEMORY[0x1E69E9820];
            v69 = 3221225472;
            v70 = __getATXProactiveSuggestionScoreSpecificationClass_block_invoke_0;
            v71 = &unk_1E7C23BF0;
            v72 = &v73;
            ProactiveSuggestionClientModelLibraryCore_0();
            v41 = objc_getClass("ATXProactiveSuggestionScoreSpecification");
            *(v72[1] + 24) = v41;
            getATXProactiveSuggestionScoreSpecificationClass_softClass_0 = *(v72[1] + 24);
            v40 = v74[3];
          }

          v42 = v40;
          _Block_object_dispose(&v73, 8);
          v43 = [[v40 alloc] initWithRawScore:self->_defaultConfidenceCategory suggestedConfidenceCategory:90.0];
          v73 = 0;
          v74 = &v73;
          v75 = 0x2050000000;
          v44 = getATXProactiveSuggestionClass_softClass_0;
          v76 = getATXProactiveSuggestionClass_softClass_0;
          if (!getATXProactiveSuggestionClass_softClass_0)
          {
            v68 = MEMORY[0x1E69E9820];
            v69 = 3221225472;
            v70 = __getATXProactiveSuggestionClass_block_invoke_0;
            v71 = &unk_1E7C23BF0;
            v72 = &v73;
            ProactiveSuggestionClientModelLibraryCore_0();
            v45 = objc_getClass("ATXProactiveSuggestion");
            *(v72[1] + 24) = v45;
            getATXProactiveSuggestionClass_softClass_0 = *(v72[1] + 24);
            v44 = v74[3];
          }

          v46 = v44;
          _Block_object_dispose(&v73, 8);
          v47 = [[v44 alloc] initWithClientModelSpecification:v20 executableSpecification:v28 uiSpecification:v39 scoreSpecification:v43];
          [v57 addObject:v47];
        }

        v60 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
      }

      while (v60);
    }

    v48 = [objc_alloc(getATXSuggestionRequestResponseClass_0()) initWithSuggestions:v57 feedbackMetadata:0 originalRequest:v54 responseCode:2 error:0];
    v52[2](v52, v48);
  }

  else
  {
    obj = [_PSZkwUtils clientModelMismatchErrorResponseForRequest:v54 requestedClientModelId:v58 actualClientModelId:v51];
    v52[2](v52, obj);
  }

LABEL_44:
  v49 = *MEMORY[0x1E69E9840];
}

- (void)getSuggestionsWithPredictionContext:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Unknown ZKW unstructured reminders delegate type: %ld", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)suggestionsForInteractionSuggestionRequest:(uint64_t)a1 clientModelId:(uint64_t)a2 reply:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = v3;
  _os_log_debug_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_DEBUG, "Unstructured text model delegate call %@ for delegate type %ld", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
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