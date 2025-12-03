@interface PSGInputSuggesterServerRequestHandler
- (PSGInputSuggesterServerRequestHandler)init;
- (PSGInputSuggesterServerRequestHandler)initWithExperimentResolver:(id)resolver metricsLogger:(id)logger;
- (id)_getExperimentConfigForLogging:(id)logging;
- (id)_quickResponsesConfigFromPSGInputSuggestionsRequest:(id)request;
- (id)_quickResponsesForResponseContext:(id)context conversationTurns:(id)turns localeIdentifier:(id)identifier maxResponses:(unint64_t)responses recipients:(id)recipients chunkPath:(id)path plistPath:(id)plistPath espressoBinFilePath:(id)self0 vocabFilePath:(id)self1;
- (id)_wordBoundaryResponseForRequest:(id)request config:(id)config;
- (id)_zkwResponseForRequest:(id)request config:(id)config;
- (void)_forwardFeedbackToPortraitWithResponseItems:(id)items feedbackType:(unsigned int)type;
- (void)_forwardFeedbackToQuickResponsesPersonalizationWithResponseItems:(id)items request:(id)request isSelected:(BOOL)selected;
- (void)inputSuggestionsWithRequest:(id)request completion:(id)completion;
- (void)logEngagement:(id)engagement request:(id)request position:(unint64_t)position;
- (void)logImpression:(id)impression request:(id)request;
- (void)logPrediction:(id)prediction request:(id)request latencyMillis:(double)millis;
- (void)logTrigger:(id)trigger request:(id)request;
- (void)warmUpWithCompletion:(id)completion;
@end

@implementation PSGInputSuggesterServerRequestHandler

- (void)warmUpWithCompletion:(id)completion
{
  completionCopy = completion;
  if (warmUpWithCompletion___pasOnceToken27 != -1)
  {
    dispatch_once(&warmUpWithCompletion___pasOnceToken27, &__block_literal_global_138);
  }

  v4 = warmUpWithCompletion___pasExprOnceResult;
  v5 = MEMORY[0x277D425A0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__PSGInputSuggesterServerRequestHandler_warmUpWithCompletion___block_invoke_2;
  v8[3] = &unk_279ABDF58;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = v4;
  [v5 runAsyncOnQueue:v7 afterDelaySeconds:v8 block:0.1];
}

void __62__PSGInputSuggesterServerRequestHandler_warmUpWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 localeIdentifier];

  v4 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v5 = [v4 firstObject];

  if (v3)
  {
    v6 = +[PSGExperimentResolver sharedInstance];
    [v6 warmupForLocale:v3];
  }

  if (v5 && ([v3 isEqualToString:v5] & 1) == 0)
  {
    v7 = +[PSGExperimentResolver sharedInstance];
    [v7 warmupForLocale:v5];
  }

  v8 = psg_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_260D36000, v8, OS_LOG_TYPE_INFO, "PSGInputSuggesterServerRequestHandler: warmUp", v10, 2u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void __62__PSGInputSuggesterServerRequestHandler_warmUpWithCompletion___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PSGInputSuggesterServerRequestHandler.warmUp" qosClass:17];
  v2 = warmUpWithCompletion___pasExprOnceResult;
  warmUpWithCompletion___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)_forwardFeedbackToQuickResponsesPersonalizationWithResponseItems:(id)items request:(id)request isSelected:(BOOL)selected
{
  selectedCopy = selected;
  requestCopy = request;
  v9 = [(PSGInputSuggesterServerRequestHandler *)self _mlStringsFromResponseItems:items];
  if ([v9 count])
  {
    v10 = [(PSGInputSuggesterServerRequestHandler *)self _quickResponsesConfigFromPSGInputSuggestionsRequest:requestCopy];
    if (v10)
    {
      v11 = objc_opt_new();
      v12 = v11;
      if (selectedCopy)
      {
        v13 = [v9 objectAtIndexedSubscript:0];
        [v12 registerSelectedResponse:v13 config:v10];
      }

      else
      {
        [v11 registerDisplayedResponses:v9 config:v10];
      }
    }

    else
    {
      v14 = psg_default_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_error_impl(&dword_260D36000, v14, OS_LOG_TYPE_ERROR, "PSGInputSuggesterServerHandler: Could not initialize QuickResponses config for personalization feedback.", v15, 2u);
      }
    }
  }
}

