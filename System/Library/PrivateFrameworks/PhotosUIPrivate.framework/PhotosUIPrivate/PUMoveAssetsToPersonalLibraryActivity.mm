@interface PUMoveAssetsToPersonalLibraryActivity
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)_multiContributorConfirmationAlertControllerForAssets:(id)assets contributorName:(id)name completion:(id)completion;
- (void)performActivity;
@end

@implementation PUMoveAssetsToPersonalLibraryActivity

- (void)performActivity
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];

  if (!assets || ![assets count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUMoveAssetsToPersonalLibraryActivity.m" lineNumber:123 description:{@"Expecting non-empty, non-zero assets in %@", v22}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PUMoveAssetsToPersonalLibraryActivity_performActivity__block_invoke;
  aBlock[3] = &unk_1E7B80280;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __56__PUMoveAssetsToPersonalLibraryActivity_performActivity__block_invoke_3;
  v29[3] = &unk_1E7B7E060;
  v7 = assets;
  v30 = v7;
  selfCopy = self;
  v33 = a2;
  v8 = v6;
  v32 = v8;
  v9 = _Block_copy(v29);
  firstObject = [v7 firstObject];
  photoLibrary = [firstObject photoLibrary];

  v12 = [MEMORY[0x1E69C3A08] sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];
  [v12 hasPreview];
  if (PXSharedLibraryShouldDisplayMoveToPersonalLibraryConfirmation())
  {
    array = [v7 array];
    v28 = 0;
    PXSharedLibraryGetMoveToPersonalLibraryConfirmationTitleAndMessage();
    v23 = 0;

    v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v23 preferredStyle:0];
    v15 = MEMORY[0x1E69DC648];
    activityTitle = [(PUMoveAssetsToPersonalLibraryActivity *)self activityTitle];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __56__PUMoveAssetsToPersonalLibraryActivity_performActivity__block_invoke_271;
    v26[3] = &unk_1E7B80980;
    v27 = v9;
    v17 = [v15 actionWithTitle:activityTitle style:0 handler:v26];
    [v14 addAction:v17];

    v18 = MEMORY[0x1E69DC648];
    v19 = PXLocalizedString();
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __56__PUMoveAssetsToPersonalLibraryActivity_performActivity__block_invoke_2_272;
    v24[3] = &unk_1E7B80980;
    v25 = v8;
    v20 = [v18 actionWithTitle:v19 style:1 handler:v24];
    [v14 addAction:v20];

    [(UIViewController *)self->_presenterViewController px_presentOverTopmostPresentedViewController:v14 animated:1 completion:0];
  }

  else
  {
    v9[2](v9);
  }
}

void __56__PUMoveAssetsToPersonalLibraryActivity_performActivity__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 activityDidFinish:1];
  }

  else
  {
    v4 = PXLocalizedSharedLibraryString();
    v5 = PXLocalizedSharedLibraryString();
    v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v4 message:v5 preferredStyle:1];
    v7 = MEMORY[0x1E69DC648];
    v8 = PXLocalizedString();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__PUMoveAssetsToPersonalLibraryActivity_performActivity__block_invoke_2;
    v10[3] = &unk_1E7B7E148;
    v10[4] = *(a1 + 32);
    v9 = [v7 actionWithTitle:v8 style:0 handler:v10];
    [v6 addAction:v9];

    [*(*(a1 + 32) + 232) px_presentOverTopmostPresentedViewController:v6 animated:1 completion:0];
  }
}

