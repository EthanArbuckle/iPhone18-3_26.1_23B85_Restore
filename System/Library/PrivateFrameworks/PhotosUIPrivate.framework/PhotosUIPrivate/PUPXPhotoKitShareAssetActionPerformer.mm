@interface PUPXPhotoKitShareAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager;
+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller;
- (id)_assetsFetchResultByAssetCollectionFromCollectionListFetchResult:(id)result inDataSource:(id)source;
- (id)undoManagerForActionPerformer:(id)performer;
- (void)_didCompleteWithActivityType:(id)type success:(BOOL)success asset:(id)asset person:(id)person socialGroup:(id)group selectionSnapshot:(id)snapshot;
- (void)_performNotThisPersonWithCompletionHandler:(id)handler;
- (void)_performSetKeyFaceWithAsset:(id)asset completionHandler:(id)handler;
- (void)_presentShareSheet;
- (void)activitySharingController:(id)controller didCompleteWithActivityType:(id)type success:(BOOL)success;
- (void)activitySharingControllerDidCancel:(id)cancel;
- (void)completeUserInteractionTaskWithSuccess:(BOOL)success error:(id)error;
@end

@implementation PUPXPhotoKitShareAssetActionPerformer

- (id)undoManagerForActionPerformer:(id)performer
{
  delegate = [(PXActionPerformer *)self delegate];
  v5 = [delegate undoManagerForActionPerformer:self];

  return v5;
}

- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  v6 = [(PXActionPerformer *)self dismissViewController:controller completionHandler:handler];
  if (!v6)
  {
    [(PUPXPhotoKitShareAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }

  return v6;
}

- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller
{
  v5 = [(PXActionPerformer *)self presentViewController:controller];
  if (!v5)
  {
    [(PUPXPhotoKitShareAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }

  return v5;
}

- (void)completeUserInteractionTaskWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v11 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if ([(PXActionPerformer *)self state]== 10)
  {
    v8.receiver = self;
    v8.super_class = PUPXPhotoKitShareAssetActionPerformer;
    [(PXActionPerformer *)&v8 completeUserInteractionTaskWithSuccess:successCopy error:errorCopy];
  }

  else
  {
    v7 = PXAssertGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      state = [(PXActionPerformer *)self state];
      _os_log_error_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "[PUPXPhotoKitShareAssetActionPerformer]: Failed to completeUserInteractionTaskWithSuccess because state is %lu", buf, 0xCu);
    }
  }
}

- (void)_performNotThisPersonWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  person = [(PXPhotoKitAssetActionPerformer *)self person];
  [(PXPhotoKitAssetActionPerformer *)self instantlyExcludeAssetsFromDataSource];
  selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];

  photosDataSourceSnapshot = [(PXPhotoKitAssetActionPerformer *)self photosDataSourceSnapshot];
  v8 = [photosDataSourceSnapshot fetchResultWithAssetsAtIndexPaths:selectedIndexPaths];

  v9 = [objc_alloc(MEMORY[0x1E69C3728]) initWithPerson:person assets:v8];
  undoManager = [(PXActionPerformer *)self undoManager];
  [v9 executeWithUndoManager:undoManager completionHandler:handlerCopy];
}

- (void)_performSetKeyFaceWithAsset:(id)asset completionHandler:(id)handler
{
  handlerCopy = handler;
  assetCopy = asset;
  person = [(PXPhotoKitAssetActionPerformer *)self person];
  v8 = [objc_alloc(MEMORY[0x1E69C33B0]) initWithPerson:person asset:assetCopy];

  undoManager = [(PXActionPerformer *)self undoManager];
  [v8 executeWithUndoManager:undoManager completionHandler:handlerCopy];
}

