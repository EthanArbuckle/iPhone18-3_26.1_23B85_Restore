@interface VSMobileAssetsManager
+ (BOOL)isVoiceAssetWellDefined:(id)a3;
+ (id)bundleIdentifierForVoiceType:(int64_t)a3;
+ (id)downloadOptionsWithBattery:(BOOL)a3;
+ (id)getLatestAssetFromArray:(id)a3;
+ (id)pickCorrectAssetFromLocalAssets:(id)a3;
+ (id)preinstallAssetsDirectory;
+ (id)queryForLanguage:(id)a3 forType:(int64_t)a4 voiceName:(id)a5 gender:(int64_t)a6 footprint:(int64_t)a7 returnTypes:(int64_t)a8;
+ (id)queryForVoiceResourceAsset:(id)a3 returnTypes:(int64_t)a4;
+ (id)sharedManager;
+ (id)voiceResourceFromAsset:(id)a3;
+ (int64_t)typeFromBundleIdentifier:(id)a3;
- (BOOL)migrateAssetsWithProgress:(id)a3;
- (BOOL)shouldDownloadTrialResource:(id)a3;
- (BOOL)shouldDownloadTrialVoice:(id)a3;
- (VSMobileAssetsManager)init;
- (id)_builtInVoiceForLanguage:(id)a3;
- (id)_getResults:(id)a3;
- (id)_getVoiceAssetsForType:(int64_t)a3 voiceName:(id)a4 language:(id)a5 gender:(int64_t)a6 footprint:(int64_t)a7 returnTypes:(int64_t)a8;
- (id)_installedVoiceResourceAssetForLanguage:(id)a3;
- (id)_localVoiceForLanguageAndNamePath:(id)a3;
- (id)_mobileAssetVoiceForLanguage:(id)a3 name:(id)a4 type:(int64_t)a5 gender:(int64_t)a6 footprint:(int64_t)a7;
- (id)_mobileAssetVoiceResourceWithLanguage:(id)a3;
- (id)_trialVoiceResourceWithLanguage:(id)a3;
- (id)_trialVoiceWithLanguage:(id)a3 name:(id)a4 type:(int64_t)a5 footprint:(int64_t)a6;
- (id)activeVoiceAssets;
- (id)builtInVoices;
- (id)candidateToDownloadForVoice:(id)a3;
- (id)cleanUnusedAssets;
- (id)definedVoicesForLanguage:(id)a3 voiceName:(id)a4 type:(int64_t)a5 footprint:(int64_t)a6;
- (id)downloadCatalog:(id)a3 options:(id)a4;
- (id)inactiveVoiceAssets;
- (id)installedAssetsForType:(int64_t)a3 voicename:(id)a4 language:(id)a5 gender:(int64_t)a6 footprint:(int64_t)a7;
- (id)installedLocalVoices;
- (id)installedTrialVoiceResources;
- (id)installedTrialVoicesForType:(int64_t)a3 voiceName:(id)a4 language:(id)a5 footprint:(int64_t)a6;
- (id)installedVoiceResources;
- (id)preferredDownloadForVoice:(id)a3;
- (id)preinstallAssetsMetadata;
- (id)preinstalledVoicesForLanguage:(id)a3 gender:(int64_t)a4 name:(id)a5;
- (id)purgeAsset:(id)a3;
- (id)selectPreinstalledVoiceForLanguage:(id)a3 gender:(int64_t)a4 name:(id)a5;
- (id)selectVoiceForLang:(id)a3 name:(id)a4 type:(int64_t)a5 gender:(int64_t)a6 footprint:(int64_t)a7;
- (id)selectVoiceResourceAssetForLanguage:(id)a3;
- (id)voiceAssetFromPreinstallMetadata:(id)a3;
- (id)voiceAssetsForSubscription:(id)a3;
- (id)voiceDataFromAsset:(id)a3;
- (id)voiceDataWithBundleIdentifier:(id)a3 attributes:(id)a4 voicePathCallback:(id)a5;
- (void)_downloadAsset:(id)a3 options:(id)a4 progress:(id)a5 completion:(id)a6;
- (void)_purgeMobileAsset:(id)a3;
- (void)_removeTrialVoices:(id)a3 completion:(id)a4;
- (void)cancelDownload:(id)a3 completion:(id)a4;
- (void)cancelDownloads:(id)a3 completion:(id)a4;
- (void)cleanMobileAssetVoiceResourcesWithActiveLanguages:(id)a3;
- (void)cleanOldMobileAssetVoiceResources;
- (void)downloadCatalog:(id)a3 options:(id)a4 completion:(id)a5;
- (void)downloadTrialVoiceResource:(id)a3 options:(id)a4 completion:(id)a5;
- (void)downloadVoiceAsset:(id)a3 options:(id)a4 progressUpdateHandler:(id)a5;
- (void)downloadVoiceResource:(id)a3 completion:(id)a4;
- (void)migrateAssetIfNeededWithAssetType:(id)a3;
- (void)removeMobileAssetVoiceResource:(id)a3 completion:(id)a4;
- (void)removeTrialVoice:(id)a3 completion:(id)a4;
- (void)removeTrialVoiceResource:(id)a3 completion:(id)a4;
- (void)removeVoiceAsset:(id)a3 completion:(id)a4;
- (void)removeVoiceResource:(id)a3 completion:(id)a4;
- (void)resetCache;
- (void)resetResourcesCache;
@end

@implementation VSMobileAssetsManager

- (id)voiceDataWithBundleIdentifier:(id)a3 attributes:(id)a4 voicePathCallback:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(VSVoiceAsset);
  [(VSAssetBase *)v10 setStorage:2];
  [(VSAssetBase *)v10 setBundleIdentifier:v9];
  v11 = [VSMobileAssetsManager typeFromBundleIdentifier:v9];

  [(VSVoiceAsset *)v10 setType:v11];
  if (v7)
  {
    [(VSVoiceAsset *)v10 amendNameVersionAndSizeWithMobileAssetAttributes:v7];
    if (v11 == 1)
    {
      v12 = [v7 objectForKeyedSubscript:@"Language"];

      if (v12)
      {
        v13 = [v7 objectForKeyedSubscript:@"Language"];
        v25[0] = v13;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
        [(VSVoiceAsset *)v10 setLanguages:v14];

LABEL_16:
        goto LABEL_17;
      }
    }

    v15 = [v7 objectForKeyedSubscript:@"Gender"];
    [(VSVoiceAsset *)v10 setGender:[VSVoiceAsset genderFromString:v15]];

    v16 = [VSVoiceAsset languagesFromMobileAssetAttributes:v7];
    [(VSVoiceAsset *)v10 setLanguages:v16];

    v17 = [v7 objectForKeyedSubscript:@"Footprint"];
    [(VSVoiceAsset *)v10 setFootprint:[VSVoiceAsset footprintFromString:v17]];

    v18 = [v7 objectForKeyedSubscript:@"Type"];

    if (v18)
    {
      v19 = [v7 objectForKeyedSubscript:@"Type"];
      [(VSVoiceAsset *)v10 setType:[VSVoiceAsset typeFromString:v19]];
    }

    if ([(VSVoiceAsset *)v10 type]== 4)
    {
      if (v8)
      {
        v13 = v8[2](v8);
        if (v13)
        {
          v20 = [VSNeuralTTSUtils isNeuralVoiceReady:v13];
        }

        else
        {
          v20 = 0;
        }

        [(VSVoiceAsset *)v10 setIsVoiceReadyToUse:v20];
        goto LABEL_16;
      }

      v21 = v10;
      v22 = 0;
    }

    else
    {
      v21 = v10;
      v22 = 1;
    }

    [(VSVoiceAsset *)v21 setIsVoiceReadyToUse:v22];
  }

LABEL_17:

  v23 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)voiceDataFromAsset:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 assetType];
    v7 = [v5 attributes];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__VSMobileAssetsManager_voiceDataFromAsset___block_invoke;
    v11[3] = &unk_279E4EEF0;
    v8 = v5;
    v12 = v8;
    v9 = [(VSMobileAssetsManager *)self voiceDataWithBundleIdentifier:v6 attributes:v7 voicePathCallback:v11];

    [v9 setIsInstalled:{objc_msgSend(v8, "wasLocal")}];
    [v9 setIsPurgeable:{objc_msgSend(v8, "wasPurgeable")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __44__VSMobileAssetsManager_voiceDataFromAsset___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) getLocalUrl];
  v2 = [v1 path];

  return v2;
}

- (id)installedLocalVoices
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v26 = 0;
  v4 = [v3 contentsOfDirectoryAtPath:@"/private/var/mobile/Library/VoiceServices/voices/" error:&v26];
  v5 = v26;

  if (!v5)
  {
    v20 = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = v7;
    v21 = self;
    v18 = 0;
    v19 = v4;
    v9 = *v23;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 componentsSeparatedByString:{@"_", v18, v19}];
        if ([v12 count] == 2)
        {
          v13 = [v12 firstObject];
          if ([v13 length])
          {
            v14 = [v12 lastObject];
            v15 = [v14 length];

            if (!v15)
            {
              goto LABEL_16;
            }

            v13 = [(VSMobileAssetsManager *)v21 _localVoiceForLanguageAndNamePath:v11];
            if (v13)
            {
              [v20 addObject:v13];
            }
          }
        }

LABEL_16:
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (!v8)
      {
        v5 = v18;
        v4 = v19;
        goto LABEL_19;
      }
    }
  }

  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v29 = v5;
    _os_log_error_impl(&dword_272850000, v6, OS_LOG_TYPE_ERROR, "Unable to query local voice directory, %@", buf, 0xCu);
  }

  v20 = MEMORY[0x277CBEBF8];
