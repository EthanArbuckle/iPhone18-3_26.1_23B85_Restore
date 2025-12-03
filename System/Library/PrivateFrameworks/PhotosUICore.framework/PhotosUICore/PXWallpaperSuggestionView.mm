@interface PXWallpaperSuggestionView
+ (id)sharedWorkQueue;
- (BOOL)_isPortrait;
- (CGRect)contentsRect;
- (PXWallpaperSuggestionView)initWithFrame:(CGRect)frame;
- (void)_resetImageRequester;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setAsset:(id)asset;
- (void)setImageRequester:(id)requester;
@end

@implementation PXWallpaperSuggestionView

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXImageRequesterObserverContext_107951 == context)
  {
    if (changeCopy < 0)
    {
      location[1] = MEMORY[0x1E69E9820];
      location[2] = 3221225472;
      location[3] = __58__PXWallpaperSuggestionView_observable_didChange_context___block_invoke;
      location[4] = &unk_1E774C648;
      location[5] = self;
      px_dispatch_on_main_queue();
    }

    if ((changeCopy & 4) != 0)
    {
      imageRequester = [(PXWallpaperSuggestionView *)self imageRequester];
      image = [imageRequester image];
      [(PXWallpaperSuggestionView *)self setCurrentImageIdentifier:[(PXWallpaperSuggestionView *)self currentImageIdentifier]+ 1];
      currentImageIdentifier = [(PXWallpaperSuggestionView *)self currentImageIdentifier];
      objc_initWeak(location, self);
      sharedWorkQueue = [objc_opt_class() sharedWorkQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__PXWallpaperSuggestionView_observable_didChange_context___block_invoke_2;
      block[3] = &unk_1E7746600;
      v16[1] = currentImageIdentifier;
      objc_copyWeak(v16, location);
      v15 = image;
      v13 = image;
      dispatch_async(sharedWorkQueue, block);

      objc_destroyWeak(v16);
      objc_destroyWeak(location);
    }
  }
}

void __58__PXWallpaperSuggestionView_observable_didChange_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageRequester];
  [v2 contentsRect];
  [*(a1 + 32) setContentsRect:?];
}

void __58__PXWallpaperSuggestionView_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained currentImageIdentifier];

  if (v2 == v4)
  {
    objc_copyWeak(&v5, (a1 + 40));
    *(a1 + 32);
    px_dispatch_on_main_queue();
  }
}

void __58__PXWallpaperSuggestionView_observable_didChange_context___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setImage:v1];
}

- (void)_resetImageRequester
{
  [(PXWallpaperSuggestionView *)self setImageRequester:0];

  [(PXWallpaperSuggestionView *)self setCurrentImageIdentifier:0];
}

- (void)setImageRequester:(id)requester
{
  requesterCopy = requester;
  imageRequester = self->_imageRequester;
  if (imageRequester != requesterCopy)
  {
    v8 = requesterCopy;
    [(PXImageRequester *)imageRequester unregisterChangeObserver:self context:PXImageRequesterObserverContext_107951];
    objc_storeStrong(&self->_imageRequester, requester);
    [(PXImageRequester *)v8 registerChangeObserver:self context:PXImageRequesterObserverContext_107951];
    image = [(PXImageRequester *)v8 image];
    [(PXWallpaperSuggestionView *)self setImage:image];

    [(PXImageRequester *)v8 contentsRect];
    [(PXWallpaperSuggestionView *)self setContentsRect:?];
    requesterCopy = v8;
  }
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  if (self->_asset != assetCopy)
  {
    v6 = assetCopy;
    objc_storeStrong(&self->_asset, asset);
    [(PXWallpaperSuggestionView *)self _resetImageRequester];
    assetCopy = v6;
    if (v6)
    {
      [(PXWallpaperSuggestionView *)self setNeedsLayout];
      assetCopy = v6;
    }
  }
}

