@interface PXPhotoKitDestructiveActionPerformer
- (id)_assetsAllowedToExpunge:(id)expunge;
- (int64_t)destructivePhotosAction;
- (void)_logCompletionAnalyticsForAssets:(id)assets withAction:(int64_t)action;
- (void)_performAction:(int64_t)action onAssets:(id)assets;
- (void)_presentAllDuplicatesDeletionAlertWithCompletion:(id)completion;
- (void)deletePhotosActionController:(id)controller dismissConfirmationViewController:(id)viewController;
- (void)deletePhotosActionController:(id)controller presentConfirmationViewController:(id)viewController;
- (void)getConfirmationMessage:(id *)message confirmationButtonTitle:(id *)title isDestructive:(BOOL *)destructive;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitDestructiveActionPerformer

- (void)deletePhotosActionController:(id)controller dismissConfirmationViewController:(id)viewController
{
  if (![(PXActionPerformer *)self dismissViewController:viewController completionHandler:0])
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Failed to dismiss delete confirmation.", v5, 2u);
    }
  }
}

- (void)deletePhotosActionController:(id)controller presentConfirmationViewController:(id)viewController
{
  if (![(PXActionPerformer *)self presentViewController:viewController])
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Failed to present delete confirmation. User must confirm to perform removal.", v6, 2u);
    }

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

- (void)performUserInteractionTask
{
  destructivePhotosAction = [(PXPhotoKitDestructiveActionPerformer *)self destructivePhotosAction];
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  if ((destructivePhotosAction - 5) <= 1)
  {
    assetsByAssetCollection = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
    allKeys = [assetsByAssetCollection allKeys];
    firstObject = [allKeys firstObject];

    if (firstObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_4;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v68 = objc_opt_class();
      v67 = NSStringFromClass(v68);
      px_descriptionForAssertionMessage = [firstObject px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitDestructiveActionPerformer.m" lineNumber:183 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetsByAssetCollection.allKeys.firstObject", v67, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v66 = objc_opt_class();
      v67 = NSStringFromClass(v66);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitDestructiveActionPerformer.m" lineNumber:183 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetsByAssetCollection.allKeys.firstObject", v67}];
    }

LABEL_4:
    if (![firstObject isTrashBin])
    {
LABEL_21:

      goto LABEL_22;
    }

    assetsByAssetCollection2 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
    allKeys2 = [assetsByAssetCollection2 allKeys];
    firstObject2 = [allKeys2 firstObject];

    if (firstObject2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_7;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v73 = objc_opt_class();
      v72 = NSStringFromClass(v73);
      px_descriptionForAssertionMessage2 = [firstObject2 px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitDestructiveActionPerformer.m" lineNumber:185 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetsByAssetCollection.allKeys.firstObject", v72, px_descriptionForAssertionMessage2}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitDestructiveActionPerformer.m" lineNumber:185 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetsByAssetCollection.allKeys.firstObject", v72}];
    }

