@interface PUUIImageViewController
- (BOOL)_isPhotosPickerExtensionAvailable;
- (BOOL)disableVideoTrimMessage;
- (BOOL)doNotTranscode;
- (BOOL)force1XCroppedImage;
- (BOOL)forceNativeScreenScale;
- (BOOL)imagePickerAllowsEditing;
- (BOOL)isDisplayedInPhotoPicker;
- (BOOL)pu_wantsNavigationBarVisible;
- (BOOL)uiipc_useTelephonyUI;
- (BOOL)viewImageBeforeSelecting;
- (BOOL)wantsLegacyImageUI;
- (PUPhotoPicker)photoPicker;
- (PUPhotoPickerResizeTaskDescriptorViewModel)resizeTaskDescriptorViewModel;
- (PUUIImageViewController)initWithPhoto:(id)a3 imagePickerProperties:(id)a4 expectsLivePhoto:(BOOL)a5;
- (PUUIImageViewControllerCancellationDelegate)cancellationDelegate;
- (PUUIImageViewControllerFileResizingDelegate)fileResizingDelegate;
- (id)cancelButtonTitle;
- (id)chooseButtonTitle;
- (id)cropOverlayFileSizeMenuActions:(id)a3;
- (id)customBackgroundColor;
- (id)exportPreset;
- (id)maxZoomScaleOverride;
- (id)videoMaximumDuration;
- (id)videoQuality;
- (int)cropOverlayMode;
- (unint64_t)imagePickerSavingOptions;
- (void)_fetchAnimatedImageWithCompletion:(id)a3;
- (void)_fetchLivePhotoWithCompletion:(id)a3;
- (void)_fetchPreviewImageWithCompletion:(id)a3;
- (void)_fetchVideoWithCompletion:(id)a3;
- (void)_finishAutoloopDeliveryWithVideoURL:(id)a3 gifURL:(id)a4;
- (void)_generateGIFFromVideoURL:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (void)_handleAnimatedImagePreviewResult:(id)a3;
- (void)_handleAnimatedImageResult:(id)a3;
- (void)_handleAutoloopPreviewImageResult:(id)a3;
- (void)_handleAutoloopVideoResult:(id)a3;
- (void)_handleLivePhotoRequestResult:(id)a3 info:(id)a4;
- (void)_loadAnimatedImage;
- (void)_loadAutoloopVideo;
- (void)_loadLivePhoto;
- (void)cropOverlayWasCancelled:(id)a3;
- (void)cropOverlayWasOKed:(id)a3;
- (void)handleAutoloopSelected;
- (void)handleMediaSelectionUsingTile:(id)a3 managedAsset:(id)a4 args:(id)a5 includeEditing:(BOOL)a6;
- (void)handleVideoSelectionWithURL:(id)a3 args:(id)a4;
- (void)loadView;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performPhotoPickerSelection;
- (void)setIrisPlayer:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PUUIImageViewController

- (PUPhotoPickerResizeTaskDescriptorViewModel)resizeTaskDescriptorViewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_fileResizingDelegate);

  return WeakRetained;
}

- (PUUIImageViewControllerFileResizingDelegate)fileResizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cancellationDelegate);

  return WeakRetained;
}

- (PUUIImageViewControllerCancellationDelegate)cancellationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photoPicker);

  return WeakRetained;
}

- (PUPhotoPicker)photoPicker
{
  WeakRetained = objc_loadWeakRetained(&self->__imageManagerVideoRequestID);

  return WeakRetained;
}

- (BOOL)_isPhotosPickerExtensionAvailable
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = v2 != 0;

  return v3;
}

- (void)performPhotoPickerSelection
{
  v3 = [(PLUIImageViewController *)self cropOverlay];
  [(PUUIImageViewController *)self cropOverlayWasOKed:v3];
}

