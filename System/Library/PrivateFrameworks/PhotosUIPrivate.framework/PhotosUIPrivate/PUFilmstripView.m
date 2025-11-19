@interface PUFilmstripView
- (CGRect)visibleRect;
- (PUFilmstripMediaProvider)_mediaProvider;
- (PUFilmstripView)initWithFrame:(CGRect)a3;
- (id)_filmstripLayout;
- (id)tilingView:(id)a3 dataSourceConverterForTransitionFromLayout:(id)a4 toLayout:(id)a5;
- (id)tilingView:(id)a3 tileControllerWithIndexPath:(id)a4 kind:(id)a5 dataSource:(id)a6;
- (id)tilingView:(id)a3 tileTransitionCoordinatorForTransitionFromLayout:(id)a4 toLayout:(id)a5 withContext:(id)a6;
- (void)_invalidateDataSource;
- (void)_invalidateMediaProvider;
- (void)_releaseAVObjects;
- (void)_setThumbnailAspectRatio:(double)a3;
- (void)_updateDataSourceIfNeeded;
- (void)_updateGeneratedPlaceholderImageIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateLayoutIfNeeded;
- (void)_updateMediaProviderPlaceholderImage;
- (void)_updateThumbnailAspectRatioIfNeeded;
- (void)layoutSubviews;
- (void)reloadThumbnails;
- (void)setAsset:(id)a3 videoComposition:(id)a4;
- (void)setGeneratedPlaceholderImage:(id)a3;
- (void)setGeneratesPlaceholderImage:(BOOL)a3;
- (void)setIndicatorInfos:(id)a3;
- (void)setPlaceholderImage:(id)a3;
- (void)setUseContentAspectRatio:(BOOL)a3;
- (void)setVisibleRect:(CGRect)a3;
@end

@implementation PUFilmstripView

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)tilingView:(id)a3 dataSourceConverterForTransitionFromLayout:(id)a4 toLayout:(id)a5
{
  v6 = off_1E7B6E030;
  if (![(PUFilmstripView *)self _isMediaProviderValid:a3]&& ![(PUFilmstripView *)self preserveThumbnailsDuringReload])
  {
    v6 = off_1E7B6E5C8;
  }

  v7 = objc_alloc_init(*v6);

  return v7;
}

- (id)tilingView:(id)a3 tileTransitionCoordinatorForTransitionFromLayout:(id)a4 toLayout:(id)a5 withContext:(id)a6
{
  v6 = objc_alloc_init(PUFilmstripTileTransitionCoordinator);

  return v6;
}

- (id)tilingView:(id)a3 tileControllerWithIndexPath:(id)a4 kind:(id)a5 dataSource:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v12 isEqualToString:@"PUTileKindItemContent"])
  {
    v13 = [(PUFilmstripView *)self _dataSource];
    v14 = [v13 assetAtIndexPath:v11];

    v15 = [v10 dequeueTileControllerWithReuseIdentifier:@"PUFilmstripImageTileViewReuseIdentifier"];
    [v15 setAnimatesImageTransitions:1];
    v16 = [(PUFilmstripView *)self _mediaProvider];
    [v15 setMediaProvider:v16];

    [v15 setAsset:v14];
    goto LABEL_5;
  }

  if ([v12 isEqualToString:@"PUTileKindItemContentFilmStripIndicator"])
  {
    v15 = [v10 dequeueTileControllerWithReuseIdentifier:@"PUTileKindItemContentFilmStripIndicator"];
    v17 = [v15 view];
    v18 = [v17 layer];
    v19 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.200000003];
    [v18 setBorderColor:{objc_msgSend(v19, "CGColor")}];

    v14 = [v15 view];
    v20 = [v14 layer];
    [v20 setBorderWidth:1.0];

LABEL_5:
    if (v15)
    {
      goto LABEL_7;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"PUFilmstripView.m" lineNumber:478 description:{@"Invalid parameter not satisfying: %@", @"tileController != nil"}];

  v15 = 0;
LABEL_7:

  return v15;
}

