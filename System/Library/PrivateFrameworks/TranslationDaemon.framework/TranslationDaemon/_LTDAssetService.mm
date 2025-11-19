@interface _LTDAssetService
+ (BOOL)_awaitDownloadForAsset:(id)a3;
+ (BOOL)preflightCheckForLocalePair:(id)a3 withModelURLs:(id)a4;
+ (Class)_serviceProviderForAssetType:(id)a3;
+ (id)_assetsIdentifiersForPairNames:(id)a3 error:(id *)a4;
+ (id)_errorForAssetProviderResolutionForAssetType:(id)a3;
+ (id)_libraryDirectory;
+ (id)_symlinkAssetsForLocalePair:(id)a3 fromAssets:(id)a4;
+ (id)_symlinkPairNamesForLocales:(id)a3;
+ (id)_ttsAssetsForLocales:(id)a3;
+ (id)assetDirectoryURL;
+ (id)assetsForLocales:(id)a3 includeTTS:(BOOL)a4 error:(id *)a5;
+ (id)catalogAssetsWithError:(id *)a3;
+ (id)configAssetIfAvailableWithError:(id *)a3;
+ (id)defaultCatalogTypeWithError:(id *)a3;
+ (id)filterAssets:(id)a3 forLocales:(id)a4 error:(id *)a5;
+ (id)filterConfigAssetFromAssets:(id)a3;
+ (id)installedAssetsWithError:(id *)a3;
+ (id)matchingASRAssetForLocale:(id)a3 error:(id *)a4;
+ (id)matchingASRAssetInAssets:(id)a3 forLocale:(id)a4;
+ (id)queryAssetType:(id)a3 filter:(unint64_t)a4 error:(id *)a5;
+ (id)queue;
+ (unint64_t)_assetProviderForAssetType:(id)a3;
+ (void)_addSyntheticASREntriesToAssets:(id)a3;
+ (void)_installConfigAsset:(id)a3 completion:(id)a4;
+ (void)_libraryDirectory;
+ (void)_refreshHotfixWithCompletion:(id)a3;
+ (void)assetsForLocales:(id)a3 includeTTS:(BOOL)a4 completion:(id)a5;
+ (void)bootstrapWithCompletion:(id)a3;
+ (void)catalogAssetsWithCompletion:(id)a3;
+ (void)configAssetWithCompletion:(id)a3;
+ (void)downloadAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6;
+ (void)downloadAssets:(id)a3 forLocales:(id)a4 options:(unint64_t)a5 progress:(id)a6 completion:(id)a7;
+ (void)downloadCatalogForAssetType:(id)a3 completion:(id)a4;
+ (void)installedAssetsWithCompletion:(id)a3;
+ (void)purgeAsset:(id)a3 completion:(id)a4;
+ (void)queryAssetType:(id)a3 filter:(unint64_t)a4 completion:(id)a5;
@end

@implementation _LTDAssetService

+ (id)queue
{
  if (queue_onceToken_0 != -1)
  {
    +[_LTDAssetService queue];
  }

  v3 = queue__queue_0;

  return v3;
}

+ (id)_errorForAssetProviderResolutionForAssetType:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Asset service resolution failure for %@", a3];
  v4 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"LTTranslationDaemonErrorDomain" code:7 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (unint64_t)_assetProviderForAssetType:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"com.apple.MobileAsset.UAF.Translation.Assets"])
  {
    v4 = 2;
  }

  else if ([v3 hasPrefix:@"com.apple.MobileAsset.SpeechTranslationAssets"] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"com.apple.MobileAsset.SpeechEndpointAssets") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", &stru_284834138))
  {
    v4 = 1;
  }

  else if ([v3 hasPrefix:@"com.apple.speech.automaticspeechrecognition"] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"com.apple.MobileAsset.UAF.Speech.AutomaticSpeechRecognition") & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"com.apple.MobileAsset.UAF.Siri.Understanding"))
  {
    v4 = 3;
  }

  else if ([v3 hasPrefix:@"com.apple.MobileAsset.Trial.Siri.SiriTextToSpeech"])
  {
    v4 = 4;
  }

  else
  {
    v6 = _LTOSLogAssets();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[_LTDAssetService _assetProviderForAssetType:];
    }

    v4 = 0;
  }

  return v4;
}

+ (Class)_serviceProviderForAssetType:(id)a3
{
  v4 = a3;
  if (_assetProviderFixture)
  {
    v5 = _assetProviderFixture;
LABEL_13:
    v8 = v5;
    goto LABEL_14;
  }

  v6 = [a1 _assetProviderForAssetType:v4];
  if (v6 > 2)
  {
    if (v6 == 3 || v6 == 4)
    {
      goto LABEL_12;
    }
  }

  else if (v6 == 1 || v6 == 2)
  {
LABEL_12:
    v5 = objc_opt_class();
    goto LABEL_13;
  }

  v7 = _LTOSLogAssets();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    +[_LTDAssetService _serviceProviderForAssetType:];
  }

  v8 = 0;
LABEL_14:

  return v8;
}

+ (void)downloadCatalogForAssetType:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [a1 _serviceProviderForAssetType:v9];
  if (v7)
  {
    [v7 downloadCatalogForAssetType:v9 completion:v6];
  }

  else if (v6)
  {
    v8 = [a1 _errorForAssetProviderResolutionForAssetType:v9];
    v6[2](v6, 0, v8);
  }
}