LABEL_7:
    photoLibrary = [firstObject2 photoLibrary];
    v13 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

    exiting = [v13 exiting];

    hasSharedLibrary = [v13 hasSharedLibrary];
    if (exiting)
    {
      v16 = [(PXPhotoKitDestructiveActionPerformer *)self _assetsAllowedToExpunge:assets];
      v17 = [assets count];
      v87 = v16;
      if (v17 != [v16 count])
      {
        v18 = [assets count];
        v103 = 0;
        v104[0] = 0;
        v102 = 0;
        [PXPhotoKitDeletePhotosActionController assetTypeCountsForAssets:assets photosCount:v104 videosCount:&v103 othersCount:&v102];
        if (v104[0] == v18)
        {
          v19 = @"SHAREDLIBRARY_EXPUNGE_EXITING_TITLE_PHOTO";
          v20 = @"SHAREDLIBRARY_EXPUNGE_EXITING_MESSAGE_PHOTO";
        }

        else
        {
          if (v103 == v18)
          {
            v20 = @"SHAREDLIBRARY_EXPUNGE_EXITING_MESSAGE_VIDEO";
          }

          else
          {
            v20 = @"SHAREDLIBRARY_EXPUNGE_EXITING_MESSAGE_ITEM";
          }

          if (v103 == v18)
          {
            v19 = @"SHAREDLIBRARY_EXPUNGE_EXITING_TITLE_VIDEO";
          }

          else
          {
            v19 = @"SHAREDLIBRARY_EXPUNGE_EXITING_TITLE_ITEM";
          }
        }

        if (v18 >= 2)
        {
          v19 = [(__CFString *)v19 stringByAppendingString:@"S"];
          v20 = [(__CFString *)v20 stringByAppendingString:@"S"];
        }

        v26 = PLServicesSharedLibraryLocalizedFrameworkString();
        v85 = v20;
        v27 = PLServicesSharedLibraryLocalizedFrameworkString();
        v75 = *MEMORY[0x1E69BECE0];
        v81 = v27;
        v28 = PFLocalizedStringWithValidatedFormat();
        v29 = PLServicesSharedLibraryLocalizedFrameworkString();
        v83 = v26;
        v79 = v28;
        v30 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v26 message:v28 preferredStyle:{0, v75}];
        if ([v87 count])
        {
          v31 = v87;

          v77 = v30;
          v32 = v29;
          v33 = v13;
          v34 = v19;
          v35 = MEMORY[0x1E69DC648];
          v99[0] = MEMORY[0x1E69E9820];
          v99[1] = 3221225472;
          v99[2] = __66__PXPhotoKitDestructiveActionPerformer_performUserInteractionTask__block_invoke;
          v99[3] = &unk_1E7740CA8;
          v99[4] = self;
          v101 = destructivePhotosAction;
          assets = v31;
          v100 = assets;
          v36 = v35;
          v19 = v34;
          v13 = v33;
          v29 = v32;
          v30 = v77;
          v37 = [v36 actionWithTitle:v29 style:2 handler:v99];
          [v77 addAction:v37];

          v38 = MEMORY[0x1E69DC648];
          v39 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
          v98[0] = MEMORY[0x1E69E9820];
          v98[1] = 3221225472;
          v98[2] = __66__PXPhotoKitDestructiveActionPerformer_performUserInteractionTask__block_invoke_2;
          v98[3] = &unk_1E7749600;
          v98[4] = self;
          v40 = [v38 actionWithTitle:v39 style:1 handler:v98];
          [v77 addAction:v40];

          v41 = v100;
        }

        else
        {
          v42 = MEMORY[0x1E69DC648];
          v41 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __66__PXPhotoKitDestructiveActionPerformer_performUserInteractionTask__block_invoke_3;
          v97[3] = &unk_1E7749600;
          v97[4] = self;
          v43 = [v42 actionWithTitle:v41 style:0 handler:v97];
          [v30 addAction:v43];
        }

        if (![(PXActionPerformer *)self presentViewController:v30])
        {
          v44 = PLSharedLibraryGetLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1A3C1C000, v44, OS_LOG_TYPE_ERROR, "Failed to present shared library item removal warning.", buf, 2u);
          }

          [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
        }