- (id)_quickResponsesConfigFromPSGInputSuggestionsRequest:(id)request
{
  experimentResolver = self->_experimentResolver;
  requestCopy = request;
  localeIdentifier = [requestCopy localeIdentifier];
  v6 = [(PSGExperimentResolver *)experimentResolver getResponseSuggestionsExperimentConfig:localeIdentifier shouldDownloadAssets:0];

  v7 = MEMORY[0x277D02548];
  localeIdentifier2 = [requestCopy localeIdentifier];

  v9 = [v7 languageForLocaleIdentifier:localeIdentifier2];

  v10 = MEMORY[0x277D02588];
  inferenceModelConfigPath = [v6 inferenceModelConfigPath];
  vocabFilePath = [v6 vocabFilePath];
  v13 = [v10 configWithLanguage:v9 mode:1 plistPath:inferenceModelConfigPath vocabPath:vocabFilePath];

  return v13;
}

id __69__PSGInputSuggesterServerRequestHandler__mlStringsFromResponseItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 structuredInfoSuggestion];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 textualResponseSuggestion];
    v4 = v5 == 0;
  }

  v6 = [v2 textualResponseSuggestion];
  v7 = [v6 responseCategory];
  if ([v7 isEqualToString:*MEMORY[0x277D41F00]])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v2 textualResponseSuggestion];
    v10 = [v9 responseCategory];
    v8 = [v10 isEqualToString:*MEMORY[0x277D41EF0]] ^ 1;
  }

  if ((v4 | v8))
  {
    v11 = 0;
  }

  else
  {
    v12 = [v2 textualResponseSuggestion];
    v11 = [v12 responseText];
  }

  return v11;
}

- (void)logEngagement:(id)engagement request:(id)request position:(unint64_t)position
{
  v19 = *MEMORY[0x277D85DE8];
  engagementCopy = engagement;
  requestCopy = request;
  v10 = [(PSGInputSuggesterServerRequestHandler *)self _getExperimentConfigForLogging:requestCopy];
  [(PSGInputSuggesterMetricsLogger *)self->_metricsLogger logEngagement:engagementCopy request:requestCopy position:position config:v10];
  [(PSGInputSuggesterServerRequestHandler *)self _forwardFeedbackToPortraitWithResponseItems:engagementCopy feedbackType:1];
  if (position && [engagementCopy count] >= position)
  {
    if (![requestCopy isDocumentEmpty])
    {
      goto LABEL_6;
    }

    v11 = [engagementCopy objectAtIndexedSubscript:position - 1];
    v14 = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [(PSGInputSuggesterServerRequestHandler *)self _forwardFeedbackToQuickResponsesPersonalizationWithResponseItems:v13 request:requestCopy isSelected:1];
  }

  else
  {
    v11 = psg_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v16 = [engagementCopy count];
      v17 = 2048;
      positionCopy = position;
      _os_log_error_impl(&dword_260D36000, v11, OS_LOG_TYPE_ERROR, "[ZKW-ML] Position argument expected to be between 1 and response count %lu. Position %lu is out of bounds.", buf, 0x16u);
    }
  }

LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)logImpression:(id)impression request:(id)request
{
  impressionCopy = impression;
  requestCopy = request;
  v7 = [(PSGInputSuggesterServerRequestHandler *)self _getExperimentConfigForLogging:requestCopy];
  [(PSGInputSuggesterMetricsLogger *)self->_metricsLogger logImpression:impressionCopy request:requestCopy config:v7];
  [(PSGInputSuggesterServerRequestHandler *)self _forwardFeedbackToPortraitWithResponseItems:impressionCopy feedbackType:5];
  if ([requestCopy isDocumentEmpty])
  {
    [(PSGInputSuggesterServerRequestHandler *)self _forwardFeedbackToQuickResponsesPersonalizationWithResponseItems:impressionCopy request:requestCopy isSelected:0];
  }
}