+ (void)_addSyntheticASREntriesToAssets:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v36 = 0;
  v24 = [_LTDAssetService queryAssetType:@"com.apple.speech.automaticspeechrecognition" filter:0 error:&v36];
  v4 = v36;
  if (!v4)
  {
LABEL_5:
    v22 = v4;
    v23 = v3;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v3;
    v8 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          if ([v12 assetType] == 2)
          {
            v13 = [v12 identifier];
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __52___LTDAssetService__addSyntheticASREntriesToAssets___block_invoke;
            v30[3] = &unk_2789B5AA8;
            v14 = v13;
            v31 = v14;
            v15 = [v24 lt_firstObjectPassingTest:v30];
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v16 = [v15 components];
            v17 = [v16 countByEnumeratingWithState:&v26 objects:v37 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v27;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v27 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  [v12 addComponentAsset:*(*(&v26 + 1) + 8 * j)];
                }

                v18 = [v16 countByEnumeratingWithState:&v26 objects:v37 count:16];
              }

              while (v18);
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v9);
    }

    v4 = v22;
    v3 = v23;
    goto LABEL_24;
  }

  v5 = [v24 count];
  v6 = _LTOSLogAssets();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      +[_LTDAssetService _addSyntheticASREntriesToAssets:];
    }

    goto LABEL_5;
  }

  if (v7)
  {
    +[_LTDAssetService _addSyntheticASREntriesToAssets:];
  }

LABEL_24:

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)queryAssetType:(id)a3 filter:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 _serviceProviderForAssetType:v8];
  if (v10)
  {
    v11 = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53___LTDAssetService_queryAssetType_filter_completion___block_invoke;
    v13[3] = &unk_2789B5AD0;
    v15 = v9;
    v16 = a1;
    v14 = v8;
    [v11 queryAssetType:v14 filter:a4 completion:v13];
  }

  else if (v9)
  {
    v12 = [a1 _errorForAssetProviderResolutionForAssetType:v8];
    (*(v9 + 2))(v9, 0, v12);
  }
}

+ (void)downloadAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v29 = v8;
  if ([v8 isInstalled])
  {
    if (v9)
    {
      v9[2](v9, v8);
    }

    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  else
  {
    v26 = v10;
    if ([v8 isAvailable])
    {
      v11 = [v8 progress];
      [v11 setOfflineState:1];

      if (v9)
      {
        v9[2](v9, v8);
      }
    }

    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = __Block_byref_object_copy__4;
    v44[4] = __Block_byref_object_dispose__4;
    v45 = 0;
    v12 = dispatch_group_create();
    v13 = _LTOSLogAssets();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v8 identifier];
      *buf = 138543362;
      v48 = v14;
      _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_DEFAULT, "Download of asset required: %{public}@", buf, 0xCu);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = [v8 components];
    v16 = [v15 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v16)
    {
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v40 + 1) + 8 * i);
          if ([v19 isInstalled])
          {
            v20 = [v19 progress];
            [v20 setOfflineState:2];

            if (v9)
            {
              v9[2](v9, v29);
            }
          }

          else
          {
            if (v9)
            {
              v9[2](v9, v29);
            }

            dispatch_group_enter(v12);
            v21 = [v19 managedAssetType];
            v22 = [a1 _serviceProviderForAssetType:v21];

            v23 = MEMORY[0x277D85DD0];
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __62___LTDAssetService_downloadAsset_options_progress_completion___block_invoke;
            v37[3] = &unk_2789B5AF8;
            v39 = v9;
            v38 = v29;
            v34[0] = v23;
            v34[1] = 3221225472;
            v34[2] = __62___LTDAssetService_downloadAsset_options_progress_completion___block_invoke_2;
            v34[3] = &unk_2789B5B20;
            v34[4] = v19;
            v36 = v44;
            v35 = v12;
            [v22 downloadAsset:v19 options:a4 progress:v37 completion:v34];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v16);
    }

    v24 = [a1 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62___LTDAssetService_downloadAsset_options_progress_completion___block_invoke_299;
    block[3] = &unk_2789B5B48;
    v31 = v29;
    v33 = v44;
    v32 = v26;
    dispatch_group_notify(v12, v24, block);

    _Block_object_dispose(v44, 8);
    v10 = v26;
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_awaitDownloadForAsset:(id)a3
{
  if (![a3 isTTSModel])
  {
    return 1;
  }

  return [a1 _awaitDownloadOfTTSAssets];
}

+ (void)downloadAssets:(id)a3 forLocales:(id)a4 options:(unint64_t)a5 progress:(id)a6 completion:(id)a7
{
  v91 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v45 = a4;
  v49 = a6;
  v46 = a7;
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v12 UUIDString];
  v14 = [v13 componentsSeparatedByString:@"-"];
  v50 = [v14 lastObject];

  v15 = _LTOSLogAssets();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    *buf = 138543618;
    *&buf[4] = v50;
    *&buf[12] = 2048;
    *&buf[14] = [v11 count];
    _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_DEFAULT, "Download %{public}@ start for %zd assets", buf, 0x16u);
  }

  v17 = _LTOSLogAssets();
  spid = os_signpost_id_generate(v17);
  v18 = _LTOSLogAssets();
  v19 = v18;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v20 = v50;
    v21 = [v50 UTF8String];
    *buf = 136315138;
    *&buf[4] = v21;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v19, OS_SIGNPOST_INTERVAL_BEGIN, spid, "downloadAssets", "%s", buf, 0xCu);
  }

  group = dispatch_group_create();
  v22 = [v11 lt_hasObjectPassingTest:&__block_literal_global_308];
  if ((v22 & 1) == 0)
  {
    v23 = _LTOSLogAssets();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v50;
      _os_log_impl(&dword_232E53000, v23, OS_LOG_TYPE_DEFAULT, "Download %{public}@ no missing assets detected", buf, 0xCu);
    }

    dispatch_group_enter(group);
    v24 = [a1 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74___LTDAssetService_downloadAssets_forLocales_options_progress_completion___block_invoke_309;
    block[3] = &unk_2789B5B70;
    v78 = group;
    dispatch_async(v24, block);
  }

  v25 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v88 = __Block_byref_object_copy__4;
  v89 = __Block_byref_object_dispose__4;
  v90 = 0;
  while (1)
  {
    v26 = v25 < [v11 count] ? v22 : 0;
    if ((v26 & 1) == 0)
    {
      break;
    }

    v27 = [v11 objectAtIndexedSubscript:v25];
    v28 = _LTOSLogAssets();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [v11 count];
      v30 = [v27 identifier];
      *v79 = 138544130;
      v80 = v50;
      v81 = 2048;
      v82 = v25 + 1;
      v83 = 2048;
      v84 = v29;
      v85 = 2114;
      v86 = v30;
      _os_log_impl(&dword_232E53000, v28, OS_LOG_TYPE_INFO, "Download %{public}@ start item %zd / %zd: %{public}@", v79, 0x2Au);
    }

    v31 = [a1 _awaitDownloadForAsset:v27];
    v32 = v31;
    if (v31)
    {
      dispatch_group_enter(group);
    }

    v33 = [a1 queue];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __74___LTDAssetService_downloadAssets_forLocales_options_progress_completion___block_invoke_310;
    v66[3] = &unk_2789B5BC0;
    v76 = v32;
    v73 = a5;
    v74 = a1;
    v67 = v27;
    v71 = v49;
    v68 = v50;
    v75 = v25;
    v69 = v11;
    v72 = buf;
    v70 = group;
    v34 = v27;
    dispatch_async(v33, v66);

    ++v25;
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __74___LTDAssetService_downloadAssets_forLocales_options_progress_completion___block_invoke_311;
  v58[3] = &unk_2789B5BE8;
  v64 = a1;
  v35 = v45;
  v59 = v35;
  v36 = v11;
  v60 = v36;
  v65 = v22 ^ 1;
  v37 = v50;
  v61 = v37;
  v38 = v46;
  v62 = v38;
  v63 = buf;
  v39 = MEMORY[0x238398770](v58);
  v40 = [a1 queue];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __74___LTDAssetService_downloadAssets_forLocales_options_progress_completion___block_invoke_317;
  v52[3] = &unk_2789B5C10;
  v53 = v37;
  v54 = v36;
  v56 = spid;
  v57 = a1;
  v55 = v39;
  v41 = v39;
  v42 = v36;
  v43 = v37;
  dispatch_group_notify(group, v40, v52);

  _Block_object_dispose(buf, 8);
  v44 = *MEMORY[0x277D85DE8];
}

