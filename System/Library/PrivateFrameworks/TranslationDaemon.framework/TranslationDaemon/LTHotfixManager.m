@interface LTHotfixManager
@end

@implementation LTHotfixManager

uint64_t __26___LTHotfixManager_shared__block_invoke()
{
  shared_shared = objc_alloc_init(_LTHotfixManager);

  return MEMORY[0x2821F96F8]();
}

void __34___LTHotfixManager_refreshHotfix___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __34___LTHotfixManager_refreshHotfix___block_invoke_2;
    v3[3] = &unk_2789B6B38;
    objc_copyWeak(&v5, (a1 + 40));
    v4 = *(a1 + 32);
    [WeakRetained _replaceHotfix:1 completion:v3];

    objc_destroyWeak(&v5);
  }
}

void __34___LTHotfixManager_refreshHotfix___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = _LTOSLogHotfix();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __34___LTHotfixManager_refreshHotfix___block_invoke_2_cold_1();
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __34___LTHotfixManager_refreshHotfix___block_invoke_26;
      v6[3] = &unk_2789B6B38;
      objc_copyWeak(&v8, (a1 + 40));
      v7 = *(a1 + 32);
      [WeakRetained _updateHotfixInternal:v6];

      objc_destroyWeak(&v8);
    }
  }
}

void __34___LTHotfixManager_refreshHotfix___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = _LTOSLogHotfix();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __34___LTHotfixManager_refreshHotfix___block_invoke_26_cold_1();
      }

      v7 = *(a1 + 32);
      WeakRetained = v5;
      v8 = 2;
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = 3;
    }

    [WeakRetained _replaceHotfix:v8 completion:v7];
  }
}

void __42___LTHotfixManager__updateHotfixInternal___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_36;
  }

  if (!v6)
  {
    v33 = a1;
    v34 = WeakRetained;
    v10 = [MEMORY[0x277D07278] minimumSupportedConfigurationVersion];
    v11 = [v10 intValue];

    v12 = [MEMORY[0x277D07278] maximumSupportedConfigurationVersion];
    v35 = [v12 intValue];

    v13 = [v5 objectForKeyedSubscript:@"Mapping"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v13 lt_ensureElementType:objc_opt_class()])
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {

      v13 = 0;
      v14 = 0;
    }

    v15 = v14;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v32 = v5;
      v19 = 0;
      v20 = *v37;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          v23 = [v22 objectForKeyedSubscript:{@"FormatVersion", v32}];
          if (v23)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 0;
          }

          v25 = v24;

          v26 = [v25 intValue];
          if (v25 && v26 >= v11 && v26 <= v35 && v26 >= 1)
          {
            v27 = v22;

            v19 = v27;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v18);

      v5 = v32;
      if (v19)
      {
        v8 = v34;
        [v34 _downloadHotfix:v19 completion:*(v33 + 32)];
        v6 = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
    }

    v28 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v41 = @"Cannot find any compatible hotfix";
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v6 = [v28 errorWithDomain:@"LTDHotfixManagerError" code:0 userInfo:v29];

    v30 = _LTOSLogHotfix();
    v8 = v34;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      __42___LTHotfixManager__updateHotfixInternal___block_invoke_cold_2();
    }

    (*(*(v33 + 32) + 16))();
    v19 = 0;
    goto LABEL_35;
  }

  v9 = _LTOSLogHotfix();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __42___LTHotfixManager__updateHotfixInternal___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
LABEL_36:

  v31 = *MEMORY[0x277D85DE8];
}

void __33___LTHotfixManager_deleteHotfix___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = _LTOSLogHotfix();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v11 = hotfixBasePath;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Attempting to delete hotfix at base path %{public}@", buf, 0xCu);
  }

  v4 = [hotfixBasePath path];
  v5 = [v2 fileExistsAtPath:v4];

  if (v5)
  {
    v9 = 0;
    [v2 removeItemAtURL:hotfixBasePath error:&v9];
    v6 = v9;
    if (v6)
    {
      v7 = _LTOSLogHotfix();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __33___LTHotfixManager_deleteHotfix___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) setHotfixURL:0];
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __48___LTHotfixManager__downloadWithURL_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (!a2 || v6)
  {
    v9 = _LTOSLogHotfix();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __48___LTHotfixManager__downloadWithURL_completion___block_invoke_cold_1(a1, v7, v9);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);
  }

  v8();
}

void __42___LTHotfixManager__downloadMappingPlist___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v8[1] = MEMORY[0x277D85DD0];
    v8[2] = 3221225472;
    v8[3] = __42___LTHotfixManager__downloadMappingPlist___block_invoke_2;
    v8[4] = &unk_2789B59E0;
    v6 = v5;
    v8[5] = v6;
    AnalyticsSendEventLazy();
    (*(*(a1 + 32) + 16))();
    v7 = v6;
  }

  else
  {
    v8[0] = 0;
    v7 = [MEMORY[0x277CCAC58] propertyListWithData:a2 options:0 format:0 error:v8];
    v6 = v8[0];
    (*(*(a1 + 32) + 16))();
  }
}

