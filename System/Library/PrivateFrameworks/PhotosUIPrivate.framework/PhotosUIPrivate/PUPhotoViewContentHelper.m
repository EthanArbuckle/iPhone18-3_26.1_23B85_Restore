@interface PUPhotoViewContentHelper
+ (CGRect)_imageContentFrameForBounds:(CGRect)result imageSize:(CGSize)a4 fillMode:(int64_t)a5;
+ (CGSize)sizeThatFits:(CGSize)a3 imageSize:(CGSize)a4 fillMode:(int64_t)a5;
- (BOOL)isImageViewEdgeAntialiasingEnabled;
- (CGAffineTransform)imageTransform;
- (CGRect)imageContentFrame;
- (CGRect)imageContentFrameForBounds:(CGRect)a3;
- (CGRect)photoDecorationBorderViewFrameForImageContentFrame:(CGRect)a3;
- (CGSize)contentViewSizeThatFits:(CGSize)a3;
- (CGSize)customPaddingForBadgeElements;
- (CGSize)photoSize;
- (PUPhotoViewContentHelper)initWithContentView:(id)a3;
- (PUPhotoViewContentHelperDelegate)delegate;
- (PXAssetBadgeInfo)badgeInfo;
- (UIView)contentView;
- (void)_addAvalancheStackViewIfNecessary;
- (void)_invalidateAnimatedImageView;
- (void)_invalidateLoopingVideoView;
- (void)_invalidateTitleSubtitleUILabel;
- (void)_removeAvalancheStackViewIfNecessary;
- (void)_removePhotoImageViewIfNecessary;
- (void)_setAudioSession:(id)a3;
- (void)_updateAnimatedImageViewIfNeeded;
- (void)_updateBadgeView;
- (void)_updateContentViewClipsToBounds;
- (void)_updateHighlight;
- (void)_updateIfNeeded;
- (void)_updateImageView;
- (void)_updateLayerBackgroundColorIfNeeded;
- (void)_updateLayerCornerRadius;
- (void)_updateLivePhotoView;
- (void)_updateLoopingVideoViewIfNeeded;
- (void)_updatePhotoDecoration;
- (void)_updateRoundedCornersOverlayView;
- (void)_updateSubviewOrdering;
- (void)_updateTextBannerView;
- (void)_updateTitleSubtitleUILabelIfNeeded;
- (void)_updateUnderlyingImageViewDynamicRange;
- (void)animateCrossfadeToImage:(id)a3 duration:(double)a4;
- (void)layoutSubviewsOfContentView;
- (void)livePhotoView:(id)a3 willBeginPlaybackWithStyle:(int64_t)a4;
- (void)setAnimatedImage:(id)a3;
- (void)setAnimatingRoundedCorners:(BOOL)a3;
- (void)setAvoidsPhotoDecoration:(BOOL)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBadgeInfo:(PXAssetBadgeInfo *)a3;
- (void)setBadgeStyle:(int64_t)a3;
- (void)setCollectionTileLayoutTemplate:(id)a3;
- (void)setContentAlpha:(double)a3;
- (void)setCornerRadius:(double)a3;
- (void)setCornerRadius:(double)a3 cornersToRound:(unint64_t)a4 useOverlay:(BOOL)a5 overlayColor:(id)a6 continuousCorners:(BOOL)a7;
- (void)setCornersToRound:(unint64_t)a3;
- (void)setCustomPaddingForBadgeElements:(CGSize)a3;
- (void)setDarkContentOverlayAlpha:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setFeatureSpec:(id)a3;
- (void)setFillMode:(int64_t)a3;
- (void)setFlattensBadgeView:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImageTransform:(CGAffineTransform *)a3;
- (void)setImageViewEdgeAntialiasingEnabled:(BOOL)a3;
- (void)setLivePhoto:(id)a3;
- (void)setLivePhotoHidden:(BOOL)a3;
- (void)setLoopingPlaybackAllowed:(BOOL)a3;
- (void)setLoopingVideoAsset:(id)a3;
- (void)setOverlayColor:(id)a3;
- (void)setPhotoDecoration:(id)a3;
- (void)setPhotoImage:(id)a3;
- (void)setPhotoSize:(CGSize)a3;
- (void)setPlaceHolderImage:(id)a3;
- (void)setPreferredImageDynamicRange:(int64_t)a3;
- (void)setShouldPrepareForPlayback:(BOOL)a3;
- (void)setShowsLivePhoto:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setTextBannerVisible:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setTitleFontName:(id)a3;
- (void)setTransitionSnapshotView:(id)a3;
- (void)setUseOverlay:(BOOL)a3;
- (void)startPlaybackWithStyle:(int64_t)a3;
- (void)updatePhotoImageWithoutReconfiguring:(id)a3;
@end

@implementation PUPhotoViewContentHelper

- (CGSize)customPaddingForBadgeElements
{
  width = self->_customPaddingForBadgeElements.width;
  height = self->_customPaddingForBadgeElements.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXAssetBadgeInfo)badgeInfo
{
  v3 = *&self[13].duration;
  *&retstr->badges = *&self[12].fileSize;
  *&retstr->count = v3;
  return self;
}

- (PUPhotoViewContentHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)photoSize
{
  width = self->_photoSize.width;
  height = self->_photoSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)imageTransform
{
  v3 = *&self[9].d;
  *&retstr->a = *&self[9].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[9].ty;
  return self;
}