+ (id)_symlinkPairNamesForLocales:(id)a3
{
  v4 = a3;
  v5 = +[_LTDLanguageAssetService selectedLocales];
  v6 = [v5 count];
  if (v6)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48___LTDAssetService__symlinkPairNamesForLocales___block_invoke;
    v11[3] = &unk_2789B5C38;
    v3 = &v12;
    v12 = v5;
    v7 = [v4 lt_filterUsingBlock:v11];
  }

  else
  {
    v7 = v4;
  }

  v8 = [MEMORY[0x277CE1B38] pairNamesForLocales:v7];
  v9 = [v8 _ltCompactMap:&__block_literal_global_323];

  if (v6)
  {
  }

  return v9;
}

+ (id)_symlinkAssetsForLocalePair:(id)a3 fromAssets:(id)a4
{
  v30[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 sourceLocale];
  v30[0] = v8;
  v9 = [v6 targetLocale];
  v30[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v28 = 0;
  v11 = [a1 filterAssets:v7 forLocales:v10 error:&v28];
  v12 = v28;

  if (v12)
  {
    v13 = _LTOSLogAssets();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[_LTDAssetService _symlinkAssetsForLocalePair:fromAssets:];
    }

    v14 = 0;
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__4;
    v26 = __Block_byref_object_dispose__4;
    v27 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __59___LTDAssetService__symlinkAssetsForLocalePair_fromAssets___block_invoke;
    v21[3] = &unk_2789B5C80;
    v21[4] = &v22;
    v15 = [v11 lt_filterUsingBlock:v21];
    v16 = v15;
    if (v23[5])
    {
      v17 = _LTOSLogAssets();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v23[5] assetName];
        [(_LTDAssetService *)v18 _symlinkAssetsForLocalePair:buf fromAssets:v17];
      }

      v14 = 0;
    }

    else
    {
      v14 = v15;
    }

    _Block_object_dispose(&v22, 8);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (void)purgeAsset:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21 = a4;
  if (([v6 isAvailable] & 1) == 0)
  {
    v7 = [v6 progress];
    [v7 setOfflineState:0];
  }

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__4;
  v33[4] = __Block_byref_object_dispose__4;
  v34 = 0;
  v8 = dispatch_group_create();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v6;
  v9 = [v6 components];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v10)
  {
    v11 = *v30;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [v13 managedAssetType];
        v15 = [a1 _serviceProviderForAssetType:v14];

        if (!v15)
        {
          if (v21)
          {
            v17 = [v13 managedAssetType];
            v18 = [a1 _errorForAssetProviderResolutionForAssetType:v17];

            v21[2](v21, 0, v18);
          }

          goto LABEL_14;
        }

        dispatch_group_enter(v8);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __42___LTDAssetService_purgeAsset_completion___block_invoke;
        v26[3] = &unk_2789B5CA8;
        v28 = v33;
        v27 = v8;
        [v15 purgeAsset:v13 completion:v26];
      }

      v10 = [v9 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = [a1 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___LTDAssetService_purgeAsset_completion___block_invoke_2;
  block[3] = &unk_2789B5CD0;
  v24 = v21;
  v25 = v33;
  v23 = v20;
  dispatch_group_notify(v8, v16, block);

  v9 = v24;
LABEL_14:

  _Block_object_dispose(v33, 8);
  v19 = *MEMORY[0x277D85DE8];
}

+ (void)bootstrapWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44___LTDAssetService_bootstrapWithCompletion___block_invoke;
  v6[3] = &unk_2789B5CF8;
  v7 = v4;
  v5 = v4;
  [a1 _refreshHotfixWithCompletion:v6];
}

