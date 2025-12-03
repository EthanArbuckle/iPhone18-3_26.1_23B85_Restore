@interface WBSMobileAssetController
- (NSDate)lastUpdateDate;
- (WBSMobileAssetController)initWithMobileAssetType:(id)type updateDateDefaultsKey:(id)key updateInterval:(double)interval minimumDelay:(double)delay;
- (WBSMobileAssetController)initWithMobileAssetType:(id)type updateInterval:(double)interval minimumDelay:(double)delay;
- (WBSMobileAssetControllerDelegate)delegate;
- (void)_downloadIfNecessary:(id)necessary;
- (void)_queryAssets:(id)assets;
- (void)_queryBackgroundImageAsset:(id)asset retryCount:(int64_t)count completionHandler:(id)handler;
- (void)_queryMostRecentAsset:(id)asset;
- (void)_update;
- (void)_updateCatalog:(id)catalog;
- (void)downloadMobileAssetBackgroundImage:(id)image completionHandler:(id)handler;
- (void)queryURL:(id)l;
- (void)setDelegate:(id)delegate;
- (void)setLastUpdateDate:(id)date;
@end

@implementation WBSMobileAssetController

- (NSDate)lastUpdateDate
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults safari_dateForKey:self->_updateDateDefaultsKey];

  return v4;
}

- (WBSMobileAssetController)initWithMobileAssetType:(id)type updateDateDefaultsKey:(id)key updateInterval:(double)interval minimumDelay:(double)delay
{
  typeCopy = type;
  keyCopy = key;
  v25.receiver = self;
  v25.super_class = WBSMobileAssetController;
  v13 = [(WBSMobileAssetController *)&v25 init];
  if (v13)
  {
    objc_initWeak(&location, v13);
    objc_storeStrong(&v13->_assetType, type);
    objc_storeStrong(&v13->_updateDateDefaultsKey, key);
    v13->_updateInterval = interval;
    v14 = dispatch_queue_create("com.apple.SafariSharedUI.WBSMobileAssetController.internalQueue", 0);
    internalQueue = v13->_internalQueue;
    v13->_internalQueue = v14;

    v16 = objc_alloc(MEMORY[0x1E69C8FD0]);
    lastUpdateDate = [(WBSMobileAssetController *)v13 lastUpdateDate];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __102__WBSMobileAssetController_initWithMobileAssetType_updateDateDefaultsKey_updateInterval_minimumDelay___block_invoke;
    v22[3] = &unk_1E8283A38;
    objc_copyWeak(&v23, &location);
    v18 = [v16 initWithInterval:lastUpdateDate minimumDelay:v22 lastFireDate:interval block:delay];
    scheduler = v13->_scheduler;
    v13->_scheduler = v18;

    v20 = v13;
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __102__WBSMobileAssetController_initWithMobileAssetType_updateDateDefaultsKey_updateInterval_minimumDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _update];
}

- (WBSMobileAssetController)initWithMobileAssetType:(id)type updateInterval:(double)interval minimumDelay:(double)delay
{
  typeCopy = type;
  v9 = [typeCopy stringByAppendingString:@".UpdateDate"];
  v10 = [(WBSMobileAssetController *)self initWithMobileAssetType:typeCopy updateDateDefaultsKey:v9 updateInterval:interval minimumDelay:delay];

  return v10;
}

- (void)downloadMobileAssetBackgroundImage:(id)image completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__WBSMobileAssetController_downloadMobileAssetBackgroundImage_completionHandler___block_invoke;
  v8[3] = &unk_1E8286230;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WBSMobileAssetController *)self _queryBackgroundImageAsset:image completionHandler:v8];
}

void __81__WBSMobileAssetController_downloadMobileAssetBackgroundImage_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v7 = [a2 firstObject];
    v8 = v7;
    if (v7)
    {
      if ([v7 state] != 2)
      {
        v10 = objc_alloc_init(getMADownloadOptionsClass());
        [v10 setDiscretionary:0];
        [v10 setAllowsCellularAccess:1];
        [v10 setAllowsExpensiveAccess:1];
        [v10 setRequiresPowerPluggedIn:0];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __81__WBSMobileAssetController_downloadMobileAssetBackgroundImage_completionHandler___block_invoke_2;
        v12[3] = &unk_1E8286208;
        v11 = *(a1 + 40);
        v12[4] = *(a1 + 32);
        v14 = v11;
        v13 = v8;
        [v13 startDownload:v10 then:v12];

        goto LABEL_9;
      }

      v9 = *(*(a1 + 40) + 16);
    }

    else
    {
      v9 = *(*(a1 + 40) + 16);
    }

    v9();
