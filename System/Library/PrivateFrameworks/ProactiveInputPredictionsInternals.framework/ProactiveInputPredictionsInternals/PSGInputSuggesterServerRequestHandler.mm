@interface PSGInputSuggesterServerRequestHandler
- (PSGInputSuggesterServerRequestHandler)init;
- (PSGInputSuggesterServerRequestHandler)initWithExperimentResolver:(id)a3 metricsLogger:(id)a4;
- (id)_getExperimentConfigForLogging:(id)a3;
- (id)_quickResponsesConfigFromPSGInputSuggestionsRequest:(id)a3;
- (id)_quickResponsesForResponseContext:(id)a3 conversationTurns:(id)a4 localeIdentifier:(id)a5 maxResponses:(unint64_t)a6 recipients:(id)a7 chunkPath:(id)a8 plistPath:(id)a9 espressoBinFilePath:(id)a10 vocabFilePath:(id)a11;
- (id)_wordBoundaryResponseForRequest:(id)a3 config:(id)a4;
- (id)_zkwResponseForRequest:(id)a3 config:(id)a4;
- (void)_forwardFeedbackToPortraitWithResponseItems:(id)a3 feedbackType:(unsigned int)a4;
- (void)_forwardFeedbackToQuickResponsesPersonalizationWithResponseItems:(id)a3 request:(id)a4 isSelected:(BOOL)a5;
- (void)inputSuggestionsWithRequest:(id)a3 completion:(id)a4;
- (void)logEngagement:(id)a3 request:(id)a4 position:(unint64_t)a5;
- (void)logImpression:(id)a3 request:(id)a4;
- (void)logPrediction:(id)a3 request:(id)a4 latencyMillis:(double)a5;
- (void)logTrigger:(id)a3 request:(id)a4;
- (void)warmUpWithCompletion:(id)a3;
@end

@implementation PSGInputSuggesterServerRequestHandler

- (void)warmUpWithCompletion:(id)a3
{
  v3 = a3;
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
  v9 = v3;
  v6 = v3;
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

- (void)_forwardFeedbackToQuickResponsesPersonalizationWithResponseItems:(id)a3 request:(id)a4 isSelected:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(PSGInputSuggesterServerRequestHandler *)self _mlStringsFromResponseItems:a3];
  if ([v9 count])
  {
    v10 = [(PSGInputSuggesterServerRequestHandler *)self _quickResponsesConfigFromPSGInputSuggestionsRequest:v8];
    if (v10)
    {
      v11 = objc_opt_new();
      v12 = v11;
      if (v5)
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

- (id)_quickResponsesConfigFromPSGInputSuggestionsRequest:(id)a3
{
  experimentResolver = self->_experimentResolver;
  v4 = a3;
  v5 = [v4 localeIdentifier];
  v6 = [(PSGExperimentResolver *)experimentResolver getResponseSuggestionsExperimentConfig:v5 shouldDownloadAssets:0];

  v7 = MEMORY[0x277D02548];
  v8 = [v4 localeIdentifier];

  v9 = [v7 languageForLocaleIdentifier:v8];

  v10 = MEMORY[0x277D02588];
  v11 = [v6 inferenceModelConfigPath];
  v12 = [v6 vocabFilePath];
  v13 = [v10 configWithLanguage:v9 mode:1 plistPath:v11 vocabPath:v12];

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

- (void)logEngagement:(id)a3 request:(id)a4 position:(unint64_t)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(PSGInputSuggesterServerRequestHandler *)self _getExperimentConfigForLogging:v9];
  [(PSGInputSuggesterMetricsLogger *)self->_metricsLogger logEngagement:v8 request:v9 position:a5 config:v10];
  [(PSGInputSuggesterServerRequestHandler *)self _forwardFeedbackToPortraitWithResponseItems:v8 feedbackType:1];
  if (a5 && [v8 count] >= a5)
  {
    if (![v9 isDocumentEmpty])
    {
      goto LABEL_6;
    }

    v11 = [v8 objectAtIndexedSubscript:a5 - 1];
    v14 = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [(PSGInputSuggesterServerRequestHandler *)self _forwardFeedbackToQuickResponsesPersonalizationWithResponseItems:v13 request:v9 isSelected:1];
  }

  else
  {
    v11 = psg_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v16 = [v8 count];
      v17 = 2048;
      v18 = a5;
      _os_log_error_impl(&dword_260D36000, v11, OS_LOG_TYPE_ERROR, "[ZKW-ML] Position argument expected to be between 1 and response count %lu. Position %lu is out of bounds.", buf, 0x16u);
    }
  }

LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)logImpression:(id)a3 request:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(PSGInputSuggesterServerRequestHandler *)self _getExperimentConfigForLogging:v6];
  [(PSGInputSuggesterMetricsLogger *)self->_metricsLogger logImpression:v8 request:v6 config:v7];
  [(PSGInputSuggesterServerRequestHandler *)self _forwardFeedbackToPortraitWithResponseItems:v8 feedbackType:5];
  if ([v6 isDocumentEmpty])
  {
    [(PSGInputSuggesterServerRequestHandler *)self _forwardFeedbackToQuickResponsesPersonalizationWithResponseItems:v8 request:v6 isSelected:0];
  }
}