+ (id)_libraryDirectory
{
  v2 = getuid();
  v3 = getpwuid(v2);
  if (v3 && (pw_dir = v3->pw_dir) != 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:pw_dir encoding:4];
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v7 = [v6 URLByAppendingPathComponent:@"Library" isDirectory:1];
  }

  else
  {
    v8 = _LTOSLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[(_LTDAssetService *)v8];
    }

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = 0;
    v7 = [v9 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:0 error:&v12];
    v5 = v12;

    if (v5)
    {
      v10 = _LTOSLogAssets();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[_LTDAssetService _libraryDirectory];
      }
    }
  }

  return v7;
}

+ (id)assetDirectoryURL
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37___LTDAssetService_assetDirectoryURL__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (assetDirectoryURL_onceToken != -1)
  {
    dispatch_once(&assetDirectoryURL_onceToken, block);
  }

  v2 = assetDirectoryURL__assetDirectoryURL;

  return v2;
}

+ (id)defaultCatalogTypeWithError:(id *)a3
{
  v10 = 0;
  v4 = [_LTDConfigurationService assetConfigurationWithError:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = _LTOSLogAssets();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[_LTDAssetService defaultCatalogTypeWithError:];
      if (a3)
      {
        goto LABEL_4;
      }
    }

    else if (a3)
    {
LABEL_4:
      v7 = v5;
      v8 = 0;
      *a3 = v5;
      goto LABEL_8;
    }

    v8 = 0;
  }

  else
  {
    v8 = [v4 currentSpeechTranslationAssetType];
  }

LABEL_8:

  return v8;
}

+ (void)_refreshHotfixWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _LTOSLogAssets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Trying to refresh hotfix asset", buf, 2u);
  }

  v5 = +[_LTHotfixManager shared];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49___LTDAssetService__refreshHotfixWithCompletion___block_invoke;
  v7[3] = &unk_2789B5D20;
  v8 = v3;
  v6 = v3;
  [v5 refreshHotfix:v7];
}

+ (void)configAssetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _LTOSLogAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Trying to download config asset", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46___LTDAssetService_configAssetWithCompletion___block_invoke;
  v7[3] = &unk_2789B5D70;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  [a1 catalogAssetsWithCompletion:v7];
}

+ (id)configAssetIfAvailableWithError:(id *)a3
{
  v19 = 0;
  v5 = [a1 catalogAssetsWithError:&v19];
  v6 = v19;
  if (!v6)
  {
    v11 = [_LTDAssetService filterConfigAssetFromAssets:v5];
    v12 = v11;
    if (v11)
    {
      if ([v11 isInstalled])
      {
        v10 = v12;
        v7 = 0;
LABEL_21:

        goto LABEL_22;
      }

      [a1 _installConfigAsset:v12 completion:0];
      v7 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:8 description:@"Not installed" userInfo:0];
      v16 = _LTOSLogAssets();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[_LTDAssetService configAssetIfAvailableWithError:];
        if (a3)
        {
          goto LABEL_14;
        }
      }

      else if (a3)
      {
LABEL_14:
        v17 = v7;
        v10 = 0;
        *a3 = v7;
        goto LABEL_21;
      }

LABEL_20:
      v10 = 0;
      goto LABEL_21;
    }

    v13 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:7 description:@"No config asset in result from sync catalog request" userInfo:0];
    v14 = _LTOSLogAssets();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __46___LTDAssetService_configAssetWithCompletion___block_invoke_cold_2();
      if (!a3)
      {
        goto LABEL_11;
      }
    }

    else if (!a3)
    {
LABEL_11:

      v7 = 0;
      goto LABEL_20;
    }

    v15 = v13;
    *a3 = v13;
    goto LABEL_11;
  }

  v7 = v6;
  v8 = _LTOSLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[_LTDAssetService configAssetIfAvailableWithError:];
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else if (a3)
  {
LABEL_4:
    v9 = v7;
    v10 = 0;
    *a3 = v7;
    goto LABEL_22;
  }

  v10 = 0;