- (UIView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (void)animateCrossfadeToImage:(id)a3 duration:(double)a4
{
  v6 = a3;
  if (!self->__crossfadeImageView)
  {
    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(UIImageView *)self->_photoImageView frame];
    v8 = [v7 initWithFrame:?];
    crossfadeImageView = self->__crossfadeImageView;
    self->__crossfadeImageView = v8;

    [(PUPhotoViewContentHelper *)self _updateUnderlyingImageViewDynamicRange];
    [(UIImageView *)self->__crossfadeImageView setContentMode:[(UIImageView *)self->_photoImageView contentMode]];
    v10 = self->__crossfadeImageView;
    v11 = [(UIImageView *)self->_photoImageView backgroundColor];
    [(UIImageView *)v10 setBackgroundColor:v11];

    WeakRetained = objc_loadWeakRetained(&self->_contentView);
    [WeakRetained insertSubview:self->__crossfadeImageView belowSubview:self->_photoImageView];

    [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
  }

  [(UIImageView *)self->_photoImageView setAlpha:1.0];
  [(UIImageView *)self->__crossfadeImageView setImage:v6];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PUPhotoViewContentHelper_animateCrossfadeToImage_duration___block_invoke;
  v13[3] = &unk_1E7B80DD0;
  v13[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v13 animations:a4];
}

- (void)layoutSubviewsOfContentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  [WeakRetained bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIImageView *)self->_photoImageView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_transitionSnapshotView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_darkContentOverlay setFrame:v5, v7, v9, v11];
  [(PHLivePhotoView *)self->_livePhotoView setFrame:v5, v7, v9, v11];
  [(PXVideoPlayerView *)self->_loopingVideoView setFrame:v5, v7, v9, v11];
  [(ISAnimatedImageView *)self->_animatedImageView setFrame:v5, v7, v9, v11];
  [(PUAvalancheStackView *)self->_avalancheStackView setFrame:v5, v7, v9, v11];
  [(UIImageView *)self->__crossfadeImageView setFrame:v5, v7, v9, v11];
  [(PUPhotoViewContentHelper *)self imageContentFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  photoDecorationBorderView = self->_photoDecorationBorderView;
  if (photoDecorationBorderView && ([(PUBackgroundColorView *)photoDecorationBorderView isHidden]& 1) == 0)
  {
    [(PUPhotoViewContentHelper *)self photoDecorationBorderViewFrameForImageContentFrame:v13, v15, v17, v19];
    [(PUBackgroundColorView *)self->_photoDecorationBorderView setFrame:?];
  }

  [(PUBackgroundColorView *)self->_photoDecorationOverlayView setFrame:v13, v15, v17, v19];
  v40.origin.x = v13;
  v40.origin.y = v15;
  v40.size.width = v17;
  v40.size.height = v19;
  y = CGRectGetMaxY(v40) + -24.0;
  v22 = [(PUPhotoViewContentHelper *)self _badgeView];
  height = 24.0;
  [v22 setFrame:{v13, y, v17, 24.0}];

  textBannerView = self->_textBannerView;
  if (textBannerView && self->_isTextBannerVisible)
  {
    [(PXTextBannerView *)textBannerView sizeThatFits:v9, v11];
    if (v25 <= v17)
    {
      v41.origin.x = v13;
      v41.size.width = v17;
    }

    else
    {
      if (v9 >= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v9;
      }

      v27 = (v9 - v26) * 0.5;
      v28 = 24.0;
      v29 = y;
      v41 = CGRectIntegral(*(&v26 - 2));
      y = v41.origin.y;
      height = v41.size.height;
    }

    [(PXTextBannerView *)self->_textBannerView setFrame:v41.origin.x, y, v41.size.width, height];
  }

  v30 = [(PUPhotoViewContentHelper *)self _highlightOverlayView];
  [v30 setFrame:{v13, v15, v17, v19}];

  [(PXRoundedCornerOverlayView *)self->_roundedCornerOverlayView setFrame:v13, v15, v17, v19];
  [(PXCollectionTileLayoutTemplate *)self->_collectionTileLayoutTemplate setBounds:v13, v15, v17, v19];
  [(PXCollectionTileLayoutTemplate *)self->_collectionTileLayoutTemplate prepare];
  [(PUPhotoViewContentHelper *)self _updateIfNeeded];
  v31 = [(PUPhotoViewContentHelper *)self _titleSubtitleLabel];
  v32 = v31;
  if (v31 && ([v31 isHidden] & 1) == 0)
  {
    featureSpec = self->_featureSpec;
    v34 = PXViewSpecContextForMemoryTile();
    v35 = PXViewSpecOptionsWithTitleFontName();
    [(PXCollectionTileLayoutTemplate *)self->_collectionTileLayoutTemplate titleSubtitleRect];
    v39[0] = v34;
    v39[1] = v35;
    v39[2] = v36;
    v39[3] = v37;
    v38 = [(PXFeatureSpec *)featureSpec viewSpecWithDescriptor:v39];
    [v32 setSpec:v38];
    [(PXCollectionTileLayoutTemplate *)self->_collectionTileLayoutTemplate titleSubtitleRect];
    [v32 setFrame:?];
  }
}

- (CGSize)contentViewSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(PUPhotoViewContentHelper *)self fillMode];
  [(PUPhotoViewContentHelper *)self photoSize];
  v8 = v7;
  v10 = v9;
  v11 = objc_opt_class();

  [v11 sizeThatFits:v6 imageSize:width fillMode:{height, v8, v10}];
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_updateTitleSubtitleUILabelIfNeeded
{
  if (!self->_needsUpdateFlags.titleSubtitleUILabel)
  {
    return;
  }

  self->_needsUpdateFlags.titleSubtitleUILabel = 0;
  if (([(NSString *)self->_title length]|| [(NSString *)self->_subtitle length]) && self->_featureSpec && self->_collectionTileLayoutTemplate)
  {
    photoImage = self->_photoImage;
    v5 = [(PUPhotoViewContentHelper *)self _titleSubtitleLabel];
    if (photoImage)
    {
      if (!v5)
      {
        v6 = objc_alloc(MEMORY[0x1E69C3BB8]);
        [(PXCollectionTileLayoutTemplate *)self->_collectionTileLayoutTemplate titleSubtitleRect];
        v8 = [v6 initWithFrame:?];
        WeakRetained = objc_loadWeakRetained(&self->_contentView);
        [WeakRetained addSubview:v8];

        [(PUPhotoViewContentHelper *)self _setTitleSubtitleUILabel:v8];
        [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
        v5 = v8;
      }

      v9 = v5;
      [v5 setTitleText:self->_title];
      [v9 setSubtitleText:self->_subtitle];
      goto LABEL_13;
    }
  }

  else
  {
    v5 = [(PUPhotoViewContentHelper *)self _titleSubtitleLabel];
  }

  v9 = v5;
  [v5 removeFromSuperview];
  [(PUPhotoViewContentHelper *)self _setTitleSubtitleUILabel:0];
LABEL_13:
}

- (void)_invalidateTitleSubtitleUILabel
{
  self->_needsUpdateFlags.titleSubtitleUILabel = 1;
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  [WeakRetained setNeedsLayout];
}

- (void)_updateAnimatedImageViewIfNeeded
{
  if (self->_needsUpdateFlags.animatedImageView)
  {
    self->_needsUpdateFlags.animatedImageView = 0;
    v4 = [(PUPhotoViewContentHelper *)self animatedImage];

    animatedImageView = self->_animatedImageView;
    if (v4)
    {
      if (!animatedImageView)
      {
        v6 = objc_alloc(MEMORY[0x1E69C1AE0]);
        v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v8 = self->_animatedImageView;
        self->_animatedImageView = v7;

        [(ISAnimatedImageView *)self->_animatedImageView setContentMode:2];
        [(ISAnimatedImageView *)self->_animatedImageView setClipsToBounds:1];
        WeakRetained = objc_loadWeakRetained(&self->_contentView);
        [WeakRetained addSubview:self->_animatedImageView];

        [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
      }

      v10 = [(PUPhotoViewContentHelper *)self animatedImage];
      v11 = [v10 pf_animatedImage];
      [(ISAnimatedImageView *)self->_animatedImageView setImage:v11];

      v12 = objc_loadWeakRetained(&self->_contentView);
      [v12 bounds];
      [(ISAnimatedImageView *)self->_animatedImageView setFrame:?];

      [(ISAnimatedImageView *)self->_animatedImageView setHidden:0];
      [(ISAnimatedImageView *)self->_animatedImageView setPlaying:self->_loopingPlaybackAllowed];
    }

    else
    {
      [(ISAnimatedImageView *)animatedImageView setHidden:1];
    }

    photoImageView = self->_photoImageView;

    [(UIImageView *)photoImageView setHidden:v4 != 0];
  }
}

- (void)_invalidateAnimatedImageView
{
  self->_needsUpdateFlags.animatedImageView = 1;
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  [WeakRetained setNeedsLayout];
}

- (void)_updateLoopingVideoViewIfNeeded
{
  if (self->_needsUpdateFlags.loopingVideoView)
  {
    v34[1] = v5;
    v34[2] = v4;
    v34[7] = v2;
    v34[8] = v3;
    self->_needsUpdateFlags.loopingVideoView = 0;
    v7 = [(PUPhotoViewContentHelper *)self loopingVideoAsset];

    if (v7)
    {
      if (!self->_loopingVideoPlayer)
      {
        v8 = objc_alloc_init(MEMORY[0x1E69C1B20]);
        loopingVideoPlayer = self->_loopingVideoPlayer;
        self->_loopingVideoPlayer = v8;

        [(ISWrappedAVPlayer *)self->_loopingVideoPlayer setIsAudioEnabled:0];
        [(ISWrappedAVPlayer *)self->_loopingVideoPlayer setVolume:0.0];
        [(ISWrappedAVPlayer *)self->_loopingVideoPlayer setPreventsSleepDuringVideoPlayback:0];
        objc_initWeak(v34, self);
        v10 = dispatch_get_global_queue(2, 0);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __59__PUPhotoViewContentHelper__updateLoopingVideoViewIfNeeded__block_invoke;
        v32[3] = &unk_1E7B80638;
        objc_copyWeak(&v33, v34);
        dispatch_async(v10, v32);

        objc_destroyWeak(&v33);
        objc_destroyWeak(v34);
      }

      if (!self->_loopingVideoView)
      {
        v11 = objc_alloc(MEMORY[0x1E69C3C58]);
        WeakRetained = objc_loadWeakRetained(&self->_contentView);
        [WeakRetained bounds];
        v13 = [v11 initWithFrame:?];
        loopingVideoView = self->_loopingVideoView;
        self->_loopingVideoView = v13;

        [(PXVideoPlayerView *)self->_loopingVideoView setAlpha:0.0];
        v15 = objc_loadWeakRetained(&self->_contentView);
        [v15 addSubview:self->_loopingVideoView];

        [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
        v16 = self->_loopingVideoPlayer;
        v17 = MEMORY[0x1E69880B0];
        v18 = [(PUPhotoViewContentHelper *)self loopingVideoAsset];
        v19 = [v17 playerItemWithAsset:v18];
        [(ISWrappedAVPlayer *)v16 setLoopingEnabled:1 withTemplateItem:v19];

        [(PXVideoPlayerView *)self->_loopingVideoView setPlayer:self->_loopingVideoPlayer];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __59__PUPhotoViewContentHelper__updateLoopingVideoViewIfNeeded__block_invoke_3;
        v31[3] = &unk_1E7B80DD0;
        v31[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v31 options:0 animations:0.3 completion:0.0];
      }

      v20 = [(PUPhotoViewContentHelper *)self _audioSession];
      if (v20)
      {
        [(ISWrappedAVPlayer *)self->_loopingVideoPlayer setWrappedAudioSession:v20];
        LODWORD(v21) = 1.0;
        [(ISWrappedAVPlayer *)self->_loopingVideoPlayer setRate:v21];
      }
    }

    else
    {
      if (!self->_loopingVideoView)
      {
        return;
      }

      v22 = objc_loadWeakRetained(&self->_contentView);
      v23 = [v22 window];

      if (v23)
      {
        v20 = [(PXVideoPlayerView *)self->_loopingVideoView snapshotViewAfterScreenUpdates:0];
        v24 = objc_loadWeakRetained(&self->_contentView);
        [v24 insertSubview:v20 aboveSubview:self->_loopingVideoView];
      }

      else
      {
        v20 = 0;
      }

      [(ISWrappedAVPlayer *)self->_loopingVideoPlayer setLoopingEnabled:0];
      [(PXVideoPlayerView *)self->_loopingVideoView removeFromSuperview];
      v25 = self->_loopingVideoView;
      self->_loopingVideoView = 0;

      if (v20)
      {
        v26 = MEMORY[0x1E69DD250];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __59__PUPhotoViewContentHelper__updateLoopingVideoViewIfNeeded__block_invoke_4;
        v29[3] = &unk_1E7B80DD0;
        v30 = v20;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __59__PUPhotoViewContentHelper__updateLoopingVideoViewIfNeeded__block_invoke_5;
        v27[3] = &unk_1E7B7F020;
        v20 = v30;
        v28 = v20;
        [v26 animateWithDuration:2 delay:v29 options:v27 animations:0.3 completion:0.0];
      }
    }
  }
}

void __59__PUPhotoViewContentHelper__updateLoopingVideoViewIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C1B18] sharedAmbientInstance];
  objc_copyWeak(&v4, (a1 + 32));
  v3 = v2;
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v4);
}

