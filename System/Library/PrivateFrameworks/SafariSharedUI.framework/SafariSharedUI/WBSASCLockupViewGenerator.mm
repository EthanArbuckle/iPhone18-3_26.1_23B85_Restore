@interface WBSASCLockupViewGenerator
+ (id)_lockupContextForLockupViewType:(int64_t)a3;
+ (id)_lockupViewGroupForLockupViewType:(int64_t)a3;
+ (id)cloudLockupViewGroup;
+ (id)importLockupViewGroup;
+ (id)recommendationsLockupViewGroup;
+ (id)sharedGenerator;
- (id)productDetailsPresentationContextForLockupView:(id)a3;
- (void)_allLockupViewRequestsCompleted;
- (void)_lockupViewRequestedCompleted:(id)a3 loadedSuccessfully:(BOOL)a4;
- (void)generateLockupViewsForAvailableApps:(id)a3 lockupViewType:(int64_t)a4 maintainRequestedOrderOfApps:(BOOL)a5 completionHandler:(id)a6;
- (void)getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler:(id)a3;
- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4;
- (void)lockupView:(id)a3 preprocessOffer:(id)a4 inState:(id)a5 completionBlock:(id)a6;
- (void)lockupViewDidBeginRequest:(id)a3;
- (void)lockupViewDidFinishRequest:(id)a3;
@end

@implementation WBSASCLockupViewGenerator

+ (id)sharedGenerator
{
  if (+[WBSASCLockupViewGenerator sharedGenerator]::onceToken != -1)
  {
    +[WBSASCLockupViewGenerator sharedGenerator];
  }

  v3 = +[WBSASCLockupViewGenerator sharedGenerator]::sharedGenerator;

  return v3;
}

void __44__WBSASCLockupViewGenerator_sharedGenerator__block_invoke()
{
  v0 = objc_alloc_init(WBSASCLockupViewGenerator);
  v1 = +[WBSASCLockupViewGenerator sharedGenerator]::sharedGenerator;
  +[WBSASCLockupViewGenerator sharedGenerator]::sharedGenerator = v0;
}

+ (id)cloudLockupViewGroup
{
  if (+[WBSASCLockupViewGenerator cloudLockupViewGroup]::onceToken != -1)
  {
    +[WBSASCLockupViewGenerator cloudLockupViewGroup];
  }

  v3 = +[WBSASCLockupViewGenerator cloudLockupViewGroup]::group;

  return v3;
}

void __49__WBSASCLockupViewGenerator_cloudLockupViewGroup__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E698B3D0]) initWithName:@"ExtensionLockups"];
  v1 = +[WBSASCLockupViewGenerator cloudLockupViewGroup]::group;
  +[WBSASCLockupViewGenerator cloudLockupViewGroup]::group = v0;
}

+ (id)importLockupViewGroup
{
  if (+[WBSASCLockupViewGenerator importLockupViewGroup]::onceToken != -1)
  {
    +[WBSASCLockupViewGenerator importLockupViewGroup];
  }

  v3 = +[WBSASCLockupViewGenerator importLockupViewGroup]::group;

  return v3;
}

void __50__WBSASCLockupViewGenerator_importLockupViewGroup__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E698B3D0]) initWithName:@"ExtensionImportLockups"];
  v1 = +[WBSASCLockupViewGenerator importLockupViewGroup]::group;
  +[WBSASCLockupViewGenerator importLockupViewGroup]::group = v0;
}

+ (id)recommendationsLockupViewGroup
{
  if (+[WBSASCLockupViewGenerator recommendationsLockupViewGroup]::onceToken != -1)
  {
    +[WBSASCLockupViewGenerator recommendationsLockupViewGroup];
  }

  v3 = +[WBSASCLockupViewGenerator recommendationsLockupViewGroup]::group;

  return v3;
}

void __59__WBSASCLockupViewGenerator_recommendationsLockupViewGroup__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E698B3D0]) initWithName:@"RecommendedExtensionLockups"];
  v1 = +[WBSASCLockupViewGenerator recommendationsLockupViewGroup]::group;
  +[WBSASCLockupViewGenerator recommendationsLockupViewGroup]::group = v0;
}