LABEL_9:

    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained mobileAssetController:*(a1 + 32) didFailDownload:v5];

  (*(*(a1 + 40) + 16))();
LABEL_10:
}

uint64_t __81__WBSMobileAssetController_downloadMobileAssetBackgroundImage_completionHandler___block_invoke_2(uint64_t a1, unint64_t a2)
{
  if (a2 > 0xE || ((1 << a2) & 0x4401) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    v5 = *(a1 + 32);
    v6 = MEMORY[0x1E696ABC0];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to download catalog for %@: %zd", *(v5 + 40), a2];
    v8 = [v6 safari_errorWithDomain:@"MADownLoadResult" code:a2 privacyPreservingDescription:v7];
    [WeakRetained mobileAssetController:v5 didFailDownload:v8];
  }

  v9 = *(*(a1 + 48) + 16);

  return v9();
}

- (void)_queryBackgroundImageAsset:(id)asset retryCount:(int64_t)count completionHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  v10 = [objc_alloc(getMAAssetQueryClass()) initWithType:self->_assetType];
  [v10 addKeyValuePair:@"FileName" with:assetCopy];
  [v10 addKeyValuePair:@"IsBackgroundImageThumbnailV1" with:@"NO"];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__WBSMobileAssetController__queryBackgroundImageAsset_retryCount_completionHandler___block_invoke;
  v14[3] = &unk_1E82862A0;
  v19[1] = count;
  objc_copyWeak(v19, &location);
  v11 = assetCopy;
  v15 = v11;
  v12 = handlerCopy;
  v18 = v12;
  selfCopy = self;
  v13 = v10;
  v17 = v13;
  [v13 queryMetaDataWithError:v14];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

void __84__WBSMobileAssetController__queryBackgroundImageAsset_retryCount_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 2)
  {
    if (*(a1 + 72) <= 0)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __84__WBSMobileAssetController__queryBackgroundImageAsset_retryCount_completionHandler___block_invoke_2;
      v14[3] = &unk_1E8286258;
      objc_copyWeak(v17, (a1 + 64));
      v12 = *(a1 + 32);
      v13 = *(a1 + 72);
      v15 = v12;
      v17[1] = v13;
      v16 = *(a1 + 56);
      [WeakRetained _updateCatalog:v14];

      objc_destroyWeak(v17);
    }

    else
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to download catalog for %@ after %ld attempts", *(*(a1 + 40) + 40), 2];
      v8 = [v6 safari_errorWithDomain:@"MADownLoadResult" code:2 privacyPreservingDescription:v7];

      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v9 = [*(a1 + 48) results];
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_26];

    (*(*(a1 + 56) + 16))();
  }
}

void __84__WBSMobileAssetController__queryBackgroundImageAsset_retryCount_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _queryBackgroundImageAsset:*(a1 + 32) retryCount:*(a1 + 56) + 1 completionHandler:*(a1 + 40)];
}

uint64_t __84__WBSMobileAssetController__queryBackgroundImageAsset_retryCount_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 attributes];
  v6 = getASAttributeContentVersion();
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v4 attributes];

  v9 = getASAttributeContentVersion();
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v7 compare:v10];

  return v11;
}

- (WBSMobileAssetControllerDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__15;
  v10 = __Block_byref_object_dispose__15;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__WBSMobileAssetController_delegate__block_invoke;
  v5[3] = &unk_1E8285EF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__WBSMobileAssetController_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__WBSMobileAssetController_setDelegate___block_invoke;
  v7[3] = &unk_1E82834A0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(internalQueue, v7);
}

void __40__WBSMobileAssetController_setDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = *(a1 + 40);

  if (WeakRetained != v3)
  {
    objc_storeWeak((*(a1 + 32) + 24), *(a1 + 40));
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__WBSMobileAssetController_setDelegate___block_invoke_2;
    v7[3] = &unk_1E82862C8;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    [v4 _queryMostRecentAsset:v7];
  }
}