LABEL_19:

  v16 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_localVoiceForLanguageAndNamePath:(id)a3
{
  v31[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v31[0] = @"/private/var/mobile/Library/VoiceServices/voices/";
  v31[1] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v7 = [v5 pathWithComponents:v6];

  v8 = MEMORY[0x277CCACA8];
  v30[0] = v7;
  v30[1] = @"AssetData";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v10 = [v8 pathWithComponents:v9];

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  if (v12)
  {
    v13 = objc_alloc_init(VSVoiceAssetSelection);
    [(VSVoiceAssetSelection *)v13 setBuiltInVoicePath:v10];
    v14 = MEMORY[0x277CBEAC0];
    v15 = MEMORY[0x277CCACA8];
    v29[0] = v7;
    v29[1] = @"Info.plist";
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v17 = [v15 pathWithComponents:v16];
    v18 = [v14 dictionaryWithContentsOfFile:v17];

    v19 = [v18 objectForKeyedSubscript:@"CFBundleIdentifier"];
    v20 = [v18 objectForKeyedSubscript:@"MobileAssetProperties"];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __59__VSMobileAssetsManager__localVoiceForLanguageAndNamePath___block_invoke;
    v27 = &unk_279E4EEF0;
    v28 = v10;
    v21 = [(VSMobileAssetsManager *)self voiceDataWithBundleIdentifier:v19 attributes:v20 voicePathCallback:&v24];

    [v21 setIsInstalled:{1, v24, v25, v26, v27}];
    [v21 setMasteredVersion:@"local_voice"];
    [(VSVoiceAssetSelection *)v13 setVoiceData:v21];
  }

  else
  {
    v13 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_builtInVoiceForLanguage:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0;
  v4 = VSVocalizerCopyPathForBuiltInVoice(v3, &v11);
  v5 = v11;
  if (v4)
  {
    v6 = objc_alloc_init(VSVoiceAssetSelection);
    [(VSVoiceAssetSelection *)v6 setBuiltInVoicePath:v4];
    v7 = objc_alloc_init(VSVoiceAsset);
    [(VSAssetBase *)v7 setStorage:1];
    [(VSVoiceAsset *)v7 setIsInstalled:1];
    [(VSVoiceAsset *)v7 setIsBuiltInVoice:1];
    [(VSVoiceAsset *)v7 setType:1];
    v12 = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    [(VSVoiceAsset *)v7 setLanguages:v8];

    [(VSVoiceAsset *)v7 setFootprint:1];
    [(VSVoiceAsset *)v7 setIsVoiceReadyToUse:1];
    [(VSVoiceAssetSelection *)v6 setVoiceData:v7];
  }

  else
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v3;
      _os_log_error_impl(&dword_272850000, &v7->super.super, OS_LOG_TYPE_ERROR, "#MobileAsset Couldn't find any built-in voice for language: %{public}@", buf, 0xCu);
    }

    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_purgeMobileAsset:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 state];
  if (v4 <= 3)
  {
    if (v4 >= 2)
    {
      if ((v4 - 2) >= 2)
      {
        goto LABEL_26;
      }

LABEL_8:
      v5 = VSGetLogEvent();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v3 attributes];
        v18 = 138543362;
        v19 = v6;
        _os_log_impl(&dword_272850000, v5, OS_LOG_TYPE_DEFAULT, "#MobileAsset purge asset: %{public}@", &v18, 0xCu);
      }

      v7 = [v3 purgeSync];
      if (v7)
      {
        v8 = v7;
        v9 = VSGetLogDefault();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = MEMORY[0x2743CE5E0](v8);
          v18 = 138412290;
          v19 = v10;
          v11 = "#MobileAsset purge error: %@";
LABEL_20:
          _os_log_error_impl(&dword_272850000, v9, OS_LOG_TYPE_ERROR, v11, &v18, 0xCu);
LABEL_24:

          goto LABEL_25;
        }

        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v9 = VSGetLogEvent();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v10 = [v3 attributes];
    v18 = 138543362;
    v19 = v10;
    v12 = "#MobileAsset Purge cannot find asset: %{public}@";
    goto LABEL_23;
  }

  if (v4 != 4)
  {
    if (v4 != 5)
    {
      if (v4 != 6)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    v9 = VSGetLogEvent();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v10 = [v3 attributes];
    v18 = 138543362;
    v19 = v10;
    v12 = "#MobileAsset not removed because it is required by the OS: %{public}@";
LABEL_23:
    _os_log_impl(&dword_272850000, v9, OS_LOG_TYPE_DEFAULT, v12, &v18, 0xCu);
    goto LABEL_24;
  }

  v13 = VSGetLogEvent();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v3 attributes];
    v18 = 138543362;
    v19 = v14;
    _os_log_impl(&dword_272850000, v13, OS_LOG_TYPE_DEFAULT, "#MobileAsset cancel downloading asset: %{public}@", &v18, 0xCu);
  }

  v15 = [v3 cancelDownloadSync];
  if (v15)
  {
    v16 = v15;
    v9 = VSGetLogEvent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x2743CE5B0](v16);
      v18 = 138412290;
      v19 = v10;
      v11 = "#MobileAsset Cancel download error: %@";
      goto LABEL_20;
    }

LABEL_25:
  }

LABEL_26:

  v17 = *MEMORY[0x277D85DE8];
}

- (id)purgeAsset:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v5 = [v4 asset];

  if (v5)
  {
    v6 = [v4 asset];
    [(VSMobileAssetsManager *)self _purgeMobileAsset:v6];
  }

  else
  {
    v7 = dispatch_semaphore_create(0);
    v8 = [v4 voiceData];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __36__VSMobileAssetsManager_purgeAsset___block_invoke;
    v12[3] = &unk_279E4ECD8;
    v14 = &v15;
    v6 = v7;
    v13 = v6;
    [(VSMobileAssetsManager *)self removeTrialVoice:v8 completion:v12];

    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"com.apple.voiceservices.notification.voice-purge" object:v4];

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __36__VSMobileAssetsManager_purgeAsset___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_downloadAsset:(id)a3 options:(id)a4 progress:(id)a5 completion:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __68__VSMobileAssetsManager__downloadAsset_options_progress_completion___block_invoke;
  v37[3] = &unk_279E4EEA8;
  v13 = v11;
  v38 = v13;
  v14 = MEMORY[0x2743CEF70](v37);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __68__VSMobileAssetsManager__downloadAsset_options_progress_completion___block_invoke_2;
  v34[3] = &unk_279E4EE80;
  v15 = v9;
  v35 = v15;
  v16 = v12;
  v36 = v16;
  v17 = MEMORY[0x2743CEF70](v34);
  v18 = [v15 state];
  if (v18 <= 6)
  {
    if (((1 << v18) & 0x6C) != 0)
    {
      v19 = VSGetLogEvent();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v15 attributes];
        *buf = 138543362;
        v42 = v20;
        _os_log_impl(&dword_272850000, v19, OS_LOG_TYPE_DEFAULT, "#MobileAsset download skipped, asset is already installed: %{public}@", buf, 0xCu);
      }

      if (v16)
      {
        (*(v16 + 2))(v16, 0);
      }
    }

    else if (((1 << v18) & 0x12) != 0)
    {
      v21 = [v15 state];
      v22 = VSGetLogEvent();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v21 == 1)
      {
        if (v23)
        {
          if ([v10 discretionary])
          {
            v24 = @"discretionary";
          }

          else
          {
            v24 = @"immediate";
          }

          v25 = [v10 allowsCellularAccess];
          v26 = [v15 attributes];
          *buf = 138412802;
          v42 = v24;
          v43 = 1024;
          v44 = v25;
          v45 = 2112;
          v46 = v26;
          _os_log_impl(&dword_272850000, v22, OS_LOG_TYPE_DEFAULT, "#MobileAsset Begin %@ download, allowing cellular %{BOOL}d: %@", buf, 0x1Cu);
        }
      }

      else if (v23)
      {
        v32 = [v15 attributes];
        *buf = 138543362;
        v42 = v32;
        _os_log_impl(&dword_272850000, v22, OS_LOG_TYPE_DEFAULT, "#MobileAsset Asset is already downloading: %{public}@", buf, 0xCu);
      }

      if (v13)
      {
        [v15 attachProgressCallBack:v14];
      }

      [v15 startDownload:v10 then:v17];
    }

    else
    {
      v27 = VSGetLogEvent();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v15 attributes];
        *buf = 138543362;
        v42 = v28;
        _os_log_impl(&dword_272850000, v27, OS_LOG_TYPE_DEFAULT, "#MobileAsset download skipped, asset is in an unknown state: %{public}@", buf, 0xCu);
      }

      if (v16)
      {
        v29 = MEMORY[0x277CCA9B8];
        v39 = *MEMORY[0x277CCA450];
        v40 = @"Asset is in an unknown state";
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v31 = [v29 errorWithDomain:@"VSMobileAssetServiceErrorDomain" code:-5000 userInfo:v30];
        (*(v16 + 2))(v16, v31);
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __68__VSMobileAssetsManager__downloadAsset_options_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v8 = v3;
    v4 = -1.0;
    if (([v3 isStalled] & 1) == 0)
    {
      [v8 expectedTimeRemaining];
      v4 = v5;
    }

    if ([v8 totalExpected] < 1)
    {
      v6.n128_u64[0] = 0;
    }

    else
    {
      v7 = [v8 totalWritten];
      v6.n128_f32[0] = v7 / [v8 totalExpected];
    }

    (*(*(a1 + 32) + 16))(v4, v6);
    v3 = v8;
  }
}

void __68__VSMobileAssetsManager__downloadAsset_options_progress_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = VSGetLogEvent();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x2743CE5C0](a2);
      v12 = [*(a1 + 32) attributes];
      *buf = 138412546;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_error_impl(&dword_272850000, v5, OS_LOG_TYPE_ERROR, "#MobileAsset err %@, unable to download asset %{public}@", buf, 0x16u);
    }

    v6 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"Unable to download asset";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v7 = [v6 errorWithDomain:@"VSMobileAssetServiceErrorDomain" code:a2 userInfo:v5];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) attributes];
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_272850000, v5, OS_LOG_TYPE_DEFAULT, "#MobileAsset Finished downloading asset %{public}@", buf, 0xCu);
    }

    v7 = 0;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)downloadCatalog:(id)a3 options:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277D28A10]);
    [v8 setAllowsCellularAccess:{+[VSUtilities isWatch](VSUtilities, "isWatch") ^ 1}];
    [v8 setDiscretionary:0];
  }

  v10 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:v7];
  v11 = [v10 lastFetchDate];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [v10 lastFetchDate];
  [v13 timeIntervalSinceDate:v14];
  v16 = v15;

  if (v16 >= 3600.0)
  {
LABEL_5:
    v17 = MEMORY[0x277D289C0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__VSMobileAssetsManager_downloadCatalog_options_completion___block_invoke;
    v18[3] = &unk_279E4EE80;
    v19 = v7;
    v20 = v9;
    [v17 startCatalogDownload:v19 options:v8 then:v18];
  }
}

void __60__VSMobileAssetsManager_downloadCatalog_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = VSGetLogEvent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = MEMORY[0x2743CE5C0](v2);
      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_error_impl(&dword_272850000, v4, OS_LOG_TYPE_ERROR, "#MobileAsset Catalog '%@' download error: %@", buf, 0x16u);
    }

    v5 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"Unable to download catalog";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v2 = [v5 errorWithDomain:@"VSMobileAssetServiceErrorDomain" code:v2 userInfo:v6];
  }

  v7 = [MEMORY[0x277CBEB88] currentRunLoop];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.1];
  [v7 runUntilDate:v8];

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v2);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)downloadCatalog:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v8 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__VSMobileAssetsManager_downloadCatalog_options___block_invoke;
  v12[3] = &unk_279E4ECD8;
  v14 = &v15;
  v9 = v8;
  v13 = v9;
  [(VSMobileAssetsManager *)self downloadCatalog:v6 options:v7 completion:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __49__VSMobileAssetsManager_downloadCatalog_options___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_getVoiceAssetsForType:(int64_t)a3 voiceName:(id)a4 language:(id)a5 gender:(int64_t)a6 footprint:(int64_t)a7 returnTypes:(int64_t)a8
{
  v9 = [VSMobileAssetsManager queryForLanguage:a5 forType:a3 voiceName:a4 gender:a6 footprint:a7 returnTypes:a8];
  v10 = [(VSMobileAssetsManager *)self _getResults:v9];

  return v10;
}

- (id)_getResults:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v4 = dispatch_semaphore_create(0);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __37__VSMobileAssetsManager__getResults___block_invoke;
  v20 = &unk_279E4EE58;
  v22 = &v23;
  v5 = v4;
  v21 = v5;
  [v3 queryMetaData:&v17];
  v6 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v3 assetType];
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&dword_272850000, v7, OS_LOG_TYPE_INFO, "#MobileAsset ERROR query '%@', timeout after 1 sec", buf, 0xCu);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if (v24[3])
    {
      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v3 assetType];
        v12 = MEMORY[0x2743CE5F0](v24[3]);
        *buf = 138412546;
        v28 = v11;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&dword_272850000, v10, OS_LOG_TYPE_INFO, "#MobileAsset WARNING query '%@', error: %@", buf, 0x16u);
      }
    }

    v13 = [v3 results];
    v7 = v13;
    v14 = MEMORY[0x277CBEBF8];
    if (v13)
    {
      v14 = v13;
    }

    v9 = v14;
  }

  _Block_object_dispose(&v23, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)removeVoiceResource:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__VSMobileAssetsManager_removeVoiceResource_completion___block_invoke;
  v10[3] = &unk_279E4EE30;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(VSMobileAssetsManager *)self removeTrialVoiceResource:v9 completion:v10];
}

