@interface LTDConfigurationService
@end

@implementation LTDConfigurationService

uint64_t __33___LTDConfigurationService_cache__block_invoke()
{
  cache_cache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

uint64_t __34___LTDConfigurationService__queue__block_invoke()
{
  _queue__queue = dispatch_queue_create("com.apple.translationd.ConfigurationService", 0);

  return MEMORY[0x2821F96F8]();
}

void __60___LTDConfigurationService_configurationForType_completion___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v6 = 0;
  v4 = [v2 configurationForType:v3 error:&v6];
  v5 = v6;
  (*(a1[4] + 16))();
}

void __59___LTDConfigurationService_asrConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = 0;
  v3 = [v2 asrConfigurationWithError:&v6];
  v4 = v6;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

void __63___LTDConfigurationService_offlineConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = 0;
  v3 = [v2 offlineConfigurationWithError:&v6];
  v4 = v6;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

void __60___LTDConfigurationService_siriConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = 0;
  v3 = [v2 siriConfigurationWithError:&v6];
  v4 = v6;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

void __69___LTDConfigurationService_textStreamingConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = 0;
  v3 = [v2 textStreamingConfigurationWithError:&v6];
  v4 = v6;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

void __61___LTDConfigurationService_assetConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = 0;
  v3 = [v2 assetConfigurationWithError:&v6];
  v4 = v6;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

void __59___LTDConfigurationService_aneConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = 0;
  v3 = [v2 aneConfigurationWithError:&v6];
  v4 = v6;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

void __67___LTDConfigurationService_supportedLocalePairsForTask_completion___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v7 = 0;
  v4 = [v2 supportedLocalePairsForTask:v3 error:&v7];
  v5 = v7;
  v6 = a1[4];
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }
}

void __67___LTDConfigurationService_supportedIdentifiersForTask_completion___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) - 9) > 1)
  {
    v6 = 0;
LABEL_6:
    v8 = [v6 count] == 0;
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67___LTDConfigurationService_supportedIdentifiersForTask_completion___block_invoke_2;
    v12[3] = &unk_2789B5EA0;
    v11 = *(a1 + 32);
    v15 = v8;
    v13 = v6;
    v14 = v11;
    v5 = v6;
    [v9 supportedLocalePairsForTask:v10 completion:v12];

    v3 = v14;
    goto LABEL_7;
  }

  v2 = *(a1 + 48);
  v16 = 0;
  v3 = [v2 asrConfigurationWithError:&v16];
  v4 = v16;
  if (!v4)
  {
    v7 = [v3 supportedLocaleIdentifiersForTaskHint:*(a1 + 40)];
    v6 = [MEMORY[0x277CBEB98] setWithArray:v7];

    goto LABEL_6;
  }

  v5 = v4;
  (*(*(a1 + 32) + 16))();
LABEL_7:
}

void __67___LTDConfigurationService_supportedIdentifiersForTask_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 sourceLocale];
          v15 = [v14 localeIdentifier];

          if ((*(a1 + 48) & 1) != 0 || [*(a1 + 32) containsObject:v15])
          {
            [v7 addObject:v15];
          }

          v16 = [v13 targetLocale];
          v17 = [v16 localeIdentifier];

          if ((*(a1 + 48) & 1) != 0 || [*(a1 + 32) containsObject:v17])
          {
            [v7 addObject:v17];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 40) + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end