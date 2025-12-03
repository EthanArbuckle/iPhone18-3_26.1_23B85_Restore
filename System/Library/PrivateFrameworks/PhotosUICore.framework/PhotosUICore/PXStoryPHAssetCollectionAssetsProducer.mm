@interface PXStoryPHAssetCollectionAssetsProducer
+ (BOOL)shouldEnableCurationForAssetCollection:(id)collection;
- (PXStoryPHAssetCollectionAssetsProducer)init;
- (PXStoryPHAssetCollectionAssetsProducer)initWithAssetCollection:(id)collection keyAsset:(id)asset referencePersons:(id)persons curationKind:(int64_t)kind options:(unint64_t)options;
- (id)requestAssetsWithOptions:(unint64_t)options storyQueue:(id)queue resultHandler:(id)handler;
@end

@implementation PXStoryPHAssetCollectionAssetsProducer

- (id)requestAssetsWithOptions:(unint64_t)options storyQueue:(id)queue resultHandler:(id)handler
{
  optionsCopy = options;
  v39[1] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if ((optionsCopy & 2) != 0)
  {
    v9 = 712742;
  }

  else
  {
    v9 = 712738;
  }

  handlerCopy = handler;
  v10 = v9 & 0xFFFFFFFFFFFFFFBFLL | (([(PXStoryPHAssetCollectionAssetsProducer *)self options]& 1) << 6);
  assetCollection = [(PXStoryPHAssetCollectionAssetsProducer *)self assetCollection];
  v12 = [objc_opt_class() shouldEnableCurationForAssetCollection:assetCollection];
  if (v12)
  {
    v10 |= 0x10uLL;
  }

  if ([PXStoryPHAssetCollectionAssetsProducer shouldApplyDetailsViewContextForAssetCollection:assetCollection])
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
  assetCollection2 = [(PXStoryPHAssetCollectionAssetsProducer *)self assetCollection];
  v16 = [(PXPhotosDataSourceConfiguration *)v14 initWithAssetCollection:assetCollection2 options:v13];

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

  referencePersons = [(PXStoryPHAssetCollectionAssetsProducer *)self referencePersons];
  [(PXPhotosDataSourceConfiguration *)v16 setFilterPersons:referencePersons];
  keyAsset = [(PXStoryPHAssetCollectionAssetsProducer *)self keyAsset];
  v19 = [keyAsset count];

  if (v19)
  {
    assetCollection3 = [(PXStoryPHAssetCollectionAssetsProducer *)self assetCollection];
    v38 = assetCollection3;
    keyAsset2 = [(PXStoryPHAssetCollectionAssetsProducer *)self keyAsset];
    v39[0] = keyAsset2;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    [(PXPhotosDataSourceConfiguration *)v16 setExistingKeyAssetsFetchResults:v22];
  }

  photoLibrary = [assetCollection photoLibrary];
  if (![referencePersons count])
  {
    v24 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:photoLibrary];
    if ([v24 showUnsavedSyndicatedContentInMemories])
    {
      assetCollection4 = [(PXStoryPHAssetCollectionAssetsProducer *)self assetCollection];
      [(PXPhotosDataSourceConfiguration *)v16 setCanIncludeUnsavedSyndicatedAssets:PXContentSyndicationShouldShowUnsavedAssetsInAssetCollection(assetCollection4)];
    }

    else
    {
      [(PXPhotosDataSourceConfiguration *)v16 setCanIncludeUnsavedSyndicatedAssets:0];
    }
  }

  [(PXPhotosDataSourceConfiguration *)v16 setClientQueue:queueCopy];
  [(PXPhotosDataSourceConfiguration *)v16 setWantsCurationByDefault:(v13 >> 4) & 1];
  v26 = *MEMORY[0x1E6978D10];
  v37[0] = *MEMORY[0x1E6978C18];
  v37[1] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  [(PXPhotosDataSourceConfiguration *)v16 setFetchPropertySets:v27];

  v28 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v16];
  v29 = v28;
  if ((optionsCopy & 2) != 0)
  {
    [(PXPhotosDataSource *)v28 setAllowSlowFetchesOnClientQueue:1];
    if (optionsCopy)
    {
      goto LABEL_27;
    }
  }

  else if (optionsCopy)
  {
    [(PXPhotosDataSource *)v28 forceAccurateAllSectionsIfNeeded];
LABEL_27:
    [(PXPhotosDataSource *)v29 startBackgroundFetchIfNeeded];
    goto LABEL_28;
  }

  sharedScheduler = [off_1E7721858 sharedScheduler];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __92__PXStoryPHAssetCollectionAssetsProducer_requestAssetsWithOptions_storyQueue_resultHandler___block_invoke;
  v35[3] = &unk_1E774C648;
  v36 = v29;
  [sharedScheduler scheduleMainQueueTask:v35];

LABEL_28:
  v31 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v29];
  v32 = [[PXStoryProducerResult alloc] initWithObject:v31];
  handlerCopy[2](handlerCopy, v32);

  return 0;
}

- (PXStoryPHAssetCollectionAssetsProducer)initWithAssetCollection:(id)collection keyAsset:(id)asset referencePersons:(id)persons curationKind:(int64_t)kind options:(unint64_t)options
{
  collectionCopy = collection;
  assetCopy = asset;
  personsCopy = persons;
  v21.receiver = self;
  v21.super_class = PXStoryPHAssetCollectionAssetsProducer;
  v16 = [(PXStoryPHAssetCollectionAssetsProducer *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_assetCollection, collection);
    objc_storeStrong(&v17->_keyAsset, asset);
    v18 = [personsCopy copy];
    referencePersons = v17->_referencePersons;
    v17->_referencePersons = v18;

    v17->_curationKind = kind;
    v17->_options = options;
  }

  return v17;
}

- (PXStoryPHAssetCollectionAssetsProducer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPHAssetCollectionAssetsProducer.m" lineNumber:37 description:{@"%s is not available as initializer", "-[PXStoryPHAssetCollectionAssetsProducer init]"}];

  abort();
}

+ (BOOL)shouldEnableCurationForAssetCollection:(id)collection
{
  collectionCopy = collection;
  if (([collectionCopy assetCollectionType] | 2) == 6)
  {
    px_isRegularAlbum = 1;
  }

  else
  {
    px_isRegularAlbum = [collectionCopy px_isRegularAlbum];
  }

  if ([collectionCopy assetCollectionType] == 2)
  {
    px_isRegularAlbum |= [collectionCopy isUserSmartAlbum] ^ 1;
  }

  return px_isRegularAlbum & 1;
}

@end