LABEL_22:

  return v10;
}

+ (void)_installConfigAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isInstalled] & 1) != 0 || objc_msgSend(v6, "isDownloading"))
  {
    v8 = _LTOSLogAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_LTDAssetService _installConfigAsset:v8 completion:?];
      if (!v7)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    }

    if (v7)
    {
LABEL_5:
      (*(v7 + 2))(v7, 0, 0);
    }
  }

  else
  {
    v9 = _LTOSLogAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_LTDAssetService _installConfigAsset:v9 completion:v6];
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51___LTDAssetService__installConfigAsset_completion___block_invoke;
    v10[3] = &unk_2789B5D98;
    v12 = v7;
    v11 = v6;
    [a1 downloadAsset:v11 options:2 progress:0 completion:v10];
  }

LABEL_9:
}

+ (void)catalogAssetsWithCompletion:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [a1 defaultCatalogTypeWithError:&v9];
  v6 = v9;
  if (v6)
  {
    v4[2](v4, 0, v6);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48___LTDAssetService_catalogAssetsWithCompletion___block_invoke;
    v7[3] = &unk_2789B5DC0;
    v8 = v4;
    [a1 queryAssetType:v5 filter:1 completion:v7];
  }
}

+ (id)catalogAssetsWithError:(id *)a3
{
  v13 = 0;
  v5 = [a1 defaultCatalogTypeWithError:&v13];
  v6 = v13;
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v8 = [a1 queryAssetType:v5 filter:1 error:&v12];
  v7 = v12;
  if (!v7 || (v9 = _LTOSLogAssets(), !os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  +[_LTDAssetService catalogAssetsWithError:];
  if (a3)
  {
LABEL_7:
    v10 = v7;
    *a3 = v7;
  }

LABEL_8:

  return v8;
}

+ (void)installedAssetsWithCompletion:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [a1 defaultCatalogTypeWithError:&v9];
  v6 = v9;
  if (v6)
  {
    v4[2](v4, 0, v6);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50___LTDAssetService_installedAssetsWithCompletion___block_invoke;
    v7[3] = &unk_2789B5DC0;
    v8 = v4;
    [a1 queryAssetType:v5 filter:2 completion:v7];
  }
}

+ (id)installedAssetsWithError:(id *)a3
{
  v13 = 0;
  v5 = [a1 defaultCatalogTypeWithError:&v13];
  v6 = v13;
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v8 = [a1 queryAssetType:v5 filter:2 error:&v12];
  v7 = v12;
  if (!v7 || (v9 = _LTOSLogAssets(), !os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  +[_LTDAssetService installedAssetsWithError:];
  if (a3)
  {
LABEL_7:
    v10 = v7;
    *a3 = v7;
  }

LABEL_8:

  return v8;
}

+ (id)queryAssetType:(id)a3 filter:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v15 = 0;
  v9 = [objc_msgSend(a1 _serviceProviderForAssetType:{v8), "queryAssetType:filter:error:", v8, a4, &v15}];
  v10 = v15;
  if (v10)
  {
    v11 = _LTOSLogAssets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[_LTDAssetService queryAssetType:filter:error:];
      if (a5)
      {
        goto LABEL_4;
      }
    }

    else if (a5)
    {
LABEL_4:
      v12 = v10;
      v13 = 0;
      *a5 = v10;
      goto LABEL_10;
    }

    v13 = 0;
  }

  else
  {
    if ([a1 _assetProviderForAssetType:v8] == 2)
    {
      [a1 _addSyntheticASREntriesToAssets:v9];
    }

    v13 = [a1 _assetsSortedByVersion:v9];
  }

LABEL_10:

  return v13;
}

+ (id)filterConfigAssetFromAssets:(id)a3
{
  v4 = [a3 lt_filterUsingBlock:&__block_literal_global_349];
  if ([v4 count] > 1)
  {
    v6 = [a1 _assetsSortedByVersion:v4];
    v5 = [v6 firstObject];
  }

  else
  {
    v5 = [v4 firstObject];
  }

  return v5;
}

+ (id)_assetsIdentifiersForPairNames:(id)a3 error:(id *)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB58] set];
  v48 = 0;
  v35 = [_LTDConfigurationService offlineConfigurationWithError:&v48];
  v7 = v48;
  if (!v7)
  {
    v47 = 0;
    v12 = [_LTDConfigurationService asrConfigurationWithError:&v47];
    v8 = v47;
    if (!v8)
    {
      v32 = v5;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v5;
      v36 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
      if (v36)
      {
        v34 = *v44;
        do
        {
          v15 = 0;
          do
          {
            if (*v44 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v43 + 1) + 8 * v15);
            v38 = v15;
            v16 = [v37 componentsSeparatedByString:@"-"];
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v17 = [v16 countByEnumeratingWithState:&v39 objects:v53 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v40;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v40 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v39 + 1) + 8 * i);
                  v22 = [v12 localeIdentifiers];
                  v23 = [v22 containsObject:v21];

                  if (v23)
                  {
                    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASR-%@", v21];
                    [v6 addObject:v24];
                  }

                  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"TTS-%@", v21];
                  [v6 addObject:v25];
                }

                v18 = [v16 countByEnumeratingWithState:&v39 objects:v53 count:16];
              }

              while (v18);
            }

            v26 = [v35 offlinePairConfigurationWithIdentifier:v37];
            v27 = [v26 pairAssetList];
            v28 = _LTOSLogAssets();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543618;
              v50 = v27;
              v51 = 2114;
              v52 = v37;
              _os_log_debug_impl(&dword_232E53000, v28, OS_LOG_TYPE_DEBUG, "Adding assets [%{public}@] for pair %{public}@", buf, 0x16u);
            }

            [v6 addObjectsFromArray:v27];

            v15 = v38 + 1;
          }

          while (v38 + 1 != v36);
          v36 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
        }

        while (v36);
      }

      v29 = [v6 allObjects];
      v11 = [v29 sortedArrayUsingSelector:sel_compare_];

      v8 = 0;
      v5 = v32;
      goto LABEL_32;
    }

    v13 = _LTOSLogAssets();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[_LTDAssetService _assetsIdentifiersForPairNames:error:];
      if (a4)
      {
        goto LABEL_8;
      }
    }

    else if (a4)
    {
LABEL_8:
      v14 = v8;
      v11 = 0;
      *a4 = v8;
LABEL_32:

      goto LABEL_33;
    }

    v11 = 0;
    goto LABEL_32;
  }

  v8 = v7;
  v9 = _LTOSLogAssets();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[_LTDAssetService _assetsIdentifiersForPairNames:error:];
    if (a4)
    {
      goto LABEL_4;
    }
  }

  else if (a4)
  {
LABEL_4:
    v10 = v8;
    v11 = 0;
    *a4 = v8;
    goto LABEL_33;
  }

  v11 = 0;
