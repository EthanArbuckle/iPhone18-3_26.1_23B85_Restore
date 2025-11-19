@interface LTTranslationServer
@end

@implementation LTTranslationServer

void __54___LTTranslationServer_preheatWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v17 = v5;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Requested preheat with context: %{public}@", buf, 0xCu);
  }

  if ([*(a1 + 32) route] == 2)
  {
    (*(*(a1 + 48) + 16))();
    v3[2](v3);
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v15 = 0;
    v8 = [v6 _engineForContext:v7 error:&v15];
    v9 = v15;
    if (v8)
    {
      [v8 preheatAsynchronously:0 withContext:*(a1 + 32)];
      v10 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        *buf = 138543362;
        v17 = v11;
        _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Preheated engine with context: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v12 = NSStringFromSelector(*(a1 + 56));
      _LTAnalyticsSendOptionalErrorEvent(v9, v12);

      v13 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __54___LTTranslationServer_preheatWithContext_completion___block_invoke_cold_1();
      }
    }

    (*(*(a1 + 48) + 16))();
    v3[2](v3);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __65___LTTranslationServer_translateSentence_withContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) registerActivity:{objc_msgSend(*(a1 + 40), "taskHint")}];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = 0;
  v6 = [v4 _engineForContext:v5 error:&v16];
  v7 = v16;
  if (v6)
  {
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65___LTTranslationServer_translateSentence_withContext_completion___block_invoke_22;
    v12[3] = &unk_2789B7E70;
    v15[1] = *(a1 + 72);
    objc_copyWeak(v15, (a1 + 64));
    v13 = *(a1 + 56);
    v14 = v3;
    [v6 translateSentence:v8 withContext:v9 completion:v12];

    objc_destroyWeak(v15);
  }

  else
  {
    v10 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __65___LTTranslationServer_translateSentence_withContext_completion___block_invoke_cold_1();
    }

    v11 = NSStringFromSelector(*(a1 + 72));
    _LTAnalyticsSendOptionalErrorEvent(v7, v11);

    (*(*(a1 + 56) + 16))();
    v3[2](v3);
  }
}

uint64_t __65___LTTranslationServer_translateSentence_withContext_completion___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 56);
  v6 = a3;
  v7 = a2;
  v8 = NSStringFromSelector(v5);
  _LTAnalyticsSendOptionalErrorEvent(v6, v8);

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateOfflineEngineIdleTimer];

  (*(*(a1 + 32) + 16))();
  v10 = *(*(a1 + 40) + 16);

  return v10();
}