- (BOOL)_isPortrait
{
  window = [(PXWallpaperSuggestionView *)self window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  return (interfaceOrientation - 1) < 2;
}

- (void)layoutSubviews
{
  [(PXWallpaperSuggestionView *)self bounds];
  v4 = v3;
  [(PXWallpaperSuggestionView *)self px_screenScale];
  asset = [(PXWallpaperSuggestionView *)self asset];
  if (asset)
  {
    imageRequester = [(PXWallpaperSuggestionView *)self imageRequester];

    if (!imageRequester)
    {
      v7 = [PXImageRequester alloc];
      mediaProvider = [(PXWallpaperSuggestionView *)self mediaProvider];
      v9 = [(PXImageRequester *)v7 initWithMediaProvider:mediaProvider asset:asset];

      [(PXWallpaperSuggestionView *)self setImageRequester:v9];
    }

    [(PXWallpaperSuggestionView *)self imageRequester];
    [objc_claimAutoreleasedReturnValue() contentSize];
    PXSizeApproximatelyEqualToSize();
  }

  [(PXWallpaperSuggestionView *)self _resetImageRequester];
  if ([(PXWallpaperSuggestionView *)self needsRoundedCorner])
  {
    px_screen = [(PXWallpaperSuggestionView *)self px_screen];
    traitCollection = [px_screen traitCollection];
    [traitCollection displayCornerRadius];
    v13 = v12;
    [px_screen bounds];
    v15 = v13 * (v4 / v14);

    v16 = 4.0;
    if (v15 >= 4.0)
    {
      v16 = v15;
    }

    [(PXWallpaperSuggestionView *)self _setContinuousCornerRadius:v16];
  }

  [(UIImageView *)self->_overlayView setHidden:!self->_showClockOverlay];
  [(PXWallpaperSuggestionView *)self bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  overlayView = [(PXWallpaperSuggestionView *)self overlayView];
  [overlayView setFrame:{v18, v20, v22, v24}];

  if ([(PXWallpaperSuggestionView *)self _isPortrait])
  {
    [(PXWallpaperSuggestionView *)self portraitOverlay];
  }

  else
  {
    [(PXWallpaperSuggestionView *)self landscapeOverlay];
  }
  v26 = ;
  overlayView2 = [(PXWallpaperSuggestionView *)self overlayView];
  [overlayView2 setImage:v26];
}

void __43__PXWallpaperSuggestionView_layoutSubviews__block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 setContentSize:{v3, v4}];
  [v5 setDesiredContentsRect:{a1[6], a1[7], a1[8], a1[9]}];
  [v5 setCropRect:{a1[6], a1[7], a1[8], a1[9]}];
  [v5 setViewportSize:{a1[10], a1[11]}];
  [v5 setScale:a1[12]];
}

- (PXWallpaperSuggestionView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = PXWallpaperSuggestionView;
  v3 = [(PXWallpaperSuggestionView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [(PXWallpaperSuggestionView *)v3 setBackgroundColor:quaternarySystemFillColor];

    [(PXWallpaperSuggestionView *)v3 setContentMode:2];
    [(PXWallpaperSuggestionView *)v3 setAccessibilityIgnoresInvertColors:1];
    layer = [(PXWallpaperSuggestionView *)v3 layer];
    [layer setMasksToBounds:1];

    v3->_needsRoundedCorner = 1;
    v3->_showClockOverlay = 1;
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v7 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:px_deprecated_appPhotoLibrary];
    mediaProvider = v3->_mediaProvider;
    v3->_mediaProvider = v7;

    v3->_classificationMode = 0;
    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
    overlayView = v3->_overlayView;
    v3->_overlayView = v9;

    [(UIImageView *)v3->_overlayView setContentMode:2];
    v11 = *MEMORY[0x1E6979D68];
    layer2 = [(UIImageView *)v3->_overlayView layer];
    [layer2 setMinificationFilter:v11];

    objc_initWeak(&location, v3);
    v13 = objc_opt_class();
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __43__PXWallpaperSuggestionView_initWithFrame___block_invoke;
    v18 = &unk_1E7739230;
    objc_copyWeak(&v19, &location);
    [v13 requestSharedOverlayImageWithCompletionBlock:&v15];
    [(PXWallpaperSuggestionView *)v3 addSubview:v3->_overlayView, v15, v16, v17, v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __43__PXWallpaperSuggestionView_initWithFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v7, (a1 + 32));
  v5;
  v6;
  px_dispatch_on_main_queue();
}

void __43__PXWallpaperSuggestionView_initWithFrame___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setPortraitOverlay:v2];

  v4 = *(a1 + 40);
  v5 = objc_loadWeakRetained((a1 + 48));
  [v5 setLandscapeOverlay:v4];

  v6 = objc_loadWeakRetained((a1 + 48));
  [v6 setNeedsLayout];
}