void __59__PUPhotoViewContentHelper__updateLoopingVideoViewIfNeeded__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setAudioSession:v1];
}

- (void)_invalidateLoopingVideoView
{
  self->_needsUpdateFlags.loopingVideoView = 1;
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  [WeakRetained setNeedsLayout];
}

- (void)_setAudioSession:(id)a3
{
  v5 = a3;
  if (self->__audioSession != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__audioSession, a3);
    [(PUPhotoViewContentHelper *)self _invalidateLoopingVideoView];
    v5 = v6;
  }
}

- (void)setSubtitle:(id)a3
{
  v5 = a3;
  if (self->_subtitle != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_subtitle, a3);
    [(PUPhotoViewContentHelper *)self _invalidateTitleSubtitleUILabel];
    v5 = v6;
  }
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (self->_title != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_title, a3);
    [(PUPhotoViewContentHelper *)self _invalidateTitleSubtitleUILabel];
    v5 = v6;
  }
}

- (void)setTitleFontName:(id)a3
{
  v5 = a3;
  if (self->_titleFontName != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_titleFontName, a3);
    [(PUPhotoViewContentHelper *)self _invalidateTitleSubtitleUILabel];
    v5 = v6;
  }
}

- (void)setCollectionTileLayoutTemplate:(id)a3
{
  v5 = a3;
  if (self->_collectionTileLayoutTemplate != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_collectionTileLayoutTemplate, a3);
    [(PUPhotoViewContentHelper *)self _invalidateTitleSubtitleUILabel];
    v5 = v6;
  }
}

- (void)setFeatureSpec:(id)a3
{
  v5 = a3;
  p_featureSpec = &self->_featureSpec;
  if (self->_featureSpec != v5)
  {
    v7 = v5;
    objc_storeStrong(p_featureSpec, a3);
    p_featureSpec = [(PUPhotoViewContentHelper *)self _invalidateTitleSubtitleUILabel];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_featureSpec, v5);
}

