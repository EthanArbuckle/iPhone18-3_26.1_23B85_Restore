@interface SSRMobileAssetProvider
- (id)_buildAssetQueryForAssetType:(unint64_t)a3;
- (id)_filteredAssets:(id)a3 forLanguage:(id)a4;
- (id)_findLatestInstalledAsset:(id)a3;
- (id)_getEndpointAssetTypeString;
- (id)_getSSRAssetTypeString;
- (id)_getVTRepromptListAssetTypeString;
- (id)_installedMobileAssetOfType:(unint64_t)a3 forLanguage:(id)a4 ofType:(int64_t)a5;
- (id)_queryMAAssetsForAssetType:(unint64_t)a3 Language:(id)a4;
- (id)allInstalledAssetsOfType:(unint64_t)a3 forLanguage:(id)a4;
- (id)installedAssetOfType:(unint64_t)a3 forLanguageCode:(id)a4;
- (id)installedSpeakerRecognitionAssetForLanguage:(id)a3;
- (unint64_t)_getEndpointAssetCurrentCompatibilityVersion;
@end

@implementation SSRMobileAssetProvider

- (id)_filteredAssets:(id)a3 forLanguage:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    v12 = *MEMORY[0x277D01980];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 attributes];
        v16 = [v15 valueForKey:v12];
        v17 = v16;
        if (!v6 || [v16 containsObject:v6])
        {
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_findLatestInstalledAsset:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
  v6 = MEMORY[0x277D01970];
  if (v4)
  {
    v7 = v4;
    v8 = 0;
    v9 = *v22;
    *&v5 = 136315394;
    v20 = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 state];
        v13 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v20;
          v26 = "[SSRMobileAssetProvider _findLatestInstalledAsset:]";
          v27 = 2050;
          v28 = v12;
          _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Asset state : %{public}ld", buf, 0x16u);
        }

        if ((v12 - 7) >= 0xFFFFFFFFFFFFFFFELL)
        {
          if (v8)
          {
            if ([v11 isLatestCompareTo:v8])
            {
              v14 = v11;

              v8 = v14;
            }
          }

          else
          {
            v8 = v11;
          }
        }
      }

      v7 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v8 attributes];
    *buf = 136315394;
    v26 = "[SSRMobileAssetProvider _findLatestInstalledAsset:]";
    v27 = 2114;
    v28 = v17;
    _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s Chosen Asset %{public}@", buf, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_installedMobileAssetOfType:(unint64_t)a3 forLanguage:(id)a4 ofType:(int64_t)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(SSRMobileAssetProvider *)self _buildAssetQueryForAssetType:a3];
  [v9 returnTypes:a5];
  v10 = [v9 queryMetaDataSync];
  v11 = [v9 results];
  v12 = [(SSRMobileAssetProvider *)self _filteredAssets:v11 forLanguage:v8];

  v13 = *MEMORY[0x277D01970];
  v14 = *MEMORY[0x277D01970];
  if ((v10 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315650;
      v22 = "[SSRMobileAssetProvider _installedMobileAssetOfType:forLanguage:ofType:]";
      v23 = 2114;
      v24 = v9;
      v25 = 2050;
      v26 = v10;
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s Error running asset-query: %{public}@, error: %{public}lu", &v21, 0x20u);
    }

    v15 = 0;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v13;
      v17 = [v12 count];
      v18 = [v9 queryParams];
      v21 = 136315650;
      v22 = "[SSRMobileAssetProvider _installedMobileAssetOfType:forLanguage:ofType:]";
      v23 = 2050;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s ::: found %{public}lu assets matching query: %{public}@", &v21, 0x20u);
    }

    v15 = [(SSRMobileAssetProvider *)self _findLatestInstalledAsset:v12];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_buildAssetQueryForAssetType:(unint64_t)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_15;
      }

      v5 = [(SSRMobileAssetProvider *)self _getEndpointAssetTypeString];
      v6 = [(SSRMobileAssetProvider *)self _getEndpointAssetCurrentCompatibilityVersion];
    }

    else
    {
      v5 = [(SSRMobileAssetProvider *)self _getVoiceTriggerAssetTypeString];
      v6 = [(SSRMobileAssetProvider *)self _getVoiceTriggerAssetCurrentCompatibilityVersion];
    }

    goto LABEL_13;
  }

  if (a3 == 8)
  {
    v5 = [(SSRMobileAssetProvider *)self _getVTRepromptListAssetTypeString];
    v7 = 1;
    if (!v5)
    {
      goto LABEL_15;
    }

LABEL_14:
    v8 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:v5];
    v9 = *MEMORY[0x277D288E8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v7];
    [v8 addKeyValuePair:v9 with:v10];

    goto LABEL_18;
  }

  if (a3 == 7)
  {
    v5 = @"com.apple.MobileAsset.VoiceTriggerAssetsMac";
    v7 = 15;
    goto LABEL_14;
  }

  if (a3 != 3)
  {
    goto LABEL_15;
  }

  v5 = [(SSRMobileAssetProvider *)self _getSSRAssetTypeString];
  v6 = [(SSRMobileAssetProvider *)self _getSSRAssetCurrentCompatibilityVersion];