- (void)_didCompleteWithActivityType:(id)type success:(BOOL)success asset:(id)asset person:(id)person socialGroup:(id)group selectionSnapshot:(id)snapshot
{
  successCopy = success;
  v39 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  assetCopy = asset;
  groupCopy = group;
  snapshotCopy = snapshot;
  v18 = PLUIGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"NO";
    if (successCopy)
    {
      v19 = @"YES";
    }

    v20 = v19;
    *buf = 138412546;
    v36 = typeCopy;
    v37 = 2112;
    v38 = v20;
    _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "[PUPXPhotoKitShareAssetActionPerformer] didCompleteWithActivityType: %@, success %@", buf, 0x16u);
  }

  if (successCopy)
  {
    if (assetCopy && person)
    {
      if ([typeCopy isEqualToString:*MEMORY[0x1E69C3E60]])
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __121__PUPXPhotoKitShareAssetActionPerformer__didCompleteWithActivityType_success_asset_person_socialGroup_selectionSnapshot___block_invoke;
        v34[3] = &unk_1E7B80280;
        v34[4] = self;
        [(PUPXPhotoKitShareAssetActionPerformer *)self _performSetKeyFaceWithAsset:assetCopy completionHandler:v34];
        goto LABEL_26;
      }

      if ([typeCopy isEqualToString:*MEMORY[0x1E69C3E18]])
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __121__PUPXPhotoKitShareAssetActionPerformer__didCompleteWithActivityType_success_asset_person_socialGroup_selectionSnapshot___block_invoke_246;
        v33[3] = &unk_1E7B80280;
        v33[4] = self;
        [(PUPXPhotoKitShareAssetActionPerformer *)self _performNotThisPersonWithCompletionHandler:v33];
        goto LABEL_26;
      }
    }

    if (assetCopy && groupCopy && [typeCopy isEqualToString:*MEMORY[0x1E69C3E78]])
    {
      v21 = MEMORY[0x1E69C3790];
      undoManager = [(PXActionPerformer *)self undoManager];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __121__PUPXPhotoKitShareAssetActionPerformer__didCompleteWithActivityType_success_asset_person_socialGroup_selectionSnapshot___block_invoke_249;
      v30[3] = &unk_1E7B7FB70;
      v31 = groupCopy;
      selfCopy = self;
      [v21 performSetSocialGroupKeyPhotoWithAsset:assetCopy socialGroup:v31 undoManager:undoManager completionHandler:v30];
    }

    else if ([typeCopy isEqualToString:*MEMORY[0x1E69C3EA0]] && (-[PXPhotoKitAssetActionPerformer createPerformerWithClass:actionType:](self, "createPerformerWithClass:actionType:", objc_opt_class(), *MEMORY[0x1E69C47E0]), (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = v23;
      selectedIndexPaths = [snapshotCopy selectedIndexPaths];
      v26 = [selectedIndexPaths count];

      if (v26 < 1)
      {
        [(PUPXPhotoKitShareAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
      }

      else
      {
        [v24 setSelectionSnapshot:snapshotCopy];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __121__PUPXPhotoKitShareAssetActionPerformer__didCompleteWithActivityType_success_asset_person_socialGroup_selectionSnapshot___block_invoke_251;
        v29[3] = &unk_1E7B80280;
        v29[4] = self;
        [v24 performActionWithCompletionHandler:v29];
      }
    }

    else
    {
      if ([typeCopy isEqualToString:*MEMORY[0x1E69CDA78]])
      {
        selfCopy3 = self;
        v28 = 0;
      }

      else
      {
        selfCopy3 = self;
        v28 = 1;
      }

      [(PUPXPhotoKitShareAssetActionPerformer *)selfCopy3 completeUserInteractionTaskWithSuccess:v28 error:0];
    }
  }

LABEL_26:
}

void __121__PUPXPhotoKitShareAssetActionPerformer__didCompleteWithActivityType_success_asset_person_socialGroup_selectionSnapshot___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v3 = v4;
  px_dispatch_on_main_queue();
}

void __121__PUPXPhotoKitShareAssetActionPerformer__didCompleteWithActivityType_success_asset_person_socialGroup_selectionSnapshot___block_invoke_246(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v3 = v4;
  px_dispatch_on_main_queue();
}

void __121__PUPXPhotoKitShareAssetActionPerformer__didCompleteWithActivityType_success_asset_person_socialGroup_selectionSnapshot___block_invoke_249(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = v4;
  px_dispatch_on_main_queue();
}

void __121__PUPXPhotoKitShareAssetActionPerformer__didCompleteWithActivityType_success_asset_person_socialGroup_selectionSnapshot___block_invoke_2_250(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) localIdentifier];
  if (*(a1 + 56) == 1)
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v2;
      v4 = "Setting new key photo succeeded for social group: %@";
      v5 = v3;
      v6 = OS_LOG_TYPE_INFO;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_1B36F3000, v5, v6, v4, &v9, v7);
    }
  }

  else
  {
    [*(a1 + 40) stopExcludingAssetsFromDataSource];
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      v9 = 138412546;
      v10 = v2;
      v11 = 2112;
      v12 = v8;
      v4 = "Setting new key photo failed for social group: %@ with error: %@";
      v5 = v3;
      v6 = OS_LOG_TYPE_ERROR;
      v7 = 22;
      goto LABEL_6;
    }
  }

  [*(a1 + 40) completeUserInteractionTaskWithSuccess:*(a1 + 56) error:*(a1 + 48)];
}

