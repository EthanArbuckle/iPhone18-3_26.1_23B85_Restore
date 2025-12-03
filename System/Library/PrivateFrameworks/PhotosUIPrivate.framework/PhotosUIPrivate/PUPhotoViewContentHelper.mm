@interface PUPhotoViewContentHelper
+ (CGRect)_imageContentFrameForBounds:(CGRect)result imageSize:(CGSize)size fillMode:(int64_t)mode;
+ (CGSize)sizeThatFits:(CGSize)fits imageSize:(CGSize)size fillMode:(int64_t)mode;
- (BOOL)isImageViewEdgeAntialiasingEnabled;
- (CGAffineTransform)imageTransform;
- (CGRect)imageContentFrame;
- (CGRect)imageContentFrameForBounds:(CGRect)bounds;
- (CGRect)photoDecorationBorderViewFrameForImageContentFrame:(CGRect)frame;
- (CGSize)contentViewSizeThatFits:(CGSize)fits;
- (CGSize)customPaddingForBadgeElements;
- (CGSize)photoSize;
- (PUPhotoViewContentHelper)initWithContentView:(id)view;
- (PUPhotoViewContentHelperDelegate)delegate;
- (PXAssetBadgeInfo)badgeInfo;
- (UIView)contentView;
- (void)_addAvalancheStackViewIfNecessary;
- (void)_invalidateAnimatedImageView;
- (void)_invalidateLoopingVideoView;
- (void)_invalidateTitleSubtitleUILabel;
- (void)_removeAvalancheStackViewIfNecessary;
- (void)_removePhotoImageViewIfNecessary;
- (void)_setAudioSession:(id)session;
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
- (void)animateCrossfadeToImage:(id)image duration:(double)duration;
- (void)layoutSubviewsOfContentView;
- (void)livePhotoView:(id)view willBeginPlaybackWithStyle:(int64_t)style;
- (void)setAnimatedImage:(id)image;
- (void)setAnimatingRoundedCorners:(BOOL)corners;
- (void)setAvoidsPhotoDecoration:(BOOL)decoration;
- (void)setBackgroundColor:(id)color;
- (void)setBadgeInfo:(PXAssetBadgeInfo *)info;
- (void)setBadgeStyle:(int64_t)style;
- (void)setCollectionTileLayoutTemplate:(id)template;
- (void)setContentAlpha:(double)alpha;
- (void)setCornerRadius:(double)radius;
- (void)setCornerRadius:(double)radius cornersToRound:(unint64_t)round useOverlay:(BOOL)overlay overlayColor:(id)color continuousCorners:(BOOL)corners;
- (void)setCornersToRound:(unint64_t)round;
- (void)setCustomPaddingForBadgeElements:(CGSize)elements;
- (void)setDarkContentOverlayAlpha:(double)alpha;
- (void)setDelegate:(id)delegate;
- (void)setFeatureSpec:(id)spec;
- (void)setFillMode:(int64_t)mode;
- (void)setFlattensBadgeView:(BOOL)view;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImageTransform:(CGAffineTransform *)transform;
- (void)setImageViewEdgeAntialiasingEnabled:(BOOL)enabled;
- (void)setLivePhoto:(id)photo;
- (void)setLivePhotoHidden:(BOOL)hidden;
- (void)setLoopingPlaybackAllowed:(BOOL)allowed;
- (void)setLoopingVideoAsset:(id)asset;
- (void)setOverlayColor:(id)color;
- (void)setPhotoDecoration:(id)decoration;
- (void)setPhotoImage:(id)image;
- (void)setPhotoSize:(CGSize)size;
- (void)setPlaceHolderImage:(id)image;
- (void)setPreferredImageDynamicRange:(int64_t)range;
- (void)setShouldPrepareForPlayback:(BOOL)playback;
- (void)setShowsLivePhoto:(BOOL)photo;
- (void)setSubtitle:(id)subtitle;
- (void)setTextBannerVisible:(BOOL)visible;
- (void)setTitle:(id)title;
- (void)setTitleFontName:(id)name;
- (void)setTransitionSnapshotView:(id)view;
- (void)setUseOverlay:(BOOL)overlay;
- (void)startPlaybackWithStyle:(int64_t)style;
- (void)updatePhotoImageWithoutReconfiguring:(id)reconfiguring;
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

