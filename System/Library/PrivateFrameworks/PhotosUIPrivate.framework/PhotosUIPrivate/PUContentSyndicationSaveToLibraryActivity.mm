@interface PUContentSyndicationSaveToLibraryActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (PXActivityItemSourceController)itemSourceController;
- (id)activityTitle;
- (id)activityViewController;
- (void)performActivity;
@end

@implementation PUContentSyndicationSaveToLibraryActivity

- (PXActivityItemSourceController)itemSourceController
{
  WeakRetained = objc_loadWeakRetained(&self->itemSourceController);

  return WeakRetained;
}

- (void)performActivity
{
  mEMORY[0x1E69C3408] = [MEMORY[0x1E69C3408] sharedInstance];
  preventActualSaveToLibraryBehavior = [mEMORY[0x1E69C3408] preventActualSaveToLibraryBehavior];

  if (preventActualSaveToLibraryBehavior)
  {

    [(UIActivity *)self activityDidFinish:0];
  }

  else
  {
    itemSourceController = [(PUContentSyndicationSaveToLibraryActivity *)self itemSourceController];
    assets = [itemSourceController assets];
    v7 = PXFilter();
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__PUContentSyndicationSaveToLibraryActivity_performActivity__block_invoke_2;
    v13[3] = &unk_1E7B80DD0;
    v14 = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__PUContentSyndicationSaveToLibraryActivity_performActivity__block_invoke_3;
    v10[3] = &unk_1E7B7FB70;
    v11 = v14;
    selfCopy = self;
    v9 = v14;
    [px_deprecated_appPhotoLibrary performChanges:v13 completionHandler:v10];
  }
}

void __60__PUContentSyndicationSaveToLibraryActivity_performActivity__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978698] creationRequestForAssetFromGuestAsset:{*(*(&v7 + 1) + 8 * v5++), v7}];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __60__PUContentSyndicationSaveToLibraryActivity_performActivity__block_invoke_3(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PUContentSyndicationSaveToLibraryActivity_performActivity__block_invoke_4;
  block[3] = &unk_1E7B805E8;
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __60__PUContentSyndicationSaveToLibraryActivity_performActivity__block_invoke_4(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v18 = *v20;
      v17 = *MEMORY[0x1E69C3F58];
      v6 = *MEMORY[0x1E6991E20];
      v7 = *MEMORY[0x1E6991E18];
LABEL_4:
      v8 = 0;
      if (v5 <= 9)
      {
        v9 = 9;
      }

      else
      {
        v9 = v5;
      }

      while (1)
      {
        if (*v20 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + v8);
        v11 = MEMORY[0x1E6991F28];
        v23[0] = v6;
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v23[1] = v7;
        v24[0] = v13;
        v24[1] = v10;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
        [v11 sendEvent:v17 withPayload:v14];

        if (v9 == v5)
        {
          break;
        }

        ++v5;
        v8 += 8;
        if (!--v4)
        {
          v4 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    LOBYTE(v2) = *(a1 + 48);
  }

  return [*(a1 + 40) activityDidFinish:v2 & 1];
}

- (id)activityViewController
{
  mEMORY[0x1E69C3408] = [MEMORY[0x1E69C3408] sharedInstance];
  preventActualSaveToLibraryBehavior = [mEMORY[0x1E69C3408] preventActualSaveToLibraryBehavior];

  if (preventActualSaveToLibraryBehavior)
  {
    v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Save to Library Prevented" message:@"Saving to Library is currently disabled via our internal settings (for debugging)." preferredStyle:1];
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69DC648];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __67__PUContentSyndicationSaveToLibraryActivity_activityViewController__block_invoke;
    v12 = &unk_1E7B7FC80;
    objc_copyWeak(&v13, &location);
    v7 = [v6 actionWithTitle:@"OK" style:0 handler:&v9];
    [v5 addAction:{v7, v9, v10, v11, v12}];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __67__PUContentSyndicationSaveToLibraryActivity_activityViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activityDidFinish:0];
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemSourceController = [(PUContentSyndicationSaveToLibraryActivity *)self itemSourceController];
  v4 = [itemSourceController unsavedSyndicatedAssetCount] != 0;

  return v4;
}

- (id)activityTitle
{
  itemSourceController = [(PUContentSyndicationSaveToLibraryActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  if ([assets count] == 1)
  {
    firstObject = [assets firstObject];
    mediaType = [firstObject mediaType];

    v6 = @"ITEM";
    if (mediaType == 1)
    {
      v6 = @"PHOTO";
    }

    if (mediaType == 2)
    {
      v6 = @"VIDEO";
    }

    v7 = v6;
    v8 = [@"SYNDICATION_SAVE_TO_LIBRARY_ACTIVITY_TITLE_" stringByAppendingString:v7];
    v9 = PULocalizedString(v8);
  }

  else
  {
    v7 = PXFilter();
    PXMediaTypeForAssets();
    [(__CFString *)v7 count];
    v8 = PXLocalizationKeyForMediaType();
    v10 = PXLocalizedString();
    v9 = PULocalizedStringWithValidatedFormat(v10, @"%lu");
  }

  return v9;
}

@end