@interface PEAdjustmentDataCache
+ (CGSize)synchronousInputSizeForAsset:(id)a3 disposition:(int64_t *)a4;
+ (id)compositionControllerForAssetIfLoaded:(id)a3 disposition:(int64_t *)a4;
+ (id)entryForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 disposition:(int64_t *)a5 originalAdjustmentData:(BOOL)a6;
+ (id)synchronousCompositionControllerForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 disposition:(int64_t *)a5 originalComposition:(BOOL)a6;
+ (id)synchronousEditorBundleIDForAsset:(id)a3;
+ (void)initialize;
+ (void)requestCompositionControllerForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 queue:(id)a5 completion:(id)a6;
@end

@implementation PEAdjustmentDataCache

+ (id)entryForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 disposition:(int64_t *)a5 originalAdjustmentData:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  v10 = [[PEAdjustmentDataCacheKey alloc] initWithAsset:v9 originalAdjustmentData:v6];
  v11 = [sCache objectForKey:v10];
  if (!v11)
  {
    v11 = [[PEAdjustmentDataCacheEntry alloc] initWithAsset:v9 networkAccessAllowed:v8 originalAdjustmentData:v6];
    [sCache setObject:v11 forKey:v10];
  }

  [(PEAdjustmentDataCacheEntry *)v11 waitForResultsWithTimeout];
  if (a5)
  {
    if (v11)
    {
      v12 = [(PEAdjustmentDataCacheEntry *)v11 disposition];
    }

    else
    {
      v12 = [v9 hasAdjustments] ^ 1;
    }

    *a5 = v12;
  }

  return v11;
}

+ (CGSize)synchronousInputSizeForAsset:(id)a3 disposition:(int64_t *)a4
{
  v4 = [PEAdjustmentDataCache entryForAsset:a3 networkAccessAllowed:1 disposition:a4 originalAdjustmentData:0];
  [v4 inputSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (id)synchronousEditorBundleIDForAsset:(id)a3
{
  v6 = 0;
  v3 = [PEAdjustmentDataCache entryForAsset:a3 networkAccessAllowed:0 disposition:&v6 originalAdjustmentData:0];
  v4 = [v3 editorBundleID];

  return v4;
}

+ (id)synchronousCompositionControllerForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 disposition:(int64_t *)a5 originalComposition:(BOOL)a6
{
  v6 = [PEAdjustmentDataCache entryForAsset:a3 networkAccessAllowed:a4 disposition:a5 originalAdjustmentData:a6];
  v7 = [v6 compositionController];

  return v7;
}

+ (id)compositionControllerForAssetIfLoaded:(id)a3 disposition:(int64_t *)a4
{
  v5 = a3;
  v6 = [[PEAdjustmentDataCacheKey alloc] initWithAsset:v5 originalAdjustmentData:0];
  v7 = [sCache objectForKey:v6];
  v8 = v7;
  if (a4)
  {
    if (v7)
    {
      v9 = [v7 disposition];
    }

    else
    {
      v9 = [v5 hasAdjustments] ^ 1;
    }

    *a4 = v9;
  }

  v10 = [v8 compositionController];

  return v10;
}

+ (void)requestCompositionControllerForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 queue:(id)a5 completion:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [[PEAdjustmentDataCacheKey alloc] initWithAsset:v9 originalAdjustmentData:0];
  v13 = [sCache objectForKey:v12];
  if (!v13)
  {
    v13 = [[PEAdjustmentDataCacheEntry alloc] initWithAsset:v9 networkAccessAllowed:v8 originalAdjustmentData:0];
    [sCache setObject:v13 forKey:v12];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__PEAdjustmentDataCache_requestCompositionControllerForAsset_networkAccessAllowed_queue_completion___block_invoke;
  v15[3] = &unk_279A30A80;
  v16 = v11;
  v14 = v11;
  [(PEAdjustmentDataCacheEntry *)v13 deliverOn:v10 completion:v15];
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
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v3 = sCache;
    sCache = v2;

    v4 = sCache;

    [v4 setCountLimit:30];
  }
}

@end