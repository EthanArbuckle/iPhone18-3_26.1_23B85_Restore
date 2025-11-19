@interface PUAssetSharingHelper
+ (void)_prepareAssets:(id)a3 forActivityType:(id)a4 window:(id)a5 completion:(id)a6;
+ (void)copyAssets:(id)a3 completionHandler:(id)a4;
+ (void)prepareAssets:(id)a3 forActivityType:(id)a4 completion:(id)a5;
- (PXAssetsSharingHelperDelegate)delegate;
- (void)_presentViewController:(id)a3;
- (void)copyAssets:(id)a3;
- (void)ensureLocalAssetsForCloudPhotoSharing:(id)a3 completion:(id)a4;
- (void)ensureLocalAssetsForRendering:(id)a3 completion:(id)a4;
- (void)ensureLocalAssetsForSyndicationSave:(id)a3 completion:(id)a4;
- (void)ensureRenderingForAssetsWithDeferredProcessingInCollection:(id)a3 completion:(id)a4;
@end

@implementation PUAssetSharingHelper

- (PXAssetsSharingHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)ensureRenderingForAssetsWithDeferredProcessingInCollection:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"deferredProcessingNeeded != 0"];
  [v8 setInternalPredicate:v9];

  v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v7 options:v8];

  if ([v10 count])
  {
    v11 = [v10 fetchedObjects];
    [(PUAssetSharingHelper *)self ensureLocalAssetsForRendering:v11 completion:v6];
  }

  else
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "PUAssetSharingHelper: No assets to render", v13, 2u);
    }

    if (v6)
    {
      v6[2](v6, 1);
    }
  }
}

- (void)ensureLocalAssetsForRendering:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUAssetSharingHelper *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(PUAssetSharingHelper *)self delegate];
    v11 = [v10 windowForProgressPresentationInAssetsSharingHelper:self];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69C3E40];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__PUAssetSharingHelper_ensureLocalAssetsForRendering_completion___block_invoke;
  v15[3] = &unk_1E7B7E4A8;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  [PUAssetSharingHelper _prepareAssets:v14 forActivityType:v12 window:v11 completion:v15];
}

void __65__PUAssetSharingHelper_ensureLocalAssetsForRendering_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Render: Will show Unable to render dialogue. Reported error: %@", buf, 0xCu);
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Rendering %ld assets:\n\n", objc_msgSend(*(a1 + 32), "count")];
    v9 = [PUSharingErrorPresentationController alloc];
    v15 = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v11 = [(PUSharingErrorPresentationController *)v9 initWithErrors:v10 forAssets:*(a1 + 32) fromSource:5 preparationType:0];

    [(PUErrorPresentationController *)v11 setRadarDescription:v8];
    [(PUErrorPresentationController *)v11 setRadarComponentID:@"428725" name:@"Photos Backend Storage" version:@"iOS"];
    v12 = [(PUErrorPresentationController *)v11 alertControllerWithCompletion:0];
    v13 = [*(a1 + 40) delegate];
    [v13 assetsSharingHelper:*(a1 + 40) presentViewController:v12];
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, v5 != 0);
  }
}

- (void)ensureLocalAssetsForSyndicationSave:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E69C3EC0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__PUAssetSharingHelper_ensureLocalAssetsForSyndicationSave_completion___block_invoke;
  v11[3] = &unk_1E7B7E4D0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [PUAssetSharingHelper prepareAssets:v10 forActivityType:v8 completion:v11];
}

void __71__PUAssetSharingHelper_ensureLocalAssetsForSyndicationSave_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Syndication Save: Will show Unable to share dialogue. Reported error: %{public}@", buf, 0xCu);
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Saving %ld syndicated assets:\n\n", objc_msgSend(*(a1 + 32), "count")];
    v9 = [PUSharingErrorPresentationController alloc];
    v15 = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v11 = [(PUSharingErrorPresentationController *)v9 initWithErrors:v10 forAssets:*(a1 + 32) fromSource:4 preparationType:0];

    [(PUErrorPresentationController *)v11 setRadarDescription:v8];
    [(PUErrorPresentationController *)v11 setRadarComponentID:@"512768" name:@"Photos Backend (New Bugs)" version:@"all"];
    v12 = [(PUErrorPresentationController *)v11 alertControllerWithCompletion:0];
    v13 = [*(a1 + 40) delegate];
    [v13 assetsSharingHelper:*(a1 + 40) presentViewController:v12];
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, v5 != 0);
  }
}

