@interface PXPhotoKitAssetActionPerformer
+ (BOOL)_canPerformWithActionManager:(id)a3 error:(id *)a4;
+ (BOOL)_canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5 error:(id *)a6;
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6 error:(id *)a7;
+ (BOOL)canPerformWithActionManager:(id)a3;
+ (BOOL)canPerformWithActionManager:(id)a3 error:(id *)a4;
+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5;
+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5 error:(id *)a6;
+ (id)createPreviewActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5;
+ (id)createStandardActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5;
- (BOOL)shouldExitSelectModeForState:(unint64_t)a3;
- (NSArray)assets;
- (NSDictionary)assetsByAssetCollection;
- (NSDictionary)dataSourceUserInfo;
- (PHFetchResult)assetsFetchResult;
- (PXPhotosDataSource)photosDataSourceSnapshot;
- (id)_indexPathsInPhotosDataSource:(id)a3;
- (id)createPerformerWithClass:(Class)a3 actionType:(id)a4;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (void)forceIncludeAssetsInDataSource;
- (void)instantlyExcludeAssetsFromDataSource;
- (void)stopExcludingAssetsFromDataSource;
@end

@implementation PXPhotoKitAssetActionPerformer

- (BOOL)shouldExitSelectModeForState:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = PXPhotoKitAssetActionPerformer;
  if (![(PXAssetActionPerformer *)&v7 shouldExitSelectModeForState:a3])
  {
    return 0;
  }

  v4 = [(PXPhotoKitAssetActionPerformer *)self objectReference];
  v5 = v4 == 0;

  return v5;
}

- (id)createPerformerWithClass:(Class)a3 actionType:(id)a4
{
  v6 = a4;
  v7 = [[a3 alloc] initWithActionType:v6];

  v8 = [(PXAssetActionPerformer *)self selectionSnapshot];
  [v7 setSelectionSnapshot:v8];

  v9 = [(PXPhotoKitAssetActionPerformer *)self photoKitDataSourceManager];
  [v7 setPhotoKitDataSourceManager:v9];

  v10 = [(PXPhotoKitAssetActionPerformer *)self person];
  [v7 setPerson:v10];

  v11 = [(PXActionPerformer *)self sender];
  [v7 setSender:v11];

  v12 = [(PXActionPerformer *)self delegate];
  [v7 setDelegate:v12];

  return v7;
}

- (NSDictionary)assetsByAssetCollection
{
  assetsByAssetCollection = self->_assetsByAssetCollection;
  if (!assetsByAssetCollection)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [(PXAssetActionPerformer *)self selectionSnapshot];
    v6 = [v5 selectedIndexPaths];

    v7 = [(PXPhotoKitAssetActionPerformer *)self photosDataSourceSnapshot];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__PXPhotoKitAssetActionPerformer_assetsByAssetCollection__block_invoke;
    v13[3] = &unk_1E773DC70;
    v14 = v7;
    v8 = v4;
    v15 = v8;
    v9 = v7;
    [v6 enumerateItemIndexSetsUsingBlock:v13];
    v10 = self->_assetsByAssetCollection;
    self->_assetsByAssetCollection = v8;
    v11 = v8;

    assetsByAssetCollection = self->_assetsByAssetCollection;
  }

  return assetsByAssetCollection;
}

void __57__PXPhotoKitAssetActionPerformer_assetsByAssetCollection__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v10 = [v6 assetCollectionForSection:a3];
  v8 = [*(a1 + 32) assetsInSection:a3];
  v9 = [v8 objectsAtIndexes:v7];

  [*(a1 + 40) setObject:v9 forKeyedSubscript:v10];
}

- (NSArray)assets
{
  assets = self->_assets;
  if (!assets)
  {
    v4 = [(PXPhotoKitAssetActionPerformer *)self assetsFetchResult];
    v5 = [v4 fetchedObjects];
    v6 = self->_assets;
    self->_assets = v5;

    assets = self->_assets;
  }

  return assets;
}

- (PHFetchResult)assetsFetchResult
{
  assetsFetchResult = self->_assetsFetchResult;
  if (!assetsFetchResult)
  {
    v4 = [(PXAssetActionPerformer *)self selectionSnapshot];
    v5 = [v4 selectedIndexPaths];

    v6 = [(PXPhotoKitAssetActionPerformer *)self photosDataSourceSnapshot];
    v7 = [v6 fetchResultWithAssetsAtIndexPaths:v5];
    v8 = self->_assetsFetchResult;
    self->_assetsFetchResult = v7;

    assetsFetchResult = self->_assetsFetchResult;
  }

  return assetsFetchResult;
}

