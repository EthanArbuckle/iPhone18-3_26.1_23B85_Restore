@interface PXVideoPlayerView
- (CGRect)placeholderImageContentsRect;
- (PXVideoPlayerView)initWithFrame:(CGRect)frame;
- (PXVideoPlayerViewDelegate)delegate;
- (id)generateSnapshotImage;
- (void)_runVisibilityChangeCompletionHandler;
- (void)_setDisplayingPlaceholder:(BOOL)placeholder requestID:(int64_t)d;
- (void)_updateContentMode;
- (void)_updateEdgeAntialiasing;
- (void)_updateSubviewsVisibility;
- (void)_updateVideoView;
- (void)layoutSubviews;
- (void)setAllowsEdgeAntialiasing:(BOOL)antialiasing;
- (void)setPlaceholderDisplayMode:(int64_t)mode completion:(id)completion;
- (void)setPlaceholderImage:(id)image;
- (void)setPlaceholderImageContentsRect:(CGRect)rect;
- (void)setPlaceholderImageFilters:(id)filters;
- (void)setPlayer:(id)player;
- (void)setVideoViewContentMode:(int64_t)mode;
@end

@implementation PXVideoPlayerView

- (CGRect)placeholderImageContentsRect
{
  x = self->_placeholderImageContentsRect.origin.x;
  y = self->_placeholderImageContentsRect.origin.y;
  width = self->_placeholderImageContentsRect.size.width;
  height = self->_placeholderImageContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXVideoPlayerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)generateSnapshotImage
{
  [(UIImageView *)self->_previewImageView alpha];
  if (v3 <= 0.0)
  {
    player = [(PXVideoView *)self->_videoView player];
    v6 = player;
    v21 = 0uLL;
    v22 = 0;
    if (player)
    {
      [player currentTime];
    }

    memset(v20, 0, sizeof(v20));
    currentItem = [v6 currentItem];
    asset = [currentItem asset];
    v9 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:asset];
    [v9 setAppliesPreferredTrackTransform:1];
    v10 = MEMORY[0x1E6960CC0];
    v18 = *MEMORY[0x1E6960CC0];
    v19 = *(MEMORY[0x1E6960CC0] + 16);
    [v9 setRequestedTimeToleranceAfter:&v18];
    v18 = *v10;
    v19 = *(v10 + 2);
    [v9 setRequestedTimeToleranceBefore:&v18];
    videoComposition = [currentItem videoComposition];
    [v9 setVideoComposition:videoComposition];

    customVideoCompositor = [v9 customVideoCompositor];
    NSClassFromString(&cfstr_Nuvideoplaybac.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      customVideoCompositor2 = [v9 customVideoCompositor];
      [customVideoCompositor2 setValue:@"PXVideoPlayerView-generateSnapshotImage" forKey:@"label"];
    }

    v18 = v21;
    v19 = v22;
    v15 = [MEMORY[0x1E69C0708] copyCGImageFromImageGenerator:v9 atTime:&v18 actualTime:v20 error:0];
    if (v15)
    {
      v16 = v15;
      if (CGImageGetWidth(v15) && CGImageGetHeight(v16))
      {
        v4 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v16];
      }

      else
      {
        v4 = 0;
      }

      CFRelease(v16);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = self->_placeholderImage;
  }

  return v4;
}

- (void)_runVisibilityChangeCompletionHandler
{
  visibilityChangeCompletionHandler = self->_visibilityChangeCompletionHandler;
  if (visibilityChangeCompletionHandler)
  {
    visibilityChangeCompletionHandler[2](visibilityChangeCompletionHandler, a2);
    v4 = self->_visibilityChangeCompletionHandler;
    self->_visibilityChangeCompletionHandler = 0;
  }
}

- (void)_setDisplayingPlaceholder:(BOOL)placeholder requestID:(int64_t)d
{
  if (self->_placeholderVisibilityRequestID == d && (v5 = placeholder, self->_displayingPlaceholder != placeholder))
  {
    self->_displayingPlaceholder = placeholder;
    [(PXVideoPlayerView *)self videoAppearanceCrossfadeDuration];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__PXVideoPlayerView__setDisplayingPlaceholder_requestID___block_invoke;
    v8[3] = &unk_1E7749428;
    v8[4] = self;
    v9 = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__PXVideoPlayerView__setDisplayingPlaceholder_requestID___block_invoke_2;
    v7[3] = &unk_1E774B308;
    v7[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v8 options:v7 animations:? completion:?];
    delegate = [(PXVideoPlayerView *)self delegate];
    [delegate videoPlayerView:self isDisplayingPlaceholderDidChange:v5];
  }

  else
  {

    [(PXVideoPlayerView *)self _runVisibilityChangeCompletionHandler];
  }
}