- (void)ensureLocalAssetsForCloudPhotoSharing:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E69C3CF8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PUAssetSharingHelper_ensureLocalAssetsForCloudPhotoSharing_completion___block_invoke;
  v11[3] = &unk_1E7B7E4A8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [PUAssetSharingHelper prepareAssets:v10 forActivityType:v8 completion:v11];
}

void __73__PUAssetSharingHelper_ensureLocalAssetsForCloudPhotoSharing_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Shared Albums: Will show Unable to share dialogue. Reported error: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E696AEC0];
    v9 = [*(a1 + 32) count];
    v10 = [v8 stringWithFormat:@"Sharing %ld assets to activity type %@ from within shared album:\n\n", v9, *MEMORY[0x1E69C3CF8]];
    v11 = [PUSharingErrorPresentationController alloc];
    v17 = v6;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v13 = [(PUSharingErrorPresentationController *)v11 initWithErrors:v12 forAssets:*(a1 + 32) fromSource:1 preparationType:0];

    [(PUErrorPresentationController *)v13 setRadarDescription:v10];
    [(PUErrorPresentationController *)v13 setRadarComponentID:@"512768" name:@"Photos Backend (New Bugs)" version:@"all"];
    v14 = [(PUErrorPresentationController *)v13 alertControllerWithCompletion:0];
    v15 = [*(a1 + 40) delegate];
    [v15 assetsSharingHelper:*(a1 + 40) presentViewController:v14];
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v5 != 0);
  }
}

- (void)copyAssets:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__PUAssetSharingHelper_copyAssets___block_invoke;
  v3[3] = &unk_1E7B80280;
  v3[4] = self;
  [PUAssetSharingHelper copyAssets:a3 completionHandler:v3];
}

void __35__PUAssetSharingHelper_copyAssets___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v9 = PULocalizedString(@"COPY_TO_PASTEBOARD_PREPARATION_ERROR_TITLE");
    v4 = PULocalizedString(@"COPY_TO_PASTEBOARD_PREPARATION_ERROR_MESSAGE");
    v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v4 preferredStyle:1];
    v6 = MEMORY[0x1E69DC648];
    v7 = PULocalizedString(@"OK");
    v8 = [v6 actionWithTitle:v7 style:0 handler:&__block_literal_global_84635];
    [v5 addAction:v8];

    [*(a1 + 32) _presentViewController:v5];
  }
}

- (void)_presentViewController:(id)a3
{
  v4 = a3;
  v5 = [(PUAssetSharingHelper *)self delegate];
  [v5 assetsSharingHelper:self presentViewController:v4];
}

