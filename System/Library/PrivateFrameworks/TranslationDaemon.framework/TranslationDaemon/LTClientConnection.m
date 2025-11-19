@interface LTClientConnection
@end

@implementation LTClientConnection

void __57___LTClientConnection_initWithConnection_server_trusted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained cleanupOnDisconnect];
    WeakRetained = v2;
  }
}

uint64_t __57___LTClientConnection_initWithConnection_server_trusted___block_invoke_2(uint64_t a1)
{
  v2 = _LTOSLogXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __57___LTClientConnection_initWithConnection_server_trusted___block_invoke_2_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

void __56___LTClientConnection_translate_withContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v12 = v6;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

void __56___LTClientConnection_translate_withContext_completion___block_invoke_2(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3 && !*(*(a1[5] + 8) + 40))
  {
    v8 = _LTOSLogTranslationEngine();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(a1[6] + 8) + 40);
      v11 = 138739971;
      v12 = v9;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "_LTTranslationService completed successfully for paragraphResult %{sensitive}@", &v11, 0xCu);
    }

    v5 = a1[4];
    v6 = *(*(a1[6] + 8) + 40);
    goto LABEL_10;
  }

  v4 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56___LTClientConnection_translate_withContext_completion___block_invoke_2_cold_1(a1, v3, v4);
  }

  v5 = a1[4];
  v6 = *(*(a1[6] + 8) + 40);
  v7 = v3;
  if (!v3)
  {
LABEL_10:
    v7 = *(*(a1[5] + 8) + 40);
  }

  (*(v5 + 16))(v5, v6, v7);

  v10 = *MEMORY[0x277D85DE8];
}

void __80___LTClientConnection_startLanguageStatusChangeObservation_taskHint_completion___block_invoke_2(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  (*(a1[6] + 16))();
  v2 = _LTOSLogAssetObservation();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[7];
    v5 = v2;
    v6 = _LTTranslationTaskHintString();
    v7 = a1[5];
    v9 = 138543874;
    v10 = v3;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "Stopping language observations for client %{public}@; taskHint: %{public}@; identifier: %{public}@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __56___LTClientConnection_translate_withContext_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v6 = 138740483;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  v10 = 2112;
  v11 = v4;
  _os_log_error_impl(&dword_232E53000, log, OS_LOG_TYPE_ERROR, "_LTTranslationService for paragraphResult %{sensitive}@; got error: %@; paragraphError: %@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end