@interface PXPhotoKitMoveToPersonalLibraryActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group;
+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager;
+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler;
- (id)_multiContributorConfirmationAlertControllerForAssets:(id)assets contributorName:(id)name;
- (void)_moveAssetsToPersonalLibraryWithCompletionHandler:(id)handler;
- (void)_presentFailureWithError:(id)error completionHandler:(id)handler;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitMoveToPersonalLibraryActionPerformer

+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager
{
  targetCopy = target;
  selectionManager = [manager selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  allItemsEnumerator = [selectionSnapshot allItemsEnumerator];
  v11 = _PXSharedLibraryFetchAssetsFromAssets(allItemsEnumerator, 0, 1, 0);

  v12 = [v11 count];
  if (v12)
  {
    PXLocalizedSharedLibraryAssetCountForUsage(v12, 0, 0, 16);
  }

  v13 = [PXLabelBarButtonItem alloc];
  v14 = PXLocalizedStringFromTable(@"PXSelectItems", @"PhotosUICore");
  v15 = [(PXLabelBarButtonItem *)v13 initWithTitle:v14 style:0 target:targetCopy action:action];

  return v15;
}

+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__PXPhotoKitMoveToPersonalLibraryActionPerformer_createPreviewActionWithTitle_image_handler___block_invoke;
  v12[3] = &unk_1E7742C90;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [v8 actionWithTitle:title image:image identifier:0 handler:v12];

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  v14[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if ([collection px_allowsMoveToPersonalLibrary])
  {
    photoLibrary = [assetCopy photoLibrary];
    v9 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

    exiting = [v9 exiting];

    if (exiting)
    {
      LOBYTE(CanMoveAssetsToPersonalLibrary) = 0;
    }

    else
    {
      v14[0] = assetCopy;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      CanMoveAssetsToPersonalLibrary = PXSharedLibraryCanMoveAssetsToPersonalLibrary(v12);
    }
  }

  else
  {
    LOBYTE(CanMoveAssetsToPersonalLibrary) = 0;
  }

  return CanMoveAssetsToPersonalLibrary;
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group
{
  snapshotCopy = snapshot;
  personCopy = person;
  groupCopy = group;
  if ([snapshotCopy isAnyItemSelected])
  {
    allItemsEnumerator = [snapshotCopy allItemsEnumerator];
    v12 = PXSharedLibraryFetchAnySharedAssetFromAssets(allItemsEnumerator);

    if (v12)
    {
      photoLibrary = [v12 photoLibrary];
      v14 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

      exiting = [v14 exiting];

      if (exiting)
      {
        v16 = 0;
      }

      else
      {
        v18.receiver = self;
        v18.super_class = &OBJC_METACLASS___PXPhotoKitMoveToPersonalLibraryActionPerformer;
        v16 = objc_msgSendSuper2(&v18, sel_canPerformWithSelectionSnapshot_person_socialGroup_, snapshotCopy, personCopy, groupCopy);
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_presentFailureWithError:(id)error completionHandler:(id)handler
{
  errorCopy = error;
  v6 = PXLocalizedSharedLibraryString(@"PXSharedLibraryMoveToPersonalLibraryFailureAlertTitle");
  v7 = PXLocalizedSharedLibraryString(@"PXSharedLibraryGenericFailureAlertMessage");
  v8 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
  v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  v10 = MEMORY[0x1E69DC648];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__PXPhotoKitMoveToPersonalLibraryActionPerformer__presentFailureWithError_completionHandler___block_invoke;
  v16[3] = &unk_1E774A2C8;
  v16[4] = self;
  v11 = errorCopy;
  v17 = v11;
  v12 = [v10 actionWithTitle:v8 style:0 handler:v16];
  [v9 addAction:v12];

  if (![(PXActionPerformer *)self presentViewController:v9])
  {
    v13 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Failed to present failure alert", v15, 2u);
    }

    v14 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Failed to present failure alert"];
    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:0 error:v14];
  }
}

- (void)_moveAssetsToPersonalLibraryWithCompletionHandler:(id)handler
{
  if (!handler)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitMoveToPersonalLibraryActionPerformer.m" lineNumber:252 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  assetsToMove = [(PXPhotoKitMoveToPersonalLibraryActionPerformer *)self assetsToMove];
  if (![assetsToMove count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitMoveToPersonalLibraryActionPerformer.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"assetsToMove.count"}];
  }

  PXLocalizedSharedLibraryString(@"PXSharedLibraryMoveToPersonalLibraryToastTitle");
  objc_claimAutoreleasedReturnValue();
  PXLocalizedAssetCountForUsage([assetsToMove count], 0, 0, 0);
}

void __100__PXPhotoKitMoveToPersonalLibraryActionPerformer__moveAssetsToPersonalLibraryWithCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 finishProgressMarkingAsComplete:0];
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 40) _presentFailureWithError:v6 completionHandler:*(a1 + 48)];
  }
}

