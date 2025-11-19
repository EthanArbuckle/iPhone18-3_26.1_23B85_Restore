@interface WBSBrowsingAssistantContentProvider
+ (BOOL)assistantEnabledForCurrentDevice;
+ (BOOL)assistantEnabledForLocale:(id)a3;
+ (PARSession)sharedPARSession;
+ (id)_assetManagerForCurrentSystemLocale;
+ (id)_sharedSessionConfiguration;
+ (id)filteredStringForURL:(id)a3 needsVariants:(BOOL *)a4;
+ (void)_assetManagerForCurrentSystemLocale;
+ (void)clearAssistantAssetCache;
+ (void)subscribeToAssistantAssetAndDownloadNow:(BOOL)a3;
+ (void)unsubscribeFromAssistantAsset;
- (void)checkContentAvailabilityForURL:(id)a3 locale:(id)a4 webpageIdentifier:(id)a5 completion:(id)a6;
- (void)fetchContentForURL:(id)a3 completion:(id)a4;
@end

@implementation WBSBrowsingAssistantContentProvider

+ (id)_sharedSessionConfiguration
{
  if (_sharedSessionConfiguration_onceToken != -1)
  {
    +[WBSBrowsingAssistantContentProvider _sharedSessionConfiguration];
  }

  v3 = _sharedSessionConfiguration_configuration;

  return v3;
}

void __66__WBSBrowsingAssistantContentProvider__sharedSessionConfiguration__block_invoke()
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Safari/%s", "8622.2.11.10.8"];
  v0 = [objc_alloc(MEMORY[0x1E6998678]) initWithId:@"Safari" userAgent:v2];
  v1 = _sharedSessionConfiguration_configuration;
  _sharedSessionConfiguration_configuration = v0;
}

+ (PARSession)sharedPARSession
{
  v2 = [a1 _sharedSessionConfiguration];
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E6998670] sharedPARSessionWithConfiguration:v2];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__WBSBrowsingAssistantContentProvider_sharedPARSession__block_invoke;
    block[3] = &unk_1E7FB6D90;
    v6 = v2;
    if (sharedPARSession_onceToken != -1)
    {
      dispatch_once(&sharedPARSession_onceToken, block);
    }

    v3 = sharedPARSession_sharedSession;
  }

  return v3;
}

void __55__WBSBrowsingAssistantContentProvider_sharedPARSession__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E6998670] sessionWithConfiguration:*(a1 + 32)];
  v2 = sharedPARSession_sharedSession;
  sharedPARSession_sharedSession = v1;
}

+ (BOOL)assistantEnabledForCurrentDevice
{
  v2 = [objc_opt_class() sharedPARSession];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v2 safariAssistantEnabledStatus] != 1)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
    v3 = 0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "Assistant is not supported for this device.", v6, 2u);
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

+ (BOOL)assistantEnabledForLocale:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_opt_class() sharedPARSession];
  v5 = [v4 safariAssistantEnabledStatusForPageLanguage:v3];
  if (v5 != 1)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138739971;
      v9 = v3;
      _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Assitant is not eligible for page language: %{sensitive}@", &v8, 0xCu);
    }
  }

  return v5 == 1;
}

+ (id)filteredStringForURL:(id)a3 needsVariants:(BOOL *)a4
{
  v6 = [a3 absoluteString];
  v7 = [a1 _assetManagerForCurrentSystemLocale];
  if (v7)
  {
    v8 = [a1 sharedPARSession];
    v9 = [v8 bag];

    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 safariAssistantHashPrefixLength];
    }

    else
    {
      v10 = 21;
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [v7 prefilterSafariSummarizationPrefetchRequestModelWithUrlString:v6 prefetchHashPrefixLength:v10];
      if (([v12 hasMatchedPattern] & 1) == 0)
      {
        *a4 = 1;
      }

      v11 = [v12 prefilterUrl];
    }

    else
    {
      v11 = v6;
    }
  }

  else
  {
    v11 = v6;
  }

  return v11;
}