- (BOOL)pu_wantsNavigationBarVisible
{
  if ([(PUUIImageViewController *)self isDisplayedInPhotoPicker])
  {
    return ![(PLUIImageViewController *)self _displaysFullScreen];
  }

  v4.receiver = self;
  v4.super_class = PUUIImageViewController;
  return [(UIViewController *)&v4 pu_wantsNavigationBarVisible];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (PUUIImageViewControllerResizeTaskDescriptorViewModelObservationContext == a5)
  {
    v9 = [(PLUIImageViewController *)self cropOverlay:a3];
    v7 = [(PUUIImageViewController *)self resizeTaskDescriptorViewModel];
    v8 = [v7 localizedFileSizeDescription];
    [v9 setFileResizingTitle:v8];
  }
}

- (id)cropOverlayFileSizeMenuActions:(id)a3
{
  v4 = [(PUUIImageViewController *)self fileResizingDelegate];
  v5 = [v4 imageViewControllerFileSizeMenuActions:self];

  return v5;
}

- (int)cropOverlayMode
{
  if (*(&self->super + 1118))
  {
    return 7;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = PUUIImageViewController;
  return [(PLUIImageViewController *)&v5 cropOverlayMode];
}

- (BOOL)isDisplayedInPhotoPicker
{
  if ([(PUUIImageViewController *)self _isPhotosPickerExtensionAvailable])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = PUUIImageViewController;
  return [(PLUIImageViewController *)&v4 isDisplayedInPhotoPicker];
}

- (BOOL)uiipc_useTelephonyUI
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];

  v4 = [v3 objectForKey:*MEMORY[0x1E69DE998]];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)wantsLegacyImageUI
{
  if (*(&self->super + 1115) == 1)
  {
    return *(&self->super.super.super.super.isa + *MEMORY[0x1E69BE1E8]) & 1;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)imagePickerSavingOptions
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];

  v4 = [v3 objectForKey:*MEMORY[0x1E69DE9D8]];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (BOOL)imagePickerAllowsEditing
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];

  v4 = [v3 objectForKey:*MEMORY[0x1E69DDDD8]];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)maxZoomScaleOverride
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];
  v4 = [v3 objectForKeyedSubscript:@"_UIImagePickerControllerMaxZoomScaleOverride"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)customBackgroundColor
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];
  v4 = [v3 objectForKeyedSubscript:@"_UIImagePickerControllerCustomBackgroundColor"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)cancelButtonTitle
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];

  v4 = [v3 objectForKey:@"_UIImagePickerControllerCancelButtonTitle"];

  return v4;
}

- (id)chooseButtonTitle
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];

  v4 = [v3 objectForKey:*MEMORY[0x1E69DE910]];

  return v4;
}

- (BOOL)force1XCroppedImage
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];

  v4 = [v3 objectForKey:*MEMORY[0x1E69DE8B0]];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (BOOL)forceNativeScreenScale
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];

  v4 = [v3 objectForKey:*MEMORY[0x1E69DE930]];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (BOOL)disableVideoTrimMessage
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];

  v4 = [v3 objectForKey:*MEMORY[0x1E69DE920]];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (id)videoMaximumDuration
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];

  v4 = [v3 objectForKey:*MEMORY[0x1E69DDE28]];

  return v4;
}

- (BOOL)viewImageBeforeSelecting
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];

  v4 = [v3 objectForKey:*MEMORY[0x1E69DE9D0]];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (id)exportPreset
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];

  v4 = [v3 objectForKey:*MEMORY[0x1E69DE9C8]];

  return v4;
}

- (id)videoQuality
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];

  v4 = [v3 objectForKey:*MEMORY[0x1E69DDE30]];

  return v4;
}

- (BOOL)doNotTranscode
{
  v2 = [(PUUIImageViewController *)self photoPicker];
  v3 = [v2 properties];

  v4 = [v3 objectForKey:*MEMORY[0x1E69DE9B0]];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)_finishAutoloopDeliveryWithVideoURL:(id)a3 gifURL:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLPickerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(&self->super.super.super.super.isa + *MEMORY[0x1E69BE1F8]) uuid];
    *buf = 138412290;
    v18 = v9;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Calling back from review UI with selection for looping asset %@", buf, 0xCu);
  }

  if (v7)
  {
    v15 = *MEMORY[0x1E69DE8E0];
    v16 = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = PLPhotoPickerDictionaryFromVideo();
  objc_initWeak(buf, self);
  v12 = [(PUUIImageViewController *)self photoPicker];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PUUIImageViewController__finishAutoloopDeliveryWithVideoURL_gifURL___block_invoke;
  v13[3] = &unk_1E7B7F988;
  objc_copyWeak(&v14, buf);
  [v12 didSelectMediaWithInfoDictionary:v11 allowedHandler:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __70__PUUIImageViewController__finishAutoloopDeliveryWithVideoURL_gifURL___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _enableCropOverlay];
  }
}