void __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) count];
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v7 = v5;
    *buf = 134218240;
    v27 = v4;
    v28 = 2048;
    v29 = [v6 route];
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Translating %zu paragraphs for route: %ld", buf, 0x16u);
  }

  [*(a1 + 48) registerActivity:{objc_msgSend(*(a1 + 40), "taskHint")}];
  v8 = *(a1 + 48);
  v9 = *(a1 + 40);
  v25 = 0;
  v10 = [v8 _engineForContext:v9 error:&v25];
  v11 = v25;
  if (v10)
  {
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = *(a1 + 64);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke_24;
    v20[3] = &unk_2789B7EC0;
    objc_copyWeak(v24, (a1 + 72));
    v24[1] = v4;
    v15 = *(a1 + 40);
    v16 = *(a1 + 80);
    v21 = v15;
    v24[2] = v16;
    v22 = *(a1 + 56);
    v23 = v3;
    [v10 translate:v13 withContext:v12 paragraphResult:v14 completion:v20];

    objc_destroyWeak(v24);
  }

  else
  {
    v17 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke_cold_1();
    }

    v18 = NSStringFromSelector(*(a1 + 80));
    _LTAnalyticsSendOptionalErrorEvent(v11, v18);

    (*(*(a1 + 56) + 16))();
    v3[2](v3);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke_24(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = _LTOSLogTranslationEngine();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke_24_cold_1(a1);
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 64);
        v14 = 134217984;
        v15 = v7;
        _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Finished translating %zu paragraphs", &v14, 0xCu);
      }

      v8 = objc_alloc(MEMORY[0x277CE1B50]);
      v9 = [*(a1 + 32) logIdentifier];
      v10 = [v8 initWithType:2 invocationId:v9];

      [WeakRetained[10] selfLoggingEventWithData:v10];
    }

    v11 = NSStringFromSelector(*(a1 + 72));
    _LTAnalyticsSendOptionalErrorEvent(v3, v11);

    v12 = objc_loadWeakRetained((a1 + 56));
    [v12 _updateOfflineEngineIdleTimer];

    (*(*(a1 + 40) + 16))();
    (*(*(a1 + 48) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __71___LTTranslationServer_translateStreamingInput_withContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _prepareStabilizerForContext:*(a1 + 32)];
    [v3 _cleanUpForContextIfNeeded:*(a1 + 32)];
    v5 = v3[3];
    v6 = [*(a1 + 32) sessionID];
    v7 = [*(a1 + 32) route];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71___LTTranslationServer_translateStreamingInput_withContext_completion___block_invoke_2;
    v12[3] = &unk_2789B7F38;
    objc_copyWeak(v17, (a1 + 56));
    v8 = *(a1 + 32);
    v9 = *(a1 + 64);
    v13 = v8;
    v17[1] = v9;
    v16 = *(a1 + 48);
    v14 = *(a1 + 40);
    v10 = v4;
    v15 = v10;
    v11 = [v5 scheduleOperationWithGroupID:v6 route:v7 block:v12];

    objc_destroyWeak(v17);
  }
}

void __71___LTTranslationServer_translateStreamingInput_withContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [WeakRetained registerActivity:{objc_msgSend(*(a1 + 32), "taskHint")}];
    v5 = *(a1 + 32);
    v17 = 0;
    v6 = [WeakRetained _engineForContext:v5 error:&v17];
    v7 = v17;
    if (v6)
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = *(a1 + 48);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __71___LTTranslationServer_translateStreamingInput_withContext_completion___block_invoke_27;
      v13[3] = &unk_2789B7F10;
      v16[1] = *(a1 + 72);
      objc_copyWeak(v16, (a1 + 64));
      v14 = *(a1 + 56);
      v15 = v3;
      [v6 translateStreamingInput:v8 context:v9 stabilizer:v10 completion:v13];

      objc_destroyWeak(v16);
    }

    else
    {
      v11 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __65___LTTranslationServer_translateSentence_withContext_completion___block_invoke_cold_1();
      }

      v12 = NSStringFromSelector(*(a1 + 72));
      _LTAnalyticsSendOptionalErrorEvent(v7, v12);

      (*(*(a1 + 56) + 16))();
      v3[2](v3);
    }
  }
}

uint64_t __71___LTTranslationServer_translateStreamingInput_withContext_completion___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 56);
  v6 = a3;
  v7 = a2;
  v8 = NSStringFromSelector(v5);
  _LTAnalyticsSendOptionalErrorEvent(v6, v8);

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateOfflineEngineIdleTimer];

  (*(*(a1 + 32) + 16))();
  v10 = *(*(a1 + 40) + 16);

  return v10();
}

void __65___LTTranslationServer_textStreamingConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [_LTDConfigurationService textStreamingConfigurationWithError:0];
  v3 = *(a1 + 32);
  v11 = v2;
  if (v2)
  {
    v4 = objc_alloc(MEMORY[0x277CE1BE0]);
    [v11 minTimeBetweenTranslations];
    v6 = v5;
    [v11 maxTimeBetweenTranslations];
    v8 = v7;
    [v11 userIdleTime];
    v10 = [v4 initWithMinTimeBetweenTranslations:objc_msgSend(v11 maxTimeBetweenTranslations:"maxPartialTranslationAttempts") userIdleTime:objc_msgSend(v11 maxPartialTranslationAttempts:"minNumberOfCharactersForTranslation") minNumberOfCharactersForTranslation:{v6, v8, v9}];
    (*(v3 + 16))(v3, v10);
  }

  else
  {
    (*(v3 + 16))(v3, 0);
  }
}