- (void)removeMobileAssetVoiceResource:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [VSMobileAssetsManager queryForVoiceResourceAsset:a3 returnTypes:2];
  v8 = [(VSMobileAssetsManager *)self _getResults:v7];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(VSMobileAssetsManager *)self _purgeMobileAsset:*(*(&v14 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  if (v6)
  {
    v6[2](v6, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeTrialVoiceResource:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [VSTrialVoiceResource alloc];
  v9 = [v7 languages];

  v10 = [v9 firstObject];
  v11 = [(VSTrialVoiceResource *)v8 initWithLanguage:v10];

  [(VSTrialService *)self->_trialService removeVoiceResource:v11 completion:v6];
}

- (void)downloadTrialVoiceResource:(id)a3 options:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = VSGetLogEvent();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v8;
    _os_log_impl(&dword_272850000, v11, OS_LOG_TYPE_DEFAULT, "#Trial Enqueue downloading resource: %@", buf, 0xCu);
  }

  v12 = objc_alloc_init(VSDownloadOptions);
  -[VSDownloadOptions setAllowDiscretionary:](v12, "setAllowDiscretionary:", [v10 discretionary]);
  v13 = [v10 allowsCellularAccess];

  [(VSDownloadOptions *)v12 setAllowCellularData:v13];
  trialService = self->_trialService;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__VSMobileAssetsManager_downloadTrialVoiceResource_options_completion___block_invoke;
  v19[3] = &unk_279E4EDB8;
  v20 = v8;
  v21 = self;
  v22 = v12;
  v23 = v9;
  v15 = v12;
  v16 = v9;
  v17 = v8;
  [(VSTrialService *)trialService downloadNamespaceImmediatelyIfNeededWithOption:v15 completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __71__VSMobileAssetsManager_downloadTrialVoiceResource_options_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = VSGetLogEvent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = 138412546;
      v18 = v16;
      v19 = 2112;
      v20 = v4;
      _os_log_error_impl(&dword_272850000, v5, OS_LOG_TYPE_ERROR, "#Trial Error downloading resource: %@, error: %@", &v17, 0x16u);
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_12:
      v7();
    }
  }

  else if ([*(a1 + 40) shouldDownloadTrialResource:*(a1 + 32)])
  {
    v8 = VSGetLogEvent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_272850000, v8, OS_LOG_TYPE_DEFAULT, "#Trial Start downloading for: %@", &v17, 0xCu);
    }

    v10 = [VSTrialVoiceResource alloc];
    v11 = [*(a1 + 32) languages];
    v12 = [v11 firstObject];
    v13 = [(VSTrialVoiceResource *)v10 initWithLanguage:v12];

    [*(*(a1 + 40) + 32) downloadVoiceResource:v13 withOptions:*(a1 + 48) progress:0 completion:*(a1 + 56)];
  }

  else
  {
    v14 = *(a1 + 56);
    if (v14)
    {
      v7 = *(v14 + 16);
      goto LABEL_12;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)downloadVoiceResource:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [VSMobileAssetsManager downloadOptionsWithBattery:1];
  [(VSMobileAssetsManager *)self downloadVoiceResource:v7 options:v8 completion:v6];
}

- (BOOL)shouldDownloadTrialResource:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  trialService = self->_trialService;
  v6 = [v4 languages];
  v7 = [v6 firstObject];
  v8 = [(VSTrialService *)trialService definedVoiceResourcesWithLanguage:v7];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v10)
  {

LABEL_16:
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v4;
      _os_log_error_impl(&dword_272850000, v12, OS_LOG_TYPE_ERROR, "#Trial Cannot find any Trial resource, skip downloading. Target resource: %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v31;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v31 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v30 + 1) + 8 * i);
      v16 = [v15 version];
      if (v16 > [v12 version])
      {
        v17 = v15;

        v12 = v17;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
  }

  while (v11);

  if (!v12)
  {
    goto LABEL_16;
  }

  if (![v12 isLocal])
  {
    v22 = [v4 languages];
    v23 = [v22 firstObject];
    v24 = [(VSMobileAssetsManager *)self _mobileAssetVoiceResourceWithLanguage:v23];

    v19 = v24 == 0;
    if (v24)
    {
      v25 = [v12 version];
      v26 = [v24 contentVersion];
      v27 = [v26 integerValue];

      if (v25 > v27)
      {
        v19 = 1;
LABEL_29:

        goto LABEL_19;
      }

      v28 = VSGetLogDefault();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v4;
        v29 = "#Trial Found same or newer resource in MobileAsset, skip downloading. Target resource: %@";
        goto LABEL_27;
      }
    }

    else
    {
      v28 = VSGetLogDefault();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v4;
        v29 = "#Trial No MobileAsset resource found, will download Trial resource. Target resource: %@";
LABEL_27:
        _os_log_impl(&dword_272850000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0xCu);
      }
    }

    goto LABEL_29;
  }

  v18 = VSGetLogDefault();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v12;
    _os_log_impl(&dword_272850000, v18, OS_LOG_TYPE_DEFAULT, "#Trial Found local resource, skip downloading. Target resource: %@", buf, 0xCu);
  }

LABEL_18:
  v19 = 0;
LABEL_19:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)removeVoiceAsset:(id)a3 completion:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = VSGetLogEvent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 description];
      *buf = 138543362;
      v37 = v10;
      _os_log_impl(&dword_272850000, v9, OS_LOG_TYPE_DEFAULT, "Removing voice: %{public}@", buf, 0xCu);
    }

    v11 = [v6 type];
    v12 = [v6 name];
    v13 = [v6 languages];
    v14 = [v13 firstObject];
    v15 = -[VSMobileAssetsManager installedAssetsForType:voicename:language:gender:footprint:](self, "installedAssetsForType:voicename:language:gender:footprint:", v11, v12, v14, [v6 gender], objc_msgSend(v6, "footprint"));

    v16 = MEMORY[0x277CCAC30];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __53__VSMobileAssetsManager_removeVoiceAsset_completion___block_invoke;
    v33[3] = &unk_279E4EE08;
    v17 = v6;
    v34 = v17;
    v18 = [v16 predicateWithBlock:v33];
    v19 = [v15 filteredArrayUsingPredicate:v18];

    if (![v19 count])
    {
      v20 = VSGetLogEvent();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v17 description];
        *buf = 138412290;
        v37 = v21;
        _os_log_impl(&dword_272850000, v20, OS_LOG_TYPE_DEFAULT, "Asset not removed because it is not present: %@", buf, 0xCu);
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v19;
    v23 = [v22 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v30;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(v22);
          }

          if (!v25)
          {
            v25 = [(VSMobileAssetsManager *)self purgeAsset:*(*(&v29 + 1) + 8 * i), v29];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v24);
    }

    else
    {
      v25 = 0;
    }

    if (v8)
    {
      (v8)[2](v8, v25);
    }
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __53__VSMobileAssetsManager_removeVoiceAsset_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) masteredVersion];
  if (v4 && (v5 = v4, [v3 asset], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [v3 asset];
    v8 = [v7 attributes];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D28918]];
    v10 = [*(a1 + 32) masteredVersion];
    v11 = [v9 isEqualToString:v10];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)removeTrialVoice:(id)a3 completion:(id)a4
{
  trialService = self->_trialService;
  v7 = a4;
  v8 = a3;
  v9 = [v8 languages];
  v10 = [v9 firstObject];
  v11 = [v8 name];
  v12 = [v8 type];
  v13 = [v8 footprint];

  v16 = [(VSTrialService *)trialService definedVoicesWithLanguage:v10 name:v11 type:v12 footprint:v13];

  v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_523];
  v15 = [v16 filteredArrayUsingPredicate:v14];

  [(VSMobileAssetsManager *)self _removeTrialVoices:v15 completion:v7];
}

- (void)cancelDownload:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = VSGetLogEvent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 description];
    v18 = 138543362;
    v19 = v9;
    _os_log_impl(&dword_272850000, v8, OS_LOG_TYPE_DEFAULT, "#Trial Cancelling voice download: %{public}@", &v18, 0xCu);
  }

  trialService = self->_trialService;
  v11 = [v6 languages];
  v12 = [v11 firstObject];
  v13 = [v6 name];
  v14 = -[VSTrialService definedVoicesWithLanguage:name:type:footprint:](trialService, "definedVoicesWithLanguage:name:type:footprint:", v12, v13, [v6 type], objc_msgSend(v6, "footprint"));

  v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_521];
  v16 = [v14 filteredArrayUsingPredicate:v15];

  [(VSMobileAssetsManager *)self _removeTrialVoices:v16 completion:v7];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)cancelDownloads:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = VSGetLogEvent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 description];
    v14 = 138543362;
    v15 = v9;
    _os_log_impl(&dword_272850000, v8, OS_LOG_TYPE_DEFAULT, "#Trial Cancelling voice downloads: %{public}@", &v14, 0xCu);
  }

  v10 = [(VSTrialService *)self->_trialService definedVoicesWithAssets:v6];
  v11 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_519];
  v12 = [v10 filteredArrayUsingPredicate:v11];

  [(VSMobileAssetsManager *)self _removeTrialVoices:v12 completion:v7];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_removeTrialVoices:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = v6;
  if ([v6 count])
  {
    v19 = v7;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 0;
    v8 = dispatch_group_create();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v28 objects:v36 count:{16, v6}];
    if (v9)
    {
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v13 = VSGetLogEvent();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v12 factorName];
            *buf = 138412290;
            v35 = v14;
            _os_log_impl(&dword_272850000, v13, OS_LOG_TYPE_DEFAULT, "#Trial Removing voice: %@", buf, 0xCu);
          }

          dispatch_group_enter(v8);
          trialService = self->_trialService;
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __55__VSMobileAssetsManager__removeTrialVoices_completion___block_invoke;
          v25[3] = &unk_279E4F318;
          v25[4] = v12;
          v27 = v32;
          v26 = v8;
          [(VSTrialService *)trialService removeVoice:v12 completion:v25];
        }

        v9 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v9);
    }

    if (v19)
    {
      v16 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__VSMobileAssetsManager__removeTrialVoices_completion___block_invoke_517;
      block[3] = &unk_279E4EDE0;
      v22 = v8;
      v24 = v32;
      v23 = v19;
      dispatch_async(v16, block);
    }

    _Block_object_dispose(v32, 8);
    v7 = v19;
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __55__VSMobileAssetsManager__removeTrialVoices_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSGetLogEvent();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) factorName];
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_272850000, v5, OS_LOG_TYPE_ERROR, "#Trial Unable to remove voice %@, error: %@", &v9, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) factorName];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_272850000, v5, OS_LOG_TYPE_DEFAULT, "#Trial Removed voice: %@", &v9, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v7 = *MEMORY[0x277D85DE8];
}

void __55__VSMobileAssetsManager__removeTrialVoices_completion___block_invoke_517(void *a1)
{
  v2 = a1[4];
  v3 = dispatch_time(0, 5000000000);
  v4 = dispatch_group_wait(v2, v3);
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v5 = a1[5];
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSTrialServiceErrorDomain" code:2 userInfo:0];
    (*(v5 + 16))(v5, v10);
    v6 = v10;
LABEL_5:

    return;
  }

  v7 = a1[5];
  if (v4)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSTrialServiceErrorDomain" code:1 userInfo:0];
    (*(v7 + 16))(v7, v9);
    v6 = v9;
    goto LABEL_5;
  }

  v8 = *(v7 + 16);

  v8(v7, 0);
}