- (void)performBackgroundTask
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __71__PXPhotoKitMoveToPersonalLibraryActionPerformer_performBackgroundTask__block_invoke;
  v2[3] = &unk_1E774C5C0;
  v2[4] = self;
  [(PXPhotoKitMoveToPersonalLibraryActionPerformer *)self _moveAssetsToPersonalLibraryWithCompletionHandler:v2];
}

- (void)performUserInteractionTask
{
  assetsFetchResult = [(PXPhotoKitAssetActionPerformer *)self assetsFetchResult];
  v5 = _PXSharedLibraryFetchAssetsFromAssets(assetsFetchResult, 0, 1, 0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PXPhotoKitMoveToPersonalLibraryActionPerformer_performUserInteractionTask__block_invoke;
  aBlock[3] = &unk_1E7749FF8;
  v6 = v5;
  selfCopy = self;
  v14 = a2;
  v12 = v6;
  v7 = _Block_copy(aBlock);
  assetsFetchResult2 = [(PXPhotoKitAssetActionPerformer *)self assetsFetchResult];
  photoLibrary = [assetsFetchResult2 photoLibrary];

  v10 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];
  if (-[PXPhotoKitMoveToPersonalLibraryActionPerformer shouldShowConfirmation](self, "shouldShowConfirmation") && PXSharedLibraryShouldDisplayMoveToPersonalLibraryConfirmation([v10 hasPreview]))
  {
    PXSharedLibraryGetMoveToPersonalLibraryConfirmationTitleAndMessage(v6);
  }

  v7[2](v7);
}

void __76__PXPhotoKitMoveToPersonalLibraryActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = _PXSharedLibraryFetchAssetsFromAssets(*(a1 + 32), 1, 1, 0);
  v3 = [*(a1 + 32) count];
  if (v3 == [v2 count])
  {
    v4 = [v2 firstObject];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_4;
      }

      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      v37 = *(a1 + 40);
      v36 = *(a1 + 48);
      v38 = objc_opt_class();
      v35 = NSStringFromClass(v38);
      v39 = [v4 px_descriptionForAssertionMessage];
      [v31 handleFailureInMethod:v36 object:v37 file:@"PXPhotoKitMoveToPersonalLibraryActionPerformer.m" lineNumber:166 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"myAssets.firstObject", v35, v39}];
    }

    else
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = *(a1 + 40);
      v32 = *(a1 + 48);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      [v31 handleFailureInMethod:v32 object:v33 file:@"PXPhotoKitMoveToPersonalLibraryActionPerformer.m" lineNumber:166 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"myAssets.firstObject", v35}];
    }

