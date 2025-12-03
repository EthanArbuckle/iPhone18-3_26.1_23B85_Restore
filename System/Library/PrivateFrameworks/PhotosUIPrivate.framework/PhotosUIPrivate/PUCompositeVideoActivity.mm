@interface PUCompositeVideoActivity
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityViewController;
- (void)_exportGeneratedVideo;
- (void)_finishWithSuccess:(BOOL)success cancelled:(BOOL)cancelled;
- (void)_sucessfullyFinishedSaving:(BOOL)saving error:(id)error;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareWithActivityItems:(id)items;
- (void)prepareWithViewController:(id)controller assets:(id)assets;
@end

@implementation PUCompositeVideoActivity

- (void)_finishWithSuccess:(BOOL)success cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  successCopy = success;
  [(PUCompositeVideoActivity *)self setCancelled:cancelled];
  [(PUCompositeVideoActivity *)self setGenerator:0];
  [(PUCompositeVideoActivity *)self setExportSession:0];
  [(PUCompositeVideoActivity *)self setPresenterViewController:0];
  [(UIActivity *)self activityDidFinish:successCopy];
  actionDelegate = [(PXActivity *)self actionDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    actionDelegate2 = [(PXActivity *)self actionDelegate];
    if (cancelledCopy)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    [actionDelegate2 activity:self didFinishWithSuccess:successCopy error:v10];
  }
}

- (void)_sucessfullyFinishedSaving:(BOOL)saving error:(id)error
{
  errorCopy = error;
  if (![(PUCompositeVideoActivity *)self isCancelled])
  {
    v6 = errorCopy;
    px_dispatch_on_main_queue();
  }
}

void __61__PUCompositeVideoActivity__sucessfullyFinishedSaving_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);

    [v2 _finishWithSuccess:1 cancelled:0];
  }

  else
  {
    v3 = PLShareSheetGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_ERROR, "Unable to generate video with error: %@", buf, 0xCu);
    }

    v5 = PULocalizedString(@"SHARING_SAVE_LIVE_PHOTO_VIDEO_ACTIVITY_ERROR_TITLE");
    v6 = [*(a1 + 40) localizedDescription];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = PULocalizedString(@"SHARING_SAVE_LIVE_PHOTO_VIDEO_ACTIVITY_ERROR_MESSAGE");
    }

    v9 = v8;

    v10 = PULocalizedString(@"OK");
    v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:v9 preferredStyle:1];
    objc_initWeak(buf, *(a1 + 32));
    v12 = MEMORY[0x1E69DC648];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__PUCompositeVideoActivity__sucessfullyFinishedSaving_error___block_invoke_224;
    v15[3] = &unk_1E7B7FC80;
    objc_copyWeak(&v16, buf);
    v13 = [v12 actionWithTitle:v10 style:0 handler:v15];
    [v11 addAction:v13];

    v14 = [*(a1 + 32) presenterViewController];
    [v14 px_presentOverTopmostPresentedViewController:v11 animated:1 completion:0];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void __61__PUCompositeVideoActivity__sucessfullyFinishedSaving_error___block_invoke_224(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishWithSuccess:0 cancelled:0];
}

- (void)_exportGeneratedVideo
{
  if (![(PUCompositeVideoActivity *)self isCancelled])
  {
    px_dispatch_on_main_queue();
  }
}

void __49__PUCompositeVideoActivity__exportGeneratedVideo__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) generator];
  v3 = [v2 exportSession];
  v4 = v3;
  if (v3)
  {
    [v3 setOutputFileType:*MEMORY[0x1E69874C0]];
    v5 = [MEMORY[0x1E695DFF8] px_tempDirectoryFileURLWithSubdirectory:@"com.apple.mobileslideshow.combined-video" fileExtension:@"mov"];
    [v4 setOutputURL:v5];

    v6 = PLShareSheetGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 outputURL];
      v8 = [v4 outputFileType];
      *buf = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Begin to export asynchronously to URL: %@ (file type: %@)", buf, 0x16u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__PUCompositeVideoActivity__exportGeneratedVideo__block_invoke_207;
    v14[3] = &unk_1E7B809F0;
    v9 = v4;
    v10 = *(a1 + 32);
    v15 = v9;
    v16 = v10;
    v17 = v2;
    [v9 exportAsynchronouslyWithCompletionHandler:v14];
    [*(a1 + 32) setExportSession:v9];

    v11 = v15;
  }

  else
  {
    v12 = PLShareSheetGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Unable to create export session.", buf, 2u);
    }

    v13 = *(a1 + 32);
    v11 = [v2 error];
    [v13 _sucessfullyFinishedSaving:0 error:v11];
  }
}