- (void)handleAutoloopSelected
{
  v3 = [(PUUIImageViewController *)self photoPicker];
  v4 = [v3 convertAutoloopsToGIF];

  if (v4)
  {
    [(PLUIImageViewController *)self beginDisplayingProgress];
    v5 = *(&self->super.super.super.super.isa + *MEMORY[0x1E69BE200]);
    v6 = PLLocalizedFrameworkString();
    [v5 setLabelText:v6];

    v7 = [(PUUIImageViewController *)self _videoAssetURL];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__PUUIImageViewController_handleAutoloopSelected__block_invoke;
    v10[3] = &unk_1E7B7F9B0;
    v10[4] = self;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__PUUIImageViewController_handleAutoloopSelected__block_invoke_3;
    v9[3] = &unk_1E7B7F9D8;
    v9[4] = self;
    [(PUUIImageViewController *)self _generateGIFFromVideoURL:v7 progressHandler:v10 completionHandler:v9];
  }

  else
  {
    v8 = [(PUUIImageViewController *)self _videoAssetURL];
    [(PUUIImageViewController *)self _finishAutoloopDeliveryWithVideoURL:v8 gifURL:0];
  }
}

void __49__PUUIImageViewController_handleAutoloopSelected__block_invoke(uint64_t a1, double a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__PUUIImageViewController_handleAutoloopSelected__block_invoke_2;
  v2[3] = &unk_1E7B7FF70;
  v2[4] = *(a1 + 32);
  *&v2[5] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __49__PUUIImageViewController_handleAutoloopSelected__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PUUIImageViewController_handleAutoloopSelected__block_invoke_4;
  block[3] = &unk_1E7B809F0;
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __49__PUUIImageViewController_handleAutoloopSelected__block_invoke_4(void *a1, double a2)
{
  v11 = *MEMORY[0x1E69E9840];
  LODWORD(a2) = 1.0;
  [*(a1[4] + *MEMORY[0x1E69BE200]) setPercentComplete:a2];
  if (a1[5])
  {
    v3 = a1[4];
    v8 = [v3 _videoAssetURL];
    [v3 _finishAutoloopDeliveryWithVideoURL:? gifURL:?];
  }

  else
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[6];
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_ERROR, "Failed to generate GIF from autoloop video with error: %@", buf, 0xCu);
    }

    v6 = a1[4];
    v7 = [v6 _videoAssetURL];
    [v6 _finishAutoloopDeliveryWithVideoURL:v7 gifURL:0];
  }
}

uint64_t __49__PUUIImageViewController_handleAutoloopSelected__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v1 = v1;
  return [*(*(a1 + 32) + *MEMORY[0x1E69BE200]) setPercentComplete:v1];
}

- (void)handleVideoSelectionWithURL:(id)a3 args:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E69BE1F8];
  v9 = PLPhotoPickerDictionaryFromVideo();
  v10 = PLPickerGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(&self->super.super.super.super.isa + v8) uuid];
    *buf = 138412290;
    v16 = v11;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Calling back from review UI with selection for video asset %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v12 = [(PUUIImageViewController *)self photoPicker];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PUUIImageViewController_handleVideoSelectionWithURL_args___block_invoke;
  v13[3] = &unk_1E7B7F988;
  objc_copyWeak(&v14, buf);
  [v12 didSelectMediaWithInfoDictionary:v9 allowedHandler:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __60__PUUIImageViewController_handleVideoSelectionWithURL_args___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _enableCropOverlay];
  }
}