LABEL_4:
    v5 = [v4 photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];

    v7 = [MEMORY[0x1E6978AC0] fetchContributorsForAssets:v2 options:v6];
    v8 = MEMORY[0x1E695DFD8];
    v9 = [v7 fetchedObjects];
    v10 = [v8 setWithArray:v9];

    if ([v10 count] < 3)
    {
      if ([v10 count] != 2)
      {
        [*(a1 + 40) setAssetsToMove:*(a1 + 32)];
        [*(a1 + 40) completeUserInteractionTaskWithSuccess:1 error:0];
LABEL_33:

        goto LABEL_34;
      }

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v24 = v10;
      v11 = [v24 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v11)
      {
        v40 = v7;
        v25 = *v45;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v45 != v25)
            {
              objc_enumerationMutation(v24);
            }

            v27 = *(*(&v44 + 1) + 8 * i);
            if (([v27 isCurrentUser] & 1) == 0)
            {
              v11 = PXSharedLibraryShortNameForParticipant(v27);
              goto LABEL_26;
            }
          }

          v11 = [v24 countByEnumeratingWithState:&v44 objects:v49 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }

LABEL_26:
        v7 = v40;
      }

      v14 = [*(a1 + 40) _multiContributorConfirmationAlertControllerForAssets:v2 contributorName:v11];
      if (([*(a1 + 40) presentViewController:v14] & 1) == 0)
      {
        v28 = PLUIGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_ERROR, "Failed to present 'move' dialog.", buf, 2u);
        }

        v29 = *(a1 + 40);
        v30 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present 'move' dialog."];
        [v29 completeUserInteractionTaskWithSuccess:0 error:v30];
      }
    }

    else
    {
      v11 = [*(a1 + 40) _multiContributorConfirmationAlertControllerForAssets:v2 contributorName:0];
      if ([*(a1 + 40) presentViewController:v11])
      {
LABEL_32:

        goto LABEL_33;
      }

      v12 = PLUIGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Failed to present 'move' dialog.", buf, 2u);
      }

      v13 = *(a1 + 40);
      v14 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present 'move' dialog."];
      [v13 completeUserInteractionTaskWithSuccess:0 error:v14];
    }

    goto LABEL_32;
  }

  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_MoveSomeUnownedToPersonalLibraryConfirmationMessage_Message");
  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v4 preferredStyle:0];
  v15 = MEMORY[0x1E69DC648];
  v16 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_MoveMineToPersonalLibrary_Button_Title");
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __76__PXPhotoKitMoveToPersonalLibraryActionPerformer_performUserInteractionTask__block_invoke_262;
  v42[3] = &unk_1E774A2C8;
  v42[4] = *(a1 + 40);
  v43 = v2;
  v17 = [v15 actionWithTitle:v16 style:0 handler:v42];
  [v6 addAction:v17];

  v18 = MEMORY[0x1E69DC648];
  v19 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __76__PXPhotoKitMoveToPersonalLibraryActionPerformer_performUserInteractionTask__block_invoke_2;
  v41[3] = &unk_1E7749600;
  v41[4] = *(a1 + 40);
  v20 = [v18 actionWithTitle:v19 style:1 handler:v41];
  [v6 addAction:v20];

  if (([*(a1 + 40) presentViewController:v6] & 1) == 0)
  {
    v21 = PLUIGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_ERROR, "Failed to present 'move mine only' dialog.", buf, 2u);
    }

    v22 = *(a1 + 40);
    v23 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present 'move mine only' dialog."];
    [v22 completeUserInteractionTaskWithSuccess:0 error:v23];
  }

LABEL_34:
}