void __49__PUCompositeVideoActivity__exportGeneratedVideo__block_invoke_207(id *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([a1[4] status] == 3 && (objc_msgSend(a1[5], "isCancelled") & 1) == 0)
  {
    v7 = PLShareSheetGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Begin saving exported video to library", buf, 2u);
    }

    v8 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__PUCompositeVideoActivity__exportGeneratedVideo__block_invoke_209;
    v10[3] = &unk_1E7B80C38;
    v11 = a1[6];
    v12 = a1[4];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__PUCompositeVideoActivity__exportGeneratedVideo__block_invoke_2;
    v9[3] = &unk_1E7B80280;
    v9[4] = a1[5];
    [v8 performChanges:v10 completionHandler:v9];

    v6 = v11;
  }

  else
  {
    v2 = PLShareSheetGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [a1[4] error];
      v4 = [a1[4] status];
      *buf = 138412546;
      v14 = v3;
      v15 = 2048;
      v16 = v4;
      _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_ERROR, "Unable to export video with error: %@ (status %ld)", buf, 0x16u);
    }

    v5 = a1[5];
    v6 = [a1[4] error];
    [v5 _sucessfullyFinishedSaving:0 error:v6];
  }
}

void __49__PUCompositeVideoActivity__exportGeneratedVideo__block_invoke_209(uint64_t a1)
{
  v7 = [MEMORY[0x1E6978698] creationRequestForAsset];
  v2 = objc_alloc_init(MEMORY[0x1E69786E0]);
  [v2 setShouldMoveFile:1];
  v3 = [*(a1 + 32) assets];
  v4 = [v3 firstObject];
  v5 = [v4 creationDate];
  [v7 setCreationDate:v5];

  v6 = [*(a1 + 40) outputURL];
  [v7 addResourceWithType:2 fileURL:v6 options:v2];
}

void __49__PUCompositeVideoActivity__exportGeneratedVideo__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLShareSheetGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Unable to save exported video with error: %@", &v7, 0xCu);
    }
  }

  [*(a1 + 32) _sucessfullyFinishedSaving:a2 error:v5];
}

- (void)prepareWithViewController:(id)controller assets:(id)assets
{
  controllerCopy = controller;
  if (assets)
  {
    assetsCopy = assets;
    v7 = [[PUCompositeVideoGenerator alloc] initWithAssets:assetsCopy outputType:1 onlyAllowOverlappingAssets:0];

    [(PUCompositeVideoGenerator *)v7 registerChangeObserver:self context:generatorContext];
    [(PUCompositeVideoActivity *)self setGenerator:v7];
  }

  [(PUCompositeVideoActivity *)self setPresenterViewController:controllerCopy];
  generator = [(PUCompositeVideoActivity *)self generator];
  [generator start];
}

- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  [(PUCompositeVideoActivity *)self prepareWithViewController:controllerCopy assets:0];
  v11.receiver = self;
  v11.super_class = PUCompositeVideoActivity;
  LOBYTE(animatedCopy) = [(PXActivity *)&v11 _presentActivityOnViewController:controllerCopy animated:animatedCopy completion:completionCopy];

  return animatedCopy;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 1) != 0 && generatorContext == context)
  {
    generator = [(PUCompositeVideoActivity *)self generator];
    state = [generator state];

    if (state == 2)
    {

      [(PUCompositeVideoActivity *)self _exportGeneratedVideo];
    }
  }
}

- (void)prepareWithActivityItems:(id)items
{
  [(PUCompositeVideoActivity *)self setCancelled:0];
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  array = [assets array];

  v6 = [[PUCompositeVideoGenerator alloc] initWithAssets:array outputType:1 onlyAllowOverlappingAssets:0];
  [(PUCompositeVideoGenerator *)v6 registerChangeObserver:self context:generatorContext];
  [(PUCompositeVideoActivity *)self setGenerator:v6];
}

- (id)activityViewController
{
  progressController = [(PUCompositeVideoActivity *)self progressController];
  if (!progressController)
  {
    objc_initWeak(&location, self);
    v4 = PULocalizedString(@"SHARING_SAVE_LIVE_PHOTO_VIDEO_ACTIVITY_PROGRESS_ALERT_MESSAGE");
    v5 = MEMORY[0x1E69C3330];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __50__PUCompositeVideoActivity_activityViewController__block_invoke;
    v10 = &unk_1E7B80638;
    objc_copyWeak(&v11, &location);
    progressController = [v5 activityAlertControllerWithTitle:v4 cancelHandler:&v7];
    [(PUCompositeVideoActivity *)self setProgressController:progressController, v7, v8, v9, v10];
    objc_destroyWeak(&v11);

    objc_destroyWeak(&location);
  }

  return progressController;
}

void __50__PUCompositeVideoActivity_activityViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishWithSuccess:0 cancelled:1];
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

  LOBYTE(itemSourceController2) = [PUCompositeVideoActivity canPerformWithAssets:assets];
  return itemSourceController2;
}

uint64_t __49__PUCompositeVideoActivity_canPerformWithAssets___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 playbackStyle] != 3 || objc_msgSend(v2, "playbackVariation") != 0;
  v4 = v3 | [v2 needsSensitivityProtection];

  return v4 & 1;
}

@end