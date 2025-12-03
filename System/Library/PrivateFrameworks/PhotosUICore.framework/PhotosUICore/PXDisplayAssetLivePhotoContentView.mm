@interface PXDisplayAssetLivePhotoContentView
- (BOOL)isDisplayingFullQualityContent;
- (double)loadingProgress;
- (id)contentView;
- (void)_handlePlayerItemResult:(id)result info:(id)info requestID:(int64_t)d;
- (void)_updateLivePhotoContentMode;
- (void)_updateLivePhotoPlayerItem;
- (void)contentModeDidChange;
- (void)contentsRectDidChange;
- (void)effectivePreferredImageDynamicRangeDidChange;
- (void)imageDidChange;
- (void)imageProgressDidChange;
- (void)imageRequesterDidChange:(unint64_t)change;
- (void)placeholderImageFiltersDidChange;
- (void)setPlayerItemLoadingProgress:(double)progress;
- (void)setVideoPlayerItem:(id)item;
- (void)updateContent;
- (void)viewModelDidChange:(unint64_t)change;
@end

@implementation PXDisplayAssetLivePhotoContentView

- (void)viewModelDidChange:(unint64_t)change
{
  changeCopy = change;
  v8.receiver = self;
  v8.super_class = PXDisplayAssetLivePhotoContentView;
  [(PXDisplayAssetContentView *)&v8 viewModelDidChange:?];
  if ((changeCopy & 0x10) != 0)
  {
    player = [(ISLivePhotoUIView *)self->_livePhotoView player];
    viewModel = [(PXDisplayAssetContentView *)self viewModel];
    wantsLivePhotoPlayback = [viewModel wantsLivePhotoPlayback];

    if (wantsLivePhotoPlayback)
    {
      [player startPlaybackWithStyle:1 settleAutomatically:1];
    }

    else
    {
      [player stopPlayback];
    }
  }
}

- (void)imageRequesterDidChange:(unint64_t)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = PXDisplayAssetLivePhotoContentView;
  [(PXDisplayAssetContentView *)&v5 imageRequesterDidChange:?];
  if ((changeCopy & 8) != 0)
  {
    [(PXDisplayAssetContentView *)self isDisplayingFullQualityContentDidChange];
  }
}

- (void)_updateLivePhotoPlayerItem
{
  image = [(PXDisplayAssetContentView *)self image];
  if (image)
  {
    asset = [(AVPlayerItem *)self->_videoPlayerItem asset];
    [image imageOrientation];
    v5 = PLExifOrientationFromImageOrientation();
    if (asset)
    {
      [asset duration];
      v6 = vcvts_n_f32_s64(v14, 1uLL);
    }

    else
    {
      v6 = 0.0;
    }

    v7 = [objc_alloc(MEMORY[0x1E69C1AE8]) initWithVideoAsset:asset UIImage:image photoTime:v5 photoEXIFOrientation:0 options:v6];
    v8 = MEMORY[0x1E69C1B00];
    [(PXDisplayAssetContentView *)self targetSize];
    v9 = [v8 playerItemWithAsset:v7 targetSize:?];
    videoComposition = [(AVPlayerItem *)self->_videoPlayerItem videoComposition];
    [v9 setVideoComposition:videoComposition];

    player = [(ISLivePhotoUIView *)self->_livePhotoView player];
    v12 = player;
    if (v9)
    {
      if (!player)
      {
        v12 = objc_alloc_init(MEMORY[0x1E69C1AF0]);
        [v12 setAudioEnabled:0];
        [(ISLivePhotoUIView *)self->_livePhotoView setPlayer:v12];
      }

      player = v12;
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    [player setPlayerItem:v13];
  }

  else
  {
    asset = [(ISLivePhotoUIView *)self->_livePhotoView player];
    [asset setPlayerItem:0];
  }
}

- (BOOL)isDisplayingFullQualityContent
{
  imageRequester = [(PXDisplayAssetContentView *)self imageRequester];
  if ([imageRequester hasFullQuality])
  {
    videoPlayerItem = [(PXDisplayAssetLivePhotoContentView *)self videoPlayerItem];
    v5 = videoPlayerItem != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setVideoPlayerItem:(id)item
{
  itemCopy = item;
  if (self->_videoPlayerItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_videoPlayerItem, item);
    [(PXDisplayAssetLivePhotoContentView *)self _updateLivePhotoPlayerItem];
    [(PXDisplayAssetContentView *)self isDisplayingFullQualityContentDidChange];
    itemCopy = v6;
  }
}

- (void)contentsRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetLivePhotoContentView;
  [(PXDisplayAssetContentView *)&v3 contentsRectDidChange];
  [(PXDisplayAssetContentView *)self contentsRect];
  [(ISLivePhotoUIView *)self->_livePhotoView setContentsRect:?];
}

- (void)placeholderImageFiltersDidChange
{
  v4.receiver = self;
  v4.super_class = PXDisplayAssetLivePhotoContentView;
  [(PXDisplayAssetContentView *)&v4 placeholderImageFiltersDidChange];
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Warning: PXDisplayAssetContentView placeholder image filters are not currnetly supported for Live Photos", v3, 2u);
  }
}

