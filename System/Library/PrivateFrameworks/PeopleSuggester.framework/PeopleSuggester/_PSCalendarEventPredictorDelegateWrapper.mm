@interface _PSCalendarEventPredictorDelegateWrapper
- (_PSCalendarEventPredictorDelegateWrapper)initWithCalendarEventPredictor:(id)predictor config:(id)config;
- (_PSCalendarEventPredictorDelegateWrapper)initWithCalendarEventPredictor:(id)predictor startSecondsFromQuery:(double)query endSecondsFromQuery:(double)fromQuery maxParticipants:(unint64_t)participants isEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category;
- (id)getSuggestionsWithPredictionContext:(id)context;
- (void)suggestionsForInteractionSuggestionRequest:(id)request clientModelId:(id)id reply:(id)reply;
- (void)updateWithConfig:(id)config;
@end

@implementation _PSCalendarEventPredictorDelegateWrapper

- (_PSCalendarEventPredictorDelegateWrapper)initWithCalendarEventPredictor:(id)predictor startSecondsFromQuery:(double)query endSecondsFromQuery:(double)fromQuery maxParticipants:(unint64_t)participants isEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category
{
  predictorCopy = predictor;
  v19.receiver = self;
  v19.super_class = _PSCalendarEventPredictorDelegateWrapper;
  v16 = [(_PSCalendarEventPredictorDelegateWrapper *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_calendarEventPredictor, predictor);
    v17->_startSecondsFromQuery = query;
    v17->_endSecondsFromQuery = fromQuery;
    v17->_maxParticipants = participants;
    v17->_isEnabled = enabled;
    v17->_defaultConfidenceCategory = category;
  }

  return v17;
}

- (_PSCalendarEventPredictorDelegateWrapper)initWithCalendarEventPredictor:(id)predictor config:(id)config
{
  configCopy = config;
  predictorCopy = predictor;
  [configCopy startSecondsFromQuery];
  v9 = v8;
  [configCopy endSecondsFromQuery];
  v11 = v10;
  maxOtherParticipants = [configCopy maxOtherParticipants];
  isEnabled = [configCopy isEnabled];
  defaultConfidenceCategory = [configCopy defaultConfidenceCategory];

  v15 = [(_PSCalendarEventPredictorDelegateWrapper *)self initWithCalendarEventPredictor:predictorCopy startSecondsFromQuery:maxOtherParticipants endSecondsFromQuery:isEnabled maxParticipants:defaultConfidenceCategory isEnabled:v9 defaultConfidenceCategory:v11];
  return v15;
}

- (void)updateWithConfig:(id)config
{
  configCopy = config;
  [configCopy startSecondsFromQuery];
  self->_startSecondsFromQuery = v5;
  [configCopy endSecondsFromQuery];
  self->_endSecondsFromQuery = v6;
  self->_maxParticipants = [configCopy maxOtherParticipants];
  self->_isEnabled = [configCopy isEnabled];
  defaultConfidenceCategory = [configCopy defaultConfidenceCategory];

  self->_defaultConfidenceCategory = defaultConfidenceCategory;
}

- (id)getSuggestionsWithPredictionContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (self->_isEnabled)
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-self->_startSecondsFromQuery];
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:self->_endSecondsFromQuery];
    v7 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v7))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSCalendarModelTotalTime", " enableTelemetry=YES ", &v13, 2u);
    }

    v8 = [(_PSCalendarEventPredictor *)self->_calendarEventPredictor zkwSuggestionsFromCalendarWithPredictionContext:contextCopy startDate:v5 endDate:v6 maxParticipants:self->_maxParticipants];
    v9 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v9))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSCalendarModelTotalTime", &unk_1B5FD970D, &v13, 2u);
    }

    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_DEFAULT, "ZKW structured calendar suggestions: %@", &v13, 0xCu);
    }
  }

  else
  {
    v5 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "ZKW structured calendar model disabled. Not generating suggestions.", &v13, 2u);
    }

    v8 = MEMORY[0x1E695E0F0];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)suggestionsForInteractionSuggestionRequest:(id)request clientModelId:(id)id reply:(id)reply
{
  v77 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  idCopy = id;
  replyCopy = reply;
  v7 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_PSCalendarEventPredictorDelegateWrapper suggestionsForInteractionSuggestionRequest:requestCopy clientModelId:v7 reply:?];
  }

  psPredictionContext = [requestCopy psPredictionContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_PSCalendarEventPredictorDelegateWrapper suggestionsForInteractionSuggestionRequest:psPredictionContext clientModelId:v8 reply:?];
    }
  }

  v51 = [getATXProactiveSuggestionClientModelClass() clientModelIdFromClientModelType:29];
  if ([idCopy isEqualToString:v51])
  {
    v9 = [(_PSCalendarEventPredictorDelegateWrapper *)self getSuggestionsWithPredictionContext:psPredictionContext];
    v57 = objc_opt_new();
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v9;
    v59 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v59)
    {
      v56 = *v64;
      do
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v64 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v63 + 1) + 8 * i);
          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v12 = getATXProactiveSuggestionClientModelSpecificationClass_softClass;
          v75 = getATXProactiveSuggestionClientModelSpecificationClass_softClass;
          if (!getATXProactiveSuggestionClientModelSpecificationClass_softClass)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionClientModelSpecificationClass_block_invoke;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore();
            Class = objc_getClass("ATXProactiveSuggestionClientModelSpecification");
            *(v71[1] + 24) = Class;
            getATXProactiveSuggestionClientModelSpecificationClass_softClass = *(v71[1] + 24);
            v12 = v73[3];
          }

          v14 = v12;
          _Block_object_dispose(&v72, 8);
          v15 = [v12 alloc];
          v16 = [getATXProactiveSuggestionClientModelClass() clientModelIdFromClientModelType:29];
          v17 = [v15 initWithClientModelId:v16 clientModelVersion:@"1.0" engagementResetPolicy:0];

          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v18 = getATXProactiveSuggestionExecutableSpecificationClass_softClass;
          v75 = getATXProactiveSuggestionExecutableSpecificationClass_softClass;
          if (!getATXProactiveSuggestionExecutableSpecificationClass_softClass)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionExecutableSpecificationClass_block_invoke;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore();
            v19 = objc_getClass("ATXProactiveSuggestionExecutableSpecification");
            *(v71[1] + 24) = v19;
            getATXProactiveSuggestionExecutableSpecificationClass_softClass = *(v71[1] + 24);
            v18 = v73[3];
          }

          v20 = v18;
          _Block_object_dispose(&v72, 8);
          v21 = [v18 alloc];
          v22 = [v11 description];
          v23 = objc_opt_new();
          uUIDString = [v23 UUIDString];
          v25 = [v21 initWithExecutableObject:v11 executableDescription:v22 executableIdentifier:uUIDString suggestionExecutableType:6];

          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v26 = getATXProactiveSuggestionUISpecificationClass_softClass;
          v75 = getATXProactiveSuggestionUISpecificationClass_softClass;
          if (!getATXProactiveSuggestionUISpecificationClass_softClass)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionUISpecificationClass_block_invoke;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore();
            v27 = objc_getClass("ATXProactiveSuggestionUISpecification");
            *(v71[1] + 24) = v27;
            getATXProactiveSuggestionUISpecificationClass_softClass = *(v71[1] + 24);
            v26 = v73[3];
          }

          v28 = v26;
          _Block_object_dispose(&v72, 8);
          v29 = [v26 alloc];
          groupName = [v11 groupName];
          v31 = groupName;
          if (!groupName)
          {
            recipients = [v11 recipients];
            firstObject = [recipients firstObject];
            handle = [firstObject handle];
            v31 = handle;
          }

          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v32 = getATXProactiveSuggestionLayoutConfigClass_softClass;
          v75 = getATXProactiveSuggestionLayoutConfigClass_softClass;
          if (!getATXProactiveSuggestionLayoutConfigClass_softClass)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionLayoutConfigClass_block_invoke;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore();
            v33 = objc_getClass("ATXProactiveSuggestionLayoutConfig");
            *(v71[1] + 24) = v33;
            getATXProactiveSuggestionLayoutConfigClass_softClass = *(v71[1] + 24);
            v32 = v73[3];
          }

          v34 = v32;
          _Block_object_dispose(&v72, 8);
          v35 = [v32 layoutConfigurationsForLayoutOptions:2];
          v36 = [v29 initWithTitle:v31 subtitle:0 preferredLayoutConfigs:v35 allowedOnLockscreen:1 allowedOnHomeScreen:1 allowedOnSpotlight:1];

          if (!groupName)
          {
          }

          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v37 = getATXProactiveSuggestionScoreSpecificationClass_softClass;
          v75 = getATXProactiveSuggestionScoreSpecificationClass_softClass;
          if (!getATXProactiveSuggestionScoreSpecificationClass_softClass)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionScoreSpecificationClass_block_invoke;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore();
            v38 = objc_getClass("ATXProactiveSuggestionScoreSpecification");
            *(v71[1] + 24) = v38;
            getATXProactiveSuggestionScoreSpecificationClass_softClass = *(v71[1] + 24);
            v37 = v73[3];
          }

          v39 = v37;
          _Block_object_dispose(&v72, 8);
          v40 = [[v37 alloc] initWithRawScore:self->_defaultConfidenceCategory suggestedConfidenceCategory:95.0];
          v72 = 0;
          v73 = &v72;
          v74 = 0x2050000000;
          v41 = getATXProactiveSuggestionClass_softClass;
          v75 = getATXProactiveSuggestionClass_softClass;
          if (!getATXProactiveSuggestionClass_softClass)
          {
            v67 = MEMORY[0x1E69E9820];
            v68 = 3221225472;
            v69 = __getATXProactiveSuggestionClass_block_invoke;
            v70 = &unk_1E7C23BF0;
            v71 = &v72;
            ProactiveSuggestionClientModelLibraryCore();
            v42 = objc_getClass("ATXProactiveSuggestion");
            *(v71[1] + 24) = v42;
            getATXProactiveSuggestionClass_softClass = *(v71[1] + 24);
            v41 = v73[3];
          }

          v43 = v41;
          _Block_object_dispose(&v72, 8);
          v44 = [[v41 alloc] initWithClientModelSpecification:v17 executableSpecification:v25 uiSpecification:v36 scoreSpecification:v40];
          [v57 addObject:v44];
        }

        v59 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v59);
    }

    v72 = 0;
    v73 = &v72;
    v74 = 0x2050000000;
    v45 = getATXSuggestionRequestResponseClass_softClass_0;
    v75 = getATXSuggestionRequestResponseClass_softClass_0;
    if (!getATXSuggestionRequestResponseClass_softClass_0)
    {
      v67 = MEMORY[0x1E69E9820];
      v68 = 3221225472;
      v69 = __getATXSuggestionRequestResponseClass_block_invoke_0;
      v70 = &unk_1E7C23BF0;
      v71 = &v72;
      ProactiveSuggestionClientModelLibraryCore();
      v46 = objc_getClass("ATXSuggestionRequestResponse");
      *(v71[1] + 24) = v46;
      getATXSuggestionRequestResponseClass_softClass_0 = *(v71[1] + 24);
      v45 = v73[3];
    }

    v47 = v45;
    _Block_object_dispose(&v72, 8);
    v48 = [[v45 alloc] initWithSuggestions:v57 feedbackMetadata:0 originalRequest:requestCopy responseCode:2 error:0];
    replyCopy[2](replyCopy, v48);
  }

  else
  {
    obj = [_PSZkwUtils clientModelMismatchErrorResponseForRequest:requestCopy requestedClientModelId:idCopy actualClientModelId:v51];
    replyCopy[2](replyCopy, obj);
  }

  v49 = *MEMORY[0x1E69E9840];
}

- (void)suggestionsForInteractionSuggestionRequest:(uint64_t)a1 clientModelId:(NSObject *)a2 reply:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "Calendar model delegate call %@", &v3, 0xCu);
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