- (id)_filmstripLayout
{
  v2 = [(PUFilmstripView *)self _tilingView];
  v3 = [v2 layout];

  return v3;
}

- (void)_updateGeneratedPlaceholderImageIfNeeded
{
  if (self->_needsUpdateGeneratedPlaceholder)
  {
    v3 = +[PUPhotoEditProtoSettings sharedInstance];
    v4 = [v3 disableVideoFilmstrip];

    if ((v4 & 1) == 0)
    {
      self->_needsUpdateGeneratedPlaceholder = 0;
      if ([(PUFilmstripView *)self generatesPlaceholderImage])
      {
        v5 = [(PUFilmstripView *)self asset];

        if (v5)
        {
          if (!self->_placeholderGenerationQueue)
          {
            v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
            v7 = dispatch_queue_create("com.apple.PUFilmstripView.placeholderGeneration", v6);
            placeholderGenerationQueue = self->_placeholderGenerationQueue;
            self->_placeholderGenerationQueue = v7;
          }

          objc_initWeak(&location, self);
          v9 = [(PUFilmstripView *)self asset];
          v10 = [(PUFilmstripView *)self videoComposition];
          [(PUFilmstripView *)self _thumbnailAspectRatio];
          [(PUFilmstripView *)self bounds];
          PFSizeWithAspectRatioFittingSize();
          v11 = self->_placeholderGenerationQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __59__PUFilmstripView__updateGeneratedPlaceholderImageIfNeeded__block_invoke;
          block[3] = &unk_1E7B77258;
          v17 = v9;
          v18 = v10;
          v20[1] = v12;
          v20[2] = v13;
          v14 = v10;
          v15 = v9;
          objc_copyWeak(v20, &location);
          v19 = self;
          dispatch_async(v11, block);
          objc_destroyWeak(v20);

          objc_destroyWeak(&location);
        }
      }

      else
      {

        [(PUFilmstripView *)self setGeneratedPlaceholderImage:0];
      }
    }
  }
}

void __59__PUFilmstripView__updateGeneratedPlaceholderImageIfNeeded__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E6987E68]) initWithAsset:*(a1 + 32)];
  [v2 setVideoComposition:*(a1 + 40)];
  [v2 setMaximumSize:{*(a1 + 64), *(a1 + 72)}];
  [v2 setAppliesPreferredTrackTransform:1];
  v3 = [v2 customVideoCompositor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 customVideoCompositor];
    [v5 setLabel:@"PUFilmstripView-updateGeneratedPlaceholderImageIfNeeded"];
  }

  v16 = 0;
  *buf = *MEMORY[0x1E6960CC0];
  *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
  v6 = [MEMORY[0x1E69C0708] copyCGImageFromImageGenerator:v2 atTime:buf actualTime:0 error:&v16];
  v7 = v16;
  if (v6)
  {
    v8 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v6];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PUFilmstripView__updateGeneratedPlaceholderImageIfNeeded__block_invoke_2;
    block[3] = &unk_1E7B80610;
    objc_copyWeak(&v15, (a1 + 56));
    v9 = v8;
    v14 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    CGImageRelease(v6);

    objc_destroyWeak(&v15);
  }

  else
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = *(a1 + 32);
      *buf = 138413058;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "%@ unable to generate placeholder image\n\tAsset: %@\n\tVideo Composition: %@\n\tError: %@", buf, 0x2Au);
    }
  }
}

void __59__PUFilmstripView__updateGeneratedPlaceholderImageIfNeeded__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setGeneratedPlaceholderImage:v1];
}

- (void)_updateMediaProviderPlaceholderImage
{
  v3 = [(PUFilmstripView *)self generatedPlaceholderImage];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PUFilmstripView *)self placeholderImage];
  }

  v6 = v5;

  [(PUFilmstripMediaProvider *)self->__mediaProvider setPlaceholderImage:v6];
}

