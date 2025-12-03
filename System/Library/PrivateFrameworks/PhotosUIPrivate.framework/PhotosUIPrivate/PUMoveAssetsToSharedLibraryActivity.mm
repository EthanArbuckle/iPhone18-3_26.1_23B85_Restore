@interface PUMoveAssetsToSharedLibraryActivity
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation PUMoveAssetsToSharedLibraryActivity

- (void)performActivity
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];

  if (!assets || ![assets count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUMoveAssetsToSharedLibraryActivity.m" lineNumber:71 description:{@"Expecting non-empty, non-zero assets in %@", v20}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PUMoveAssetsToSharedLibraryActivity_performActivity__block_invoke;
  aBlock[3] = &unk_1E7B80280;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __54__PUMoveAssetsToSharedLibraryActivity_performActivity__block_invoke_3;
  v26[3] = &unk_1E7B7E060;
  v26[4] = self;
  v7 = assets;
  v27 = v7;
  v29 = a2;
  v8 = v6;
  v28 = v8;
  v9 = _Block_copy(v26);
  if (PXSharedLibraryShouldDisplayMoveToSharedLibraryConfirmation())
  {
    array = [v7 array];
    v25 = 0;
    PXSharedLibraryGetMoveToSharedLibraryConfirmationTitleAndMessage();
    v11 = 0;

    v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v11 preferredStyle:0];
    v13 = MEMORY[0x1E69DC648];
    activityTitle = [(PUMoveAssetsToSharedLibraryActivity *)self activityTitle];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __54__PUMoveAssetsToSharedLibraryActivity_performActivity__block_invoke_217;
    v23[3] = &unk_1E7B80980;
    v24 = v9;
    v15 = [v13 actionWithTitle:activityTitle style:0 handler:v23];
    [v12 addAction:v15];

    v16 = MEMORY[0x1E69DC648];
    v17 = PXLocalizedString();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __54__PUMoveAssetsToSharedLibraryActivity_performActivity__block_invoke_2_221;
    v21[3] = &unk_1E7B80980;
    v22 = v8;
    v18 = [v16 actionWithTitle:v17 style:1 handler:v21];
    [v12 addAction:v18];

    [(UIViewController *)self->_presenterViewController px_presentOverTopmostPresentedViewController:v12 animated:1 completion:0];
  }

  else
  {
    v9[2](v9);
  }
}

void __54__PUMoveAssetsToSharedLibraryActivity_performActivity__block_invoke(uint64_t a1, int a2)
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
    v10[2] = __54__PUMoveAssetsToSharedLibraryActivity_performActivity__block_invoke_2;
    v10[3] = &unk_1E7B7E148;
    v10[4] = *(a1 + 32);
    v9 = [v7 actionWithTitle:v8 style:0 handler:v10];
    [v6 addAction:v9];

    [*(*(a1 + 32) + 232) px_presentOverTopmostPresentedViewController:v6 animated:1 completion:0];
  }
}

uint64_t __54__PUMoveAssetsToSharedLibraryActivity_performActivity__block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) itemSourceController];
  v3 = [v2 assets];
  v4 = [v3 count];
  v5 = [*(a1 + 40) count];

  if (v4 != v5)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Number of original assets changed in %@!", &v10, 0xCu);
    }
  }

  v7 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to move assets to shared library. Calling PXSharedLibraryMoveAssetsToSharedLibrary()", &v10, 2u);
  }

  return PXSharedLibraryMoveAssetsToSharedLibrary();
}

uint64_t __54__PUMoveAssetsToSharedLibraryActivity_performActivity__block_invoke_217(uint64_t a1)
{
  PXSharedLibrarySetDidConfirmMoveToSharedLibrary();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t __54__PUMoveAssetsToSharedLibraryActivity_performActivity__block_invoke_2_221(uint64_t a1)
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

  LOBYTE(itemSourceController2) = PXSharedLibraryCanMoveAssetsToSharedLibrary();
  return itemSourceController2;
}

- (id)activityTitle
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  firstObject = [assets firstObject];

  v5 = MEMORY[0x1E69C3A08];
  photoLibrary = [firstObject photoLibrary];
  v7 = [v5 sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

  [v7 hasPreview];
  v8 = PXLocalizedSharedLibraryString();

  return v8;
}

- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  objc_storeStrong(&self->_presenterViewController, controller);
  controllerCopy = controller;
  completionCopy = completion;
  v12.receiver = self;
  v12.super_class = PUMoveAssetsToSharedLibraryActivity;
  LOBYTE(animatedCopy) = [(PXActivity *)&v12 _presentActivityOnViewController:controllerCopy animated:animatedCopy completion:completionCopy];

  return animatedCopy;
}

@end