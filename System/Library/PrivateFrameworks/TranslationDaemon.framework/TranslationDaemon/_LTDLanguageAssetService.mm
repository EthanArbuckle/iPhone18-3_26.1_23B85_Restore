@interface _LTDLanguageAssetService
+ (BOOL)_applyRequiredProgressUpdate:(id)a3;
+ (NSArray)availableIdentifiers;
+ (NSArray)selectedLocales;
+ (NSSet)_selectedIdentifiers;
+ (id)_complementaryLocaleIfMissingForAssets:(id)a3 preferredComplements:(id)a4;
+ (id)_installedLocales;
+ (id)_languageAssetFilterDescription:(unint64_t)a3;
+ (id)_languageModelsForLocales:(id)a3 initialState:(int64_t)a4 error:(id *)a5;
+ (id)_localeRanks;
+ (id)_selectedAssets;
+ (id)_stringForOfflineState:(int64_t)a3;
+ (id)_supportedLocalesWithError:(id *)a3;
+ (id)_synthesizeInitialObservationsFromDefaults;
+ (id)queue;
+ (int64_t)_offlineStateFromString:(id)a3;
+ (unint64_t)_languageAssetFilterFromOptions:(unint64_t)a3;
+ (void)_availableAssetsWithCompletion:(id)a3;
+ (void)_cacheInstalledLanguages;
+ (void)_installedAssetsWithCompletion:(id)a3;
+ (void)_localeRanks;
+ (void)_preheatMissingCacheStatesAfter:(int64_t)a3;
+ (void)_purgeUnusedAssetsWithCompletion:(id)a3;
+ (void)_resetSymlinkDirectory;
+ (void)_selectedAssetsWithCompletion:(id)a3;
+ (void)_syncInstalledLocales;
+ (void)_syncInstalledLocalesWithCompletion:(id)a3;
+ (void)_syncInstalledLocalesWithRetry:(int64_t)a3 gateID:(id)a4;
+ (void)addLanguages:(id)a3 useCellular:(BOOL)a4;
+ (void)assetsWithOptions:(unint64_t)a3 completion:(id)a4;
+ (void)cancelLanguageStatusSession:(id)a3;
+ (void)removeLanguages:(id)a3;
+ (void)setAssets:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6;
+ (void)setInstalledLocales:(id)a3 useCellular:(BOOL)a4 progress:(id)a5 completion:(id)a6;
+ (void)startLanguageStatusSession:(id)a3 taskHint:(int64_t)a4 progress:(BOOL)a5 observations:(id)a6 completion:(id)a7;
+ (void)syncInstalledLocalesIfPowerAllows;
+ (void)syncInstalledLocalesOnAssetUpdate;
@end

@implementation _LTDLanguageAssetService

+ (NSSet)_selectedIdentifiers
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = _LTPreferencesInstalledLocales();
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v2, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) lt_localeIdentifier];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)queue
{
  if (queue_onceToken_1 != -1)
  {
    +[_LTDLanguageAssetService queue];
  }

  v3 = queue__queue_1;

  return v3;
}

+ (unint64_t)_languageAssetFilterFromOptions:(unint64_t)a3
{
  if ((a3 & 0x40) != 0)
  {
    if ((a3 & 0x30) != 0)
    {
      v4 = _LTOSLogAssets();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        +[_LTDLanguageAssetService _languageAssetFilterFromOptions:];
      }
    }

    return 64;
  }

  else if ((a3 & 0x20) != 0)
  {
    if ((a3 & 0x10) != 0)
    {
      v5 = _LTOSLogAssets();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[_LTDLanguageAssetService _languageAssetFilterFromOptions:];
      }
    }

    return 32;
  }

  else
  {
    return 16;
  }
}

+ (id)_languageAssetFilterDescription:(unint64_t)a3
{
  v3 = @".available";
  if (a3 == 32)
  {
    v3 = @".selected";
  }

  if (a3 == 64)
  {
    return @".installed";
  }

  else
  {
    return v3;
  }
}