- (void)_updateLayoutIfNeeded
{
  if (self->_needsUpdateLayout)
  {
    v23 = v2;
    v24 = v3;
    self->_needsUpdateLayout = 0;
    v5 = [(PUFilmstripView *)self _filmstripLayout];
    v6 = [(PUFilmstripView *)self _dataSource];
    v7 = [(PUTilingLayout *)v5 dataSource];

    v8 = [v6 numberOfIndexes];
    v9 = [(PUTilingLayout *)v5 dataSource];
    v10 = [v9 numberOfIndexes];

    if (v6 == v7)
    {
      v14 = v5;
    }

    else
    {
      v11 = [PUFilmstripTilingLayout alloc];
      [(PUFilmstripView *)self bounds];
      v14 = [(PUFilmstripTilingLayout *)v11 initWithDataSource:v6 contentSize:v12, v13];

      v15 = [(PUFilmstripView *)self _tilingView];
      [v15 transitionToLayout:v14];

      v16 = [(PUFilmstripView *)self _tilingView];
      [v16 layoutIfNeeded];

      if ([(PUFilmstripView *)self preserveThumbnailsDuringReload])
      {
        if (v8 == v10)
        {
          v17 = [(PUFilmstripView *)self _mediaProvider];
          v18 = [(PUFilmstripView *)self _tilingView];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __40__PUFilmstripView__updateLayoutIfNeeded__block_invoke;
          v20[3] = &unk_1E7B7A160;
          v21 = v17;
          v22 = v6;
          v19 = v17;
          [v18 enumerateAllTileControllersUsingBlock:v20];
        }
      }
    }
  }
}

void __40__PUFilmstripView__updateLayoutIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v8 presentationLayoutInfo];
    v4 = [v3 indexPath];

    v5 = *(a1 + 32);
    v6 = v8;
    [v6 setMediaProvider:v5];
    v7 = [*(a1 + 40) assetAtIndexPath:v4];
    [v6 setAsset:v7];
  }
}

- (void)_updateDataSourceIfNeeded
{
  if (self->_needsUpdateDataSource)
  {
    self->_needsUpdateDataSource = 0;
    [(PUFilmstripView *)self _thumbnailAspectRatio];
    v5 = v4;
    [(PUFilmstripView *)self bounds];
    if (v7 <= 0.0)
    {
      v8 = 0;
    }

    else
    {
      v8 = vcvtpd_s64_f64(v6 / (v5 * v7));
    }

    v9 = [PUFilmstripDataSource alloc];
    v10 = [(PUFilmstripView *)self asset];
    v11 = [(PUFilmstripView *)self indicatorInfos];
    v12 = [(PUFilmstripDataSource *)v9 initWithAsset:v10 numberOfIndexes:v8 indicatorInfos:v11];

    [(PUFilmstripView *)self _setDataSource:v12];
  }
}

- (void)_updateIfNeeded
{
  [(PUFilmstripView *)self _updateThumbnailAspectRatioIfNeeded];
  [(PUFilmstripView *)self _updateGeneratedPlaceholderImageIfNeeded];
  [(PUFilmstripView *)self _updateDataSourceIfNeeded];

  [(PUFilmstripView *)self _updateLayoutIfNeeded];
}

- (void)_invalidateDataSource
{
  self->_needsUpdateDataSource = 1;
  [(PUFilmstripView *)self _invalidateLayout];

  [(PUFilmstripView *)self _setNeedsUpdate];
}

- (void)_invalidateMediaProvider
{
  [(PUFilmstripView *)self _setMediaProvider:0];

  [(PUFilmstripView *)self _setNeedsUpdate];
}