- (void)logPrediction:(id)prediction request:(id)request latencyMillis:(double)millis
{
  requestCopy = request;
  predictionCopy = prediction;
  v10 = [(PSGInputSuggesterServerRequestHandler *)self _getExperimentConfigForLogging:requestCopy];
  [(PSGInputSuggesterMetricsLogger *)self->_metricsLogger logPrediction:predictionCopy request:requestCopy latencyMillis:v10 config:millis];
}

- (void)logTrigger:(id)trigger request:(id)request
{
  requestCopy = request;
  triggerCopy = trigger;
  v8 = [(PSGInputSuggesterServerRequestHandler *)self _getExperimentConfigForLogging:requestCopy];
  [(PSGInputSuggesterMetricsLogger *)self->_metricsLogger logTrigger:triggerCopy request:requestCopy config:v8];
}

- (void)_forwardFeedbackToPortraitWithResponseItems:(id)items feedbackType:(unsigned int)type
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [items _pas_mappedArrayWithTransform:&__block_literal_global_10];
  if ([v5 count])
  {
    v6 = 0;
    if (type <= 1)
    {
      if (type)
      {
        if (type == 1)
        {
          v7 = objc_alloc(MEMORY[0x277D3A3B8]);
          v8 = v5;
          v9 = 0;
          goto LABEL_9;
        }

LABEL_10:
        [v6 setClientIdentifier:@"PSGPred"];
        mEMORY[0x277D3A778] = [MEMORY[0x277D3A778] sharedInstance];
        [mEMORY[0x277D3A778] registerFeedback:v6 completion:0];

LABEL_13:
        goto LABEL_14;
      }
    }

    else if (type - 2 >= 3)
    {
      if (type == 5)
      {
        v7 = objc_alloc(MEMORY[0x277D3A3B8]);
        v8 = 0;
        v9 = v5;
LABEL_9:
        v6 = [v7 initWithExplicitlyEngagedStrings:v8 implicitlyEngagedStrings:0 offeredStrings:v9];
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    v6 = psg_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v12[0] = 67109120;
      v12[1] = type;
      _os_log_fault_impl(&dword_260D36000, v6, OS_LOG_TYPE_FAULT, "Unhandled feedback type in forwardFeedbackToPortraitWithResponseItems: %d", v12, 8u);
    }

    goto LABEL_13;
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

id __98__PSGInputSuggesterServerRequestHandler__forwardFeedbackToPortraitWithResponseItems_feedbackType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 structuredInfoSuggestion];
  v3 = [v2 portraitItem];
  v4 = [v3 value];

  return v4;
}

- (id)_getExperimentConfigForLogging:(id)logging
{
  loggingCopy = logging;
  isDocumentEmpty = [loggingCopy isDocumentEmpty];
  experimentResolver = self->_experimentResolver;
  localeIdentifier = [loggingCopy localeIdentifier];

  if (isDocumentEmpty)
  {
    [(PSGExperimentResolver *)experimentResolver getResponseSuggestionsExperimentConfig:localeIdentifier shouldDownloadAssets:0];
  }

  else
  {
    [(PSGExperimentResolver *)experimentResolver getWordBoundarySuggestionsExperimentConfig:localeIdentifier shouldDownloadAssets:0];
  }
  v8 = ;

  return v8;
}