+ (void)assetsWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a1 _languageAssetFilterFromOptions:a3];
  v8 = _LTOSLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDLanguageAssetService assetsWithOptions:completion:];
  }

  v9 = +[_LTDLanguageAssetCache shared];
  v10 = [v9 assetsFilteredUsing:v7];

  if (v10)
  {
    v11 = _LTOSLogAssets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[_LTDLanguageAssetService assetsWithOptions:completion:];
      if (!v6)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    if (v6)
    {
LABEL_6:
      v6[2](v6, v10, 0);
    }
  }

  else if (v7 == 32)
  {
    [a1 _selectedAssetsWithCompletion:v6];
  }

  else if (v7 == 64)
  {
    [a1 _installedAssetsWithCompletion:v6];
  }

  else
  {
    [a1 _availableAssetsWithCompletion:v6];
  }

LABEL_12:
}

+ (void)_availableAssetsWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59___LTDLanguageAssetService__availableAssetsWithCompletion___block_invoke;
  v6[3] = &unk_2789B61D0;
  v7 = v4;
  v8 = a1;
  v5 = v4;
  [_LTDConfigurationService offlineConfigurationWithCompletion:v6];
}

+ (void)_selectedAssetsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58___LTDLanguageAssetService__selectedAssetsWithCompletion___block_invoke;
  v7[3] = &unk_2789B5E78;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (void)_installedAssetsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [a1 selectedLocales];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___LTDLanguageAssetService__installedAssetsWithCompletion___block_invoke;
  v8[3] = &unk_2789B5AD0;
  v10 = v4;
  v11 = a1;
  v9 = v5;
  v6 = v5;
  v7 = v4;
  [_LTDAssetService assetsForLocales:v6 includeTTS:1 completion:v8];
}

+ (id)_supportedLocalesWithError:(id *)a3
{
  v4 = [_LTDConfigurationService offlineConfigurationWithError:?];
  v5 = v4;
  if (*a3)
  {
    v6 = _LTOSLogAssets();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(_LTDLanguageAssetService *)a3 _supportedLocalesWithError:v6, v7, v8, v9, v10, v11, v12];
    }

    v13 = 0;
  }

  else
  {
    v14 = [v4 languageIdentifiers];
    v13 = [v14 _ltCompactMap:&__block_literal_global_17];
  }

  return v13;
}

