@interface PXPhotoKitUnifiedDestructiveActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (BOOL)canPerformOnSubsetOfSelection;
+ (id)_containedPerformerClasses;
+ (id)_localizedTitleForAsset:(id)asset titleUseCase:(unint64_t)case key:(id)key;
+ (id)_localizedTitleForAssets:(id)assets titleUseCase:(unint64_t)case key:(id)key;
+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager;
- (NSArray)performerClasses;
- (id)createContainedPerformers;
- (void)_handleActionPickForPerformerClass:(Class)class;
- (void)completeUserInteractionTaskWithSuccess:(BOOL)success error:(id)error;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitUnifiedDestructiveActionPerformer

- (id)createContainedPerformers
{
  [(PXPhotoKitUnifiedDestructiveActionPerformer *)self performerClasses];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

id __72__PXPhotoKitUnifiedDestructiveActionPerformer_createContainedPerformers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 actionType];
  v5 = [v2 createPerformerWithClass:v3 actionType:v4];

  return v5;
}

- (void)_handleActionPickForPerformerClass:(Class)class
{
  actionType = [(PXActionPerformer *)self actionType];
  v6 = [(PXPhotoKitAssetActionPerformer *)self createPerformerWithClass:class actionType:actionType];

  [v6 setShouldSkipUserConfirmation:{-[objc_class isActionDestructive](class, "isActionDestructive") ^ 1}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PXPhotoKitUnifiedDestructiveActionPerformer__handleActionPickForPerformerClass___block_invoke;
  v7[3] = &unk_1E774C5C0;
  v7[4] = self;
  [v6 performActionWithCompletionHandler:v7];
}

- (void)completeUserInteractionTaskWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v8 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if ([(PXActionPerformer *)self state]!= 10)
  {
    PXAssertGetLog();
  }

  v7.receiver = self;
  v7.super_class = PXPhotoKitUnifiedDestructiveActionPerformer;
  [(PXActionPerformer *)&v7 completeUserInteractionTaskWithSuccess:successCopy error:errorCopy];
}

- (NSArray)performerClasses
{
  v41 = *MEMORY[0x1E69E9840];
  performerClasses = self->_performerClasses;
  if (performerClasses)
  {
    v21 = performerClasses;
  }

  else
  {
    v20 = 192;
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    selfCopy = self;
    _containedPerformerClasses = [objc_opt_class() _containedPerformerClasses];
    v21 = [v4 initWithCapacity:{objc_msgSend(_containedPerformerClasses, "count")}];

    selectionSnapshot = [(PXAssetActionPerformer *)selfCopy selectionSnapshot];
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];

    person = [(PXPhotoKitAssetActionPerformer *)selfCopy person];
    socialGroup = [(PXPhotoKitAssetActionPerformer *)selfCopy socialGroup];
    photosDataSourceSnapshot = [(PXPhotoKitAssetActionPerformer *)selfCopy photosDataSourceSnapshot];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [objc_opt_class() _containedPerformerClasses];
    v9 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v9)
    {
      v10 = *v37;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v36 + 1) + 8 * i);
          v32 = 0;
          v33 = &v32;
          v34 = 0x2020000000;
          v35 = [selectedIndexPaths count] > 0;
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __63__PXPhotoKitUnifiedDestructiveActionPerformer_performerClasses__block_invoke;
          v26[3] = &unk_1E772E1D8;
          v27 = photosDataSourceSnapshot;
          v30 = &v32;
          v31 = v12;
          v28 = person;
          v29 = socialGroup;
          [selectedIndexPaths enumerateItemIndexSetsUsingBlock:v26];
          if (*(v33 + 24) == 1)
          {
            if ([v12 isEqual:objc_opt_class()])
            {
              delegate = [(PXActionPerformer *)selfCopy delegate];
              v14 = objc_opt_respondsToSelector();

              if (v14)
              {
                delegate2 = [(PXActionPerformer *)selfCopy delegate];
                v16 = [delegate2 hostViewControllerForActionPerformer:selfCopy];

                if ([v16 conformsToProtocol:&unk_1F1B45960])
                {
                  *(v33 + 24) = 0;
                }

                sender = [(PXActionPerformer *)selfCopy sender];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  *(v33 + 24) = 0;
                }
              }
            }
          }

          if (*(v33 + 24) == 1)
          {
            [(NSArray *)v21 addObject:v12];
          }

          _Block_object_dispose(&v32, 8);
        }

        v9 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v9);
    }

    objc_storeStrong((&selfCopy->super.super.super.super.isa + v20), v21);
  }

  return v21;
}

