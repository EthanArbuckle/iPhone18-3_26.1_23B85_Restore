@interface LTDTTSAssetService
@end

@implementation LTDTTSAssetService

uint64_t __29___LTDTTSAssetService__queue__block_invoke()
{
  _queue__queue_1 = dispatch_queue_create("com.apple.translationd.TTSAssetService", 0);

  return MEMORY[0x2821F96F8]();
}

void __43___LTDTTSAssetService_setSubscribedVoices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _LTOSLogAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43___LTDTTSAssetService_setSubscribedVoices___block_invoke_cold_1();
    }

    [*(a1 + 32) setSiriTTSSession:0];
  }
}

void __41___LTDTTSAssetService__subscribeToVoice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _LTOSLogAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43___LTDTTSAssetService_setSubscribedVoices___block_invoke_cold_1();
    }

    [*(a1 + 32) setSiriTTSSession:0];
  }
}

void __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];

  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = [*(a1 + 32) provider];
    if ([v4 locallyAvailable])
    {
    }

    else
    {
      v9 = [*(a1 + 32) provider];
      v10 = [v9 downloading];

      if (!v10)
      {
LABEL_17:
        v17 = *(a1 + 56);
        v18 = [*(a1 + 32) provider];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_53;
        v26[3] = &unk_2789B67F8;
        v29 = *(a1 + 64);
        v27 = *(a1 + 32);
        v28 = *(a1 + 48);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_57;
        v21[3] = &unk_2789B6820;
        v25 = *(a1 + 64);
        v22 = *(a1 + 32);
        v23 = *(a1 + 48);
        v24 = *(a1 + 40);
        [v18 downloadWithOptions:v17 & 1 progress:v26 then:v21];

        return;
      }
    }

    v11 = [*(a1 + 32) provider];
    if ([v11 locallyAvailable])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = [*(a1 + 32) progress];
    [v13 setOfflineState:v12];

    v14 = *(a1 + 48);
    if (v14)
    {
      (*(v14 + 16))(v14, *(a1 + 32));
    }

    v15 = [*(a1 + 32) provider];
    v16 = [v15 locallyAvailable];

    if ((v16 & 1) == 0 && (v3 & 0x80) != 0)
    {
      goto LABEL_17;
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = *(v19 + 16);

      v20();
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"TTS asset not found for %@", *(a1 + 32)];
    v6 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:16 description:v5 userInfo:0];
    v7 = _LTOSLogAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_cold_1();
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v6);
    }
  }
}

void __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_53(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1[6] _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2;
  block[3] = &unk_2789B67D0;
  v12 = a2;
  v10 = a1[4];
  v13 = a3;
  v7 = a1[5];
  v8 = a1[6];
  v11 = v7;
  v14 = v8;
  dispatch_async(v6, block);
}

void __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) >= 2)
  {
    v2 = [*(a1 + 32) progress];
    v3 = [v2 updateTotalUnitCount:*(a1 + 56) completedUnitCount:*(a1 + 48)];

    if (v3)
    {
      v4 = _LTOSLogAssets();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v6 = v4;
        v7 = [v5 progress];
        *buf = 138543362;
        v21 = v7;
        _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "SiriTTS progress for %{public}@", buf, 0xCu);
      }
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, *(a1 + 32));
    }
  }

  if (*(a1 + 40))
  {
    v9 = [*(a1 + 32) progress];
    v10 = [v9 isCancelled];

    if (v10)
    {
      v11 = _LTOSLogAssets();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        *buf = 138543362;
        v21 = v12;
        _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "Cancelling download for %{public}@", buf, 0xCu);
      }

      v13 = [*(a1 + 32) provider];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_54;
      v17[3] = &unk_2789B67A8;
      v14 = *(a1 + 32);
      v15 = *(a1 + 64);
      v18 = v14;
      v19 = v15;
      [v13 cancelDownloadingThen:v17];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_54(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "Cancelled download for %{public}@", &v6, 0xCu);
  }

  result = [*(a1 + 40) purgeAsset:*(a1 + 32) completion:0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_57(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[7] _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2_58;
  block[3] = &unk_2789B6650;
  v12 = v3;
  v5 = a1[4];
  v6 = a1[7];
  v7 = a1[5];
  *&v8 = a1[6];
  *(&v8 + 1) = v6;
  *&v9 = v5;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  dispatch_async(v4, block);
}

void __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2_58(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _LTOSLogAssets();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v18 = v3;
      _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "SiriTTS downloaded %@", buf, 0xCu);
    }

    v4 = [*(a1 + 40) progress];
    v5 = [v4 isFinished];

    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 40) progress];
      [v6 setOfflineState:2];
    }

    v7 = *(a1 + 64);
    v8 = [*(a1 + 40) provider];
    v9 = [v7 _siriVoiceForTTSAsset:v8];

    if (v9)
    {
      [*(a1 + 64) _subscribeToVoice:v9];
      v10 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"TTS asset lookup failed for %@", *(a1 + 40)];
      v10 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:15 description:v12 userInfo:0];
      v13 = _LTOSLogAssets();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2_58_cold_1();
      }
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      (*(v14 + 16))(v14, *(a1 + 40));
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"TTS asset download failed for %@", *(a1 + 40)];
    v10 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:16 description:v9 userInfo:0];
    v11 = _LTOSLogAssets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2_58_cold_2((a1 + 40), v10, v11);
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))(v15, v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __43___LTDTTSAssetService_setSubscribedVoices___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "SiriTTS subscribe assets failure: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "SiriTTS asset download failure: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2_58_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "SiriTTS voice lookup failure: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke_2_58_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_232E53000, a2, a3, "SiriTTS download %{public}@ failure: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end