- (void)handleMediaSelectionUsingTile:(id)a3 managedAsset:(id)a4 args:(id)a5 includeEditing:(BOOL)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(PUUIImageViewController *)self photoPicker];
  v13 = [v12 properties];

  v14 = *MEMORY[0x1E69BE1F8];
  v15 = PLPhotoPickerDictionaryFromMedia();
  v16 = PLPickerGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(&self->super.super.super.super.isa + v14) uuid];
    *buf = 138412290;
    v22 = v17;
    _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Calling back from review UI with selection for asset %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v18 = [(PUUIImageViewController *)self photoPicker];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__PUUIImageViewController_handleMediaSelectionUsingTile_managedAsset_args_includeEditing___block_invoke;
  v19[3] = &unk_1E7B7F988;
  objc_copyWeak(&v20, buf);
  [v18 didSelectMediaWithInfoDictionary:v15 allowedHandler:v19];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __90__PUUIImageViewController_handleMediaSelectionUsingTile_managedAsset_args_includeEditing___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _enableCropOverlay];
  }
}

- (void)cropOverlayWasOKed:(id)a3
{
  v4 = a3;
  v5 = [(PUUIImageViewController *)self fileResizingDelegate];

  if (v5)
  {
    v6 = [(PUUIImageViewController *)self fileResizingDelegate];
    [v6 imageViewControllerDidConfirmSelection:self];
  }

  else
  {
    if (*(&self->super + 1113) != 1)
    {
      v8.receiver = self;
      v8.super_class = PUUIImageViewController;
      [(PLUIImageViewController *)&v8 cropOverlayWasOKed:v4];
      goto LABEL_10;
    }

    v7 = dispatch_group_create();
    v6 = v7;
    if (*(&self->super + 1117) == 1)
    {
      dispatch_group_enter(v7);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __46__PUUIImageViewController_cropOverlayWasOKed___block_invoke;
      v15[3] = &unk_1E7B80258;
      v15[4] = self;
      v16 = v6;
      [(PUUIImageViewController *)self _fetchVideoWithCompletion:v15];
    }

    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = __Block_byref_object_copy__91192;
    v13[4] = __Block_byref_object_dispose__91193;
    v14 = 0;
    if (*(&self->super + 1116) == 1)
    {
      dispatch_group_enter(v6);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __46__PUUIImageViewController_cropOverlayWasOKed___block_invoke_230;
      v10[3] = &unk_1E7B7F960;
      v12 = v13;
      v11 = v6;
      [(PUUIImageViewController *)self _fetchLivePhotoWithCompletion:v10];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__PUUIImageViewController_cropOverlayWasOKed___block_invoke_2;
    block[3] = &unk_1E7B800C8;
    block[4] = self;
    block[5] = v13;
    dispatch_group_notify(v6, MEMORY[0x1E69E96A0], block);
    _Block_object_dispose(v13, 8);
  }

LABEL_10:
}

void __46__PUUIImageViewController_cropOverlayWasOKed___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _setVideoAssetURL:a2];
  }

  else
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to load video with error: %@", &v7, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __46__PUUIImageViewController_cropOverlayWasOKed___block_invoke_230(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __46__PUUIImageViewController_cropOverlayWasOKed___block_invoke_2(uint64_t a1)
{
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v2 = [*(a1 + 32) _videoAssetURL];

  if (v2)
  {
    v3 = [*(a1 + 32) _videoAssetURL];
    [v5 setObject:v3 forKey:*MEMORY[0x1E69DE948]];
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    [v5 setObject:v4 forKey:*MEMORY[0x1E69DDDF8]];
  }

  [*(a1 + 32) handleMediaSelectionUsingTile:*(*(a1 + 32) + *MEMORY[0x1E69BE1F0]) managedAsset:*(*(a1 + 32) + *MEMORY[0x1E69BE1F8]) args:v5 includeEditing:0];
  [*(a1 + 32) _enableCropOverlayIfNecessary];
}

- (void)cropOverlayWasCancelled:(id)a3
{
  v4 = [(PUUIImageViewController *)self cancellationDelegate];

  if (v4)
  {
    v5 = [(PUUIImageViewController *)self cancellationDelegate];
    [v5 imageViewControllerDidCancel:self];
  }
}