+ (id)_localeRanks
{
  v32[1] = *MEMORY[0x277D85DE8];
  v30 = 0;
  v2 = [a1 _supportedLocalesWithError:&v30];
  v3 = v30;
  if (v3 || ![v2 count])
  {
    v4 = _LTOSLogAssets();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[_LTDLanguageAssetService _localeRanks];
    }

    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
    v7 = v6;
    if (v6)
    {
      v8 = MEMORY[0x277CBEAF8];
      v32[0] = v6;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
      v10 = [v8 lt_bestMatchForPreferredLocales:v9 fromSupportedLocales:v2];

      if (v10)
      {
        v11 = _LTPreferencesAdditionalLikelyPreferredLocales(v10);
        if ([v11 count])
        {
          v31 = v10;
          v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
          v13 = [v12 arrayByAddingObjectsFromArray:v11];

          v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v13, "count")}];
          if ([v13 count])
          {
            v14 = 0;
            do
            {
              v15 = v14 + 1;
              v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14 + 1];
              v17 = [v13 objectAtIndexedSubscript:v14];
              [v5 setObject:v16 forKeyedSubscript:v17];

              v14 = v15;
            }

            while (v15 < [v13 count]);
          }
        }

        else
        {
          v20 = _LTOSLogAssets();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [(_LTDLanguageAssetService *)v20 _localeRanks:v21];
          }

          v5 = 0;
        }
      }

      else
      {
        v19 = _LTOSLogAssets();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          +[(_LTDLanguageAssetService *)v19];
        }

        v5 = 0;
      }
    }

    else
    {
      v18 = _LTOSLogAssets();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[_LTDLanguageAssetService _localeRanks];
      }

      v5 = 0;
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_complementaryLocaleIfMissingForAssets:(id)a3 preferredComplements:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count] != 1)
  {
    goto LABEL_3;
  }

  v8 = [a1 selectedLocales];
  v9 = [v8 count];

  if (v9 > 1)
  {
    goto LABEL_3;
  }

  v13 = [a1 selectedLocales];
  if ([v13 count] == 1)
  {
    v14 = [a1 selectedLocales];
    v15 = [v14 firstObject];
    v16 = [v15 _ltLocaleIdentifier];
    v17 = [v6 firstObject];
    v18 = [v17 ltIdentifier];
    v19 = [v16 isEqualToString:v18];

    if (!v19)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_4;
    }
  }

  else
  {
  }

  v20 = [v6 firstObject];
  v21 = [v20 locale];

  v32 = 0;
  v22 = [a1 _supportedLocalesWithError:&v32];
  v23 = v32;
  if (v23)
  {
    v24 = _LTOSLogAssets();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      +[_LTDLanguageAssetService _localeRanks];
    }

    v10 = 0;
  }

  else
  {
    v25 = [MEMORY[0x277CBEAF8] lt_bestMatchForPreferredLocales:v7 fromSupportedLocales:v22];
    if (!v25)
    {
      v26 = _LTPreferencesAdditionalLikelyPreferredLocales(v21);
      if ([v26 count])
      {
        v25 = [MEMORY[0x277CBEAF8] lt_bestMatchForPreferredLocales:v26 fromSupportedLocales:v22];
      }

      else
      {
        v25 = 0;
      }
    }

    v27 = [v25 _ltLocaleIdentifier];
    if (v27)
    {
      v28 = [v21 _ltLocaleIdentifier];
      v29 = [v28 isEqualToString:v27];

      if (v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = v25;
      }

      v10 = v30;
    }

    else
    {
      v31 = _LTOSLogAssets();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v34 = v7;
        _os_log_impl(&dword_232E53000, v31, OS_LOG_TYPE_INFO, "Failed to locate a supported complement for %{public}@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (void)setAssets:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke;
  v58[3] = &unk_2789B5D20;
  v13 = v12;
  v59 = v13;
  v43 = MEMORY[0x238398770](v58);
  v14 = _LTOSLogAssets();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v62 = v10;
    _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Language asset service received install request: %{public}@", buf, 0xCu);
  }

  v44 = [a1 _complementaryLocaleIfMissingForAssets:v10 preferredComplements:0];
  if (v44)
  {
    v15 = _LTOSLogAssets();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v10 firstObject];
      v18 = [v17 ltIdentifier];
      [v44 _ltLocaleIdentifier];
      v20 = v19 = a4;
      *buf = 138543618;
      v62 = v18;
      v63 = 2114;
      v64 = v20;
      _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_DEFAULT, "Request only downloads %{public}@, downloading complement %{public}@ to ensure a bi-directional pair", buf, 0x16u);

      a4 = v19;
    }

    v21 = [objc_alloc(MEMORY[0x277CE1B00]) initWithLocale:v44 state:1];
    v22 = [v10 arrayByAddingObject:v21];

    v10 = v22;
  }

  v23 = v10;
  v24 = v23;
  v42 = a4;
  if ((a4 & 8) == 0)
  {
    v40 = v13;
    v41 = v11;
    v25 = [a1 _selectedAssets];
    v26 = [v25 mutableCopy];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v27 = v23;
    v28 = [v27 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v55;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v55 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v54 + 1) + 8 * i);
          v33 = [v32 progress];
          v34 = [v33 offlineState];

          if (v34)
          {
            [v26 addObject:v32];
          }

          else
          {
            [v26 removeObject:v32];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v29);
    }

    v24 = [v26 allObjects];

    v13 = v40;
    v11 = v41;
  }

  v35 = [a1 _localeRanks];
  v36 = +[_LTDLanguageAssetCache shared];
  v37 = [v36 preheatWithLanguages:v24];
  [v36 markReadyForFilter:32];
  if ([v37 count])
  {
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_24;
    v45[3] = &unk_2789B6290;
    v52 = a1;
    v49 = v13;
    v38 = v43;
    v50 = v43;
    v46 = v36;
    v47 = v35;
    v48 = v37;
    v53 = v42;
    v51 = v11;
    [_LTDAssetService assetsForLocales:v48 includeTTS:1 completion:v45];
  }

  else
  {
    [v36 setRequiredAssets:MEMORY[0x277CBEBF8] localeRanks:v35];
    v38 = v43;
    if (v13)
    {
      v43[2](v43, 0);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

+ (void)setInstalledLocales:(id)a3 useCellular:(BOOL)a4 progress:(id)a5 completion:(id)a6
{
  v24 = a4;
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11 = +[_LTDLanguageAssetCache shared];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      v17 = 0;
      do
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v30 + 1) + 8 * v17) _ltLocaleIdentifier];
        v19 = [v11 assetForIdentifier:v18];

        v20 = [v19 progress];
        [v20 setGreaterThanOrEqualToOfflineState:1];

        [v12 addObject:v19];
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __80___LTDLanguageAssetService_setInstalledLocales_useCellular_progress_completion___block_invoke;
  v28[3] = &unk_2789B62B8;
  v29 = v9;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __80___LTDLanguageAssetService_setInstalledLocales_useCellular_progress_completion___block_invoke_2;
  v26[3] = &unk_2789B5D20;
  v27 = v10;
  v21 = v10;
  v22 = v9;
  [a1 setAssets:v12 options:v24 | 0xALL progress:v28 completion:v26];

  v23 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_applyRequiredProgressUpdate:(id)a3
{
  v3 = a3;
  v4 = +[_LTDLanguageAssetCache shared];
  v5 = [v4 applyProgressUpdateForAsset:v3];

  return v5;
}