- (void)_updateHighlight
{
  v3 = [(PUPhotoViewContentHelper *)self isHighlighted];
  v4 = [(PUPhotoViewContentHelper *)self _highlightOverlayView];
  if (v3 && !v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    WeakRetained = objc_loadWeakRetained(&self->_contentView);
    [WeakRetained bounds];
    v9 = [v5 initWithFrame:?];

    [v9 setUserInteractionEnabled:0];
    v7 = [MEMORY[0x1E69DC888] labelColor];
    [v9 setBackgroundColor:v7];

    [v9 setAlpha:0.5];
    v8 = objc_loadWeakRetained(&self->_contentView);
    [v8 addSubview:v9];

    [(PUPhotoViewContentHelper *)self _setHighlightOverlayView:v9];
    [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
    v4 = v9;
  }

  v10 = v4;
  [v4 setHidden:!v3];
}

- (void)_updateRoundedCornersOverlayView
{
  if (self->_cornerRadius > 0.0 && self->_useOverlay)
  {
    overlayColor = self->_overlayColor;
    v4 = [(PUPhotoViewContentHelper *)self roundedCornerOverlayView];
    v5 = v4;
    if (overlayColor)
    {
      if (!v4)
      {
        v5 = objc_alloc_init(MEMORY[0x1E69C3978]);
        WeakRetained = objc_loadWeakRetained(&self->_contentView);
        [WeakRetained addSubview:v5];

        [(PUPhotoViewContentHelper *)self setRoundedCornerOverlayView:v5];
        [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __60__PUPhotoViewContentHelper__updateRoundedCornersOverlayView__block_invoke;
      v7[3] = &unk_1E7B7C3C0;
      v7[4] = self;
      [v5 performChanges:v7];
      goto LABEL_10;
    }
  }

  else
  {
    v5 = [(PUPhotoViewContentHelper *)self roundedCornerOverlayView];
  }

  if (!v5)
  {
    return;
  }

  [v5 removeFromSuperview];
  [(PUPhotoViewContentHelper *)self setRoundedCornerOverlayView:0];
LABEL_10:
}

void __60__PUPhotoViewContentHelper__updateRoundedCornersOverlayView__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 cornerRadius];
  [v5 setCornerRadius:?];
  [v5 setCornersToRound:{objc_msgSend(*(a1 + 32), "cornersToRound")}];
  v4 = [*(a1 + 32) overlayColor];
  [v5 setOverlayColor:v4];

  [v5 setContinuousCorners:{objc_msgSend(*(a1 + 32), "continuousCorners")}];
  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  [v5 setDisplayScale:*&PUMainScreenScale_screenScale];
}

- (void)_updateLayerCornerRadius
{
  v7 = [(PUPhotoViewContentHelper *)self contentView];
  v3 = [v7 layer];
  v4 = 0.0;
  if (!self->_useOverlay)
  {
    [(PUPhotoViewContentHelper *)self cornerRadius];
    v4 = v5;
  }

  [v3 cornerRadius];
  if (v6 != v4)
  {
    [v3 setCornerRadius:v4];
    [v3 setCornerCurve:*MEMORY[0x1E69796E8]];
    [(PUPhotoViewContentHelper *)self _updateContentViewClipsToBounds];
    [v7 setNeedsLayout];
  }
}

- (void)_updatePhotoDecoration
{
  v28 = [(PUPhotoViewContentHelper *)self photoDecoration];
  v3 = [(PUPhotoViewContentHelper *)self avoidsPhotoDecoration];
  if (v3)
  {
    photoDecorationBorderView = self->_photoDecorationBorderView;
    if (photoDecorationBorderView)
    {
      [(PUBackgroundColorView *)photoDecorationBorderView removeFromSuperview];
      v5 = 0;
      WeakRetained = self->_photoDecorationBorderView;
      self->_photoDecorationBorderView = 0;
LABEL_13:
      v13 = !v3;

      v14 = 1;
      goto LABEL_14;
    }

    v5 = 0;
LABEL_8:
    v13 = 0;
    v14 = 0;
LABEL_14:
    v12 = v28;
    goto LABEL_15;
  }

  [v28 borderWidth];
  v8 = v7;
  v9 = [v28 foregroundColor];
  if (v9)
  {
    v10 = v9;
    v11 = [v28 foregroundColor];
    v5 = CGColorGetAlpha([v11 CGColor]) > 0.0;

    if (v8 <= 0.0)
    {
      goto LABEL_8;
    }

    v12 = v28;
  }

  else
  {
    v5 = 0;
    v13 = 0;
    v14 = 0;
    v12 = v28;
    if (v8 <= 0.0)
    {
      goto LABEL_15;
    }
  }

  if (!self->_photoDecorationBorderView)
  {
    v15 = objc_alloc_init(PUBackgroundColorView);
    v16 = self->_photoDecorationBorderView;
    self->_photoDecorationBorderView = v15;

    WeakRetained = objc_loadWeakRetained(&self->_contentView);
    [WeakRetained addSubview:self->_photoDecorationBorderView];
    goto LABEL_13;
  }

  v14 = 0;
  v13 = 1;
LABEL_15:
  v17 = self->_photoDecorationBorderView;
  v18 = [v12 borderColor];
  [(PUBackgroundColorView *)v17 _puSetBackgroundColor:v18];

  if (v5 && !self->_photoDecorationOverlayView)
  {
    v21 = objc_alloc_init(PUBackgroundColorView);
    photoDecorationOverlayView = self->_photoDecorationOverlayView;
    self->_photoDecorationOverlayView = v21;

    v20 = objc_loadWeakRetained(&self->_contentView);
    [v20 addSubview:self->_photoDecorationOverlayView];
    goto LABEL_21;
  }

  if (v3)
  {
    v19 = self->_photoDecorationOverlayView;
    if (v19)
    {
      [(PUBackgroundColorView *)v19 removeFromSuperview];
      v20 = self->_photoDecorationOverlayView;
      self->_photoDecorationOverlayView = 0;
LABEL_21:

      v14 = 1;
    }
  }

  v23 = self->_photoDecorationOverlayView;
  v24 = [v28 foregroundColor];
  [(PUBackgroundColorView *)v23 _puSetBackgroundColor:v24];

  v25 = self->_photoDecorationBorderView;
  if (v25 && v13 == [(PUBackgroundColorView *)v25 isHidden])
  {
    [(PUBackgroundColorView *)self->_photoDecorationBorderView setHidden:v13 ^ 1u];
    v14 = 1;
  }

  v26 = self->_photoDecorationOverlayView;
  if (v26 && v5 == [(PUBackgroundColorView *)v26 isHidden])
  {
    [(PUBackgroundColorView *)self->_photoDecorationOverlayView setHidden:v5 ^ 1u];
    goto LABEL_30;
  }

  if (v14)
  {
LABEL_30:
    [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
    [(PUPhotoViewContentHelper *)self _updateImageView];
    v27 = objc_loadWeakRetained(&self->_contentView);
    [v27 setNeedsLayout];
  }
}

- (void)_updateBadgeView
{
  v10 = 0u;
  v11 = 0u;
  [(PUPhotoViewContentHelper *)self badgeInfo];
  v3 = [(PUPhotoViewContentHelper *)self flattensBadgeView];
  IsNull = PXAssetBadgeInfoIsNull();
  v5 = [(PUPhotoViewContentHelper *)self _badgeView:0];
  if (IsNull)
  {
    goto LABEL_9;
  }

  v6 = objc_opt_class();
  if ((v3 ^ (v6 != objc_opt_class())))
  {
    if (v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [v5 removeFromSuperview];
  }

  v5 = objc_alloc_init(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  [WeakRetained addSubview:v5];

  [(PUPhotoViewContentHelper *)self _setBadgeView:v5];
  [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
LABEL_7:
  v9[0] = v10;
  v9[1] = v11;
  [v5 setBadgeInfo:v9];
  [v5 setStyle:{-[PUPhotoViewContentHelper badgeStyle](self, "badgeStyle")}];
  [(PUPhotoViewContentHelper *)self customPaddingForBadgeElements];
  if ((PXSizeIsNull() & 1) == 0)
  {
    [(PUPhotoViewContentHelper *)self customPaddingForBadgeElements];
    [v5 setBottomElementsPadding:?];
  }

LABEL_9:
  [v5 setHidden:IsNull];
  v8 = objc_loadWeakRetained(&self->_contentView);
  [v8 setNeedsLayout];
}

- (void)_updateIfNeeded
{
  if ([(PUPhotoViewContentHelper *)self _needsUpdate])
  {
    [(PUPhotoViewContentHelper *)self _updateTitleSubtitleUILabelIfNeeded];
    [(PUPhotoViewContentHelper *)self _updateLoopingVideoViewIfNeeded];
    [(PUPhotoViewContentHelper *)self _updateAnimatedImageViewIfNeeded];
    if ([(PUPhotoViewContentHelper *)self _needsUpdate])
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PUPhotoView.m" lineNumber:886 description:{@"%@: update still needed at end of update pass", self}];
    }
  }
}

- (void)_updateTextBannerView
{
  isTextBannerVisible = self->_isTextBannerVisible;
  textBannerView = self->_textBannerView;
  if (isTextBannerVisible)
  {
    if (!textBannerView)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69C3B90]);
      v6 = self->_textBannerView;
      self->_textBannerView = v5;

      textBannerView = self->_textBannerView;
    }

    v7 = [(PXTextBannerView *)textBannerView superview];

    if (!v7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_contentView);
      [WeakRetained addSubview:self->_textBannerView];

      [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
    }
  }

  else
  {
    [(PXTextBannerView *)textBannerView removeFromSuperview];
  }

  v9 = objc_loadWeakRetained(&self->_contentView);
  [v9 setNeedsLayout];
}

- (void)_updateSubviewOrdering
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  [WeakRetained bringSubviewToFront:self->_avalancheStackView];

  v4 = objc_loadWeakRetained(&self->_contentView);
  [v4 bringSubviewToFront:self->_photoDecorationBorderView];

  v5 = objc_loadWeakRetained(&self->_contentView);
  [v5 bringSubviewToFront:self->__crossfadeImageView];

  v6 = objc_loadWeakRetained(&self->_contentView);
  [v6 bringSubviewToFront:self->_photoImageView];

  v7 = objc_loadWeakRetained(&self->_contentView);
  [v7 bringSubviewToFront:self->_livePhotoView];

  v8 = objc_loadWeakRetained(&self->_contentView);
  [v8 bringSubviewToFront:self->_loopingVideoView];

  v9 = objc_loadWeakRetained(&self->_contentView);
  [v9 bringSubviewToFront:self->_animatedImageView];

  v10 = objc_loadWeakRetained(&self->_contentView);
  [v10 bringSubviewToFront:self->_photoDecorationOverlayView];

  v11 = objc_loadWeakRetained(&self->_contentView);
  [v11 bringSubviewToFront:self->__badgeView];

  v12 = objc_loadWeakRetained(&self->_contentView);
  [v12 bringSubviewToFront:self->_textBannerView];

  v13 = objc_loadWeakRetained(&self->_contentView);
  [v13 bringSubviewToFront:self->__titleSubtitleLabel];

  v14 = objc_loadWeakRetained(&self->_contentView);
  [v14 bringSubviewToFront:self->__highlightOverlayView];

  v15 = objc_loadWeakRetained(&self->_contentView);
  [v15 bringSubviewToFront:self->_roundedCornerOverlayView];
}