void __74__PXWallpaperSuggestionView_requestSharedOverlayImageWithCompletionBlock___block_invoke(uint64_t a1)
{
  if (requestSharedOverlayImageWithCompletionBlock__isLoadingStarted)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      if (requestSharedOverlayImageWithCompletionBlock__isLoadingFinished == 1)
      {
        v3 = v2[2];

        v3();
      }

      else
      {
        v20 = requestSharedOverlayImageWithCompletionBlock__completionBlocks;
        v22 = [v2 copy];
        v21 = _Block_copy(v22);
        [v20 addObject:v21];
      }
    }
  }

  else
  {
    requestSharedOverlayImageWithCompletionBlock__isLoadingStarted = 1;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = requestSharedOverlayImageWithCompletionBlock__completionBlocks;
    requestSharedOverlayImageWithCompletionBlock__completionBlocks = v4;

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = requestSharedOverlayImageWithCompletionBlock__completionBlocks;
      v8 = [v6 copy];
      v9 = _Block_copy(v8);
      [v7 addObject:v9];
    }

    v10 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    v11 = [v10 userInterfaceIdiom] == 1;

    v12 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    [v12 scale];
    v18 = v17;
    v19 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PXWallpaperSuggestionView_requestSharedOverlayImageWithCompletionBlock___block_invoke_2;
    block[3] = &__block_descriptor_57_e5_v8__0l;
    block[4] = v14;
    block[5] = v16;
    v24 = v11;
    block[6] = v18;
    dispatch_async(v19, block);
  }
}

void __74__PXWallpaperSuggestionView_requestSharedOverlayImageWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1 >= v2)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = *(a1 + 40);
  }

  if (v1 < v2)
  {
    v1 = *(a1 + 32);
  }

  v4 = 1.5;
  if (*(a1 + 56))
  {
    v4 = 2.0;
  }

  v5 = *(a1 + 48);
  v6 = round(v5 * (v3 / v4)) / v5;
  v7 = round(v5 * (v1 / v4)) / v5;
  v8 = objc_autoreleasePoolPush();
  v9 = SOFT_LINKED_SBSUIWallpaperGetOverlay(14523, v6);
  v10 = requestSharedOverlayImageWithCompletionBlock__portraitOverlay;
  requestSharedOverlayImageWithCompletionBlock__portraitOverlay = v9;

  v11 = SOFT_LINKED_SBSUIWallpaperGetOverlay(14651, v7);
  v12 = requestSharedOverlayImageWithCompletionBlock__landscapeOverlay;
  requestSharedOverlayImageWithCompletionBlock__landscapeOverlay = v11;

  objc_autoreleasePoolPop(v8);
  if (!requestSharedOverlayImageWithCompletionBlock__portraitOverlay)
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 134217984;
      v16 = v6;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "SB SPI returns nil portrait overlay image (requested width: %.3f)", &v15, 0xCu);
    }
  }

  if (!requestSharedOverlayImageWithCompletionBlock__landscapeOverlay)
  {
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 134217984;
      v16 = v7;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "SB SPI returns nil landscape overlay image (requested width: %.3f)", &v15, 0xCu);
    }
  }

  px_dispatch_on_main_queue();
}

void __74__PXWallpaperSuggestionView_requestSharedOverlayImageWithCompletionBlock___block_invoke_257()
{
  requestSharedOverlayImageWithCompletionBlock__isLoadingFinished = 1;
  [requestSharedOverlayImageWithCompletionBlock__completionBlocks enumerateObjectsUsingBlock:&__block_literal_global_263];
  v0 = requestSharedOverlayImageWithCompletionBlock__completionBlocks;
  requestSharedOverlayImageWithCompletionBlock__completionBlocks = 0;
}

+ (id)sharedWorkQueue
{
  if (sharedWorkQueue_onceToken_107988 != -1)
  {
    dispatch_once(&sharedWorkQueue_onceToken_107988, &__block_literal_global_107989);
  }

  v3 = sharedWorkQueue_sharedWorkQueue_107990;

  return v3;
}

void __44__PXWallpaperSuggestionView_sharedWorkQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.photos.wallpaperPreview", attr);
  v2 = sharedWorkQueue_sharedWorkQueue_107990;
  sharedWorkQueue_sharedWorkQueue_107990 = v1;
}

@end