@interface PLUIImageViewController
- (BOOL)disableVideoTrimMessage;
- (BOOL)doNotTranscode;
- (BOOL)force1XCroppedImage;
- (BOOL)forceNativeScreenScale;
- (BOOL)imagePickerAllowsEditing;
- (BOOL)viewImageBeforeSelecting;
- (CGRect)_viewFrame;
- (CGRect)previewFrame;
- (PLUIImageViewController)initWithImage:(CGImage *)a3 cropRect:(CGRect)a4;
- (PLUIImageViewController)initWithImageData:(id)a3 cropRect:(CGRect)a4;
- (PLUIImageViewController)initWithPhoto:(id)a3;
- (PLUIImageViewController)initWithUIImage:(id)a3 cropRect:(CGRect)a4;
- (PLUIImageViewController)initWithVideoURL:(id)a3;
- (double)videoViewScrubberYOrigin:(id)a3 forOrientation:(int64_t)a4;
- (id)cancelButtonTitle;
- (id)chooseButtonTitle;
- (id)customBackgroundColor;
- (id)exportPreset;
- (id)maxZoomScaleOverride;
- (id)videoMaximumDuration;
- (id)videoQuality;
- (int)cropOverlayMode;
- (unint64_t)imagePickerSavingOptions;
- (unsigned)imageFormat;
- (void)_editabilityChanged:(id)a3;
- (void)_enableCropOverlayIfNecessary;
- (void)_handleVideoSelected;
- (void)_updateGestureSettings;
- (void)attachScrubberPalette;
- (void)beginDisplayingProgress;
- (void)cropOverlay:(id)a3 didFinishSaving:(id)a4;
- (void)cropOverlayWasCancelled:(id)a3;
- (void)cropOverlayWasOKed:(id)a3;
- (void)dealloc;
- (void)handleMediaSelectionUsingTile:(id)a3 managedAsset:(id)a4 args:(id)a5 includeEditing:(BOOL)a6;
- (void)handleVideoSelectionWithURL:(id)a3 args:(id)a4;
- (void)loadView;
- (void)photoTileViewControllerCancelImageRequests:(id)a3;
- (void)photoTileViewControllerRequestsFullScreenImage:(id)a3;
- (void)setAllowsEditing:(BOOL)a3;
- (void)setupNavigationItem;
- (void)traitCollectionDidChange:(id)a3;
- (void)videoRemakerDidEndRemaking:(id)a3 temporaryPath:(id)a4;
- (void)videoView:(id)a3 scrubberWasCreated:(id)a4 slalomRegionEditor:(id)a5;
- (void)videoViewIsReadyToBeginPlayback:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PLUIImageViewController

- (unint64_t)imagePickerSavingOptions
{
  v2 = [(UIViewController *)self uiipc_imagePickerController];

  return [v2 _imagePickerSavingOptions];
}

- (BOOL)imagePickerAllowsEditing
{
  v2 = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = [v2 objectForKey:*MEMORY[0x277D76A40]];

  return [v3 BOOLValue];
}

