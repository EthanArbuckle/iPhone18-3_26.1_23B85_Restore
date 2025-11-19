@interface _LTDTTSAssetService
+ (NSArray)subscribedVoices;
+ (SiriTTSDaemonSession)siriTTSSession;
+ (id)_allTTSAssets;
+ (id)_preferredNameForLanguage:(id)a3;
+ (id)_queue;
+ (id)_siriVoiceForTTSAsset:(id)a3;
+ (id)ttsAssetForLocaleIdentifier:(id)a3 onDeviceOnly:(BOOL)a4;
+ (id)voiceForLocaleIdentifier:(id)a3;
+ (int64_t)_genderForLocaleIdentifier:(id)a3;
+ (int64_t)_preferredGender;
+ (int64_t)preferredVoiceType;
+ (void)_subscribeToVoice:(id)a3;
+ (void)downloadAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6;
+ (void)downloadVoiceAssetsForLanguagePair:(id)a3;
+ (void)setSubscribedVoices:(id)a3;
+ (void)subscribedVoices;
@end

@implementation _LTDTTSAssetService

+ (id)_queue
{
  if (_queue_onceToken_1 != -1)
  {
    +[_LTDTTSAssetService _queue];
  }

  v3 = _queue__queue_1;

  return v3;
}

+ (int64_t)_preferredGender
{
  v2 = _AFPreferencesOutputVoice();
  v3 = [v2 gender];

  return v3;
}

+ (id)_preferredNameForLanguage:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v4 = _AFPreferencesOutputVoice();
  v5 = [v4 languageCode];
  if ([v5 isEqualToString:v3])
  {
    v6 = [v4 name];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)preferredVoiceType
{
  v2 = [a1 _preferredGender];
  if (v2 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v2 == 2);
  }
}

+ (int64_t)_genderForLocaleIdentifier:(id)a3
{
  v3 = [MEMORY[0x277CBEAF8] lt_localeWithLTIdentifier:a3];
  v4 = _LTPreferredVoiceTypeForLocale(v3);
  v5 = 2;
  if (v4 != 2)
  {
    v5 = 3;
  }

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

+ (id)ttsAssetForLocaleIdentifier:(id)a3 onDeviceOnly:(BOOL)a4
{
  v4 = a4;
  v53[2] = *MEMORY[0x277D85DE8];
  v6 = [a1 _mapIdentifierForSiriTTS:a3];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v8 = [a1 _preferredNameForLanguage:v7];
  v52[0] = &unk_284868020;
  v52[1] = &unk_284868038;
  v53[0] = v7;
  v45 = [a1 _genderForLocaleIdentifier:v6];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v53[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  v11 = [v10 mutableCopy];

  if (v8)
  {
    [v11 setObject:v8 forKey:&unk_284868050];
  }

  if (v4)
  {
    [v11 setObject:&unk_284868068 forKey:&unk_284868080];
  }

  v12 = [MEMORY[0x277D61490] gryphonVoice];
  v51[0] = v12;
  v13 = [MEMORY[0x277D61490] customVoice];
  v51[1] = v13;
  v14 = [MEMORY[0x277D61490] combinedVoice];
  v51[2] = v14;
  v15 = [MEMORY[0x277D61490] vocalizerVoice];
  v51[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];

  v17 = [MEMORY[0x277D61480] bestAssetOfTypes:v16 matching:v11];
  v18 = _LTOSLogAssets();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDTTSAssetService ttsAssetForLocaleIdentifier:onDeviceOnly:];
  }

  v43 = v11;
  if (v17)
  {
    goto LABEL_8;
  }

  v42 = v7;
  v20 = _LTOSLogAssets();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [_LTDTTSAssetService ttsAssetForLocaleIdentifier:v20 onDeviceOnly:?];
  }

  v21 = [a1 _allTTSAssets];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v22 = [v21 objectForKeyedSubscript:v6];
  v23 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v23)
  {

    goto LABEL_39;
  }

  v24 = v23;
  v39 = v21;
  v40 = v16;
  v41 = v6;
  v25 = 0;
  v17 = 0;
  v26 = *v47;
  obj = v22;
  do
  {
    v27 = 0;
    do
    {
      if (*v47 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v46 + 1) + 8 * v27);
      v29 = [v28 gender];
      if (v8)
      {
        v30 = [v28 name];
        v31 = [v30 caseInsensitiveCompare:v8];

        if (v29 == v45 && v31 == 0)
        {
          v25 = 3;
LABEL_28:
          v33 = [v28 weight];
          if (v33 <= [v17 weight])
          {
            v28 = v17;
          }

LABEL_30:
          v34 = v28;

          v17 = v34;
          goto LABEL_31;
        }

        if (v25 <= 2 && !v31)
        {
          v25 = 2;
          goto LABEL_28;
        }
      }

      if (v25 < 2 && v29 == v45)
      {
        v25 = 1;
        goto LABEL_28;
      }

      if (!v25)
      {
        goto LABEL_30;
      }

LABEL_31:
      ++v27;
    }

    while (v24 != v27);
    v35 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    v24 = v35;
  }

  while (v35);

  v6 = v41;
  v7 = v42;
  v16 = v40;
  if (v17)
  {
LABEL_8:
    v19 = [[_LTDTTSAssetModel alloc] initWithProvider:v17];
    goto LABEL_42;
  }