void __63__PXPhotoKitUnifiedDestructiveActionPerformer_performerClasses__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = [v6 assetCollectionForSection:a3];
  v9 = [*(a1 + 32) assetsInSection:a3];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PXPhotoKitUnifiedDestructiveActionPerformer_performerClasses__block_invoke_2;
  v12[3] = &unk_1E772E1B0;
  v17 = *(a1 + 56);
  v13 = v9;
  v14 = v8;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v10 = v8;
  v11 = v9;
  [v7 enumerateIndexesUsingBlock:v12];
}

void __63__PXPhotoKitUnifiedDestructiveActionPerformer_performerClasses__block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 72) canPerformOnAsset:? inAssetCollection:? person:? socialGroup:?];
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

- (void)performUserInteractionTask
{
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  presentingViewController = [presentationEnvironment presentingViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(PXPhotoKitUnifiedDestructiveActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }

  else
  {
    performerClasses = [(PXPhotoKitUnifiedDestructiveActionPerformer *)self performerClasses];
    if ([performerClasses count] == 1)
    {
      lastObject = [performerClasses lastObject];
      actionType = [(PXActionPerformer *)self actionType];
      v10 = [(PXPhotoKitAssetActionPerformer *)self createPerformerWithClass:lastObject actionType:actionType];

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __73__PXPhotoKitUnifiedDestructiveActionPerformer_performUserInteractionTask__block_invoke;
      v21[3] = &unk_1E774C5C0;
      v21[4] = self;
      [v10 performActionWithCompletionHandler:v21];
    }

    else
    {
      assets = [(PXPhotoKitAssetActionPerformer *)self assets];
      presentationEnvironment2 = [(PXActionPerformer *)self presentationEnvironment];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __73__PXPhotoKitUnifiedDestructiveActionPerformer_performUserInteractionTask__block_invoke_2;
      v16[3] = &unk_1E772E188;
      v17 = assets;
      selfCopy = self;
      v19 = performerClasses;
      v20 = a2;
      v10 = assets;
      v13 = [presentationEnvironment2 presentAlertWithConfigurationHandler:v16];

      if (!v13)
      {
        v14 = PLUIGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v15 = 0;
          _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "Failed to present delete confirmation. User must confirm to perform removal.", v15, 2u);
        }

        [(PXPhotoKitUnifiedDestructiveActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
      }
    }
  }
}

void __73__PXPhotoKitUnifiedDestructiveActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = a1;
  v12 = [PXPhotoKitDeletePhotosActionController warningStringForAssets:*(a1 + 32) isDeleting:1];
  [v3 setTitle:v12];
  [v3 setStyle:0];
  v11 = PXLocalizedStringFromTable(@"PXPhotoKitUnifiedDestructiveActionPerformer_Cancel", @"PhotosUICore");
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __73__PXPhotoKitUnifiedDestructiveActionPerformer_performUserInteractionTask__block_invoke_3;
  v22[3] = &unk_1E774C648;
  a1 += 40;
  v22[4] = *a1;
  [v3 addActionWithTitle:v11 style:1 action:v22];
  objc_initWeak(&location, *a1);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(v13 + 48);
  v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v10 = [MEMORY[0x1E696AAA8] currentHandler];
          [v10 handleFailureInMethod:*(v13 + 56) object:*(v13 + 40) file:@"PXPhotoKitUnifiedDestructiveActionPerformer.m" lineNumber:177 description:@"Code which should be unreachable has been reached"];

          abort();
        }

        v8 = [v7 localizedTitleForUseCase:1 actionManager:0];
        if ([v7 isActionDestructive])
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __73__PXPhotoKitUnifiedDestructiveActionPerformer_performUserInteractionTask__block_invoke_4;
        v15[3] = &unk_1E772E160;
        objc_copyWeak(v16, &location);
        v16[1] = v7;
        [v3 addActionWithTitle:v8 style:v9 action:v15];
        objc_destroyWeak(v16);
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v4);
  }

  objc_destroyWeak(&location);
}

