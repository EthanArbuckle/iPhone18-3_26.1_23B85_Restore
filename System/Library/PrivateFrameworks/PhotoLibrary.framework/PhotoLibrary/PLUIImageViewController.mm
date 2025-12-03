@interface PLUIImageViewController
- (BOOL)disableVideoTrimMessage;
- (BOOL)doNotTranscode;
- (BOOL)force1XCroppedImage;
- (BOOL)forceNativeScreenScale;
- (BOOL)imagePickerAllowsEditing;
- (BOOL)viewImageBeforeSelecting;
- (CGRect)_viewFrame;
- (CGRect)previewFrame;
- (PLUIImageViewController)initWithImage:(CGImage *)image cropRect:(CGRect)rect;
- (PLUIImageViewController)initWithImageData:(id)data cropRect:(CGRect)rect;
- (PLUIImageViewController)initWithPhoto:(id)photo;
- (PLUIImageViewController)initWithUIImage:(id)image cropRect:(CGRect)rect;
- (PLUIImageViewController)initWithVideoURL:(id)l;
- (double)videoViewScrubberYOrigin:(id)origin forOrientation:(int64_t)orientation;
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
- (void)_editabilityChanged:(id)changed;
- (void)_enableCropOverlayIfNecessary;
- (void)_handleVideoSelected;
- (void)_updateGestureSettings;
- (void)attachScrubberPalette;
- (void)beginDisplayingProgress;
- (void)cropOverlay:(id)overlay didFinishSaving:(id)saving;
- (void)cropOverlayWasCancelled:(id)cancelled;
- (void)cropOverlayWasOKed:(id)ked;
- (void)dealloc;
- (void)handleMediaSelectionUsingTile:(id)tile managedAsset:(id)asset args:(id)args includeEditing:(BOOL)editing;
- (void)handleVideoSelectionWithURL:(id)l args:(id)args;
- (void)loadView;
- (void)photoTileViewControllerCancelImageRequests:(id)requests;
- (void)photoTileViewControllerRequestsFullScreenImage:(id)image;
- (void)setAllowsEditing:(BOOL)editing;
- (void)setupNavigationItem;
- (void)traitCollectionDidChange:(id)change;
- (void)videoRemakerDidEndRemaking:(id)remaking temporaryPath:(id)path;
- (void)videoView:(id)view scrubberWasCreated:(id)created slalomRegionEditor:(id)editor;
- (void)videoViewIsReadyToBeginPlayback:(id)playback;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PLUIImageViewController

- (unint64_t)imagePickerSavingOptions
{
  uiipc_imagePickerController = [(UIViewController *)self uiipc_imagePickerController];

  return [uiipc_imagePickerController _imagePickerSavingOptions];
}

- (BOOL)imagePickerAllowsEditing
{
  uiipc_imagePickerOptions = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = [uiipc_imagePickerOptions objectForKey:*MEMORY[0x277D76A40]];

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
  uiipc_imagePickerOptions = [(UIViewController *)self uiipc_imagePickerOptions];

  return [uiipc_imagePickerOptions objectForKey:@"_UIImagePickerControllerCancelButtonTitle"];
}

- (id)chooseButtonTitle
{
  uiipc_imagePickerOptions = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = *MEMORY[0x277D77440];

  return [uiipc_imagePickerOptions objectForKey:v3];
}

- (BOOL)force1XCroppedImage
{
  uiipc_imagePickerOptions = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = [uiipc_imagePickerOptions objectForKey:*MEMORY[0x277D77430]];

  return [v3 BOOLValue];
}

- (BOOL)forceNativeScreenScale
{
  uiipc_imagePickerOptions = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = [uiipc_imagePickerOptions objectForKey:*MEMORY[0x277D77458]];

  return [v3 BOOLValue];
}

- (BOOL)disableVideoTrimMessage
{
  uiipc_imagePickerOptions = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = [uiipc_imagePickerOptions objectForKey:*MEMORY[0x277D77448]];

  return [v3 BOOLValue];
}

- (id)videoMaximumDuration
{
  uiipc_imagePickerOptions = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = *MEMORY[0x277D76A98];

  return [uiipc_imagePickerOptions objectForKey:v3];
}