void __78___LTTranslationServer_startTextToSpeechTranslationWithContext_text_delegate___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelExistingSessions];
    [v5 _removePendingSpeechSessionID:*(a1 + 32)];
    [v5 registerActivity:{objc_msgSend(*(a1 + 40), "taskHint")}];
    v6 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = [v7 route];
      v10 = [*(a1 + 40) autodetectLanguage];
      *buf = 134218240;
      v27 = v9;
      v28 = 1024;
      v29 = v10;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Handling text translation request for route: %zd (autodetect: %{BOOL}i)", buf, 0x12u);
    }

    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v25 = 0;
    v13 = [v11 _engineForContext:v12 error:&v25];
    v14 = v25;
    if (v13)
    {
      v15 = [[_LTServerSpeechSession alloc] initWithEngine:v13 delegate:*(a1 + 56) selfLoggingManager:v5[10]];
      [(_LTServerSpeechSession *)v15 setSessionID:*(a1 + 64)];
      objc_storeStrong(v5 + 5, v15);
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __78___LTTranslationServer_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_35;
      v22 = &unk_2789B7F88;
      v24[1] = *(a1 + 88);
      objc_copyWeak(v24, (a1 + 80));
      v23 = v3;
      [(_LTServerSpeechSession *)v15 setCompletionHandler:&v19];
      [(_LTServerSpeechSession *)v15 startTextToSpeechTranslationWithContext:*(a1 + 40) text:*(a1 + 72), v19, v20, v21, v22];

      objc_destroyWeak(v24);
    }

    else
    {
      v16 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __78___LTTranslationServer_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_cold_1();
      }

      v17 = NSStringFromSelector(*(a1 + 88));
      _LTAnalyticsSendOptionalErrorEvent(v14, v17);

      [*(a1 + 56) translationDidFinishWithError:v14];
      v3[2](v3);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __78___LTTranslationServer_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = NSStringFromSelector(v3);
  _LTAnalyticsSendOptionalErrorEvent(v4, v5);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateOfflineEngineIdleTimer];

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 _speechSessionCompleted];

  v8 = *(*(a1 + 32) + 16);

  return v8();
}

void __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelExistingSessions];
    [v5 _removePendingSpeechSessionID:*(a1 + 32)];
    [v5 registerActivity:{objc_msgSend(*(a1 + 40), "taskHint")}];
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v23 = 0;
    v8 = [v6 _engineForContext:v7 error:&v23];
    v9 = v23;
    if (v8)
    {
      v10 = [[_LTServerSpeakSession alloc] initWithEngine:v8];
      v11 = v5[6];
      v5[6] = v10;

      v12 = v5[6];
      v13 = *(a1 + 56);
      v14 = *(a1 + 40);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke_37;
      v19[3] = &unk_2789B7FD8;
      v22[1] = *(a1 + 88);
      objc_copyWeak(v22, (a1 + 80));
      v20 = *(a1 + 72);
      v21 = v3;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke_39;
      v17[3] = &unk_2789B8000;
      v18 = *(a1 + 64);
      [v12 speak:v13 context:v14 completion:v19 audioStartHandler:v17];

      objc_destroyWeak(v22);
    }

    else
    {
      v15 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke_cold_1();
      }

      v16 = NSStringFromSelector(*(a1 + 88));
      _LTAnalyticsSendOptionalErrorEvent(v9, v16);

      (*(*(a1 + 72) + 16))();
      v3[2](v3);
    }
  }
}