- (void)downloadVoiceAsset:(id)a3 options:(id)a4 progressUpdateHandler:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __74__VSMobileAssetsManager_downloadVoiceAsset_options_progressUpdateHandler___block_invoke;
  v26[3] = &unk_279E4ED68;
  v11 = v10;
  v27 = v11;
  v12 = MEMORY[0x2743CEF70](v26);
  v13 = [v8 languages];
  v14 = [v13 count];

  if (v14)
  {
    v15 = VSGetLogEvent();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v8;
      _os_log_impl(&dword_272850000, v15, OS_LOG_TYPE_DEFAULT, "#Trial Enqueued downloading: %{public}@", buf, 0xCu);
    }

    v16 = objc_alloc_init(VSDownloadOptions);
    -[VSDownloadOptions setAllowCellularData:](v16, "setAllowCellularData:", [v9 allowsCellularAccess]);
    -[VSDownloadOptions setAllowDiscretionary:](v16, "setAllowDiscretionary:", [v9 discretionary]);
    trialService = self->_trialService;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__VSMobileAssetsManager_downloadVoiceAsset_options_progressUpdateHandler___block_invoke_513;
    v21[3] = &unk_279E4EDB8;
    v22 = v8;
    v24 = v16;
    v25 = v12;
    v23 = self;
    v18 = v16;
    [(VSTrialService *)trialService downloadNamespaceImmediatelyIfNeededWithOption:v18 completion:v21];
  }

  else
  {
    v19 = VSGetLogDefault();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_272850000, v19, OS_LOG_TYPE_ERROR, "Language must be provided for voice download.", buf, 2u);
    }

    v12[2](v12, -1.0, -1.0);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __74__VSMobileAssetsManager_downloadVoiceAsset_options_progressUpdateHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __74__VSMobileAssetsManager_downloadVoiceAsset_options_progressUpdateHandler___block_invoke_513(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      *buf = 138412546;
      v24 = v17;
      v25 = 2112;
      v26 = v4;
      _os_log_error_impl(&dword_272850000, v5, OS_LOG_TYPE_ERROR, "#Trial Unable to download namespace to download voice: %@, error: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))(-1.0, -1.0);
  }

  else
  {
    v6 = [*(a1 + 40) candidateToDownloadForVoice:*(a1 + 32)];
    v7 = VSGetLogDefault();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v6;
        _os_log_impl(&dword_272850000, v8, OS_LOG_TYPE_DEFAULT, "Target voice to download: %@", buf, 0xCu);
      }

      v9 = [v6 name];
      [*(a1 + 32) setName:v9];

      [*(a1 + 32) setType:{objc_msgSend(v6, "type")}];
      [*(a1 + 32) setFootprint:{objc_msgSend(v6, "footprint")}];
      if ([*(a1 + 40) shouldDownloadTrialVoice:v6])
      {
        v12 = *(a1 + 48);
        v13 = *(*(a1 + 40) + 32);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __74__VSMobileAssetsManager_downloadVoiceAsset_options_progressUpdateHandler___block_invoke_514;
        v21[3] = &unk_279E4ED90;
        v22 = *(a1 + 56);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __74__VSMobileAssetsManager_downloadVoiceAsset_options_progressUpdateHandler___block_invoke_2;
        v19[3] = &unk_279E4F8C8;
        v20 = *(a1 + 56);
        [v13 downloadVoice:v6 withOptions:v12 progress:v21 completion:v19];
      }

      else
      {
        v10.n128_u64[0] = 0;
        v11.n128_u32[0] = 1.0;
        (*(*(a1 + 56) + 16))(v10, v11);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        *buf = 138412290;
        v24 = v18;
        _os_log_error_impl(&dword_272850000, v8, OS_LOG_TYPE_ERROR, "#Trial Unable to find suitable voice to download for voice criteria: %@", buf, 0xCu);
      }

      v14.n128_u64[0] = -1.0;
      v15.n128_u32[0] = -1.0;
      (*(*(a1 + 56) + 16))(v14, v15);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __74__VSMobileAssetsManager_downloadVoiceAsset_options_progressUpdateHandler___block_invoke_2(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v5 = *(*(a1 + 32) + 16);
  if (a2)
  {
    a3.n128_u64[0] = -1.0;
    a4.n128_u32[0] = -1.0;

    return v5(a3, a4);
  }

  else
  {
    (v5)(0.0, 1.0);
    v7 = [@"com.apple.voiceservices.notification.voice-update" UTF8String];

    return notify_post(v7);
  }
}

- (id)candidateToDownloadForVoice:(id)a3
{
  trialService = self->_trialService;
  v4 = a3;
  v5 = [v4 languages];
  v6 = [v5 firstObject];
  v7 = [v4 name];
  v8 = [v4 type];
  v9 = [v4 footprint];

  v10 = [(VSTrialService *)trialService definedVoicesWithLanguage:v6 name:v7 type:v8 footprint:v9];

  v11 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_506];
  v12 = [v10 filteredArrayUsingPredicate:v11];

  if ([v12 count])
  {
    v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_510];

    v14 = [v13 lastObject];
    v12 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __53__VSMobileAssetsManager_candidateToDownloadForVoice___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 preferenceScore];
  v6 = v5;
  [v4 preferenceScore];
  v8 = v7;

  if (v6 >= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

BOOL __53__VSMobileAssetsManager_candidateToDownloadForVoice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = (+[VSNeuralTTSUtils isNeuralTTSPlatform](VSNeuralTTSUtils, "isNeuralTTSPlatform") || [v2 type] != 4) && (+[VSUtilities isHomePod](VSUtilities, "isHomePod") || objc_msgSend(v2, "footprint") != 3) && (!+[VSUtilities isWatch](VSUtilities, "isWatch") || objc_msgSend(v2, "type") == 3 || objc_msgSend(v2, "type") == 4);

  return v3;
}

- (id)preferredDownloadForVoice:(id)a3
{
  v3 = [(VSMobileAssetsManager *)self candidateToDownloadForVoice:a3];
  if (v3)
  {
    v4 = [[VSVoiceAssetSelection alloc] initWithTrialVoice:v3];
    v5 = [(VSVoiceAssetSelection *)v4 voiceData];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldDownloadTrialVoice:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isLocal])
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&dword_272850000, v5, OS_LOG_TYPE_DEFAULT, "#Trial Found local voice, skip downloading. Target voice: %@", &v16, 0xCu);
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v6 = [v4 language];
  v7 = [v4 name];
  v5 = -[VSMobileAssetsManager _mobileAssetVoiceForLanguage:name:type:gender:footprint:](self, "_mobileAssetVoiceForLanguage:name:type:gender:footprint:", v6, v7, [v4 type], objc_msgSend(v4, "gender"), objc_msgSend(v4, "footprint"));

  if (v5)
  {
    v8 = [v5 voiceData];
    v9 = [v8 contentVersion];
    v10 = [v9 integerValue];
    v11 = [v4 version];

    if (v10 >= v11)
    {
      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v4;
        _os_log_impl(&dword_272850000, v13, OS_LOG_TYPE_DEFAULT, "#Trial Found local MobileAsset voice with same or higher version, skip downloading. Target voice: %@", &v16, 0xCu);
      }

      goto LABEL_10;
    }
  }

  v12 = 1;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)selectVoiceForLang:(id)a3 name:(id)a4 type:(int64_t)a5 gender:(int64_t)a6 footprint:(int64_t)a7
{
  v48 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = VSGetLogDefault();
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v35 = [VSVoiceAsset typeStringFromType:a5];
      v36 = [VSVoiceAsset genderStringFromGender:a6];
      v37 = [VSVoiceAsset footprintStringFromFootprint:a7];
      *buf = 138544386;
      v39 = v12;
      v40 = 2114;
      v41 = v13;
      v42 = 2112;
      v43 = v35;
      v44 = 2114;
      v45 = v36;
      v46 = 2114;
      v47 = v37;
      _os_log_debug_impl(&dword_272850000, v15, OS_LOG_TYPE_DEBUG, "Searching voice asset for lang: %{public}@, name: %{public}@, type: %{public0}@, gender: %{public}@, footprint: %{public}@", buf, 0x34u);
    }

    v16 = +[VSSpeechInternalSettings standardInstance];
    if ([v16 enableLocalVoices])
    {
      v17 = [v13 length];

      if (!v17)
      {
LABEL_14:
        if (a7 == 1 && a5 == 1 && !v17)
        {
          v19 = VSGetLogDefault();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_272850000, v19, OS_LOG_TYPE_DEFAULT, "Built-in voice is requested.", buf, 2u);
          }

          v17 = [(VSMobileAssetsManager *)self _builtInVoiceForLanguage:v12];
        }

        if (!v17)
        {
          v20 = VSGetLogDefault();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_272850000, v20, OS_LOG_TYPE_DEBUG, "Search voices in Trial", buf, 2u);
          }

          v17 = [(VSMobileAssetsManager *)self _trialVoiceWithLanguage:v12 name:v13 type:a5 footprint:a7 == 1];
          if (!v17)
          {
            v21 = VSGetLogDefault();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_272850000, v21, OS_LOG_TYPE_DEBUG, "Search voices in MobileAsset", buf, 2u);
            }

            v17 = [(VSMobileAssetsManager *)self _mobileAssetVoiceForLanguage:v12 name:v13 type:a5 gender:a6 footprint:a7 == 1];
          }
        }

        if (a7 == 1 || !v17)
        {
          if (v17)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v22 = [v17 voiceData];
          v23 = [v22 footprint];

          if (v23 != 1)
          {
LABEL_46:
            v15 = VSGetLogDefault();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v32 = [v17 voiceData];
              *buf = 138543362;
              v39 = v32;
              _os_log_impl(&dword_272850000, v15, OS_LOG_TYPE_DEFAULT, "Selected voice %{public}@", buf, 0xCu);
            }

            goto LABEL_48;
          }
        }

        v24 = VSGetLogDefault();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_272850000, v24, OS_LOG_TYPE_DEBUG, "Search voices in pre-installed location as fallback", buf, 2u);
        }

        v25 = [(VSMobileAssetsManager *)self selectPreinstalledVoiceForLanguage:v12 gender:a6 name:v13];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = v17;
        }

        v28 = v27;

        if (v28)
        {
          v17 = v28;
        }

        else
        {
          v29 = VSGetLogDefault();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_272850000, v29, OS_LOG_TYPE_DEBUG, "Fallback to custom compact voice", buf, 2u);
          }

          v30 = [(VSMobileAssetsManager *)self _mobileAssetVoiceForLanguage:v12 name:0 type:2 gender:a6 footprint:1];
          if (!v30)
          {
            v31 = VSGetLogDefault();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_272850000, v31, OS_LOG_TYPE_DEBUG, "Fallback to built-in compact voice", buf, 2u);
            }

            v30 = [(VSMobileAssetsManager *)self _builtInVoiceForLanguage:v12];
          }

          v17 = v30;
        }

        goto LABEL_46;
      }

      v18 = VSGetLogDefault();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v39 = v12;
        v40 = 2114;
        v41 = v13;
        _os_log_impl(&dword_272850000, v18, OS_LOG_TYPE_DEFAULT, "Search local voices for lang: %{public}@, name: %{public}@", buf, 0x16u);
      }

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v12, v13];
      v17 = [(VSMobileAssetsManager *)self _localVoiceForLanguageAndNamePath:v16];
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_272850000, v15, OS_LOG_TYPE_ERROR, "Parameter language can't be nil for voice selection", buf, 2u);
  }

  v17 = 0;
