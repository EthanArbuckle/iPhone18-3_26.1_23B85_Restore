@interface _LTLoggingRequestHandler
- (FTBlazarService)mtAppService;
- (id)combineFeedbackCategory:(int64_t)category andErrors:(id)errors;
- (void)startLoggingRequest:(id)request;
- (void)startSafariFeedbackRequest:(id)request;
- (void)startSafariLatencyLoggingRequest:(id)request;
- (void)startSpeechLIDRequest:(id)request;
- (void)startSpeechSensesLoggingRequest:(id)request;
- (void)streamDidReceiveBatchTranslationStreamingResponse:(id)response;
- (void)streamDidReceiveSpeechTranslationStreamingResponse:(id)response;
- (void)streamFailVerifyBatchTranslationStreamingResponse:(id)response;
- (void)streamFailVerifySpeechTranslationStreamingResponse:(id)response;
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

- (void)startLoggingRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_LTLoggingRequestHandler *)self startSpeechLIDRequest:requestCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_LTLoggingRequestHandler *)self startSpeechSensesLoggingRequest:requestCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(_LTLoggingRequestHandler *)self startSafariLatencyLoggingRequest:requestCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(_LTLoggingRequestHandler *)self startSafariFeedbackRequest:requestCopy];
        }
      }
    }
  }
}

- (void)startSpeechLIDRequest:(id)request
{
  v53 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Start Speech LID logging request", buf, 2u);
  }

  mtAppService = [(_LTLoggingRequestHandler *)self mtAppService];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __50___LTLoggingRequestHandler_startSpeechLIDRequest___block_invoke_2;
  v49[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v49[4] = a2;
  v43 = [mtAppService performSpeechTranslationWithDelegate:self requestBuilder:&__block_literal_global_20 completion:v49];

  v7 = objc_alloc_init(FTMutableTranslationLocalePair);
  targetLocale = [requestCopy targetLocale];
  localeIdentifier = [targetLocale localeIdentifier];
  [(FTMutableTranslationLocalePair *)v7 setTarget_locale:localeIdentifier];

  localePair = [requestCopy localePair];
  targetLocale2 = [requestCopy targetLocale];
  v12 = [localePair oppositeToLocale:targetLocale2];
  localeIdentifier2 = [v12 localeIdentifier];
  v42 = v7;
  [(FTMutableTranslationLocalePair *)v7 setSource_locale:localeIdentifier2];

  v14 = objc_alloc_init(FTMutableLanguageDetected);
  lidResult = [requestCopy lidResult];
  dominantLanguage = [lidResult dominantLanguage];
  localeIdentifier3 = [dominantLanguage localeIdentifier];
  v41 = v14;
  [(FTMutableLanguageDetected *)v14 setDetected_locale:localeIdentifier3];

  lidResult2 = [requestCopy lidResult];
  confidences = [lidResult2 confidences];

  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  localePair2 = [requestCopy localePair];
  v51[0] = localePair2;
  localePair3 = [requestCopy localePair];
  reversedPair = [localePair3 reversedPair];
  v51[1] = reversedPair;
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

        sourceLocale = [*(*(&v45 + 1) + 8 * v28) sourceLocale];
        v30 = [confidences objectForKeyedSubscript:sourceLocale];
        if (v30)
        {
          v31 = objc_alloc_init(FTMutableLanguageDetectionPrediction);
          localeIdentifier4 = [sourceLocale localeIdentifier];
          [(FTMutableLanguageDetectionPrediction *)v31 setLocale:localeIdentifier4];

          [v30 floatValue];
          [(FTMutableLanguageDetectionPrediction *)v31 setConfidence:?];
          lidResult3 = [requestCopy lidResult];
          -[FTMutableLanguageDetectionPrediction setIs_low_confidence:](v31, "setIs_low_confidence:", [lidResult3 isConfident] ^ 1);

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
  conversationID = [requestCopy conversationID];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v34 setConversation_id:conversationID];

  requestID = [requestCopy requestID];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v34 setRequest_id:requestID];

  selectedLocale = [requestCopy selectedLocale];
  localeIdentifier5 = [selectedLocale localeIdentifier];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v34 setUser_selected_locale:localeIdentifier5];

  [(FTMutableStartSpeechTranslationLoggingRequest *)v34 setDetected_locale:v41];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v34 setTranslation_locale_pair:v42];
  v39 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
  [(FTMutableSpeechTranslationStreamingRequest *)v39 setContentAsFTStartSpeechTranslationLoggingRequest:v34];
  [v43 sendSpeechTranslationStreamingRequest:v39];
  [v43 closeStream];

  v40 = *MEMORY[0x277D85DE8];
}