LABEL_33:

  v30 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)assetsForLocales:(id)a3 includeTTS:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v19 = 0;
  v9 = [a1 catalogAssetsWithError:&v19];
  v10 = v19;
  if (v10)
  {
    v11 = v10;
    v12 = _LTOSLogAssets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[_LTDAssetService assetsForLocales:includeTTS:error:];
      if (a5)
      {
        goto LABEL_4;
      }
    }

    else if (a5)
    {
LABEL_4:
      v13 = v11;
      v14 = 0;
      *a5 = v11;
      goto LABEL_10;
    }

    v14 = 0;
  }

  else
  {
    if (v6)
    {
      v15 = [a1 _ttsAssetsForLocales:v8];
      v16 = [v9 arrayByAddingObjectsFromArray:v15];

      v9 = v16;
    }

    v18 = 0;
    v14 = [a1 filterAssets:v9 forLocales:v8 error:&v18];
    v11 = v18;
  }

LABEL_10:

  return v14;
}

+ (void)assetsForLocales:(id)a3 includeTTS:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59___LTDAssetService_assetsForLocales_includeTTS_completion___block_invoke;
  v12[3] = &unk_2789B5E10;
  v16 = a4;
  v14 = v9;
  v15 = a1;
  v13 = v8;
  v10 = v8;
  v11 = v9;
  [a1 catalogAssetsWithCompletion:v12];
}

+ (id)_ttsAssetsForLocales:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = MEMORY[0x277CCACA8];
        v9 = [*(*(&v17 + 1) + 8 * i) _ltLocaleIdentifier];
        v10 = [v8 stringWithFormat:@"TTS-%@", v9];

        v11 = [[_LTDTTSAssetModel alloc] initWithAssetIdentifier:v10];
        v12 = [[_LTDAssetModel alloc] initWithProvider:v11];
        if (v12)
        {
          [v16 addObject:v12];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)filterAssets:(id)a3 forLocales:(id)a4 error:(id *)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v44 = a4;
  v9 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v54;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v53 + 1) + 8 * i);
        v16 = [v15 identifier];
        [v9 setObject:v15 forKeyedSubscript:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v12);
  }

  v17 = v44;
  v18 = [MEMORY[0x277CE1B38] pairNamesForLocales:v44];
  v52 = 0;
  v19 = [a1 _assetsIdentifiersForPairNames:v18 error:&v52];
  v20 = v52;
  v21 = _LTOSLogAssets();
  v22 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[_LTDAssetService filterAssets:forLocales:error:];
      if (!a5)
      {
        goto LABEL_12;
      }
    }

    else if (!a5)
    {
LABEL_12:
      v24 = MEMORY[0x277CBEBF8];
      goto LABEL_35;
    }

    v23 = v20;
    *a5 = v20;
    goto LABEL_12;
  }

  v43 = v18;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v59 = v19;
    _os_log_impl(&dword_232E53000, v22, OS_LOG_TYPE_INFO, "Required Assets: %{public}@", buf, 0xCu);
  }

  v25 = +[_LTDANEService capability];
  v47 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v19, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v42 = v19;
  v26 = v19;
  v27 = [v26 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v49;
    v45 = v25;
    do
    {
      v30 = 0;
      do
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v48 + 1) + 8 * v30);
        v32 = [v9 objectForKeyedSubscript:v31];
        v33 = v32;
        if (v32)
        {
          v34 = [v32 assetType];
          if (v34 <= 0xB)
          {
            if (((1 << v34) & 0xC1C) != 0)
            {
              goto LABEL_23;
            }

            if (((1 << v34) & 0x300) != 0)
            {
              if ([v33 isANEModel])
              {
                v35 = [v33 requiredCapabilityIdentifier];
                if (v25 >= v35)
                {
                  v36 = v35;
                  v37 = [v47 objectForKeyedSubscript:v31];
                  v46 = [v37 requiredCapabilityIdentifier];

                  v25 = v45;
                  if (v36 > v46)
                  {
LABEL_23:
                    [v47 setObject:v33 forKeyedSubscript:v31];
                  }
                }
              }

              else
              {
                v38 = [v47 objectForKeyedSubscript:v31];

                if (!v38)
                {
                  goto LABEL_23;
                }
              }
            }
          }
        }

        ++v30;
      }

      while (v28 != v30);
      v39 = [v26 countByEnumeratingWithState:&v48 objects:v57 count:16];
      v28 = v39;
    }

    while (v39);
  }

  v24 = [v47 allValues];

  v18 = v43;
  v17 = v44;
  v20 = 0;
  v19 = v42;
