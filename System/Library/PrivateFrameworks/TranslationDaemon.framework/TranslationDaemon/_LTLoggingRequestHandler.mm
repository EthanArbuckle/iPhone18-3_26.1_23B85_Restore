@interface _LTLoggingRequestHandler
- (FTBlazarService)mtAppService;
- (id)combineFeedbackCategory:(int64_t)a3 andErrors:(id)a4;
- (void)startLoggingRequest:(id)a3;
- (void)startSafariFeedbackRequest:(id)a3;
- (void)startSafariLatencyLoggingRequest:(id)a3;
- (void)startSpeechLIDRequest:(id)a3;
- (void)startSpeechSensesLoggingRequest:(id)a3;
- (void)streamDidReceiveBatchTranslationStreamingResponse:(id)a3;
- (void)streamDidReceiveSpeechTranslationStreamingResponse:(id)a3;
- (void)streamFailVerifyBatchTranslationStreamingResponse:(id)a3;
- (void)streamFailVerifySpeechTranslationStreamingResponse:(id)a3;
@end

@implementation _LTLoggingRequestHandler

- (FTBlazarService)mtAppService
{
  mtAppService = self->_mtAppService;
  if (!mtAppService)
  {
    v4 = [_LTOnlineTranslationEngine blazarServiceWithBundleID:@"com.apple.Translate"];
    v5 = self->_mtAppService;
    self->_mtAppService = v4;

    mtAppService = self->_mtAppService;
  }

  return mtAppService;
}

- (void)startLoggingRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_LTLoggingRequestHandler *)self startSpeechLIDRequest:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_LTLoggingRequestHandler *)self startSpeechSensesLoggingRequest:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(_LTLoggingRequestHandler *)self startSafariLatencyLoggingRequest:v4];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(_LTLoggingRequestHandler *)self startSafariFeedbackRequest:v4];
        }
      }
    }
  }
}

- (void)startSpeechLIDRequest:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Start Speech LID logging request", buf, 2u);
  }

  v6 = [(_LTLoggingRequestHandler *)self mtAppService];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __50___LTLoggingRequestHandler_startSpeechLIDRequest___block_invoke_2;
  v49[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v49[4] = a2;
  v43 = [v6 performSpeechTranslationWithDelegate:self requestBuilder:&__block_literal_global_20 completion:v49];

  v7 = objc_alloc_init(FTMutableTranslationLocalePair);
  v8 = [v44 targetLocale];
  v9 = [v8 localeIdentifier];
  [(FTMutableTranslationLocalePair *)v7 setTarget_locale:v9];

  v10 = [v44 localePair];
  v11 = [v44 targetLocale];
  v12 = [v10 oppositeToLocale:v11];
  v13 = [v12 localeIdentifier];
  v42 = v7;
  [(FTMutableTranslationLocalePair *)v7 setSource_locale:v13];

  v14 = objc_alloc_init(FTMutableLanguageDetected);
  v15 = [v44 lidResult];
  v16 = [v15 dominantLanguage];
  v17 = [v16 localeIdentifier];
  v41 = v14;
  [(FTMutableLanguageDetected *)v14 setDetected_locale:v17];

  v18 = [v44 lidResult];
  v19 = [v18 confidences];

  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v21 = [v44 localePair];
  v51[0] = v21;
  v22 = [v44 localePair];
  v23 = [v22 reversedPair];
  v51[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];

  v25 = [v24 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v46;
    do
    {
      v28 = 0;
      do
      {
        if (*v46 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v45 + 1) + 8 * v28) sourceLocale];
        v30 = [v19 objectForKeyedSubscript:v29];
        if (v30)
        {
          v31 = objc_alloc_init(FTMutableLanguageDetectionPrediction);
          v32 = [v29 localeIdentifier];
          [(FTMutableLanguageDetectionPrediction *)v31 setLocale:v32];

          [v30 floatValue];
          [(FTMutableLanguageDetectionPrediction *)v31 setConfidence:?];
          v33 = [v44 lidResult];
          -[FTMutableLanguageDetectionPrediction setIs_low_confidence:](v31, "setIs_low_confidence:", [v33 isConfident] ^ 1);

          [v20 addObject:v31];
        }

        ++v28;
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v26);
  }

  [(FTMutableLanguageDetected *)v41 setPredictions:v20];
  v34 = objc_alloc_init(FTMutableStartSpeechTranslationLoggingRequest);
  v35 = [v44 conversationID];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v34 setConversation_id:v35];

  v36 = [v44 requestID];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v34 setRequest_id:v36];

  v37 = [v44 selectedLocale];
  v38 = [v37 localeIdentifier];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v34 setUser_selected_locale:v38];

  [(FTMutableStartSpeechTranslationLoggingRequest *)v34 setDetected_locale:v41];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v34 setTranslation_locale_pair:v42];
  v39 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
  [(FTMutableSpeechTranslationStreamingRequest *)v39 setContentAsFTStartSpeechTranslationLoggingRequest:v34];
  [v43 sendSpeechTranslationStreamingRequest:v39];
  [v43 closeStream];

  v40 = *MEMORY[0x277D85DE8];
}