+ (id)_assetManagerForCurrentSystemLocale
{
  getSAAssetManagerFactoryClass();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_12;
  }

  if (!_assetManagerForCurrentSystemLocale__localeToAssetManagerMap)
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v3 = _assetManagerForCurrentSystemLocale__localeToAssetManagerMap;
    _assetManagerForCurrentSystemLocale__localeToAssetManagerMap = v2;
  }

  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v4 localeIdentifier];

  v6 = [_assetManagerForCurrentSystemLocale__localeToAssetManagerMap objectForKeyedSubscript:v5];
  if (!v6)
  {
    v12 = 0;
    v6 = [getSAAssetManagerFactoryClass() safariAssistantAssetManagerWithLocale:v5 error:&v12];
    v8 = v12;
    if (v8)
    {
      v9 = v8;
      v10 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[(WBSBrowsingAssistantContentProvider *)v5];
      }

      v7 = 0;
      goto LABEL_11;
    }

    [_assetManagerForCurrentSystemLocale__localeToAssetManagerMap setObject:v6 forKeyedSubscript:v5];
  }

  v6 = v6;
  v7 = v6;
LABEL_11:

LABEL_12:

  return v7;
}

+ (void)subscribeToAssistantAssetAndDownloadNow:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [a1 _assetManagerForCurrentSystemLocale];
  v5 = [MEMORY[0x1E695DF58] currentLocale];
  v6 = [v5 localeIdentifier];

  if (v4)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __79__WBSBrowsingAssistantContentProvider_subscribeToAssistantAssetAndDownloadNow___block_invoke;
      v8[3] = &unk_1E7FB7098;
      v9 = v6;
      v11 = a3;
      v10 = v4;
      [v10 subscribeToAndPreloadSafariSummarizationAssetsForLocale:v9 completionHandler:v8];
    }
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v13 = v6;
      _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_DEFAULT, "Safari failed to subscribe to UAF asset download for locale: %{sensitive}@", buf, 0xCu);
    }
  }
}

void __79__WBSBrowsingAssistantContentProvider_subscribeToAssistantAssetAndDownloadNow___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138739971;
    v9 = v3;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_DEFAULT, "Safari finishes subscribing to assistant assets: %{sensitive}@", buf, 0xCu);
  }

  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __79__WBSBrowsingAssistantContentProvider_subscribeToAssistantAssetAndDownloadNow___block_invoke_22;
    v6[3] = &unk_1E7FB6D90;
    v7 = v4;
    [v5 ensureSafariSummarizationAssetsDownloadedForLocale:v7 completionHandler:v6];
  }
}

void __79__WBSBrowsingAssistantContentProvider_subscribeToAssistantAssetAndDownloadNow___block_invoke_22(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138739971;
    v5 = v3;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_DEFAULT, "Safari finishes downloading assistant assets: %{sensitive}@", &v4, 0xCu);
  }
}

+ (void)clearAssistantAssetCache
{
  v2 = [a1 _assetManagerForCurrentSystemLocale];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v4 = objc_opt_respondsToSelector();
    v3 = v5;
    if (v4)
    {
      [v5 resetSafariSummarizationAssets];
      v3 = v5;
    }
  }
}

+ (void)unsubscribeFromAssistantAsset
{
  v2 = [a1 _assetManagerForCurrentSystemLocale];
  [v2 unsubscribeFromSafariSummarizationAssetsWithCompletionHandler:&__block_literal_global_26];
}

void __68__WBSBrowsingAssistantContentProvider_unsubscribeFromAssistantAsset__block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BB6F3000, v0, OS_LOG_TYPE_DEFAULT, "Safari finishes unsubscribing assistant assets", v1, 2u);
  }
}