- (void)_updateThumbnailAspectRatioIfNeeded
{
  if (self->_needsUpdateThumbnailAspectRatio)
  {
    self->_needsUpdateThumbnailAspectRatio = 0;
    v3 = +[PUScrubberSettings sharedInstance];
    [v3 filmstripAspectRatio];
    v5 = v4;

    if ([(PUFilmstripView *)self useContentAspectRatio])
    {
      v6 = [(PUFilmstripView *)self asset];
      v7 = [(PUFilmstripView *)self videoComposition];
      v8 = v7;
      if (v7)
      {
        [v7 renderSize];
        v5 = v9 / v10;
      }

      else
      {
        v11 = [v6 tracks];

        if (v11)
        {
          v12 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:v6];
          v13 = [v12 firstObject];

          [v13 naturalSize];
          v15 = v14;
          v17 = v16;
          v25 = 0u;
          v26 = 0u;
          v24 = 0u;
          if (v13)
          {
            [v13 preferredTransform];
          }

          v27.size.width = v17 * 0.0 + 0.0 * v15;
          v27.size.height = v27.size.width;
          v27.origin.x = 0.0;
          v27.origin.y = 0.0;
          v28 = CGRectStandardize(v27);
          v5 = v28.size.width / v28.size.height;
        }

        else
        {
          v18 = [(PUFilmstripView *)self placeholderImage];

          if (v18)
          {
            v19 = [(PUFilmstripView *)self placeholderImage];
            [v19 size];
            v21 = v20;
            v23 = v22;

            v5 = v21 / v23;
          }
        }
      }
    }

    [(PUFilmstripView *)self _setThumbnailAspectRatio:fabs(v5), v24, v25, v26];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PUFilmstripView;
  [(PUFilmstripView *)&v4 layoutSubviews];
  [(PUFilmstripView *)self bounds];
  v3 = [(PUFilmstripView *)self _filmstripLayout];
  [v3 contentSize];

  if ((PUSizeIsEqualToSizeWithTolerance() & 1) == 0)
  {
    self->_needsUpdateDataSource = 1;
    self->_needsUpdateLayout = 1;
  }

  [(PUFilmstripView *)self _updateIfNeeded];
}

- (void)_releaseAVObjects
{
  mediaProvider = self->__mediaProvider;
  self->__mediaProvider = 0;

  asset = self->_asset;
  self->_asset = 0;

  videoComposition = self->_videoComposition;
  self->_videoComposition = 0;
}

- (void)_setThumbnailAspectRatio:(double)a3
{
  if ((PXFloatEqualToFloatWithTolerance() & 1) == 0)
  {
    self->__thumbnailAspectRatio = a3;
    [(PUFilmstripView *)self _invalidateDataSource];

    [(PUFilmstripView *)self _invalidateGeneratedPlaceholderImage];
  }
}

- (PUFilmstripMediaProvider)_mediaProvider
{
  if (!self->__mediaProvider)
  {
    v3 = +[PUPhotoEditProtoSettings sharedInstance];
    v4 = [v3 disableVideoFilmstrip];

    if ((v4 & 1) == 0)
    {
      v5 = [PUFilmstripMediaProvider alloc];
      v6 = [(PUFilmstripView *)self asset];
      v7 = [(PUFilmstripView *)self videoComposition];
      v8 = [(PUFilmstripMediaProvider *)v5 initWithAVAsset:v6 videoComposition:v7];
      mediaProvider = self->__mediaProvider;
      self->__mediaProvider = v8;

      [(PUFilmstripMediaProvider *)self->__mediaProvider setDeliversImagesInOrder:1];
      [(PUFilmstripView *)self _updateMediaProviderPlaceholderImage];
    }
  }

  v10 = self->__mediaProvider;

  return v10;
}

- (void)setUseContentAspectRatio:(BOOL)a3
{
  if (self->_useContentAspectRatio != a3)
  {
    self->_useContentAspectRatio = a3;
    [(PUFilmstripView *)self _invalidateThumbnailAspectRatio];
  }
}

- (void)setIndicatorInfos:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_indicatorInfos] & 1) == 0)
  {
    v4 = [v6 copy];
    indicatorInfos = self->_indicatorInfos;
    self->_indicatorInfos = v4;

    [(PUFilmstripView *)self _invalidateDataSource];
  }
}

- (void)setVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_visibleRect = &self->_visibleRect;
  if (!CGRectEqualToRect(self->_visibleRect, a3))
  {
    p_visibleRect->origin.x = x;
    p_visibleRect->origin.y = y;
    p_visibleRect->size.width = width;
    p_visibleRect->size.height = height;
    [(PUFilmstripView *)self bounds];
    v13 = PUInsetsOfRectInRect(x, y, width, height, v9, v10, v11, v12);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(PUFilmstripView *)self _tilingView];
    [v20 setLoadingInsets:{v13, v15, v17, v19}];
  }
}