- (void)inputSuggestionsWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = psg_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v26 = 0;
    _os_log_debug_impl(&dword_260D36000, v8, OS_LOG_TYPE_DEBUG, "Server inputSuggestionsWithRequest called", v26, 2u);
  }

  v9 = psg_default_log_handle();
  v10 = os_signpost_id_generate(v9);

  v11 = psg_default_log_handle();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_260D36000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PSGInputSuggesterServerRequestHandler_inputSuggestionsWithRequest", "", buf, 2u);
  }

  if ([requestCopy isDocumentEmpty])
  {
    mEMORY[0x277D41DC0] = [MEMORY[0x277D41DC0] sharedInstance];
    responseContext = [requestCopy responseContext];
    localeIdentifier = [requestCopy localeIdentifier];
    adaptationContextID = [requestCopy adaptationContextID];
    v17 = [mEMORY[0x277D41DC0] localeForMessage:responseContext outgoingMessageHistory:0 defaultLocale:localeIdentifier defaultLocaleLastChangedDate:0 sender:adaptationContextID];

    v18 = [(PSGExperimentResolver *)self->_experimentResolver getResponseSuggestionsExperimentConfig:v17 shouldDownloadAssets:1];
    [(PSGInputSuggesterServerRequestHandler *)self _logRequest:requestCopy config:v18];
    v19 = [(PSGInputSuggesterServerRequestHandler *)self _zkwResponseForRequest:requestCopy config:v18];
  }

  else
  {
    experimentResolver = self->_experimentResolver;
    localeIdentifier2 = [requestCopy localeIdentifier];
    v17 = [(PSGExperimentResolver *)experimentResolver getWordBoundarySuggestionsExperimentConfig:localeIdentifier2 shouldDownloadAssets:1];

    [(PSGInputSuggesterServerRequestHandler *)self _logRequest:requestCopy config:v17];
    v19 = [(PSGInputSuggesterServerRequestHandler *)self _wordBoundaryResponseForRequest:requestCopy config:v17];
  }

  v22 = psg_default_log_handle();
  v23 = v22;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *v24 = 0;
    _os_signpost_emit_with_name_impl(&dword_260D36000, v23, OS_SIGNPOST_INTERVAL_END, v10, "PSGInputSuggesterServerRequestHandler_inputSuggestionsWithRequest", "", v24, 2u);
  }

  completionCopy[2](completionCopy, v19, 0);
}