- (void)checkContentAvailabilityForURL:(id)a3 locale:(id)a4 webpageIdentifier:(id)a5 completion:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v34 = 0;
  v11 = [objc_opt_class() filteredStringForURL:v8 needsVariants:&v34];
  v12 = v11;
  if (v8 && v11)
  {
    v13 = +[WBSBiomeDonationManager sharedManager];
    [v13 donateBrowsingAssistantBloomFilterPassedEventWithWebPageID:v9];

    v14 = MEMORY[0x1E6998648];
    v15 = [MEMORY[0x1E695DF58] currentLocale];
    v16 = [v15 localeIdentifier];
    v17 = [v14 prefetchRequestForUrl:v12 locale:v16];

    if (v34 == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v18 = [WBSBrowsingAssistantURLVariants variantsForURL:v8];
      v19 = [v18 variants];
      [v17 setUrlVariants:v19];
    }

    if (v34)
    {
      v20 = [v8 absoluteString];
    }

    else
    {
      v20 = v12;
    }

    v23 = v20;
    v24 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
    if (os_signpost_enabled(v24))
    {
      *buf = 134217984;
      v36 = v17;
      _os_signpost_emit_with_name_impl(&dword_1BB6F3000, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "HashPrefixFetching", "Request [%p]", buf, 0xCu);
    }

    v25 = [objc_opt_class() sharedPARSession];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __106__WBSBrowsingAssistantContentProvider_checkContentAvailabilityForURL_locale_webpageIdentifier_completion___block_invoke;
    v29[3] = &unk_1E7FB70C0;
    v30 = v17;
    v31 = v8;
    v32 = v23;
    v33 = v10;
    v26 = v23;
    v27 = v17;
    v28 = [v25 taskWithRequest:v27 completion:v29];

    [v28 resume];
  }

  else
  {
    v21 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138739971;
      v36 = v8;
      _os_log_impl(&dword_1BB6F3000, v21, OS_LOG_TYPE_INFO, "Safari didn't find a match for the URL in bloom filter or pattern list. URL: %{sensitive}@", buf, 0xCu);
    }

    if (v12)
    {
      v22 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [WBSBrowsingAssistantContentProvider checkContentAvailabilityForURL:v22 locale:? webpageIdentifier:? completion:?];
      }
    }

    (*(v10 + 2))(v10, 0, 0);
  }
}

void __106__WBSBrowsingAssistantContentProvider_checkContentAvailabilityForURL_locale_webpageIdentifier_completion___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
  if (os_signpost_enabled(v7))
  {
    v8 = @"YES";
    v9 = a1[4];
    if (!v5)
    {
      v8 = @"NO";
    }

    *buf = 134218242;
    v60 = v9;
    v61 = 2112;
    v62 = v8;
    _os_signpost_emit_with_name_impl(&dword_1BB6F3000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "HashPrefixFetching", "Request [%p] Success=%@ enableTelemetry=YES ", buf, 0x16u);
  }

  if (v6)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __106__WBSBrowsingAssistantContentProvider_checkContentAvailabilityForURL_locale_webpageIdentifier_completion___block_invoke_cold_1(a1, v10);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    v11 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v5;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v35 = v11;
      obj = [v11 hashBucketDetails];
      v39 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
      v12 = 0;
      v13 = 0;
      if (v39)
      {
        v38 = *v53;
        do
        {
          v14 = 0;
          do
          {
            if (*v53 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v40 = v14;
            v15 = *(*(&v52 + 1) + 8 * v14);
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v43 = [v15 hash_details];
            v16 = [v43 countByEnumeratingWithState:&v48 objects:v57 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v49;
              do
              {
                v19 = 0;
                v20 = sel_matched_url_variant;
                v21 = sel_sba_entity_types;
                v41 = v17;
                do
                {
                  if (*v49 != v18)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v22 = *(*(&v48 + 1) + 8 * v19);
                  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v22 matched_url_variant], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", a1[6]), v23, v24))
                  {
                    v13 |= [v22 has_summary];
                    v12 |= [v22 has_table_of_contents];
                    if (objc_opt_respondsToSelector())
                    {
                      v25 = v20;
                      v26 = v12;
                      v27 = v21;
                      v46 = 0u;
                      v47 = 0u;
                      v44 = 0u;
                      v45 = 0u;
                      v28 = [v22 sba_entity_types];
                      v29 = [v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
                      if (v29)
                      {
                        v30 = v29;
                        v31 = *v45;
                        do
                        {
                          for (i = 0; i != v30; ++i)
                          {
                            if (*v45 != v31)
                            {
                              objc_enumerationMutation(v28);
                            }

                            v33 = [*(*(&v44 + 1) + 8 * i) integerValue];
                            if (v33 > 2)
                            {
                              if (v33 == 3)
                              {
                                v13 |= 8uLL;
                              }

                              else if (v33 == 4)
                              {
                                v13 |= 0x10uLL;
                              }
                            }

                            else if (v33 == 1)
                            {
                              v13 |= 2uLL;
                            }

                            else if (v33 == 2)
                            {
                              v13 |= 4uLL;
                            }
                          }

                          v30 = [v28 countByEnumeratingWithState:&v44 objects:v56 count:16];
                        }

                        while (v30);
                      }

                      v21 = v27;
                      v12 = v26;
                      v20 = v25;
                      v17 = v41;
                    }
                  }

                  ++v19;
                }

                while (v19 != v17);
                v17 = [v43 countByEnumeratingWithState:&v48 objects:v57 count:16];
              }

              while (v17);
            }

            v14 = v40 + 1;
          }

          while (v40 + 1 != v39);
          v39 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
        }

        while (v39);
      }

      (*(a1[7] + 16))();
      v6 = 0;
      v5 = v36;
      v11 = v35;
    }

    else
    {
      if (v11)
      {
        v34 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          __106__WBSBrowsingAssistantContentProvider_checkContentAvailabilityForURL_locale_webpageIdentifier_completion___block_invoke_cold_2(v34);
        }
      }

      (*(a1[7] + 16))();
    }
  }
}