- (void)_updateContentViewClipsToBounds
{
  if ((self->_photoImageView || self->_avalancheStackView) && ![(PUPhotoViewContentHelper *)self isAnimatingRoundedCorners])
  {
    [(PUPhotoViewContentHelper *)self cornerRadius];
    v3 = v4 != 0.0;
  }

  else
  {
    v3 = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  v6 = [WeakRetained clipsToBounds];

  if (v3 != v6)
  {
    v7 = objc_loadWeakRetained(&self->_contentView);
    [v7 setClipsToBounds:v3];
  }
}

- (void)_updateLayerBackgroundColorIfNeeded
{
  if (self->_hasLayerBackgroundColor)
  {
    WeakRetained = objc_loadWeakRetained(&self->_contentView);
    v9 = [WeakRetained layer];

    v5 = [(PUPhotoViewContentHelper *)self backgroundColor];
    layerDefaultBackgroundColor = v5;
    if (!v5)
    {
      layerDefaultBackgroundColor = self->_layerDefaultBackgroundColor;
    }

    v7 = layerDefaultBackgroundColor;

    v8 = [(UIColor *)v7 CGColor];
    [v9 setBackgroundColor:v8];
  }
}

- (void)_updateUnderlyingImageViewDynamicRange
{
  [(UIImageView *)self->_photoImageView setPreferredImageDynamicRange:[(PUPhotoViewContentHelper *)self preferredImageDynamicRange]];
  v3 = [(PUPhotoViewContentHelper *)self preferredImageDynamicRange];
  crossfadeImageView = self->__crossfadeImageView;

  [(UIImageView *)crossfadeImageView setPreferredImageDynamicRange:v3];
}

- (void)_updateImageView
{
  if (!self->_avoidsImageViewIfPossible || self->_hasTransform || (photoDecorationBorderView = self->_photoDecorationBorderView) != 0 && ![(PUBackgroundColorView *)photoDecorationBorderView isHidden])
  {
    v5 = 1;
  }

  else
  {
    photoDecorationOverlayView = self->_photoDecorationOverlayView;
    if (photoDecorationOverlayView)
    {
      v5 = [(PUBackgroundColorView *)photoDecorationOverlayView isHidden]^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  photoImage = self->_photoImage;
  if (!photoImage)
  {
    photoImage = self->_placeHolderImage;
  }

  v38 = photoImage;
  if (self->_photoImage)
  {
    placeHolderImage = self->_placeHolderImage;
    if (placeHolderImage)
    {
      self->_placeHolderImage = 0;
    }
  }

  self->_hasLayerBackgroundColor = 0;
  if (v5)
  {
    [(PUPhotoViewContentHelper *)self _removeAvalancheStackViewIfNecessary];
    if (!self->_photoImageView)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      [(PUPhotoViewContentHelper *)self setPhotoImageView:v8];
      [(PUPhotoViewContentHelper *)self _updateUnderlyingImageViewDynamicRange];
      [v8 setClipsToBounds:1];
      v9 = [v8 layer];
      [v9 setAllowsGroupOpacity:0];

      WeakRetained = objc_loadWeakRetained(&self->_contentView);
      [WeakRetained addSubview:v8];

      v11 = objc_loadWeakRetained(&self->_contentView);
      [v11 layoutIfNeeded];

      [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
    }

    [(PUPhotoViewContentHelper *)self _updateContentViewClipsToBounds];
    v12 = objc_loadWeakRetained(&self->_contentView);
    v13 = [v12 layer];
    [v13 setContents:0];

    v14 = objc_loadWeakRetained(&self->_contentView);
    v15 = [v14 layer];
    [v15 setBackgroundColor:0];

    [(UIImageView *)self->_photoImageView setImage:v38];
    photoImageView = self->_photoImageView;
    v17 = [(PUPhotoViewContentHelper *)self backgroundColor];
    [(UIImageView *)photoImageView setBackgroundColor:v17];

    v18 = self->_photoImageView;
    [(PUPhotoViewContentHelper *)self contentAlpha];
    [(UIImageView *)v18 setAlpha:?];
    if (self->_transitionSnapshotView)
    {
      [(UIImageView *)self->_photoImageView bounds];
      [(UIView *)self->_transitionSnapshotView setFrame:?];
      [(UIImageView *)self->_photoImageView addSubview:self->_transitionSnapshotView];
    }

    [(PUPhotoViewContentHelper *)self darkContentOverlayAlpha];
    if (v19 > 0.0 && !self->_darkContentOverlay)
    {
      v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
      darkContentOverlay = self->_darkContentOverlay;
      self->_darkContentOverlay = v20;

      v22 = self->_darkContentOverlay;
      v23 = [MEMORY[0x1E69DC888] blackColor];
      [(UIView *)v22 setBackgroundColor:v23];

      v24 = objc_loadWeakRetained(&self->_contentView);
      [v24 addSubview:self->_darkContentOverlay];
    }

    [(PUPhotoViewContentHelper *)self darkContentOverlayAlpha];
    [(UIView *)self->_darkContentOverlay setAlpha:?];
    fillMode = self->_fillMode;
    if (fillMode > 2)
    {
      v26 = 0;
    }

    else
    {
      v26 = qword_1B3D0D4B0[fillMode];
    }

    [(UIView *)self->_transitionSnapshotView setContentMode:v26];
    [(UIImageView *)self->_photoImageView setContentMode:v26];
    [(UIImageView *)self->__crossfadeImageView setContentMode:v26];
  }

  else
  {
    v27 = [(PUPhotoViewContentHelper *)self needsAvalancheStack];
    [(PUPhotoViewContentHelper *)self _removePhotoImageViewIfNecessary];
    if (v27)
    {
      [(PUPhotoViewContentHelper *)self _addAvalancheStackViewIfNecessary];
      [(PUPhotoViewContentHelper *)self _updateContentViewClipsToBounds];
      v28 = objc_loadWeakRetained(&self->_contentView);
      v29 = [v28 layer];
      [v29 setContents:0];

      v30 = objc_loadWeakRetained(&self->_contentView);
      v31 = [v30 layer];
      [v31 setBackgroundColor:0];

      [(PUAvalancheStackView *)self->_avalancheStackView setImage:v38];
      avalancheStackView = self->_avalancheStackView;
      v33 = [(PUPhotoViewContentHelper *)self backgroundColor];
      [(PUAvalancheStackView *)avalancheStackView setBackgroundColor:v33];
    }

    else
    {
      [(PUPhotoViewContentHelper *)self _removeAvalancheStackViewIfNecessary];
      [(PUPhotoViewContentHelper *)self _updateContentViewClipsToBounds];
      v34 = objc_loadWeakRetained(&self->_contentView);
      v35 = [v34 layer];

      [v35 setContents:{-[UIImage CGImage](v38, "CGImage")}];
      if (PUMainScreenScale_onceToken != -1)
      {
        dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
      }

      [v35 setContentsScale:*&PUMainScreenScale_screenScale];
      self->_hasLayerBackgroundColor = 1;
      [(PUPhotoViewContentHelper *)self _updateLayerBackgroundColorIfNeeded];
      v36 = self->_fillMode;
      if (v36 > 2)
      {
        v37 = 0;
      }

      else
      {
        v37 = **(&unk_1E7B7C3E0 + v36);
      }

      [v35 setContentsGravity:v37];
    }
  }
}

- (void)_updateLivePhotoView
{
  showsLivePhoto = self->_showsLivePhoto;
  livePhotoView = self->_livePhotoView;
  if (showsLivePhoto)
  {
    if (!livePhotoView)
    {
      v6 = objc_alloc(MEMORY[0x1E69790D8]);
      WeakRetained = objc_loadWeakRetained(&self->_contentView);
      [WeakRetained bounds];
      v8 = [v6 initWithFrame:?];
      v9 = self->_livePhotoView;
      self->_livePhotoView = v8;

      v10 = objc_loadWeakRetained(&self->_contentView);
      [v10 addSubview:self->_livePhotoView];

      [(PHLivePhotoView *)self->_livePhotoView setDelegate:self];
      [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
      v11 = objc_loadWeakRetained(&self->_contentView);
      [v11 setNeedsLayout];

      [(PUPhotoViewContentHelper *)self _updateLivePhotoViewVisibility];
      [(PUPhotoViewContentHelper *)self _updateLivePhotoViewPreparing];
    }

    fillMode = self->_fillMode;
    if (fillMode > 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = qword_1B3D0D4B0[fillMode];
    }

    [(PHLivePhotoView *)self->_livePhotoView setContentMode:v13];
    [(PHLivePhotoView *)self->_livePhotoView setLivePhoto:self->_livePhoto];
    if (self->_hasPendingPlaybackRequest)
    {
      self->_hasPendingPlaybackRequest = 0;
      if (!self->_pendingPlaybackRequestStyle)
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        [v15 handleFailureInMethod:a2 object:self file:@"PUPhotoView.m" lineNumber:695 description:@"Trying to start playback with PHLivePhotoViewPlaybackStyleUndefined"];
      }

      [(PUPhotoViewContentHelper *)self startPlaybackWithStyle:?];
    }
  }

  else
  {
    [(PHLivePhotoView *)livePhotoView removeFromSuperview];
    v14 = self->_livePhotoView;
    self->_livePhotoView = 0;
  }
}

- (void)_removeAvalancheStackViewIfNecessary
{
  avalancheStackView = self->_avalancheStackView;
  if (avalancheStackView)
  {
    [(PUAvalancheStackView *)avalancheStackView removeFromSuperview];

    [(PUPhotoViewContentHelper *)self setAvalancheStackView:0];
  }
}

- (void)_addAvalancheStackViewIfNecessary
{
  if (!self->_avalancheStackView)
  {
    v4 = objc_alloc_init(PUAvalancheStackView);
    avalancheStackView = self->_avalancheStackView;
    self->_avalancheStackView = v4;

    [(PUAvalancheStackView *)self->_avalancheStackView setContentMode:[(PUPhotoViewContentHelper *)self fillMode]];
    v6 = [(PUPhotoViewContentHelper *)self avalancheStackBackgroundColor];
    v7 = [(PUAvalancheStackView *)self->_avalancheStackView layer];
    [v7 setBackgroundColor:v6];

    WeakRetained = objc_loadWeakRetained(&self->_contentView);
    [WeakRetained addSubview:self->_avalancheStackView];

    [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
    v9 = objc_loadWeakRetained(&self->_contentView);
    [v9 setNeedsLayout];
  }
}

- (void)_removePhotoImageViewIfNecessary
{
  photoImageView = self->_photoImageView;
  if (photoImageView)
  {
    [(UIImageView *)photoImageView removeFromSuperview];

    [(PUPhotoViewContentHelper *)self setPhotoImageView:0];
  }
}

- (void)livePhotoView:(id)a3 willBeginPlaybackWithStyle:(int64_t)a4
{
  if (self->_delegateFlags.respondsToLivePhotoWillBeginPlaybackWithStyle)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained photoViewContentHelper:self livePhotoWillBeginPlaybackWithStyle:a4];
  }
}

- (void)setLoopingPlaybackAllowed:(BOOL)a3
{
  if (self->_loopingPlaybackAllowed != a3)
  {
    self->_loopingPlaybackAllowed = a3;
    [(PUPhotoViewContentHelper *)self _invalidateAnimatedImageView];
  }
}

- (void)setAnimatedImage:(id)a3
{
  v5 = a3;
  p_animatedImage = &self->_animatedImage;
  if (self->_animatedImage != v5)
  {
    v7 = v5;
    objc_storeStrong(p_animatedImage, a3);
    p_animatedImage = [(PUPhotoViewContentHelper *)self _invalidateAnimatedImageView];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_animatedImage, v5);
}

- (void)setLoopingVideoAsset:(id)a3
{
  if (self->_loopingVideoAsset != a3)
  {
    v5 = [a3 copy];
    loopingVideoAsset = self->_loopingVideoAsset;
    self->_loopingVideoAsset = v5;

    [(PUPhotoViewContentHelper *)self _invalidateLoopingVideoView];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToLivePhotoWillBeginPlaybackWithStyle = objc_opt_respondsToSelector() & 1;
  }
}

- (void)startPlaybackWithStyle:(int64_t)a3
{
  if (self->_livePhotoView)
  {
    [(PUPhotoViewContentHelper *)self setShouldPrepareForPlayback:1];
    livePhotoView = self->_livePhotoView;

    [(PHLivePhotoView *)livePhotoView startPlaybackWithStyle:a3];
  }

  else
  {

    [(PUPhotoViewContentHelper *)self _startPlaybackWhenLivePhotoAvailableWithStyle:?];
  }
}

- (void)setLivePhoto:(id)a3
{
  v5 = a3;
  livePhoto = self->_livePhoto;
  if (livePhoto != v5)
  {
    v7 = v5;
    livePhoto = [livePhoto isEqual:v5];
    v5 = v7;
    if ((livePhoto & 1) == 0)
    {
      objc_storeStrong(&self->_livePhoto, a3);
      livePhoto = [(PUPhotoViewContentHelper *)self _updateLivePhotoView];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](livePhoto, v5);
}

- (void)setShowsLivePhoto:(BOOL)a3
{
  if (self->_showsLivePhoto != a3)
  {
    self->_showsLivePhoto = a3;
    [(PUPhotoViewContentHelper *)self _updateLivePhotoView];
  }
}

- (void)setShouldPrepareForPlayback:(BOOL)a3
{
  if (self->_shouldPrepareForPlayback != a3)
  {
    self->_shouldPrepareForPlayback = a3;
    [(PUPhotoViewContentHelper *)self _updateLivePhotoViewPreparing];
  }
}

- (void)setLivePhotoHidden:(BOOL)a3
{
  if (self->_livePhotoHidden != a3)
  {
    self->_livePhotoHidden = a3;
    [(PUPhotoViewContentHelper *)self _updateLivePhotoViewVisibility];
  }
}

- (void)setDarkContentOverlayAlpha:(double)a3
{
  if (self->_darkContentOverlayAlpha != a3)
  {
    self->_darkContentOverlayAlpha = a3;
    [(PUPhotoViewContentHelper *)self _updateImageView];
  }
}

- (void)setContentAlpha:(double)a3
{
  if (self->_contentAlpha != a3)
  {
    self->_contentAlpha = a3;
    [(PUPhotoViewContentHelper *)self _updateImageView];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  p_backgroundColor = &self->_backgroundColor;
  if (self->_backgroundColor != v5)
  {
    v7 = v5;
    objc_storeStrong(p_backgroundColor, a3);
    p_backgroundColor = [(PUPhotoViewContentHelper *)self _updateImageView];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_backgroundColor, v5);
}

- (void)setCornerRadius:(double)a3 cornersToRound:(unint64_t)a4 useOverlay:(BOOL)a5 overlayColor:(id)a6 continuousCorners:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v13 = a6;
  if (self->_cornerRadius != a3 || self->_cornersToRound != a4 || self->_useOverlay != v9 || self->_overlayColor != v13 || self->_continuousCorners != v7)
  {
    self->_cornerRadius = a3;
    self->_cornersToRound = a4;
    self->_useOverlay = v9;
    v14 = v13;
    objc_storeStrong(&self->_overlayColor, a6);
    self->_continuousCorners = v7;
    [(PUPhotoViewContentHelper *)self _updateLayerCornerRadius];
    [(PUPhotoViewContentHelper *)self _updateRoundedCornersOverlayView];
    v13 = v14;
  }
}

- (void)setOverlayColor:(id)a3
{
  v5 = a3;
  [(PUPhotoViewContentHelper *)self cornerRadius];
  [(PUPhotoViewContentHelper *)self setCornerRadius:[(PUPhotoViewContentHelper *)self cornersToRound] cornersToRound:[(PUPhotoViewContentHelper *)self useOverlay] useOverlay:v5 overlayColor:1 continuousCorners:v4];
}

- (void)setUseOverlay:(BOOL)a3
{
  v3 = a3;
  [(PUPhotoViewContentHelper *)self cornerRadius];
  v6 = v5;
  v7 = [(PUPhotoViewContentHelper *)self cornersToRound];
  v8 = [(PUPhotoViewContentHelper *)self overlayColor];
  [(PUPhotoViewContentHelper *)self setCornerRadius:v7 cornersToRound:v3 useOverlay:v8 overlayColor:1 continuousCorners:v6];
}

- (void)setCornersToRound:(unint64_t)a3
{
  [(PUPhotoViewContentHelper *)self cornerRadius];
  v6 = v5;
  v7 = [(PUPhotoViewContentHelper *)self useOverlay];
  v8 = [(PUPhotoViewContentHelper *)self overlayColor];
  [(PUPhotoViewContentHelper *)self setCornerRadius:a3 cornersToRound:v7 useOverlay:v8 overlayColor:1 continuousCorners:v6];
}

- (void)setCornerRadius:(double)a3
{
  v5 = [(PUPhotoViewContentHelper *)self cornersToRound];
  v6 = [(PUPhotoViewContentHelper *)self overlayColor];
  [(PUPhotoViewContentHelper *)self setCornerRadius:v5 cornersToRound:0 useOverlay:v6 overlayColor:1 continuousCorners:a3];
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(PUPhotoViewContentHelper *)self _updateHighlight];
  }
}

- (void)setAnimatingRoundedCorners:(BOOL)a3
{
  if (self->_animatingRoundedCorners != a3)
  {
    self->_animatingRoundedCorners = a3;
    [(PUPhotoViewContentHelper *)self _updateContentViewClipsToBounds];
  }
}

- (void)setAvoidsPhotoDecoration:(BOOL)a3
{
  if (self->_avoidsPhotoDecoration != a3)
  {
    self->_avoidsPhotoDecoration = a3;
    [(PUPhotoViewContentHelper *)self _updatePhotoDecoration];
  }
}

- (void)setFlattensBadgeView:(BOOL)a3
{
  if (self->_flattensBadgeView != a3)
  {
    self->_flattensBadgeView = a3;
    [(PUPhotoViewContentHelper *)self _invalidateBadgeView];
  }
}

- (void)setImageViewEdgeAntialiasingEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPhotoViewContentHelper *)self photoImageView];
  v4 = [v5 layer];
  [v4 setAllowsEdgeAntialiasing:v3];
}