LABEL_35:

  v40 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)matchingASRAssetForLocale:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v15 = 0;
  v8 = [a1 assetsForLocales:v7 includeTTS:1 error:&v15];
  v9 = v15;

  if (v9)
  {
    v10 = _LTOSLogAssets();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[_LTDAssetService matchingASRAssetForLocale:error:];
      if (a4)
      {
        goto LABEL_4;
      }
    }

    else if (a4)
    {
LABEL_4:
      v11 = v9;
      v12 = 0;
      *a4 = v9;
      goto LABEL_8;
    }

    v12 = 0;
  }

  else
  {
    v12 = [a1 matchingASRAssetInAssets:v8 forLocale:v6];
  }

LABEL_8:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)matchingASRAssetInAssets:(id)a3 forLocale:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 isASRModel] && objc_msgSend(v12, "supportsLocale:", v6))
        {
          v14 = _LTOSLogAssets();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v14;
            v16 = [v6 localeIdentifier];
            *buf = 138412546;
            v24 = v12;
            v25 = 2114;
            v26 = v16;
            _os_log_impl(&dword_232E53000, v15, OS_LOG_TYPE_DEFAULT, "Found matching ASR asset: %@ in assets for locale: %{public}@", buf, 0x16u);
          }

          v13 = v12;
          goto LABEL_14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)preflightCheckForLocalePair:(id)a3 withModelURLs:(id)a4
{
  v94 = *MEMORY[0x277D85DE8];
  v71 = a3;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v86 objects:v93 count:16];
  if (v6)
  {
    v7 = v6;
    v72 = 0;
    v8 = *v87;
    while (2)
    {
      v9 = v5;
      for (i = 0; i != v7; ++i)
      {
        if (*v87 != v8)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v86 + 1) + 8 * i);
        v12 = [v11 path];
        v13 = [MEMORY[0x277CCAA00] defaultManager];
        v14 = [v13 isReadableFileAtPath:v12];

        if ((v14 & 1) == 0)
        {
          v16 = _LTOSLogAssets();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            +[_LTDAssetService preflightCheckForLocalePair:withModelURLs:];
          }

          v17 = 0;
          v5 = v9;
          v18 = v9;
          v19 = v71;
          v20 = v72;
          goto LABEL_65;
        }

        if ([v12 containsString:@"/AssetsV"])
        {
          v15 = v11;

          v72 = v15;
        }
      }

      v5 = v9;
      v7 = [v9 countByEnumeratingWithState:&v86 objects:v93 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v72 = 0;
  }

  v19 = v71;
  v18 = [v71 canonicalIdentifier];
  v20 = v72;
  v21 = [v72 path];
  v22 = [v21 hasSuffix:v18];

  if (v22)
  {
    v23 = [v72 URLByAppendingPathComponent:@"mt-quasar-config.json"];
    v24 = [MEMORY[0x277CCAA00] defaultManager];
    v25 = [v23 path];
    v26 = [v24 isReadableFileAtPath:v25];

    if (v26)
    {
      v27 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v23];
      v85 = 0;
      v28 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v27 options:4 error:&v85];
      v29 = v85;
      if (v29)
      {
        v30 = _LTOSLogAssets();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          +[_LTDAssetService preflightCheckForLocalePair:withModelURLs:];
        }

        v17 = 0;
      }

      else
      {
        v33 = [v28 objectForKeyedSubscript:@"mt-decoders"];
        v34 = [v33 objectForKeyedSubscript:@"mt_app"];
        v35 = [v34 objectForKeyedSubscript:@"block-definitions"];

        if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v68 = v35;
          v36 = [v35 allKeys];
          v37 = [v36 countByEnumeratingWithState:&v81 objects:v92 count:16];
          if (v37)
          {
            v38 = *v82;
            v29 = 0;
            v62 = v28;
            v63 = v27;
            v58 = *v82;
            v59 = v36;
            v64 = v5;
            do
            {
              v39 = 0;
              v57 = v37;
              do
              {
                if (*v82 != v38)
                {
                  objc_enumerationMutation(v36);
                }

                v60 = v39;
                v40 = [v68 objectForKeyedSubscript:*(*(&v81 + 1) + 8 * v39)];
                v77 = 0u;
                v78 = 0u;
                v79 = 0u;
                v80 = 0u;
                v69 = v40;
                obj = [v40 allKeys];
                v66 = [obj countByEnumeratingWithState:&v77 objects:v91 count:16];
                if (v66)
                {
                  v67 = *v78;
                  do
                  {
                    for (j = 0; j != v66; ++j)
                    {
                      if (*v78 != v67)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v42 = *(*(&v77 + 1) + 8 * j);
                      if ([v42 containsString:@"-file"])
                      {
                        v61 = j;
                        v65 = [v69 objectForKeyedSubscript:v42];
                        v43 = [v65 componentsSeparatedByString:{@", "}];
                        v73 = 0u;
                        v74 = 0u;
                        v75 = 0u;
                        v76 = 0u;
                        v44 = v43;
                        v45 = [v44 countByEnumeratingWithState:&v73 objects:v90 count:16];
                        if (v45)
                        {
                          v46 = v45;
                          v47 = *v74;
                          while (2)
                          {
                            for (k = 0; k != v46; ++k)
                            {
                              if (*v74 != v47)
                              {
                                objc_enumerationMutation(v44);
                              }

                              v49 = [v72 URLByAppendingPathComponent:*(*(&v73 + 1) + 8 * k)];
                              v50 = [MEMORY[0x277CCAA00] defaultManager];
                              v51 = [v49 path];
                              v52 = [v50 isReadableFileAtPath:v51];

                              if ((v52 & 1) == 0)
                              {
                                v54 = _LTOSLogAssets();
                                v28 = v62;
                                v27 = v63;
                                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                                {
                                  [_LTDAssetService preflightCheckForLocalePair:v54 withModelURLs:v49];
                                }

                                v17 = 0;
                                v19 = v71;
                                v20 = v72;
                                v5 = v64;
                                v29 = 0;
                                v36 = v59;
                                goto LABEL_62;
                              }
                            }

                            v46 = [v44 countByEnumeratingWithState:&v73 objects:v90 count:16];
                            if (v46)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        v19 = v71;
                        v20 = v72;
                        v27 = v63;
                        v5 = v64;
                        j = v61;
                        v28 = v62;
                        v29 = 0;
                      }
                    }

                    v36 = v59;
                    v66 = [obj countByEnumeratingWithState:&v77 objects:v91 count:16];
                  }

                  while (v66);
                }

                v39 = v60 + 1;
                v38 = v58;
              }

              while (v60 + 1 != v57);
              v37 = [v36 countByEnumeratingWithState:&v81 objects:v92 count:16];
              v38 = v58;
              v17 = 1;
            }

            while (v37);
          }

          else
          {
            v17 = 1;
            v29 = 0;
          }

LABEL_62:
        }

        else
        {

          v53 = _LTOSLogAssets();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            +[_LTDAssetService preflightCheckForLocalePair:withModelURLs:];
          }

          v17 = 0;
          v29 = 0;
        }
      }
    }

    else
    {
      v32 = _LTOSLogAssets();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [_LTDAssetService preflightCheckForLocalePair:v32 withModelURLs:v23];
      }

      v17 = 0;
    }
  }

  else
  {
    v31 = _LTOSLogAssets();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [_LTDAssetService preflightCheckForLocalePair:v31 withModelURLs:v72];
    }

    v17 = 0;
  }