- (void)_generateGIFFromVideoURL:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    v9 = MEMORY[0x1E696AC08];
    v10 = a3;
    v11 = [v9 defaultManager];
    v12 = [v11 tmpFileForVideoTranscodeToPhotoDataDirectory:0 withExtension:@"GIF"];

    v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
    v14 = [objc_alloc(MEMORY[0x1E69C06A8]) initWithVideoURL:v10];

    v15 = MEMORY[0x1E69C06A8];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __86__PUUIImageViewController__generateGIFFromVideoURL_progressHandler_completionHandler___block_invoke;
    v20[3] = &unk_1E7B7F910;
    v21 = v7;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __86__PUUIImageViewController__generateGIFFromVideoURL_progressHandler_completionHandler___block_invoke_2;
    v17[3] = &unk_1E7B7F938;
    v18 = v13;
    v19 = v8;
    v16 = v13;
    [v15 runExport:v14 toURL:v16 progress:v20 completion:v17];
  }
}

uint64_t __86__PUUIImageViewController__generateGIFFromVideoURL_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __86__PUUIImageViewController__generateGIFFromVideoURL_progressHandler_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, *(a1 + 32), 0);
  }

  else
  {
    return (*(v3 + 16))(v3, 0);
  }
}

- (void)_fetchAnimatedImageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v5 setVersion:2];
  [v5 setNetworkAccessAllowed:1];
  v6 = [MEMORY[0x1E6978860] defaultManager];
  v7 = *&self->_isIris;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PUUIImageViewController__fetchAnimatedImageWithCompletion___block_invoke;
  v10[3] = &unk_1E7B7F8E8;
  v11 = v4;
  v8 = v4;
  v9 = [v6 requestAnimatedImageForAsset:v7 options:v5 resultHandler:v10];

  [(PUUIImageViewController *)self _setAnimatedImageRequestID:v9];
}

void __61__PUUIImageViewController__fetchAnimatedImageWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v8)
    {
      (*(v6 + 16))(v6, v8, 0);
    }

    else
    {
      v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)_fetchLivePhotoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69788D8]);
  [v5 setDeliveryMode:1];
  [v5 setNetworkAccessAllowed:1];
  v6 = [MEMORY[0x1E6978860] defaultManager];
  v7 = *&self->_isIris;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PUUIImageViewController__fetchLivePhotoWithCompletion___block_invoke;
  v11[3] = &unk_1E7B7F8C0;
  v12 = v4;
  v8 = *MEMORY[0x1E6978E30];
  v9 = *(MEMORY[0x1E6978E30] + 8);
  v10 = v4;
  [v6 requestLivePhotoForAsset:v7 targetSize:0 contentMode:v5 options:v11 resultHandler:{v8, v9}];
}

uint64_t __57__PUUIImageViewController__fetchLivePhotoWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_fetchVideoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setVersion:0];
  [v5 setDeliveryMode:1];
  [v5 setNetworkAccessAllowed:1];
  v6 = [MEMORY[0x1E6978860] defaultManager];
  v7 = *&self->_isIris;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__PUUIImageViewController__fetchVideoWithCompletion___block_invoke;
  v10[3] = &unk_1E7B7F898;
  v11 = v4;
  v8 = v4;
  v9 = [v6 requestURLForVideo:v7 options:v5 resultHandler:v10];

  [(PUUIImageViewController *)self _setImageManagerVideoRequestID:v9];
}

void __53__PUUIImageViewController__fetchVideoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v8)
    {
      (*(v6 + 16))(v6, v8, 0);
    }

    else
    {
      v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)_fetchPreviewImageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E6978860];
  v6 = *&self->_isIris;
  v7 = [v5 defaultManager];
  v8 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v8 setVersion:0];
  [v8 setDeliveryMode:2];
  [v8 setResizeMode:0];
  [v8 setNetworkAccessAllowed:0];
  v9 = [(PUUIImageViewController *)self px_screen];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  [v9 scale];
  v15 = v11 * v14;
  v16 = v13 * v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__PUUIImageViewController__fetchPreviewImageWithCompletion___block_invoke;
  v18[3] = &unk_1E7B7F870;
  v19 = v4;
  v17 = v4;
  [v7 requestImageForAsset:v6 targetSize:0 contentMode:v8 options:v18 resultHandler:{v15, v16}];
}