- (id)maxZoomScaleOverride
{
  v2 = [-[UIViewController uiipc_imagePickerOptions](self "uiipc_imagePickerOptions")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)customBackgroundColor
{
  v2 = [-[UIViewController uiipc_imagePickerOptions](self "uiipc_imagePickerOptions")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)cancelButtonTitle
{
  v2 = [(UIViewController *)self uiipc_imagePickerOptions];

  return [v2 objectForKey:@"_UIImagePickerControllerCancelButtonTitle"];
}

- (id)chooseButtonTitle
{
  v2 = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = *MEMORY[0x277D77440];

  return [v2 objectForKey:v3];
}

- (BOOL)force1XCroppedImage
{
  v2 = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = [v2 objectForKey:*MEMORY[0x277D77430]];

  return [v3 BOOLValue];
}

- (BOOL)forceNativeScreenScale
{
  v2 = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = [v2 objectForKey:*MEMORY[0x277D77458]];

  return [v3 BOOLValue];
}

- (BOOL)disableVideoTrimMessage
{
  v2 = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = [v2 objectForKey:*MEMORY[0x277D77448]];

  return [v3 BOOLValue];
}

- (id)videoMaximumDuration
{
  v2 = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = *MEMORY[0x277D76A98];

  return [v2 objectForKey:v3];
}

- (BOOL)viewImageBeforeSelecting
{
  v2 = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = [v2 objectForKey:*MEMORY[0x277D774B8]];

  return [v3 BOOLValue];
}

- (id)exportPreset
{
  v2 = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = *MEMORY[0x277D774B0];

  return [v2 objectForKey:v3];
}

- (id)videoQuality
{
  v2 = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = *MEMORY[0x277D76AA0];

  return [v2 objectForKey:v3];
}

- (BOOL)doNotTranscode
{
  v2 = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = [v2 objectForKey:*MEMORY[0x277D77498]];

  return [v3 BOOLValue];
}

- (void)handleVideoSelectionWithURL:(id)a3 args:(id)a4
{
  v7 = [(UIViewController *)self uiipc_imagePickerController];
  if (v7)
  {
    photo = self->_photo;

    PLNotifyImagePickerOfVideoAvailability(v7, a3, photo, a4);
  }

  else
  {

    [(PLUIImageViewController *)self didChooseVideoAtURL:a3 options:a4];
  }
}

- (void)handleMediaSelectionUsingTile:(id)a3 managedAsset:(id)a4 args:(id)a5 includeEditing:(BOOL)a6
{
  v6 = a6;
  v10 = [(UIViewController *)self uiipc_imagePickerController];

  PLNotifyImagePickerOfMediaAvailability(v10, a3, a4, a5, v6);
}

- (void)photoTileViewControllerCancelImageRequests:(id)a3
{
  if ([a3 inflightFullSizeImageRequestID])
  {
    [objc_msgSend(MEMORY[0x277CD9898] "defaultManager")];

    [a3 setInflightFullSizeImageRequestID:0];
  }
}

- (void)photoTileViewControllerRequestsFullScreenImage:(id)a3
{
  [(PLUIImageViewController *)self photoTileViewControllerCancelImageRequests:?];
  v4 = [a3 photo];
  v5 = objc_alloc_init(MEMORY[0x277CD98A0]);
  [v5 setDeliveryMode:1];
  v6 = [MEMORY[0x277CD9898] defaultManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__PLUIImageViewController_photoTileViewControllerRequestsFullScreenImage___block_invoke;
  v7[3] = &unk_2782A1F30;
  v7[4] = a3;
  [a3 setInflightFullSizeImageRequestID:{objc_msgSend(v6, "requestImageForAsset:targetSize:contentMode:options:resultHandler:", v4, 0, v5, v7, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8))}];
}

uint64_t __74__PLUIImageViewController_photoTileViewControllerRequestsFullScreenImage___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) setFullSizeImage:a2];
  }

  return result;
}

- (unsigned)imageFormat
{
  v2 = [objc_msgSend(MEMORY[0x277D3B228] "defaultFormatChooser")];

  return [v2 formatID];
}

- (void)videoRemakerDidEndRemaking:(id)a3 temporaryPath:(id)a4
{
  *(self + 1112) &= ~0x10u;
  [*MEMORY[0x277D76620] endIgnoringInteractionEvents];
  if (a4)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:a4 isDirectory:0];
  }

  else
  {
    v6 = 0;
  }

  [(PLUIImageViewController *)self handleVideoSelectionWithURL:v6 args:0];

  self->_remaker = 0;

  [(PLUIImageViewController *)self _enableCropOverlayIfNecessary];
}

- (void)videoViewIsReadyToBeginPlayback:(id)a3
{
  v5 = [(PLUIImageViewController *)self videoMaximumDuration];
  [a3 duration];
  v7 = v6;
  v8 = [(PLUIImageViewController *)self disableVideoTrimMessage];
  if (*(self + 1112))
  {
    v9 = 0;
  }

  else
  {
    v9 = ![(PLUIImageViewController *)self viewImageBeforeSelecting];
  }

  [(PLCropOverlay *)self->_cropOverlay setUserInteractionEnabled:1];
  [v5 doubleValue];
  if (v10 > 0.0 && (v9 & 1) == 0)
  {
    [v5 doubleValue];
    if (v7 > v11)
    {
      [v5 doubleValue];
      [a3 setMaximumTrimLength:?];
      if (([a3 isEditing] & 1) == 0)
      {
        [a3 setEditing:1];
      }

      if (!v8)
      {
        v12 = [(PLCropOverlay *)self->_cropOverlay bottomBar];
        [v12 bounds];
        [a3 convertRect:v12 fromView:?];
        v14 = v13;
        v15 = [(PLUIImageViewController *)self _trimMessage];
        v16 = v14 + -20.0;

        *&v16 = v14 + -20.0;
        [a3 showTrimMessage:v15 withBottomY:v16];
      }
    }
  }
}