uint64_t __121__PUPXPhotoKitShareAssetActionPerformer__didCompleteWithActivityType_success_asset_person_socialGroup_selectionSnapshot___block_invoke_2_247(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v2 = PLUIGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      v3 = "[PUPXPhotoKitShareAssetActionPerformer] Not This Person succeeded.";
      v4 = v2;
      v5 = OS_LOG_TYPE_DEFAULT;
      v6 = 2;
LABEL_6:
      _os_log_impl(&dword_1B36F3000, v4, v5, v3, &v9, v6);
    }
  }

  else
  {
    [*(a1 + 32) stopExcludingAssetsFromDataSource];
    v2 = PLUIGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v9 = 138412290;
      v10 = v7;
      v3 = "[PUPXPhotoKitShareAssetActionPerformer] Not This Person failed with error %@.";
      v4 = v2;
      v5 = OS_LOG_TYPE_ERROR;
      v6 = 12;
      goto LABEL_6;
    }
  }

  return [*(a1 + 32) completeUserInteractionTaskWithSuccess:*(a1 + 48) error:*(a1 + 40)];
}

uint64_t __121__PUPXPhotoKitShareAssetActionPerformer__didCompleteWithActivityType_success_asset_person_socialGroup_selectionSnapshot___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = PLUIGetLog();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v5 = "[PUPXPhotoKitShareAssetActionPerformer] Set Key Face succeeded";
      v6 = v4;
      v7 = OS_LOG_TYPE_DEFAULT;
      v8 = 2;
LABEL_6:
      _os_log_impl(&dword_1B36F3000, v6, v7, v5, &v11, v8);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v11 = 138412290;
    v12 = v9;
    v5 = "[PUPXPhotoKitShareAssetActionPerformer] Set Key Face failed with error %@.";
    v6 = v4;
    v7 = OS_LOG_TYPE_ERROR;
    v8 = 12;
    goto LABEL_6;
  }

  return [*(a1 + 40) completeUserInteractionTaskWithSuccess:*(a1 + 48) error:*(a1 + 32)];
}

- (void)activitySharingController:(id)controller didCompleteWithActivityType:(id)type success:(BOOL)success
{
  successCopy = success;
  controllerCopy = controller;
  typeCopy = type;
  v20 = controllerCopy;
  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    px_descriptionForAssertionMessage = [v20 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:297 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController", v17, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:297 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController", v17}];
  }

LABEL_3:
  currentAsset = [v20 currentAsset];
  person = [(PXPhotoKitAssetActionPerformer *)self person];
  socialGroup = [(PXPhotoKitAssetActionPerformer *)self socialGroup];
  selectionSnapshot = [v20 selectionSnapshot];
  [(PUPXPhotoKitShareAssetActionPerformer *)self _didCompleteWithActivityType:typeCopy success:successCopy asset:currentAsset person:person socialGroup:socialGroup selectionSnapshot:selectionSnapshot];
}