void __60__PUUIImageViewController__fetchPreviewImageWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = *MEMORY[0x1E6978DF0];
    v6 = a2;
    v7 = [a3 objectForKeyedSubscript:v5];
    (*(v3 + 16))(v3, v6, v7);
  }
}

- (void)_handleLivePhotoRequestResult:(id)a3 info:(id)a4
{
  v5 = a3;
  v6 = [(PUUIImageViewController *)self _livePhotoView];
  [v6 setLivePhoto:v5];
}

- (void)_loadLivePhoto
{
  v3 = *&self->_isIris;
  v4 = [MEMORY[0x1E6978860] defaultManager];
  v5 = objc_alloc_init(MEMORY[0x1E69788D8]);
  [v5 setDeliveryMode:1];
  v6 = [(PUUIImageViewController *)self px_screen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  [v6 scale];
  v12 = v8 * v11;
  v13 = v10 * v11;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __41__PUUIImageViewController__loadLivePhoto__block_invoke;
  v14[3] = &unk_1E7B7F848;
  objc_copyWeak(&v15, &location);
  [v4 requestLivePhotoForAsset:v3 targetSize:0 contentMode:v5 options:v14 resultHandler:{v12, v13}];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __41__PUUIImageViewController__loadLivePhoto__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PUUIImageViewController__loadLivePhoto__block_invoke_2;
  block[3] = &unk_1E7B7F820;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __41__PUUIImageViewController__loadLivePhoto__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleLivePhotoRequestResult:*(a1 + 32) info:*(a1 + 40)];
}

- (void)_handleAutoloopVideoResult:(id)a3
{
  v4 = a3;
  [(PUUIImageViewController *)self _setVideoAssetURL:v4];
  v8 = [(PUUIImageViewController *)self _autoloopView];
  v5 = [MEMORY[0x1E69880B0] playerItemWithURL:v4];

  v6 = objc_alloc_init(MEMORY[0x1E69C1B20]);
  [v6 replaceCurrentItemWithPlayerItem:v5];
  [v6 setLoopingEnabled:1 withTemplateItem:v5];
  [v8 configureWithAVPlayer:v6];
  LODWORD(v7) = 1.0;
  [v6 setRate:v7];
}

- (void)_handleAutoloopPreviewImageResult:(id)a3
{
  v4 = a3;
  v5 = [(PUUIImageViewController *)self _autoloopView];
  [v5 setPlaceholderImage:v4];
}

- (void)_loadAutoloopVideo
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PUUIImageViewController__loadAutoloopVideo__block_invoke;
  v5[3] = &unk_1E7B7F7A8;
  objc_copyWeak(&v6, &location);
  [(PUUIImageViewController *)self _fetchPreviewImageWithCompletion:v5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__PUUIImageViewController__loadAutoloopVideo__block_invoke_211;
  v3[3] = &unk_1E7B7F7F8;
  objc_copyWeak(&v4, &location);
  [(PUUIImageViewController *)self _fetchVideoWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __45__PUUIImageViewController__loadAutoloopVideo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handleAutoloopPreviewImageResult:v5];
  }

  else
  {
    WeakRetained = PLUIGetLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1B36F3000, WeakRetained, OS_LOG_TYPE_ERROR, "Failed to load preview image for autoloop with error: %@", &v8, 0xCu);
    }
  }
}

void __45__PUUIImageViewController__loadAutoloopVideo__block_invoke_211(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__PUUIImageViewController__loadAutoloopVideo__block_invoke_2;
    v8[3] = &unk_1E7B80610;
    objc_copyWeak(&v10, (a1 + 32));
    v9 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v8);

    objc_destroyWeak(&v10);
  }

  else
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Failed to load autoloop video with error: %@", buf, 0xCu);
    }
  }
}

void __45__PUUIImageViewController__loadAutoloopVideo__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAutoloopVideoResult:*(a1 + 32)];
}

- (void)_handleAnimatedImageResult:(id)a3
{
  v4 = a3;
  [(PUUIImageViewController *)self _setAnimatedImageRequestID:0];
  v6 = [(PUUIImageViewController *)self _animatedImageView];
  v5 = [v4 pf_animatedImage];

  [v6 setImage:v5];
  [v6 setPlaying:1];
}

