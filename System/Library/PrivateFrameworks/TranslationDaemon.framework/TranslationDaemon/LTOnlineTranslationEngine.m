@interface LTOnlineTranslationEngine
@end

@implementation LTOnlineTranslationEngine

void __53___LTOnlineTranslationEngine_startServerTimeoutTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && !WeakRetained[9])
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = *(v2 + 10);
    *(v2 + 10) = v3;

    v5 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "startServerTimeoutTimer", v8, 2u);
    }

    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v2 + 8));
    v7 = *(v2 + 9);
    *(v2 + 9) = v6;

    [v2 updateServerTimeout];
    dispatch_resume(*(v2 + 9));
  }
}

void __49___LTOnlineTranslationEngine_updateServerTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 9);
    if (v4)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __49___LTOnlineTranslationEngine_updateServerTimeout__block_invoke_2;
      handler[3] = &unk_2789B72E0;
      objc_copyWeak(&v10, (a1 + 32));
      dispatch_source_set_event_handler(v4, handler);
      v5 = _LTPreferencesBatchingMaxParagraphBufferTimeout();
      v6 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __49___LTOnlineTranslationEngine_updateServerTimeout__block_invoke_cold_1(v6, v5);
      }

      v7 = v3[9];
      v8 = dispatch_time(0, (v5 * 1000000000.0));
      dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
      objc_destroyWeak(&v10);
    }
  }
}

void __49___LTOnlineTranslationEngine_updateServerTimeout__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelServerTimeout];
    v4 = v3[5];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49___LTOnlineTranslationEngine_updateServerTimeout__block_invoke_3;
    block[3] = &unk_2789B72E0;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v6);
  }
}

void __49___LTOnlineTranslationEngine_updateServerTimeout__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained serverTimeoutFired];
  }
}

void __49___LTOnlineTranslationEngine_cancelServerTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[9];
    if (v2)
    {
      v4 = WeakRetained;
      if (dispatch_source_testcancel(v2))
      {
        v3 = v4;
      }

      else
      {
        dispatch_source_cancel(v2);
        v3 = v4;
        v2 = v4[9];
      }

      v3[9] = 0;

      WeakRetained = v4;
    }
  }
}

void __59___LTOnlineTranslationEngine_speak_withContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) speech_id];
  [v4 setClientTraceIdentifier:v3];
}

void __59___LTOnlineTranslationEngine_speak_withContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 error_code];
      v9 = [v5 error_str];
      *buf = 67109378;
      *&buf[4] = v8;
      *&buf[8] = 2112;
      *&buf[10] = v9;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "TTS response (%d): %@", buf, 0x12u);
    }

    if (_LTRemoteStatusIsSuccess([v5 error_code]))
    {
      v25 = 0;
      memset(buf, 0, sizeof(buf));
      v10 = [v5 decoder_description];
      v11 = v10;
      if (v10)
      {
        [v10 audioStreamBasicDescription];
      }

      else
      {
        v25 = 0;
        memset(buf, 0, sizeof(buf));
      }

      v16 = MEMORY[0x277CE1C50];
      v17 = [v5 word_timing_info];
      v18 = [v16 wordTimingInfoFromArray:v17 text:*(a1 + 32)];

      v19 = [_LTAudioData alloc];
      v20 = [v5 audio];
      v21 = [(_LTAudioData *)v19 initWithASBD:&v23 rawData:v20 wordTimingInfo:v18];

      [*(a1 + 40) cacheAudioData:v21 forKey:*(a1 + 48)];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v12 = [v5 error_code];
      v13 = [v5 error_str];
      v14 = _LTErrorFromRemoteFailure(v12, v13);

      v15 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __59___LTOnlineTranslationEngine_speak_withContext_completion___block_invoke_2_cold_1();
      }

      (*(*(a1 + 56) + 16))();
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

FTMutableSpan *__107___LTOnlineTranslationEngine__createOrUpdateBatchTranslationRequestWithParagraph_index_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(FTMutableSpan);
  v5 = [*(a1 + 32) text];
  v6 = [v3 range];
  v8 = [v5 lt_codePointsRangeFromCodeUnitsRange:{v6, v7}];
  v10 = v9;

  [(FTMutableSpan *)v4 setStart_index:v8];
  [(FTMutableSpan *)v4 setEnd_index:(v8 + v10 - 1)];
  -[FTMutableSpan setDo_not_translate:](v4, "setDo_not_translate:", [v3 shouldTranslate] ^ 1);
  v11 = [v3 metaInfoData];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = [v3 metaInfoData];
    v14 = [v12 initWithData:v13 encoding:4];
    [(FTMutableSpan *)v4 setMeta_info:v14];
  }

  return v4;
}

void __70___LTOnlineTranslationEngine_sendBatchTranslationRequestWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) request_id];
  [v6 setClientTraceIdentifier:v3];

  v4 = [*(a1 + 40) clientHeader];

  if (v4)
  {
    v5 = [*(a1 + 40) clientHeader];
    [v6 setValue:v5 forHTTPHeaderField:@"x-sequoia-client"];
  }
}