- (id)_zkwResponseForRequest:(id)request config:(id)config
{
  v55 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  configCopy = config;
  responseContext = [requestCopy responseContext];
  if ([responseContext length])
  {
    localeIdentifier = [requestCopy localeIdentifier];
    if ([localeIdentifier length])
    {
      v10 = MEMORY[0x277D41DC0];
      language = [configCopy language];
      v12 = [v10 isLanguageMismatchedForIdentifier:localeIdentifier withIdentifier:language];

      v13 = psg_default_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        treatmentName = [configCopy treatmentName];
        v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configCopy, "isMLModelEnabled")}];
        *buf = 138412546;
        v52 = treatmentName;
        v53 = 2112;
        v54 = v15;
        _os_log_impl(&dword_260D36000, v13, OS_LOG_TYPE_DEFAULT, "[ZKW-ML] ML config treatment name %@ enabled %@", buf, 0x16u);
      }

      if ([configCopy isMLModelEnabled])
      {
        inferenceModelFilePath = [configCopy inferenceModelFilePath];
        inferenceModelConfigPath = [configCopy inferenceModelConfigPath];
        espressoBinFilePath = [configCopy espressoBinFilePath];
        vocabFilePath = [configCopy vocabFilePath];
        if ([inferenceModelFilePath length])
        {
          v19 = 0;
        }

        else
        {
          v19 = [espressoBinFilePath length] == 0;
        }

        if (![inferenceModelConfigPath length] || v19)
        {
          v22 = psg_default_log_handle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            experimentIdentifiers = [configCopy experimentIdentifiers];
            experimentId = [experimentIdentifiers experimentId];
            experimentIdentifiers2 = [configCopy experimentIdentifiers];
            treatmentId = [experimentIdentifiers2 treatmentId];
            *buf = 138412546;
            v52 = experimentId;
            v53 = 2112;
            v54 = treatmentId;
            _os_log_fault_impl(&dword_260D36000, v22, OS_LOG_TYPE_FAULT, "[ZKW-ML] Some required file is missing for zkw experiment: %@, treatment: %@", buf, 0x16u);
          }

          v20 = 0;
        }

        else if ([requestCopy isResponseContextBlacklisted])
        {
          v21 = psg_default_log_handle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_260D36000, v21, OS_LOG_TYPE_DEFAULT, "[ZKW-ML] suppressing suggestions since response context is blacklisted", buf, 2u);
          }

          v20 = [objc_alloc(MEMORY[0x277D41EB8]) initWithResponseItems:0 explanationSet:0];
        }

        else
        {
          v41 = v12;
          [requestCopy conversationTurns];
          v42 = v23 = espressoBinFilePath;
          v45 = inferenceModelConfigPath;
          textualResponseLimit = [requestCopy textualResponseLimit];
          structuredInfoLimit = [requestCopy structuredInfoLimit];
          recipients = [requestCopy recipients];
          v27 = structuredInfoLimit + textualResponseLimit;
          inferenceModelConfigPath = v45;
          v43 = v23;
          v28 = [(PSGInputSuggesterServerRequestHandler *)self _quickResponsesForResponseContext:responseContext conversationTurns:v42 localeIdentifier:localeIdentifier maxResponses:v27 recipients:recipients chunkPath:inferenceModelFilePath plistPath:v45 espressoBinFilePath:v23 vocabFilePath:vocabFilePath];

          if ([v28 count])
          {
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __71__PSGInputSuggesterServerRequestHandler__zkwResponseForRequest_config___block_invoke;
            v48[3] = &unk_279ABDF10;
            v50 = v41;
            v49 = requestCopy;
            v29 = [v28 _pas_mappedArrayWithTransform:v48];
            v30 = psg_default_log_handle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [v29 count];
              *buf = 134217984;
              v52 = v31;
              _os_log_impl(&dword_260D36000, v30, OS_LOG_TYPE_DEFAULT, "[ZKW-ML] Server generated zkw %tu result(s)", buf, 0xCu);
            }

            v20 = [objc_alloc(MEMORY[0x277D41EB8]) initWithResponseItems:v29 explanationSet:0];
          }

          else
          {
            v32 = psg_default_log_handle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_260D36000, v32, OS_LOG_TYPE_DEFAULT, "[ZKW-ML] no suggestions returned from model", buf, 2u);
            }

            v20 = [objc_alloc(MEMORY[0x277D41EB8]) initWithResponseItems:0 explanationSet:0];
          }

          espressoBinFilePath = v43;
        }

        goto LABEL_35;
      }

      inferenceModelFilePath = psg_default_log_handle();
      if (os_log_type_enabled(inferenceModelFilePath, OS_LOG_TYPE_DEBUG))
      {
        experimentIdentifiers3 = [configCopy experimentIdentifiers];
        experimentId2 = [experimentIdentifiers3 experimentId];
        experimentIdentifiers4 = [configCopy experimentIdentifiers];
        treatmentId2 = [experimentIdentifiers4 treatmentId];
        *buf = 138412546;
        v52 = experimentId2;
        v53 = 2112;
        v54 = treatmentId2;
        _os_log_debug_impl(&dword_260D36000, inferenceModelFilePath, OS_LOG_TYPE_DEBUG, "[ZKW-ML] ML disabled for zkw experiment: %@, treatment: %@", buf, 0x16u);
      }
    }

    else
    {
      inferenceModelFilePath = psg_default_log_handle();
      if (os_log_type_enabled(inferenceModelFilePath, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_260D36000, inferenceModelFilePath, OS_LOG_TYPE_ERROR, "[ZKW-ML] Locale not specified. Bail out.", buf, 2u);
      }
    }

    v20 = 0;
LABEL_35:

    goto LABEL_36;
  }

  localeIdentifier = psg_default_log_handle();
  if (os_log_type_enabled(localeIdentifier, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_260D36000, localeIdentifier, OS_LOG_TYPE_ERROR, "[ZKW-ML] Context not specified. Bail out.", buf, 2u);
  }

  v20 = 0;