void __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _LTOSLogTTS();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke_37_cold_1();
    }

    v8 = NSStringFromSelector(*(a1 + 56));
    _LTAnalyticsSendOptionalErrorEvent(v6, v8);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateOfflineEngineIdleTimer];

  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

void __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke_39(uint64_t a1, void *a2, double a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v6 = *(a1 + 32);
    v7 = [v8 wordTimingInfo];
    [v6 ttsAudioStarted:v7 duration:a3];
  }
}

void __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelExistingSessions];
    [v5 _removePendingSpeechSessionID:*(a1 + 32)];
    v6 = (a1 + 40);
    [v5 registerActivity:{objc_msgSend(*(a1 + 40), "taskHint")}];
    v7 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *v6;
      v9 = v7;
      v10 = [v8 route];
      v11 = [*v6 autodetectLanguage];
      *buf = 134218240;
      v39 = v10;
      v40 = 1024;
      v41 = v11;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "Handling speech translation request for route: %zd (autodetect: %{BOOL}i)", buf, 0x12u);
    }

    v12 = [*(a1 + 48) _modalitiesPerLocale];
    v13 = [*(a1 + 40) localePair];
    v14 = [v13 sourceLocale];
    if ([v12 locale:v14 supportsModality:1])
    {
      if (([*v6 autodetectLanguage] & 1) == 0)
      {

LABEL_13:
        v23 = *v6;
        v37 = 0;
        v24 = [v5 _engineForContext:v23 error:&v37];
        v25 = v37;
        v26 = _LTOSLogTranslationEngine();
        v27 = v26;
        if (v24)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_232E53000, v27, OS_LOG_TYPE_INFO, "Start speech translation session", buf, 2u);
          }

          v28 = [[_LTServerSpeechSession alloc] initWithEngine:v24 delegate:*(a1 + 56) selfLoggingManager:v5[10]];
          [(_LTServerSpeechSession *)v28 setSessionID:*(a1 + 64)];
          objc_storeStrong(v5 + 5, v28);
          v31 = MEMORY[0x277D85DD0];
          v32 = 3221225472;
          v33 = __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke_43;
          v34 = &unk_2789B7F88;
          v36[1] = *(a1 + 80);
          objc_copyWeak(v36, (a1 + 72));
          v35 = v3;
          [(_LTServerSpeechSession *)v28 setCompletionHandler:&v31];
          [(_LTServerSpeechSession *)v28 startSpeechTranslationWithContext:*v6, v31, v32, v33, v34];

          objc_destroyWeak(v36);
        }

        else
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke_cold_2();
          }

          v29 = NSStringFromSelector(*(a1 + 80));
          _LTAnalyticsSendOptionalErrorEvent(v25, v29);

          [*(a1 + 56) translationDidFinishWithError:v25];
          v3[2](v3);
        }

LABEL_21:
        goto LABEL_22;
      }

      v15 = [*v6 localePair];
      v16 = [v15 targetLocale];
      v17 = [v12 locale:v16 supportsModality:1];

      if (v17)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v18 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke_cold_1((a1 + 40), v18);
    }

    v19 = *(a1 + 56);
    v20 = MEMORY[0x277CCA9B8];
    v21 = [*(a1 + 40) localePair];
    v22 = [v20 lt_unsupporedLocalePairError:v21];
    [v19 translationDidFinishWithError:v22];

    v3[2](v3);
    goto LABEL_21;
  }

LABEL_22:

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke_43(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = NSStringFromSelector(v3);
  _LTAnalyticsSendOptionalErrorEvent(v4, v5);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateOfflineEngineIdleTimer];

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 _speechSessionCompleted];

  v8 = *(*(a1 + 32) + 16);

  return v8();
}

void __43___LTTranslationServer_cancelSpeechSession__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[5] cancel];
    v2 = v3[5];
    v3[5] = 0;

    WeakRetained = v3;
  }
}