+ (void)_prepareAssets:(id)a3 forActivityType:(id)a4 window:(id)a5 completion:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 count])
  {
    v13 = objc_alloc_init(PUActivityItemSourceController);
    v14 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v9];
    v15 = [PUActivityAssetItem itemsForAssets:v14];

    v16 = *MEMORY[0x1E69CDA90];
    if ([v10 isEqualToString:*MEMORY[0x1E69CDA90]] && PLIsLockdownMode())
    {
      v32 = v11;
      v17 = PLUIGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "Lockdown mode is enabled, excluding location and caption metadata by default.", buf, 2u);
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v31 = v15;
      v18 = v15;
      v19 = [v18 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v41;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v41 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v40 + 1) + 8 * i);
            [v23 setExcludeLocation:{1, v31}];
            [v23 setExcludeCaption:1];
          }

          v20 = [v18 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v20);
      }

      v15 = v31;
      v11 = v32;
    }

    [(PUActivityItemSourceController *)v13 setAssetItems:v15, v31];
    v24 = objc_alloc_init(MEMORY[0x1E69C3308]);
    v25 = v24;
    if (v11)
    {
      [v24 setWindow:v11];
    }

    if ([v10 isEqualToString:v16])
    {
      v26 = @"COPY_TO_PASTEBOARD_PREPARATION_TITLE";
    }

    else if ([v10 isEqualToString:*MEMORY[0x1E69C3CF8]])
    {
      v26 = @"POST_TO_SHARED_ALBUM_PREPARATION_TITLE";
    }

    else if ([v10 isEqualToString:*MEMORY[0x1E69C3EC0]])
    {
      v26 = @"SYNDICATION_SAVE_PREPARATION_TITLE";
    }

    else if ([v10 isEqualToString:*MEMORY[0x1E69C3E40]])
    {
      v26 = @"RENDER_PREPARATION_TITLE";
    }

    else
    {
      v26 = @"SHARING_PREPARATION_TITLE";
    }

    v27 = PULocalizedString(v26);
    [v25 setTitle:v27];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __73__PUAssetSharingHelper__prepareAssets_forActivityType_window_completion___block_invoke;
    v38[3] = &unk_1E7B7F9B0;
    v28 = v25;
    v39 = v28;
    [(PUActivityItemSourceController *)v13 setProgressHandler:v38];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __73__PUAssetSharingHelper__prepareAssets_forActivityType_window_completion___block_invoke_3;
    v36[3] = &unk_1E7B80DD0;
    v37 = v13;
    v29 = v13;
    [v28 setCancellationHandler:v36];
    [v28 showAnimated:1 allowDelay:1];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __73__PUAssetSharingHelper__prepareAssets_forActivityType_window_completion___block_invoke_4;
    v33[3] = &unk_1E7B7E520;
    v34 = v28;
    v35 = v12;
    v30 = v28;
    [(PUActivityItemSourceController *)v29 runExplicitly:1 withActivityType:v10 completionHandler:v33];
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 0, 0);
  }
}

void __73__PUAssetSharingHelper__prepareAssets_forActivityType_window_completion___block_invoke(uint64_t a1, double a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__PUAssetSharingHelper__prepareAssets_forActivityType_window_completion___block_invoke_2;
  v3[3] = &unk_1E7B7FF70;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __73__PUAssetSharingHelper__prepareAssets_forActivityType_window_completion___block_invoke_4(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PUAssetSharingHelper__prepareAssets_forActivityType_window_completion___block_invoke_5;
  block[3] = &unk_1E7B7E4F8;
  v13 = v8;
  v17 = a3;
  v14 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v7;
  v16 = v9;
  v10 = v7;
  v11 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __73__PUAssetSharingHelper__prepareAssets_forActivityType_window_completion___block_invoke_5(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 64) ^ 1;
  }

  [*(a1 + 40) hideAnimated:1 allowDelay:v2 & 1];
  if (*(a1 + 56))
  {
    v3 = [*(a1 + 32) firstObject];
    if (v2)
    {
      v4 = *(a1 + 48);
    }

    else
    {
      v4 = 0;
    }

    v5 = v3;
    (*(*(a1 + 56) + 16))(*(a1 + 56), v4);
  }
}

+ (void)prepareAssets:(id)a3 forActivityType:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [objc_opt_class() _prepareAssets:v9 forActivityType:v8 window:0 completion:v7];
}

+ (void)copyAssets:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = *MEMORY[0x1E69CDA90];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PUAssetSharingHelper_copyAssets_completionHandler___block_invoke;
  v8[3] = &unk_1E7B7E480;
  v9 = v5;
  v7 = v5;
  [PUAssetSharingHelper prepareAssets:a3 forActivityType:v6 completion:v8];
}

void __53__PUAssetSharingHelper_copyAssets_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v6 setItemProviders:v8];
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v8 != 0, v5);
  }
}

@end