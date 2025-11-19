@interface STSELFLoggingClient
@end

@implementation STSELFLoggingClient

void __57___STSELFLoggingClient_registerClientList_configuration___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x277CE1B38]);
    v4 = [*(a1 + 32) sourceLocale];
    v5 = [*(a1 + 32) targetLocale];
    v6 = [v3 initWithSourceLocale:v4 targetLocale:v5];

    v7 = *(*(a1 + 40) + 8);
    if (v7)
    {
      v8 = [v7 localePair];
      v9 = [v8 isBidirectionalEqual:v6];

      v10 = _LTOSLogSTInstrumentation();
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __57___STSELFLoggingClient_registerClientList_configuration___block_invoke_cold_2(v11);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __57___STSELFLoggingClient_registerClientList_configuration___block_invoke_cold_1(v11);
      }
    }

    else
    {
      v12 = _LTOSLogSTInstrumentation();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = v12;
        v14 = [v6 sourceLocale];
        v15 = [v14 _ltLocaleIdentifier];
        v16 = [v6 targetLocale];
        v17 = [v16 _ltLocaleIdentifier];
        v22 = 138543618;
        v23 = v15;
        v24 = 2114;
        v25 = v17;
        _os_log_impl(&dword_26B5BC000, v13, OS_LOG_TYPE_INFO, "Creating new logging session with languages: %{public}@ - %{public}@", &v22, 0x16u);
      }

      v18 = [[_STSELFLoggingSession alloc] initWithLocalePair:v6];
      v19 = *(a1 + 40);
      v20 = *(v19 + 8);
      *(v19 + 8) = v18;

      [*(*(a1 + 40) + 8) setTtsPlaybackEnabled:{objc_msgSend(*(a1 + 32), "omitTranslatedAudio") ^ 1}];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __45___STSELFLoggingClient__endSessionWithError___block_invoke(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 48)))
  {
    v2 = *(*(a1 + 32) + 8);
    if (v2)
    {
      [v2 logSessionEnd:*(a1 + 40)];
      v3 = *(a1 + 32);
      v4 = *(v3 + 8);
      *(v3 + 8) = 0;
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __43___STSELFLoggingClient_translationDidStart__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(*(a1 + 32) + 8) logSessionStart];
    WeakRetained = v3;
  }
}

@end