uint64_t __76__PXPhotoKitMoveToPersonalLibraryActionPerformer_performUserInteractionTask__block_invoke_267(uint64_t a1)
{
  PXSharedLibrarySetDidConfirmMoveToPersonalLibrary(1);
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void __76__PXPhotoKitMoveToPersonalLibraryActionPerformer_performUserInteractionTask__block_invoke_2_268(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Move to Personal Library canceled."];
  [v1 completeUserInteractionTaskWithSuccess:0 error:v2];
}

uint64_t __76__PXPhotoKitMoveToPersonalLibraryActionPerformer_performUserInteractionTask__block_invoke_262(uint64_t a1)
{
  [*(a1 + 32) setAssetsToMove:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 completeUserInteractionTaskWithSuccess:1 error:0];
}

void __76__PXPhotoKitMoveToPersonalLibraryActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Move to Personal Library canceled."];
  [v1 completeUserInteractionTaskWithSuccess:0 error:v2];
}

- (id)_multiContributorConfirmationAlertControllerForAssets:(id)assets contributorName:(id)name
{
  assetsCopy = assets;
  nameCopy = name;
  v8 = [assetsCopy count];
  v9 = &stru_1F1741150;
  if (v8 > 1)
  {
    v9 = @"s";
  }

  v10 = v9;
  v11 = [nameCopy length];
  v12 = [assetsCopy count];
  if (v11)
  {
    v30 = 0;
    v28 = 0;
    v29 = 0;
    [PXPhotoKitDeletePhotosActionController assetTypeCountsForAssets:assetsCopy photosCount:&v30 videosCount:&v29 othersCount:&v28];
    if (v30 == v12)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibrary_MoveToPersonalLibrary_MC_ConfirmationMessage_For_Contributor_Photo%@", v10];
    }

    else if (v29 == v12)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibrary_MoveToPersonalLibrary_MC_ConfirmationMessage_For_Contributor_Video%@", v10];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibrary_MoveToPersonalLibrary_MC_ConfirmationMessage_For_Contributor_Item%@", v10];
    }
    v13 = ;
    PXLocalizedSharedLibraryString(v13);
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  v30 = 0;
  v28 = 0;
  v29 = 0;
  [PXPhotoKitDeletePhotosActionController assetTypeCountsForAssets:assetsCopy photosCount:&v30 videosCount:&v29 othersCount:&v28];
  if (v30 == v12)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibrary_MoveToPersonalLibrary_MC_ConfirmationMessage_Photo%@", v10];
  }

  else if (v29 == v12)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibrary_MoveToPersonalLibrary_MC_ConfirmationMessage_Video%@", v10];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibrary_MoveToPersonalLibrary_MC_ConfirmationMessage_Item%@", v10];
  }
  v14 = ;
  v15 = PXLocalizedSharedLibraryString(v14);
  v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v15 preferredStyle:0];
  v17 = MEMORY[0x1E69DC648];
  v18 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_Action_MoveToPersonalLibrary");
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __120__PXPhotoKitMoveToPersonalLibraryActionPerformer__multiContributorConfirmationAlertControllerForAssets_contributorName___block_invoke;
  v26[3] = &unk_1E774A2C8;
  v26[4] = self;
  v27 = assetsCopy;
  v19 = assetsCopy;
  v20 = [v17 actionWithTitle:v18 style:0 handler:v26];
  [v16 addAction:v20];

  v21 = MEMORY[0x1E69DC648];
  v22 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __120__PXPhotoKitMoveToPersonalLibraryActionPerformer__multiContributorConfirmationAlertControllerForAssets_contributorName___block_invoke_2;
  v25[3] = &unk_1E7749600;
  v25[4] = self;
  v23 = [v21 actionWithTitle:v22 style:1 handler:v25];
  [v16 addAction:v23];

  return v16;
}

uint64_t __120__PXPhotoKitMoveToPersonalLibraryActionPerformer__multiContributorConfirmationAlertControllerForAssets_contributorName___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAssetsToMove:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 completeUserInteractionTaskWithSuccess:1 error:0];
}

void __120__PXPhotoKitMoveToPersonalLibraryActionPerformer__multiContributorConfirmationAlertControllerForAssets_contributorName___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Move to Personal Library canceled."];
  [v1 completeUserInteractionTaskWithSuccess:0 error:v2];
}

@end