- (void)generateLockupViewsForAvailableApps:(id)a3 lockupViewType:(int64_t)a4 maintainRequestedOrderOfApps:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke;
  block[3] = &unk_1E82833B8;
  block[4] = self;
  v15 = v10;
  v18 = a5;
  v16 = v11;
  v17 = a4;
  v12 = v10;
  v13 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8) || ![*(a1 + 40) count])
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    *(*(a1 + 32) + 40) = *(a1 + 64);
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = 0;

    if (*(*(a1 + 32) + 40) == 1)
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      v6 = *(a1 + 32);
      v7 = *(v6 + 48);
      *(v6 + 48) = v5;

      if ([*(a1 + 40) count])
      {
        v8 = 0;
        do
        {
          v9 = [*(a1 + 40) objectAtIndexedSubscript:v8];
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
          v11 = *(*(a1 + 32) + 48);
          v12 = [v9 adamID];
          [v11 setObject:v10 forKeyedSubscript:v12];

          ++v8;
        }

        while (v8 < [*(a1 + 40) count]);
      }
    }

    v13 = [*(a1 + 48) copy];
    v15 = a1 + 32;
    v14 = *(a1 + 32);
    v16 = *(v14 + 8);
    *(v14 + 8) = v13;

    v17 = [MEMORY[0x1E695DF70] array];
    v18 = *(*(a1 + 32) + 24);
    *(*v15 + 24) = v17;

    v19 = [MEMORY[0x1E695DF70] array];
    v20 = *(*(a1 + 32) + 16);
    *(*v15 + 16) = v19;

    v21 = [MEMORY[0x1E695DF90] dictionary];
    v22 = *(*(a1 + 32) + 32);
    *(*v15 + 32) = v21;

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = *(a1 + 40);
    v23 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v23)
    {
      v47 = *v56;
      v46 = *MEMORY[0x1E698B370];
      v45 = *MEMORY[0x1E698B340];
      v43 = *MEMORY[0x1E698B360];
      v24 = MEMORY[0x1E695F058];
      do
      {
        v48 = v23;
        for (i = 0; i != v48; ++i)
        {
          if (*v56 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v55 + 1) + 8 * i);
          v27 = [objc_alloc(MEMORY[0x1E698B3C8]) initWithFrame:{*v24, v24[1], v24[2], v24[3]}];
          [v27 setSize:v46];
          [v27 setDelegate:*(a1 + 32)];
          v28 = [objc_opt_class() _lockupContextForLockupViewType:*(a1 + 56)];
          v29 = [objc_opt_class() _lockupViewGroupForLockupViewType:*(a1 + 56)];
          [v27 setGroup:v29];

          [*(*(a1 + 32) + 16) addObject:v27];
          v30 = [v26 platformSpecificBundleID];
          if (v30)
          {
            v31 = [v27 group];
            v49[0] = MEMORY[0x1E69E9820];
            v49[1] = 3221225472;
            v49[2] = __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke_33;
            v49[3] = &unk_1E8283390;
            v32 = v30;
            v50 = v32;
            v51 = v27;
            v33 = v28;
            v34 = *(a1 + 32);
            v52 = v33;
            v53 = v34;
            v54 = v26;
            [v31 _lockupRequestForBundleID:v32 withContext:v45 completionBlock:v49];

            v35 = v50;
          }

          else
          {
            v36 = objc_alloc(MEMORY[0x1E698B398]);
            v37 = [v26 adamID];
            v35 = [v36 initWithStringValue:v37];

            v38 = objc_alloc(MEMORY[0x1E698B3C0]);
            LOBYTE(v37) = objc_opt_respondsToSelector();
            v39 = v38;
            v40 = v39;
            if (v37)
            {
              v41 = [v39 _initWithID:v35 kind:v43 context:v28 clientID:@"SafariExtensions" enableAppDistribution:1];
            }

            else
            {
              v41 = [v39 _initWithID:v35 kind:v43 context:v28 clientID:@"SafariExtensions"];
            }

            [v27 setRequest:v41];

            v42 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              *buf = 138478083;
              v60 = v35;
              v61 = 2113;
              v62 = v27;
              _os_log_impl(&dword_1C6968000, v42, OS_LOG_TYPE_INFO, "Adam ID %{private}@ created lockup view %{private}@", buf, 0x16u);
            }
          }
        }

        v23 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v23);
    }
  }
}