LABEL_58:
        goto LABEL_59;
      }
    }

    else
    {
      if (!hasSharedLibrary)
      {
LABEL_19:

LABEL_20:
        goto LABEL_21;
      }

      v24 = [(PXPhotoKitDestructiveActionPerformer *)self _assetsAllowedToExpunge:assets];
      v25 = [assets count];
      v87 = v24;
      if (v25 != [v24 count])
      {
        v45 = [assets count];
        v103 = 0;
        v104[0] = 0;
        v102 = 0;
        [PXPhotoKitDeletePhotosActionController assetTypeCountsForAssets:assets photosCount:v104 videosCount:&v103 othersCount:&v102];
        if (v104[0] == v45)
        {
          v86 = @"SHAREDLIBRARY_EXPUNGE_UNOWNED_TITLE_PHOTO";
          v46 = @"SHAREDLIBRARY_EXPUNGE_UNOWNED_MESSAGE_PHOTO";
        }

        else
        {
          if (v103 == v45)
          {
            v46 = @"SHAREDLIBRARY_EXPUNGE_UNOWNED_MESSAGE_VIDEO";
          }

          else
          {
            v46 = @"SHAREDLIBRARY_EXPUNGE_UNOWNED_MESSAGE_ITEM";
          }

          v47 = @"SHAREDLIBRARY_EXPUNGE_UNOWNED_TITLE_ITEM";
          if (v103 == v45)
          {
            v47 = @"SHAREDLIBRARY_EXPUNGE_UNOWNED_TITLE_VIDEO";
          }

          v86 = v47;
        }

        if (v45 >= 2)
        {
          v86 = [(__CFString *)v86 stringByAppendingString:@"S"];
          v46 = [(__CFString *)v46 stringByAppendingString:@"S"];
        }

        v48 = PLServicesSharedLibraryLocalizedFrameworkString();
        v49 = PLServicesSharedLibraryLocalizedFrameworkString();
        v76 = *MEMORY[0x1E69BECE0];
        v82 = v49;
        v50 = PFLocalizedStringWithValidatedFormat();
        v51 = PLServicesSharedLibraryLocalizedFrameworkString();
        v84 = v48;
        v80 = v50;
        v52 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v48 message:v50 preferredStyle:{0, v76}];
        if ([v87 count])
        {
          v53 = v87;

          v78 = v52;
          v54 = v46;
          v55 = MEMORY[0x1E69DC648];
          v93[0] = MEMORY[0x1E69E9820];
          v93[1] = 3221225472;
          v93[2] = __66__PXPhotoKitDestructiveActionPerformer_performUserInteractionTask__block_invoke_291;
          v93[3] = &unk_1E7740CA8;
          v93[4] = self;
          v95 = destructivePhotosAction;
          assets = v53;
          v94 = assets;
          v56 = v55;
          v46 = v54;
          v52 = v78;
          v57 = [v56 actionWithTitle:v51 style:2 handler:v93];
          [v78 addAction:v57];

          v58 = MEMORY[0x1E69DC648];
          v59 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
          v92[0] = MEMORY[0x1E69E9820];
          v92[1] = 3221225472;
          v92[2] = __66__PXPhotoKitDestructiveActionPerformer_performUserInteractionTask__block_invoke_2_292;
          v92[3] = &unk_1E7749600;
          v92[4] = self;
          v60 = [v58 actionWithTitle:v59 style:1 handler:v92];
          [v78 addAction:v60];

          v61 = v94;
        }

        else
        {
          v62 = MEMORY[0x1E69DC648];
          v61 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
          v91[0] = MEMORY[0x1E69E9820];
          v91[1] = 3221225472;
          v91[2] = __66__PXPhotoKitDestructiveActionPerformer_performUserInteractionTask__block_invoke_3_293;
          v91[3] = &unk_1E7749600;
          v91[4] = self;
          v63 = [v62 actionWithTitle:v61 style:0 handler:v91];
          [v52 addAction:v63];
        }

        if (![(PXActionPerformer *)self presentViewController:v52])
        {
          v64 = PLSharedLibraryGetLog();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1A3C1C000, v64, OS_LOG_TYPE_ERROR, "Failed to present shared library item removal warning.", buf, 2u);
          }

          [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
        }

        goto LABEL_58;
      }
    }

    goto LABEL_19;
  }

  if (!destructivePhotosAction)
  {
    firstObject = [(PXAssetActionPerformer *)self selectionSnapshot];
    firstObject2 = [firstObject dataSource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dataSource = [firstObject dataSource];
      containerCollection = [dataSource containerCollection];
      px_isAllLibraryDuplicatesSmartAlbum = [containerCollection px_isAllLibraryDuplicatesSmartAlbum];

      if (px_isAllLibraryDuplicatesSmartAlbum && PXDeduplicationEntireDuplicatesGroupsAreSelected(firstObject))
      {
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __66__PXPhotoKitDestructiveActionPerformer_performUserInteractionTask__block_invoke_295;
        v88[3] = &unk_1E773A7C8;
        v88[4] = self;
        v90 = 0;
        assets = assets;
        v89 = assets;
        [(PXPhotoKitDestructiveActionPerformer *)self _presentAllDuplicatesDeletionAlertWithCompletion:v88];

LABEL_59:
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_22:
  [(PXPhotoKitDestructiveActionPerformer *)self _performAction:destructivePhotosAction onAssets:assets];
LABEL_23:
}

uint64_t __66__PXPhotoKitDestructiveActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _performAction:*(a1 + 48) onAssets:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 completeUserInteractionTaskWithSuccess:1 error:0];
}

