@interface PXDisplayAssetLivePhotoContentView
- (BOOL)isDisplayingFullQualityContent;
- (double)loadingProgress;
- (id)contentView;
- (void)_handlePlayerItemResult:(id)a3 info:(id)a4 requestID:(int64_t)a5;
- (void)_updateLivePhotoContentMode;
- (void)_updateLivePhotoPlayerItem;
- (void)contentModeDidChange;
- (void)contentsRectDidChange;
- (void)effectivePreferredImageDynamicRangeDidChange;
- (void)imageDidChange;
- (void)imageProgressDidChange;
- (void)imageRequesterDidChange:(unint64_t)a3;
- (void)placeholderImageFiltersDidChange;
- (void)setPlayerItemLoadingProgress:(double)a3;
- (void)setVideoPlayerItem:(id)a3;
- (void)updateContent;
- (void)viewModelDidChange:(unint64_t)a3;
@end

@implementation PXDisplayAssetLivePhotoContentView

- (void)viewModelDidChange:(unint64_t)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = PXDisplayAssetLivePhotoContentView;
  [(PXDisplayAssetContentView *)&v8 viewModelDidChange:?];
  if ((v3 & 0x10) != 0)
  {
    v5 = [(ISLivePhotoUIView *)self->_livePhotoView player];
    v6 = [(PXDisplayAssetContentView *)self viewModel];
    v7 = [v6 wantsLivePhotoPlayback];

    if (v7)
    {
      [v5 startPlaybackWithStyle:1 settleAutomatically:1];
    }

    else
    {
      [v5 stopPlayback];
    }
  }
}

- (void)imageRequesterDidChange:(unint64_t)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PXDisplayAssetLivePhotoContentView;
  [(PXDisplayAssetContentView *)&v5 imageRequesterDidChange:?];
  if ((v3 & 8) != 0)
  {
    [(PXDisplayAssetContentView *)self isDisplayingFullQualityContentDidChange];
  }
}

- (void)_updateLivePhotoPlayerItem
{
  v3 = [(PXDisplayAssetContentView *)self image];
  if (v3)
  {
    v4 = [(AVPlayerItem *)self->_videoPlayerItem asset];
    [v3 imageOrientation];
    v5 = PLExifOrientationFromImageOrientation();
    if (v4)
    {
      [v4 duration];
      v6 = vcvts_n_f32_s64(v14, 1uLL);
    }

    else
    {
      v6 = 0.0;
    }

    v7 = [objc_alloc(MEMORY[0x1E69C1AE8]) initWithVideoAsset:v4 UIImage:v3 photoTime:v5 photoEXIFOrientation:0 options:v6];
    v8 = MEMORY[0x1E69C1B00];
    [(PXDisplayAssetContentView *)self targetSize];
    v9 = [v8 playerItemWithAsset:v7 targetSize:?];
    v10 = [(AVPlayerItem *)self->_videoPlayerItem videoComposition];
    [v9 setVideoComposition:v10];

    v11 = [(ISLivePhotoUIView *)self->_livePhotoView player];
    v12 = v11;
    if (v9)
    {
      if (!v11)
      {
        v12 = objc_alloc_init(MEMORY[0x1E69C1AF0]);
        [v12 setAudioEnabled:0];
        [(ISLivePhotoUIView *)self->_livePhotoView setPlayer:v12];
      }

      v11 = v12;
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    [v11 setPlayerItem:v13];
  }

  else
  {
    v4 = [(ISLivePhotoUIView *)self->_livePhotoView player];
    [v4 setPlayerItem:0];
  }
}

- (BOOL)isDisplayingFullQualityContent
{
  v3 = [(PXDisplayAssetContentView *)self imageRequester];
  if ([v3 hasFullQuality])
  {
    v4 = [(PXDisplayAssetLivePhotoContentView *)self videoPlayerItem];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setVideoPlayerItem:(id)a3
{
  v5 = a3;
  if (self->_videoPlayerItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_videoPlayerItem, a3);
    [(PXDisplayAssetLivePhotoContentView *)self _updateLivePhotoPlayerItem];
    [(PXDisplayAssetContentView *)self isDisplayingFullQualityContentDidChange];
    v5 = v6;
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

- (void)_handlePlayerItemResult:(id)a3 info:(id)a4 requestID:(int64_t)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [v8 objectForKeyedSubscript:*off_1E7722068];
  v10 = [v9 BOOLValue];

  if ([(PXDisplayAssetContentView *)self requestID]== a5 && (v10 & 1) == 0)
  {
    [(PXDisplayAssetLivePhotoContentView *)self setVideoPlayerItem:v12];
    if (!v12)
    {
      v11 = [v8 objectForKeyedSubscript:*off_1E7722070];
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

- (void)setPlayerItemLoadingProgress:(double)a3
{
  if (self->_playerItemLoadingProgress != a3)
  {
    self->_playerItemLoadingProgress = a3;
    [(PXDisplayAssetContentView *)self invalidateLoadingProgress];
  }
}

- (void)updateContent
{
  v22.receiver = self;
  v22.super_class = PXDisplayAssetLivePhotoContentView;
  [(PXDisplayAssetContentView *)&v22 updateContent];
  v3 = [(PXDisplayAssetContentView *)self asset];
  v4 = [(PXDisplayAssetContentView *)self mediaProvider];
  [(PXDisplayAssetContentView *)self targetSize];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (v4 && v3 && v5 > 0.0 && v6 > 0.0)
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
    v8 = [v4 requestPlayerItemForVideo:v3 options:v7 resultHandler:&v9];
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
  v3 = [(PXDisplayAssetLivePhotoContentView *)self contentMode];
  livePhotoView = self->_livePhotoView;

  [(ISLivePhotoUIView *)livePhotoView setContentMode:v3];
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
    v6 = [(ISLivePhotoUIView *)self->_livePhotoView layer];
    [v6 setMasksToBounds:1];

    livePhotoView = self->_livePhotoView;
  }

  return livePhotoView;
}

@end