LABEL_48:

  v33 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_trialVoiceWithLanguage:(id)a3 name:(id)a4 type:(int64_t)a5 footprint:(int64_t)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = VSGetLogDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [VSVoiceAsset typeStringFromType:a5];
    v14 = [VSVoiceAsset footprintStringFromFootprint:a6];
    v28 = 138544130;
    v29 = v10;
    v30 = 2114;
    v31 = v11;
    v32 = 2114;
    v33 = v13;
    v34 = 2114;
    v35 = v14;
    _os_log_impl(&dword_272850000, v12, OS_LOG_TYPE_INFO, "#Trial Search voice asset for lang: %{public}@, name: %{public}@, type: %{public}@, footprint: %{public}@", &v28, 0x2Au);
  }

  v15 = [(VSMobileAssetsManager *)self installedTrialVoicesForType:a5 voiceName:v11 language:v10 footprint:a6];
  if (![v15 count])
  {
    v20 = VSGetLogDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [VSVoiceAsset typeStringFromType:a5];
      v23 = [VSVoiceAsset footprintStringFromFootprint:a6];
      v28 = 138544130;
      v29 = v10;
      v30 = 2114;
      v31 = v11;
      v32 = 2114;
      v33 = v22;
      v34 = 2114;
      v35 = v23;
      _os_log_impl(&dword_272850000, v20, OS_LOG_TYPE_DEFAULT, "#Trial no installed voices found for lang: %{public}@, name: %{public}@, type: %{public}@, footprint: %{public}@", &v28, 0x2Au);
    }

    goto LABEL_13;
  }

  v16 = [VSMobileAssetsManager pickCorrectAssetFromLocalAssets:v15];
  v17 = VSGetLogDefault();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (!v16)
  {
    if (v18)
    {
      v24 = [VSVoiceAsset typeStringFromType:a5];
      v25 = [VSVoiceAsset footprintStringFromFootprint:a6];
      v28 = 138544130;
      v29 = v10;
      v30 = 2114;
      v31 = v11;
      v32 = 2114;
      v33 = v24;
      v34 = 2114;
      v35 = v25;
      _os_log_impl(&dword_272850000, v17, OS_LOG_TYPE_DEFAULT, "#Trial no suitable installed voices found for lang: %{public}@, name: %{public}@, type: %{public}@, footprint: %{public}@", &v28, 0x2Au);
    }

    v20 = 0;
LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  if (v18)
  {
    v19 = [v16 voiceData];
    v28 = 138543362;
    v29 = v19;
    _os_log_impl(&dword_272850000, v17, OS_LOG_TYPE_DEFAULT, "#Trial Found suitable voice: %{public}@", &v28, 0xCu);
  }

  v20 = v16;
  v21 = v20;
LABEL_14:

  v26 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)installedVoiceResources
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(VSMobileAssetsManager *)self installedTrialVoiceResources];
  v5 = [v3 arrayWithArray:v4];

  v6 = objc_alloc_init(VSVoiceResourceAsset);
  v7 = [VSMobileAssetsManager queryForVoiceResourceAsset:v6 returnTypes:1];
  v8 = [(VSMobileAssetsManager *)self _getResults:v7];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 wasLocal])
        {
          v14 = [VSMobileAssetsManager voiceResourceFromAsset:v13];
          [v5 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)installedTrialVoiceResources
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(VSTrialService *)self->_trialService definedVoiceResourcesWithLanguage:0];
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isLocal])
        {
          v10 = [VSVoiceResourceAsset resourceFromTrial:v9];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)installedAssetsForType:(int64_t)a3 voicename:(id)a4 language:(id)a5 gender:(int64_t)a6 footprint:(int64_t)a7
{
  v12 = a4;
  v13 = a5;
  v14 = MEMORY[0x277CBEB18];
  v15 = [(VSMobileAssetsManager *)self installedTrialVoicesForType:a3 voiceName:v12 language:v13 footprint:a7];
  v16 = [v14 arrayWithArray:v15];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __84__VSMobileAssetsManager_installedAssetsForType_voicename_language_gender_footprint___block_invoke;
  v25[3] = &unk_279E4ED00;
  v25[4] = self;
  v26 = v12;
  v27 = v13;
  v28 = a6;
  v29 = a7;
  v17 = v13;
  v18 = v12;
  v19 = MEMORY[0x2743CEF70](v25);
  v20 = v19;
  v21 = *(v19 + 16);
  v22 = v16;
  if (a3)
  {
    v23 = a3;
  }

  else
  {
    v21();
    (v20)[2](v20, v16, 3);
    (v20)[2](v20, v16, 1);
    v21 = v20[2];
    v19 = v20;
    v22 = v16;
    v23 = 2;
  }

  (v21)(v19, v22, v23);

  return v16;
}

void __84__VSMobileAssetsManager_installedAssetsForType_voicename_language_gender_footprint___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) _getVoiceAssetsForType:a3 voiceName:*(a1 + 40) language:*(a1 + 48) gender:*(a1 + 56) footprint:*(a1 + 64) returnTypes:1];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 wasLocal])
        {
          v12 = objc_alloc_init(VSVoiceAssetSelection);
          [(VSVoiceAssetSelection *)v12 setAsset:v11];
          v13 = [*(a1 + 32) voiceDataFromAsset:v11];
          [(VSVoiceAssetSelection *)v12 setVoiceData:v13];

          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)installedTrialVoicesForType:(int64_t)a3 voiceName:(id)a4 language:(id)a5 footprint:(int64_t)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(VSTrialService *)self->_trialService definedVoicesWithLanguage:a5 name:a4 type:a3 footprint:a6];
  v7 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 isLocal])
        {
          v14 = [[VSVoiceAssetSelection alloc] initWithTrialVoice:v13];
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)resetResourcesCache
{
  v3 = [(VSMobileAssetsManager *)self cachedMAVoiceResources];
  [v3 removeAllObjects];

  v4 = [(VSMobileAssetsManager *)self trialService];
  [v4 refreshTrialClient];
}

- (void)resetCache
{
  v3 = [(VSMobileAssetsManager *)self cachedMAVoiceSelections];
  [v3 removeAllObjects];

  v4 = [(VSMobileAssetsManager *)self trialService];
  [v4 refreshTrialClient];
}

- (void)cleanMobileAssetVoiceResourcesWithActiveLanguages:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37 = objc_alloc_init(VSVoiceResourceAsset);
  v35 = [VSMobileAssetsManager queryForVoiceResourceAsset:"queryForVoiceResourceAsset:returnTypes:" returnTypes:?];
  v36 = self;
  v5 = [(VSMobileAssetsManager *)self _getResults:?];
  v45 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v51 objects:v56 count:16];
  v40 = v6;
  v43 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    v38 = *MEMORY[0x277D28918];
    v39 = v4;
    v11 = 0x279E4E000uLL;
    v41 = *MEMORY[0x277D28900];
    v42 = *v52;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v51 + 1) + 8 * i);
        if ([v13 wasLocal] && objc_msgSend(v13, "state") != 5)
        {
          v14 = [v13 attributes];
          v46 = [*(v11 + 2208) languagesFromMobileAssetAttributes:v14];
          v15 = [v46 firstObject];
          if ([v4 containsObject:v15])
          {
            v16 = [v14 objectForKeyedSubscript:v41];
            v44 = [v16 integerValue];

            v17 = [v6 objectForKeyedSubscript:v15];

            if (v17)
            {
              v18 = [v6 objectForKeyedSubscript:v15];
              v19 = [v18 attributes];
              v20 = [v19 objectForKeyedSubscript:v41];
              v21 = [v20 integerValue];

              if (v21 < v44)
              {
                goto LABEL_12;
              }

              v22 = [v18 attributes];
              v23 = [v22 objectForKeyedSubscript:v38];
              v24 = [v23 integerValue];

              v25 = [v13 attributes];
              v26 = [v25 objectForKeyedSubscript:v38];
              v27 = [v26 integerValue];

              if (v24 >= v27)
              {
                v6 = v40;
              }

              else
              {
LABEL_12:
                v6 = v40;
                [v40 setObject:v13 forKeyedSubscript:v15];
                v13 = v18;
              }

              v7 = v43;
              [v45 addObject:v13];

              v4 = v39;
              v10 = v42;
            }

            else
            {
              [v6 setObject:v13 forKeyedSubscript:v15];
              v10 = v42;
              v7 = v43;
            }

            v11 = 0x279E4E000;
          }

          else
          {
            [v45 addObject:v13];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v9);
  }

  v28 = v4;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v29 = v45;
  v30 = [v29 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v48;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v48 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [(VSMobileAssetsManager *)v36 _purgeMobileAsset:*(*(&v47 + 1) + 8 * j)];
      }

      v31 = [v29 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v31);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)cleanOldMobileAssetVoiceResources
{
  v3 = +[VSSpeechSynthesizerPreference availableLanguages];
  [(VSMobileAssetsManager *)self cleanMobileAssetVoiceResourcesWithActiveLanguages:v3];
}

- (id)cleanUnusedAssets
{
  v65[1] = *MEMORY[0x277D85DE8];
  v3 = VSGetLogEvent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272850000, v3, OS_LOG_TYPE_DEFAULT, "Cleaning unused assets.", buf, 2u);
  }

  v4 = +[VSSpeechInternalSettings standardInstance];
  v5 = [v4 disableAssetCleaning];

  if (v5)
  {
    v6 = VSGetLogEvent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272850000, v6, OS_LOG_TYPE_DEFAULT, "#MobileAsset Cleaning voice assets is disabled in internal setting. Skip cleaning...", buf, 2u);
    }

    v7 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277CCA450];
    v65[0] = @"Cleaning voice assets is disabled in internal setting.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    v9 = [v7 errorWithDomain:@"VSMobileAssetsManager" code:-1 userInfo:v8];

    goto LABEL_36;
  }

  *buf = 0;
  v55 = buf;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy_;
  v58 = __Block_byref_object_dispose_;
  v59 = 0;
  [(VSMobileAssetsManager *)self inactiveVoiceAssets];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v10 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = *v51;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v51 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v50 + 1) + 8 * i);
      v14 = [v13 asset];

      if (v14)
      {
        v15 = [v13 asset];
        [(VSMobileAssetsManager *)self _purgeMobileAsset:v15];
      }

      else
      {
        v16 = [v13 trialVoice];

        if (!v16)
        {
          continue;
        }

        v17 = dispatch_semaphore_create(0);
        v18 = [v13 trialVoice];
        v62 = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __42__VSMobileAssetsManager_cleanUnusedAssets__block_invoke;
        v47[3] = &unk_279E4ECD8;
        v49 = buf;
        v15 = v17;
        v48 = v15;
        [(VSMobileAssetsManager *)self _removeTrialVoices:v19 completion:v47];

        dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    v10 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
  }

  while (v10);
LABEL_19:

  v20 = [(VSMobileAssetsManager *)self activeVoiceAssets];
  v21 = [MEMORY[0x277CBEB58] set];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v37 = v20;
  v22 = [v37 countByEnumeratingWithState:&v43 objects:v61 count:16];
  if (v22)
  {
    v23 = *v44;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(v37);
        }

        v25 = [*(*(&v43 + 1) + 8 * j) voiceData];
        v26 = [v25 languages];
        [v21 addObjectsFromArray:v26];
      }

      v22 = [v37 countByEnumeratingWithState:&v43 objects:v61 count:16];
    }

    while (v22);
  }

  [(VSMobileAssetsManager *)self installedTrialVoiceResources];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v27 = v40 = 0u;
  v28 = [v27 countByEnumeratingWithState:&v39 objects:v60 count:16];
  if (v28)
  {
    v29 = *v40;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v39 + 1) + 8 * k);
        v32 = [v31 languages];
        v33 = [v32 firstObject];
        v34 = [v21 containsObject:v33];

        if ((v34 & 1) == 0)
        {
          [(VSMobileAssetsManager *)self removeTrialVoiceResource:v31 completion:0];
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v39 objects:v60 count:16];
    }

    while (v28);
  }

  [(VSMobileAssetsManager *)self cleanMobileAssetVoiceResourcesWithActiveLanguages:v21];
  [(VSMobileAssetsManager *)self resetCache];
  v9 = *(v55 + 5);

  _Block_object_dispose(buf, 8);