+ (void)_syncInstalledLocalesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _LTOSLogAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "Sync install begin", buf, 2u);
  }

  v6 = [a1 onDeviceModeSupported];
  v7 = _LTOSLogAssets();
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[_LTDLanguageAssetService _syncInstalledLocalesWithCompletion:];
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else if (!v4)
    {
      goto LABEL_10;
    }

    v4[2](v4, 0);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_DEFAULT, "Sync install query selected begin", buf, 2u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke;
  v9[3] = &unk_2789B5D70;
  v10 = v4;
  v11 = a1;
  [a1 assetsWithOptions:32 completion:v9];

LABEL_10:
}

+ (void)_syncInstalledLocalesWithRetry:(int64_t)a3 gateID:(id)a4
{
  v6 = a4;
  v7 = [a1 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke;
  block[3] = &unk_2789B6368;
  v10 = v6;
  v11 = a3;
  v12 = a1;
  v8 = v6;
  dispatch_async(v7, block);
}

+ (void)_syncInstalledLocales
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  [a1 _syncInstalledLocalesWithRetry:0 gateID:v3];
}

+ (void)syncInstalledLocalesIfPowerAllows
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)syncInstalledLocalesOnAssetUpdate
{
  v3 = [a1 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___LTDLanguageAssetService_syncInstalledLocalesOnAssetUpdate__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v3, block);
}

+ (void)_purgeUnusedAssetsWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61___LTDLanguageAssetService__purgeUnusedAssetsWithCompletion___block_invoke;
  v6[3] = &unk_2789B5D70;
  v7 = v4;
  v8 = a1;
  v5 = v4;
  [_LTDAssetService installedAssetsWithCompletion:v6];
}

+ (NSArray)availableIdentifiers
{
  v5 = 0;
  v2 = [_LTDConfigurationService offlineConfigurationWithError:&v5];
  v3 = [v2 languageIdentifiers];

  return v3;
}

+ (NSArray)selectedLocales
{
  v2 = _LTPreferencesInstalledLocales();
  v3 = [v2 _ltCompactMap:&__block_literal_global_48];

  return v3;
}

+ (id)_selectedAssets
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [a1 _selectedIdentifiers];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = +[_LTDLanguageAssetCache shared];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v4 assetForIdentifier:{*(*(&v13 + 1) + 8 * i), v13}];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_installedLocales
{
  v2 = +[_LTDLanguageAssetCache shared];
  v3 = [v2 assetsFilteredUsing:64];

  v4 = [v3 _ltCompactMap:&__block_literal_global_52];

  return v4;
}

