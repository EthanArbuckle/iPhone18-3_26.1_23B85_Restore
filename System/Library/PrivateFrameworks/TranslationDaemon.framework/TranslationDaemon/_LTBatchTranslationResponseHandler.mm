@interface _LTBatchTranslationResponseHandler
- (void)callCompletionHandlersWithError:(id)a3;
- (void)streamDidReceiveBatchTranslationStreamingResponse:(id)a3;
- (void)streamFailVerifyBatchTranslationStreamingResponse:(id)a3;
@end

@implementation _LTBatchTranslationResponseHandler

- (void)streamDidReceiveBatchTranslationStreamingResponse:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(FTMutableBatchTranslationRequest *)self->_request request_id];
    v51 = 138543362;
    v52 = v6;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "streamDidReceiveBatchTranslationStreamingResponse request_id %{public}@", &v51, 0xCu);
  }

  if ([v4 content_type] == 1)
  {
    v7 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(FTMutableBatchTranslationRequest *)self->_request request_id];
      v51 = 138543362;
      v52 = v8;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "found BatchTranslationResponse request_id %{public}@", &v51, 0xCu);
    }

    v9 = [v4 contentAsFTBatchTranslationResponse];
    v10 = v9;
    if (v9)
    {
      batchedParagraphs = self->_batchedParagraphs;
      v12 = [v9 paragraph_id];
      v13 = [(_LTBatchedParagraphsHolder *)batchedParagraphs paragraphWithId:v12];

      if ([v10 return_code] == 200)
      {
        v14 = [v13 requestParagraph];
        v15 = [v13 paragraph];
        v16 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [(FTMutableBatchTranslationRequest *)self->_request request_id];
          v18 = [v10 span];
          v19 = [v18 count];
          v51 = 138543618;
          v52 = v17;
          v53 = 2048;
          v54 = v19;
          _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Succeeded request %{public}@ (%zu alignments)", &v51, 0x16u);
        }

        v20 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [v10 translated_text];
          objc_claimAutoreleasedReturnValue();
          [v14 text];
          objc_claimAutoreleasedReturnValue();
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }

        v21 = objc_alloc(MEMORY[0x277CE1C18]);
        v22 = [v14 text];
        v23 = [v21 initWithOspreyBatchResponse:v10 sourceText:v22];

        [v23 setRoute:2];
        v24 = [v14 paragraph_id];
        [v23 setIdentifier:v24];

        [v23 setLocale:self->_targetLocale];
        v25 = [v14 text];
        [v23 setSourceString:v25];

        v26 = [v15 spans];
        v27 = [v10 span];
        [v23 updateAlignmentWithSourceSpan:v26 targetSpan:v27];

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

        v39 = [v10 return_code];
        v40 = [v10 return_string];
        v28 = _LTErrorFromRemoteFailure(v39, v40);

        v14 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(FTMutableBatchTranslationRequest *)self->_request request_id];
          objc_claimAutoreleasedReturnValue();
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }

        v23 = 0;
      }

      v41 = [v13 completion];
      v42 = v41 == 0;

      if (v42)
      {
        v43 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [v10 paragraph_id];
          objc_claimAutoreleasedReturnValue();
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }
      }

      else
      {
        v43 = [v13 completion];
        (v43[2].isa)(v43, v23, v28);
      }

      v44 = self->_batchedParagraphs;
      v45 = [v10 paragraph_id];
      [(_LTBatchedParagraphsHolder *)v44 removeParagraphWithId:v45];
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

  else if ([v4 content_type] == 2)
  {
    [(_LTBatchTranslationResponseHandler *)self setHasFinalServerResponse:1];
    v29 = [v4 contentAsFTFinalBlazarResponse];
    v30 = v29;
    if (v29)
    {
      if ([v29 return_code] != 200)
      {
        v31 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [v30 return_code];
          [v30 return_str];
          objc_claimAutoreleasedReturnValue();
          [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
        }

        v32 = [v30 return_code];
        v33 = [v30 return_str];
        v34 = _LTErrorFromRemoteFailure(v32, v33);

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
      v48 = [(FTMutableBatchTranslationRequest *)self->_request request_id];
      v49 = [(_LTBatchedParagraphsHolder *)self->_batchedParagraphs count];
      v51 = 138543874;
      v52 = v48;
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

- (void)streamFailVerifyBatchTranslationStreamingResponse:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(FTMutableBatchTranslationRequest *)self->_request request_id];
    objc_claimAutoreleasedReturnValue();
    [_LTBatchTranslationResponseHandler streamDidReceiveBatchTranslationStreamingResponse:];
  }

  [(_LTBatchTranslationResponseHandler *)self callCompletionHandlersWithError:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)callCompletionHandlersWithError:(id)a3
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = [(FTMutableBatchTranslationRequest *)self->_request request_id];

    if (v5)
    {
      v15[0] = @"request_id";
      v6 = [(FTMutableBatchTranslationRequest *)self->_request request_id];
      v16[0] = v6;
      v15[1] = @"hasFinalServerResponse";
      v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasFinalServerResponse];
      v16[1] = v7;
      v15[2] = @"completionHandlerCalled";
      v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_completionHandlerCalled];
      v16[2] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

      v5 = v9;
    }

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = MEMORY[0x277CCA9B8];
    v12 = [v10 localizedStringForKey:@"MISSING_BATCH_RESPONSE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
    v13 = [v11 lt_errorWithCode:13 description:v12 userInfo:v5];

    v4 = v13;
  }

  [(_LTBatchedParagraphsHolder *)self->_batchedParagraphs completeAllAndCleanWithError:v4];

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