- (void)logPrediction:(id)a3 request:(id)a4 latencyMillis:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PSGInputSuggesterServerRequestHandler *)self _getExperimentConfigForLogging:v8];
  [(PSGInputSuggesterMetricsLogger *)self->_metricsLogger logPrediction:v9 request:v8 latencyMillis:v10 config:a5];
}

- (void)logTrigger:(id)a3 request:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PSGInputSuggesterServerRequestHandler *)self _getExperimentConfigForLogging:v6];
  [(PSGInputSuggesterMetricsLogger *)self->_metricsLogger logTrigger:v7 request:v6 config:v8];
}

- (void)_forwardFeedbackToPortraitWithResponseItems:(id)a3 feedbackType:(unsigned int)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a3 _pas_mappedArrayWithTransform:&__block_literal_global_10];
  if ([v5 count])
  {
    v6 = 0;
    if (a4 <= 1)
    {
      if (a4)
      {
        if (a4 == 1)
        {
          v7 = objc_alloc(MEMORY[0x277D3A3B8]);
          v8 = v5;
          v9 = 0;
          goto LABEL_9;
        }

LABEL_10:
        [v6 setClientIdentifier:@"PSGPred"];
        v10 = [MEMORY[0x277D3A778] sharedInstance];
        [v10 registerFeedback:v6 completion:0];

LABEL_13:
        goto LABEL_14;
      }
    }

    else if (a4 - 2 >= 3)
    {
      if (a4 == 5)
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
      v12[1] = a4;
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

- (id)_getExperimentConfigForLogging:(id)a3
{
  v4 = a3;
  v5 = [v4 isDocumentEmpty];
  experimentResolver = self->_experimentResolver;
  v7 = [v4 localeIdentifier];

  if (v5)
  {
    [(PSGExperimentResolver *)experimentResolver getResponseSuggestionsExperimentConfig:v7 shouldDownloadAssets:0];
  }

  else
  {
    [(PSGExperimentResolver *)experimentResolver getWordBoundarySuggestionsExperimentConfig:v7 shouldDownloadAssets:0];
  }
  v8 = ;

  return v8;
}

- (void)inputSuggestionsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  if ([v6 isDocumentEmpty])
  {
    v13 = [MEMORY[0x277D41DC0] sharedInstance];
    v14 = [v6 responseContext];
    v15 = [v6 localeIdentifier];
    v16 = [v6 adaptationContextID];
    v17 = [v13 localeForMessage:v14 outgoingMessageHistory:0 defaultLocale:v15 defaultLocaleLastChangedDate:0 sender:v16];

    v18 = [(PSGExperimentResolver *)self->_experimentResolver getResponseSuggestionsExperimentConfig:v17 shouldDownloadAssets:1];
    [(PSGInputSuggesterServerRequestHandler *)self _logRequest:v6 config:v18];
    v19 = [(PSGInputSuggesterServerRequestHandler *)self _zkwResponseForRequest:v6 config:v18];
  }

  else
  {
    experimentResolver = self->_experimentResolver;
    v21 = [v6 localeIdentifier];
    v17 = [(PSGExperimentResolver *)experimentResolver getWordBoundarySuggestionsExperimentConfig:v21 shouldDownloadAssets:1];

    [(PSGInputSuggesterServerRequestHandler *)self _logRequest:v6 config:v17];
    v19 = [(PSGInputSuggesterServerRequestHandler *)self _wordBoundaryResponseForRequest:v6 config:v17];
  }

  v22 = psg_default_log_handle();
  v23 = v22;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *v24 = 0;
    _os_signpost_emit_with_name_impl(&dword_260D36000, v23, OS_SIGNPOST_INTERVAL_END, v10, "PSGInputSuggesterServerRequestHandler_inputSuggestionsWithRequest", "", v24, 2u);
  }

  v7[2](v7, v19, 0);
}

