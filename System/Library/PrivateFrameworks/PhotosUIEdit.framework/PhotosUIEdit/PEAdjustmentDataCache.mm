@interface PEAdjustmentDataCache
+ (CGSize)synchronousInputSizeForAsset:(id)asset disposition:(int64_t *)disposition;
+ (id)compositionControllerForAssetIfLoaded:(id)loaded disposition:(int64_t *)disposition;
+ (id)entryForAsset:(id)asset networkAccessAllowed:(BOOL)allowed disposition:(int64_t *)disposition originalAdjustmentData:(BOOL)data;
+ (id)synchronousCompositionControllerForAsset:(id)asset networkAccessAllowed:(BOOL)allowed disposition:(int64_t *)disposition originalComposition:(BOOL)composition;
+ (id)synchronousEditorBundleIDForAsset:(id)asset;
+ (void)initialize;
+ (void)requestCompositionControllerForAsset:(id)asset networkAccessAllowed:(BOOL)allowed queue:(id)queue completion:(id)completion;
@end

@implementation PEAdjustmentDataCache

+ (id)entryForAsset:(id)asset networkAccessAllowed:(BOOL)allowed disposition:(int64_t *)disposition originalAdjustmentData:(BOOL)data
{
  dataCopy = data;
  allowedCopy = allowed;
  assetCopy = asset;
  v10 = [[PEAdjustmentDataCacheKey alloc] initWithAsset:assetCopy originalAdjustmentData:dataCopy];
  v11 = [sCache objectForKey:v10];
  if (!v11)
  {
    v11 = [[PEAdjustmentDataCacheEntry alloc] initWithAsset:assetCopy networkAccessAllowed:allowedCopy originalAdjustmentData:dataCopy];
    [sCache setObject:v11 forKey:v10];
  }

  [(PEAdjustmentDataCacheEntry *)v11 waitForResultsWithTimeout];
  if (disposition)
  {
    if (v11)
    {
      disposition = [(PEAdjustmentDataCacheEntry *)v11 disposition];
    }

    else
    {
      disposition = [assetCopy hasAdjustments] ^ 1;
    }

    *disposition = disposition;
  }

  return v11;
}

+ (CGSize)synchronousInputSizeForAsset:(id)asset disposition:(int64_t *)disposition
{
  v4 = [PEAdjustmentDataCache entryForAsset:asset networkAccessAllowed:1 disposition:disposition originalAdjustmentData:0];
  [v4 inputSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (id)synchronousEditorBundleIDForAsset:(id)asset
{
  v6 = 0;
  v3 = [PEAdjustmentDataCache entryForAsset:asset networkAccessAllowed:0 disposition:&v6 originalAdjustmentData:0];
  editorBundleID = [v3 editorBundleID];

  return editorBundleID;
}

+ (id)synchronousCompositionControllerForAsset:(id)asset networkAccessAllowed:(BOOL)allowed disposition:(int64_t *)disposition originalComposition:(BOOL)composition
{
  v6 = [PEAdjustmentDataCache entryForAsset:asset networkAccessAllowed:allowed disposition:disposition originalAdjustmentData:composition];
  compositionController = [v6 compositionController];

  return compositionController;
}

+ (id)compositionControllerForAssetIfLoaded:(id)loaded disposition:(int64_t *)disposition
{
  loadedCopy = loaded;
  v6 = [[PEAdjustmentDataCacheKey alloc] initWithAsset:loadedCopy originalAdjustmentData:0];
  v7 = [sCache objectForKey:v6];
  v8 = v7;
  if (disposition)
  {
    if (v7)
    {
      disposition = [v7 disposition];
    }

    else
    {
      disposition = [loadedCopy hasAdjustments] ^ 1;
    }

    *disposition = disposition;
  }

  compositionController = [v8 compositionController];

  return compositionController;
}

+ (void)requestCompositionControllerForAsset:(id)asset networkAccessAllowed:(BOOL)allowed queue:(id)queue completion:(id)completion
{
  allowedCopy = allowed;
  assetCopy = asset;
  queueCopy = queue;
  completionCopy = completion;
  v12 = [[PEAdjustmentDataCacheKey alloc] initWithAsset:assetCopy originalAdjustmentData:0];
  v13 = [sCache objectForKey:v12];
  if (!v13)
  {
    v13 = [[PEAdjustmentDataCacheEntry alloc] initWithAsset:assetCopy networkAccessAllowed:allowedCopy originalAdjustmentData:0];
    [sCache setObject:v13 forKey:v12];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__PEAdjustmentDataCache_requestCompositionControllerForAsset_networkAccessAllowed_queue_completion___block_invoke;
  v15[3] = &unk_279A30A80;
  v16 = completionCopy;
  v14 = completionCopy;
  [(PEAdjustmentDataCacheEntry *)v13 deliverOn:queueCopy completion:v15];
}

void __100__PEAdjustmentDataCache_requestCompositionControllerForAsset_networkAccessAllowed_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 compositionController];
  v4 = [v3 disposition];

  (*(v2 + 16))(v2, v5, v4);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v3 = sCache;
    sCache = v2;

    v4 = sCache;

    [v4 setCountLimit:30];
  }
}

@end