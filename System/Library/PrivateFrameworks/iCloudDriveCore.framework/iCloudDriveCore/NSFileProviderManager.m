@interface NSFileProviderManager
@end

@implementation NSFileProviderManager

void __90__NSFileProviderManager_BRCAdditions___br_removeDomain_options_retries_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v6 br_isNSXPCConnectionError] & 1) != 0 && (v7 = *(a1 + 64), +[BRCUserDefaults defaultsForMangledID:](BRCUserDefaults, "defaultsForMangledID:", 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "xpcConnectionFailureRetries"), v8, v7 < v9))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v11 = WeakRetained;
    if (WeakRetained)
    {
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = MEMORY[0x277CFAE80];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __90__NSFileProviderManager_BRCAdditions___br_removeDomain_options_retries_completionHandler___block_invoke_2;
        v14[3] = &unk_278506B48;
        v16 = *(a1 + 48);
        v14[4] = v11;
        v15 = *(a1 + 40);
        v17 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
        [v13 performWithPersonaID:v12 block:v14];
      }

      else
      {
        [WeakRetained _br_removeDomain:*(a1 + 40) options:*(a1 + 72) retries:*(a1 + 64) + 1 completionHandler:*(a1 + 48)];
      }
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __90__NSFileProviderManager_BRCAdditions___br_removeDomain_options_retries_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __90__NSFileProviderManager_BRCAdditions___br_removeDomain_options_retries_completionHandler___block_invoke_2_cold_1(v4, v5);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _br_removeDomain:*(a1 + 40) options:*(a1 + 56) retries:*(a1 + 64) + 1 completionHandler:*(a1 + 48)];
  }
}

uint64_t __86__NSFileProviderManager_BRCAdditions__br_removeDomain_options_sync_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[7];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [v3 removeDomain:v2 options:v4 preservedLocation:&obj error:a2];
  objc_storeStrong((v5 + 40), obj);
  return v6;
}

void __86__NSFileProviderManager_BRCAdditions__br_removeDomain_options_sync_completionHandler___block_invoke_6(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  v7 = a2;
  if (v6)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      v10 = a1[4];
      v12 = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v8;
      _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] couldn't remove domain %@: %@%@", &v12, 0x20u);
    }
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __86__NSFileProviderManager_BRCAdditions__br_removeDomain_options_sync_completionHandler___block_invoke_6_cold_1(a1, v8, v9);
    }
  }

  (*(a1[5] + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

@end