- (double)videoViewScrubberYOrigin:(id)a3 forOrientation:(int64_t)a4
{
  v5 = [(PLUIImageViewController *)self view:a3];
  [objc_msgSend(v5 "safeAreaLayoutGuide")];
  [a3 convertPoint:v5 fromView:0.0];
  return v6;
}

- (void)videoView:(id)a3 scrubberWasCreated:(id)a4 slalomRegionEditor:(id)a5
{
  if (self->_videoView == a3)
  {
    [(PLUIImageViewController *)self attachScrubberPalette];
  }
}

- (void)cropOverlay:(id)a3 didFinishSaving:(id)a4
{
  [(PLUIImageViewController *)self handleMediaSelectionUsingTile:self->_imageTile managedAsset:self->_photo args:a4 includeEditing:*(self + 1112) & 1];

  [(PLUIImageViewController *)self _enableCropOverlayIfNecessary];
}

- (void)beginDisplayingProgress
{
  v3 = [(PLUIImageViewController *)self view];
  v4 = [(PLCropOverlay *)self->_cropOverlay bottomBar];
  [v4 bounds];
  [v3 convertRect:v4 fromView:?];
  v7 = [[PLProgressView alloc] initWithFrame:*MEMORY[0x277CBF3A0], v5 - *(MEMORY[0x277CBF3A0] + 24), v6, 45.0];
  self->_progressView = v7;
  [(PLProgressView *)v7 setBackgroundType:3];
  [(PLProgressView *)self->_progressView setAutoresizingMask:2];
  progressView = self->_progressView;

  [v3 addSubview:progressView];
}

- (void)_handleVideoSelected
{
  [(PLVideoView *)self->_videoView pause];
  v3 = [(PLVideoView *)self->_videoView videoCameraImage];
  if ([(NSURL *)self->_videoURL isFileURL])
  {
    v4 = [(NSURL *)self->_videoURL path];
  }

  else
  {
    v4 = 0;
  }

  [(PLVideoView *)self->_videoView startTime];
  v6 = v5;
  [(PLVideoView *)self->_videoView endTime];
  v8 = v7;
  if ([(PLUIImageViewController *)self doNotTranscode])
  {
    if ([(PLVideoView *)self->_videoView isEditing])
    {
      v9 = objc_alloc(MEMORY[0x277CBEAC0]);
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
      v11 = *MEMORY[0x277D774A8];
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
      v13 = [v9 initWithObjectsAndKeys:{v10, v11, v12, *MEMORY[0x277D774A0], 0}];
      if (v3)
      {
LABEL_7:
        v14 = [(PLManagedAsset *)v3 mainFileURL];
        goto LABEL_13;
      }
    }

    else
    {
      v13 = 0;
      if (v3)
      {
        goto LABEL_7;
      }
    }

    if (!v4)
    {
      v16 = 0;
      goto LABEL_14;
    }

    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:0];
LABEL_13:
    v16 = v14;
LABEL_14:
    [(PLUIImageViewController *)self handleVideoSelectionWithURL:v16 args:v13];

    [(PLUIImageViewController *)self _enableCropOverlayIfNecessary];
    return;
  }

  self->_remaker = 0;
  if (v3)
  {
    self->_remaker = [[PLVideoRemaker alloc] initWithManagedAsset:v3 applyVideoAdjustments:1];
    v15 = [(PLManagedAsset *)v3 isHDVideo];
  }

  else
  {
    v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:0];
    v18 = -[PLVideoRemaker initWithAVAsset:]([PLVideoRemaker alloc], "initWithAVAsset:", [MEMORY[0x277CE6650] assetWithURL:v17]);
    self->_remaker = v18;
    [(PLVideoView *)self->_videoView duration];
    [(PLVideoRemaker *)v18 setDuration:?];
    v15 = 0;
  }

  [(PLVideoRemaker *)self->_remaker setDelegate:self];
  [(PLVideoRemaker *)self->_remaker setTrimStartTime:v6];
  [(PLVideoRemaker *)self->_remaker setTrimEndTime:v8];
  v19 = [(PLUIImageViewController *)self exportPreset];
  v20 = [(PLUIImageViewController *)self videoQuality];
  if (!v19)
  {
    if (!v20)
    {
      v21 = 7;
      goto LABEL_20;
    }

    v37 = [v20 intValue];
    v21 = 7;
    if (v37 > 2)
    {
      if ((v37 - 4) >= 2)
      {
        if (v37 != 3)
        {
          goto LABEL_20;
        }

        v40 = ([objc_msgSend(MEMORY[0x277D75418] currentDevice] & 0xFFFFFFFFFFFFFFFBLL) == 1;
        v41 = 6;
LABEL_43:
        if (v40)
        {
          v21 = v41 + 1;
        }

        else
        {
          v21 = v41;
        }

        goto LABEL_20;
      }
    }

    else if (v37)
    {
      if (v15)
      {
        v38 = 5;
      }

      else
      {
        v38 = 7;
      }

      if (v37 == 2)
      {
        v39 = 8;
      }

      else
      {
        v39 = 7;
      }

      if (v37 == 1)
      {
        v21 = v38;
      }

      else
      {
        v21 = v39;
      }

      goto LABEL_20;
    }

    v40 = v15 == 0;
    v41 = 5;
    goto LABEL_43;
  }

  [(PLVideoRemaker *)self->_remaker setExportPresetOverride:v19];
  v21 = PLVideoRemakerModeForAVAssetExportPreset(v19);
LABEL_20:
  [(PLVideoRemaker *)self->_remaker setMode:v21];
  [(PLVideoView *)self->_videoView hideTrimMessage];
  v22 = v8 - v6;
  [(PLVideoView *)self->_videoView duration];
  v24 = v23;
  v25 = [(PLVideoRemaker *)self->_remaker progressView];
  self->_progressView = v25;
  [(PLProgressView *)v25 frame];
  v27 = v26;
  v29 = v28;
  [(PLProgressView *)v25 setBackgroundType:3];
  v30 = [(PLUIImageViewController *)self view];
  v31 = [(PLCropOverlay *)self->_cropOverlay bottomBar];
  [v31 bounds];
  [v30 convertRect:v31 fromView:?];
  v33 = v32;
  v35 = v34 - v29;
  [v30 addSubview:v25];
  [(PLProgressView *)v25 setFrame:v27, v35, v33, v29];
  if (v22 >= v24)
  {
    [(PLProgressView *)v25 setLabelText:PLLocalizedFrameworkString()];
  }

  remaker = self->_remaker;

  [(PLVideoRemaker *)remaker remake];
}