LABEL_36:
  v35 = *MEMORY[0x277D85DE8];

  return v9;
}

void __42__VSMobileAssetsManager_cleanUnusedAssets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)inactiveVoiceAssets
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [(VSMobileAssetsManager *)self activeVoiceAssets];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v57;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v56 + 1) + 8 * i);
        v11 = [v10 asset];

        if (v11)
        {
          v12 = [v10 asset];
          v13 = [v12 assetId];

          if (v13)
          {
            [v3 addObject:v13];
          }
        }

        else
        {
          v14 = [v10 trialVoice];

          if (!v14)
          {
            continue;
          }

          v13 = [v10 trialVoice];
          v15 = [v13 factorName];
          [v4 addObject:v15];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v7);
  }

  v48 = v4;
  v50 = v3;
  v16 = [(VSMobileAssetsManager *)self installedAssetsForType:0 voicename:0 language:0 gender:0 footprint:0, v5];
  v49 = [MEMORY[0x277CBEB18] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (!v18)
  {
    goto LABEL_41;
  }

  v19 = v18;
  v20 = *v53;
  v51 = v17;
  do
  {
    for (j = 0; j != v19; ++j)
    {
      if (*v53 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v52 + 1) + 8 * j);
      if ([v22 isInstalled])
      {
        v23 = [v22 voiceData];
        v24 = [v23 footprint];

        if (v24 != 1)
        {
          v25 = [v22 asset];

          if (v25)
          {
            v26 = [v22 asset];
            v27 = [v26 assetId];

            if (v27 && [v50 containsObject:v27])
            {
              v28 = VSGetLogDefault();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [v22 asset];
                v30 = [v29 attributes];
                *buf = 138412290;
                v61 = v30;
                _os_log_impl(&dword_272850000, v28, OS_LOG_TYPE_DEFAULT, "#MobileAsset current in-use asset, %@", buf, 0xCu);

                v17 = v51;
              }

              goto LABEL_36;
            }

            v31 = [v22 asset];
            v32 = [v31 assetType];
            if ([v32 isEqualToString:@"com.apple.MobileAsset.VoiceServicesVocalizerVoice"])
            {

LABEL_34:
              v28 = VSGetLogDefault();
              v17 = v51;
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v43 = [v22 asset];
                v44 = [v43 attributes];
                *buf = 138412290;
                v61 = v44;
                _os_log_impl(&dword_272850000, v28, OS_LOG_TYPE_DEFAULT, "#MobileAsset ignore VoiceOver asset, %@", buf, 0xCu);
              }

LABEL_36:

              continue;
            }

            v40 = [v22 asset];
            v41 = [v40 assetType];
            v42 = [v41 isEqualToString:@"com.apple.MobileAsset.VoiceServices.CustomVoice"];

            if (v42)
            {
              goto LABEL_34;
            }

            v17 = v51;
LABEL_38:
            [v49 addObject:v22];
            continue;
          }

          v33 = [v22 trialVoice];

          if (!v33)
          {
            goto LABEL_38;
          }

          v34 = [v22 trialVoice];
          v35 = [v34 factorName];
          v36 = [v48 containsObject:v35];

          if (!v36)
          {
            goto LABEL_38;
          }

          v37 = VSGetLogDefault();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [v22 trialVoice];
            v39 = [v38 factorName];
            *buf = 138412290;
            v61 = v39;
            _os_log_impl(&dword_272850000, v37, OS_LOG_TYPE_DEFAULT, "#Trial current in-use asset, %@", buf, 0xCu);
          }
        }
      }
    }

    v19 = [v17 countByEnumeratingWithState:&v52 objects:v62 count:16];
  }

  while (v19);
LABEL_41:

  v45 = *MEMORY[0x277D85DE8];

  return v49;
}

- (id)activeVoiceAssets
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = +[VSPreferencesInterface defaultInstance];
  v5 = [v4 subscribedVoicesForClientID:0 accessoryID:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(VSMobileAssetsManager *)self voiceAssetsForSubscription:*(*(&v14 + 1) + 8 * i), v14];
        [v3 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)voiceAssetsForSubscription:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v7 = [v5 voice];

  v8 = [v7 languages];
  v9 = [v8 firstObject];
  v10 = [v7 name];
  v11 = -[VSMobileAssetsManager selectVoiceForLang:name:type:gender:footprint:](self, "selectVoiceForLang:name:type:gender:footprint:", v9, v10, [v7 type], objc_msgSend(v7, "gender"), objc_msgSend(v7, "footprint"));

  if (v11)
  {
    [v6 addObject:v11];
  }

  if (![v7 type] || objc_msgSend(v7, "type") == 4)
  {
    v12 = [v7 name];
    v13 = [v7 languages];
    v14 = [v13 firstObject];
    v15 = -[VSMobileAssetsManager installedAssetsForType:voicename:language:gender:footprint:](self, "installedAssetsForType:voicename:language:gender:footprint:", 4, v12, v14, [v7 gender], objc_msgSend(v7, "footprint"));

    v16 = [v15 sortedArrayUsingComparator:&__block_literal_global_485];

    v17 = [v16 lastObject];
    if (v17)
    {
      v18 = [v11 key];
      v19 = [v17 key];
      v20 = [v18 isEqualToString:v19];

      if ((v20 & 1) == 0)
      {
        [v6 addObject:v17];
      }
    }
  }

  return v6;
}

uint64_t __52__VSMobileAssetsManager_voiceAssetsForSubscription___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 preferenceScore];
  v6 = v5;
  [v4 preferenceScore];
  v8 = v7;

  if (v6 >= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)definedVoicesForLanguage:(id)a3 voiceName:(id)a4 type:(int64_t)a5 footprint:(int64_t)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = [(VSTrialService *)self->_trialService definedVoicesWithLanguage:a3 name:a4 type:a5 footprint:a6];
  v7 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = objc_alloc_init(VSVoiceAsset);
        v15 = [v13 language];
        if (v15)
        {
          v16 = [v13 language];
          v26 = v16;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
          [(VSVoiceAsset *)v14 setLanguages:v17];
        }

        else
        {
          [(VSVoiceAsset *)v14 setLanguages:MEMORY[0x277CBEBF8]];
        }

        v18 = [v13 name];
        [(VSVoiceAsset *)v14 setName:v18];

        -[VSVoiceAsset setType:](v14, "setType:", [v13 type]);
        -[VSVoiceAsset setFootprint:](v14, "setFootprint:", [v13 footprint]);
        if ([v13 assetSize])
        {
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "assetSize")}];
          [(VSAssetBase *)v14 setDownloadSize:v19];
        }

        else
        {
          [(VSAssetBase *)v14 setDownloadSize:0];
        }

        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)selectVoiceResourceAssetForLanguage:(id)a3
{
  v4 = a3;
  v5 = [(VSMobileAssetsManager *)self _trialVoiceResourceWithLanguage:v4];
  if (!v5)
  {
    v5 = [(VSMobileAssetsManager *)self _mobileAssetVoiceResourceWithLanguage:v4];
  }

  return v5;
}

- (id)_mobileAssetVoiceResourceWithLanguage:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v14 = 0;
    goto LABEL_20;
  }

  v5 = [(VSMobileAssetsManager *)self cachedMAVoiceResources];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v6 searchPathURL];
    v9 = [v8 path];
    v10 = [v7 contentsOfDirectoryAtPath:v9 error:0];

    v11 = [v10 count];
    v12 = VSGetLogDefault();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v22 = 138412546;
        v23 = v6;
        v24 = 2114;
        v25 = v4;
        _os_log_impl(&dword_272850000, v12, OS_LOG_TYPE_DEFAULT, "#MobileAsset Found cached voice resource %@ for %{public}@", &v22, 0x16u);
      }

      goto LABEL_15;
    }

    if (v13)
    {
      v22 = 138412290;
      v23 = v6;
      _os_log_impl(&dword_272850000, v12, OS_LOG_TYPE_DEFAULT, "#MobileAsset Cached voice resource is corrupted %@", &v22, 0xCu);
    }

    v15 = [(VSMobileAssetsManager *)self cachedMAVoiceResources];
    [v15 removeObjectForKey:v4];
  }

  v16 = [(VSMobileAssetsManager *)self _installedVoiceResourceAssetForLanguage:v4];
  if (!v16)
  {
    v19 = VSGetLogDefault();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = 138543362;
      v23 = v4;
      _os_log_error_impl(&dword_272850000, v19, OS_LOG_TYPE_ERROR, "#MobileAsset Unable to find asset for VoiceResources %{public}@", &v22, 0xCu);
    }

    v10 = 0;
    v14 = 0;
    goto LABEL_19;
  }

  v10 = v16;
  v6 = [VSMobileAssetsManager voiceResourceFromAsset:v16];
  v17 = [(VSMobileAssetsManager *)self cachedMAVoiceResources];
  [v17 setObject:v6 forKey:v4];

  v18 = VSGetLogDefault();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = v6;
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&dword_272850000, v18, OS_LOG_TYPE_DEFAULT, "#MobileAsset Found voice resource %@ for %{public}@", &v22, 0x16u);
  }

LABEL_15:
  v14 = v6;
LABEL_19:

LABEL_20:
  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_trialVoiceResourceWithLanguage:(id)a3
{
  v3 = [(VSTrialService *)self->_trialService selectVoiceResourceWithLanguage:a3];
  if (v3)
  {
    v4 = [VSVoiceResourceAsset resourceFromTrial:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_installedVoiceResourceAssetForLanguage:(id)a3
{
  v52[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(VSVoiceResourceAsset);
  v52[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
  [(VSVoiceResourceAsset *)v5 setLanguages:v6];

  [(VSAssetBase *)v5 setCompatibilityVersion:&unk_2881E0DE8];
  v7 = [VSMobileAssetsManager queryForVoiceResourceAsset:v5 returnTypes:1];
  v8 = [(VSMobileAssetsManager *)self _getResults:v7];
  if ([v8 count])
  {
    v35 = v7;
  }

  else
  {
    [(VSAssetBase *)v5 setCompatibilityVersion:0];
    v9 = [VSMobileAssetsManager queryForVoiceResourceAsset:v5 returnTypes:3];

    v10 = [(VSMobileAssetsManager *)self _getResults:v9];

    v8 = v10;
    v35 = v9;
  }

  v11 = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v43;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v42 + 1) + 8 * i);
        if ([v17 wasLocal])
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v14);
  }

  [v11 sortUsingComparator:&__block_literal_global_476];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v11;
  v18 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = self;
    v33 = v5;
    v34 = v4;
    v21 = *v39;
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v38 + 1) + 8 * j);
        v24 = [v23 getLocalFileUrl];
        v25 = [v24 path];

        v26 = [MEMORY[0x277CCAA00] defaultManager];
        v37 = 0;
        v27 = [v26 contentsOfDirectoryAtPath:v25 error:&v37];
        v28 = v37;

        if (v27 && [v27 count])
        {
          v30 = v23;

          goto LABEL_26;
        }

        v29 = VSGetLogDefault();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v47 = v25;
          v48 = 2114;
          v49 = v28;
          _os_log_error_impl(&dword_272850000, v29, OS_LOG_TYPE_ERROR, "Purging corrupted VoiceResource '%{public}@', error: %{public}@", buf, 0x16u);
        }

        [(VSMobileAssetsManager *)v20 _purgeMobileAsset:v23];
      }

      v19 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    v30 = 0;