void __56__PUMoveAssetsToPersonalLibraryActivity_performActivity__block_invoke_3(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  v3 = [*(a1 + 40) itemSourceController];
  v4 = [v3 assets];
  v5 = [v4 count];

  if (v5 != v2)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412290;
      v50 = v28;
      _os_log_error_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Number of original assets changed in %@!", buf, 0xCu);
    }
  }

  v7 = PXSharedLibraryFetchAssetsContributedByMeFromAssets();
  if (v2 != [v7 count])
  {
    v8 = PXLocalizedSharedLibraryString();
    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v8 preferredStyle:0];
    v16 = MEMORY[0x1E69DC648];
    v17 = PXLocalizedSharedLibraryString();
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __56__PUMoveAssetsToPersonalLibraryActivity_performActivity__block_invoke_267;
    v41[3] = &unk_1E7B7A8B8;
    v42 = v7;
    v43 = *(a1 + 48);
    v18 = [v16 actionWithTitle:v17 style:0 handler:v41];
    [v10 addAction:v18];

    v19 = MEMORY[0x1E69DC648];
    v20 = PXLocalizedString();
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __56__PUMoveAssetsToPersonalLibraryActivity_performActivity__block_invoke_268;
    v39[3] = &unk_1E7B80980;
    v40 = *(a1 + 48);
    v21 = [v19 actionWithTitle:v20 style:1 handler:v39];
    [v10 addAction:v21];

    [*(*(a1 + 40) + 232) px_presentOverTopmostPresentedViewController:v10 animated:1 completion:0];
    v11 = v42;
    goto LABEL_28;
  }

  v8 = [v7 firstObject];
  if (!v8)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = *(a1 + 56);
    v31 = *(a1 + 40);
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    [v29 handleFailureInMethod:v30 object:v31 file:@"PUMoveAssetsToPersonalLibraryActivity.m" lineNumber:148 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"myAssets.firstObject", v33}];
LABEL_31:

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = *(a1 + 56);
    v35 = *(a1 + 40);
    v36 = objc_opt_class();
    v33 = NSStringFromClass(v36);
    v37 = [v8 px_descriptionForAssertionMessage];
    [v29 handleFailureInMethod:v34 object:v35 file:@"PUMoveAssetsToPersonalLibraryActivity.m" lineNumber:148 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"myAssets.firstObject", v33, v37}];

    goto LABEL_31;
  }

LABEL_8:
  v9 = [v8 photoLibrary];
  v10 = [v9 librarySpecificFetchOptions];

  v11 = [MEMORY[0x1E6978AC0] fetchContributorsForAssets:v7 options:v10];
  v12 = MEMORY[0x1E695DFD8];
  v13 = [v11 fetchedObjects];
  v14 = [v12 setWithArray:v13];

  if ([v14 count] < 3)
  {
    if ([v14 count] == 2)
    {
      v47 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v22 = v14;
      v23 = [v22 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v23)
      {
        v38 = v8;
        v24 = *v45;
        while (2)
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v45 != v24)
            {
              objc_enumerationMutation(v22);
            }

            if (([*(*(&v44 + 1) + 8 * i) isCurrentUser] & 1) == 0)
            {
              v23 = PXSharedLibraryShortNameForParticipant();
              goto LABEL_25;
            }
          }

          v23 = [v22 countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }

LABEL_25:
        v8 = v38;
      }

      v27 = [*(a1 + 40) _multiContributorConfirmationAlertControllerForAssets:v7 contributorName:v23 completion:*(a1 + 48)];
      [*(*(a1 + 40) + 232) px_presentOverTopmostPresentedViewController:v27 animated:1 completion:0];
    }

    else
    {
      v26 = PLUIGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v26, OS_LOG_TYPE_INFO, "Attempting to move all selected assets to personal library. Calling PXSharedLibraryMoveAssetsToPersonalLibrary()", buf, 2u);
      }

      PXSharedLibraryMoveAssetsToPersonalLibrary();
    }
  }

  else
  {
    v15 = [*(a1 + 40) _multiContributorConfirmationAlertControllerForAssets:v7 contributorName:0 completion:*(a1 + 48)];
    [*(*(a1 + 40) + 232) px_presentOverTopmostPresentedViewController:v15 animated:1 completion:0];
  }

LABEL_28:
}

uint64_t __56__PUMoveAssetsToPersonalLibraryActivity_performActivity__block_invoke_271(uint64_t a1)
{
  PXSharedLibrarySetDidConfirmMoveToPersonalLibrary();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t __56__PUMoveAssetsToPersonalLibraryActivity_performActivity__block_invoke_2_272(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

uint64_t __56__PUMoveAssetsToPersonalLibraryActivity_performActivity__block_invoke_267()
{
  v0 = PLUIGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B36F3000, v0, OS_LOG_TYPE_INFO, "Attempting to move only user's assets to personal library. Calling PXSharedLibraryMoveAssetsToPersonalLibrary()", v2, 2u);
  }

  return PXSharedLibraryMoveAssetsToPersonalLibrary();
}

uint64_t __56__PUMoveAssetsToPersonalLibraryActivity_performActivity__block_invoke_268(uint64_t a1)
{
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_INFO, "Move to Personal Library canceled.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (id)_multiContributorConfirmationAlertControllerForAssets:(id)assets contributorName:(id)name completion:(id)completion
{
  assetsCopy = assets;
  nameCopy = name;
  completionCopy = completion;
  v12 = assetsCopy;
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = objc_opt_class();
    v36 = NSStringFromClass(v37);
    px_descriptionForAssertionMessage = [v12 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUMoveAssetsToPersonalLibraryActivity.m" lineNumber:67 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assets", v36, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUMoveAssetsToPersonalLibraryActivity.m" lineNumber:67 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assets", v36}];
  }