LABEL_36:

  v33 = *MEMORY[0x277D85DE8];

  return v20;
}

id __71__PSGInputSuggesterServerRequestHandler__zkwResponseForRequest_config___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 proactiveTrigger];

  if (v4)
  {
    if ([v3 isConfident] && *(a1 + 40) != 1)
    {
      v5 = MEMORY[0x277D41F10];
    }

    else
    {
      v5 = MEMORY[0x277D41EF8];
    }

    v7 = *v5;
    v8 = objc_alloc(MEMORY[0x277D41EC8]);
    v9 = [v3 proactiveTrigger];
    v6 = [v8 initWithSourceType:4 category:v7 attributes:v9];

    v10 = [objc_alloc(MEMORY[0x277D41ED0]) initWithProactiveTrigger:v6 portraitItem:0 operationalItem:0];
    v11 = objc_alloc(MEMORY[0x277D41EC0]);
    v12 = 0;
    v13 = v10;
  }

  else
  {
    if ([*(a1 + 32) shouldDisableAutoCaps] && !objc_msgSend(v3, "isCustomResponse"))
    {
      v14 = [v3 text];
      v6 = [v14 localizedLowercaseString];
    }

    else
    {
      v6 = [v3 text];
    }

    v15 = [v3 isConfident];
    v16 = MEMORY[0x277D41F00];
    if (!v15)
    {
      v16 = MEMORY[0x277D41EF0];
    }

    v17 = MEMORY[0x277D41ED8];
    v18 = *v16;
    v10 = [[v17 alloc] initWithText:v6 category:v18];

    v11 = objc_alloc(MEMORY[0x277D41EC0]);
    v12 = v10;
    v13 = 0;
  }

  v19 = [v11 initWithTextualResponseSuggestion:v12 structuredInfoSuggestion:v13];

  return v19;
}