LABEL_26:
    v5 = v33;
    v4 = v34;
  }

  else
  {
    v30 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

uint64_t __65__VSMobileAssetsManager__installedVoiceResourceAssetForLanguage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributes];
  v6 = [v4 attributes];

  v7 = *MEMORY[0x277D28900];
  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277D28900]];
  v9 = [v8 integerValue];

  v10 = [v6 objectForKeyedSubscript:v7];
  v11 = [v10 integerValue];

  v12 = 1;
  if (v9 >= v11)
  {
    v12 = -1;
  }

  if (v9 == v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

- (id)builtInVoices
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = VSVocalizerCopyVoiceEngineFormatVersions();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(__CFDictionary *)v4 allKeys];
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

        v10 = [(VSMobileAssetsManager *)self _builtInVoiceForLanguage:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)selectPreinstalledVoiceForLanguage:(id)a3 gender:(int64_t)a4 name:(id)a5
{
  v5 = [(VSMobileAssetsManager *)self preinstalledVoicesForLanguage:a3 gender:a4 name:a5];
  v6 = [v5 firstObject];

  return v6;
}

- (id)preinstalledVoicesForLanguage:(id)a3 gender:(int64_t)a4 name:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v27 = self;
  v9 = [(VSMobileAssetsManager *)self preinstallAssetsMetadata];
  v28 = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v9;
  obj = [v9 objectForKeyedSubscript:@"Assets"];
  v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [VSVoiceAsset languagesFromMobileAssetAttributes:v14];
        v16 = v15;
        if (!v7 || ([v15 firstObject], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v7, "isEqualToString:", v17), v17, v18))
        {
          if (!v8 || ([v14 objectForKeyedSubscript:@"Name"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", v8), v19, v20))
          {
            if (!a4 || ([v14 objectForKeyedSubscript:@"Gender"], v21 = objc_claimAutoreleasedReturnValue(), v22 = +[VSVoiceAsset genderFromString:](VSVoiceAsset, "genderFromString:", v21), v21, v22 == a4))
            {
              v23 = [(VSMobileAssetsManager *)v27 voiceAssetFromPreinstallMetadata:v14];
              [v28 addObject:v23];
            }
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)voiceAssetFromPreinstallMetadata:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(VSVoiceAssetSelection);
  v5 = +[VSMobileAssetsManager preinstallAssetsDirectory];
  v6 = [v3 objectForKeyedSubscript:@"_RelativePath"];
  v7 = [v5 stringByAppendingPathComponent:v6];
  v8 = [v7 stringByAppendingPathComponent:@"AssetData"];
  [(VSVoiceAssetSelection *)v4 setBuiltInVoicePath:v8];

  v9 = [[VSVoiceAsset alloc] initFromMobileAssetAttributes:v3];
  [(VSVoiceAssetSelection *)v4 setVoiceData:v9];

  v10 = [(VSVoiceAssetSelection *)v4 voiceData];
  [v10 setStorage:1];

  v11 = [(VSVoiceAssetSelection *)v4 voiceData];
  [v11 setIsInstalled:1];

  v12 = [(VSVoiceAssetSelection *)v4 voiceData];
  [v12 setIsBuiltInVoice:1];

  v13 = [(VSVoiceAssetSelection *)v4 voiceData];
  [v13 setIsVoiceReadyToUse:1];

  return v4;
}

- (id)preinstallAssetsMetadata
{
  if (preinstallAssetsMetadata_onceToken != -1)
  {
    dispatch_once(&preinstallAssetsMetadata_onceToken, &__block_literal_global_459);
  }

  v3 = preinstallAssetsMetadata___preinstallAssetsMetadata;

  return v3;
}

void __49__VSMobileAssetsManager_preinstallAssetsMetadata__block_invoke()
{
  v0 = MEMORY[0x277CBEAC0];
  v4 = +[VSMobileAssetsManager preinstallAssetsDirectory];
  v1 = [v4 stringByAppendingPathComponent:@"preinstall_metadata.plist"];
  v2 = [v0 dictionaryWithContentsOfFile:v1];
  v3 = preinstallAssetsMetadata___preinstallAssetsMetadata;
  preinstallAssetsMetadata___preinstallAssetsMetadata = v2;
}

- (id)_mobileAssetVoiceForLanguage:(id)a3 name:(id)a4 type:(int64_t)a5 gender:(int64_t)a6 footprint:(int64_t)a7
{
  v81 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CCABB0] numberWithLong:a5];
  v16 = [MEMORY[0x277CCABB0] numberWithLong:a6];
  v65 = a7;
  v17 = [MEMORY[0x277CCABB0] numberWithLong:a7];
  v61 = v13;
  v62 = v12;
  v18 = [v14 stringWithFormat:@"%@_%@_%@_%@_%@", v12, v13, v15, v16, v17];

  v64 = self;
  v19 = [(VSMobileAssetsManager *)self cachedMAVoiceSelections];
  v57 = v18;
  v20 = [v19 objectForKey:v18];

  if (v20)
  {
    v21 = [v20 asset];
    if (v21)
    {
      v22 = v21;
      v23 = [MEMORY[0x277CCAA00] defaultManager];
      v24 = [v20 voicePath];
      v25 = [v23 fileExistsAtPath:v24];

      if ((v25 & 1) == 0)
      {
        v31 = VSGetLogDefault();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v78 = v18;
          _os_log_debug_impl(&dword_272850000, v31, OS_LOG_TYPE_DEBUG, "#MobileAsset Ignore cached voice selection for voice query key %@ since it is not installed anymore.", buf, 0xCu);
        }

        v20 = [(VSMobileAssetsManager *)v64 cachedMAVoiceSelections];
        [v20 removeObjectForKey:v18];
        goto LABEL_13;
      }
    }

    v26 = [v20 voiceData];
    if ([v26 type] == 4)
    {
      v27 = [MEMORY[0x277CCAC38] processInfo];
      if ([v27 thermalState] > 2)
      {
        v28 = +[VSSpeechInternalSettings standardInstance];
        v29 = [v28 ignorePowerAndThermalState];

        if ((v29 & 1) == 0)
        {
          v30 = VSGetLogDefault();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_272850000, v30, OS_LOG_TYPE_DEFAULT, "#MobileAsset Ignore neural voice due to thermal critical condition.", buf, 2u);
          }

LABEL_13:
          goto LABEL_14;
        }

LABEL_25:
        v37 = VSGetLogDefault();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [v20 descriptiveKey];
          *buf = 138412546;
          v78 = v38;
          v79 = 2112;
          v80 = v18;
          _os_log_impl(&dword_272850000, v37, OS_LOG_TYPE_DEFAULT, "#MobileAsset Found cached voice selection %@ for voice query key %@", buf, 0x16u);
        }

        v39 = v20;
        goto LABEL_57;
      }
    }

    goto LABEL_25;
  }

LABEL_14:
  v32 = +[VSSpeechInternalSettings standardInstance];
  v33 = [v32 disableDeviceNeuralTTS];

  if (!v33)
  {
    if (!a5)
    {
      v35 = &unk_2881E0C08;
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  v34 = VSGetLogDefault();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272850000, v34, OS_LOG_TYPE_DEFAULT, "#MobileAsset Ignore neural voices since device neural TTS is disabled.", buf, 2u);
  }

  if (!a5)
  {
    v35 = &unk_2881E0BF0;
    goto LABEL_29;
  }

  if (a5 != 4)
  {
LABEL_21:
    v36 = [MEMORY[0x277CCABB0] numberWithLong:a5];
    v76 = v36;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];

    goto LABEL_29;
  }

  v35 = &unk_2881E0C20;
LABEL_29:
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v35;
  v60 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (v60)
  {
    v59 = *v71;
LABEL_31:
    v40 = 0;
    while (1)
    {
      if (*v71 != v59)
      {
        objc_enumerationMutation(obj);
      }

      v63 = v40;
      v41 = -[VSMobileAssetsManager _getVoiceAssetsForType:voiceName:language:gender:footprint:returnTypes:](v64, "_getVoiceAssetsForType:voiceName:language:gender:footprint:returnTypes:", [*(*(&v70 + 1) + 8 * v40) longValue], v61, v62, a6, v65, 1);
      v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v43 = v41;
      v44 = [v43 countByEnumeratingWithState:&v66 objects:v74 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v67;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v67 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v66 + 1) + 8 * i);
            if ([v48 wasLocal])
            {
              v49 = objc_alloc_init(VSVoiceAssetSelection);
              v50 = [(VSMobileAssetsManager *)v64 voiceDataFromAsset:v48];
              [(VSVoiceAssetSelection *)v49 setAsset:v48];
              [(VSVoiceAssetSelection *)v49 setVoiceData:v50];
              if ((!a6 || [v50 gender] == a6) && (!v65 || objc_msgSend(v50, "footprint") == v65))
              {
                [v42 addObject:v49];
              }
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v66 objects:v74 count:16];
        }

        while (v45);
      }

      v51 = [VSMobileAssetsManager pickCorrectAssetFromLocalAssets:v42];

      if (v51)
      {
        break;
      }

      v40 = v63 + 1;
      if (v63 + 1 == v60)
      {
        v60 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
        if (v60)
        {
          goto LABEL_31;
        }

        goto LABEL_51;
      }
    }
  }

  else
  {
LABEL_51:
    v51 = 0;
  }

  v52 = VSGetLogDefault();
  v18 = v57;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = [v51 voiceData];
    *buf = 138543618;
    v78 = v53;
    v79 = 2114;
    v80 = v57;
    _os_log_impl(&dword_272850000, v52, OS_LOG_TYPE_DEFAULT, "#MobileAsset Selected %{public}@ and will cache it for %{public}@", buf, 0x16u);
  }

  if (v51)
  {
    v54 = [(VSMobileAssetsManager *)v64 cachedMAVoiceSelections];
    [v54 setObject:v51 forKey:v57];
  }

  v39 = v51;

LABEL_57:
  v55 = *MEMORY[0x277D85DE8];

  return v39;
}

- (VSMobileAssetsManager)init
{
  v13.receiver = self;
  v13.super_class = VSMobileAssetsManager;
  v2 = [(VSMobileAssetsManager *)&v13 init];
  if (v2)
  {
    v3 = +[VSTrialService sharedService];
    trialService = v2->_trialService;
    v2->_trialService = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("com.apple.voiced.assetQueryQueue", v5);
    assetQueryQueue = v2->_assetQueryQueue;
    v2->_assetQueryQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cachedMAVoiceSelections = v2->_cachedMAVoiceSelections;
    v2->_cachedMAVoiceSelections = v8;

    [(NSCache *)v2->_cachedMAVoiceSelections setCountLimit:10];
    v10 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cachedMAVoiceResources = v2->_cachedMAVoiceResources;
    v2->_cachedMAVoiceResources = v10;

    [(NSCache *)v2->_cachedMAVoiceResources setCountLimit:10];
  }

  return v2;
}

- (void)migrateAssetIfNeededWithAssetType:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:v4];
  [v5 returnTypes:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__VSMobileAssetsManager_migrateAssetIfNeededWithAssetType___block_invoke;
  v7[3] = &unk_279E4EC70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 queryMetaData:v7];
}