- (id)_zkwResponseForRequest:(id)a3 config:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 responseContext];
  if ([v8 length])
  {
    v9 = [v6 localeIdentifier];
    if ([v9 length])
    {
      v10 = MEMORY[0x277D41DC0];
      v11 = [v7 language];
      v12 = [v10 isLanguageMismatchedForIdentifier:v9 withIdentifier:v11];

      v13 = psg_default_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v7 treatmentName];
        v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "isMLModelEnabled")}];
        *buf = 138412546;
        v52 = v14;
        v53 = 2112;
        v54 = v15;
        _os_log_impl(&dword_260D36000, v13, OS_LOG_TYPE_DEFAULT, "[ZKW-ML] ML config treatment name %@ enabled %@", buf, 0x16u);
      }

      if ([v7 isMLModelEnabled])
      {
        v16 = [v7 inferenceModelFilePath];
        v17 = [v7 inferenceModelConfigPath];
        v18 = [v7 espressoBinFilePath];
        v47 = [v7 vocabFilePath];
        if ([v16 length])
        {
          v19 = 0;
        }

        else
        {
          v19 = [v18 length] == 0;
        }

        if (![v17 length] || v19)
        {
          v22 = psg_default_log_handle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            v46 = [v7 experimentIdentifiers];
            v39 = [v46 experimentId];
            v44 = [v7 experimentIdentifiers];
            v40 = [v44 treatmentId];
            *buf = 138412546;
            v52 = v39;
            v53 = 2112;
            v54 = v40;
            _os_log_fault_impl(&dword_260D36000, v22, OS_LOG_TYPE_FAULT, "[ZKW-ML] Some required file is missing for zkw experiment: %@, treatment: %@", buf, 0x16u);
          }

          v20 = 0;
        }

        else if ([v6 isResponseContextBlacklisted])
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
          [v6 conversationTurns];
          v42 = v23 = v18;
          v45 = v17;
          v24 = [v6 textualResponseLimit];
          v25 = [v6 structuredInfoLimit];
          v26 = [v6 recipients];
          v27 = v25 + v24;
          v17 = v45;
          v43 = v23;
          v28 = [(PSGInputSuggesterServerRequestHandler *)self _quickResponsesForResponseContext:v8 conversationTurns:v42 localeIdentifier:v9 maxResponses:v27 recipients:v26 chunkPath:v16 plistPath:v45 espressoBinFilePath:v23 vocabFilePath:v47];

          if ([v28 count])
          {
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __71__PSGInputSuggesterServerRequestHandler__zkwResponseForRequest_config___block_invoke;
            v48[3] = &unk_279ABDF10;
            v50 = v41;
            v49 = v6;
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

          v18 = v43;
        }

        goto LABEL_35;
      }

      v16 = psg_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v35 = [v7 experimentIdentifiers];
        v36 = [v35 experimentId];
        v37 = [v7 experimentIdentifiers];
        v38 = [v37 treatmentId];
        *buf = 138412546;
        v52 = v36;
        v53 = 2112;
        v54 = v38;
        _os_log_debug_impl(&dword_260D36000, v16, OS_LOG_TYPE_DEBUG, "[ZKW-ML] ML disabled for zkw experiment: %@, treatment: %@", buf, 0x16u);
      }
    }

    else
    {
      v16 = psg_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_260D36000, v16, OS_LOG_TYPE_ERROR, "[ZKW-ML] Locale not specified. Bail out.", buf, 2u);
      }
    }

    v20 = 0;