void __50___LTTranslationServer_cancelSpeechSessionWithID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __50___LTTranslationServer_cancelSpeechSessionWithID___block_invoke_cold_1(a1, WeakRetained, v3);
    }

    v4 = [WeakRetained[5] sessionID];
    v5 = [v4 isEqual:*(a1 + 32)];

    if (v5)
    {
      [WeakRetained[5] cancel];
      v6 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Resetting session", v9, 2u);
      }

      v7 = WeakRetained[5];
      WeakRetained[5] = 0;
    }

    else
    {
      v8 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __50___LTTranslationServer_cancelSpeechSessionWithID___block_invoke_cold_2();
      }
    }
  }
}

void __47___LTTranslationServer__speechSessionCompleted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[5];
    WeakRetained[5] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void __43___LTTranslationServer_addSpeechAudioData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __43___LTTranslationServer_addSpeechAudioData___block_invoke_cold_1();
    }

    [WeakRetained[5] addSpeechAudioData:*(a1 + 32)];
  }
}

void __32___LTTranslationServer_endAudio__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __32___LTTranslationServer_endAudio__block_invoke_cold_1();
    }

    [WeakRetained[5] endAudio];
  }
}

void __71___LTTranslationServer_autoDetectSpeechUnsupportedPairsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _LTPreferencesGetLanguageDetectorUnsupportedPairs();
  (*(v1 + 16))(v1, v2);
}

void __58___LTTranslationServer_modalitiesPerLocaleWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _modalitiesPerLocale];
  (*(v1 + 16))(v1, v2);
}

uint64_t __88___LTTranslationServer__markPendingSpeechSessionIfNeededWithContext_effectiveSessionID___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogSpeech();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "Marking a speech session as pending: %{public}@", &v6, 0xCu);
  }

  result = [*(*(a1 + 40) + 56) addObject:*(a1 + 32)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __37___LTTranslationServer__logStateSoon__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained onDeviceModeEnabled:&__block_literal_global_34];
    WeakRetained = v2;
  }
}

void __37___LTTranslationServer__logStateSoon__block_invoke_2(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogDeviceState();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEFAULT, "On-device mode enabled: %{BOOL}i", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __44___LTTranslationServer_startLoggingRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[8] startLoggingRequest:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __44___LTTranslationServer_cleanupOfflineEngine__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void __31___LTTranslationServer_cleanup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _LTOSLogSpeech();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "Client requested a cleanup of ongoing speech sessions", v3, 2u);
    }

    [WeakRetained cancelExistingSessions];
    [WeakRetained _cancelPendingSpeechOperations];
  }
}

void __61___LTTranslationServer_attemptToCancelRequestsWithSessionID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
    v5 = WeakRetained;
    v4 = [*(a1 + 32) UUIDString];
    [v3 cancelOperationsWithGroupID:v4];

    WeakRetained = v5;
  }
}

void __59___LTTranslationServer_shouldPresentSystemFirstUseConsent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v3 = *(a1 + 32);
  v5 = v2;
  if ([v2 lt_isOnDeviceOnly])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v5 lt_hasAcceptedFirstUseConsent] ^ 1;
  }

  (*(v3 + 16))(v3, v4);
}

void __51___LTTranslationServer_languageForText_completion___block_invoke(uint64_t a1)
{
  v4 = objc_alloc_init(_LTTextLanguageDetector);
  v2 = _LTPreferencesSupportedLocales(2);
  [(_LTTextLanguageDetector *)v4 setAvailableLocales:v2];

  v3 = [(_LTTextLanguageDetector *)v4 detectionForString:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __72___LTTranslationServer_languagesForText_usingModel_strategy_completion___block_invoke(void *a1)
{
  v2 = [[_LTTextLanguageDetector alloc] initWithModel:a1[6]];
  v3 = _LTPreferencesSupportedLocales(2);
  [(_LTTextLanguageDetector *)v2 setAvailableLocales:v3];

  v4 = [(_LTTextLanguageDetector *)v2 detectionForStrings:a1[4] strategy:a1[7]];
  v5 = _LTOSLogXPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __72___LTTranslationServer_languagesForText_usingModel_strategy_completion___block_invoke_cold_1(v5);
  }

  (*(a1[5] + 16))();
}

void __47___LTTranslationServer__offlineLanguageStatus___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LTOfflineAssetManager);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47___LTTranslationServer__offlineLanguageStatus___block_invoke_2;
  v3[3] = &unk_2789B5DC0;
  v4 = *(a1 + 32);
  [(_LTOfflineAssetManager *)v2 offlineLanguageStatus:v3];
}