LABEL_39:
  v36 = _LTOSLogAssets();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    +[_LTDTTSAssetService ttsAssetForLocaleIdentifier:onDeviceOnly:];
  }

  v17 = 0;
  v19 = 0;
LABEL_42:

  v37 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)voiceForLocaleIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 ttsAssetForLocaleIdentifier:v4 onDeviceOnly:1];
  v6 = [v5 provider];
  if (v6)
  {
    v7 = [a1 _siriVoiceForTTSAsset:v6];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  v8 = _LTOSLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v6 identifier];
    v15 = 138543618;
    v16 = v10;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "SiriTTS cannot load voice for TTS asset %{public}@, attempt default voice for language %{public}@", &v15, 0x16u);
  }

  v7 = [objc_alloc(MEMORY[0x277D61478]) initWithLanguage:v4 name:0];
  if ([v7 footprint])
  {
LABEL_6:
    v7 = v7;
    v11 = v7;
  }

  else
  {
    v12 = _LTOSLogAssets();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[_LTDTTSAssetService voiceForLocaleIdentifier:];
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_siriVoiceForTTSAsset:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 supportedLanguages];
    v6 = [v5 firstObject];

    v7 = [v4 name];
    v8 = [v4 gender];
    if (v8 > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_233005C50[v8];
    }

    v12 = [objc_alloc(MEMORY[0x277D61478]) initWithLanguage:v6 name:v7];
    if (v12 || (v12 = [objc_alloc(MEMORY[0x277D61478]) initWithLanguage:v6 name:0]) != 0)
    {
      v11 = v12;
      [v12 setGender:v9];
    }

    else
    {
      v14 = _LTOSLogAssets();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[_LTDTTSAssetService _siriVoiceForTTSAsset:];
      }

      v11 = 0;
    }
  }

  else
  {
    v10 = _LTOSLogAssets();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_LTDTTSAssetService _siriVoiceForTTSAsset:v10];
    }

    v11 = 0;
  }

  return v11;
}

+ (id)_allTTSAssets
{
  v40[2] = *MEMORY[0x277D85DE8];
  if (_cachedTTSAssets)
  {
    v2 = _cachedTTSAssets;
  }

  else
  {
    v4 = MEMORY[0x277D61480];
    v5 = [MEMORY[0x277D61490] gryphonVoice];
    v40[0] = v5;
    v6 = [MEMORY[0x277D61490] vocalizerVoice];
    v40[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v8 = [v4 listAssetsOfTypes:v7 matching:MEMORY[0x277CBEC10]];

    v9 = +[_LTDLanguageAssetService availableIdentifiers];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __36___LTDTTSAssetService__allTTSAssets__block_invoke;
    v37[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8l;
    v37[4] = a1;
    v10 = [v9 _ltCompactMap:v37];

    v2 = [MEMORY[0x277CBEB38] dictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v33 + 1) + 8 * i);
          v17 = [MEMORY[0x277CBEB18] array];
          [v2 setObject:v17 forKeyedSubscript:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v13);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v29 + 1) + 8 * j);
          v24 = [v23 primaryLanguage];
          v25 = [v24 lt_localeIdentifier];

          v26 = [v2 objectForKeyedSubscript:v25];
          [v26 addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v20);
    }

    objc_storeStrong(&_cachedTTSAssets, v2);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (SiriTTSDaemonSession)siriTTSSession
{
  v3 = _siriTTSSession;
  if (_siriTTSSession)
  {
    [a1 setSiriTTSSession:_siriTTSSession];
    v4 = v3;
  }

  else
  {
    v4 = objc_opt_new();
    [a1 setSiriTTSSession:v4];
  }

  return v4;
}