- (void)_handleAnimatedImagePreviewResult:(id)a3
{
  v4 = a3;
  v6 = [(PUUIImageViewController *)self _animatedImageView];
  v5 = [v6 placeholderImageView];
  [v5 setImage:v4];
}

- (void)_loadAnimatedImage
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PUUIImageViewController__loadAnimatedImage__block_invoke;
  v5[3] = &unk_1E7B7F7A8;
  objc_copyWeak(&v6, &location);
  [(PUUIImageViewController *)self _fetchPreviewImageWithCompletion:v5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__PUUIImageViewController__loadAnimatedImage__block_invoke_208;
  v3[3] = &unk_1E7B7F7D0;
  objc_copyWeak(&v4, &location);
  [(PUUIImageViewController *)self _fetchAnimatedImageWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __45__PUUIImageViewController__loadAnimatedImage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handleAnimatedImagePreviewResult:v5];
  }

  else
  {
    WeakRetained = PLUIGetLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1B36F3000, WeakRetained, OS_LOG_TYPE_ERROR, "Failed to load preview image for animated image with error: %@", &v8, 0xCu);
    }
  }
}

void __45__PUUIImageViewController__loadAnimatedImage__block_invoke_208(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__PUUIImageViewController__loadAnimatedImage__block_invoke_2;
    v8[3] = &unk_1E7B80610;
    objc_copyWeak(&v10, (a1 + 32));
    v9 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v8);

    objc_destroyWeak(&v10);
  }

  else
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Failed to load animated image with error: %@", buf, 0xCu);
    }
  }
}

void __45__PUUIImageViewController__loadAnimatedImage__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAnimatedImageResult:*(a1 + 32)];
}

- (void)viewDidLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = PUUIImageViewController;
  [(PUUIImageViewController *)&v17 viewDidLayoutSubviews];
  v3 = [(PUUIImageViewController *)self view];
  [v3 bounds];
  v8 = PURectWithAspectRatioFittingRect([*&self->_isIris pixelWidth] / objc_msgSend(*&self->_isIris, "pixelHeight"), v4, v5, v6, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(PUUIImageViewController *)self _livePhotoView];
  [v15 setFrame:{v8, v10, v12, v14}];
  v16 = [(PUUIImageViewController *)self _autoloopView];
  [v16 setFrame:{v8, v10, v12, v14}];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PUUIImageViewController;
  [(PLUIImageViewController *)&v5 viewDidAppear:a3];
  v4 = [(PUUIImageViewController *)self photoPicker];
  [v4 didDisplayPhotoPickerPreview];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PUUIImageViewController;
  [(PLUIImageViewController *)&v6 viewWillDisappear:a3];
  if (LODWORD(self->_asset))
  {
    v4 = [MEMORY[0x1E6978860] defaultManager];
    [v4 cancelImageRequest:LODWORD(self->_asset)];
  }

  if (HIDWORD(self->_asset))
  {
    v5 = [MEMORY[0x1E6978860] defaultManager];
    [v5 cancelImageRequest:HIDWORD(self->_asset)];
  }
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PUUIImageViewController;
  [(PUUIImageViewController *)&v9 viewDidLoad];
  v3 = [(PUUIImageViewController *)self resizeTaskDescriptorViewModel];
  v4 = v3;
  if (*(&self->super + 1118) == 1 && v3 != 0)
  {
    v6 = [(PLUIImageViewController *)self cropOverlay];
    [v6 setFileResizingHidden:0];

    v7 = [(PLUIImageViewController *)self cropOverlay];
    v8 = [v4 localizedFileSizeDescription];
    [v7 setFileResizingTitle:v8];

    [v4 registerChangeObserver:self context:PUUIImageViewControllerResizeTaskDescriptorViewModelObservationContext];
  }
}

