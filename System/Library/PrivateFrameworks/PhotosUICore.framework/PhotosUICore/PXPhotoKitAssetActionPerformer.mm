@interface PXPhotoKitAssetActionPerformer
+ (BOOL)_canPerformWithActionManager:(id)manager error:(id *)error;
+ (BOOL)_canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group error:(id *)error;
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group error:(id *)error;
+ (BOOL)canPerformWithActionManager:(id)manager;
+ (BOOL)canPerformWithActionManager:(id)manager error:(id *)error;
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group;
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group error:(id *)error;
+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler;
+ (id)createStandardActionWithTitle:(id)title image:(id)image handler:(id)handler;
- (BOOL)shouldExitSelectModeForState:(unint64_t)state;
- (NSArray)assets;
- (NSDictionary)assetsByAssetCollection;
- (NSDictionary)dataSourceUserInfo;
- (PHFetchResult)assetsFetchResult;
- (PXPhotosDataSource)photosDataSourceSnapshot;
- (id)_indexPathsInPhotosDataSource:(id)source;
- (id)createPerformerWithClass:(Class)class actionType:(id)type;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (void)forceIncludeAssetsInDataSource;
- (void)instantlyExcludeAssetsFromDataSource;
- (void)stopExcludingAssetsFromDataSource;
@end

@implementation PXPhotoKitAssetActionPerformer

- (BOOL)shouldExitSelectModeForState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = PXPhotoKitAssetActionPerformer;
  if (![(PXAssetActionPerformer *)&v7 shouldExitSelectModeForState:state])
  {
    return 0;
  }

  objectReference = [(PXPhotoKitAssetActionPerformer *)self objectReference];
  v5 = objectReference == 0;

  return v5;
}

- (id)createPerformerWithClass:(Class)class actionType:(id)type
{
  typeCopy = type;
  v7 = [[class alloc] initWithActionType:typeCopy];

  selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
  [v7 setSelectionSnapshot:selectionSnapshot];

  photoKitDataSourceManager = [(PXPhotoKitAssetActionPerformer *)self photoKitDataSourceManager];
  [v7 setPhotoKitDataSourceManager:photoKitDataSourceManager];

  person = [(PXPhotoKitAssetActionPerformer *)self person];
  [v7 setPerson:person];

  sender = [(PXActionPerformer *)self sender];
  [v7 setSender:sender];

  delegate = [(PXActionPerformer *)self delegate];
  [v7 setDelegate:delegate];

  return v7;
}

- (NSDictionary)assetsByAssetCollection
{
  assetsByAssetCollection = self->_assetsByAssetCollection;
  if (!assetsByAssetCollection)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];

    photosDataSourceSnapshot = [(PXPhotoKitAssetActionPerformer *)self photosDataSourceSnapshot];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__PXPhotoKitAssetActionPerformer_assetsByAssetCollection__block_invoke;
    v13[3] = &unk_1E773DC70;
    v14 = photosDataSourceSnapshot;
    v8 = dictionary;
    v15 = v8;
    v9 = photosDataSourceSnapshot;
    [selectedIndexPaths enumerateItemIndexSetsUsingBlock:v13];
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
    assetsFetchResult = [(PXPhotoKitAssetActionPerformer *)self assetsFetchResult];
    fetchedObjects = [assetsFetchResult fetchedObjects];
    v6 = self->_assets;
    self->_assets = fetchedObjects;

    assets = self->_assets;
  }

  return assets;
}

- (PHFetchResult)assetsFetchResult
{
  assetsFetchResult = self->_assetsFetchResult;
  if (!assetsFetchResult)
  {
    selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];

    photosDataSourceSnapshot = [(PXPhotoKitAssetActionPerformer *)self photosDataSourceSnapshot];
    v7 = [photosDataSourceSnapshot fetchResultWithAssetsAtIndexPaths:selectedIndexPaths];
    v8 = self->_assetsFetchResult;
    self->_assetsFetchResult = v7;

    assetsFetchResult = self->_assetsFetchResult;
  }

  return assetsFetchResult;
}

- (id)_indexPathsInPhotosDataSource:(id)source
{
  sourceCopy = source;
  v5 = MEMORY[0x1E695DF70];
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(assets, "count")}];

  assetsByAssetCollection = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__PXPhotoKitAssetActionPerformer__indexPathsInPhotosDataSource___block_invoke;
  v14[3] = &unk_1E773DC48;
  v15 = sourceCopy;
  v9 = v7;
  v16 = v9;
  v10 = sourceCopy;
  [assetsByAssetCollection enumerateKeysAndObjectsUsingBlock:v14];

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
  photoKitDataSourceManager = [(PXPhotoKitAssetActionPerformer *)self photoKitDataSourceManager];
  photosDataSource = [photoKitDataSourceManager photosDataSource];

  v4 = [(PXPhotoKitAssetActionPerformer *)self _indexPathsInPhotosDataSource:photosDataSource];
  [photosDataSource forceIncludeAssetsAtIndexPaths:v4];
}

- (void)stopExcludingAssetsFromDataSource
{
  photoKitDataSourceManager = [(PXPhotoKitAssetActionPerformer *)self photoKitDataSourceManager];
  photosDataSource = [photoKitDataSourceManager photosDataSource];

  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  [photosDataSource stopExcludingAssets:assets];
}

- (void)instantlyExcludeAssetsFromDataSource
{
  photoKitDataSourceManager = [(PXPhotoKitAssetActionPerformer *)self photoKitDataSourceManager];
  photosDataSource = [photoKitDataSourceManager photosDataSource];

  v4 = [(PXPhotoKitAssetActionPerformer *)self _indexPathsInPhotosDataSource:photosDataSource];
  [photosDataSource forceExcludeAssetsAtIndexPaths:v4];
}

