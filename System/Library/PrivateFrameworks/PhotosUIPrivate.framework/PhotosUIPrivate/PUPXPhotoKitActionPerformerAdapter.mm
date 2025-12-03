@interface PUPXPhotoKitActionPerformerAdapter
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
+ (Class)pxActionPerformerClass;
- (NSString)pxActionType;
- (PUPXPhotoKitActionPerformerAdapter)initWithActionType:(unint64_t)type assets:(id)assets orAssetsByAssetCollection:(id)collection;
- (PUPXPhotoKitActionPerformerAdapter)initWithActionType:(unint64_t)type assets:(id)assets orAssetsByAssetCollection:(id)collection pxActionPerformer:(id)performer;
- (double)actionPerformerBottomPaddingForPresentingToast:(id)toast;
- (id)actionPerformerHostViewControllerForPresentingToast:(id)toast;
- (unint64_t)actionType;
- (void)_configureActionPerformer:(id)performer;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitActionPerformerAdapter

- (double)actionPerformerBottomPaddingForPresentingToast:(id)toast
{
  delegate = [(PUAssetActionPerformer *)self delegate];
  [delegate assetActionPerformerBottomPaddingForPresentingToast:self];
  v6 = v5;

  return v6;
}

- (id)actionPerformerHostViewControllerForPresentingToast:(id)toast
{
  delegate = [(PUAssetActionPerformer *)self delegate];
  v5 = [delegate assetActionPerformerHostViewControllerForPresentingToast:self];

  return v5;
}

- (NSString)pxActionType
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:804 description:{@"Method %s is a responsibility of subclass %@", "-[PUPXPhotoKitActionPerformerAdapter pxActionType]", v6}];

  abort();
}

- (void)performUserInteractionTask
{
  pxActionPerformer = self->_pxActionPerformer;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__PUPXPhotoKitActionPerformerAdapter_performUserInteractionTask__block_invoke;
  v3[3] = &unk_1E7B80280;
  v3[4] = self;
  [(PXPhotoKitAssetActionPerformer *)pxActionPerformer performActionWithCompletionHandler:v3];
}

- (void)_configureActionPerformer:(id)performer
{
  v36 = *MEMORY[0x1E69E9840];
  photosDataSource = [(PUPhotoKitActionPerformer *)self photosDataSource];
  immutableCopy = [photosDataSource immutableCopy];

  if (immutableCopy)
  {
    assets2 = [objc_alloc(MEMORY[0x1E69C37D0]) initWithImmutablePhotosDataSource:immutableCopy withChange:0];
    v8 = objc_alloc_init(MEMORY[0x1E69C4580]);
    assetsByAssetCollection = [(PUAssetActionPerformer *)self assetsByAssetCollection];

    if (assetsByAssetCollection)
    {
      assetsByAssetCollection2 = [(PUAssetActionPerformer *)self assetsByAssetCollection];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __64__PUPXPhotoKitActionPerformerAdapter__configureActionPerformer___block_invoke;
      v29[3] = &unk_1E7B7BA50;
      v34 = a2;
      v30 = immutableCopy;
      selfCopy = self;
      v32 = v8;
      v33 = assets2;
      [assetsByAssetCollection2 enumerateKeysAndObjectsUsingBlock:v29];

      assets = v30;
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      assets = [(PUAssetActionPerformer *)self assets];
      v15 = [assets countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v15)
      {
        v16 = v15;
        v23 = a2;
        v17 = *v26;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(assets);
            }

            v19 = *(*(&v25 + 1) + 8 * i);
            v20 = [immutableCopy indexPathForAsset:v19 hintIndexPath:0 hintCollection:0];
            if (!v20)
            {
              [MEMORY[0x1E696AAA8] currentHandler];
              v21 = v22 = v19;
              [v21 handleFailureInMethod:v23 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:771 description:{@"Unable to find asset %@ in dataSource %@", v22, immutableCopy}];
            }

            [assets2 identifier];
            PXSimpleIndexPathFromIndexPath();
            [v8 addIndexPath:v24];
          }

          v16 = [assets countByEnumeratingWithState:&v25 objects:v35 count:16];
        }

        while (v16);
      }
    }

    v14 = [objc_alloc(MEMORY[0x1E69C45D8]) initWithDataSource:assets2 selectedIndexPaths:v8];
  }

  else
  {
    assets2 = [(PUAssetActionPerformer *)self assets];
    v8 = [MEMORY[0x1E69C37D0] dataSourceWithAssets:assets2];
    v12 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(v8, "numberOfItemsInSection:", 0)}];
    v13 = [MEMORY[0x1E69C4528] indexPathSetWithItemIndexes:v12 dataSourceIdentifier:objc_msgSend(v8 section:{"identifier"), 0}];
    v14 = [objc_alloc(MEMORY[0x1E69C45D8]) initWithDataSource:v8 selectedIndexPaths:v13];
  }

  [(PXPhotoKitAssetActionPerformer *)self->_pxActionPerformer setSelectionSnapshot:v14];
  [(PXPhotoKitAssetActionPerformer *)self->_pxActionPerformer setDelegate:self];
}