- (void)setIrisPlayer:(id)a3
{
  v5 = a3;
  if (self->_resizeTaskDescriptorViewModel != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_resizeTaskDescriptorViewModel, a3);
    v6 = [(PUPhotoPickerResizeTaskDescriptorViewModel *)self->_resizeTaskDescriptorViewModel player];
    v7 = [(PUUIImageViewController *)self _livePhotoView];
    [v7 setPlayer:v6];

    v5 = v8;
  }
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = PUUIImageViewController;
  [(PLUIImageViewController *)&v9 loadView];
  if (*(&self->super + 1113) == 1)
  {
    v3 = [(PUUIImageViewController *)self view];
    v4 = objc_alloc_init(MEMORY[0x1E69790D8]);
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(PUVideoPlayerView *)v4 setBackgroundColor:v5];

    [(PUVideoPlayerView *)v4 setAutoresizingMask:18];
    [v3 bounds];
    [(PUVideoPlayerView *)v4 setFrame:?];
    [(PUVideoPlayerView *)v4 setContentMode:1];
    [(PUVideoPlayerView *)v4 setClipsToBounds:1];
    [v3 insertSubview:v4 atIndex:1];
    [(PUUIImageViewController *)self _setLivePhotoView:v4];
    [(PUUIImageViewController *)self _setImageManagerVideoRequestID:0];
    [(PUUIImageViewController *)self _loadLivePhoto];
LABEL_5:

    return;
  }

  if (*(&self->super + 1114) == 1)
  {
    v3 = [(PUUIImageViewController *)self view];
    v4 = objc_alloc_init(PUVideoPlayerView);
    [(PUVideoPlayerView *)v4 setAutoresizingMask:18];
    [v3 bounds];
    [(PUVideoPlayerView *)v4 setFrame:?];
    [(PUVideoPlayerView *)v4 setDelegate:self];
    [v3 insertSubview:v4 atIndex:1];
    [(PUUIImageViewController *)self _setAutoloopView:v4];
    [(PUUIImageViewController *)self _setImageManagerVideoRequestID:0];
    [(PUUIImageViewController *)self _loadAutoloopVideo];
    goto LABEL_5;
  }

  if (*(&self->super + 1115) == 1 && (*(&self->super.super.super.super.isa + *MEMORY[0x1E69BE1E8]) & 1) == 0)
  {
    v3 = [(PUUIImageViewController *)self view];
    v6 = objc_alloc(MEMORY[0x1E69C1AE0]);
    [v3 bounds];
    v4 = [v6 initWithFrame:?];
    [(PUVideoPlayerView *)v4 setAutoresizingMask:18];
    [(PUVideoPlayerView *)v4 setContentMode:1];
    [(PUVideoPlayerView *)v4 setClipsToBounds:1];
    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v8 setContentMode:1];
    [(PUVideoPlayerView *)v4 setPlaceholderImageView:v8];
    [v3 insertSubview:v4 atIndex:0];
    [(PUUIImageViewController *)self _setAnimatedImageView:v4];
    [(PUUIImageViewController *)self _setAnimatedImageRequestID:0];
    [(PUUIImageViewController *)self _loadAnimatedImage];

    goto LABEL_5;
  }
}

- (PUUIImageViewController)initWithPhoto:(id)a3 imagePickerProperties:(id)a4 expectsLivePhoto:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = PUUIImageViewController;
  v10 = [(PLUIImageViewController *)&v20 initWithPhoto:v8];
  if (v10)
  {
    v11 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6978CB8], *MEMORY[0x1E6978C18], 0}];
    v13 = [v8 pl_PHAssetWithPropertySets:v12 photoLibrary:v11];
    v14 = *(v10 + 140);
    *(v10 + 140) = v13;

    *(v10 + 1116) = a5;
    v15 = [v9 objectForKey:*MEMORY[0x1E69DE8C0]];
    *(v10 + 1117) = [v15 BOOLValue];

    v16 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69DE980]];
    *(v10 + 1118) = [v16 BOOLValue];

    *(v10 + 1114) = [*(v10 + 140) canPlayLoopingVideo];
    if (((*(v10 + 1116) & 1) != 0 || *(v10 + 1117) == 1) && [*(v10 + 140) canPlayPhotoIris])
    {
      v17 = *(v10 + 1114) ^ 1;
    }

    else
    {
      v17 = 0;
    }

    *(v10 + 1113) = v17 & 1;
    *(v10 + 1115) = [*(v10 + 140) playbackStyle] == 2;
    v18 = [v10 localizedTitle];
    [v10 setTitle:v18];
  }

  return v10;
}

@end