uint64_t __59__VSMobileAssetsManager_migrateAssetIfNeededWithAssetType___block_invoke(uint64_t result, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 == 2)
  {
    v2 = result;
    v3 = MEMORY[0x2743CE5A0](*(result + 32));
    v4 = VSGetLogEvent();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = *(v2 + 32);
        v7 = MEMORY[0x2743CE5D0](v3);
        v10 = 138412546;
        v11 = v6;
        v12 = 2112;
        v13 = v7;
        _os_log_error_impl(&dword_272850000, v5, OS_LOG_TYPE_ERROR, "#MobileAsset migrate '%@', error: %@", &v10, 0x16u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v2 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_272850000, v5, OS_LOG_TYPE_DEFAULT, "#MobileAsset migrate '%@', success", &v10, 0xCu);
    }

    result = [*(v2 + 40) downloadCatalog:*(v2 + 32) options:0 completion:0];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)migrateAssetsWithProgress:(id)a3
{
  v4 = a3;
  v7 = 0;
  v4[2](v4, &v7, 0.0);
  if (v7 & 1) != 0 || ([(VSMobileAssetsManager *)self migrateAssetIfNeededWithAssetType:@"com.apple.MobileAsset.VoiceServices.GryphonVoice"], v4[2](v4, &v7, 0.33), (v7) || ([(VSMobileAssetsManager *)self migrateAssetIfNeededWithAssetType:@"com.apple.MobileAsset.VoiceServices.CustomVoice"], v4[2](v4, &v7, 0.66), (v7))
  {
    v5 = 1;
  }

  else
  {
    [(VSMobileAssetsManager *)self migrateAssetIfNeededWithAssetType:@"com.apple.MobileAsset.VoiceServicesVocalizerVoice"];
    v4[2](v4, &v7, 1.0);
    v5 = v7;
  }

  return v5 & 1;
}

+ (BOOL)isVoiceAssetWellDefined:(id)a3
{
  v3 = a3;
  if (![v3 type])
  {
    goto LABEL_9;
  }

  v4 = [v3 languages];
  v5 = [v4 count];

  if (!v5)
  {
    goto LABEL_9;
  }

  if ([v3 type] != 1)
  {
    v7 = [v3 name];
    if ([v7 length])
    {

LABEL_8:
      v6 = [v3 footprint] != 0;
      goto LABEL_10;
    }

    v8 = [v3 gender];

    if (v8)
    {
      goto LABEL_8;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = 1;
LABEL_10:

  return v6;
}

+ (id)getLatestAssetFromArray:(id)a3
{
  v3 = [a3 sortedArrayUsingComparator:&__block_literal_global_564];
  v4 = [v3 lastObject];

  return v4;
}

uint64_t __49__VSMobileAssetsManager_getLatestAssetFromArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 attributes];
  v7 = [v5 attributes];
  v8 = *MEMORY[0x277D28900];
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D28900]];
  v10 = [v9 integerValue];

  v11 = [v7 objectForKeyedSubscript:v8];
  v12 = [v11 integerValue];

  if (v10 == v12)
  {
    if ([v4 wasLocal])
    {
      v13 = 1;
    }

    else
    {
      v13 = [v5 wasLocal] << 63 >> 63;
    }
  }

  else if (v10 > v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

+ (id)pickCorrectAssetFromLocalAssets:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = +[VSSpeechInternalSettings standardInstance];
    v5 = [v4 disableDeviceNeuralTTS];

    if (v5)
    {
      v6 = VSGetLogDefault();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_272850000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring all neural voices due to disableDeviceNeuralTTS", v14, 2u);
      }

      v7 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_547];
      v8 = [v3 filteredArrayUsingPredicate:v7];

      v3 = v8;
    }

    v9 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_549];
    v10 = [v3 filteredArrayUsingPredicate:v9];

    v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_552];
    v12 = [v11 lastObject];

    v3 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __57__VSMobileAssetsManager_pickCorrectAssetFromLocalAssets___block_invoke_550(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 preferenceScore];
  v6 = v5;
  [v4 preferenceScore];
  v8 = v7;

  if (v6 >= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __57__VSMobileAssetsManager_pickCorrectAssetFromLocalAssets___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 voiceData];
  v4 = [v3 type];

  if (v4 == 4 && ([v2 voicePath], v5 = objc_claimAutoreleasedReturnValue(), v6 = +[VSNeuralTTSUtils shouldUseNeuralVoice:](VSNeuralTTSUtils, "shouldUseNeuralVoice:", v5), v5, !v6))
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v2 key];
      v10 = +[VSUtilities isH12Platform];
      v11 = [MEMORY[0x277CCAC38] processInfo];
      v12 = [v11 thermalState];
      v13 = [MEMORY[0x277CCAC38] processInfo];
      v16 = 138413058;
      v17 = v9;
      v18 = 1024;
      v19 = v10;
      v20 = 1024;
      v21 = v12;
      v22 = 1024;
      v23 = [v13 isLowPowerModeEnabled];
      _os_log_impl(&dword_272850000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring neural voice %@. Current states as H12 platform: %{BOOL}d, thermal state:%d, low power enabled:%{BOOL}d", &v16, 0x1Eu);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL __57__VSMobileAssetsManager_pickCorrectAssetFromLocalAssets___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 voiceData];
  v3 = [v2 type] != 4;

  return v3;
}

+ (id)voiceResourceFromAsset:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(VSVoiceResourceAsset);
    [(VSAssetBase *)v4 setStorage:2];
    v5 = [v3 attributes];
    [(VSAssetBase *)v4 setBundleIdentifier:@"com.apple.MobileAsset.VoiceServices.VoiceResources"];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D28918]];
    [(VSAssetBase *)v4 setMasteredVersion:v6];

    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D28900]];
    [(VSAssetBase *)v4 setContentVersion:v7];

    v8 = [VSVoiceAsset compatibilityVersionFromMobileAssetAttributes:v5];
    [(VSAssetBase *)v4 setCompatibilityVersion:v8];

    v9 = [VSVoiceAsset languagesFromMobileAssetAttributes:v5];
    [(VSVoiceResourceAsset *)v4 setLanguages:v9];

    v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277D28908]];
    [(VSAssetBase *)v4 setDownloadSize:v10];

    if ([v3 wasLocal])
    {
      v11 = [v3 getLocalFileUrl];
      [(VSVoiceResourceAsset *)v4 setSearchPathURL:v11];
    }

    -[VSAssetBase setIsPurgeable:](v4, "setIsPurgeable:", [v3 wasPurgeable]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)typeFromBundleIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.MobileAsset.VoiceServicesVocalizerVoice"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"com.apple.MobileAsset.VoiceServices.CustomVoice"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"com.apple.MobileAsset.VoiceServices.GryphonVoice"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)bundleIdentifierForVoiceType:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_279E4EF10[a3 - 1];
  }
}

+ (id)downloadOptionsWithBattery:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D28A10]);
  v5 = +[VSSpeechInternalSettings standardInstance];
  v6 = !v3;
  [v4 setDiscretionary:{v6 & (objc_msgSend(v5, "defaultToNonDiscretionaryDownloads") ^ 1)}];

  [v4 setRequiresPowerPluggedIn:v6];

  return v4;
}

+ (id)queryForVoiceResourceAsset:(id)a3 returnTypes:(int64_t)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.VoiceServices.VoiceResources"];
  [v6 returnTypes:a4];
  v7 = [v5 compatibilityVersion];

  if (v7)
  {
    v8 = *MEMORY[0x277D288E8];
    v9 = MEMORY[0x277CCACA8];
    v10 = [v5 compatibilityVersion];
    v11 = [v9 stringWithFormat:@"%d", objc_msgSend(v10, "intValue")];
    [v6 addKeyValuePair:v8 with:v11];
  }

  v12 = [v5 masteredVersion];

  if (v12)
  {
    v13 = *MEMORY[0x277D28918];
    v14 = [v5 masteredVersion];
    [v6 addKeyValuePair:v13 with:v14];
  }

  v15 = [v5 languages];
  v16 = [v15 firstObject];

  if (v16)
  {
    [v6 addKeyValuePair:@"Languages" with:v16];
  }

  return v6;
}

+ (id)queryForLanguage:(id)a3 forType:(int64_t)a4 voiceName:(id)a5 gender:(int64_t)a6 footprint:(int64_t)a7 returnTypes:(int64_t)a8
{
  v14 = a3;
  v15 = a5;
  if (queryForLanguage_forType_voiceName_gender_footprint_returnTypes__onceToken != -1)
  {
    dispatch_once(&queryForLanguage_forType_voiceName_gender_footprint_returnTypes__onceToken, &__block_literal_global_478);
  }

  v16 = objc_alloc(MEMORY[0x277D289D8]);
  v17 = [a1 bundleIdentifierForVoiceType:a4];
  v18 = [v16 initWithType:v17];

  [v18 returnTypes:a8];
  if (v14)
  {
    if ((a4 - 3) > 1)
    {
      v21 = [MEMORY[0x277CBEB18] arrayWithObject:v14];
      [v18 addKeyValueArray:@"Languages" with:v21];
      v22 = &queryForLanguage_forType_voiceName_gender_footprint_returnTypes__customVersions;
LABEL_9:

      if (!a7)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v19 = [v14 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
    v20 = [MEMORY[0x277CBEB18] arrayWithObjects:{v14, v19, 0}];
    [v18 addKeyValueArray:@"LanguagesCompatibility" with:v20];

LABEL_7:
    v21 = [VSVoiceAsset typeStringFromType:a4];
    [v18 addKeyValuePair:@"Type" with:v21];
    v22 = &queryForLanguage_forType_voiceName_gender_footprint_returnTypes__gryphonVersions;
    goto LABEL_9;
  }

  if ((a4 - 3) <= 1)
  {
    goto LABEL_7;
  }

  v22 = &queryForLanguage_forType_voiceName_gender_footprint_returnTypes__customVersions;
  if (a7)
  {
LABEL_10:
    v23 = [VSVoiceAsset footprintStringFromFootprint:a7];
    [v18 addKeyValuePair:@"Footprint" with:v23];
  }

LABEL_11:
  if (a6)
  {
    v24 = [VSVoiceAsset genderStringFromGender:a6];
    [v18 addKeyValuePair:@"Gender" with:v24];
  }

  if (v15)
  {
    [v18 addKeyValuePair:@"Name" with:v15];
  }

  [v18 addKeyValueArray:*MEMORY[0x277D288E8] with:*v22];

  return v18;
}

void __89__VSMobileAssetsManager_queryForLanguage_forType_voiceName_gender_footprint_returnTypes___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:7];
  v1 = queryForLanguage_forType_voiceName_gender_footprint_returnTypes__customVersions;
  queryForLanguage_forType_voiceName_gender_footprint_returnTypes__customVersions = v0;

  v2 = -7;
  do
  {
    v3 = queryForLanguage_forType_voiceName_gender_footprint_returnTypes__customVersions;
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v2 + 8];
    [v3 addObject:v4];
  }

  while (!__CFADD__(v2++, 1));
  v6 = +[VSSpeechEngine engineMinimumCompatibility];
  v7 = +[VSSpeechEngine engineCurrentCompatibility];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7 - v6 + 1];
  v9 = queryForLanguage_forType_voiceName_gender_footprint_returnTypes__gryphonVersions;
  queryForLanguage_forType_voiceName_gender_footprint_returnTypes__gryphonVersions = v8;

  if (v7 >= v6)
  {
    do
    {
      v10 = queryForLanguage_forType_voiceName_gender_footprint_returnTypes__gryphonVersions;
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v6];
      [v10 addObject:v11];

      ++v6;
    }

    while (v7 + 1 != v6);
  }
}

+ (id)preinstallAssetsDirectory
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.voiceservices"];
  v3 = [v2 bundlePath];
  v4 = [v3 stringByAppendingPathComponent:@"TTSResources/PreinstallAssets/"];

  return v4;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_66);
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

void __38__VSMobileAssetsManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(VSMobileAssetsManager);
  v1 = sharedManager___sharedManager;
  sharedManager___sharedManager = v0;
}

@end