+ (void)setSubscribedVoices:(id)a3
{
  v4 = a3;
  v5 = _LTOSLogAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDTTSAssetService setSubscribedVoices:];
  }

  v6 = [a1 siriTTSSession];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43___LTDTTSAssetService_setSubscribedVoices___block_invoke;
  v7[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v7[4] = a1;
  [v6 subscribeWithVoices:v4 reply:v7];
}

+ (void)_subscribeToVoice:(id)a3
{
  v4 = a3;
  v5 = _LTOSLogAssets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDTTSAssetService _subscribeToVoice:];
  }

  v6 = [a1 subscribedVoices];
  v7 = [v6 arrayByAddingObject:v4];

  v8 = [a1 siriTTSSession];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41___LTDTTSAssetService__subscribeToVoice___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a1;
  [v8 subscribeWithVoices:v7 reply:v9];
}

+ (NSArray)subscribedVoices
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = _LTPreferencesInstalledLocales();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
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

        v9 = [a1 voiceForLocaleIdentifier:*(*(&v13 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = _LTOSLogAssets();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDTTSAssetService subscribedVoices];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)downloadVoiceAssetsForLanguagePair:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _LTOSLogAssets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v20 = v3;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "SiriTTS downloaded voice assets for pair %{public}@", buf, 0xCu);
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [v3 sourceLocale];
  v7 = [v6 _ltLocaleIdentifier];
  v8 = [v5 stringWithFormat:@"TTS-%@", v7];

  v9 = [[_LTDTTSAssetModel alloc] initWithAssetIdentifier:v8];
  v10 = [[_LTDAssetModel alloc] initWithProvider:v9];
  v11 = MEMORY[0x277CCACA8];
  v12 = [v3 targetLocale];
  v13 = [v12 _ltLocaleIdentifier];
  v14 = [v11 stringWithFormat:@"TTS-%@", v13];

  v15 = [[_LTDTTSAssetModel alloc] initWithAssetIdentifier:v14];
  v16 = [[_LTDAssetModel alloc] initWithProvider:v15];
  [a1 downloadAsset:v10 options:0 progress:0 completion:0];
  [a1 downloadAsset:v16 options:0 progress:0 completion:0];

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)downloadAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v10;
  if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v14 = 0;
LABEL_6:
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"SiriTTS unsupported asset type"];
    v17 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:16 description:v16 userInfo:0];
    v18 = _LTOSLogAssets();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[_LTDTTSAssetService downloadAsset:options:progress:completion:];
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else if (!v12)
    {
LABEL_9:

      goto LABEL_10;
    }

    v12[2](v12, v17);
    goto LABEL_9;
  }

  v14 = v13;
  if ([v13 managedAssetProvider] != 4)
  {
    goto LABEL_6;
  }

  v15 = [a1 _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke;
  block[3] = &unk_2789B6600;
  v14 = v13;
  v20 = v14;
  v21 = v12;
  v23 = a4;
  v22 = v11;
  v24 = a1;
  dispatch_async(v15, block);

  v16 = v20;
LABEL_10:
}

+ (void)ttsAssetForLocaleIdentifier:onDeviceOnly:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "TTS: Choosing: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)ttsAssetForLocaleIdentifier:onDeviceOnly:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "SiriTTS failed to locate TTS assets for identifier %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)voiceForLocaleIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "SiriTTS cannot find default voice for language %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_siriVoiceForTTSAsset:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "SiriTTS failed to derive voice for language %{public}@ with name %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)setSubscribedVoices:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "SiriTTS set subscribed voices: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_subscribeToVoice:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "Subscribing to voice: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)subscribedVoices
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_5(&dword_232E53000, v0, v1, "SiriTTS get subscribed voices: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)downloadAsset:options:progress:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "SiriTTS failed to download asset %{public}@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end