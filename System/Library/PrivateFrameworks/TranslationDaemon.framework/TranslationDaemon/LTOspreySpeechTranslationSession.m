@interface LTOspreySpeechTranslationSession
@end

@implementation LTOspreySpeechTranslationSession

id __55___LTOspreySpeechTranslationSession_sendAnalyticsEvent__block_invoke(uint64_t a1)
{
  v16[10] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v15[0] = @"sentAudio";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:WeakRetained[24]];
    v16[0] = v14;
    v15[1] = @"sentEndAudio";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:WeakRetained[25]];
    v16[1] = v13;
    v15[2] = @"endpointedSpeech";
    v2 = [MEMORY[0x277CCABB0] numberWithBool:WeakRetained[26]];
    v16[2] = v2;
    v15[3] = @"didReceiveAudioLimitExceededResponse";
    v3 = [MEMORY[0x277CCABB0] numberWithBool:WeakRetained[27]];
    v16[3] = v3;
    v15[4] = @"didReceivePartialRecognitionResponse";
    v4 = [MEMORY[0x277CCABB0] numberWithBool:WeakRetained[28]];
    v16[4] = v4;
    v15[5] = @"didReceiveFinalRecognitionResponse";
    v5 = [MEMORY[0x277CCABB0] numberWithBool:WeakRetained[29]];
    v16[5] = v5;
    v15[6] = @"didReceiveTranslationResponse";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:WeakRetained[30]];
    v16[6] = v6;
    v15[7] = @"didReceiveTTSResponse";
    v7 = [MEMORY[0x277CCABB0] numberWithBool:WeakRetained[31]];
    v16[7] = v7;
    v15[8] = @"didReceiveFinalBlazarResponse";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:WeakRetained[32]];
    v16[8] = v8;
    v15[9] = @"didTimeout";
    v9 = [MEMORY[0x277CCABB0] numberWithBool:WeakRetained[33]];
    v16[9] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:10];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __89___LTOspreySpeechTranslationSession_initWithService_context_delegate_selfLoggingManager___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) uniqueID];
  [v3 setClientTraceIdentifier:v4];

  v5 = [*(a1 + 32) sequoiaClientHeaderValue];

  if (v5)
  {
    v6 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 sequoiaClientHeaderValue];
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Using client header value: %{public}@", &v12, 0xCu);
    }

    v10 = [*(a1 + 32) sequoiaClientHeaderValue];
    [v3 setValue:v10 forHTTPHeaderField:@"x-sequoia-client"];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __89___LTOspreySpeechTranslationSession_initWithService_context_delegate_selfLoggingManager___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogTranslationEngine();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __89___LTOspreySpeechTranslationSession_initWithService_context_delegate_selfLoggingManager___block_invoke_50_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Streaming connection finished successfully", v14, 2u);
  }

  [*(a1 + 32) sendAnalyticsEvent];
  v6 = NSStringFromSelector(*(a1 + 48));
  _LTSendErrorEvent(v3, v6);

  [*(a1 + 32) translationDidFinishWithError:v3];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained isCancelled];

  if ((v8 & 1) == 0)
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 completionBlock];

    if (v10)
    {
      v11 = objc_loadWeakRetained((a1 + 40));
      v12 = [v11 completionBlock];
      (v12)[2](v12, v3);
    }

    else
    {
      v13 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        __89___LTOspreySpeechTranslationSession_initWithService_context_delegate_selfLoggingManager___block_invoke_50_cold_2();
      }
    }
  }
}

void __94___LTOspreySpeechTranslationSession_initWithService_context_text_delegate_selfLoggingManager___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) uniqueID];
  [v6 setClientTraceIdentifier:v3];

  v4 = [*(a1 + 32) sequoiaClientHeaderValue];

  if (v4)
  {
    v5 = [*(a1 + 32) sequoiaClientHeaderValue];
    [v6 setValue:v5 forHTTPHeaderField:@"x-sequoia-client"];
  }
}

void __94___LTOspreySpeechTranslationSession_initWithService_context_text_delegate_selfLoggingManager___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogTranslationEngine();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __94___LTOspreySpeechTranslationSession_initWithService_context_text_delegate_selfLoggingManager___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Streaming text translation session finished successfully", v13, 2u);
  }

  [*(a1 + 32) translationDidFinishWithError:v3];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained isCancelled];

  if ((v7 & 1) == 0)
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v8 completionBlock];

    if (v9)
    {
      v10 = objc_loadWeakRetained((a1 + 40));
      v11 = [v10 completionBlock];
      (v11)[2](v11, v3);
    }

    else
    {
      v12 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        __89___LTOspreySpeechTranslationSession_initWithService_context_delegate_selfLoggingManager___block_invoke_50_cold_2();
      }
    }
  }
}

void __57___LTOspreySpeechTranslationSession_updateServerTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    dispatch_source_cancel(WeakRetained[14]);
    v2 = v3[14];
    v3[14] = 0;

    [(dispatch_source_t *)v3 serverTimeoutFired];
    WeakRetained = v3;
  }
}

FTMutableAudioFrame *__73___LTOspreySpeechTranslationSession_didCompressPackets_totalPacketCount___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(FTMutableAudioFrame);
  [(FTMutableAudioFrame *)v3 setAudio_bytes:v2];

  return v3;
}

id __69___LTOspreySpeechTranslationSession__handleFinalRecognitionResponse___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 formattedString];
  [v3 confidence];
  v6 = v5;
  v7 = [v3 isLowConfidence];

  v8 = [v2 stringWithFormat:@"%@: %f : %d", v4, v6, v7];

  return v8;
}

void __89___LTOspreySpeechTranslationSession_initWithService_context_delegate_selfLoggingManager___block_invoke_50_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __94___LTOspreySpeechTranslationSession_initWithService_context_text_delegate_selfLoggingManager___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end