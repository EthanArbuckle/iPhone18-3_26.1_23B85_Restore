@interface PUPXPhotoKitActionPerformerAdapter
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
+ (Class)pxActionPerformerClass;
- (NSString)pxActionType;
- (PUPXPhotoKitActionPerformerAdapter)initWithActionType:(unint64_t)a3 assets:(id)a4 orAssetsByAssetCollection:(id)a5;
- (PUPXPhotoKitActionPerformerAdapter)initWithActionType:(unint64_t)a3 assets:(id)a4 orAssetsByAssetCollection:(id)a5 pxActionPerformer:(id)a6;
- (double)actionPerformerBottomPaddingForPresentingToast:(id)a3;
- (id)actionPerformerHostViewControllerForPresentingToast:(id)a3;
- (unint64_t)actionType;
- (void)_configureActionPerformer:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitActionPerformerAdapter

- (double)actionPerformerBottomPaddingForPresentingToast:(id)a3
{
  v4 = [(PUAssetActionPerformer *)self delegate];
  [v4 assetActionPerformerBottomPaddingForPresentingToast:self];
  v6 = v5;

  return v6;
}

- (id)actionPerformerHostViewControllerForPresentingToast:(id)a3
{
  v4 = [(PUAssetActionPerformer *)self delegate];
  v5 = [v4 assetActionPerformerHostViewControllerForPresentingToast:self];

  return v5;
}

- (NSString)pxActionType
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:804 description:{@"Method %s is a responsibility of subclass %@", "-[PUPXPhotoKitActionPerformerAdapter pxActionType]", v6}];

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

- (void)_configureActionPerformer:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [(PUPhotoKitActionPerformer *)self photosDataSource];
  v6 = [v5 immutableCopy];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69C37D0]) initWithImmutablePhotosDataSource:v6 withChange:0];
    v8 = objc_alloc_init(MEMORY[0x1E69C4580]);
    v9 = [(PUAssetActionPerformer *)self assetsByAssetCollection];

    if (v9)
    {
      v10 = [(PUAssetActionPerformer *)self assetsByAssetCollection];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __64__PUPXPhotoKitActionPerformerAdapter__configureActionPerformer___block_invoke;
      v29[3] = &unk_1E7B7BA50;
      v34 = a2;
      v30 = v6;
      v31 = self;
      v32 = v8;
      v33 = v7;
      [v10 enumerateKeysAndObjectsUsingBlock:v29];

      v11 = v30;
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = [(PUAssetActionPerformer *)self assets];
      v15 = [v11 countByEnumeratingWithState:&v25 objects:v35 count:16];
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
              objc_enumerationMutation(v11);
            }

            v19 = *(*(&v25 + 1) + 8 * i);
            v20 = [v6 indexPathForAsset:v19 hintIndexPath:0 hintCollection:0];
            if (!v20)
            {
              [MEMORY[0x1E696AAA8] currentHandler];
              v21 = v22 = v19;
              [v21 handleFailureInMethod:v23 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:771 description:{@"Unable to find asset %@ in dataSource %@", v22, v6}];
            }

            [v7 identifier];
            PXSimpleIndexPathFromIndexPath();
            [v8 addIndexPath:v24];
          }

          v16 = [v11 countByEnumeratingWithState:&v25 objects:v35 count:16];
        }

        while (v16);
      }
    }

    v14 = [objc_alloc(MEMORY[0x1E69C45D8]) initWithDataSource:v7 selectedIndexPaths:v8];
  }

  else
  {
    v7 = [(PUAssetActionPerformer *)self assets];
    v8 = [MEMORY[0x1E69C37D0] dataSourceWithAssets:v7];
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

- (PUPXPhotoKitActionPerformerAdapter)initWithActionType:(unint64_t)a3 assets:(id)a4 orAssetsByAssetCollection:(id)a5 pxActionPerformer:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = PUPXPhotoKitActionPerformerAdapter;
  v12 = [(PUAssetActionPerformer *)&v15 initWithActionType:a3 assets:a4 orAssetsByAssetCollection:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pxActionPerformer, a6);
    [(PXPhotoKitAssetActionPerformer *)v13->_pxActionPerformer setDelegate:v13];
    [(PUPXPhotoKitActionPerformerAdapter *)v13 _configureActionPerformer:v13->_pxActionPerformer];
  }

  return v13;
}

- (PUPXPhotoKitActionPerformerAdapter)initWithActionType:(unint64_t)a3 assets:(id)a4 orAssetsByAssetCollection:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = objc_alloc([objc_opt_class() pxActionPerformerClass]);
  v11 = [(PUPXPhotoKitActionPerformerAdapter *)self pxActionType];
  v12 = [v10 initWithActionType:v11];
  v13 = [(PUPXPhotoKitActionPerformerAdapter *)self initWithActionType:a3 assets:v9 orAssetsByAssetCollection:v8 pxActionPerformer:v12];

  return v13;
}

- (unint64_t)actionType
{
  v2 = [(PUPXPhotoKitActionPerformerAdapter *)self pxActionType];
  v3 = PUAssetActionTypeForPXAssetActionType(v2);

  return v3;
}

+ (Class)pxActionPerformerClass
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:a1 file:@"PUPhotoKitAssetActionManager.m" lineNumber:800 description:{@"Method %s is a responsibility of subclass %@", "+[PUPXPhotoKitActionPerformerAdapter pxActionPerformerClass]", v6}];

  abort();
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 pxActionPerformerClass];
  if ([v8 providesCanPerformError])
  {
    v9 = [v8 canPerformOnAsset:v7 inAssetCollection:v6 person:0 socialGroup:0 error:0];
  }

  else
  {
    v9 = [v8 canPerformOnAsset:v7 inAssetCollection:v6 person:0 socialGroup:0];
  }

  v10 = v9;

  return v10;
}

@end