- (NSDictionary)dataSourceUserInfo
{
  selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];

  if (dataSource)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetActionManager.m" lineNumber:918 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.selectionSnapshot.dataSource", v10, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetActionManager.m" lineNumber:918 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.selectionSnapshot.dataSource", v10}];
  }

LABEL_3:
  userInfo = [dataSource userInfo];

  return userInfo;
}

- (PXPhotosDataSource)photosDataSourceSnapshot
{
  selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];

  v6 = dataSource;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;

    if (v7)
    {
      photosDataSource = [v7 photosDataSource];
      goto LABEL_9;
    }
  }

  else
  {
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetActionManager.m" lineNumber:911 description:{@"Invalid parameter not satisfying: %@", @"[dataSource isKindOfClass:[PXPhotoKitAssetsDataSource class]]"}];
  }

  photosDataSource = [v6 photosDataSource];
  v7 = 0;
LABEL_9:

  return photosDataSource;
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  v4 = objc_opt_class();

  return [v4 localizedTitleForUseCase:case actionManager:0];
}

+ (id)createStandardActionWithTitle:(id)title image:(id)image handler:(id)handler
{
  v6 = [MEMORY[0x1E69DC628] actionWithTitle:title image:image identifier:0 handler:handler];
  if ([self isActionDestructive])
  {
    [v6 setAttributes:2];
  }

  return v6;
}

+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler
{
  v6 = [MEMORY[0x1E69DC628] actionWithTitle:title image:image identifier:0 handler:handler];
  if ([self isActionDestructive])
  {
    [v6 setAttributes:2];
  }

  return v6;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group error:(id *)error
{
  v9 = *MEMORY[0x1E69E9840];
  if (([self providesCanPerformError] & 1) == 0)
  {
    PXAssertGetLog();
  }

  if (([self isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    PXAssertGetLog();
  }

  return 0;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  v8 = *MEMORY[0x1E69E9840];
  if ([self providesCanPerformError])
  {
    PXAssertGetLog();
  }

  if (([self isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    PXAssertGetLog();
  }

  return 0;
}

+ (BOOL)_canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group error:(id *)error
{
  snapshotCopy = snapshot;
  personCopy = person;
  groupCopy = group;
  dataSource = [snapshotCopy dataSource];
  if (!dataSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetActionManager.m" lineNumber:767 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.dataSource", v25}];
LABEL_14:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = objc_opt_class();
    v25 = NSStringFromClass(v26);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetActionManager.m" lineNumber:767 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v25, px_descriptionForAssertionMessage}];

    goto LABEL_14;
  }

LABEL_3:
  photosDataSource = [dataSource photosDataSource];
  selectedIndexPaths = [snapshotCopy selectedIndexPaths];
  v17 = selectedIndexPaths;
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
  if (photosDataSource && [selectedIndexPaths itemCount] >= 1)
  {
    canPerformOnSubsetOfSelection = [self canPerformOnSubsetOfSelection];
    *(v43 + 24) = canPerformOnSubsetOfSelection ^ 1;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __92__PXPhotoKitAssetActionPerformer__canPerformWithSelectionSnapshot_person_socialGroup_error___block_invoke;
    v28[3] = &unk_1E773DC20;
    v29 = photosDataSource;
    v32 = &v42;
    selfCopy = self;
    v30 = personCopy;
    v31 = groupCopy;
    v33 = &v36;
    v35 = canPerformOnSubsetOfSelection;
    [v17 enumerateItemIndexSetsUsingBlock:v28];
  }

  if (error && (v43[3] & 1) == 0)
  {
    v19 = v37[5];
    if (v19)
    {
      *error = v19;
    }

    else
    {
      v20 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXPhotoKitActionManagerErrorDomain" code:-2000 debugDescription:@"Cannot perform action"];
      *error = v20;
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

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group error:(id *)error
{
  snapshotCopy = snapshot;
  personCopy = person;
  groupCopy = group;
  if (([self providesCanPerformError] & 1) == 0)
  {
    PXAssertGetLog();
  }

  v13 = [self _canPerformWithSelectionSnapshot:snapshotCopy person:personCopy socialGroup:groupCopy error:{error, v15}];

  return v13;
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group
{
  snapshotCopy = snapshot;
  personCopy = person;
  groupCopy = group;
  if ([self providesCanPerformError])
  {
    PXAssertGetLog();
  }

  v11 = [self _canPerformWithSelectionSnapshot:snapshotCopy person:personCopy socialGroup:groupCopy error:{0, v13}];

  return v11;
}

+ (BOOL)_canPerformWithActionManager:(id)manager error:(id *)error
{
  managerCopy = manager;
  v7 = [managerCopy _selectionSnapshotForPerformerClass:self applySubsetIfNeeded:0];
  person = [managerCopy person];
  socialGroup = [managerCopy socialGroup];

  if (v7)
  {
    if ([self providesCanPerformError])
    {
      v10 = [self canPerformWithSelectionSnapshot:v7 person:person socialGroup:socialGroup error:error];
    }

    else
    {
      v10 = [self canPerformWithSelectionSnapshot:v7 person:person socialGroup:socialGroup];
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)canPerformWithActionManager:(id)manager error:(id *)error
{
  managerCopy = manager;
  if (([self providesCanPerformError] & 1) == 0)
  {
    PXAssertGetLog();
  }

  v7 = [self _canPerformWithActionManager:managerCopy error:{error, v9}];

  return v7;
}

+ (BOOL)canPerformWithActionManager:(id)manager
{
  managerCopy = manager;
  if ([self providesCanPerformError])
  {
    PXAssertGetLog();
  }

  v5 = [self _canPerformWithActionManager:managerCopy error:{0, v7}];

  return v5;
}

@end