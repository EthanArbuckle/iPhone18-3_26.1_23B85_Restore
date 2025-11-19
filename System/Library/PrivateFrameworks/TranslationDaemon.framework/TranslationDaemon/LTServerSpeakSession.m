@interface LTServerSpeakSession
@end

@implementation LTServerSpeakSession

uint64_t __72___LTServerSpeakSession__playback_context_completion_audioStartHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), *(a1 + 48));
  }

  return result;
}

void __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([(os_unfair_lock_s *)WeakRetained _hasCachedCompletion])
    {
      v4 = _LTOSLogTTS();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_cold_1();
      }

      [(os_unfair_lock_s *)v3 _callCompletionAndClearIfNeeded:0 error:0];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_8;
    v14[3] = &unk_2789B6B60;
    v14[4] = v3;
    v15 = *(a1 + 56);
    os_unfair_lock_assert_not_owner(v3 + 10);
    os_unfair_lock_lock(v3 + 10);
    __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_8(v14);
    os_unfair_lock_unlock(v3 + 10);
    v5 = _LTOSLogTTS();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_cold_2();
    }

    v6 = *&v3[2]._os_unfair_lock_opaque;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_9;
    v9[3] = &unk_2789B7A28;
    v10 = *(a1 + 48);
    objc_copyWeak(&v13, (a1 + 72));
    v11 = *(a1 + 40);
    v12 = *(a1 + 64);
    [v6 speak:v7 withContext:v8 completion:v9];

    objc_destroyWeak(&v13);
  }
}

uint64_t __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_8(uint64_t a1)
{
  v2 = MEMORY[0x238398770](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  return MEMORY[0x2821F96F8]();
}

void __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_9(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_2;
  v10[3] = &unk_2789B7A00;
  objc_copyWeak(&v16, a1 + 7);
  v11 = v6;
  v12 = v5;
  v13 = a1[5];
  v14 = a1[4];
  v15 = a1[6];
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v16);
}

void __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = (a1 + 32);
    if (*(a1 + 32) || !*(a1 + 40))
    {
      v4 = _LTOSLogTTS();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_2_cold_2(v3);
      }

      [WeakRetained _callCompletionAndClearIfNeeded:0 error:*v3];
    }

    else
    {
      v5 = _LTOSLogTTS();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_2_cold_1();
      }

      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_10;
      v8[3] = &unk_2789B79D8;
      v9 = *(a1 + 56);
      objc_copyWeak(&v10, (a1 + 72));
      [WeakRetained _playback:v6 context:v7 completion:v8 audioStartHandler:*(a1 + 64)];
      objc_destroyWeak(&v10);
    }
  }
}

void __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_2_11;
  block[3] = &unk_2789B6C78;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v13);
}

void __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_2_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = _LTOSLogTTS();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Finished speaking", v4, 2u);
    }

    [WeakRetained _callCompletionAndClearIfNeeded:*(a1 + 32) error:*(a1 + 40)];
  }
}

void __63___LTServerSpeakSession__callCompletionAndClearIfNeeded_error___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 48))
  {
    v2 = MEMORY[0x238398770]();
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;
  }
}

void __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __68___LTServerSpeakSession_speak_context_completion_audioStartHandler___block_invoke_2_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end