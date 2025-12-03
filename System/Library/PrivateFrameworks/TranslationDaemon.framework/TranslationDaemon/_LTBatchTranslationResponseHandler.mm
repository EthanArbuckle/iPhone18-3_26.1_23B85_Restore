@interface _LTBatchTranslationResponseHandler
- (void)callCompletionHandlersWithError:(id)error;
- (void)streamDidReceiveBatchTranslationStreamingResponse:(id)response;
- (void)streamFailVerifyBatchTranslationStreamingResponse:(id)response;
@end

@implementation _LTBatchTranslationResponseHandler

- (void)streamDidReceiveBatchTranslationStreamingResponse:(id)response
{
  v57 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    request_id = [(FTMutableBatchTranslationRequest *)self->_request request_id];
    v51 = 138543362;
    v52 = request_id;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "streamDidReceiveBatchTranslationStreamingResponse request_id %{public}@", &v51, 0xCu);
  }

  if ([responseCopy content_type] == 1)
  {
    v7 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      request_id2 = [(FTMutableBatchTranslationRequest *)self->_request request_id];
      v51 = 138543362;
      v52 = request_id2;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "found BatchTranslationResponse request_id %{public}@", &v51, 0xCu);
    }

    contentAsFTBatchTranslationResponse = [responseCopy contentAsFTBatchTranslationResponse];
    v10 = contentAsFTBatchTranslationResponse;
    if (contentAsFTBatchTranslationResponse)
    {
      batchedParagraphs = self->_batchedParagraphs;
      paragraph_id = [contentAsFTBatchTranslationResponse paragraph_id];
      v13 = [(_LTBatchedParagraphsHolder *)batchedParagraphs paragraphWithId:paragraph_id];

      if ([v10 return_code] == 200)
      {
        requestParagraph = [v13 requestParagraph];
        paragraph = [v13 paragraph];
        v16 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          request_id3 = [(FTMutableBatchTranslationRequest *)self->_request request_id];
          span = [v10 span];
          v19 = [span count];
          v51 = 138543618;
          v52 = request_id3;
          v53 = 2048;
          v54 = v19;
          _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Succeeded request %{public}@ (%zu alignments)", &v51, 0x16u);
        }

        v20 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [v10 translated_text];
          objc_claimAutoreleasedReturnValue();
          [requestParagraph text];
          objc_claimAutoreleasedReturnValue();
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }

        v21 = objc_alloc(MEMORY[0x277CE1C18]);
        text = [requestParagraph text];
        v23 = [v21 initWithOspreyBatchResponse:v10 sourceText:text];

        [v23 setRoute:2];
        paragraph_id2 = [requestParagraph paragraph_id];
        [v23 setIdentifier:paragraph_id2];

        [v23 setLocale:self->_targetLocale];
        text2 = [requestParagraph text];
        [v23 setSourceString:text2];

        spans = [paragraph spans];
        span2 = [v10 span];
        [v23 updateAlignmentWithSourceSpan:spans targetSpan:span2];

        v28 = 0;
      }

      else
      {
        v38 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [v10 return_code];
          [v10 return_string];
          objc_claimAutoreleasedReturnValue();
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }

        return_code = [v10 return_code];
        return_string = [v10 return_string];
        v28 = _LTErrorFromRemoteFailure(return_code, return_string);

        requestParagraph = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(requestParagraph, OS_LOG_TYPE_ERROR))
        {
          [(FTMutableBatchTranslationRequest *)self->_request request_id];
          objc_claimAutoreleasedReturnValue();
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }

        v23 = 0;
      }

      completion = [v13 completion];
      v42 = completion == 0;

      if (v42)
      {
        completion2 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(completion2, OS_LOG_TYPE_ERROR))
        {
          [v10 paragraph_id];
          objc_claimAutoreleasedReturnValue();
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }
      }

      else
      {
        completion2 = [v13 completion];
        (completion2[2].isa)(completion2, v23, v28);
      }

      v44 = self->_batchedParagraphs;
      paragraph_id3 = [v10 paragraph_id];
      [(_LTBatchedParagraphsHolder *)v44 removeParagraphWithId:paragraph_id3];
    }

    else
    {
      v37 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
      }
    }
  }

  else if ([responseCopy content_type] == 2)
  {
    [(_LTBatchTranslationResponseHandler *)self setHasFinalServerResponse:1];
    contentAsFTFinalBlazarResponse = [responseCopy contentAsFTFinalBlazarResponse];
    v30 = contentAsFTFinalBlazarResponse;
    if (contentAsFTFinalBlazarResponse)
    {
      if ([contentAsFTFinalBlazarResponse return_code] != 200)
      {
        v31 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [v30 return_code];
          [v30 return_str];
          objc_claimAutoreleasedReturnValue();
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }

        return_code2 = [v30 return_code];
        return_str = [v30 return_str];
        v34 = _LTErrorFromRemoteFailure(return_code2, return_str);

        v35 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [(FTMutableBatchTranslationRequest *)self->_request request_id];
          objc_claimAutoreleasedReturnValue();
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }
      }
    }

    else
    {
      v46 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
      }
    }

    v47 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      request_id4 = [(FTMutableBatchTranslationRequest *)self->_request request_id];
      v49 = [(_LTBatchedParagraphsHolder *)self->_batchedParagraphs count];
      v51 = 138543874;
      v52 = request_id4;
      v53 = 2048;
      v54 = v49;
      v55 = 2112;
      v56 = 0;
      _os_log_impl(&dword_232E53000, v47, OS_LOG_TYPE_INFO, "found FTFinalBlazarResponse request_id %{public}@ outstanding paragraphs %zu error %@", &v51, 0x20u);
    }

    [(_LTBatchTranslationResponseHandler *)self callCompletionHandlersWithError:0];
  }

  else
  {
    v36 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)streamFailVerifyBatchTranslationStreamingResponse:(id)response
{
  v7 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(FTMutableBatchTranslationRequest *)self->_request request_id];
    objc_claimAutoreleasedReturnValue();
    [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
  }

  [(_LTBatchTranslationResponseHandler *)self callCompletionHandlersWithError:responseCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)callCompletionHandlersWithError:(id)error
{
  v16[3] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (!errorCopy)
  {
    request_id = [(FTMutableBatchTranslationRequest *)self->_request request_id];

    if (request_id)
    {
      v15[0] = @"request_id";
      request_id2 = [(FTMutableBatchTranslationRequest *)self->_request request_id];
      v16[0] = request_id2;
      v15[1] = @"hasFinalServerResponse";
      v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasFinalServerResponse];
      v16[1] = v7;
      v15[2] = @"completionHandlerCalled";
      v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_completionHandlerCalled];
      v16[2] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

      request_id = v9;
    }

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = MEMORY[0x277CCA9B8];
    v12 = [v10 localizedStringForKey:@"MISSING_BATCH_RESPONSE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v13 = [v11 lt_errorWithCode:13 description:v12 userInfo:request_id];

    errorCopy = v13;
  }

  [(_LTBatchedParagraphsHolder *)self->_batchedParagraphs completeAllAndCleanWithError:errorCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:.cold.2()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5_3(v1, v2, v3, 1.5047e-36);
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:.cold.3()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_12(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:.cold.7()
{
  OUTLINED_FUNCTION_7_1();
  *v2 = 138740227;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2117;
  *(v2 + 14) = v4;
  _os_log_debug_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEBUG, "Translation: %{sensitive}@ for %{sensitive}@", v5, 0x16u);
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:.cold.8()
{
  OUTLINED_FUNCTION_6_0();
  *v1 = 138543362;
  *(v1 + 4) = v2;
  _os_log_error_impl(&dword_232E53000, v3, OS_LOG_TYPE_ERROR, "Missing paragraphBatchInfo for paragraph ID: %{public}@", v4, 0xCu);
}

- (void)streamDidReceiveBatchTranslationStreamingResponse:.cold.9()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end