- (void)setGeneratedPlaceholderImage:(id)a3
{
  v5 = a3;
  if (self->_generatedPlaceholderImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_generatedPlaceholderImage, a3);
    [(PUFilmstripView *)self _updateMediaProviderPlaceholderImage];
    v5 = v6;
  }
}

- (void)setGeneratesPlaceholderImage:(BOOL)a3
{
  if (self->_generatesPlaceholderImage != a3)
  {
    self->_generatesPlaceholderImage = a3;
    [(PUFilmstripView *)self _invalidateGeneratedPlaceholderImage];
  }
}

- (void)setPlaceholderImage:(id)a3
{
  v5 = a3;
  if (self->_placeholderImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholderImage, a3);
    [(PUFilmstripView *)self _invalidateThumbnailAspectRatio];
    [(PUFilmstripView *)self _updateMediaProviderPlaceholderImage];
    v5 = v6;
  }
}

- (void)reloadThumbnails
{
  [(PUFilmstripView *)self _invalidateThumbnailAspectRatio];
  [(PUFilmstripView *)self _invalidateMediaProvider];
  [(PUFilmstripView *)self _invalidateDataSource];
  [(PUFilmstripView *)self _invalidateGeneratedPlaceholderImage];

  [(PUFilmstripView *)self _invalidateLayout];
}

- (void)setAsset:(id)a3 videoComposition:(id)a4
{
  v11 = a3;
  v7 = a4;
  asset = self->_asset;
  if (asset != v11 && ![(AVAsset *)asset isEqual:v11]|| self->_videoComposition != v7 && ([(AVVideoComposition *)v7 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_asset, a3);
    objc_storeStrong(&self->_videoComposition, a4);
    v9 = +[PUPhotoEditProtoSettings sharedInstance];
    v10 = [v9 disableVideoFilmstrip];

    if ((v10 & 1) == 0)
    {
      [(PUFilmstripView *)self reloadThumbnails];
    }
  }
}

- (PUFilmstripView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = PUFilmstripView;
  v3 = [(PUFilmstripView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(PUTileViewAnimator);
    animator = v3->_animator;
    v3->_animator = v4;

    v6 = +[PUScrubberSettings sharedInstance];
    [v6 filmstripAspectRatio];
    v3->__thumbnailAspectRatio = v7;

    v8 = [[PUFilmstripDataSource alloc] initWithAsset:0 numberOfIndexes:0 indicatorInfos:0];
    [(PUFilmstripView *)v3 _setDataSource:v8];
    v9 = [PUFilmstripTilingLayout alloc];
    v10 = [(PUFilmstripTilingLayout *)v9 initWithDataSource:v8 contentSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v11 = [PUTilingView alloc];
    [(PUFilmstripView *)v3 bounds];
    v12 = [(PUTilingView *)v11 initWithFrame:v10 layout:?];
    [(PUTilingView *)v12 setShowsHorizontalScrollIndicator:0];
    [(PUTilingView *)v12 setShowsVerticalScrollIndicator:0];
    [(PUTilingView *)v12 registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUFilmstripImageTileViewReuseIdentifier"];
    [(PUTilingView *)v12 registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUTileKindItemContentFilmStripIndicator"];
    [(PUTilingView *)v12 setTileSource:v3];
    [(PUTilingView *)v12 setTileTransitionDelegate:v3];
    [(PUTilingView *)v12 setDelegate:v3];
    [(PUTilingView *)v12 setTileAnimator:v3->_animator];
    [(PUTilingView *)v12 setClipsToBounds:0];
    [(PUTilingView *)v12 setAutoresizingMask:18];
    tilingView = v3->__tilingView;
    v3->__tilingView = v12;
    v14 = v12;

    [(PUFilmstripView *)v3 addSubview:v14];
    v15 = [MEMORY[0x1E69DC888] systemBackgroundColor];

    [(PUFilmstripView *)v3 setBackgroundColor:v15];
  }

  return v3;
}

@end