uint64_t __57__PXVideoPlayerView__setDisplayingPlaceholder_requestID___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 424) setAlpha:v1];
}

- (void)_updateSubviewsVisibility
{
  placeholderDisplayMode = [(PXVideoPlayerView *)self placeholderDisplayMode];
  layer = [(PXVideoView *)self->_videoView layer];
  isReadyForDisplay = [layer isReadyForDisplay];

  if (placeholderDisplayMode == 1)
  {
    goto LABEL_6;
  }

  if (placeholderDisplayMode)
  {
    placeholderDisplayMode = 0;
    goto LABEL_6;
  }

  placeholderDisplayMode = isReadyForDisplay ^ 1u;
  player = [(PXVideoPlayerView *)self player];
  [player rate];
  if ((v7 <= 0.0) | isReadyForDisplay & 1)
  {

LABEL_6:
    v8 = self->_placeholderVisibilityRequestID + 1;
    self->_placeholderVisibilityRequestID = v8;
    goto LABEL_7;
  }

  window = [(PXVideoPlayerView *)self window];

  v8 = self->_placeholderVisibilityRequestID + 1;
  self->_placeholderVisibilityRequestID = v8;
  if (window)
  {
    v10 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__PXVideoPlayerView__updateSubviewsVisibility__block_invoke;
    block[3] = &unk_1E7733CB8;
    v12 = placeholderDisplayMode;
    block[4] = self;
    block[5] = v8;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
    return;
  }

LABEL_7:

  [(PXVideoPlayerView *)self _setDisplayingPlaceholder:placeholderDisplayMode requestID:v8];
}

- (void)_updateEdgeAntialiasing
{
  allowsEdgeAntialiasing = [(PXVideoPlayerView *)self allowsEdgeAntialiasing];
  layer = [(UIImageView *)self->_previewImageView layer];
  [layer setAllowsEdgeAntialiasing:allowsEdgeAntialiasing];

  layer2 = [(PXVideoView *)self->_videoView layer];
  [layer2 setAllowsEdgeAntialiasing:allowsEdgeAntialiasing];
}

- (void)_updateContentMode
{
  videoViewContentMode = [(PXVideoPlayerView *)self videoViewContentMode];
  v4 = videoViewContentMode;
  if (videoViewContentMode == 1)
  {
    v5 = MEMORY[0x1E69874E8];
  }

  else
  {
    if (videoViewContentMode)
    {
      return;
    }

    v5 = MEMORY[0x1E69874F0];
    v4 = 2;
  }

  [(UIImageView *)self->_previewImageView setContentMode:v4];
  layer = [(PXVideoView *)self->_videoView layer];
  [layer setVideoGravity:*v5];
}

- (void)setAllowsEdgeAntialiasing:(BOOL)antialiasing
{
  if (self->_allowsEdgeAntialiasing != antialiasing)
  {
    self->_allowsEdgeAntialiasing = antialiasing;
    [(PXVideoPlayerView *)self _updateEdgeAntialiasing];
  }
}

- (void)setVideoViewContentMode:(int64_t)mode
{
  if (self->_videoViewContentMode != mode)
  {
    self->_videoViewContentMode = mode;
    [(PXVideoPlayerView *)self _updateContentMode];
  }
}

- (void)setPlaceholderImageContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_placeholderImageContentsRect = &self->_placeholderImageContentsRect;
  if (!CGRectEqualToRect(rect, self->_placeholderImageContentsRect))
  {
    p_placeholderImageContentsRect->origin.x = x;
    p_placeholderImageContentsRect->origin.y = y;
    p_placeholderImageContentsRect->size.width = width;
    p_placeholderImageContentsRect->size.height = height;
    layer = [(UIImageView *)self->_previewImageView layer];
    [layer setContentsRect:{x, y, width, height}];
  }
}