void __79___LTTranslationServer__downloadAssetForLanguagePair_userInitiated_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LTOfflineAssetManager);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79___LTTranslationServer__downloadAssetForLanguagePair_userInitiated_completion___block_invoke_2;
  v7[3] = &unk_2789B80C8;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  [(_LTOfflineAssetManager *)v2 downloadAssetsForLanguagePair:v3 userInitiated:v4 completion:v7];
}

void __79___LTTranslationServer__downloadAssetForLanguagePair_userInitiated_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  v4 = NSStringFromSelector(v3);
  _LTAnalyticsSendOptionalErrorEvent(v5, v4);

  (*(*(a1 + 32) + 16))();
}

void __76___LTTranslationServer__purgeAssetForLanguagePair_userInitiated_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LTOfflineAssetManager);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76___LTTranslationServer__purgeAssetForLanguagePair_userInitiated_completion___block_invoke_2;
  v7[3] = &unk_2789B80C8;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  [(_LTOfflineAssetManager *)v2 purgeAssetForLanguagePair:v3 userInitiated:v4 completion:v7];
}

void __76___LTTranslationServer__purgeAssetForLanguagePair_userInitiated_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  v4 = NSStringFromSelector(v3);
  _LTAnalyticsSendOptionalErrorEvent(v5, v4);

  (*(*(a1 + 32) + 16))();
}

void __66___LTTranslationServer__purgeAllAssetsExcludingConfig_completion___block_invoke(uint64_t a1)
{
  [_LTDLanguageAssetService setSelectedLocales:MEMORY[0x277CBEBF8]];
  v2 = objc_alloc_init(_LTOfflineAssetManager);
  v3 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66___LTTranslationServer__purgeAllAssetsExcludingConfig_completion___block_invoke_2;
  v6[3] = &unk_2789B80C8;
  v5 = *(a1 + 32);
  v4 = v5;
  v7 = v5;
  [(_LTOfflineAssetManager *)v2 purgeAllAssetsExcludingConfig:v3 completion:v6];
}

void __66___LTTranslationServer__purgeAllAssetsExcludingConfig_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  v4 = NSStringFromSelector(v3);
  _LTAnalyticsSendOptionalErrorEvent(v5, v4);

  (*(*(a1 + 32) + 16))();
}

void __41___LTTranslationServer__updateAllAssets___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LTOfflineAssetManager);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41___LTTranslationServer__updateAllAssets___block_invoke_2;
  v5[3] = &unk_2789B80C8;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [(_LTOfflineAssetManager *)v2 updateAllAssets:v5];
}

void __41___LTTranslationServer__updateAllAssets___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  v4 = NSStringFromSelector(v3);
  _LTAnalyticsSendOptionalErrorEvent(v5, v4);

  (*(*(a1 + 32) + 16))();
}

void __41___LTTranslationServer_installedLocales___block_invoke(uint64_t a1)
{
  v2 = +[_LTDLanguageAssetService selectedLocales];
  (*(*(a1 + 32) + 16))();
}

void __53___LTTranslationServer_ensureSelectedLocalesDownload__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    +[_LTDLanguageAssetService syncInstalledLocalesOnAssetUpdate];
    WeakRetained = v2;
  }
}