id __42___LTHotfixManager__downloadMappingPlist___block_invoke_2(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"code";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v3 = [v2 stringValue];
  v9[0] = v3;
  v8[1] = @"domain";
  v4 = [*(a1 + 32) domain];
  v8[2] = @"file";
  v9[1] = v4;
  v9[2] = &unk_284868098;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __47___LTHotfixManager__downloadHotfix_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHotfixURL:*(a1 + 40)];
  v2 = _LTOSLogHotfix();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "Found existing hotfix", v4, 2u);
  }

  return (*(*(a1 + 48) + 16))();
}

void __47___LTHotfixManager__downloadHotfix_completion___block_invoke_67(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v15[1] = MEMORY[0x277D85DD0];
      v15[2] = 3221225472;
      v15[3] = __47___LTHotfixManager__downloadHotfix_completion___block_invoke_2;
      v15[4] = &unk_2789B59E0;
      v16 = v6;
      AnalyticsSendEventLazy();
      (*(a1[6] + 2))();
    }

    else
    {
      v9 = WeakRetained[1];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __47___LTHotfixManager__downloadHotfix_completion___block_invoke_70;
      v10[3] = &unk_2789B6C28;
      objc_copyWeak(v15, a1 + 7);
      v11 = a1[4];
      v14 = a1[6];
      v12 = a1[5];
      v13 = v5;
      dispatch_async(v9, v10);

      objc_destroyWeak(v15);
    }
  }
}

id __47___LTHotfixManager__downloadHotfix_completion___block_invoke_2(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"code";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v3 = [v2 stringValue];
  v9[0] = v3;
  v8[1] = @"domain";
  v4 = [*(a1 + 32) domain];
  v8[2] = @"file";
  v9[1] = v4;
  v9[2] = &unk_2848680B0;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void __47___LTHotfixManager__downloadHotfix_completion___block_invoke_70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = [hotfixBasePath path];
    LODWORD(v3) = [v3 fileExistsAtPath:v4];

    if (v3 && (v5 = *(a1 + 32), v27 = 0, [v5 removeItemAtURL:hotfixBasePath error:&v27], (v6 = v27) != 0))
    {
      v7 = v6;
      v8 = _LTOSLogHotfix();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __47___LTHotfixManager__downloadHotfix_completion___block_invoke_70_cold_1();
      }

      (*(*(a1 + 56) + 16))();
      v9 = *(a1 + 32);
      v26 = v7;
      [v9 removeItemAtURL:hotfixBasePath error:&v26];
      v10 = v26;
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v25 = 0;
      [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v25];
      v13 = v25;
      if (v13)
      {
        v7 = v13;
        v14 = _LTOSLogHotfix();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __47___LTHotfixManager__downloadHotfix_completion___block_invoke_70_cold_2();
        }

        (*(*(a1 + 56) + 16))();
        v15 = *(a1 + 32);
        v24 = v7;
        [v15 removeItemAtURL:hotfixBasePath error:&v24];
        v10 = v24;
      }

      else
      {
        v17 = *(a1 + 40);
        v16 = *(a1 + 48);
        v23 = 0;
        [WeakRetained _decompressArchive:v16 to:v17 error:&v23];
        v18 = v23;
        if (!v18)
        {
          [WeakRetained setHotfixURL:*(a1 + 40)];
          (*(*(a1 + 56) + 16))();
          goto LABEL_16;
        }

        v7 = v18;
        v19 = _LTOSLogHotfix();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          __47___LTHotfixManager__downloadHotfix_completion___block_invoke_70_cold_3();
        }

        (*(*(a1 + 56) + 16))();
        v20 = *(a1 + 32);
        v22 = v7;
        [v20 removeItemAtURL:hotfixBasePath error:&v22];
        v10 = v22;
      }
    }

    v21 = v10;
  }

LABEL_16:
}

void __34___LTHotfixManager_refreshHotfix___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Hotfix asset refresh prepare failure: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __34___LTHotfixManager_refreshHotfix___block_invoke_26_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Hotfix asset refresh update failure: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42___LTHotfixManager__updateHotfixInternal___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Update of hotfix map failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42___LTHotfixManager__updateHotfixInternal___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Update of hotfix assets failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __33___LTHotfixManager_deleteHotfix___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to delete hotfix: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __48___LTHotfixManager__downloadWithURL_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_232E53000, log, OS_LOG_TYPE_ERROR, "Failed to download hotfix at URL '%{public}@' with error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __47___LTHotfixManager__downloadHotfix_completion___block_invoke_70_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Remove folder failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47___LTHotfixManager__downloadHotfix_completion___block_invoke_70_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Create folder failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47___LTHotfixManager__downloadHotfix_completion___block_invoke_70_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Decompression failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end