- (void)startSpeechSensesLoggingRequest:(id)a3
{
  v5 = a3;
  v6 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Start speech senses logging request", buf, 2u);
  }

  v7 = [(_LTLoggingRequestHandler *)self mtAppService];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60___LTLoggingRequestHandler_startSpeechSensesLoggingRequest___block_invoke_2;
  v19[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v19[4] = a2;
  v8 = [v7 performSpeechTranslationWithDelegate:self requestBuilder:&__block_literal_global_14 completion:v19];

  v9 = objc_alloc_init(FTMutableStartSpeechTranslationLoggingRequest);
  v10 = [v5 conversationID];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v9 setConversation_id:v10];

  v11 = [v5 requestID];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v9 setRequest_id:v11];

  v12 = [v5 senses];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v9 setSenses:v12];

  v13 = [v5 userInteractedSenses];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [v5 userInteractedSenses];
    [v15 lastObject];
  }

  else
  {
    v15 = [v5 senses];
    [v15 objectAtIndexedSubscript:0];
  }
  v16 = ;
  [(FTMutableStartSpeechTranslationLoggingRequest *)v9 setUser_selected_sense:v16];

  v17 = [v5 userInteractedSenses];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v9 setUser_interacted_senses:v17];

  v18 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
  [(FTMutableSpeechTranslationStreamingRequest *)v18 setContentAsFTStartSpeechTranslationLoggingRequest:v9];
  [v8 sendSpeechTranslationStreamingRequest:v18];
  [v8 closeStream];
}

- (void)startSafariLatencyLoggingRequest:(id)a3
{
  v3 = a3;
  v4 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Start Safari latency logging request", buf, 2u);
  }

  v6 = v3;
  v5 = v3;
  AnalyticsSendEventLazy();
}