void __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke_2;
  v2[3] = &unk_2789B8160;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  [_LTDLanguageAssetService assetsWithOptions:64 completion:v2];

  objc_destroyWeak(&v4);
}

void __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke_3;
    block[3] = &unk_2789B61A8;
    v11 = v6;
    v13 = *(a1 + 32);
    v12 = v5;
    dispatch_async(v9, block);
  }
}

void __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _LTOSLogAssets();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke_3_cold_1(v2);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = [*(a1 + 40) _ltCompactMap:&__block_literal_global_56];
    (*(*(a1 + 48) + 16))();
  }
}

void __53___LTTranslationServer_startInstallRequest_delegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) locales];
  v3 = [*(a1 + 32) useCellular];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53___LTTranslationServer_startInstallRequest_delegate___block_invoke_2;
  v6[3] = &unk_2789B54B8;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53___LTTranslationServer_startInstallRequest_delegate___block_invoke_3;
  v4[3] = &unk_2789B54E0;
  v5 = *(a1 + 40);
  [_LTDLanguageAssetService setInstalledLocales:v2 useCellular:v3 progress:v6 completion:v4];
}

void __38___LTTranslationServer__getAssetSize___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LTOfflineAssetManager);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38___LTTranslationServer__getAssetSize___block_invoke_2;
  v5[3] = &unk_2789B8188;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [(_LTOfflineAssetManager *)v2 assetSize:v5];
}

void __38___LTTranslationServer__getAssetSize___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v8 = a2;
  v7 = NSStringFromSelector(v5);
  _LTAnalyticsSendOptionalErrorEvent(v6, v7);

  (*(*(a1 + 32) + 16))();
}

void __63___LTTranslationServer_availableLocalePairsForTask_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _LTPreferencesSupportedLocalePairsForTask(*(a1 + 40));
  (*(v1 + 16))(v1, v2);
}

void __77___LTTranslationServer_additionalLikelyPreferredLocalesForLocale_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = _LTPreferencesAdditionalLikelyPreferredLocales(*(a1 + 32));
  (*(v1 + 16))(v1, v2);
}

void __67___LTTranslationServer_configInfoForLocale_otherLocale_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = _LTPreferencesConfigInfoForLocale(*(a1 + 32), *(a1 + 40));
  (*(v1 + 16))(v1, v2);
}

void __38___LTTranslationServer__updateHotfix___block_invoke(uint64_t a1)
{
  v2 = +[_LTHotfixManager shared];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38___LTTranslationServer__updateHotfix___block_invoke_2;
  v3[3] = &unk_2789B5D20;
  v4 = *(a1 + 32);
  [v2 updateHotfix:v3];
}

void __38___LTTranslationServer__deleteHotfix___block_invoke(uint64_t a1)
{
  v2 = +[_LTHotfixManager shared];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38___LTTranslationServer__deleteHotfix___block_invoke_2;
  v3[3] = &unk_2789B5D20;
  v4 = *(a1 + 32);
  [v2 deleteHotfix:v3];
}

uint64_t __44___LTTranslationServer_onDeviceModeEnabled___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  [v2 lt_isOnDeviceOnly];

  v3 = _LTOSLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __44___LTTranslationServer_onDeviceModeEnabled___block_invoke_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __46___LTTranslationServer_onDeviceModeSupported___block_invoke(uint64_t a1)
{
  +[_LTDLanguageAssetService onDeviceModeSupported];
  v2 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __46___LTTranslationServer_onDeviceModeSupported___block_invoke_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

void __49___LTTranslationServer_selfLoggingEventWithData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[10] selfLoggingEventWithData:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __78___LTTranslationServer_selfLoggingLanguageIdentificationCompletedWithLIDData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[10] selfLoggingLanguageIdentificationCompletedWithLIDData:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __61___LTTranslationServer_selfLoggingInvocationCancelledForIDs___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          v9 = objc_alloc(MEMORY[0x277CE1B50]);
          v10 = [v9 initWithType:4 invocationId:{v8, v12}];
          [WeakRetained[10] selfLoggingEventWithData:v10];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __67___LTTranslationServer_selfLoggingInvocationDidError_invocationId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [objc_alloc(MEMORY[0x277CE1B50]) initWithType:3 invocationId:*(a1 + 32)];
    [v3 setInvocationEndedError:*(a1 + 40)];
    [v4[10] selfLoggingEventWithData:v3];

    WeakRetained = v4;
  }
}