- (void)fetchContentForURL:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v21 = 0;
    v7 = [objc_opt_class() filteredStringForURL:v5 needsVariants:&v21];
    v8 = v7;
    if (v7)
    {
      if (v21)
      {
        v9 = [v5 absoluteString];
      }

      else
      {
        v9 = v7;
      }

      v11 = v9;
      v12 = MEMORY[0x1E6998648];
      v13 = [MEMORY[0x1E695DF58] currentLocale];
      v14 = [v13 localeIdentifier];
      v15 = [v12 summarizeRequestForUrl:v11 locale:v14];

      v16 = [objc_opt_class() sharedPARSession];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __69__WBSBrowsingAssistantContentProvider_fetchContentForURL_completion___block_invoke;
      v18[3] = &unk_1E7FB70E8;
      v19 = v5;
      v20 = v6;
      v17 = [v16 taskWithRequest:v15 completion:v18];

      [v17 resume];
    }

    else
    {
      v10 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [WBSBrowsingAssistantContentProvider fetchContentForURL:v5 completion:v10];
      }

      (*(v6 + 2))(v6, MEMORY[0x1E695E0F0]);
    }
  }

  else
  {
    (*(v6 + 2))(v6, MEMORY[0x1E695E0F0]);
  }
}

void __69__WBSBrowsingAssistantContentProvider_fetchContentForURL_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __69__WBSBrowsingAssistantContentProvider_fetchContentForURL_completion___block_invoke_cold_1(a1, v8);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 summaryCandidates];
      v11 = [v10 firstObject];
      v12 = *(a1 + 40);
      v13 = [v11 results];
      (*(v12 + 16))(v12, v13);
    }

    else
    {
      v14 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __69__WBSBrowsingAssistantContentProvider_fetchContentForURL_completion___block_invoke_cold_2(v14);
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

+ (void)_assetManagerForCurrentSystemLocale
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Safari failed to create assistant assitant manager for locale: %{sensitive}@", &v2, 0xCu);
}

void __106__WBSBrowsingAssistantContentProvider_checkContentAvailabilityForURL_locale_webpageIdentifier_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [OUTLINED_FUNCTION_3_0() absoluteString];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1BB6F3000, v6, v7, "Failed to check content availability for URL %{sensitive}@ with error %{public}@", v8, v9, v10, v11, v12);
}

void __106__WBSBrowsingAssistantContentProvider_checkContentAvailabilityForURL_locale_webpageIdentifier_completion___block_invoke_cold_2(void *a1)
{
  v2 = MEMORY[0x1E6998658];
  v3 = a1;
  OUTLINED_FUNCTION_3_0();
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_0();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1BB6F3000, v7, v8, "Checking content availability failed. Received unexpected response type. Expected %{public}@ but received %{public}@", v9, v10, v11, v12, v13);
}

- (void)fetchContentForURL:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Trying to fetch assistant content for an URL that failed broom filter and pattern check, this should never happen. Please file a bug with URL: %{private}@", &v2, 0xCu);
}

void __69__WBSBrowsingAssistantContentProvider_fetchContentForURL_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [OUTLINED_FUNCTION_3_0() absoluteString];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1BB6F3000, v6, v7, "Failed to fetch content for URL %{sensitive}@ with error %{public}@", v8, v9, v10, v11, v12);
}

void __69__WBSBrowsingAssistantContentProvider_fetchContentForURL_completion___block_invoke_cold_2(void *a1)
{
  v2 = MEMORY[0x1E6998660];
  v3 = a1;
  OUTLINED_FUNCTION_3_0();
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_0();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1BB6F3000, v7, v8, "Fetching content failed. Received unexpected response type. Expected %{public}@ but received %{public}@", v9, v10, v11, v12, v13);
}

@end