- (BOOL)viewImageBeforeSelecting
{
  uiipc_imagePickerOptions = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = [uiipc_imagePickerOptions objectForKey:*MEMORY[0x277D774B8]];

  return [v3 BOOLValue];
}

- (id)exportPreset
{
  uiipc_imagePickerOptions = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = *MEMORY[0x277D774B0];

  return [uiipc_imagePickerOptions objectForKey:v3];
}

- (id)videoQuality
{
  uiipc_imagePickerOptions = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = *MEMORY[0x277D76AA0];

  return [uiipc_imagePickerOptions objectForKey:v3];
}

- (BOOL)doNotTranscode
{
  uiipc_imagePickerOptions = [(UIViewController *)self uiipc_imagePickerOptions];
  v3 = [uiipc_imagePickerOptions objectForKey:*MEMORY[0x277D77498]];

  return [v3 BOOLValue];
}

- (void)handleVideoSelectionWithURL:(id)l args:(id)args
{
  uiipc_imagePickerController = [(UIViewController *)self uiipc_imagePickerController];
  if (uiipc_imagePickerController)
  {
    photo = self->_photo;

    PLNotifyImagePickerOfVideoAvailability(uiipc_imagePickerController, l, photo, args);
  }

  else
  {

    [(PLUIImageViewController *)self didChooseVideoAtURL:l options:args];
  }
}

- (void)handleMediaSelectionUsingTile:(id)tile managedAsset:(id)asset args:(id)args includeEditing:(BOOL)editing
{
  editingCopy = editing;
  uiipc_imagePickerController = [(UIViewController *)self uiipc_imagePickerController];

  PLNotifyImagePickerOfMediaAvailability(uiipc_imagePickerController, tile, asset, args, editingCopy);
}

- (void)photoTileViewControllerCancelImageRequests:(id)requests
{
  if ([requests inflightFullSizeImageRequestID])
  {
    [objc_msgSend(MEMORY[0x277CD9898] "defaultManager")];

    [requests setInflightFullSizeImageRequestID:0];
  }
}

- (void)photoTileViewControllerRequestsFullScreenImage:(id)image
{
  [(PLUIImageViewController *)self photoTileViewControllerCancelImageRequests:?];
  photo = [image photo];
  v5 = objc_alloc_init(MEMORY[0x277CD98A0]);
  [v5 setDeliveryMode:1];
  defaultManager = [MEMORY[0x277CD9898] defaultManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__PLUIImageViewController_photoTileViewControllerRequestsFullScreenImage___block_invoke;
  v7[3] = &unk_2782A1F30;
  v7[4] = image;
  [image setInflightFullSizeImageRequestID:{objc_msgSend(defaultManager, "requestImageForAsset:targetSize:contentMode:options:resultHandler:", photo, 0, v5, v7, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8))}];
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

- (void)videoRemakerDidEndRemaking:(id)remaking temporaryPath:(id)path
{
  *(self + 1112) &= ~0x10u;
  [*MEMORY[0x277D76620] endIgnoringInteractionEvents];
  if (path)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:path isDirectory:0];
  }

  else
  {
    v6 = 0;
  }

  [(PLUIImageViewController *)self handleVideoSelectionWithURL:v6 args:0];

  self->_remaker = 0;

  [(PLUIImageViewController *)self _enableCropOverlayIfNecessary];
}

- (void)videoViewIsReadyToBeginPlayback:(id)playback
{
  videoMaximumDuration = [(PLUIImageViewController *)self videoMaximumDuration];
  [playback duration];
  v7 = v6;
  disableVideoTrimMessage = [(PLUIImageViewController *)self disableVideoTrimMessage];
  if (*(self + 1112))
  {
    v9 = 0;
  }

  else
  {
    v9 = ![(PLUIImageViewController *)self viewImageBeforeSelecting];
  }

  [(PLCropOverlay *)self->_cropOverlay setUserInteractionEnabled:1];
  [videoMaximumDuration doubleValue];
  if (v10 > 0.0 && (v9 & 1) == 0)
  {
    [videoMaximumDuration doubleValue];
    if (v7 > v11)
    {
      [videoMaximumDuration doubleValue];
      [playback setMaximumTrimLength:?];
      if (([playback isEditing] & 1) == 0)
      {
        [playback setEditing:1];
      }

      if (!disableVideoTrimMessage)
      {
        bottomBar = [(PLCropOverlay *)self->_cropOverlay bottomBar];
        [bottomBar bounds];
        [playback convertRect:bottomBar fromView:?];
        v14 = v13;
        _trimMessage = [(PLUIImageViewController *)self _trimMessage];
        v16 = v14 + -20.0;

        *&v16 = v14 + -20.0;
        [playback showTrimMessage:_trimMessage withBottomY:v16];
      }
    }
  }
}