void __40__WBSMobileAssetController_setDelegate___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  if (a3)
  {
    [v6 mobileAssetController:v7 didFailRetrieve:a3];
  }

  else
  {
    v8 = [v5 getLocalFileUrl];
    v9 = [v10 attributes];
    [v6 mobileAssetController:v7 didBecomeAvailable:v8 withAttributes:v9];
  }
}

- (void)setLastUpdateDate:(id)date
{
  v4 = MEMORY[0x1E695E000];
  dateCopy = date;
  standardUserDefaults = [v4 standardUserDefaults];
  [standardUserDefaults safari_setDate:dateCopy forKey:self->_updateDateDefaultsKey];
}

- (void)_update
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__WBSMobileAssetController__update__block_invoke;
  block[3] = &unk_1E8283080;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __35__WBSMobileAssetController__update__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  if ((objc_opt_respondsToSelector() & 1) == 0 || [WeakRetained mobileAssetControllerShouldPerformScheduledUpdate:*(a1 + 32)])
  {
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __35__WBSMobileAssetController__update__block_invoke_2;
    v4[3] = &unk_1E8283080;
    v4[4] = v3;
    [v3 _updateCatalog:v4];
  }
}

uint64_t __35__WBSMobileAssetController__update__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__WBSMobileAssetController__update__block_invoke_3;
  v3[3] = &unk_1E82862F0;
  v3[4] = v1;
  return [v1 _downloadIfNecessary:v3];
}

void __35__WBSMobileAssetController__update__block_invoke_3(uint64_t a1, void *a2, int a3, void *a4)
{
  v14 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v9 = WeakRetained;
  if (v7)
  {
    [WeakRetained mobileAssetController:*(a1 + 32) didFailDownload:v7];
  }

  else
  {
    v10 = [MEMORY[0x1E695DF00] date];
    [*(a1 + 32) setLastUpdateDate:v10];

    if (a3)
    {
      v11 = *(a1 + 32);
      v12 = [v14 getLocalFileUrl];
      v13 = [v14 attributes];
      [v9 mobileAssetController:v11 didDownload:v12 withAttributes:v13];
    }
  }
}

- (void)_updateCatalog:(id)catalog
{
  catalogCopy = catalog;
  v5 = objc_alloc_init(getMADownloadOptionsClass());
  [v5 setDiscretionary:0];
  [v5 setAllowsCellularAccess:1];
  [v5 setRequiresPowerPluggedIn:0];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v6 = getMAAssetClass_softClass;
  v20 = getMAAssetClass_softClass;
  if (!getMAAssetClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getMAAssetClass_block_invoke;
    v15 = &unk_1E8283D08;
    v16 = &v17;
    MobileAssetLibraryCore();
    v18[3] = objc_getClass("MAAsset");
    getMAAssetClass_softClass = *(v16[1] + 24);
    v6 = v18[3];
  }

  v7 = v6;
  _Block_object_dispose(&v17, 8);
  assetType = self->_assetType;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__WBSMobileAssetController__updateCatalog___block_invoke;
  v10[3] = &unk_1E8286318;
  v10[4] = self;
  v11 = catalogCopy;
  v9 = catalogCopy;
  [v6 startCatalogDownload:assetType options:v5 then:v10];
}

uint64_t __43__WBSMobileAssetController__updateCatalog___block_invoke(uint64_t a1, unint64_t a2)
{
  if (a2 > 0xE || ((1 << a2) & 0x4401) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    v5 = *(a1 + 32);
    v6 = MEMORY[0x1E696ABC0];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to download catalog for %@: %i", *(v5 + 40), a2];
    v8 = [v6 safari_errorWithDomain:@"MADownLoadResult" code:a2 privacyPreservingDescription:v7];
    [WeakRetained mobileAssetController:v5 didFailCatalogDownload:v8];
  }

  v9 = *(*(a1 + 40) + 16);

  return v9();
}

