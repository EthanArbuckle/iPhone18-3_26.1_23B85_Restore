@interface PXStoryPHAssetCollectionAssetsProducer
+ (BOOL)shouldEnableCurationForAssetCollection:(id)a3;
- (PXStoryPHAssetCollectionAssetsProducer)init;
- (PXStoryPHAssetCollectionAssetsProducer)initWithAssetCollection:(id)a3 keyAsset:(id)a4 referencePersons:(id)a5 curationKind:(int64_t)a6 options:(unint64_t)a7;
- (id)requestAssetsWithOptions:(unint64_t)a3 storyQueue:(id)a4 resultHandler:(id)a5;
@end

@implementation PXStoryPHAssetCollectionAssetsProducer

- (id)requestAssetsWithOptions:(unint64_t)a3 storyQueue:(id)a4 resultHandler:(id)a5
{
  v6 = a3;
  v39[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  if ((v6 & 2) != 0)
  {
    v9 = 712742;
  }

  else
  {
    v9 = 712738;
  }

  v34 = a5;
  v10 = v9 & 0xFFFFFFFFFFFFFFBFLL | (([(PXStoryPHAssetCollectionAssetsProducer *)self options]& 1) << 6);
  v11 = [(PXStoryPHAssetCollectionAssetsProducer *)self assetCollection];
  v12 = [objc_opt_class() shouldEnableCurationForAssetCollection:v11];
  if (v12)
  {
    v10 |= 0x10uLL;
  }

  if ([PXStoryPHAssetCollectionAssetsProducer shouldApplyDetailsViewContextForAssetCollection:v11])
  {
    v10 |= 0x100000uLL;
  }

  if ([(PXStoryPHAssetCollectionAssetsProducer *)self curationKind]== 3)
  {
    v13 = v10 | 0x200010;
  }

  else
  {
    v13 = v10;
  }

  v14 = [PXPhotosDataSourceConfiguration alloc];
  v15 = [(PXStoryPHAssetCollectionAssetsProducer *)self assetCollection];
  v16 = [(PXPhotosDataSourceConfiguration *)v14 initWithAssetCollection:v15 options:v13];

  [(PXPhotosDataSourceConfiguration *)v16 setCurationKind:[(PXStoryPHAssetCollectionAssetsProducer *)self curationKind]];
  if (v12)
  {
    [(PXPhotosDataSourceConfiguration *)v16 setCurationType:1];
  }

  if (([(PXStoryPHAssetCollectionAssetsProducer *)self options]& 2) != 0)
  {
    [(PXPhotosDataSourceConfiguration *)v16 setLibraryFilterState:0];
    [(PXPhotosDataSourceConfiguration *)v16 setLibraryFilter:0];
  }

  v17 = [(PXStoryPHAssetCollectionAssetsProducer *)self referencePersons];
  [(PXPhotosDataSourceConfiguration *)v16 setFilterPersons:v17];
  v18 = [(PXStoryPHAssetCollectionAssetsProducer *)self keyAsset];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [(PXStoryPHAssetCollectionAssetsProducer *)self assetCollection];
    v38 = v20;
    v21 = [(PXStoryPHAssetCollectionAssetsProducer *)self keyAsset];
    v39[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    [(PXPhotosDataSourceConfiguration *)v16 setExistingKeyAssetsFetchResults:v22];
  }

  v23 = [v11 photoLibrary];
  if (![v17 count])
  {
    v24 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v23];
    if ([v24 showUnsavedSyndicatedContentInMemories])
    {
      v25 = [(PXStoryPHAssetCollectionAssetsProducer *)self assetCollection];
      [(PXPhotosDataSourceConfiguration *)v16 setCanIncludeUnsavedSyndicatedAssets:PXContentSyndicationShouldShowUnsavedAssetsInAssetCollection(v25)];
    }

    else
    {
      [(PXPhotosDataSourceConfiguration *)v16 setCanIncludeUnsavedSyndicatedAssets:0];
    }
  }

  [(PXPhotosDataSourceConfiguration *)v16 setClientQueue:v8];
  [(PXPhotosDataSourceConfiguration *)v16 setWantsCurationByDefault:(v13 >> 4) & 1];
  v26 = *MEMORY[0x1E6978D10];
  v37[0] = *MEMORY[0x1E6978C18];
  v37[1] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  [(PXPhotosDataSourceConfiguration *)v16 setFetchPropertySets:v27];

  v28 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v16];
  v29 = v28;
  if ((v6 & 2) != 0)
  {
    [(PXPhotosDataSource *)v28 setAllowSlowFetchesOnClientQueue:1];
    if (v6)
    {
      goto LABEL_27;
    }
  }

  else if (v6)
  {
    [(PXPhotosDataSource *)v28 forceAccurateAllSectionsIfNeeded];
LABEL_27:
    [(PXPhotosDataSource *)v29 startBackgroundFetchIfNeeded];
    goto LABEL_28;
  }

  v30 = [off_1E7721858 sharedScheduler];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __92__PXStoryPHAssetCollectionAssetsProducer_requestAssetsWithOptions_storyQueue_resultHandler___block_invoke;
  v35[3] = &unk_1E774C648;
  v36 = v29;
  [v30 scheduleMainQueueTask:v35];

LABEL_28:
  v31 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v29];
  v32 = [[PXStoryProducerResult alloc] initWithObject:v31];
  v34[2](v34, v32);

  return 0;
}

- (PXStoryPHAssetCollectionAssetsProducer)initWithAssetCollection:(id)a3 keyAsset:(id)a4 referencePersons:(id)a5 curationKind:(int64_t)a6 options:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v21.receiver = self;
  v21.super_class = PXStoryPHAssetCollectionAssetsProducer;
  v16 = [(PXStoryPHAssetCollectionAssetsProducer *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_assetCollection, a3);
    objc_storeStrong(&v17->_keyAsset, a4);
    v18 = [v15 copy];
    referencePersons = v17->_referencePersons;
    v17->_referencePersons = v18;

    v17->_curationKind = a6;
    v17->_options = a7;
  }

  return v17;
}

- (PXStoryPHAssetCollectionAssetsProducer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryPHAssetCollectionAssetsProducer.m" lineNumber:37 description:{@"%s is not available as initializer", "-[PXStoryPHAssetCollectionAssetsProducer init]"}];

  abort();
}

+ (BOOL)shouldEnableCurationForAssetCollection:(id)a3
{
  v3 = a3;
  if (([v3 assetCollectionType] | 2) == 6)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 px_isRegularAlbum];
  }

  if ([v3 assetCollectionType] == 2)
  {
    v4 |= [v3 isUserSmartAlbum] ^ 1;
  }

  return v4 & 1;
}

@end