- (void)startSpeechSensesLoggingRequest:(id)request
{
  requestCopy = request;
  v6 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Start speech senses logging request", buf, 2u);
  }

  mtAppService = [(_LTLoggingRequestHandler *)self mtAppService];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60___LTLoggingRequestHandler_startSpeechSensesLoggingRequest___block_invoke_2;
  v19[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v19[4] = a2;
  v8 = [mtAppService performSpeechTranslationWithDelegate:self requestBuilder:&__block_literal_global_14 completion:v19];

  v9 = objc_alloc_init(FTMutableStartSpeechTranslationLoggingRequest);
  conversationID = [requestCopy conversationID];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v9 setConversation_id:conversationID];

  requestID = [requestCopy requestID];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v9 setRequest_id:requestID];

  senses = [requestCopy senses];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v9 setSenses:senses];

  userInteractedSenses = [requestCopy userInteractedSenses];
  v14 = [userInteractedSenses count];

  if (v14)
  {
    userInteractedSenses2 = [requestCopy userInteractedSenses];
    [userInteractedSenses2 lastObject];
  }

  else
  {
    userInteractedSenses2 = [requestCopy senses];
    [userInteractedSenses2 objectAtIndexedSubscript:0];
  }
  v16 = ;
  [(FTMutableStartSpeechTranslationLoggingRequest *)v9 setUser_selected_sense:v16];

  userInteractedSenses3 = [requestCopy userInteractedSenses];
  [(FTMutableStartSpeechTranslationLoggingRequest *)v9 setUser_interacted_senses:userInteractedSenses3];

  v18 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
  [(FTMutableSpeechTranslationStreamingRequest *)v18 setContentAsFTStartSpeechTranslationLoggingRequest:v9];
  [v8 sendSpeechTranslationStreamingRequest:v18];
  [v8 closeStream];
}

- (void)startSafariLatencyLoggingRequest:(id)request
{
  requestCopy = request;
  v4 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Start Safari latency logging request", buf, 2u);
  }

  v6 = requestCopy;
  v5 = requestCopy;
  AnalyticsSendEventLazy();
}

- (void)startSafariFeedbackRequest:(id)request
{
  v34 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v6 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Start Safari feedback request", buf, 2u);
  }

  mtAppService = [(_LTLoggingRequestHandler *)self mtAppService];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __55___LTLoggingRequestHandler_startSafariFeedbackRequest___block_invoke_2;
  v32[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v32[4] = a2;
  v8 = [mtAppService performBatchTranslationWithDelegate:self requestBuilder:&__block_literal_global_18 completion:v32];

  v9 = objc_alloc_init(FTMutableBatchTranslationFeedbackRequest);
  sourceContentAsJSON = [requestCopy sourceContentAsJSON];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setSource_content:sourceContentAsJSON];

  targetContentAsJSON = [requestCopy targetContentAsJSON];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setTranslated_content:targetContentAsJSON];

  webpageURL = [requestCopy webpageURL];
  absoluteString = [webpageURL absoluteString];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setUrl:absoluteString];

  category = [requestCopy category];
  errorsAsJSON = [requestCopy errorsAsJSON];
  v16 = [(_LTLoggingRequestHandler *)self combineFeedbackCategory:category andErrors:errorsAsJSON];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setErrors:v16];

  sessionID = [requestCopy sessionID];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setSession_id:sessionID];

  localePair = [requestCopy localePair];
  sourceLocale = [localePair sourceLocale];
  localeIdentifier = [sourceLocale localeIdentifier];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setSource_language:localeIdentifier];

  localePair2 = [requestCopy localePair];
  targetLocale = [localePair2 targetLocale];
  localeIdentifier2 = [targetLocale localeIdentifier];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setTarget_language:localeIdentifier2];

  safariVersion = [requestCopy safariVersion];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setSafari_version:safariVersion];

  clientBundleID = [requestCopy clientBundleID];

  [(FTMutableBatchTranslationFeedbackRequest *)v9 setApp_id:clientBundleID];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  operatingSystemVersionString = [processInfo operatingSystemVersionString];
  [(FTMutableBatchTranslationFeedbackRequest *)v9 setOs_version:operatingSystemVersionString];

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

- (id)combineFeedbackCategory:(int64_t)category andErrors:(id)errors
{
  v21[2] = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  v5 = [errorsCopy dataUsingEncoding:4];
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

    v10 = errorsCopy;
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

      v15 = errorsCopy;
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

- (void)streamDidReceiveSpeechTranslationStreamingResponse:(id)response
{
  v14 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if ([responseCopy content_type] == 6)
  {
    contentAsFTFinalBlazarResponse = [responseCopy contentAsFTFinalBlazarResponse];
    v5 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      return_code = [contentAsFTFinalBlazarResponse return_code];
      return_str = [contentAsFTFinalBlazarResponse return_str];
      v11[0] = 67109378;
      v11[1] = return_code;
      v12 = 2112;
      v13 = return_str;
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

- (void)streamFailVerifySpeechTranslationStreamingResponse:(id)response
{
  responseCopy = response;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_LTLoggingRequestHandler streamFailVerifySpeechTranslationStreamingResponse:];
  }

  v6 = NSStringFromSelector(a2);
  _LTSendErrorEvent(responseCopy, v6);
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:(id)response
{
  v14 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if ([responseCopy content_type] == 2)
  {
    contentAsFTFinalBlazarResponse = [responseCopy contentAsFTFinalBlazarResponse];
    v5 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      return_code = [contentAsFTFinalBlazarResponse return_code];
      return_str = [contentAsFTFinalBlazarResponse return_str];
      v11[0] = 67109378;
      v11[1] = return_code;
      v12 = 2112;
      v13 = return_str;
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

- (void)streamFailVerifyBatchTranslationStreamingResponse:(id)response
{
  responseCopy = response;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_LTLoggingRequestHandler streamFailVerifyBatchTranslationStreamingResponse:];
  }

  v6 = NSStringFromSelector(a2);
  _LTSendErrorEvent(responseCopy, v6);
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