- (void)_queryAssets:(id)assets
{
  assetsCopy = assets;
  v5 = [objc_alloc(getMAAssetQueryClass()) initWithType:self->_assetType];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained mobileAssetController:self willPerformQuery:v5];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__WBSMobileAssetController__queryAssets___block_invoke;
  v9[3] = &unk_1E8286318;
  v10 = v5;
  v11 = assetsCopy;
  v7 = assetsCopy;
  v8 = v5;
  [v8 queryMetaData:v9];
}

void __41__WBSMobileAssetController__queryAssets___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) results];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_321];

  (*(*(a1 + 40) + 16))();
}

uint64_t __41__WBSMobileAssetController__queryAssets___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 attributes];
  v6 = getASAttributeContentVersion();
  v7 = [v5 objectForKey:v6];
  v8 = [v4 attributes];

  v9 = getASAttributeContentVersion();
  v10 = [v8 objectForKey:v9];
  v11 = [v7 compare:v10];

  return v11;
}

- (void)queryURL:(id)l
{
  lCopy = l;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__WBSMobileAssetController_queryURL___block_invoke;
  v6[3] = &unk_1E8286340;
  v7 = lCopy;
  v5 = lCopy;
  [(WBSMobileAssetController *)self _queryMostRecentAsset:v6];
}

void __37__WBSMobileAssetController_queryURL___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v6 = [a2 getLocalFileUrl];
    (*(v3 + 16))(v3, v6, 0);
  }
}

- (void)_queryMostRecentAsset:(id)asset
{
  assetCopy = asset;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__WBSMobileAssetController__queryMostRecentAsset___block_invoke;
  v6[3] = &unk_1E8286230;
  v6[4] = self;
  v7 = assetCopy;
  v5 = assetCopy;
  [(WBSMobileAssetController *)self _queryAssets:v6];
}

void __50__WBSMobileAssetController__queryMostRecentAsset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained mobileAssetController:*(a1 + 32) didFailDownload:v6];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v17 + 1) + 8 * i) state] == 2)
          {
            (*(*(a1 + 40) + 16))();

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = *(a1 + 40);
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to find matching asset for %@", *(*(a1 + 32) + 40)];
    v16 = [v13 safari_errorWithDomain:@"MADownLoadResult" code:18 privacyPreservingDescription:v15];
    (*(v14 + 16))(v14, 0, v16);
  }

LABEL_13:
}

- (void)_downloadIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__WBSMobileAssetController__downloadIfNecessary___block_invoke;
  v6[3] = &unk_1E8286230;
  v6[4] = self;
  v7 = necessaryCopy;
  v5 = necessaryCopy;
  [(WBSMobileAssetController *)self _queryAssets:v6];
}

void __49__WBSMobileAssetController__downloadIfNecessary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained mobileAssetController:*(a1 + 32) didFailDownload:v6];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(getMADownloadOptionsClass());
    [v8 setDiscretionary:0];
    [v8 setAllowsCellularAccess:1];
    [v8 setAllowsExpensiveAccess:1];
    [v8 setRequiresPowerPluggedIn:0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__WBSMobileAssetController__downloadIfNecessary___block_invoke_2;
    v12[3] = &unk_1E8286368;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v13 = v8;
    v14 = v10;
    v15 = v9;
    v11 = v8;
    [v5 enumerateObjectsUsingBlock:v12];
  }
}

void __49__WBSMobileAssetController__downloadIfNecessary___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 2)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__WBSMobileAssetController__downloadIfNecessary___block_invoke_3;
    v6[3] = &unk_1E8286208;
    v4 = a1[4];
    v5 = a1[6];
    v6[4] = a1[5];
    v8 = v5;
    v7 = v3;
    [v7 startDownload:v4 then:v6];
  }
}

uint64_t __49__WBSMobileAssetController__downloadIfNecessary___block_invoke_3(uint64_t a1, unint64_t a2)
{
  if (a2 > 0xE || ((1 << a2) & 0x4401) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    v5 = *(a1 + 32);
    v6 = MEMORY[0x1E696ABC0];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to download catalog for %@: %i", *(v5 + 40), a2];
    v8 = [v6 safari_errorWithDomain:@"MADownLoadResult" code:a2 privacyPreservingDescription:v7];
    [WeakRetained mobileAssetController:v5 didFailDownload:v8];
  }

  v9 = *(*(a1 + 48) + 16);

  return v9();
}

@end