LABEL_65:

  v55 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (void)_assetProviderForAssetType:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(&dword_232E53000, v0, OS_LOG_TYPE_FAULT, "No asset provider defined for asset type: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_serviceProviderForAssetType:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(&dword_232E53000, v0, OS_LOG_TYPE_FAULT, "No service provider defined for asset type: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_addSyntheticASREntriesToAssets:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Synthetic ASR continuing with failure %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_addSyntheticASREntriesToAssets:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Synthetic ASR early return with failure %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_symlinkAssetsForLocalePair:fromAssets:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to filter assets %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_symlinkAssetsForLocalePair:(os_log_t)log fromAssets:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_232E53000, log, OS_LOG_TYPE_ERROR, "Filtered assets contains incomplete asset %{public}@", buf, 0xCu);
}

+ (void)_libraryDirectory
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to resolve library directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)defaultCatalogTypeWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Error reading asset configuration: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)configAssetIfAvailableWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Config asset catalog read failure: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)configAssetIfAvailableWithError:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Config asset not available: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_installConfigAsset:(void *)a1 completion:(void *)a2 .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 assetVersion];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "Config asset is outdated, downloading version %zd", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)catalogAssetsWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Error sync querying catalog assets: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)installedAssetsWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Error sync querying installed assets: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)queryAssetType:filter:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Asset sync query failure: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_assetsIdentifiersForPairNames:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Failed to read offline configuration for asset pairs %{public}@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_assetsIdentifiersForPairNames:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Failed to read offline ASR configuration for asset pairs %{public}@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)assetsForLocales:includeTTS:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Failed to read assets for locales %{public}@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)filterAssets:forLocales:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Failed to read assets for pair names %{public}@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)matchingASRAssetForLocale:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Failed to read assets for locale %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)preflightCheckForLocalePair:withModelURLs:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Preflight missing symlink at: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)preflightCheckForLocalePair:(void *)a1 withModelURLs:(void *)a2 .cold.2(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 path];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v5, v6, "Preflight MT URL does not match request locale pair: %{public}@ vs %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)preflightCheckForLocalePair:(void *)a1 withModelURLs:(void *)a2 .cold.3(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 path];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v5, v6, "Preflight missing quasar config at: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)preflightCheckForLocalePair:withModelURLs:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "Preflight read of MT config %{public}@ failed: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)preflightCheckForLocalePair:(void *)a1 withModelURLs:(void *)a2 .cold.5(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 path];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v5, v6, "Preflight missing file %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)preflightCheckForLocalePair:withModelURLs:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Preflight unexpected format for quasar config %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end