- (id)_wordBoundaryResponseForRequest:(id)request config:(id)config
{
  v37 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  configCopy = config;
  contextBeforeInput = [requestCopy contextBeforeInput];
  if ([contextBeforeInput length])
  {
    localeIdentifier = [requestCopy localeIdentifier];
    if ([localeIdentifier length])
    {
      if ([configCopy isMLModelEnabled])
      {
        inferenceModelConfigPath = [configCopy inferenceModelConfigPath];
        espressoBinFilePath = [configCopy espressoBinFilePath];
        if (-[NSObject length](inferenceModelConfigPath, "length") && [espressoBinFilePath length])
        {
          v12 = [(PSGInputSuggesterServerRequestHandler *)self _quickTypeTriggerForContext:contextBeforeInput localeIdentifier:localeIdentifier modelConfigPath:inferenceModelConfigPath espressoBinFilePath:espressoBinFilePath];
          v13 = psg_default_log_handle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v34 = v12;
            _os_log_debug_impl(&dword_260D36000, v13, OS_LOG_TYPE_DEBUG, "ML model - word-boundary triggers %@", buf, 0xCu);
          }

          v31 = v12;
          if ([v12 count])
          {
            v14 = objc_opt_new();
            v15 = objc_alloc(MEMORY[0x277D41EC8]);
            v16 = [v15 initWithSourceType:3 category:*MEMORY[0x277D41F08] attributes:v12];
            v17 = [objc_alloc(MEMORY[0x277D41ED0]) initWithProactiveTrigger:v16 portraitItem:0 operationalItem:0];
            v18 = [objc_alloc(MEMORY[0x277D41EC0]) initWithTextualResponseSuggestion:0 structuredInfoSuggestion:v17];
            [v14 addObject:v18];
          }

          else
          {
            v14 = 0;
          }

          v20 = psg_default_log_handle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v14 count];
            *buf = 134217984;
            v34 = v21;
            _os_log_impl(&dword_260D36000, v20, OS_LOG_TYPE_DEFAULT, "Server generated word boundary %tu results", buf, 0xCu);
          }

          v19 = [objc_alloc(MEMORY[0x277D41EB8]) initWithResponseItems:v14 explanationSet:0];
        }

        else
        {
          v14 = psg_default_log_handle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            experimentIdentifiers = [configCopy experimentIdentifiers];
            experimentId = [experimentIdentifiers experimentId];
            experimentIdentifiers2 = [configCopy experimentIdentifiers];
            treatmentId = [experimentIdentifiers2 treatmentId];
            *buf = 138412546;
            v34 = experimentId;
            v35 = 2112;
            v36 = treatmentId;
            _os_log_fault_impl(&dword_260D36000, v14, OS_LOG_TYPE_FAULT, "Some required file is missing for word boundary experiment: %@, treatment: %@", buf, 0x16u);
          }

          v19 = 0;
        }

        goto LABEL_26;
      }

      inferenceModelConfigPath = psg_default_log_handle();
      if (os_log_type_enabled(inferenceModelConfigPath, OS_LOG_TYPE_DEBUG))
      {
        experimentIdentifiers3 = [configCopy experimentIdentifiers];
        experimentId2 = [experimentIdentifiers3 experimentId];
        experimentIdentifiers4 = [configCopy experimentIdentifiers];
        treatmentId2 = [experimentIdentifiers4 treatmentId];
        *buf = 138412546;
        v34 = experimentId2;
        v35 = 2112;
        v36 = treatmentId2;
        _os_log_debug_impl(&dword_260D36000, inferenceModelConfigPath, OS_LOG_TYPE_DEBUG, "ML not enabled for word boundary experiment: %@, treatment: %@", buf, 0x16u);
      }
    }

    else
    {
      inferenceModelConfigPath = psg_default_log_handle();
      if (os_log_type_enabled(inferenceModelConfigPath, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_260D36000, inferenceModelConfigPath, OS_LOG_TYPE_ERROR, "[WordBoundary-ML] Locale not specified. Bail out", buf, 2u);
      }
    }

    v19 = 0;
LABEL_26:

    goto LABEL_27;
  }

  localeIdentifier = psg_default_log_handle();
  if (os_log_type_enabled(localeIdentifier, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_260D36000, localeIdentifier, OS_LOG_TYPE_ERROR, "[WordBoundary-ML] Context not specified. Bail out", buf, 2u);
  }

  v19 = 0;
LABEL_27:

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_quickResponsesForResponseContext:(id)context conversationTurns:(id)turns localeIdentifier:(id)identifier maxResponses:(unint64_t)responses recipients:(id)recipients chunkPath:(id)path plistPath:(id)plistPath espressoBinFilePath:(id)self0 vocabFilePath:(id)self1
{
  BYTE2(v12) = 1;
  LOWORD(v12) = 257;
  return [MEMORY[0x277D02598] quickResponsesForMessage:context conversationTurns:turns maxResponses:responses localeIdentifier:identifier recipientHandles:recipients chunkPath:path plistPath:plistPath espressoBinFilePath:filePath vocabFilePath:vocabFilePath useContactNames:v12 includeCustomResponses:? includeResponsesToRobots:?];
}

- (PSGInputSuggesterServerRequestHandler)initWithExperimentResolver:(id)resolver metricsLogger:(id)logger
{
  resolverCopy = resolver;
  loggerCopy = logger;
  v12.receiver = self;
  v12.super_class = PSGInputSuggesterServerRequestHandler;
  v9 = [(PSGInputSuggesterServerRequestHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_experimentResolver, resolver);
    objc_storeStrong(&v10->_metricsLogger, logger);
  }

  return v10;
}

- (PSGInputSuggesterServerRequestHandler)init
{
  v3 = +[PSGExperimentResolver sharedInstance];
  v4 = objc_opt_new();
  v5 = [(PSGInputSuggesterServerRequestHandler *)self initWithExperimentResolver:v3 metricsLogger:v4];

  return v5;
}

@end