LABEL_3:
  fetchedObjects = [v12 fetchedObjects];
  v14 = [v12 count];
  v15 = &stru_1F2AC6818;
  if (v14 > 1)
  {
    v15 = @"s";
  }

  v16 = v15;
  v17 = [nameCopy length];
  v18 = [v12 count];
  if (v17)
  {
    v46 = 0;
    v47[0] = 0;
    v45 = 0;
    [MEMORY[0x1E69C37F8] assetTypeCountsForAssets:fetchedObjects photosCount:v47 videosCount:&v46 othersCount:&v45];
    if (v47[0] == v18)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibrary_MoveToPersonalLibrary_MC_ConfirmationMessage_For_Contributor_Photo%@", v16];
    }

    else if (v46 == v18)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibrary_MoveToPersonalLibrary_MC_ConfirmationMessage_For_Contributor_Video%@", v16];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibrary_MoveToPersonalLibrary_MC_ConfirmationMessage_For_Contributor_Item%@", v16];
    }
    v19 = ;
    v20 = PXLocalizedSharedLibraryString();
    v39 = nameCopy;
    v21 = PXLocalizedStringWithValidatedFormat();
  }

  else
  {
    v46 = 0;
    v47[0] = 0;
    v45 = 0;
    [MEMORY[0x1E69C37F8] assetTypeCountsForAssets:fetchedObjects photosCount:v47 videosCount:&v46 othersCount:&v45];
    if (v47[0] == v18)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibrary_MoveToPersonalLibrary_MC_ConfirmationMessage_Photo%@", v16];
    }

    else if (v46 == v18)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibrary_MoveToPersonalLibrary_MC_ConfirmationMessage_Video%@", v16];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PXSharedLibrary_MoveToPersonalLibrary_MC_ConfirmationMessage_Item%@", v16];
    }
    v19 = ;
    v21 = PXLocalizedSharedLibraryString();
  }

  v22 = nameCopy;
  v23 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v21 preferredStyle:{0, v39}];
  v24 = MEMORY[0x1E69DC648];
  v25 = PXLocalizedSharedLibraryString();
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __122__PUMoveAssetsToPersonalLibraryActivity__multiContributorConfirmationAlertControllerForAssets_contributorName_completion___block_invoke;
  v42[3] = &unk_1E7B7A8B8;
  v43 = v12;
  v26 = completionCopy;
  v44 = v26;
  v27 = v12;
  v28 = [v24 actionWithTitle:v25 style:0 handler:v42];
  [v23 addAction:v28];

  v29 = MEMORY[0x1E69DC648];
  v30 = PXLocalizedString();
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __122__PUMoveAssetsToPersonalLibraryActivity__multiContributorConfirmationAlertControllerForAssets_contributorName_completion___block_invoke_241;
  v40[3] = &unk_1E7B80980;
  v41 = v26;
  v31 = v26;
  v32 = [v29 actionWithTitle:v30 style:1 handler:v40];
  [v23 addAction:v32];

  return v23;
}

uint64_t __122__PUMoveAssetsToPersonalLibraryActivity__multiContributorConfirmationAlertControllerForAssets_contributorName_completion___block_invoke()
{
  v0 = PLUIGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B36F3000, v0, OS_LOG_TYPE_INFO, "Attempting to move assets to personal library. Calling PXSharedLibraryMoveAssetsToPersonalLibrary()", v2, 2u);
  }

  return PXSharedLibraryMoveAssetsToPersonalLibrary();
}

uint64_t __122__PUMoveAssetsToPersonalLibraryActivity__multiContributorConfirmationAlertControllerForAssets_contributorName_completion___block_invoke_241(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  isPreparingIndividualItems = [itemSourceController isPreparingIndividualItems];

  if (!isPreparingIndividualItems)
  {
    return 0;
  }

  itemSourceController2 = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController2 assets];

  LOBYTE(itemSourceController2) = PXSharedLibraryCanMoveAssetsToPersonalLibrary();
  return itemSourceController2;
}

- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  objc_storeStrong(&self->_presenterViewController, controller);
  controllerCopy = controller;
  completionCopy = completion;
  v12.receiver = self;
  v12.super_class = PUMoveAssetsToPersonalLibraryActivity;
  LOBYTE(animatedCopy) = [(PXActivity *)&v12 _presentActivityOnViewController:controllerCopy animated:animatedCopy completion:completionCopy];

  return animatedCopy;
}

@end