void __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke_2;
  block[3] = &unk_1E8283368;
  v10 = v5;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v19 = 138478083;
      v20 = v5;
      v21 = 2113;
      v22 = v6;
      _os_log_impl(&dword_1C6968000, v4, OS_LOG_TYPE_INFO, "Bundle identifier %{private}@ created lockup view %{private}@", &v19, 0x16u);
    }

    v7 = objc_alloc(MEMORY[0x1E698B3C0]);
    v8 = objc_opt_respondsToSelector();
    v9 = v7;
    [*(a1 + 32) id];
    if (v8)
      v10 = {;
      v11 = [*(a1 + 32) kind];
      v12 = [v9 _initWithID:v10 kind:v11 context:*(a1 + 56) clientID:@"SafariExtensions" enableAppDistribution:1];
    }

    else
      v10 = {;
      v11 = [*(a1 + 32) kind];
      v12 = [v9 _initWithID:v10 kind:v11 context:*(a1 + 56) clientID:@"SafariExtensions"];
    }

    [*(a1 + 48) setRequest:v12];

    v16 = [*(a1 + 72) requiredTeamID];
    v17 = *(*(a1 + 64) + 32);
    v18 = [*(a1 + 48) request];
    [v17 setObject:v16 forKeyedSubscript:v18];
  }

  else
  {
    v13 = v3;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      v15 = [*(a1 + 80) safari_privacyPreservingDescription];
      __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke_2_cold_1(v14, v15, &v19, v13);
    }

    [*(a1 + 64) _lockupViewRequestedCompleted:*(a1 + 48) loadedSuccessfully:0];
  }
}

+ (id)_lockupContextForLockupViewType:(int64_t)a3
{
  if (!a3)
  {
    v4 = MEMORY[0x1E698B340];
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (a3 == 1)
  {
    v4 = MEMORY[0x1E698B348];
    goto LABEL_5;
  }

  v5 = @"noPrice";

  return v5;
}

+ (id)_lockupViewGroupForLockupViewType:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [objc_opt_class() recommendationsLockupViewGroup];
  }

  else if (a3 == 1)
  {
    v3 = [objc_opt_class() importLockupViewGroup];
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v3 = [objc_opt_class() cloudLockupViewGroup];
  }

  a2 = v3;
LABEL_8:

  return a2;
}

- (void)_lockupViewRequestedCompleted:(id)a3 loadedSuccessfully:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v4)
  {
    [(NSMutableArray *)self->_succesfullyLoadedLockupViews addObject:v6];
  }

  [(NSMutableArray *)self->_lockupViewsPendingLoad removeObject:v6];
  if (![(NSMutableArray *)self->_lockupViewsPendingLoad count])
  {
    [(WBSASCLockupViewGenerator *)self _allLockupViewRequestsCompleted];
  }
}

- (void)_allLockupViewRequestsCompleted
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [self->_pendingGenerateLockupViewsCompletionHandler copy];
  pendingGenerateLockupViewsCompletionHandler = self->_pendingGenerateLockupViewsCompletionHandler;
  self->_pendingGenerateLockupViewsCompletionHandler = 0;

  if (v3)
  {
    succesfullyLoadedLockupViews = self->_succesfullyLoadedLockupViews;
    if (self->_maintainRequestedOrderOfApps)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __60__WBSASCLockupViewGenerator__allLockupViewRequestsCompleted__block_invoke;
      v10[3] = &unk_1E82833E0;
      v10[4] = self;
      v6 = [(NSMutableArray *)succesfullyLoadedLockupViews sortedArrayUsingComparator:v10];
    }

    else
    {
      v6 = [(NSMutableArray *)succesfullyLoadedLockupViews sortedArrayUsingComparator:&__block_literal_global_37];
    }

    v7 = v6;
    v3[2](v3, v6);
    lockupViewsPendingLoad = self->_lockupViewsPendingLoad;
    self->_lockupViewsPendingLoad = 0;

    v9 = self->_succesfullyLoadedLockupViews;
    self->_succesfullyLoadedLockupViews = 0;
  }
}

uint64_t __60__WBSASCLockupViewGenerator__allLockupViewRequestsCompleted__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 48);
  v7 = [a2 lockup];
  v8 = [v7 id];
  v9 = [v8 stringValue];
  v10 = [v6 objectForKeyedSubscript:v9];
  v11 = *(*(a1 + 32) + 48);
  v12 = [v5 lockup];
  v13 = [v12 id];
  v14 = [v13 stringValue];
  v15 = [v11 objectForKeyedSubscript:v14];
  v16 = [v10 compare:v15];

  return v16;
}