void __64__PUPXPhotoKitActionPerformerAdapter__configureActionPerformer___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) sectionForAssetCollection:a2];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [*(a1 + 32) assetsInSection:v6];
    if (!v8)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"PUPhotoKitAssetActionManager.m" lineNumber:754 description:{@"Missing fetchResult in section %ld in dataSource %@", v7, *(a1 + 32)}];
    }

    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [v8 indexOfObject:v15];
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [MEMORY[0x1E696AAA8] currentHandler];
            v17 = v21 = v15;
            [v17 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"PUPhotoKitAssetActionManager.m" lineNumber:758 description:{@"Unable to find asset %@ in dataSource %@", v21, *(a1 + 32)}];
          }

          [v9 addIndex:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      v18 = *(a1 + 48);
      v19 = [*(a1 + 56) identifier];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __64__PUPXPhotoKitActionPerformerAdapter__configureActionPerformer___block_invoke_2;
      v23[3] = &unk_1E7B7C350;
      v24 = v9;
      [v18 modifyItemIndexSetForDataSourceIdentifier:v19 section:v7 usingBlock:v23];
    }

    v5 = v22;
  }
}

- (PUPXPhotoKitActionPerformerAdapter)initWithActionType:(unint64_t)type assets:(id)assets orAssetsByAssetCollection:(id)collection pxActionPerformer:(id)performer
{
  performerCopy = performer;
  v15.receiver = self;
  v15.super_class = PUPXPhotoKitActionPerformerAdapter;
  v12 = [(PUAssetActionPerformer *)&v15 initWithActionType:type assets:assets orAssetsByAssetCollection:collection];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pxActionPerformer, performer);
    [(PXPhotoKitAssetActionPerformer *)v13->_pxActionPerformer setDelegate:v13];
    [(PUPXPhotoKitActionPerformerAdapter *)v13 _configureActionPerformer:v13->_pxActionPerformer];
  }

  return v13;
}

- (PUPXPhotoKitActionPerformerAdapter)initWithActionType:(unint64_t)type assets:(id)assets orAssetsByAssetCollection:(id)collection
{
  collectionCopy = collection;
  assetsCopy = assets;
  v10 = objc_alloc([objc_opt_class() pxActionPerformerClass]);
  pxActionType = [(PUPXPhotoKitActionPerformerAdapter *)self pxActionType];
  v12 = [v10 initWithActionType:pxActionType];
  v13 = [(PUPXPhotoKitActionPerformerAdapter *)self initWithActionType:type assets:assetsCopy orAssetsByAssetCollection:collectionCopy pxActionPerformer:v12];

  return v13;
}

- (unint64_t)actionType
{
  pxActionType = [(PUPXPhotoKitActionPerformerAdapter *)self pxActionType];
  v3 = PUAssetActionTypeForPXAssetActionType(pxActionType);

  return v3;
}

+ (Class)pxActionPerformerClass
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:800 description:{@"Method %s is a responsibility of subclass %@", "+[PUPXPhotoKitActionPerformerAdapter pxActionPerformerClass]", v6}];

  abort();
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  collectionCopy = collection;
  assetCopy = asset;
  pxActionPerformerClass = [self pxActionPerformerClass];
  if ([pxActionPerformerClass providesCanPerformError])
  {
    v9 = [pxActionPerformerClass canPerformOnAsset:assetCopy inAssetCollection:collectionCopy person:0 socialGroup:0 error:0];
  }

  else
  {
    v9 = [pxActionPerformerClass canPerformOnAsset:assetCopy inAssetCollection:collectionCopy person:0 socialGroup:0];
  }

  v10 = v9;

  return v10;
}

@end