void __70___LTOnlineTranslationEngine_sendBatchTranslationRequestWithDelegate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70___LTOnlineTranslationEngine_sendBatchTranslationRequestWithDelegate___block_invoke_3;
  block[3] = &unk_2789B76F8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v11 = v5;
  v16 = v6;
  v12 = *(a1 + 48);
  v13 = v3;
  v7 = *(a1 + 56);
  v8 = *(a1 + 80);
  v14 = v7;
  v17 = v8;
  v15 = *(a1 + 64);
  v9 = v3;
  dispatch_async(v4, block);
}

uint64_t __70___LTOnlineTranslationEngine_sendBatchTranslationRequestWithDelegate___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [*(a1 + 40) request_id];
    v6 = *(a1 + 48);
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v3, OS_SIGNPOST_INTERVAL_END, v4, "TranslateParagraph", "Online: Finished translating paragraph: %{public}@ error %@", &v10, 0x16u);
  }

  [*(a1 + 56) responseReceived:*(a1 + 80)];
  if (*(a1 + 48))
  {
    v7 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 40) request_id];
      objc_claimAutoreleasedReturnValue();
      __70___LTOnlineTranslationEngine_sendBatchTranslationRequestWithDelegate___block_invoke_3_cold_1();
    }
  }

  [*(a1 + 64) setCompletionHandlerCalled:1];
  result = [*(a1 + 64) callCompletionHandlersWithError:*(a1 + 48)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __71___LTOnlineTranslationEngine_translateSentence_withContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71___LTOnlineTranslationEngine_translateSentence_withContext_completion___block_invoke_2;
    v7[3] = &unk_2789B7748;
    v5 = *(a1 + 48);
    v6 = *(a1 + 80);
    v8 = v5;
    v11 = v6;
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    [WeakRetained _createOrUpdateBatchTranslationRequestWithParagraph:v3 index:0 context:v4 completion:v7];
  }
}

void __71___LTOnlineTranslationEngine_translateSentence_withContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v8, OS_SIGNPOST_INTERVAL_END, v9, "TranslateSentence", "Online: finished translating sentence", v10, 2u);
  }

  [*(a1 + 40) sendLazy];
  (*(*(a1 + 48) + 16))();
}

void __79___LTOnlineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy__11;
    v14[4] = __Block_byref_object_dispose__11;
    v15 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __79___LTOnlineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke_235;
    v10[3] = &unk_2789B77C0;
    v10[4] = WeakRetained;
    v4 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = v14;
    v12 = *(a1 + 48);
    [v4 enumerateObjectsUsingBlock:v10];
    v5 = completionGroup;
    v6 = v3[5];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79___LTOnlineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke_3;
    v7[3] = &unk_2789B77E8;
    v8 = *(a1 + 56);
    v9 = v14;
    dispatch_group_notify(v5, v6, v7);

    _Block_object_dispose(v14, 8);
  }
}

void __79___LTOnlineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke_235(uint64_t a1, void *a2)
{
  v3 = a2;
  ++completionGroupCount;
  dispatch_group_enter(completionGroup);
  v4 = [_LTOnlineTranslationEngine translate:withContext:paragraphResult:completion:]::paragraphIndex++;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79___LTOnlineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke_2;
  v10[3] = &unk_2789B7798;
  v9 = *(a1 + 48);
  v7 = v9;
  v12 = v9;
  v11 = v3;
  v8 = v3;
  [v5 _createOrUpdateBatchTranslationRequestWithParagraph:v8 index:v4 context:v6 completion:v10];
}

void __79___LTOnlineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(*(a1 + 48) + 8);
    v8 = *(v6 + 40);
    v7 = (v6 + 40);
    if (!v8)
    {
      objc_storeStrong(v7, a3);
    }
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) identifier];
  (*(v9 + 16))(v9, v10, v11, v5);

  --completionGroupCount;
  dispatch_group_leave(completionGroup);
}

void __84___LTOnlineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84___LTOnlineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_2;
    block[3] = &unk_2789B7838;
    v8 = *(a1 + 32);
    v9 = v5;
    v10 = v3;
    dispatch_async(v6, block);
  }
}

uint64_t __84___LTOnlineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) responseReceived:0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _speechSessionCompletedWithError:v3];
}

void __73___LTOnlineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[13];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73___LTOnlineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_2;
    v7[3] = &unk_2789B7018;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __54___LTOnlineTranslationEngine_cancelSpeechTranslation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 6) cancel];
    v4 = v3[6];
    v3[6] = 0;

    if (*(a1 + 40) == 1)
    {
      v5 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __54___LTOnlineTranslationEngine_cancelSpeechTranslation___block_invoke_cold_1();
      }
    }
  }
}

void __49___LTOnlineTranslationEngine_updateServerTimeout__block_invoke_cold_1(os_log_t log, double a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_232E53000, log, OS_LOG_TYPE_DEBUG, "updateServerTimeout %.2fs", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __59___LTOnlineTranslationEngine_speak_withContext_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __70___LTOnlineTranslationEngine_sendBatchTranslationRequestWithDelegate___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_2_5();
  v2 = *v1;
  *v3 = 138543618;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2112;
  *(v3 + 14) = v2;
  OUTLINED_FUNCTION_3_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __54___LTOnlineTranslationEngine_cancelSpeechTranslation___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end