- (double)videoViewScrubberYOrigin:(id)origin forOrientation:(int64_t)orientation
{
  v5 = [(PLUIImageViewController *)self view:origin];
  [objc_msgSend(v5 "safeAreaLayoutGuide")];
  [origin convertPoint:v5 fromView:0.0];
  return v6;
}

- (void)videoView:(id)view scrubberWasCreated:(id)created slalomRegionEditor:(id)editor
{
  if (self->_videoView == view)
  {
    [(PLUIImageViewController *)self attachScrubberPalette];
  }
}

- (void)cropOverlay:(id)overlay didFinishSaving:(id)saving
{
  [(PLUIImageViewController *)self handleMediaSelectionUsingTile:self->_imageTile managedAsset:self->_photo args:saving includeEditing:*(self + 1112) & 1];

  [(PLUIImageViewController *)self _enableCropOverlayIfNecessary];
}

- (void)beginDisplayingProgress
{
  view = [(PLUIImageViewController *)self view];
  bottomBar = [(PLCropOverlay *)self->_cropOverlay bottomBar];
  [bottomBar bounds];
  [view convertRect:bottomBar fromView:?];
  v7 = [[PLProgressView alloc] initWithFrame:*MEMORY[0x277CBF3A0], v5 - *(MEMORY[0x277CBF3A0] + 24), v6, 45.0];
  self->_progressView = v7;
  [(PLProgressView *)v7 setBackgroundType:3];
  [(PLProgressView *)self->_progressView setAutoresizingMask:2];
  progressView = self->_progressView;

  [view addSubview:progressView];
}