- (void)imageDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetLivePhotoContentView;
  [(PXDisplayAssetContentView *)&v3 imageDidChange];
  [(PXDisplayAssetLivePhotoContentView *)self _updateLivePhotoPlayerItem];
}

- (void)_handlePlayerItemResult:(id)result info:(id)info requestID:(int64_t)d
{
  resultCopy = result;
  infoCopy = info;
  v9 = [infoCopy objectForKeyedSubscript:*off_1E7722068];
  bOOLValue = [v9 BOOLValue];

  if ([(PXDisplayAssetContentView *)self requestID]== d && (bOOLValue & 1) == 0)
  {
    [(PXDisplayAssetLivePhotoContentView *)self setVideoPlayerItem:resultCopy];
    if (!resultCopy)
    {
      v11 = [infoCopy objectForKeyedSubscript:*off_1E7722070];
      [(PXDisplayAssetContentView *)self handleError:v11];
    }
  }
}

- (double)loadingProgress
{
  [(PXDisplayAssetContentView *)self imageProgress];
  v4 = v3;
  [(PXDisplayAssetLivePhotoContentView *)self playerItemLoadingProgress];
  return v5 * 0.33 + v4 * 0.67;
}

- (void)effectivePreferredImageDynamicRangeDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetLivePhotoContentView;
  [(PXDisplayAssetContentView *)&v3 effectivePreferredImageDynamicRangeDidChange];
  [(PXDisplayAssetContentView *)self effectivePreferredImageDynamicRange];
  PXPlatformImageDynamicRangeFromPXImageDynamicRange();
}

- (void)imageProgressDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetLivePhotoContentView;
  [(PXDisplayAssetContentView *)&v3 imageProgressDidChange];
  [(PXDisplayAssetContentView *)self invalidateLoadingProgress];
}

- (void)setPlayerItemLoadingProgress:(double)progress
{
  if (self->_playerItemLoadingProgress != progress)
  {
    self->_playerItemLoadingProgress = progress;
    [(PXDisplayAssetContentView *)self invalidateLoadingProgress];
  }
}

- (void)updateContent
{
  v22.receiver = self;
  v22.super_class = PXDisplayAssetLivePhotoContentView;
  [(PXDisplayAssetContentView *)&v22 updateContent];
  asset = [(PXDisplayAssetContentView *)self asset];
  mediaProvider = [(PXDisplayAssetContentView *)self mediaProvider];
  [(PXDisplayAssetContentView *)self targetSize];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (mediaProvider && asset && v5 > 0.0 && v6 > 0.0)
  {
    v7 = objc_alloc_init(PXVideoRequestOptions);
    [(PXVideoRequestOptions *)v7 setNetworkAccessAllowed:1];
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__PXDisplayAssetLivePhotoContentView_updateContent__block_invoke;
    v15[3] = &unk_1E774A490;
    objc_copyWeak(&v16, &location);
    [(PXVideoRequestOptions *)v7 setProgressHandler:v15];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __51__PXDisplayAssetLivePhotoContentView_updateContent__block_invoke_3;
    v12 = &unk_1E7735DD0;
    objc_copyWeak(&v14, &location);
    v13 = &v18;
    v8 = [mediaProvider requestPlayerItemForVideo:asset options:v7 resultHandler:&v9];
    v19[3] = v8;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PXDisplayAssetLivePhotoContentView *)self setVideoPlayerItem:0];
  }

  [(PXDisplayAssetContentView *)self setRequestID:v19[3], v9, v10, v11, v12];
  _Block_object_dispose(&v18, 8);
}

void __51__PXDisplayAssetLivePhotoContentView_updateContent__block_invoke(uint64_t a1, void *a2, double a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  objc_copyWeak(v10, (a1 + 32));
  v10[1] = *&a3;
  px_dispatch_on_main_queue();
}

void __51__PXDisplayAssetLivePhotoContentView_updateContent__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v7, (a1 + 40));
  v5;
  v6;
  px_dispatch_on_main_queue();
}

void __51__PXDisplayAssetLivePhotoContentView_updateContent__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handlePlayerItemResult:*(a1 + 32) info:*(a1 + 40) requestID:*(*(*(a1 + 48) + 8) + 24)];
}

void __51__PXDisplayAssetLivePhotoContentView_updateContent__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPlayerItemLoadingProgress:v1];
}

- (void)_updateLivePhotoContentMode
{
  contentMode = [(PXDisplayAssetLivePhotoContentView *)self contentMode];
  livePhotoView = self->_livePhotoView;

  [(ISLivePhotoUIView *)livePhotoView setContentMode:contentMode];
}

- (void)contentModeDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetLivePhotoContentView;
  [(PXDisplayAssetContentView *)&v3 contentModeDidChange];
  [(PXDisplayAssetLivePhotoContentView *)self _updateLivePhotoContentMode];
}

- (id)contentView
{
  livePhotoView = self->_livePhotoView;
  if (!livePhotoView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C1AF8]);
    v5 = self->_livePhotoView;
    self->_livePhotoView = v4;

    [(PXDisplayAssetLivePhotoContentView *)self _updateLivePhotoContentMode];
    layer = [(ISLivePhotoUIView *)self->_livePhotoView layer];
    [layer setMasksToBounds:1];

    livePhotoView = self->_livePhotoView;
  }

  return livePhotoView;
}

@end