LABEL_35:

    goto LABEL_36;
  }

  v9 = psg_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_260D36000, v9, OS_LOG_TYPE_ERROR, "[ZKW-ML] Context not specified. Bail out.", buf, 2u);
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

- (id)_wordBoundaryResponseForRequest:(id)a3 config:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 contextBeforeInput];
  if ([v8 length])
  {
    v9 = [v6 localeIdentifier];
    if ([v9 length])
    {
      if ([v7 isMLModelEnabled])
      {
        v10 = [v7 inferenceModelConfigPath];
        v11 = [v7 espressoBinFilePath];
        if (-[NSObject length](v10, "length") && [v11 length])
        {
          v12 = [(PSGInputSuggesterServerRequestHandler *)self _quickTypeTriggerForContext:v8 localeIdentifier:v9 modelConfigPath:v10 espressoBinFilePath:v11];
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
            v32 = [v7 experimentIdentifiers];
            v28 = [v32 experimentId];
            v29 = [v7 experimentIdentifiers];
            v30 = [v29 treatmentId];
            *buf = 138412546;
            v34 = v28;
            v35 = 2112;
            v36 = v30;
            _os_log_fault_impl(&dword_260D36000, v14, OS_LOG_TYPE_FAULT, "Some required file is missing for word boundary experiment: %@, treatment: %@", buf, 0x16u);
          }

          v19 = 0;
        }

        goto LABEL_26;
      }

      v10 = psg_default_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v24 = [v7 experimentIdentifiers];
        v25 = [v24 experimentId];
        v26 = [v7 experimentIdentifiers];
        v27 = [v26 treatmentId];
        *buf = 138412546;
        v34 = v25;
        v35 = 2112;
        v36 = v27;
        _os_log_debug_impl(&dword_260D36000, v10, OS_LOG_TYPE_DEBUG, "ML not enabled for word boundary experiment: %@, treatment: %@", buf, 0x16u);
      }
    }

    else
    {
      v10 = psg_default_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_260D36000, v10, OS_LOG_TYPE_ERROR, "[WordBoundary-ML] Locale not specified. Bail out", buf, 2u);
      }
    }

    v19 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v9 = psg_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_260D36000, v9, OS_LOG_TYPE_ERROR, "[WordBoundary-ML] Context not specified. Bail out", buf, 2u);
  }

  v19 = 0;
LABEL_27:

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_quickResponsesForResponseContext:(id)a3 conversationTurns:(id)a4 localeIdentifier:(id)a5 maxResponses:(unint64_t)a6 recipients:(id)a7 chunkPath:(id)a8 plistPath:(id)a9 espressoBinFilePath:(id)a10 vocabFilePath:(id)a11
{
  BYTE2(v12) = 1;
  LOWORD(v12) = 257;
  return [MEMORY[0x277D02598] quickResponsesForMessage:a3 conversationTurns:a4 maxResponses:a6 localeIdentifier:a5 recipientHandles:a7 chunkPath:a8 plistPath:a9 espressoBinFilePath:a10 vocabFilePath:a11 useContactNames:v12 includeCustomResponses:? includeResponsesToRobots:?];
}

- (PSGInputSuggesterServerRequestHandler)initWithExperimentResolver:(id)a3 metricsLogger:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PSGInputSuggesterServerRequestHandler;
  v9 = [(PSGInputSuggesterServerRequestHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_experimentResolver, a3);
    objc_storeStrong(&v10->_metricsLogger, a4);
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