uint64_t __66__PXPhotoKitDestructiveActionPerformer_performUserInteractionTask__block_invoke_295(void *a1, int a2)
{
  v3 = a1[4];
  if (a2)
  {
    return [v3 _performAction:a1[6] onAssets:a1[5]];
  }

  else
  {
    return [v3 completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

- (void)_performAction:(int64_t)action onAssets:(id)assets
{
  assetsCopy = assets;
  v7 = [PXPhotoKitDeletePhotosActionController alloc];
  undoManager = [(PXActionPerformer *)self undoManager];
  v9 = [(PXPhotoKitDeletePhotosActionController *)v7 initWithAction:action assets:assetsCopy undoManager:undoManager delegate:self];

  [(PXPhotoKitDeletePhotosActionController *)v9 setShouldSkipDeleteConfirmation:[(PXPhotoKitAssetActionPerformer *)self shouldSkipUserConfirmation]];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__PXPhotoKitDestructiveActionPerformer__performAction_onAssets___block_invoke;
  v15[3] = &unk_1E7749A28;
  v15[4] = self;
  v15[5] = v16;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__PXPhotoKitDestructiveActionPerformer__performAction_onAssets___block_invoke_2;
  v11[3] = &unk_1E773A7A0;
  v13 = v16;
  v11[4] = self;
  v10 = assetsCopy;
  v12 = v10;
  actionCopy = action;
  [(PXPhotoKitDeletePhotosActionController *)v9 performWithWillDeleteHandler:v15 completionHandler:v11];

  _Block_object_dispose(v16, 8);
}

uint64_t __64__PXPhotoKitDestructiveActionPerformer__performAction_onAssets___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result == 10)
  {
    [*(a1 + 32) instantlyExcludeAssetsFromDataSource];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = *(a1 + 32);

    return [v3 completeUserInteractionTaskWithSuccess:1 error:0];
  }

  return result;
}

uint64_t __64__PXPhotoKitDestructiveActionPerformer__performAction_onAssets___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) stopExcludingAssetsFromDataSource];
  }

  v4 = [*(a1 + 32) state];
  v5 = *(a1 + 32);
  if (v4 == 10)
  {
    result = [v5 completeUserInteractionTaskWithSuccess:a2 error:0];
  }

  else
  {
    result = [v5 state];
    if (result == 20)
    {
      result = [*(a1 + 32) completeBackgroundTaskWithSuccess:a2 error:0];
    }
  }

  if (a2)
  {
    result = [*(a1 + 40) count];
    if (result)
    {
      result = [*(a1 + 32) _logCompletionAnalyticsForAssets:*(a1 + 40) withAction:*(a1 + 56)];
      if (*(a1 + 56) <= 1uLL)
      {

        return [PXTipsAppDonation donateSignalForEvent:0];
      }
    }
  }

  return result;
}

- (void)_logCompletionAnalyticsForAssets:(id)assets withAction:(int64_t)action
{
  v54 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = assetsCopy;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        if ([v13 px_isUnsavedSyndicatedAsset])
        {
          v14 = v7;
        }

        else
        {
          v14 = v6;
        }

        [v14 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v10);
  }

  v15 = [v6 count];
  v16 = MEMORY[0x1E6991E20];
  v17 = MEMORY[0x1E6991E18];
  if (v15)
  {
    if (action > 5)
    {
      v18 = 0;
    }

    else
    {
      v18 = off_1E7738438[action];
    }

    v19 = v18;
    v20 = MEMORY[0x1E6991F28];
    v51[0] = *v16;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v51[1] = *v17;
    v52[0] = v22;
    v23 = [v6 copy];
    v52[1] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
    [v20 sendEvent:v19 withPayload:v24];
  }

  if ([v7 count])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v7;
    v25 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = v17;
      v28 = 0;
      v38 = *v16;
      v39 = *v41;
      v37 = *v27;