- (void)animateCrossfadeToImage:(id)image duration:(double)duration
{
  imageCopy = image;
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
    backgroundColor = [(UIImageView *)self->_photoImageView backgroundColor];
    [(UIImageView *)v10 setBackgroundColor:backgroundColor];

    WeakRetained = objc_loadWeakRetained(&self->_contentView);
    [WeakRetained insertSubview:self->__crossfadeImageView belowSubview:self->_photoImageView];

    [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
  }

  [(UIImageView *)self->_photoImageView setAlpha:1.0];
  [(UIImageView *)self->__crossfadeImageView setImage:imageCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PUPhotoViewContentHelper_animateCrossfadeToImage_duration___block_invoke;
  v13[3] = &unk_1E7B80DD0;
  v13[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v13 animations:duration];
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
  _badgeView = [(PUPhotoViewContentHelper *)self _badgeView];
  height = 24.0;
  [_badgeView setFrame:{v13, y, v17, 24.0}];

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

  _highlightOverlayView = [(PUPhotoViewContentHelper *)self _highlightOverlayView];
  [_highlightOverlayView setFrame:{v13, v15, v17, v19}];

  [(PXRoundedCornerOverlayView *)self->_roundedCornerOverlayView setFrame:v13, v15, v17, v19];
  [(PXCollectionTileLayoutTemplate *)self->_collectionTileLayoutTemplate setBounds:v13, v15, v17, v19];
  [(PXCollectionTileLayoutTemplate *)self->_collectionTileLayoutTemplate prepare];
  [(PUPhotoViewContentHelper *)self _updateIfNeeded];
  _titleSubtitleLabel = [(PUPhotoViewContentHelper *)self _titleSubtitleLabel];
  v32 = _titleSubtitleLabel;
  if (_titleSubtitleLabel && ([_titleSubtitleLabel isHidden] & 1) == 0)
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

- (CGSize)contentViewSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  fillMode = [(PUPhotoViewContentHelper *)self fillMode];
  [(PUPhotoViewContentHelper *)self photoSize];
  v8 = v7;
  v10 = v9;
  v11 = objc_opt_class();

  [v11 sizeThatFits:fillMode imageSize:width fillMode:{height, v8, v10}];
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
    _titleSubtitleLabel = [(PUPhotoViewContentHelper *)self _titleSubtitleLabel];
    if (photoImage)
    {
      if (!_titleSubtitleLabel)
      {
        v6 = objc_alloc(MEMORY[0x1E69C3BB8]);
        [(PXCollectionTileLayoutTemplate *)self->_collectionTileLayoutTemplate titleSubtitleRect];
        v8 = [v6 initWithFrame:?];
        WeakRetained = objc_loadWeakRetained(&self->_contentView);
        [WeakRetained addSubview:v8];

        [(PUPhotoViewContentHelper *)self _setTitleSubtitleUILabel:v8];
        [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
        _titleSubtitleLabel = v8;
      }

      v9 = _titleSubtitleLabel;
      [_titleSubtitleLabel setTitleText:self->_title];
      [v9 setSubtitleText:self->_subtitle];
      goto LABEL_13;
    }
  }

  else
  {
    _titleSubtitleLabel = [(PUPhotoViewContentHelper *)self _titleSubtitleLabel];
  }

  v9 = _titleSubtitleLabel;
  [_titleSubtitleLabel removeFromSuperview];
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
    animatedImage = [(PUPhotoViewContentHelper *)self animatedImage];

    animatedImageView = self->_animatedImageView;
    if (animatedImage)
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

      animatedImage2 = [(PUPhotoViewContentHelper *)self animatedImage];
      pf_animatedImage = [animatedImage2 pf_animatedImage];
      [(ISAnimatedImageView *)self->_animatedImageView setImage:pf_animatedImage];

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

    [(UIImageView *)photoImageView setHidden:animatedImage != 0];
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
    loopingVideoAsset = [(PUPhotoViewContentHelper *)self loopingVideoAsset];

    if (loopingVideoAsset)
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
        loopingVideoAsset2 = [(PUPhotoViewContentHelper *)self loopingVideoAsset];
        v19 = [v17 playerItemWithAsset:loopingVideoAsset2];
        [(ISWrappedAVPlayer *)v16 setLoopingEnabled:1 withTemplateItem:v19];

        [(PXVideoPlayerView *)self->_loopingVideoView setPlayer:self->_loopingVideoPlayer];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __59__PUPhotoViewContentHelper__updateLoopingVideoViewIfNeeded__block_invoke_3;
        v31[3] = &unk_1E7B80DD0;
        v31[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v31 options:0 animations:0.3 completion:0.0];
      }

      _audioSession = [(PUPhotoViewContentHelper *)self _audioSession];
      if (_audioSession)
      {
        [(ISWrappedAVPlayer *)self->_loopingVideoPlayer setWrappedAudioSession:_audioSession];
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
      window = [v22 window];

      if (window)
      {
        _audioSession = [(PXVideoPlayerView *)self->_loopingVideoView snapshotViewAfterScreenUpdates:0];
        v24 = objc_loadWeakRetained(&self->_contentView);
        [v24 insertSubview:_audioSession aboveSubview:self->_loopingVideoView];
      }

      else
      {
        _audioSession = 0;
      }

      [(ISWrappedAVPlayer *)self->_loopingVideoPlayer setLoopingEnabled:0];
      [(PXVideoPlayerView *)self->_loopingVideoView removeFromSuperview];
      v25 = self->_loopingVideoView;
      self->_loopingVideoView = 0;

      if (_audioSession)
      {
        v26 = MEMORY[0x1E69DD250];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __59__PUPhotoViewContentHelper__updateLoopingVideoViewIfNeeded__block_invoke_4;
        v29[3] = &unk_1E7B80DD0;
        v30 = _audioSession;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __59__PUPhotoViewContentHelper__updateLoopingVideoViewIfNeeded__block_invoke_5;
        v27[3] = &unk_1E7B7F020;
        _audioSession = v30;
        v28 = _audioSession;
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

- (void)_setAudioSession:(id)session
{
  sessionCopy = session;
  if (self->__audioSession != sessionCopy)
  {
    v6 = sessionCopy;
    objc_storeStrong(&self->__audioSession, session);
    [(PUPhotoViewContentHelper *)self _invalidateLoopingVideoView];
    sessionCopy = v6;
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (self->_subtitle != subtitleCopy)
  {
    v6 = subtitleCopy;
    objc_storeStrong(&self->_subtitle, subtitle);
    [(PUPhotoViewContentHelper *)self _invalidateTitleSubtitleUILabel];
    subtitleCopy = v6;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->_title != titleCopy)
  {
    v6 = titleCopy;
    objc_storeStrong(&self->_title, title);
    [(PUPhotoViewContentHelper *)self _invalidateTitleSubtitleUILabel];
    titleCopy = v6;
  }
}

- (void)setTitleFontName:(id)name
{
  nameCopy = name;
  if (self->_titleFontName != nameCopy)
  {
    v6 = nameCopy;
    objc_storeStrong(&self->_titleFontName, name);
    [(PUPhotoViewContentHelper *)self _invalidateTitleSubtitleUILabel];
    nameCopy = v6;
  }
}

- (void)setCollectionTileLayoutTemplate:(id)template
{
  templateCopy = template;
  if (self->_collectionTileLayoutTemplate != templateCopy)
  {
    v6 = templateCopy;
    objc_storeStrong(&self->_collectionTileLayoutTemplate, template);
    [(PUPhotoViewContentHelper *)self _invalidateTitleSubtitleUILabel];
    templateCopy = v6;
  }
}

- (void)setFeatureSpec:(id)spec
{
  specCopy = spec;
  p_featureSpec = &self->_featureSpec;
  if (self->_featureSpec != specCopy)
  {
    v7 = specCopy;
    objc_storeStrong(p_featureSpec, spec);
    p_featureSpec = [(PUPhotoViewContentHelper *)self _invalidateTitleSubtitleUILabel];
    specCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_featureSpec, specCopy);
}

- (void)_updateHighlight
{
  isHighlighted = [(PUPhotoViewContentHelper *)self isHighlighted];
  _highlightOverlayView = [(PUPhotoViewContentHelper *)self _highlightOverlayView];
  if (isHighlighted && !_highlightOverlayView)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    WeakRetained = objc_loadWeakRetained(&self->_contentView);
    [WeakRetained bounds];
    v9 = [v5 initWithFrame:?];

    [v9 setUserInteractionEnabled:0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v9 setBackgroundColor:labelColor];

    [v9 setAlpha:0.5];
    v8 = objc_loadWeakRetained(&self->_contentView);
    [v8 addSubview:v9];

    [(PUPhotoViewContentHelper *)self _setHighlightOverlayView:v9];
    [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
    _highlightOverlayView = v9;
  }

  v10 = _highlightOverlayView;
  [_highlightOverlayView setHidden:!isHighlighted];
}

- (void)_updateRoundedCornersOverlayView
{
  if (self->_cornerRadius > 0.0 && self->_useOverlay)
  {
    overlayColor = self->_overlayColor;
    roundedCornerOverlayView = [(PUPhotoViewContentHelper *)self roundedCornerOverlayView];
    roundedCornerOverlayView2 = roundedCornerOverlayView;
    if (overlayColor)
    {
      if (!roundedCornerOverlayView)
      {
        roundedCornerOverlayView2 = objc_alloc_init(MEMORY[0x1E69C3978]);
        WeakRetained = objc_loadWeakRetained(&self->_contentView);
        [WeakRetained addSubview:roundedCornerOverlayView2];

        [(PUPhotoViewContentHelper *)self setRoundedCornerOverlayView:roundedCornerOverlayView2];
        [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __60__PUPhotoViewContentHelper__updateRoundedCornersOverlayView__block_invoke;
      v7[3] = &unk_1E7B7C3C0;
      v7[4] = self;
      [roundedCornerOverlayView2 performChanges:v7];
      goto LABEL_10;
    }
  }

  else
  {
    roundedCornerOverlayView2 = [(PUPhotoViewContentHelper *)self roundedCornerOverlayView];
  }

  if (!roundedCornerOverlayView2)
  {
    return;
  }

  [roundedCornerOverlayView2 removeFromSuperview];
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
  contentView = [(PUPhotoViewContentHelper *)self contentView];
  layer = [contentView layer];
  v4 = 0.0;
  if (!self->_useOverlay)
  {
    [(PUPhotoViewContentHelper *)self cornerRadius];
    v4 = v5;
  }

  [layer cornerRadius];
  if (v6 != v4)
  {
    [layer setCornerRadius:v4];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];
    [(PUPhotoViewContentHelper *)self _updateContentViewClipsToBounds];
    [contentView setNeedsLayout];
  }
}

- (void)_updatePhotoDecoration
{
  photoDecoration = [(PUPhotoViewContentHelper *)self photoDecoration];
  avoidsPhotoDecoration = [(PUPhotoViewContentHelper *)self avoidsPhotoDecoration];
  if (avoidsPhotoDecoration)
  {
    photoDecorationBorderView = self->_photoDecorationBorderView;
    if (photoDecorationBorderView)
    {
      [(PUBackgroundColorView *)photoDecorationBorderView removeFromSuperview];
      v5 = 0;
      WeakRetained = self->_photoDecorationBorderView;
      self->_photoDecorationBorderView = 0;
LABEL_13:
      v13 = !avoidsPhotoDecoration;

      v14 = 1;
      goto LABEL_14;
    }

    v5 = 0;
LABEL_8:
    v13 = 0;
    v14 = 0;
LABEL_14:
    v12 = photoDecoration;
    goto LABEL_15;
  }

  [photoDecoration borderWidth];
  v8 = v7;
  foregroundColor = [photoDecoration foregroundColor];
  if (foregroundColor)
  {
    v10 = foregroundColor;
    foregroundColor2 = [photoDecoration foregroundColor];
    v5 = CGColorGetAlpha([foregroundColor2 CGColor]) > 0.0;

    if (v8 <= 0.0)
    {
      goto LABEL_8;
    }

    v12 = photoDecoration;
  }

  else
  {
    v5 = 0;
    v13 = 0;
    v14 = 0;
    v12 = photoDecoration;
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
  borderColor = [v12 borderColor];
  [(PUBackgroundColorView *)v17 _puSetBackgroundColor:borderColor];

  if (v5 && !self->_photoDecorationOverlayView)
  {
    v21 = objc_alloc_init(PUBackgroundColorView);
    photoDecorationOverlayView = self->_photoDecorationOverlayView;
    self->_photoDecorationOverlayView = v21;

    v20 = objc_loadWeakRetained(&self->_contentView);
    [v20 addSubview:self->_photoDecorationOverlayView];
    goto LABEL_21;
  }

  if (avoidsPhotoDecoration)
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
  foregroundColor3 = [photoDecoration foregroundColor];
  [(PUBackgroundColorView *)v23 _puSetBackgroundColor:foregroundColor3];

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
  flattensBadgeView = [(PUPhotoViewContentHelper *)self flattensBadgeView];
  IsNull = PXAssetBadgeInfoIsNull();
  v5 = [(PUPhotoViewContentHelper *)self _badgeView:0];
  if (IsNull)
  {
    goto LABEL_9;
  }

  v6 = objc_opt_class();
  if ((flattensBadgeView ^ (v6 != objc_opt_class())))
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoView.m" lineNumber:886 description:{@"%@: update still needed at end of update pass", self}];
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

    superview = [(PXTextBannerView *)textBannerView superview];

    if (!superview)
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
  clipsToBounds = [WeakRetained clipsToBounds];

  if (v3 != clipsToBounds)
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
    layer = [WeakRetained layer];

    backgroundColor = [(PUPhotoViewContentHelper *)self backgroundColor];
    layerDefaultBackgroundColor = backgroundColor;
    if (!backgroundColor)
    {
      layerDefaultBackgroundColor = self->_layerDefaultBackgroundColor;
    }

    v7 = layerDefaultBackgroundColor;

    cGColor = [(UIColor *)v7 CGColor];
    [layer setBackgroundColor:cGColor];
  }
}

- (void)_updateUnderlyingImageViewDynamicRange
{
  [(UIImageView *)self->_photoImageView setPreferredImageDynamicRange:[(PUPhotoViewContentHelper *)self preferredImageDynamicRange]];
  preferredImageDynamicRange = [(PUPhotoViewContentHelper *)self preferredImageDynamicRange];
  crossfadeImageView = self->__crossfadeImageView;

  [(UIImageView *)crossfadeImageView setPreferredImageDynamicRange:preferredImageDynamicRange];
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
      layer = [v8 layer];
      [layer setAllowsGroupOpacity:0];

      WeakRetained = objc_loadWeakRetained(&self->_contentView);
      [WeakRetained addSubview:v8];

      v11 = objc_loadWeakRetained(&self->_contentView);
      [v11 layoutIfNeeded];

      [(PUPhotoViewContentHelper *)self _updateSubviewOrdering];
    }

    [(PUPhotoViewContentHelper *)self _updateContentViewClipsToBounds];
    v12 = objc_loadWeakRetained(&self->_contentView);
    layer2 = [v12 layer];
    [layer2 setContents:0];

    v14 = objc_loadWeakRetained(&self->_contentView);
    layer3 = [v14 layer];
    [layer3 setBackgroundColor:0];

    [(UIImageView *)self->_photoImageView setImage:v38];
    photoImageView = self->_photoImageView;
    backgroundColor = [(PUPhotoViewContentHelper *)self backgroundColor];
    [(UIImageView *)photoImageView setBackgroundColor:backgroundColor];

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
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [(UIView *)v22 setBackgroundColor:blackColor];

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
    needsAvalancheStack = [(PUPhotoViewContentHelper *)self needsAvalancheStack];
    [(PUPhotoViewContentHelper *)self _removePhotoImageViewIfNecessary];
    if (needsAvalancheStack)
    {
      [(PUPhotoViewContentHelper *)self _addAvalancheStackViewIfNecessary];
      [(PUPhotoViewContentHelper *)self _updateContentViewClipsToBounds];
      v28 = objc_loadWeakRetained(&self->_contentView);
      layer4 = [v28 layer];
      [layer4 setContents:0];

      v30 = objc_loadWeakRetained(&self->_contentView);
      layer5 = [v30 layer];
      [layer5 setBackgroundColor:0];

      [(PUAvalancheStackView *)self->_avalancheStackView setImage:v38];
      avalancheStackView = self->_avalancheStackView;
      backgroundColor2 = [(PUPhotoViewContentHelper *)self backgroundColor];
      [(PUAvalancheStackView *)avalancheStackView setBackgroundColor:backgroundColor2];
    }

    else
    {
      [(PUPhotoViewContentHelper *)self _removeAvalancheStackViewIfNecessary];
      [(PUPhotoViewContentHelper *)self _updateContentViewClipsToBounds];
      v34 = objc_loadWeakRetained(&self->_contentView);
      layer6 = [v34 layer];

      [layer6 setContents:{-[UIImage CGImage](v38, "CGImage")}];
      if (PUMainScreenScale_onceToken != -1)
      {
        dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
      }

      [layer6 setContentsScale:*&PUMainScreenScale_screenScale];
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

      [layer6 setContentsGravity:v37];
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoView.m" lineNumber:695 description:@"Trying to start playback with PHLivePhotoViewPlaybackStyleUndefined"];
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
    avalancheStackBackgroundColor = [(PUPhotoViewContentHelper *)self avalancheStackBackgroundColor];
    layer = [(PUAvalancheStackView *)self->_avalancheStackView layer];
    [layer setBackgroundColor:avalancheStackBackgroundColor];

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

- (void)livePhotoView:(id)view willBeginPlaybackWithStyle:(int64_t)style
{
  if (self->_delegateFlags.respondsToLivePhotoWillBeginPlaybackWithStyle)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained photoViewContentHelper:self livePhotoWillBeginPlaybackWithStyle:style];
  }
}

- (void)setLoopingPlaybackAllowed:(BOOL)allowed
{
  if (self->_loopingPlaybackAllowed != allowed)
  {
    self->_loopingPlaybackAllowed = allowed;
    [(PUPhotoViewContentHelper *)self _invalidateAnimatedImageView];
  }
}

- (void)setAnimatedImage:(id)image
{
  imageCopy = image;
  p_animatedImage = &self->_animatedImage;
  if (self->_animatedImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(p_animatedImage, image);
    p_animatedImage = [(PUPhotoViewContentHelper *)self _invalidateAnimatedImageView];
    imageCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_animatedImage, imageCopy);
}

- (void)setLoopingVideoAsset:(id)asset
{
  if (self->_loopingVideoAsset != asset)
  {
    v5 = [asset copy];
    loopingVideoAsset = self->_loopingVideoAsset;
    self->_loopingVideoAsset = v5;

    [(PUPhotoViewContentHelper *)self _invalidateLoopingVideoView];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToLivePhotoWillBeginPlaybackWithStyle = objc_opt_respondsToSelector() & 1;
  }
}

- (void)startPlaybackWithStyle:(int64_t)style
{
  if (self->_livePhotoView)
  {
    [(PUPhotoViewContentHelper *)self setShouldPrepareForPlayback:1];
    livePhotoView = self->_livePhotoView;

    [(PHLivePhotoView *)livePhotoView startPlaybackWithStyle:style];
  }

  else
  {

    [(PUPhotoViewContentHelper *)self _startPlaybackWhenLivePhotoAvailableWithStyle:?];
  }
}

- (void)setLivePhoto:(id)photo
{
  photoCopy = photo;
  livePhoto = self->_livePhoto;
  if (livePhoto != photoCopy)
  {
    v7 = photoCopy;
    livePhoto = [livePhoto isEqual:photoCopy];
    photoCopy = v7;
    if ((livePhoto & 1) == 0)
    {
      objc_storeStrong(&self->_livePhoto, photo);
      livePhoto = [(PUPhotoViewContentHelper *)self _updateLivePhotoView];
      photoCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](livePhoto, photoCopy);
}

- (void)setShowsLivePhoto:(BOOL)photo
{
  if (self->_showsLivePhoto != photo)
  {
    self->_showsLivePhoto = photo;
    [(PUPhotoViewContentHelper *)self _updateLivePhotoView];
  }
}

- (void)setShouldPrepareForPlayback:(BOOL)playback
{
  if (self->_shouldPrepareForPlayback != playback)
  {
    self->_shouldPrepareForPlayback = playback;
    [(PUPhotoViewContentHelper *)self _updateLivePhotoViewPreparing];
  }
}

- (void)setLivePhotoHidden:(BOOL)hidden
{
  if (self->_livePhotoHidden != hidden)
  {
    self->_livePhotoHidden = hidden;
    [(PUPhotoViewContentHelper *)self _updateLivePhotoViewVisibility];
  }
}

- (void)setDarkContentOverlayAlpha:(double)alpha
{
  if (self->_darkContentOverlayAlpha != alpha)
  {
    self->_darkContentOverlayAlpha = alpha;
    [(PUPhotoViewContentHelper *)self _updateImageView];
  }
}

- (void)setContentAlpha:(double)alpha
{
  if (self->_contentAlpha != alpha)
  {
    self->_contentAlpha = alpha;
    [(PUPhotoViewContentHelper *)self _updateImageView];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  p_backgroundColor = &self->_backgroundColor;
  if (self->_backgroundColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(p_backgroundColor, color);
    p_backgroundColor = [(PUPhotoViewContentHelper *)self _updateImageView];
    colorCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_backgroundColor, colorCopy);
}

- (void)setCornerRadius:(double)radius cornersToRound:(unint64_t)round useOverlay:(BOOL)overlay overlayColor:(id)color continuousCorners:(BOOL)corners
{
  cornersCopy = corners;
  overlayCopy = overlay;
  colorCopy = color;
  if (self->_cornerRadius != radius || self->_cornersToRound != round || self->_useOverlay != overlayCopy || self->_overlayColor != colorCopy || self->_continuousCorners != cornersCopy)
  {
    self->_cornerRadius = radius;
    self->_cornersToRound = round;
    self->_useOverlay = overlayCopy;
    v14 = colorCopy;
    objc_storeStrong(&self->_overlayColor, color);
    self->_continuousCorners = cornersCopy;
    [(PUPhotoViewContentHelper *)self _updateLayerCornerRadius];
    [(PUPhotoViewContentHelper *)self _updateRoundedCornersOverlayView];
    colorCopy = v14;
  }
}

- (void)setOverlayColor:(id)color
{
  colorCopy = color;
  [(PUPhotoViewContentHelper *)self cornerRadius];
  [(PUPhotoViewContentHelper *)self setCornerRadius:[(PUPhotoViewContentHelper *)self cornersToRound] cornersToRound:[(PUPhotoViewContentHelper *)self useOverlay] useOverlay:colorCopy overlayColor:1 continuousCorners:v4];
}

- (void)setUseOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  [(PUPhotoViewContentHelper *)self cornerRadius];
  v6 = v5;
  cornersToRound = [(PUPhotoViewContentHelper *)self cornersToRound];
  overlayColor = [(PUPhotoViewContentHelper *)self overlayColor];
  [(PUPhotoViewContentHelper *)self setCornerRadius:cornersToRound cornersToRound:overlayCopy useOverlay:overlayColor overlayColor:1 continuousCorners:v6];
}

- (void)setCornersToRound:(unint64_t)round
{
  [(PUPhotoViewContentHelper *)self cornerRadius];
  v6 = v5;
  useOverlay = [(PUPhotoViewContentHelper *)self useOverlay];
  overlayColor = [(PUPhotoViewContentHelper *)self overlayColor];
  [(PUPhotoViewContentHelper *)self setCornerRadius:round cornersToRound:useOverlay useOverlay:overlayColor overlayColor:1 continuousCorners:v6];
}

- (void)setCornerRadius:(double)radius
{
  cornersToRound = [(PUPhotoViewContentHelper *)self cornersToRound];
  overlayColor = [(PUPhotoViewContentHelper *)self overlayColor];
  [(PUPhotoViewContentHelper *)self setCornerRadius:cornersToRound cornersToRound:0 useOverlay:overlayColor overlayColor:1 continuousCorners:radius];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(PUPhotoViewContentHelper *)self _updateHighlight];
  }
}

- (void)setAnimatingRoundedCorners:(BOOL)corners
{
  if (self->_animatingRoundedCorners != corners)
  {
    self->_animatingRoundedCorners = corners;
    [(PUPhotoViewContentHelper *)self _updateContentViewClipsToBounds];
  }
}

- (void)setAvoidsPhotoDecoration:(BOOL)decoration
{
  if (self->_avoidsPhotoDecoration != decoration)
  {
    self->_avoidsPhotoDecoration = decoration;
    [(PUPhotoViewContentHelper *)self _updatePhotoDecoration];
  }
}

- (void)setFlattensBadgeView:(BOOL)view
{
  if (self->_flattensBadgeView != view)
  {
    self->_flattensBadgeView = view;
    [(PUPhotoViewContentHelper *)self _invalidateBadgeView];
  }
}

- (void)setImageViewEdgeAntialiasingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  photoImageView = [(PUPhotoViewContentHelper *)self photoImageView];
  layer = [photoImageView layer];
  [layer setAllowsEdgeAntialiasing:enabledCopy];
}

- (BOOL)isImageViewEdgeAntialiasingEnabled
{
  photoImageView = [(PUPhotoViewContentHelper *)self photoImageView];
  layer = [photoImageView layer];
  allowsEdgeAntialiasing = [layer allowsEdgeAntialiasing];

  return allowsEdgeAntialiasing;
}

- (void)setPhotoDecoration:(id)decoration
{
  decorationCopy = decoration;
  photoDecoration = self->_photoDecoration;
  if (photoDecoration != decorationCopy)
  {
    v8 = decorationCopy;
    photoDecoration = [photoDecoration isEqual:decorationCopy];
    decorationCopy = v8;
    if ((photoDecoration & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_photoDecoration;
      self->_photoDecoration = v6;

      photoDecoration = [(PUPhotoViewContentHelper *)self _updatePhotoDecoration];
      decorationCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](photoDecoration, decorationCopy);
}

- (void)updatePhotoImageWithoutReconfiguring:(id)reconfiguring
{
  reconfiguringCopy = reconfiguring;
  if (self->_photoImage != reconfiguringCopy)
  {
    v11 = reconfiguringCopy;
    objc_storeStrong(&self->_photoImage, reconfiguring);
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
      layer = [WeakRetained layer];
      [layer setContents:0];
    }

    else
    {
      [(PUPhotoViewContentHelper *)self _removeAvalancheStackViewIfNecessary];
      v9 = objc_loadWeakRetained(&self->_contentView);
      layer2 = [v9 layer];
      [layer2 setContents:{-[UIImage CGImage](self->_photoImage, "CGImage")}];
    }

    reconfiguringCopy = v11;
  }
}

- (void)setPreferredImageDynamicRange:(int64_t)range
{
  if (self->_preferredImageDynamicRange == range)
  {
    [(PUPhotoViewContentHelper *)self _updateUnderlyingImageViewDynamicRange];
  }
}

- (void)setPlaceHolderImage:(id)image
{
  imageCopy = image;
  p_placeHolderImage = &self->_placeHolderImage;
  if (self->_placeHolderImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(p_placeHolderImage, image);
    p_placeHolderImage = [(PUPhotoViewContentHelper *)self _updateImageView];
    imageCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_placeHolderImage, imageCopy);
}

- (void)setPhotoImage:(id)image
{
  imageCopy = image;
  p_photoImage = &self->_photoImage;
  if (self->_photoImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(p_photoImage, image);
    [(PUPhotoViewContentHelper *)self _updateImageView];
    p_photoImage = [(PUPhotoViewContentHelper *)self _invalidateTitleSubtitleUILabel];
    imageCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_photoImage, imageCopy);
}

- (void)setTransitionSnapshotView:(id)view
{
  viewCopy = view;
  transitionSnapshotView = self->_transitionSnapshotView;
  if (transitionSnapshotView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)transitionSnapshotView removeFromSuperview];
    objc_storeStrong(&self->_transitionSnapshotView, view);
    transitionSnapshotView = [(PUPhotoViewContentHelper *)self _updateImageView];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](transitionSnapshotView, viewCopy);
}

- (void)setImageTransform:(CGAffineTransform *)transform
{
  p_imageTransform = &self->_imageTransform;
  v6 = *&self->_imageTransform.c;
  *&t1.a = *&self->_imageTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_imageTransform.tx;
  v7 = *&transform->c;
  *&t2.a = *&transform->a;
  *&t2.c = v7;
  *&t2.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_imageTransform->c = *&transform->c;
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

- (void)setPhotoSize:(CGSize)size
{
  if (self->_photoSize.width != size.width || self->_photoSize.height != size.height)
  {
    self->_photoSize = size;
    WeakRetained = objc_loadWeakRetained(&self->_contentView);
    [WeakRetained setNeedsLayout];
  }
}

- (void)setFillMode:(int64_t)mode
{
  if (self->_fillMode != mode)
  {
    self->_fillMode = mode;
    [(PUPhotoViewContentHelper *)self _updateImageView];
    [(PUPhotoViewContentHelper *)self _updateLivePhotoView];
    WeakRetained = objc_loadWeakRetained(&self->_contentView);
    [WeakRetained setNeedsLayout];
  }
}

- (void)setTextBannerVisible:(BOOL)visible
{
  if (self->_isTextBannerVisible != visible)
  {
    self->_isTextBannerVisible = visible;
    [(PUPhotoViewContentHelper *)self _updateTextBannerView];
  }
}

- (void)setCustomPaddingForBadgeElements:(CGSize)elements
{
  if (elements.width != self->_customPaddingForBadgeElements.width || elements.height != self->_customPaddingForBadgeElements.height)
  {
    self->_customPaddingForBadgeElements = elements;
    [(PUPhotoViewContentHelper *)self _invalidateBadgeView];
  }
}

- (void)setBadgeStyle:(int64_t)style
{
  if (self->_badgeStyle != style)
  {
    self->_badgeStyle = style;
    [(PUPhotoViewContentHelper *)self _invalidateBadgeView];
  }
}

- (void)setBadgeInfo:(PXAssetBadgeInfo *)info
{
  p_badgeInfo = &self->_badgeInfo;
  v8 = *info;
  badgeInfo = self->_badgeInfo;
  if ((PXAssetBadgeInfoEqualToBadgeInfo() & 1) == 0)
  {
    v6 = *&info->count;
    *&p_badgeInfo->badges = *&info->badges;
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

- (CGRect)imageContentFrameForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  fillMode = [(PUPhotoViewContentHelper *)self fillMode];
  [(PUPhotoViewContentHelper *)self photoSize];
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_class();

  [v13 _imageContentFrameForBounds:fillMode imageSize:x fillMode:{y, width, height, v10, v12}];
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)photoDecorationBorderViewFrameForImageContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  photoDecoration = [(PUPhotoViewContentHelper *)self photoDecoration];
  [photoDecoration borderWidth];
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

- (PUPhotoViewContentHelper)initWithContentView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = PUPhotoViewContentHelper;
  v5 = [(PUPhotoViewContentHelper *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contentView, viewCopy);
    v6->_fillMode = 0;
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    layerDefaultBackgroundColor = v6->_layerDefaultBackgroundColor;
    v6->_layerDefaultBackgroundColor = systemBackgroundColor;

    v6->_badgeStyle = 1;
    v6->_customPaddingForBadgeElements = *MEMORY[0x1E69C48F0];
    v6->_contentAlpha = 1.0;
    v6->_continuousCorners = 1;
  }

  return v6;
}

+ (CGSize)sizeThatFits:(CGSize)fits imageSize:(CGSize)size fillMode:(int64_t)mode
{
  [self _imageContentFrameForBounds:mode imageSize:0.0 fillMode:{0.0, fits.width, fits.height, size.width, size.height}];
  v6 = v5;
  v8 = v7;
  result.height = v8;
  result.width = v6;
  return result;
}

+ (CGRect)_imageContentFrameForBounds:(CGRect)result imageSize:(CGSize)size fillMode:(int64_t)mode
{
  height = result.size.height;
  width = result.size.width;
  y = result.origin.y;
  x = result.origin.x;
  if (mode >= 2)
  {
    result.size.height = 0.0;
    result.size.width = 0.0;
    result.origin.y = 0.0;
    result.origin.x = 0.0;
    if (mode == 2)
    {
      result.origin.x = PURectWithSizeThatFitsInRect(size.width, size.height, x, y, width, height);
    }
  }

  return result;
}

@end