- (id)_indexPathsInPhotosDataSource:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v6 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v8 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__PXPhotoKitAssetActionPerformer__indexPathsInPhotosDataSource___block_invoke;
  v14[3] = &unk_1E773DC48;
  v15 = v4;
  v9 = v7;
  v16 = v9;
  v10 = v4;
  [v8 enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __64__PXPhotoKitAssetActionPerformer__indexPathsInPhotosDataSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 32) indexPathForAsset:*(*(&v12 + 1) + 8 * v10) hintIndexPath:0 hintCollection:v5];
        if (v11)
        {
          [*(a1 + 40) addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)forceIncludeAssetsInDataSource
{
  v3 = [(PXPhotoKitAssetActionPerformer *)self photoKitDataSourceManager];
  v5 = [v3 photosDataSource];

  v4 = [(PXPhotoKitAssetActionPerformer *)self _indexPathsInPhotosDataSource:v5];
  [v5 forceIncludeAssetsAtIndexPaths:v4];
}

- (void)stopExcludingAssetsFromDataSource
{
  v3 = [(PXPhotoKitAssetActionPerformer *)self photoKitDataSourceManager];
  v5 = [v3 photosDataSource];

  v4 = [(PXPhotoKitAssetActionPerformer *)self assets];
  [v5 stopExcludingAssets:v4];
}

- (void)instantlyExcludeAssetsFromDataSource
{
  v3 = [(PXPhotoKitAssetActionPerformer *)self photoKitDataSourceManager];
  v5 = [v3 photosDataSource];

  v4 = [(PXPhotoKitAssetActionPerformer *)self _indexPathsInPhotosDataSource:v5];
  [v5 forceExcludeAssetsAtIndexPaths:v4];
}

- (NSDictionary)dataSourceUserInfo
{
  v4 = [(PXAssetActionPerformer *)self selectionSnapshot];
  v5 = [v4 dataSource];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    v12 = [v5 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetActionManager.m" lineNumber:918 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.selectionSnapshot.dataSource", v10, v12}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetActionManager.m" lineNumber:918 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.selectionSnapshot.dataSource", v10}];
  }

LABEL_3:
  v6 = [v5 userInfo];

  return v6;
}

- (PXPhotosDataSource)photosDataSourceSnapshot
{
  v4 = [(PXAssetActionPerformer *)self selectionSnapshot];
  v5 = [v4 dataSource];

  v6 = v5;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;

    if (v7)
    {
      v8 = [v7 photosDataSource];
      goto LABEL_9;
    }
  }

  else
  {
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetActionManager.m" lineNumber:911 description:{@"Invalid parameter not satisfying: %@", @"[dataSource isKindOfClass:[PXPhotoKitAssetsDataSource class]]"}];
  }

  v8 = [v6 photosDataSource];
  v7 = 0;
LABEL_9:

  return v8;
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  v4 = objc_opt_class();

  return [v4 localizedTitleForUseCase:a3 actionManager:0];
}

+ (id)createStandardActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5
{
  v6 = [MEMORY[0x1E69DC628] actionWithTitle:a3 image:a4 identifier:0 handler:a5];
  if ([a1 isActionDestructive])
  {
    [v6 setAttributes:2];
  }

  return v6;
}