- (BOOL)isImageViewEdgeAntialiasingEnabled
{
  v2 = [(PUPhotoViewContentHelper *)self photoImageView];
  v3 = [v2 layer];
  v4 = [v3 allowsEdgeAntialiasing];

  return v4;
}

- (void)setPhotoDecoration:(id)a3
{
  v4 = a3;
  photoDecoration = self->_photoDecoration;
  if (photoDecoration != v4)
  {
    v8 = v4;
    photoDecoration = [photoDecoration isEqual:v4];
    v4 = v8;
    if ((photoDecoration & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_photoDecoration;
      self->_photoDecoration = v6;

      photoDecoration = [(PUPhotoViewContentHelper *)self _updatePhotoDecoration];
      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](photoDecoration, v4);
}

- (void)updatePhotoImageWithoutReconfiguring:(id)a3
{
  v5 = a3;
  if (self->_photoImage != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_photoImage, a3);
    photoImageView = self->_photoImageView;
    if (photoImageView)
    {
      [(UIImageView *)photoImageView setImage:self->_photoImage];
    }

    else if ([(PUPhotoViewContentHelper *)self needsAvalancheStack])
    {
      [(PUPhotoViewContentHelper *)self _addAvalancheStackViewIfNecessary];
      [(PUAvalancheStackView *)self->_avalancheStackView setImage:self->_photoImage];
      WeakRetained = objc_loadWeakRetained(&self->_contentView);
      v8 = [WeakRetained layer];
      [v8 setContents:0];
    }

    else
    {
      [(PUPhotoViewContentHelper *)self _removeAvalancheStackViewIfNecessary];
      v9 = objc_loadWeakRetained(&self->_contentView);
      v10 = [v9 layer];
      [v10 setContents:{-[UIImage CGImage](self->_photoImage, "CGImage")}];
    }

    v5 = v11;
  }
}

- (void)setPreferredImageDynamicRange:(int64_t)a3
{
  if (self->_preferredImageDynamicRange == a3)
  {
    [(PUPhotoViewContentHelper *)self _updateUnderlyingImageViewDynamicRange];
  }
}

- (void)setPlaceHolderImage:(id)a3
{
  v5 = a3;
  p_placeHolderImage = &self->_placeHolderImage;
  if (self->_placeHolderImage != v5)
  {
    v7 = v5;
    objc_storeStrong(p_placeHolderImage, a3);
    p_placeHolderImage = [(PUPhotoViewContentHelper *)self _updateImageView];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_placeHolderImage, v5);
}

- (void)setPhotoImage:(id)a3
{
  v5 = a3;
  p_photoImage = &self->_photoImage;
  if (self->_photoImage != v5)
  {
    v7 = v5;
    objc_storeStrong(p_photoImage, a3);
    [(PUPhotoViewContentHelper *)self _updateImageView];
    p_photoImage = [(PUPhotoViewContentHelper *)self _invalidateTitleSubtitleUILabel];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_photoImage, v5);
}

- (void)setTransitionSnapshotView:(id)a3
{
  v5 = a3;
  transitionSnapshotView = self->_transitionSnapshotView;
  if (transitionSnapshotView != v5)
  {
    v7 = v5;
    [(UIView *)transitionSnapshotView removeFromSuperview];
    objc_storeStrong(&self->_transitionSnapshotView, a3);
    transitionSnapshotView = [(PUPhotoViewContentHelper *)self _updateImageView];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](transitionSnapshotView, v5);
}

- (void)setImageTransform:(CGAffineTransform *)a3
{
  p_imageTransform = &self->_imageTransform;
  v6 = *&self->_imageTransform.c;
  *&t1.a = *&self->_imageTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_imageTransform.tx;
  v7 = *&a3->c;
  *&t2.a = *&a3->a;
  *&t2.c = v7;
  *&t2.tx = *&a3->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_imageTransform->c = *&a3->c;
    *&p_imageTransform->tx = v9;
    *&p_imageTransform->a = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__PUPhotoViewContentHelper_setImageTransform___block_invoke;
    v10[3] = &unk_1E7B80DD0;
    v10[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
  }
}

uint64_t __46__PUPhotoViewContentHelper_setImageTransform___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 456);
  *&v8.a = *(v2 + 440);
  *&v8.c = v3;
  *&v8.tx = *(v2 + 472);
  *(v2 + 24) = !CGAffineTransformIsIdentity(&v8);
  [*(a1 + 32) _updateImageView];
  v4 = *(a1 + 32);
  v5 = *(v4 + 296);
  v4 += 440;
  v6 = *(v4 + 16);
  *&v8.a = *v4;
  *&v8.c = v6;
  *&v8.tx = *(v4 + 32);
  return [v5 setTransform:&v8];
}