+ (void)_preheatMissingCacheStatesAfter:(int64_t)a3
{
  v5 = dispatch_time(0, 1000000000 * a3);
  v6 = [a1 queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  v7[4] = a1;
  v7[5] = a3;
  dispatch_after(v5, v6, v7);
}

+ (void)startLanguageStatusSession:(id)a3 taskHint:(int64_t)a4 progress:(BOOL)a5 observations:(id)a6 completion:(id)a7
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = _LTOSLogAssets();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = [v12 UUIDString];
    *buf = 138543362;
    v31 = v17;
    _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Start language status session %{public}@", buf, 0xCu);
  }

  v18 = [a1 queue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97___LTDLanguageAssetService_startLanguageStatusSession_taskHint_progress_observations_completion___block_invoke;
  v23[3] = &unk_2789B6418;
  v29 = a5;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = a4;
  v28 = a1;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  dispatch_async(v18, v23);

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)cancelLanguageStatusSession:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _LTOSLogAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 UUIDString];
    *buf = 138543362;
    v14 = v7;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Cancel language status session %{public}@", buf, 0xCu);
  }

  v8 = [a1 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56___LTDLanguageAssetService_cancelLanguageStatusSession___block_invoke;
  block[3] = &unk_2789B5B70;
  v12 = v4;
  v9 = v4;
  dispatch_async(v8, block);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)addLanguages:(id)a3 useCellular:(BOOL)a4
{
  v4 = a4;
  v75 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _LTOSLogAssets();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v74 = v5;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "Add languages %{public}@", buf, 0xCu);
  }

  LODWORD(v46) = v4;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = +[_LTDLanguageAssetCache shared];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v67;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v67 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v66 + 1) + 8 * i) _ltLocaleIdentifier];
        v15 = [v8 assetForIdentifier:v14];
        v16 = [v15 progress];
        v17 = [v16 offlineState];

        if (!v17)
        {
          v18 = [v15 progress];
          [v18 setOfflineState:1];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v11);
  }

  [v8 multicastObservers];
  v19 = MEMORY[0x277CBEB58];
  v20 = [a1 selectedLocales];
  v21 = [v19 setWithArray:v20];

  v22 = [MEMORY[0x277CBEB98] setWithArray:v9];
  [v21 unionSet:v22];

  v23 = [v21 allObjects];
  [a1 setSelectedLocales:v23];

  v65 = 0;
  v24 = [a1 _languageModelsForLocales:v9 initialState:1 error:&v65];
  v25 = v65;
  if (!v25)
  {
    v49 = 0;
    v51 = v24;
    v53 = v21;
    v36 = 2;
    v59 = 0u;
    v60 = 0u;
    if (v47)
    {
      v36 = 3;
    }

    v48 = v36;
    v57 = 0uLL;
    v58 = 0uLL;
    v37 = v9;
    v38 = [v37 countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v58;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v58 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v57 + 1) + 8 * j);
          v43 = +[_LTDAssetAnalytics shared];
          v44 = [v43 createEventWithNSLocale:v42 connectionType:v7 downloadTriggerSource:0];

          [v44 startTimer];
        }

        v39 = [v37 countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v39);
    }

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __53___LTDLanguageAssetService_addLanguages_useCellular___block_invoke;
    v55[3] = &unk_2789B54E0;
    v56 = v37;
    v24 = v51;
    [a1 setAssets:v51 options:v48 progress:0 completion:v55];
    v27 = v56;
    v21 = v53;
    goto LABEL_36;
  }

  v26 = _LTOSLogAssets();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    +[_LTDLanguageAssetService addLanguages:useCellular:];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v27 = v9;
  v28 = [v27 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v28)
  {
    v29 = v28;
    v49 = v25;
    v50 = v24;
    v52 = v21;
    v30 = *v62;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v62 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v61 + 1) + 8 * k);
        v33 = +[_LTDAssetAnalytics shared];
        v34 = [v33 createEventWithNSLocale:v32 connectionType:v7 downloadTriggerSource:0];

        [v34 setDownloadOutcome:3];
        v35 = +[_LTDAssetAnalytics shared];
        [v35 sendEventToAnalytics:v34];
      }

      v29 = [v27 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v29);
    v24 = v50;
    v21 = v52;
LABEL_36:
    v25 = v49;
  }

  v45 = *MEMORY[0x277D85DE8];
}