+ (id)createPreviewActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5
{
  v6 = [MEMORY[0x1E69DC628] actionWithTitle:a3 image:a4 identifier:0 handler:a5];
  if ([a1 isActionDestructive])
  {
    [v6 setAttributes:2];
  }

  return v6;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6 error:(id *)a7
{
  v9 = *MEMORY[0x1E69E9840];
  if (([a1 providesCanPerformError] & 1) == 0)
  {
    PXAssertGetLog();
  }

  if (([a1 isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    PXAssertGetLog();
  }

  return 0;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v8 = *MEMORY[0x1E69E9840];
  if ([a1 providesCanPerformError])
  {
    PXAssertGetLog();
  }

  if (([a1 isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    PXAssertGetLog();
  }

  return 0;
}

+ (BOOL)_canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v11 dataSource];
  if (!v14)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    [v23 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetActionManager.m" lineNumber:767 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.dataSource", v25}];
LABEL_14:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = objc_opt_class();
    v25 = NSStringFromClass(v26);
    v27 = [v14 px_descriptionForAssertionMessage];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetActionManager.m" lineNumber:767 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v25, v27}];

    goto LABEL_14;
  }

LABEL_3:
  v15 = [v14 photosDataSource];
  v16 = [v11 selectedIndexPaths];
  v17 = v16;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__150797;
  v40 = __Block_byref_object_dispose__150798;
  v41 = 0;
  if (v15 && [v16 itemCount] >= 1)
  {
    v18 = [a1 canPerformOnSubsetOfSelection];
    *(v43 + 24) = v18 ^ 1;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __92__PXPhotoKitAssetActionPerformer__canPerformWithSelectionSnapshot_person_socialGroup_error___block_invoke;
    v28[3] = &unk_1E773DC20;
    v29 = v15;
    v32 = &v42;
    v34 = a1;
    v30 = v12;
    v31 = v13;
    v33 = &v36;
    v35 = v18;
    [v17 enumerateItemIndexSetsUsingBlock:v28];
  }

  if (a6 && (v43[3] & 1) == 0)
  {
    v19 = v37[5];
    if (v19)
    {
      *a6 = v19;
    }

    else
    {
      v20 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXPhotoKitActionManagerErrorDomain" code:-2000 debugDescription:@"Cannot perform action"];
      *a6 = v20;
    }
  }

  v21 = *(v43 + 24);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  return v21;
}

void __92__PXPhotoKitAssetActionPerformer__canPerformWithSelectionSnapshot_person_socialGroup_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v8 = a4;
  v9 = [*(a1 + 32) assetCollectionForSection:a3];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = [PXContentPrivacyController privacyControllerForCollection:v9];
  v11 = v10;
  if (!v10 || ![v10 isLocked])
  {

LABEL_6:
    v12 = [*(a1 + 32) assetsInSection:a3];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__PXPhotoKitAssetActionPerformer__canPerformWithSelectionSnapshot_person_socialGroup_error___block_invoke_2;
    v15[3] = &unk_1E773DBF8;
    v13 = *(a1 + 72);
    v16 = v12;
    v21 = v13;
    v17 = v9;
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v23 = *(a1 + 80);
    v20 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
    v22 = a5;
    v14 = v12;
    [v8 enumerateIndexesUsingBlock:v15];

    goto LABEL_7;
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  *a5 = 1;

LABEL_7:
}

void __92__PXPhotoKitAssetActionPerformer__canPerformWithSelectionSnapshot_person_socialGroup_error___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v6 = [*(a1 + 80) providesCanPerformError];
  v7 = *(a1 + 80);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v6)
  {
    v11 = *(*(a1 + 64) + 8);
    obj = 0;
    v12 = [v7 canPerformOnAsset:v5 inAssetCollection:v8 person:v9 socialGroup:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);
  }

  else
  {
    v12 = [v7 canPerformOnAsset:v5 inAssetCollection:v8 person:v9 socialGroup:v10];
  }

  if (*(a1 + 96) == 1)
  {
    if (v12)
    {
      v13 = 1;
LABEL_9:
      *(*(*(a1 + 72) + 8) + 24) = v13;
      *a3 = 1;
      **(a1 + 88) = 1;
    }
  }

  else if ((v12 & 1) == 0)
  {
    v13 = 0;
    goto LABEL_9;
  }
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([a1 providesCanPerformError] & 1) == 0)
  {
    PXAssertGetLog();
  }

  v13 = [a1 _canPerformWithSelectionSnapshot:v10 person:v11 socialGroup:v12 error:{a6, v15}];

  return v13;
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([a1 providesCanPerformError])
  {
    PXAssertGetLog();
  }

  v11 = [a1 _canPerformWithSelectionSnapshot:v8 person:v9 socialGroup:v10 error:{0, v13}];

  return v11;
}

+ (BOOL)_canPerformWithActionManager:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 _selectionSnapshotForPerformerClass:a1 applySubsetIfNeeded:0];
  v8 = [v6 person];
  v9 = [v6 socialGroup];

  if (v7)
  {
    if ([a1 providesCanPerformError])
    {
      v10 = [a1 canPerformWithSelectionSnapshot:v7 person:v8 socialGroup:v9 error:a4];
    }

    else
    {
      v10 = [a1 canPerformWithSelectionSnapshot:v7 person:v8 socialGroup:v9];
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)canPerformWithActionManager:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (([a1 providesCanPerformError] & 1) == 0)
  {
    PXAssertGetLog();
  }

  v7 = [a1 _canPerformWithActionManager:v6 error:{a4, v9}];

  return v7;
}

+ (BOOL)canPerformWithActionManager:(id)a3
{
  v4 = a3;
  if ([a1 providesCanPerformError])
  {
    PXAssertGetLog();
  }

  v5 = [a1 _canPerformWithActionManager:v4 error:{0, v7}];

  return v5;
}

@end