- (void)setPhotoSize:(CGSize)a3
{
  if (self->_photoSize.width != a3.width || self->_photoSize.height != a3.height)
  {
    self->_photoSize = a3;
    WeakRetained = objc_loadWeakRetained(&self->_contentView);
    [WeakRetained setNeedsLayout];
  }
}

- (void)setFillMode:(int64_t)a3
{
  if (self->_fillMode != a3)
  {
    self->_fillMode = a3;
    [(PUPhotoViewContentHelper *)self _updateImageView];
    [(PUPhotoViewContentHelper *)self _updateLivePhotoView];
    WeakRetained = objc_loadWeakRetained(&self->_contentView);
    [WeakRetained setNeedsLayout];
  }
}

- (void)setTextBannerVisible:(BOOL)a3
{
  if (self->_isTextBannerVisible != a3)
  {
    self->_isTextBannerVisible = a3;
    [(PUPhotoViewContentHelper *)self _updateTextBannerView];
  }
}

- (void)setCustomPaddingForBadgeElements:(CGSize)a3
{
  if (a3.width != self->_customPaddingForBadgeElements.width || a3.height != self->_customPaddingForBadgeElements.height)
  {
    self->_customPaddingForBadgeElements = a3;
    [(PUPhotoViewContentHelper *)self _invalidateBadgeView];
  }
}