uint64_t __60__WBSASCLockupViewGenerator__allLockupViewRequestsCompleted__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lockup];
  v6 = [v5 title];
  v7 = [v4 lockup];
  v8 = [v7 title];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSArray *)self->_cachedRecommendedAppsWithExtensions count])
  {
    v4[2](v4, self->_cachedRecommendedAppsWithExtensions);
  }

  else
  {
    v5 = MEMORY[0x1E698C7D8];
    v6 = [MEMORY[0x1E698C9E0] bagSubProfile];
    v7 = [MEMORY[0x1E698C9E0] bagSubProfileVersion];
    v8 = [v5 bagForProfile:v6 profileVersion:v7];

    v9 = [objc_alloc(MEMORY[0x1E698C9E0]) initWithType:5 clientIdentifier:@"com.apple.MobileSafari.Extensions" clientVersion:@"1" bag:v8];
    v21[0] = @"1377753262";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [v9 setItemIdentifiers:v10];

    v20 = @"canvas";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [v9 setIncludedResultKeys:v11];

    v12 = [v9 perform];
    if (v12)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __104__WBSASCLockupViewGenerator_getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler___block_invoke;
      v14[3] = &unk_1E8283478;
      v18 = self;
      v19 = v4;
      v15 = @"relationships";
      v16 = @"canvas";
      v17 = @"data";
      [v12 addFinishBlock:v14];
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [WBSASCLockupViewGenerator getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler:v13];
      }

      v4[2](v4, MEMORY[0x1E695E0F0]);
    }
  }
}

void __104__WBSASCLockupViewGenerator_getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v34 = a2;
  v33 = a3;
  if (v33)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v33 safari_privacyPreservingDescription];
      __104__WBSASCLockupViewGenerator_getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler___block_invoke_cold_1(v5, buf, v4);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__WBSASCLockupViewGenerator_getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler___block_invoke_56;
    block[3] = &unk_1E8283428;
    v50 = *(a1 + 64);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v6 = v50;
  }

  else
  {
    v37 = [MEMORY[0x1E695DF70] array];
    v7 = [v34 responseDataItems];
    if (v7)
    {
      v8 = [v34 responseDataItems];
      v9 = [v8 count];

      if (v9)
      {
        v10 = [v34 responseDataItems];
        v11 = [v10 firstObject];

        v12 = [v11 safari_dictionaryForKey:*(a1 + 32)];
        v13 = [v12 safari_dictionaryForKey:*(a1 + 40)];
        v14 = [v13 safari_arrayForKey:*(a1 + 48)];

        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        v45 = 0u;
        obj = v14;
        v15 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
        if (v15)
        {
          v16 = 0;
          v17 = *v46;
LABEL_9:
          v18 = 0;
          while (1)
          {
            if (*v46 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v45 + 1) + 8 * v18);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v19;
              v21 = [v20 safari_dictionaryForKey:*(a1 + 32)];
              v22 = [v21 safari_dictionaryForKey:@"contents"];
              v23 = [v22 safari_arrayForKey:*(a1 + 48)];

              LOBYTE(v22) = [v23 count] == 0;
              v16 = v23;
              if ((v22 & 1) == 0)
              {
                break;
              }
            }

            if (v15 == ++v18)
            {
              v15 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
              v23 = v16;
              if (v15)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }

        else
        {
          v23 = 0;
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v24 = v23;
        v25 = [v24 countByEnumeratingWithState:&v41 objects:v51 count:16];
        if (v25)
        {
          v26 = *v42;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v42 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = *(*(&v41 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v29 = v28;
                v30 = [v29 safari_stringForKey:@"id"];
                if (v30)
                {
                  v31 = [[WBSAvailableAppWithExtension alloc] initWithAdamID:v30 platformSpecificBundleID:0];
                  [v37 addObject:v31];
                }
              }
            }

            v25 = [v24 countByEnumeratingWithState:&v41 objects:v51 count:16];
          }

          while (v25);
        }
      }
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __104__WBSASCLockupViewGenerator_getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler___block_invoke_2;
    v38[3] = &unk_1E8283450;
    v32 = *(a1 + 64);
    v38[4] = *(a1 + 56);
    v39 = v37;
    v40 = v32;
    v6 = v37;
    dispatch_async(MEMORY[0x1E69E96A0], v38);
  }
}

uint64_t __104__WBSASCLockupViewGenerator_getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

- (void)lockupViewDidBeginRequest:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138477827;
    v6 = v3;
    _os_log_impl(&dword_1C6968000, v4, OS_LOG_TYPE_INFO, "Started loading lockup view: %{private}@", &v5, 0xCu);
  }
}