void __49___LTTranslationServer_updateOVADStreamingState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[5] updateOVADStreamingState:{objc_msgSend(*(a1 + 32), "BOOLValue")}];
    WeakRetained = v3;
  }
}

void __49___LTTranslationServer_scheduleAssetCleanupWork___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49___LTTranslationServer_scheduleAssetCleanupWork___block_invoke_2;
  v6[3] = &unk_2789B8200;
  objc_copyWeak(&v8, (a1 + 40));
  v5 = v3;
  v7 = v5;
  (*(v4 + 16))(v4, v6);

  objc_destroyWeak(&v8);
}

void __49___LTTranslationServer_scheduleAssetCleanupWork___block_invoke_2(uint64_t a1, char a2)
{
  v4 = _LTOSLogAssets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Finished asset cleanup actions after a download completed", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49___LTTranslationServer_scheduleAssetCleanupWork___block_invoke_60;
    block[3] = &unk_2789B81D8;
    v10 = a2;
    block[4] = WeakRetained;
    v9 = *(a1 + 32);
    dispatch_async(v7, block);
  }
}

uint64_t __49___LTTranslationServer_scheduleAssetCleanupWork___block_invoke_60(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v4 = _LTOSLogAssets();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      return (*(*(a1 + 40) + 16))(*(a1 + 40));
    }

    v12 = 0;
    v7 = "No further cleanup required";
    v8 = &v12;
LABEL_10:
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, v7, v8, 2u);
    return (*(*(a1 + 40) + 16))(*(a1 + 40));
  }

  v2 = *(*(a1 + 32) + 8);
  v3 = _LTOSLogTranslationEngine();
  v4 = v3;
  if (!v2)
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      return (*(*(a1 + 40) + 16))(*(a1 + 40));
    }

    v10 = 0;
    v7 = "No need to clear offline engine after downloads finished because there wasn't a cached engine";
    v8 = &v10;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_DEFAULT, "Clearing offline translation engine since assets may have changed and files may have changed locations", buf, 2u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = 0;

  return (*(*(a1 + 40) + 16))(*(a1 + 40));
}

void __54___LTTranslationServer_preheatWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to preheat engine: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65___LTTranslationServer_translateSentence_withContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to create text translation engine: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to create paragraph text translation engine: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke_24_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 64);
  OUTLINED_FUNCTION_3();
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_232E53000, v3, OS_LOG_TYPE_ERROR, "Failed to translate %zu paragraphs: %@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __78___LTTranslationServer_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to create text-to-speech translation engine: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to create translation engine for speaking: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke_37_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed TTS request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke_cold_1(void **a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 localePair];
  v5 = [v4 description];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(&dword_232E53000, v3, OS_LOG_TYPE_ERROR, "Speech translation request for %{public}@ is not supported", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to create speech translation engine: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50___LTTranslationServer_cancelSpeechSessionWithID___block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a2 + 40);
  v6 = a3;
  v13 = [OUTLINED_FUNCTION_7() sessionID];
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void __50___LTTranslationServer_cancelSpeechSessionWithID___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __43___LTTranslationServer_addSpeechAudioData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __32___LTTranslationServer_endAudio__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __72___LTTranslationServer_languagesForText_usingModel_strategy_completion___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() description];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke_3_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v2, v3, "Failed to lookup installed languages: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __44___LTTranslationServer_onDeviceModeEnabled___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __46___LTTranslationServer_onDeviceModeSupported___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end