LABEL_13:
  v7 = v6;
  if (v5)
  {
    goto LABEL_14;
  }

LABEL_15:
  v11 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v15 = "[SSRMobileAssetProvider _buildAssetQueryForAssetType:]";
    v16 = 1026;
    v17 = v3;
    _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s Failed to get assetString for assetType %{public}d", buf, 0x12u);
  }

  v8 = 0;
LABEL_18:
  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (unint64_t)_getEndpointAssetCurrentCompatibilityVersion
{
  if (CSIsWatch())
  {
    return 3;
  }

  if (CSIsTV())
  {
    return 5;
  }

  if ([MEMORY[0x277D018F8] shouldUseHorsemanSpeechEndpointAssets])
  {
    return 2;
  }

  if (CSIsOSX())
  {
    return 6;
  }

  return 3;
}

- (id)_getEndpointAssetTypeString
{
  if (CSIsWatch())
  {
    return @"com.apple.MobileAsset.SpeechEndpointAssetsWatch";
  }

  if (CSIsTV())
  {
    return @"com.apple.MobileAsset.SpeechEndpointAssetsTV";
  }

  if ([MEMORY[0x277D018F8] shouldUseHorsemanSpeechEndpointAssets])
  {
    return @"com.apple.MobileAsset.SpeechEndpointMarshAssets";
  }

  if (CSIsOSX())
  {
    return @"com.apple.MobileAsset.SpeechEndpointMacOSAssets";
  }

  return @"com.apple.MobileAsset.SpeechEndpointAssets";
}

- (id)_getVTRepromptListAssetTypeString
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D018F8] deviceProductType];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"iPhone16, 1", @"iPhone16, 2", @"iPhone15, 4", @"iPhone15, 5", 0}];
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"iPhone14, 7", @"iPhone14, 8", @"iPhone15, 2", @"iPhone15, 3", @"iPhone14, 6", 0}];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"iPhone14, 2", @"iPhone14, 3", @"iPhone14, 4", @"iPhone14, 5", 0}];
  if (CSIsIPad())
  {
    v6 = @"com.apple.MobileAsset.VoiceTriggerRePromptListiPad";
  }

  else if ([v3 containsObject:v2])
  {
    v6 = @"com.apple.MobileAsset.VoiceTriggerRePromptListiPhone15x";
  }

  else if ([v4 containsObject:v2])
  {
    v6 = @"com.apple.MobileAsset.VoiceTriggerRePromptListiPhone14x";
  }

  else if ([v5 containsObject:v2])
  {
    v6 = @"com.apple.MobileAsset.VoiceTriggerRePromptListiPhone13x";
  }

  else
  {
    v6 = @"com.apple.MobileAsset.VoiceTriggerRePromptListiPhone12AndOlder";
  }

  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[SSRMobileAssetProvider _getVTRepromptListAssetTypeString]";
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v2;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Fetched assetStr: %{public}@ for deviceType: %{public}@", buf, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_getSSRAssetTypeString
{
  if (CSIsASMacWithAOP())
  {
    return @"com.apple.MobileAsset.SpeakerRecognitionASMacAssets";
  }

  else
  {
    return @"com.apple.MobileAsset.SpeakerRecognitionAssets";
  }
}

- (id)installedSpeakerRecognitionAssetForLanguage:(id)a3
{
  v3 = [(SSRMobileAssetProvider *)self _installedMobileAssetOfType:3 forLanguage:a3];
  v4 = [v3 getCSAssetOfType:3];

  return v4;
}