- (void)cropOverlayWasOKed:(id)a3
{
  if ((*(self + 1112) & 4) != 0 || [(PLUIImageViewController *)self wantsAutoloopUI])
  {
    if ([(PLUIImageViewController *)self wantsAutoloopUI])
    {

      [(PLUIImageViewController *)self handleAutoloopSelected];
    }

    else
    {

      [(PLUIImageViewController *)self _handleVideoSelected];
    }
  }

  else if (*(self + 1112))
  {
    v4 = ([(PLUIImageViewController *)self imagePickerSavingOptions]& 1) == 0;
    cropOverlay = self->_cropOverlay;
    imageTile = self->_imageTile;
    if (v4)
    {
      v7 = 16;
    }

    else
    {
      v7 = 4;
    }

    [(PLCropOverlay *)cropOverlay beginBackgroundSaveWithTile:imageTile progressTitle:0 completionCallbackTarget:self options:v7];
  }

  else
  {
    [(PLUIImageViewController *)self handleMediaSelectionUsingTile:self->_imageTile managedAsset:self->_photo args:0 includeEditing:0];

    [(PLUIImageViewController *)self _enableCropOverlayIfNecessary];
  }
}

- (void)_enableCropOverlayIfNecessary
{
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {

    [(PLUIImageViewController *)self _enableCropOverlay];
  }
}

- (void)cropOverlayWasCancelled:(id)a3
{
  v4 = [(UIViewController *)self uiipc_imagePickerController];
  if (!v4)
  {
    v6 = [(PLUIImageViewController *)self navigationController];
    goto LABEL_5;
  }

  v5 = v4;
  if ([objc_msgSend(v4 "viewControllers")])
  {
    v6 = v5;
LABEL_5:

    [v6 popViewControllerAnimated:1];
    return;
  }

  [v5 _imagePickerDidCancel];
}

- (void)_updateGestureSettings
{
  if ((*(self + 1112) & 4) == 0 && ![(PLUIImageViewController *)self wantsAutoloopUI])
  {
    [-[PLPhotoTileViewController scrollView](self->_imageTile "scrollView")];
    v3 = [(PLPhotoTileViewController *)self->_imageTile scrollView];
    v4 = *(self + 1112) & 1;

    [v3 setScrollEnabled:v4];
  }
}