- (void)setBadgeStyle:(int64_t)a3
{
  if (self->_badgeStyle != a3)
  {
    self->_badgeStyle = a3;
    [(PUPhotoViewContentHelper *)self _invalidateBadgeView];
  }
}

- (void)setBadgeInfo:(PXAssetBadgeInfo *)a3
{
  p_badgeInfo = &self->_badgeInfo;
  v8 = *a3;
  badgeInfo = self->_badgeInfo;
  if ((PXAssetBadgeInfoEqualToBadgeInfo() & 1) == 0)
  {
    v6 = *&a3->count;
    *&p_badgeInfo->badges = *&a3->badges;
    *&p_badgeInfo->count = v6;
    [(PUPhotoViewContentHelper *)self _invalidateBadgeView:*&badgeInfo.badges];
  }
}

- (CGRect)imageContentFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  [WeakRetained bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PUPhotoViewContentHelper *)self imageContentFrameForBounds:v5, v7, v9, v11];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)imageContentFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PUPhotoViewContentHelper *)self fillMode];
  [(PUPhotoViewContentHelper *)self photoSize];
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_class();

  [v13 _imageContentFrameForBounds:v8 imageSize:x fillMode:{y, width, height, v10, v12}];
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)photoDecorationBorderViewFrameForImageContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(PUPhotoViewContentHelper *)self photoDecoration];
  [v7 borderWidth];
  v9 = v8;

  v10 = x - v9;
  v11 = y - v9;
  v12 = -v9 - v9;
  v13 = width - v12;
  v14 = height - v12;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (PUPhotoViewContentHelper)initWithContentView:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PUPhotoViewContentHelper;
  v5 = [(PUPhotoViewContentHelper *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contentView, v4);
    v6->_fillMode = 0;
    v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    layerDefaultBackgroundColor = v6->_layerDefaultBackgroundColor;
    v6->_layerDefaultBackgroundColor = v7;

    v6->_badgeStyle = 1;
    v6->_customPaddingForBadgeElements = *MEMORY[0x1E69C48F0];
    v6->_contentAlpha = 1.0;
    v6->_continuousCorners = 1;
  }

  return v6;
}

+ (CGSize)sizeThatFits:(CGSize)a3 imageSize:(CGSize)a4 fillMode:(int64_t)a5
{
  [a1 _imageContentFrameForBounds:a5 imageSize:0.0 fillMode:{0.0, a3.width, a3.height, a4.width, a4.height}];
  v6 = v5;
  v8 = v7;
  result.height = v8;
  result.width = v6;
  return result;
}

+ (CGRect)_imageContentFrameForBounds:(CGRect)result imageSize:(CGSize)a4 fillMode:(int64_t)a5
{
  height = result.size.height;
  width = result.size.width;
  y = result.origin.y;
  x = result.origin.x;
  if (a5 >= 2)
  {
    result.size.height = 0.0;
    result.size.width = 0.0;
    result.origin.y = 0.0;
    result.origin.x = 0.0;
    if (a5 == 2)
    {
      result.origin.x = PURectWithSizeThatFitsInRect(a4.width, a4.height, x, y, width, height);
    }
  }

  return result;
}

@end