- (void)lockupView:(id)a3 preprocessOffer:(id)a4 inState:(id)a5 completionBlock:(id)a6
{
  v15 = a3;
  v8 = a5;
  v9 = a6;
  v10 = [v15 group];
  v11 = [objc_opt_class() recommendationsLockupViewGroup];
  v12 = [v10 isEqual:v11];

  if ((v12 & 1) != 0 && (*MEMORY[0x1E698B2A0] != v8 ? (v13 = *MEMORY[0x1E698B2C0] == v8) : (v13 = 1), v13))
  {
    [v15 presentProductDetailsViewController];
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.SafariSharedUI.Extensions.WBSAMSSafariErrorDomain" code:1 userInfo:0];
    v9[2](v9, v14);
  }

  else
  {
    v9[2](v9, 0);
  }
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__WBSASCLockupViewGenerator_lockupViewDidFinishRequest___block_invoke;
  v6[3] = &unk_1E8282EA0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __56__WBSASCLockupViewGenerator_lockupViewDidFinishRequest___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v11 = 138477827;
    v12 = v3;
    _os_log_impl(&dword_1C6968000, v2, OS_LOG_TYPE_INFO, "Succeeded loading lockup view: %{private}@", &v11, 0xCu);
  }

  v4 = [*(a1 + 32) request];
  v5 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v4];
  [*(*(a1 + 40) + 32) removeObjectForKey:v4];
  if (!v5)
  {
    v8 = 0;
LABEL_10:
    [*(a1 + 40) _lockupViewRequestedCompleted:*(a1 + 32) loadedSuccessfully:1];
    goto LABEL_11;
  }

  v6 = *(a1 + 32);
  v7 = [v6 lockup];
  v8 = [v7 contentProviderTeamID];

  if (!v8 || ([v5 isEqualToString:v8] & 1) != 0)
  {
    goto LABEL_10;
  }

  v9 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = 138478339;
    v12 = v5;
    v13 = 2113;
    v14 = v8;
    v15 = 2113;
    v16 = v10;
    _os_log_error_impl(&dword_1C6968000, v9, OS_LOG_TYPE_ERROR, "Hiding lockup view due to team ID mismatch (required team ID: %{private}@ vs computed team ID: %{private}@): %{private}@", &v11, 0x20u);
  }

  [*(a1 + 40) _lockupViewRequestedCompleted:*(a1 + 32) loadedSuccessfully:0];
LABEL_11:
}

- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__WBSASCLockupViewGenerator_lockupView_didFailRequestWithError___block_invoke;
  block[3] = &unk_1E8282EF0;
  v11 = v7;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __64__WBSASCLockupViewGenerator_lockupView_didFailRequestWithError___block_invoke(id *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXCloudExtensions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1[4] safari_privacyPreservingDescription];
    __64__WBSASCLockupViewGenerator_lockupView_didFailRequestWithError___block_invoke_cold_1(v3, a1, v7, v2);
  }

  v4 = *(a1[6] + 4);
  v5 = [a1[5] request];
  [v4 removeObjectForKey:v5];

  return [a1[6] _lockupViewRequestedCompleted:a1[5] loadedSuccessfully:0];
}

- (id)productDetailsPresentationContextForLockupView:(id)a3
{
  v3 = a3;
  v4 = [v3 group];
  v5 = [objc_opt_class() importLockupViewGroup];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E698B3B8]) initWithPresentationStyle:1];
  }

  else
  {
    v7 = [MEMORY[0x1E698B3B8] defaultPresentationContext];
  }

  v8 = v7;

  return v8;
}

void __127__WBSASCLockupViewGenerator_generateLockupViewsForAvailableApps_lockupViewType_maintainRequestedOrderOfApps_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Failed to generate lockup request for %{private}@ with error: %{public}@", buf, 0x16u);
}

void __104__WBSASCLockupViewGenerator_getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Failed to fetch extensions from App Store editorial content: %{public}@", buf, 0xCu);
}

void __56__WBSASCLockupViewGenerator_lockupViewDidFinishRequest___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138478083;
  v4 = a1;
  v5 = 2113;
  v6 = a2;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Error computing content provider team ID for lockup view: %{private}@, exception: %{private}@", &v3, 0x16u);
}

void __64__WBSASCLockupViewGenerator_lockupView_didFailRequestWithError___block_invoke_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(a2 + 40);
  *buf = 138543619;
  *(buf + 4) = a1;
  *(buf + 6) = 2113;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Failed loading lockup view with error: %{public}@ - lockup view: %{private}@", buf, 0x16u);
}

@end