- (void)_handleVideoSelected
{
  [(PLVideoView *)self->_videoView pause];
  videoCameraImage = [(PLVideoView *)self->_videoView videoCameraImage];
  if ([(NSURL *)self->_videoURL isFileURL])
  {
    path = [(NSURL *)self->_videoURL path];
  }

  else
  {
    path = 0;
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
      if (videoCameraImage)
      {
LABEL_7:
        mainFileURL = [(PLManagedAsset *)videoCameraImage mainFileURL];
        goto LABEL_13;
      }
    }

    else
    {
      v13 = 0;
      if (videoCameraImage)
      {
        goto LABEL_7;
      }
    }

    if (!path)
    {
      v16 = 0;
      goto LABEL_14;
    }

    mainFileURL = [MEMORY[0x277CBEBC0] fileURLWithPath:path isDirectory:0];
LABEL_13:
    v16 = mainFileURL;
LABEL_14:
    [(PLUIImageViewController *)self handleVideoSelectionWithURL:v16 args:v13];

    [(PLUIImageViewController *)self _enableCropOverlayIfNecessary];
    return;
  }

  self->_remaker = 0;
  if (videoCameraImage)
  {
    self->_remaker = [[PLVideoRemaker alloc] initWithManagedAsset:videoCameraImage applyVideoAdjustments:1];
    isHDVideo = [(PLManagedAsset *)videoCameraImage isHDVideo];
  }

  else
  {
    v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:path isDirectory:0];
    v18 = -[PLVideoRemaker initWithAVAsset:]([PLVideoRemaker alloc], "initWithAVAsset:", [MEMORY[0x277CE6650] assetWithURL:v17]);
    self->_remaker = v18;
    [(PLVideoView *)self->_videoView duration];
    [(PLVideoRemaker *)v18 setDuration:?];
    isHDVideo = 0;
  }

  [(PLVideoRemaker *)self->_remaker setDelegate:self];
  [(PLVideoRemaker *)self->_remaker setTrimStartTime:v6];
  [(PLVideoRemaker *)self->_remaker setTrimEndTime:v8];
  exportPreset = [(PLUIImageViewController *)self exportPreset];
  videoQuality = [(PLUIImageViewController *)self videoQuality];
  if (!exportPreset)
  {
    if (!videoQuality)
    {
      v21 = 7;
      goto LABEL_20;
    }

    intValue = [videoQuality intValue];
    v21 = 7;
    if (intValue > 2)
    {
      if ((intValue - 4) >= 2)
      {
        if (intValue != 3)
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

    else if (intValue)
    {
      if (isHDVideo)
      {
        v38 = 5;
      }

      else
      {
        v38 = 7;
      }

      if (intValue == 2)
      {
        v39 = 8;
      }

      else
      {
        v39 = 7;
      }

      if (intValue == 1)
      {
        v21 = v38;
      }

      else
      {
        v21 = v39;
      }

      goto LABEL_20;
    }

    v40 = isHDVideo == 0;
    v41 = 5;
    goto LABEL_43;
  }

  [(PLVideoRemaker *)self->_remaker setExportPresetOverride:exportPreset];
  v21 = PLVideoRemakerModeForAVAssetExportPreset(exportPreset);
LABEL_20:
  [(PLVideoRemaker *)self->_remaker setMode:v21];
  [(PLVideoView *)self->_videoView hideTrimMessage];
  v22 = v8 - v6;
  [(PLVideoView *)self->_videoView duration];
  v24 = v23;
  progressView = [(PLVideoRemaker *)self->_remaker progressView];
  self->_progressView = progressView;
  [(PLProgressView *)progressView frame];
  v27 = v26;
  v29 = v28;
  [(PLProgressView *)progressView setBackgroundType:3];
  view = [(PLUIImageViewController *)self view];
  bottomBar = [(PLCropOverlay *)self->_cropOverlay bottomBar];
  [bottomBar bounds];
  [view convertRect:bottomBar fromView:?];
  v33 = v32;
  v35 = v34 - v29;
  [view addSubview:progressView];
  [(PLProgressView *)progressView setFrame:v27, v35, v33, v29];
  if (v22 >= v24)
  {
    [(PLProgressView *)progressView setLabelText:PLLocalizedFrameworkString()];
  }

  remaker = self->_remaker;

  [(PLVideoRemaker *)remaker remake];
}

- (void)cropOverlayWasOKed:(id)ked
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

- (void)cropOverlayWasCancelled:(id)cancelled
{
  uiipc_imagePickerController = [(UIViewController *)self uiipc_imagePickerController];
  if (!uiipc_imagePickerController)
  {
    navigationController = [(PLUIImageViewController *)self navigationController];
    goto LABEL_5;
  }

  v5 = uiipc_imagePickerController;
  if ([objc_msgSend(uiipc_imagePickerController "viewControllers")])
  {
    navigationController = v5;
LABEL_5:

    [navigationController popViewControllerAnimated:1];
    return;
  }

  [v5 _imagePickerDidCancel];
}

- (void)_updateGestureSettings
{
  if ((*(self + 1112) & 4) == 0 && ![(PLUIImageViewController *)self wantsAutoloopUI])
  {
    [-[PLPhotoTileViewController scrollView](self->_imageTile "scrollView")];
    scrollView = [(PLPhotoTileViewController *)self->_imageTile scrollView];
    v4 = *(self + 1112) & 1;

    [scrollView setScrollEnabled:v4];
  }
}

- (void)_editabilityChanged:(id)changed
{
  imagePickerAllowsEditing = [(PLUIImageViewController *)self imagePickerAllowsEditing];

  [(PLUIImageViewController *)self setAllowsEditing:imagePickerAllowsEditing];
}

- (void)setAllowsEditing:(BOOL)editing
{
  v3 = *(self + 1112);
  if ((v3 & 1) != editing)
  {
    *(self + 1112) = v3 & 0xFE | editing;
    [(PLUIImageViewController *)self _updateGestureSettings];
    cropOverlay = self->_cropOverlay;
    v6 = (*(self + 1112) & 1) == 0;

    [(PLCropOverlay *)cropOverlay setPreviewMode:v6];
  }
}

- (void)attachScrubberPalette
{
  scrubberBackgroundView = [(PLVideoView *)self->_videoView scrubberBackgroundView];
  if (scrubberBackgroundView)
  {
    v4 = scrubberBackgroundView;
    navigationController = [(PLUIImageViewController *)self navigationController];
    if (([navigationController isNavigationBarHidden] & 1) == 0 && !objc_msgSend(navigationController, "existingPaletteForEdge:", 2))
    {
      [(PLUIImageViewController *)self _viewFrame];
      Width = CGRectGetWidth(v10);
      [(UIView *)v4 bounds];
      v7 = [navigationController paletteForEdge:2 size:{Width, CGRectGetHeight(v11)}];
      if (v7)
      {
        v8 = v7;
        [navigationController attachPalette:v7 isPinned:1];
        [v8 addSubview:v4];
        [(UIView *)v4 setBackgroundColor:0];
        [v8 bounds];
        [(UIView *)v4 setFrame:?];

        [(UIView *)v4 setAutoresizingMask:10];
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ((*(self + 1112) & 0x10) != 0)
  {
    [(PLVideoRemaker *)self->_remaker cancel];
  }

  *(self + 1112) |= 8u;
  [(PLVideoView *)self->_videoView stop];
  [(PLVideoView *)self->_videoView setDelegate:0];
  v5.receiver = self;
  v5.super_class = PLUIImageViewController;
  [(PLUIImageViewController *)&v5 viewWillDisappear:disappearCopy];
  *(self + 1112) &= ~8u;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PLUIImageViewController;
  [(PLUIImageViewController *)&v5 viewDidAppear:appear];
  if ([(UIViewController *)self uiipc_useTelephonyUI])
  {
    imageTile = self->_imageTile;
    [(PLCropOverlay *)self->_cropOverlay cropRect];
    [PLPhotoTileViewController setCropOverlayRect:"setCropOverlayRect:forCropRect:" forCropRect:?];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if ([(PLUIImageViewController *)self isDisplayedInPhotoPicker])
  {
    [(PLUIImageViewController *)self setAllowsEditing:[(PLUIImageViewController *)self imagePickerAllowsEditing]];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__editabilityChanged_ name:*MEMORY[0x277D77450] object:0];
  }

  cropOverlayMode = [(PLUIImageViewController *)self cropOverlayMode];
  navigationController = [(PLUIImageViewController *)self navigationController];
  if (cropOverlayMode == 4)
  {
    [navigationController setNavigationBarHidden:1];
  }

  else
  {
    [objc_msgSend(navigationController "navigationBar")];
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
  [(PLUIImageViewController *)&v10 viewWillAppear:appearCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = PLUIImageViewController;
  [(PLUIImageViewController *)&v5 traitCollectionDidChange:change];
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
  view = [(PLUIImageViewController *)self view];
  view2 = [(PLPhotoTileViewController *)self->_imageTile view];
  [view bounds];
  [view2 setFrame:?];
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
  blackColor = [MEMORY[0x277D75348] blackColor];
  customBackgroundColor = [(PLUIImageViewController *)self customBackgroundColor];
  if (customBackgroundColor)
  {
    v11 = customBackgroundColor;
  }

  else
  {
    v11 = blackColor;
  }

  [v43 setBackgroundColor:v11];
  [(PLUIImageViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  uiipc_useTelephonyUI = [(UIViewController *)self uiipc_useTelephonyUI];
  v13 = ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) != 1;
  [(PLUIImageViewController *)self setupNavigationItem];
  chooseButtonTitle = [(PLUIImageViewController *)self chooseButtonTitle];
  if (![chooseButtonTitle length])
  {
    chooseButtonTitle = PLLocalizedFrameworkString();
  }

  v16 = *v8;
  v15 = v8[1];
  cancelButtonTitle = [(PLUIImageViewController *)self cancelButtonTitle];
  if (![cancelButtonTitle length])
  {
    cancelButtonTitle = PLLocalizedFrameworkString();
  }

  v18 = [[PLCropOverlay alloc] initWithFrame:[(PLUIImageViewController *)self cropOverlayMode] mode:v13 & uiipc_useTelephonyUI offsettingStatusBar:v16, v15, v6, v5];
  self->_cropOverlay = v18;
  [(PLCropOverlay *)v18 setDisplayedInPopover:0];
  [(PLCropOverlay *)self->_cropOverlay setOKButtonTitle:chooseButtonTitle];
  [(PLCropOverlay *)self->_cropOverlay setDefaultOKButtonTitle:chooseButtonTitle];
  [(PLCropOverlay *)self->_cropOverlay setCancelButtonTitle:cancelButtonTitle];
  [(PLCropOverlay *)self->_cropOverlay setDefaultCancelButtonTitle:cancelButtonTitle];
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
    viewImageBeforeSelecting = 1;
    [(PLVideoView *)self->_videoView setLoadMediaImmediately:1];
    [(PLVideoView *)self->_videoView setShowsPlayOverlay:0];
    videoView = self->_videoView;
    if ((*(self + 1112) & 1) == 0)
    {
      viewImageBeforeSelecting = [(PLUIImageViewController *)self viewImageBeforeSelecting];
    }

    [(PLVideoView *)videoView setCanEdit:viewImageBeforeSelecting];
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
    view = [(PLPhotoTileViewController *)self->_imageTile view];
    [view setAutoresizingMask:{-[PLUIImageViewController _tileAutoresizingMask](self, "_tileAutoresizingMask")}];
    [v43 addSubview:view];
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
    navigationItem = [(PLUIImageViewController *)self navigationItem];
    [navigationItem setTitle:{-[PLUIImageViewController localizedTitle](self, "localizedTitle")}];
    chooseButtonTitle = [(PLUIImageViewController *)self chooseButtonTitle];
    if (![(NSString *)chooseButtonTitle length])
    {
      chooseButtonTitle = [(PLUIImageViewController *)self localizedUseButtonTitle];
    }

    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:chooseButtonTitle style:2 target:self action:sel_cropOverlayWasOKed_];
    [v5 setAccessibilityIdentifier:@"Done"];
    [navigationItem setRightBarButtonItem:v5];

    cropOverlayMode = [(PLUIImageViewController *)self cropOverlayMode];
    if (cropOverlayMode <= 8 && ((1 << cropOverlayMode) & 0x1E6) != 0)
    {
      cancelButtonTitle = [(PLUIImageViewController *)self cancelButtonTitle];
      if (![cancelButtonTitle length])
      {
        cancelButtonTitle = PLLocalizedFrameworkString();
      }

      v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:cancelButtonTitle style:0 target:self action:sel_cropOverlayWasCancelled_];
      [v8 setAccessibilityIdentifier:@"Cancel"];
      [navigationItem setLeftBarButtonItem:v8];
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

- (PLUIImageViewController)initWithVideoURL:(id)l
{
  v7.receiver = self;
  v7.super_class = PLUIImageViewController;
  v4 = [(PLUIImageViewController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 1112) |= 4u;
    v4->_videoURL = l;
  }

  return v5;
}

- (PLUIImageViewController)initWithImageData:(id)data cropRect:(CGRect)rect
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

- (PLUIImageViewController)initWithUIImage:(id)image cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11.receiver = self;
  v11.super_class = PLUIImageViewController;
  v9 = [(PLUIImageViewController *)&v11 init];
  if (v9)
  {
    v9->_image = image;
    v9->_cropRect.origin.x = x;
    v9->_cropRect.origin.y = y;
    v9->_cropRect.size.width = width;
    v9->_cropRect.size.height = height;
  }

  return v9;
}

- (PLUIImageViewController)initWithImage:(CGImage *)image cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11.receiver = self;
  v11.super_class = PLUIImageViewController;
  v9 = [(PLUIImageViewController *)&v11 init];
  if (v9)
  {
    v9->_imageRef = CGImageRetain(image);
    v9->_cropRect.origin.x = x;
    v9->_cropRect.origin.y = y;
    v9->_cropRect.size.width = width;
    v9->_cropRect.size.height = height;
  }

  return v9;
}

- (PLUIImageViewController)initWithPhoto:(id)photo
{
  v8.receiver = self;
  v8.super_class = PLUIImageViewController;
  v4 = [(PLUIImageViewController *)&v8 init];
  if (v4)
  {
    photoCopy = photo;
    v4->_photo = photoCopy;
    if ([(PLManagedAsset *)photoCopy isVideo])
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