- (void)_editabilityChanged:(id)a3
{
  v4 = [(PLUIImageViewController *)self imagePickerAllowsEditing];

  [(PLUIImageViewController *)self setAllowsEditing:v4];
}

- (void)setAllowsEditing:(BOOL)a3
{
  v3 = *(self + 1112);
  if ((v3 & 1) != a3)
  {
    *(self + 1112) = v3 & 0xFE | a3;
    [(PLUIImageViewController *)self _updateGestureSettings];
    cropOverlay = self->_cropOverlay;
    v6 = (*(self + 1112) & 1) == 0;

    [(PLCropOverlay *)cropOverlay setPreviewMode:v6];
  }
}

- (void)attachScrubberPalette
{
  v3 = [(PLVideoView *)self->_videoView scrubberBackgroundView];
  if (v3)
  {
    v4 = v3;
    v5 = [(PLUIImageViewController *)self navigationController];
    if (([v5 isNavigationBarHidden] & 1) == 0 && !objc_msgSend(v5, "existingPaletteForEdge:", 2))
    {
      [(PLUIImageViewController *)self _viewFrame];
      Width = CGRectGetWidth(v10);
      [(UIView *)v4 bounds];
      v7 = [v5 paletteForEdge:2 size:{Width, CGRectGetHeight(v11)}];
      if (v7)
      {
        v8 = v7;
        [v5 attachPalette:v7 isPinned:1];
        [v8 addSubview:v4];
        [(UIView *)v4 setBackgroundColor:0];
        [v8 bounds];
        [(UIView *)v4 setFrame:?];

        [(UIView *)v4 setAutoresizingMask:10];
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if ((*(self + 1112) & 0x10) != 0)
  {
    [(PLVideoRemaker *)self->_remaker cancel];
  }

  *(self + 1112) |= 8u;
  [(PLVideoView *)self->_videoView stop];
  [(PLVideoView *)self->_videoView setDelegate:0];
  v5.receiver = self;
  v5.super_class = PLUIImageViewController;
  [(PLUIImageViewController *)&v5 viewWillDisappear:v3];
  *(self + 1112) &= ~8u;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PLUIImageViewController;
  [(PLUIImageViewController *)&v5 viewDidAppear:a3];
  if ([(UIViewController *)self uiipc_useTelephonyUI])
  {
    imageTile = self->_imageTile;
    [(PLCropOverlay *)self->_cropOverlay cropRect];
    [PLPhotoTileViewController setCropOverlayRect:"setCropOverlayRect:forCropRect:" forCropRect:?];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if ([(PLUIImageViewController *)self isDisplayedInPhotoPicker])
  {
    [(PLUIImageViewController *)self setAllowsEditing:[(PLUIImageViewController *)self imagePickerAllowsEditing]];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel__editabilityChanged_ name:*MEMORY[0x277D77450] object:0];
  }

  v6 = [(PLUIImageViewController *)self cropOverlayMode];
  v7 = [(PLUIImageViewController *)self navigationController];
  if (v6 == 4)
  {
    [v7 setNavigationBarHidden:1];
  }

  else
  {
    [objc_msgSend(v7 "navigationBar")];
  }

  [(PLVideoView *)self->_videoView setDelegate:self];
  [(PLVideoView *)self->_videoView setShowsScrubber:1];
  [(PLVideoView *)self->_videoView setScrubberIsSubview:1];
  if ([objc_msgSend(MEMORY[0x277D75128] "sharedApplication")])
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *(self + 1112) = *(self + 1112) & 0xFD | v8;
  v9 = *MEMORY[0x277D76DA0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__PLUIImageViewController_viewWillAppear___block_invoke;
  v11[3] = &unk_2782A2020;
  v11[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v11 animations:v9];
  v10.receiver = self;
  v10.super_class = PLUIImageViewController;
  [(PLUIImageViewController *)&v10 viewWillAppear:v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = PLUIImageViewController;
  [(PLUIImageViewController *)&v5 traitCollectionDidChange:a3];
  if ([(UIViewController *)self uiipc_useTelephonyUI])
  {
    imageTile = self->_imageTile;
    [(PLCropOverlay *)self->_cropOverlay cropRect];
    [PLPhotoTileViewController setCropOverlayRect:"setCropOverlayRect:forCropRect:" forCropRect:?];
  }

  [(PLPhotoTileViewController *)self->_imageTile reloadZoomScale];
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = PLUIImageViewController;
  [(PLUIImageViewController *)&v7 viewWillLayoutSubviews];
  v3 = [(PLUIImageViewController *)self view];
  v4 = [(PLPhotoTileViewController *)self->_imageTile view];
  [v3 bounds];
  [v4 setFrame:?];
  if ((*(self + 1112) & 4) == 0 && ![(PLUIImageViewController *)self wantsAutoloopUI])
  {
    cropOverlay = self->_cropOverlay;
    [(PLCropOverlay *)cropOverlay setNeedsLayout];
    [(PLCropOverlay *)cropOverlay layoutIfNeeded];
    imageTile = self->_imageTile;
    [(PLCropOverlay *)cropOverlay cropRect];
    [PLPhotoTileViewController setCropOverlayRect:"setCropOverlayRect:forCropRect:" forCropRect:?];
  }
}

- (void)loadView
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  [(PLUIImageViewController *)self previewFrame];
  [(PLUIImageViewController *)self setPreferredContentSize:320.0, v7];
  v43 = [objc_alloc(-[PLUIImageViewController _viewClass](self "_viewClass"))];
  [v43 setAutoresizingMask:{-[PLUIImageViewController _contentAutoresizingMask](self, "_contentAutoresizingMask")}];
  v8 = MEMORY[0x277CBF348];
  v9 = [MEMORY[0x277D75348] blackColor];
  v10 = [(PLUIImageViewController *)self customBackgroundColor];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  [v43 setBackgroundColor:v11];
  [(PLUIImageViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  v12 = [(UIViewController *)self uiipc_useTelephonyUI];
  v13 = ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) != 1;
  [(PLUIImageViewController *)self setupNavigationItem];
  v14 = [(PLUIImageViewController *)self chooseButtonTitle];
  if (![v14 length])
  {
    v14 = PLLocalizedFrameworkString();
  }

  v16 = *v8;
  v15 = v8[1];
  v17 = [(PLUIImageViewController *)self cancelButtonTitle];
  if (![v17 length])
  {
    v17 = PLLocalizedFrameworkString();
  }

  v18 = [[PLCropOverlay alloc] initWithFrame:[(PLUIImageViewController *)self cropOverlayMode] mode:v13 & v12 offsettingStatusBar:v16, v15, v6, v5];
  self->_cropOverlay = v18;
  [(PLCropOverlay *)v18 setDisplayedInPopover:0];
  [(PLCropOverlay *)self->_cropOverlay setOKButtonTitle:v14];
  [(PLCropOverlay *)self->_cropOverlay setDefaultOKButtonTitle:v14];
  [(PLCropOverlay *)self->_cropOverlay setCancelButtonTitle:v17];
  [(PLCropOverlay *)self->_cropOverlay setDefaultCancelButtonTitle:v17];
  [(PLCropOverlay *)self->_cropOverlay setDelegate:self];
  [(PLCropOverlay *)self->_cropOverlay setAutoresizingMask:[(PLUIImageViewController *)self _tileAutoresizingMask]];
  [(PLVideoView *)self->_videoView setDelegate:0];

  self->_videoView = 0;
  self->_imageTile = 0;
  if ((*(self + 1112) & 4) == 0 && ![(PLUIImageViewController *)self wantsAutoloopUI])
  {
    imageRef = self->_imageRef;
    if (imageRef)
    {
      if ([(PLUIImageViewController *)self clientIsWallpaper])
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      v22 = [PLPhotoTileViewController newPhotoTileViewControllerWithFrame:imageRef imageRef:0 imageOrientation:1 allowZoomToFill:v21 mode:v16, v15, v6, v5];
    }

    else
    {
      image = self->_image;
      if (!image)
      {
        v40 = [(PLManagedAsset *)self->_photo pl_PHAssetFromPhotoLibrary:pl_appPhotoLibrary()];
        if ([(PLUIImageViewController *)self clientIsWallpaper])
        {
          v41 = 2;
        }

        else
        {
          v41 = 1;
        }

        v42 = [PLPhotoTileViewController newPhotoTileViewControllerWithFrame:v40 modelPhoto:v41 mode:v16, v15, v6, v5];
        self->_imageTile = v42;
        [(PLPhotoTileViewController *)v42 setTileDelegate:self];
        goto LABEL_33;
      }

      if ([(PLUIImageViewController *)self clientIsWallpaper])
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }

      v22 = [PLPhotoTileViewController newPhotoTileViewControllerWithFrame:image image:1 allowZoomToFill:v30 mode:v16, v15, v6, v5];
    }

    self->_imageTile = v22;
    goto LABEL_33;
  }

  if (![(PLUIImageViewController *)self wantsAutoloopUI])
  {
    if ([(NSURL *)self->_videoURL isFileURL])
    {
      v19 = [PLVideoView videoViewForVideoFileAtURL:self->_videoURL];
    }

    else
    {
      videoURL = self->_videoURL;
      if (videoURL)
      {
        v24 = [MEMORY[0x277D3ACE0] photoFromAssetURL:videoURL photoLibrary:{objc_msgSend(MEMORY[0x277D3AD38], "systemPhotoLibrary")}];
        v25 = [PLVideoView alloc];
        v26 = 1.0;
        v27 = 1.0;
        photo = v24;
      }

      else
      {
        v25 = [PLVideoView alloc];
        photo = self->_photo;
        v26 = 1.0;
        v27 = 1.0;
      }

      v19 = [(PLVideoView *)v25 initWithFrame:photo videoCameraImage:1 orientation:0.0, 0.0, v26, v27];
    }

    self->_videoView = v19;
    [(PLUIImageViewController *)self setEdgesForExtendedLayout:14];
    [(PLUIImageViewController *)self previewFrame];
    v32 = v31;
    v34 = v33;
    if (!PLIsTallScreen())
    {
      v5 = v34;
    }

    v35 = objc_alloc_init(PLPhotoTileViewController);
    self->_imageTile = v35;
    [-[PLPhotoTileViewController view](v35 "view")];
    [(PLVideoView *)self->_videoView setFrame:0.0, 0.0, v32, v5];
    [(PLVideoView *)self->_videoView setDelegate:self];
    v36 = 1;
    [(PLVideoView *)self->_videoView setLoadMediaImmediately:1];
    [(PLVideoView *)self->_videoView setShowsPlayOverlay:0];
    videoView = self->_videoView;
    if ((*(self + 1112) & 1) == 0)
    {
      v36 = [(PLUIImageViewController *)self viewImageBeforeSelecting];
    }

    [(PLVideoView *)videoView setCanEdit:v36];
    [(PLVideoView *)self->_videoView setImageTile:self->_imageTile];
    [(PLPhotoTileViewController *)self->_imageTile setVideoView:self->_videoView];
    [(PLCropOverlay *)self->_cropOverlay didCaptureVideo];
    [(PLCropOverlay *)self->_cropOverlay setUserInteractionEnabled:0];
  }

LABEL_33:
  [(PLPhotoTileViewController *)self->_imageTile setOrientationDelegate:self];
  [(PLPhotoTileViewController *)self->_imageTile setForceNativeScreenScale:[(PLUIImageViewController *)self forceNativeScreenScale]];
  [(PLPhotoTileViewController *)self->_imageTile setForce1XCroppedImage:[(PLUIImageViewController *)self force1XCroppedImage]];
  [(PLPhotoTileViewController *)self->_imageTile setMaxZoomScaleOverride:[(PLUIImageViewController *)self maxZoomScaleOverride]];
  if ([(PLUIImageViewController *)self wantsLegacyImageUI]&& self->_imageTile)
  {
    [(PLUIImageViewController *)self addChildViewController:?];
    v38 = [(PLPhotoTileViewController *)self->_imageTile view];
    [v38 setAutoresizingMask:{-[PLUIImageViewController _tileAutoresizingMask](self, "_tileAutoresizingMask")}];
    [v43 addSubview:v38];
  }

  [v43 addSubview:self->_cropOverlay];
  [(PLUIImageViewController *)self _updateGestureSettings];
  [(PLUIImageViewController *)self setView:v43];
  if ((*(self + 1112) & 1) != 0 && ![(PLUIImageViewController *)self wantsAutoloopUI])
  {
    v39 = [(PLUIImageViewController *)self wantsLegacyImageUI]^ 1;
  }

  else
  {
    v39 = 1;
  }

  [(PLCropOverlay *)self->_cropOverlay setPreviewMode:v39];
}

- (void)setupNavigationItem
{
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v3 = [(PLUIImageViewController *)self navigationItem];
    [v3 setTitle:{-[PLUIImageViewController localizedTitle](self, "localizedTitle")}];
    v4 = [(PLUIImageViewController *)self chooseButtonTitle];
    if (![(NSString *)v4 length])
    {
      v4 = [(PLUIImageViewController *)self localizedUseButtonTitle];
    }

    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v4 style:2 target:self action:sel_cropOverlayWasOKed_];
    [v5 setAccessibilityIdentifier:@"Done"];
    [v3 setRightBarButtonItem:v5];

    v6 = [(PLUIImageViewController *)self cropOverlayMode];
    if (v6 <= 8 && ((1 << v6) & 0x1E6) != 0)
    {
      v7 = [(PLUIImageViewController *)self cancelButtonTitle];
      if (![v7 length])
      {
        v7 = PLLocalizedFrameworkString();
      }

      v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v7 style:0 target:self action:sel_cropOverlayWasCancelled_];
      [v8 setAccessibilityIdentifier:@"Cancel"];
      [v3 setLeftBarButtonItem:v8];
    }
  }
}

- (CGRect)_viewFrame
{
  [objc_msgSend(MEMORY[0x277D759A0] "px_mainScreen")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(PLUIImageViewController *)self navigationController])
  {
    [objc_msgSend(-[PLUIImageViewController navigationController](self "navigationController")];
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
  }

  v15 = [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
  if ((v15 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v16 = 320.0;
  }

  else
  {
    v16 = v8;
  }

  if ((v15 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v17 = 426.0;
  }

  else
  {
    v17 = v10;
  }

  v18 = v4;
  v19 = v6;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)previewFrame
{
  v2 = 320.0;
  v3 = 426.0;
  v4 = 0.0;
  v5 = 1.0;
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (int)cropOverlayMode
{
  if ([(UIViewController *)self uiipc_useTelephonyUI])
  {
    return 4;
  }

  v3 = 1;
  if ((*(self + 1112) & 4) != 0)
  {
    if ([(PLUIImageViewController *)self wantsAutoloopUI])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v3;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  imageRef = self->_imageRef;
  if (imageRef)
  {
    CGImageRelease(imageRef);
  }

  [(PLPhotoTileViewController *)self->_imageTile setTileDelegate:0];
  [(PLVideoView *)self->_videoView setDelegate:0];

  v4.receiver = self;
  v4.super_class = PLUIImageViewController;
  [(PLUIImageViewController *)&v4 dealloc];
}

- (PLUIImageViewController)initWithVideoURL:(id)a3
{
  v7.receiver = self;
  v7.super_class = PLUIImageViewController;
  v4 = [(PLUIImageViewController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 1112) |= 4u;
    v4->_videoURL = a3;
  }

  return v5;
}

- (PLUIImageViewController)initWithImageData:(id)a3 cropRect:(CGRect)a4
{
  v11.receiver = self;
  v11.super_class = PLUIImageViewController;
  v4 = [(PLUIImageViewController *)&v11 init];
  if (v4)
  {
    v5 = PLCreateImageFromDataWithFormat();
    v4->_image = v5;
    [(UIImage *)v5 size];
    PLImageSizeFromImageData();
    PLScaledCropRect();
    v4->_cropRect.origin.x = v6;
    v4->_cropRect.origin.y = v7;
    v4->_cropRect.size.width = v8;
    v4->_cropRect.size.height = v9;
    if (!v4->_image)
    {

      return 0;
    }
  }

  return v4;
}

- (PLUIImageViewController)initWithUIImage:(id)a3 cropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11.receiver = self;
  v11.super_class = PLUIImageViewController;
  v9 = [(PLUIImageViewController *)&v11 init];
  if (v9)
  {
    v9->_image = a3;
    v9->_cropRect.origin.x = x;
    v9->_cropRect.origin.y = y;
    v9->_cropRect.size.width = width;
    v9->_cropRect.size.height = height;
  }

  return v9;
}

- (PLUIImageViewController)initWithImage:(CGImage *)a3 cropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11.receiver = self;
  v11.super_class = PLUIImageViewController;
  v9 = [(PLUIImageViewController *)&v11 init];
  if (v9)
  {
    v9->_imageRef = CGImageRetain(a3);
    v9->_cropRect.origin.x = x;
    v9->_cropRect.origin.y = y;
    v9->_cropRect.size.width = width;
    v9->_cropRect.size.height = height;
  }

  return v9;
}

- (PLUIImageViewController)initWithPhoto:(id)a3
{
  v8.receiver = self;
  v8.super_class = PLUIImageViewController;
  v4 = [(PLUIImageViewController *)&v8 init];
  if (v4)
  {
    v5 = a3;
    v4->_photo = v5;
    if ([(PLManagedAsset *)v5 isVideo])
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *(v4 + 1112) = *(v4 + 1112) & 0xFB | v6;
  }

  return v4;
}

@end