- (void)activitySharingControllerDidCancel:(id)cancel
{
  if ([(PXActionPerformer *)self state]== 10)
  {

    [(PUPXPhotoKitShareAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

- (id)_assetsFetchResultByAssetCollectionFromCollectionListFetchResult:(id)result inDataSource:(id)source
{
  v25 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  sourceCopy = source;
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(resultCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = resultCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (sourceCopy)
        {
          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [sourceCopy assetsInSection:{objc_msgSend(sourceCopy, "sectionForAssetCollection:", v13, v20)}];
          if (v14)
          {
            v15 = v14;
          }

          else
          {
            v16 = objc_alloc(MEMORY[0x1E69788E0]);
            photoLibrary = [sourceCopy photoLibrary];
            fetchType = [MEMORY[0x1E6978630] fetchType];
            v15 = [v16 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:0];

            if (!v15)
            {
              continue;
            }
          }

          [v7 setObject:v15 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)_presentShareSheet
{
  selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
  photosDataSourceSnapshot = [(PXPhotoKitAssetActionPerformer *)self photosDataSourceSnapshot];
  collectionListFetchResult = [photosDataSourceSnapshot collectionListFetchResult];
  v6 = [(PUPXPhotoKitShareAssetActionPerformer *)self _assetsFetchResultByAssetCollectionFromCollectionListFetchResult:collectionListFetchResult inDataSource:photosDataSourceSnapshot];
  v7 = [[PUPhotoSelectionManager alloc] initWithOptions:0];
  v8 = [[PUActivitySharingConfiguration alloc] initWithCollectionsFetchResult:collectionListFetchResult selectionManager:v7];
  if (_os_feature_enabled_impl())
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__51529;
    v41 = __Block_byref_object_dispose__51530;
    v42 = 0;
    v9 = MEMORY[0x1E695DF70];
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    v11 = [v9 arrayWithCapacity:{objc_msgSend(selectedIndexPaths, "count")}];

    selectedIndexPaths2 = [selectionSnapshot selectedIndexPaths];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __59__PUPXPhotoKitShareAssetActionPerformer__presentShareSheet__block_invoke;
    v33[3] = &unk_1E7B7A760;
    v34 = photosDataSourceSnapshot;
    v36 = &v37;
    v13 = v11;
    v35 = v13;
    [selectedIndexPaths2 enumerateItemIndexPathsUsingBlock:v33];

    v14 = MEMORY[0x1E6978630];
    librarySpecificFetchOptions = [v38[5] librarySpecificFetchOptions];
    v16 = [v14 fetchAssetsWithObjectIDs:v13 options:librarySpecificFetchOptions];
    [(PUActivitySharingConfiguration *)v8 setInitialAssetsFetchResult:v16];

    _Block_object_dispose(&v37, 8);
  }

  person = [(PXPhotoKitAssetActionPerformer *)self person];
  [(PUActivitySharingConfiguration *)v8 setPerson:person];

  socialGroup = [(PXPhotoKitAssetActionPerformer *)self socialGroup];
  [(PUActivitySharingConfiguration *)v8 setSocialGroup:socialGroup];

  [(PUActivitySharingConfiguration *)v8 setAssetsFetchResultsByAssetCollection:v6];
  photosDataSourceSnapshot2 = [(PXPhotoKitAssetActionPerformer *)self photosDataSourceSnapshot];
  [(PUActivitySharingConfiguration *)v8 setPhotosDataSource:photosDataSourceSnapshot2];

  v20 = [PUActivityViewController excludedPhotosActivityTypesForPresentationSource:[(PXPhotoKitAssetActionPerformer *)self presentationSource]];
  [(PUActivitySharingConfiguration *)v8 setExcludedActivityTypes:v20];

  [(PUActivitySharingConfiguration *)v8 setAllowsAirPlayActivity:[(PXPhotoKitAssetActionPerformer *)self supportsAirPlay]];
  v21 = [[PUActivitySharingController alloc] initWithActivitySharingConfiguration:v8];
  [(PUActivitySharingController *)v21 setDelegate:self];
  objc_storeStrong(&self->_activitySharingController, v21);
  selectedIndexPaths3 = [selectionSnapshot selectedIndexPaths];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __59__PUPXPhotoKitShareAssetActionPerformer__presentShareSheet__block_invoke_2;
  v30 = &unk_1E7B7A788;
  v23 = photosDataSourceSnapshot;
  v31 = v23;
  v24 = v7;
  v32 = v24;
  [selectedIndexPaths3 enumerateItemIndexSetsUsingBlock:&v27];

  v25 = [(PUActivitySharingController *)self->_activitySharingController activityViewController:v27];
  v26 = [(PXActionPerformer *)self presentViewController:v25];

  if (!v26)
  {
    [(PUPXPhotoKitShareAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

void __59__PUPXPhotoKitShareAssetActionPerformer__presentShareSheet__block_invoke(void *a1, _OWORD *a2)
{
  v3 = a1[4];
  v4 = a2[1];
  v12[0] = *a2;
  v12[1] = v4;
  v5 = [v3 assetAtSimpleIndexPath:v12];
  v6 = v5;
  if (!*(*(a1[6] + 8) + 40))
  {
    v7 = [v5 photoLibrary];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = a1[5];
  v11 = [v6 objectID];
  [v10 addObject:v11];
}

void __59__PUPXPhotoKitShareAssetActionPerformer__presentShareSheet__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = [v6 assetCollectionForSection:a3];
  [*(a1 + 40) selectAssetsAtIndexes:v7 inAssetCollection:v8];
}

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = PXActionPerformerTitleUseCaseDescription();
  v6 = [v4 stringWithFormat:@"PXPhotoKitAssetActionManager%@Title_Share", v5];

  v7 = PXLocalizedString();

  return v7;
}

+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__PUPXPhotoKitShareAssetActionPerformer_createPreviewActionWithTitle_image_handler___block_invoke;
  v12[3] = &unk_1E7B7CC30;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [v8 actionWithTitle:title image:image identifier:0 handler:v12];

  return v10;
}

+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager
{
  v6 = MEMORY[0x1E69DC708];
  targetCopy = target;
  v8 = [[v6 alloc] initWithBarButtonSystemItem:9 target:targetCopy action:action];

  [v8 setImageInsets:{-0.5, 0.0, 0.5, 0.0}];

  return v8;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  assetCopy = asset;
  if ([assetCopy canPerformSharingAction] && (objc_msgSend(assetCopy, "isTrashed") & 1) == 0)
  {
    v7 = [assetCopy isRecoveredAsset] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end