- (void)_updateVideoView
{
  if (!self->_videoView)
  {
    v3 = [PXVideoView alloc];
    [(PXVideoPlayerView *)self bounds];
    v4 = [(PXVideoView *)v3 initWithFrame:?];
    videoView = self->_videoView;
    self->_videoView = v4;

    [(PXVideoView *)self->_videoView setUserInteractionEnabled:0];
    [(PXVideoView *)self->_videoView setAutoresizingMask:18];
    [(PXVideoView *)self->_videoView setToneMapToStandardDynamicRange:[(PXVideoPlayerView *)self toneMapToStandardDynamicRange]];
    [(PXVideoPlayerView *)self insertSubview:self->_videoView atIndex:0];
    objc_initWeak(&location, self);
    layer = [(PXVideoView *)self->_videoView layer];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __37__PXVideoPlayerView__updateVideoView__block_invoke;
    v11 = &unk_1E774C318;
    objc_copyWeak(&v12, &location);
    [layer setReadyForDisplayChangeHandler:&v8];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v7 = [(PXVideoPlayerView *)self player:v8];
  [(PXVideoView *)self->_videoView setPlayer:v7];
  [(PXVideoPlayerView *)self _updateContentMode];
  [(PXVideoPlayerView *)self _updateEdgeAntialiasing];
  [(PXVideoPlayerView *)self _updateSubviewsVisibility];
  [(PXVideoPlayerView *)self setNeedsLayout];
}

void __37__PXVideoPlayerView__updateVideoView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSubviewsVisibility];
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  if (self->_player != playerCopy)
  {
    v6 = playerCopy;
    objc_storeStrong(&self->_player, player);
    [(PXVideoPlayerView *)self _updateVideoView];
    playerCopy = v6;
  }
}

- (void)setPlaceholderDisplayMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  if (self->_placeholderDisplayMode == mode)
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v9 = completionCopy;
    completionCopy[2]();
  }

  else
  {
    v9 = completionCopy;
    v7 = [completionCopy copy];
    visibilityChangeCompletionHandler = self->_visibilityChangeCompletionHandler;
    self->_visibilityChangeCompletionHandler = v7;

    self->_placeholderDisplayMode = mode;
    [(PXVideoPlayerView *)self _updateSubviewsVisibility];
  }

  completionCopy = v9;
LABEL_6:
}

- (void)setPlaceholderImageFilters:(id)filters
{
  filtersCopy = filters;
  v5 = filtersCopy;
  if (self->_placeholderImageFilters != filtersCopy)
  {
    v13 = filtersCopy;
    v6 = [(NSArray *)filtersCopy isEqual:?];
    v5 = v13;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v13 copy];
      placeholderImageFilters = self->_placeholderImageFilters;
      self->_placeholderImageFilters = v7;

      layer = [(UIImageView *)self->_previewImageView layer];
      [layer setFilters:v13];

      v10 = [(NSArray *)v13 count]!= 0;
      layer2 = [(UIImageView *)self->_previewImageView layer];
      [layer2 setShouldRasterize:v10];

      layer3 = [(UIImageView *)self->_previewImageView layer];
      [layer3 setRasterizationScale:0.5];

      v5 = v13;
    }
  }
}

- (void)setPlaceholderImage:(id)image
{
  imageCopy = image;
  if (self->_placeholderImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_placeholderImage, image);
    [(UIImageView *)self->_previewImageView setImage:v6];
    imageCopy = v6;
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PXVideoPlayerView;
  [(PXVideoPlayerView *)&v11 layoutSubviews];
  [(PXVideoPlayerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_previewImageView setFrame:?];
  [(PXVideoView *)self->_videoView setFrame:v4, v6, v8, v10];
}

- (PXVideoPlayerView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PXVideoPlayerView;
  v3 = [(PXVideoPlayerView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_placeholderDisplayMode = 0;
    v3->_videoAppearanceCrossfadeDuration = 0.0;
    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(PXVideoPlayerView *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    previewImageView = v4->_previewImageView;
    v4->_previewImageView = v6;

    [(UIImageView *)v4->_previewImageView setUserInteractionEnabled:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)v4->_previewImageView setBackgroundColor:clearColor];

    v4->_displayingPlaceholder = 1;
    [(PXVideoPlayerView *)v4 addSubview:v4->_previewImageView];
    [(PXVideoPlayerView *)v4 setVideoViewContentMode:0];
    [(PXVideoPlayerView *)v4 setClipsToBounds:1];
    [(PXVideoPlayerView *)v4 _updateContentMode];
    [(PXVideoPlayerView *)v4 _updateEdgeAntialiasing];
    [(PXVideoPlayerView *)v4 _updateSubviewsVisibility];
  }

  return v4;
}

@end