+ (void)removeLanguages:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _LTOSLogAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v51 = v4;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "Remove languages %{public}@", buf, 0xCu);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        v12 = +[_LTDAssetAnalytics shared];
        v13 = [v12 getEventWithNSLocale:v11];

        if (v13)
        {
          [v13 setDownloadOutcome:2];
          v14 = +[_LTDAssetAnalytics shared];
          [v14 sendEventToAnalytics:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v8);
  }

  v15 = +[_LTDLanguageAssetCache shared];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v40 + 1) + 8 * j) _ltLocaleIdentifier];
        v22 = [v15 assetForIdentifier:v21];
        v23 = [v22 progress];
        v24 = [v23 offlineState];

        if (v24)
        {
          v25 = [v22 progress];
          [v25 setOfflineState:0];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v18);
  }

  [v15 multicastObservers];
  v26 = MEMORY[0x277CBEB58];
  v27 = [a1 selectedLocales];
  v28 = [v26 setWithArray:v27];

  v29 = [MEMORY[0x277CBEB98] setWithArray:v16];
  [v28 minusSet:v29];

  v30 = [v28 allObjects];
  [a1 setSelectedLocales:v30];

  v31 = [a1 selectedLocales];
  v32 = [v31 count];

  if (!v32)
  {
    v33 = +[_LTDAssetService cleanupScheduler];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __44___LTDLanguageAssetService_removeLanguages___block_invoke;
    v39[3] = &__block_descriptor_40_e15_v16__0___v__B_8l;
    v39[4] = a1;
    [v33 scheduleAssetCleanupWork:v39];
  }

  v38 = 0;
  v34 = [a1 _languageModelsForLocales:v16 initialState:0 error:&v38];
  v35 = v38;
  if (v35)
  {
    v36 = _LTOSLogAssets();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      +[_LTDLanguageAssetService removeLanguages:];
    }
  }

  else
  {
    [a1 setAssets:v34 options:2 progress:0 completion:0];
  }

  v37 = *MEMORY[0x277D85DE8];
}

+ (void)_resetSymlinkDirectory
{
  OUTLINED_FUNCTION_10();
  v12 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_2() path];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v4, v5, "Creation of symlink folder %@ failed: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)_languageModelsForLocales:(id)a3 initialState:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  if ([v8 count])
  {
    v9 = [a1 _supportedLocalesWithError:a5];
    v10 = v9;
    if (*a5)
    {
      v11 = 0;
    }

    else
    {
      v12 = [v9 _ltCompactMap:&__block_literal_global_69];
      v13 = [MEMORY[0x277CBEB98] setWithArray:v12];
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __73___LTDLanguageAssetService__languageModelsForLocales_initialState_error___block_invoke_2;
      v24 = &unk_2789B6460;
      v14 = v13;
      v25 = v14;
      v26 = a4;
      v15 = [v8 _ltCompactMap:&v21];
      if ([v15 count])
      {
        v11 = [v15 copy];
      }

      else
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = [v8 firstObject];
        v18 = [v16 lt_unsupportedLanguageError:v17];

        v19 = v18;
        *a5 = v18;

        v11 = 0;
      }
    }
  }

  else if (*a5)
  {
    [MEMORY[0x277CCA9B8] lt_unsupportedLanguageError:0];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)_cacheInstalledLanguages
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (id)_synthesizeInitialObservationsFromDefaults
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = _LTPreferencesOfflineLanguageInstallationStatus();
  v27 = 0;
  v5 = [a1 _supportedLocalesWithError:&v27];
  v6 = v27;
  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v21 = v5;
    v8 = v3;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v13 _ltLocaleIdentifier];
          v15 = [v4 objectForKeyedSubscript:v14];

          if (v15)
          {
            v16 = [v15 objectForKey:@"status"];
            v17 = [a1 _offlineStateFromString:v16];
            v18 = [objc_alloc(MEMORY[0x277CE1B28]) initWithLocale:v13 progress:0 downloadSize:v17 status:0 rank:0.0];
            [v8 addObject:v18];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v10);
    }

    v3 = v8;
    v7 = [v8 sortedArrayUsingSelector:sel_compare_];
    v6 = 0;
    v5 = v21;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_stringForOfflineState:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2789B64A0[a3];
  }
}

+ (int64_t)_offlineStateFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"unavailable"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"downloading"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"installed"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (void)_languageAssetFilterFromOptions:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_languageAssetFilterFromOptions:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)assetsWithOptions:completion:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v7 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = [OUTLINED_FUNCTION_2() _languageAssetFilterDescription:v0];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_232E53000, v1, OS_LOG_TYPE_DEBUG, "Language asset service received state request with filter %{public}@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)assetsWithOptions:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_supportedLocalesWithError:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_2_0(&dword_232E53000, a2, a3, "Failed to read offline configuration for supported locales %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_localeRanks
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to read supported locales for system locale complement %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_syncInstalledLocalesWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)addLanguages:useCellular:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Add languages failure %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)removeLanguages:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Remove languages failure %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end