void __73__PXPhotoKitUnifiedDestructiveActionPerformer_performUserInteractionTask__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleActionPickForPerformerClass:*(a1 + 40)];
}

+ (id)_localizedTitleForAssets:(id)assets titleUseCase:(unint64_t)case key:(id)key
{
  assetsCopy = assets;
  keyCopy = key;
  if ([assetsCopy count] <= 1)
  {
    firstObject = [assetsCopy firstObject];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = firstObject;
    }

    else
    {
      v12 = 0;
    }

    v10 = [self _localizedTitleForAsset:v12 titleUseCase:case key:keyCopy];
  }

  else
  {
    v10 = keyCopy;
  }

  return v10;
}

+ (id)_localizedTitleForAsset:(id)asset titleUseCase:(unint64_t)case key:(id)key
{
  assetCopy = asset;
  keyCopy = key;
  if ([assetCopy px_isSharedAlbumAsset])
  {
    v8 = @"SharedAlbum";
  }

  else if ([assetCopy px_isUnsavedSyndicatedAsset])
  {
    mediaType = [assetCopy mediaType];
    if (mediaType > 3)
    {
      goto LABEL_8;
    }

    v8 = off_1E772E220[mediaType];
  }

  else
  {
    v8 = @"Library";
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", keyCopy, v8];

  keyCopy = v10;
LABEL_8:

  return keyCopy;
}

+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager
{
  v6 = MEMORY[0x1E69DC708];
  targetCopy = target;
  v8 = [[v6 alloc] initWithBarButtonSystemItem:16 target:targetCopy action:action];

  return v8;
}

+ (BOOL)canPerformOnSubsetOfSelection
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  _containedPerformerClasses = [self _containedPerformerClasses];
  v3 = [_containedPerformerClasses countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(_containedPerformerClasses);
        }

        if ([*(*(&v7 + 1) + 8 * i) canPerformOnSubsetOfSelection])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [_containedPerformerClasses countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  v26 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  collectionCopy = collection;
  personCopy = person;
  groupCopy = group;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  _containedPerformerClasses = [self _containedPerformerClasses];
  v15 = [_containedPerformerClasses countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(_containedPerformerClasses);
        }

        if (v17)
        {
          v17 = 1;
        }

        else
        {
          v17 = [*(*(&v21 + 1) + 8 * i) canPerformOnAsset:assetCopy inAssetCollection:collectionCopy person:personCopy socialGroup:groupCopy];
        }
      }

      v16 = [_containedPerformerClasses countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_containedPerformerClasses
{
  if (_containedPerformerClasses_onceToken != -1)
  {
    dispatch_once(&_containedPerformerClasses_onceToken, &__block_literal_global_7910);
  }

  v3 = _containedPerformerClasses_containedPerformerClasses;

  return v3;
}

void __73__PXPhotoKitUnifiedDestructiveActionPerformer__containedPerformerClasses__block_invoke()
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:4];
  v1 = _containedPerformerClasses_containedPerformerClasses;
  _containedPerformerClasses_containedPerformerClasses = v0;
}

@end