- (void)startSafariFeedbackRequest:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Start Safari feedback request", buf, 2u);
  }

  v7 = [(_LTLoggingRequestHandler *)self mtAppService];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __55___LTLoggingRequestHandler_startSafariFeedbackRequest___block_invoke_2;
  v32[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v32[4] = a2;
  v8 = [v7 performBatchTranslationWithDelegate:self requestBuilder:&__block_literal_global_18 completion:v32];

  v9 = objc_alloc_init(FTMutableBatchTranslationFeedbackRequest);
  v10 = [v5 sourceContentAsJSON];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setSource_content:v10];

  v11 = [v5 targetContentAsJSON];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setTranslated_content:v11];

  v12 = [v5 webpageURL];
  v13 = [v12 absoluteString];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setUrl:v13];

  v14 = [v5 category];
  v15 = [v5 errorsAsJSON];
  v16 = [(_LTLoggingRequestHandler *)self combineFeedbackCategory:v14 andErrors:v15];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setErrors:v16];

  v17 = [v5 sessionID];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setSession_id:v17];

  v18 = [v5 localePair];
  v19 = [v18 sourceLocale];
  v20 = [v19 localeIdentifier];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setSource_language:v20];

  v21 = [v5 localePair];
  v22 = [v21 targetLocale];
  v23 = [v22 localeIdentifier];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setTarget_language:v23];

  v24 = [v5 safariVersion];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setSafari_version:v24];

  v25 = [v5 clientBundleID];

  [(FTMutableBatchTranslationFeedbackRequest *)v9 setApp_id:v25];
  v26 = [MEMORY[0x277CCAC38] processInfo];
  v27 = [v26 operatingSystemVersionString];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setOs_version:v27];

  v31 = 4096;
  sysctlbyname("hw.machine", buf, &v31, 0, 0);
  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setDevice_type:v28];

  v29 = objc_alloc_init(FTMutableBatchTranslationStreamingRequest);
  [(FTMutableBatchTranslationStreamingRequest *)v29 setContentAsFTBatchTranslationFeedbackRequest:v9];
  [v8 sendBatchTranslationStreamingRequest:v29];
  [v8 closeStream];

  v30 = *MEMORY[0x277D85DE8];
}

- (id)combineFeedbackCategory:(int64_t)a3 andErrors:(id)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [v4 dataUsingEncoding:4];
  v19 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v19];
  v7 = v19;
  if (v7)
  {
    v8 = v7;
    v9 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LTLoggingRequestHandler combineFeedbackCategory:andErrors:];
    }

    v10 = v4;
  }

  else
  {
    v11 = _LTFeedbackCategoryString();
    v20[0] = @"category";
    v20[1] = @"errors";
    v21[0] = v11;
    v21[1] = v6;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v18 = 0;
    v13 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v12 options:0 error:&v18];
    v8 = v18;
    if (v8)
    {
      v14 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [_LTLoggingRequestHandler combineFeedbackCategory:andErrors:];
      }

      v15 = v4;
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:4];
    }

    v10 = v15;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)streamDidReceiveSpeechTranslationStreamingResponse:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 content_type] == 6)
  {
    v4 = [v3 contentAsFTFinalBlazarResponse];
    v5 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = [v4 return_code];
      v8 = [v4 return_str];
      v11[0] = 67109378;
      v11[1] = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Received speech logging request response: [%d] %@", v11, 0x12u);
    }
  }

  else
  {
    v9 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LTLoggingRequestHandler streamDidReceiveSpeechTranslationStreamingResponse:];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)streamFailVerifySpeechTranslationStreamingResponse:(id)a3
{
  v4 = a3;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_LTLoggingRequestHandler streamFailVerifySpeechTranslationStreamingResponse:];
  }

  v6 = NSStringFromSelector(a2);
  _LTSendErrorEvent(v4, v6);
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 content_type] == 2)
  {
    v4 = [v3 contentAsFTFinalBlazarResponse];
    v5 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = [v4 return_code];
      v8 = [v4 return_str];
      v11[0] = 67109378;
      v11[1] = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Received safari feedback request response: [%d] %@", v11, 0x12u);
    }
  }

  else
  {
    v9 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LTLoggingRequestHandler streamDidReceiveBatchTranslationStreamingResponse:];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)streamFailVerifyBatchTranslationStreamingResponse:(id)a3
{
  v4 = a3;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_LTLoggingRequestHandler streamFailVerifyBatchTranslationStreamingResponse:];
  }

  v6 = NSStringFromSelector(a2);
  _LTSendErrorEvent(v4, v6);
}

- (void)combineFeedbackCategory:andErrors:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to de-serialize Safari error string JSON into array: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)combineFeedbackCategory:andErrors:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to serialize dictionary with combined errors and category for Safari feedback into JSON: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)streamDidReceiveSpeechTranslationStreamingResponse:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Speech logging request received unexpected response: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)streamFailVerifySpeechTranslationStreamingResponse:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Speech logging request received error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Safari feedback request received unexpected response: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)streamFailVerifyBatchTranslationStreamingResponse:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Safari feedback request received error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end