- (id)_queryMAAssetsForAssetType:(unint64_t)a3 Language:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SSRMobileAssetProvider *)self _buildAssetQueryForAssetType:a3];
  v8 = v7;
  if (v7)
  {
    [v7 returnTypes:2];
    v9 = [v8 queryMetaDataSync];
    v10 = [v8 results];
    v11 = [(SSRMobileAssetProvider *)self _filteredAssets:v10 forLanguage:v6];

    v12 = *MEMORY[0x277D01970];
    v13 = *MEMORY[0x277D01970];
    if ((v9 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v31 = "[SSRMobileAssetProvider _queryMAAssetsForAssetType:Language:]";
        v32 = 2114;
        v33 = v8;
        v34 = 2050;
        v35 = v9;
        _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s Error running query: %{public}@, error: %{public}lu", buf, 0x20u);
      }

      v14 = 0;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v12;
        v16 = [v11 count];
        v17 = [v8 queryParams];
        *buf = 136315650;
        v31 = "[SSRMobileAssetProvider _queryMAAssetsForAssetType:Language:]";
        v32 = 2050;
        v33 = v16;
        v34 = 2114;
        v35 = v17;
        _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s ::: found %{public}lu installed assets for matching query: %{public}@", buf, 0x20u);
      }

      v18 = [v11 sortedArrayUsingComparator:&__block_literal_global_7724];
      v19 = [MEMORY[0x277CBEB18] array];
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __62__SSRMobileAssetProvider__queryMAAssetsForAssetType_Language___block_invoke_2;
      v27 = &unk_2785792C0;
      v28 = v19;
      v29 = a3;
      v20 = v19;
      [v18 enumerateObjectsUsingBlock:&v24];
      if ([v20 count])
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v14 = v21;
    }
  }

  else
  {
    v14 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v14;
}

void __62__SSRMobileAssetProvider__queryMAAssetsForAssetType_Language___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state] == 5 || objc_msgSend(v3, "state") == 6)
  {
    v4 = [v3 getCSAssetOfType:*(a1 + 40)];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }

    else
    {
      v5 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v7 = v5;
        v8 = [v3 attributes];
        v9 = 136315394;
        v10 = "[SSRMobileAssetProvider _queryMAAssetsForAssetType:Language:]_block_invoke_2";
        v11 = 2114;
        v12 = v8;
        _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s ERR: Failed to asset for %{public}@", &v9, 0x16u);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __62__SSRMobileAssetProvider__queryMAAssetsForAssetType_Language___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isLatestCompareTo:?])
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (id)allInstalledAssetsOfType:(unint64_t)a3 forLanguage:(id)a4
{
  v6 = MEMORY[0x277D018F8];
  v7 = a4;
  v8 = [v6 supportsSpeakerRecognitionAssets];
  if (a3 == 3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(SSRMobileAssetProvider *)self _queryMAAssetsForAssetType:v10 Language:v7];

  return v11;
}

- (id)installedAssetOfType:(unint64_t)a3 forLanguageCode:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277D018F8] supportsSpeakerRecognitionAssets];
  if (a3 != 3 || (v7 & 1) != 0)
  {
    v8 = a3;
    if (a3)
    {
      goto LABEL_10;
    }
  }

  else if (CSIsGibraltarMac())
  {
    v8 = 7;
    if (![MEMORY[0x277D018F8] isDarwinOS])
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (CSIsGibraltarMac())
  {
    v8 = 7;
  }

  else
  {
    v8 = 0;
  }

LABEL_10:
  if ([MEMORY[0x277D018F8] isDarwinOS])
  {
LABEL_11:
    v9 = [MEMORY[0x277D01850] remoteAssetManager];
    v10 = [v9 assetForCurrentLanguageOfType:v8];
    v11 = [v9 languageCode];
    v12 = [v6 isEqualToString:v11];

    if (v12)
    {
      v13 = v10;
    }

    else
    {
      v22 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v25 = 136315138;
        v26 = "[SSRMobileAssetProvider installedAssetOfType:forLanguageCode:]";
        _os_log_error_impl(&dword_225E12000, v22, OS_LOG_TYPE_ERROR, "%s Locale doesn't match, return nil", &v25, 0xCu);
      }

      v13 = 0;
    }

    goto LABEL_27;
  }

  if (a3 != 8)
  {
LABEL_19:
    v21 = [(SSRMobileAssetProvider *)self _installedMobileAssetOfType:v8 forLanguage:v6];
LABEL_26:
    v9 = v21;
    v13 = [v21 getCSAssetOfType:v8];
    goto LABEL_27;
  }

  v14 = [MEMORY[0x277D01788] sharedPreferences];
  v15 = [v14 isVoiceTriggerRepromptAssetOverridingEnabled];

  if (!v15)
  {
LABEL_25:
    v21 = [(SSRMobileAssetProvider *)self _installedMobileAssetOfType:v8 forLanguage:v6 ofType:3];
    goto LABEL_26;
  }

  v16 = [MEMORY[0x277D01788] sharedPreferences];
  v9 = [v16 fakeVoiceTriggerRepromptAssetPath];

  v17 = [v9 stringByDeletingLastPathComponent];
  v18 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = [v18 fileExistsAtPath:v9];

  if (!v19)
  {

    goto LABEL_25;
  }

  v20 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136315138;
    v26 = "[SSRMobileAssetProvider installedAssetOfType:forLanguageCode:]";
    _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s Retuning the override asset", &v25, 0xCu);
  }

  v13 = [MEMORY[0x277D015F8] assetForAssetType:8 resourcePath:v17 configVersion:@"override-asset"];

LABEL_27:
  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

@end