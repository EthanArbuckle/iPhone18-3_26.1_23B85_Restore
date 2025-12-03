@interface PUInternalGIFExportActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)_asset;
- (void)performActivity;
@end

@implementation PUInternalGIFExportActivity

- (void)performActivity
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  activityViewController = [itemSourceController activityViewController];

  itemSourceController2 = [(PXActivity *)self itemSourceController];
  assetItemSources = [itemSourceController2 assetItemSources];
  firstObject = [assetItemSources firstObject];

  activityType = [(PUInternalGIFExportActivity *)self activityType];
  v9 = [firstObject activityViewController:activityViewController itemForActivityType:activityType];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = v11;
  if (v11 && ((v13 = MEMORY[0x1E6982C40], [v11 pathExtension], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "typeWithFilenameExtension:", v14), v15 = objc_claimAutoreleasedReturnValue(), v14, !v15) || (v16 = objc_msgSend(v15, "conformsToType:", *MEMORY[0x1E6982DE8]), v15, v16)))
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = __Block_byref_object_copy__36055;
    v29[4] = __Block_byref_object_dispose__36056;
    v30 = 0;
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __46__PUInternalGIFExportActivity_performActivity__block_invoke;
    v26[3] = &unk_1E7B800C8;
    v27 = v12;
    v28 = v29;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __46__PUInternalGIFExportActivity_performActivity__block_invoke_2;
    v23[3] = &unk_1E7B781C8;
    v25 = v29;
    v23[4] = self;
    v24 = activityViewController;
    [px_deprecated_appPhotoLibrary performChanges:v26 completionHandler:v23];

    _Block_object_dispose(v29, 8);
  }

  else
  {
    v18 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"GIF Export Failed" message:@"Failed to get a valid GIF URL" preferredStyle:1];
    v19 = MEMORY[0x1E69DC648];
    v20 = PULocalizedString(@"OK");
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __46__PUInternalGIFExportActivity_performActivity__block_invoke_6;
    v22[3] = &unk_1E7B7E148;
    v22[4] = self;
    v21 = [v19 actionWithTitle:v20 style:0 handler:v22];
    [v18 addAction:v21];

    [activityViewController presentViewController:v18 animated:1 completion:0];
  }
}

void __46__PUInternalGIFExportActivity_performActivity__block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x1E6978698] creationRequestForAssetFromImageAtFileURL:*(a1 + 32)];
  v2 = [v6 placeholderForCreatedAsset];
  v3 = [v2 localIdentifier];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __46__PUInternalGIFExportActivity_performActivity__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = *(a1 + 40);
  v5 = v7;
  v6 = v4;
  px_dispatch_on_main_queue();
}

void __46__PUInternalGIFExportActivity_performActivity__block_invoke_3(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 1)
  {
    v2 = MEMORY[0x1E6978630];
    v15[0] = *(*(*(a1 + 56) + 8) + 40);
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v4 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v5 = [v4 librarySpecificFetchOptions];
    v6 = [v2 fetchAssetsWithLocalIdentifiers:v3 options:v5];
    v7 = [v6 firstObject];

    [*(a1 + 32) activityDidFinish:1];
    v14[5] = MEMORY[0x1E69E9820];
    v14[6] = 3221225472;
    v14[7] = __46__PUInternalGIFExportActivity_performActivity__block_invoke_4;
    v14[8] = &unk_1E7B80DD0;
    v14[9] = v7;
    v8 = v7;
    px_dispatch_on_main_queue_when_idle_after_delay();
  }

  else
  {
    v9 = MEMORY[0x1E69DC650];
    v10 = [*(a1 + 40) localizedDescription];
    v8 = [v9 alertControllerWithTitle:@"Failed to save GIF" message:v10 preferredStyle:1];

    v11 = MEMORY[0x1E69DC648];
    v12 = PULocalizedString(@"OK");
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__PUInternalGIFExportActivity_performActivity__block_invoke_5;
    v14[3] = &unk_1E7B7E148;
    v14[4] = *(a1 + 32);
    v13 = [v11 actionWithTitle:v12 style:0 handler:v14];
    [v8 addAction:v13];

    [*(a1 + 48) presentViewController:v8 animated:1 completion:0];
  }
}

void __46__PUInternalGIFExportActivity_performActivity__block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 px_navigateToOneUpShowingAsset:*(a1 + 32) completionHandler:0];
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  if ([mEMORY[0x1E69C3A18] showInternalGIFExport])
  {
    itemSourceController = [(PXActivity *)self itemSourceController];
    if ([itemSourceController isPreparingIndividualItems])
    {
      _asset = [(PUInternalGIFExportActivity *)self _asset];
      canPlayLoopingVideo = [_asset canPlayLoopingVideo];
    }

    else
    {
      canPlayLoopingVideo = 0;
    }
  }

  else
  {
    canPlayLoopingVideo = 0;
  }

  return canPlayLoopingVideo;
}

- (id)_asset
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];

  if ([assets count] == 1)
  {
    firstObject = [assets firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end