LABEL_19:
      v29 = 0;
      if (v28 <= 9)
      {
        v30 = 9;
      }

      else
      {
        v30 = v28;
      }

      while (1)
      {
        if (*v41 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v40 + 1) + v29);
        v32 = MEMORY[0x1E6991F28];
        v48[0] = v38;
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v48[1] = v37;
        v49[0] = v34;
        v49[1] = v31;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
        [v32 sendEvent:@"com.apple.photos.CPAnalytics.syndicationSuggestionRemoved" withPayload:v35];

        if (v30 == v28)
        {
          break;
        }

        ++v28;
        v29 += 8;
        if (!--v26)
        {
          v26 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
          if (v26)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }
  }
}

- (void)_presentAllDuplicatesDeletionAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PXLocalizedStringFromTable(@"DELETE_ALL_DUPLICATES_WARNING_TITLE", @"PhotosUICore");
  v6 = PXLocalizedStringFromTable(@"DELETE_ALL_DUPLICATES_WARNING_MESSAGE", @"PhotosUICore");
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__PXPhotoKitDestructiveActionPerformer__presentAllDuplicatesDeletionAlertWithCompletion___block_invoke;
  v14[3] = &unk_1E7740638;
  v15 = v5;
  v16 = v6;
  v8 = completionCopy;
  v17 = v8;
  v9 = v6;
  v10 = v5;
  v11 = [presentationEnvironment presentAlertWithConfigurationHandler:v14];

  if (!v11)
  {
    v12 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Failed to present all duplicates removal warning.", v13, 2u);
    }

    (*(v8 + 2))(v8, 0);
  }
}

void __89__PXPhotoKitDestructiveActionPerformer__presentAllDuplicatesDeletionAlertWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setMessage:*(a1 + 40)];
  [v4 setStyle:0];
  v5 = PXLocalizedStringFromTable(@"PXContinue", @"PhotosUICore");
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__PXPhotoKitDestructiveActionPerformer__presentAllDuplicatesDeletionAlertWithCompletion___block_invoke_2;
  v9[3] = &unk_1E774C250;
  v10 = *(a1 + 48);
  [v4 addActionWithTitle:v5 style:0 action:v9];

  v6 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__PXPhotoKitDestructiveActionPerformer__presentAllDuplicatesDeletionAlertWithCompletion___block_invoke_3;
  v7[3] = &unk_1E774C250;
  v8 = *(a1 + 48);
  [v4 addActionWithTitle:v6 style:0 action:v7];
}

- (id)_assetsAllowedToExpunge:(id)expunge
{
  v17 = *MEMORY[0x1E69E9840];
  expungeCopy = expunge;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(expungeCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = expungeCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 canPerformEditOperation:{101, v12}])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)getConfirmationMessage:(id *)message confirmationButtonTitle:(id *)title isDestructive:(BOOL *)destructive
{
  v9 = [PXPhotoKitDeletePhotosActionController alloc];
  destructivePhotosAction = [(PXPhotoKitDestructiveActionPerformer *)self destructivePhotosAction];
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  undoManager = [(PXActionPerformer *)self undoManager];
  v13 = [(PXPhotoKitDeletePhotosActionController *)v9 initWithAction:destructivePhotosAction assets:assets undoManager:undoManager delegate:self];

  [(PXPhotoKitDeletePhotosActionController *)v13 getConfirmationMessage:message destructiveButtonTitle:title cancelButtonTitle:0 isDestructiveBehavior:destructive];
}

- (int64_t)destructivePhotosAction
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitDestructiveActionPerformer.m" lineNumber:44 description:{@"Method %s is a responsibility of subclass %@", "-[PXPhotoKitDestructiveActionPerformer destructivePhotosAction]", v6}];

  abort();
}

@end