@interface PUVideoPlayerView
- (CGRect)placeholderImageContentsRect;
- (PUVideoPlayerView)initWithFrame:(CGRect)frame;
- (PUVideoPlayerViewDelegate)delegate;
- (id)generateSnapshotImage;
- (void)_installNewVideoViewIfNecessaryWithPlayer:(id)player;
- (void)_updateContentMode;
- (void)_updateEdgeAntialiasing;
- (void)_updateSubviewsVisibility;
- (void)configureWithAVPlayer:(id)player;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAllowsEdgeAntialiasing:(BOOL)antialiasing;
- (void)setIsDisplayingPlaceholder:(BOOL)placeholder;
- (void)setIsReadyForVideoDisplay:(BOOL)display;
- (void)setPlaceholderImage:(id)image;
- (void)setPlaceholderImageContentsRect:(CGRect)rect;
- (void)setVideoViewContentMode:(unint64_t)mode;
@end

@implementation PUVideoPlayerView

- (PUVideoPlayerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

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

- (id)generateSnapshotImage
{
  if (self->_isDisplayingPlaceholder)
  {
    v3 = self->_placeholderImage;
  }

  else
  {
    v18 = 0uLL;
    v19 = 0;
    player = [(_PUVideoView *)self->_videoView player];
    v5 = player;
    if (player)
    {
      [player currentTime];
    }

    else
    {
      v18 = 0uLL;
      v19 = 0;
    }

    memset(v17, 0, sizeof(v17));
    player2 = [(_PUVideoView *)self->_videoView player];
    currentItem = [player2 currentItem];
    asset = [currentItem asset];

    v9 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:asset];
    [v9 setAppliesPreferredTrackTransform:1];
    v15 = *MEMORY[0x1E6960CC0];
    v14 = v15;
    v16 = *(MEMORY[0x1E6960CC0] + 16);
    v10 = v16;
    [v9 setRequestedTimeToleranceBefore:&v15];
    v15 = v14;
    v16 = v10;
    [v9 setRequestedTimeToleranceAfter:&v15];
    v15 = v18;
    v16 = v19;
    v11 = [MEMORY[0x1E69C0708] copyCGImageFromImageGenerator:v9 atTime:&v15 actualTime:v17 error:0];
    if (v11)
    {
      v12 = v11;
      if (CGImageGetWidth(v11) && CGImageGetHeight(v12))
      {
        v3 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v12];
      }

      else
      {
        v3 = 0;
      }

      CFRelease(v12);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &PUPlayerLayerReadyForDisplayObservingContext)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PUVideoPlayerView_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E7B80DD0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PUVideoPlayerView;
    [(PUVideoPlayerView *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

uint64_t __68__PUVideoPlayerView_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 408) layer];
  v3 = [v2 isReadyForDisplay];

  v4 = *(a1 + 32);

  return [v4 setIsReadyForVideoDisplay:v3];
}

- (void)dealloc
{
  layer = [(_PUVideoView *)self->_videoView layer];
  [layer removeObserver:self forKeyPath:@"readyForDisplay"];

  v4.receiver = self;
  v4.super_class = PUVideoPlayerView;
  [(PUVideoPlayerView *)&v4 dealloc];
}

- (void)_updateSubviewsVisibility
{
  isDisplayingPlaceholder = self->_isDisplayingPlaceholder;
  previewImageView = self->_previewImageView;
  if (isDisplayingPlaceholder)
  {

    [(UIImageView *)previewImageView setAlpha:1.0];
  }

  else
  {
    [(UIImageView *)previewImageView setAlpha:0.0];
    [(_PUVideoView *)self->_videoView removeFromSuperview];
    videoView = self->_videoView;

    [(PUVideoPlayerView *)self addSubview:videoView];
  }
}

- (void)_updateEdgeAntialiasing
{
  allowsEdgeAntialiasing = [(PUVideoPlayerView *)self allowsEdgeAntialiasing];
  layer = [(UIImageView *)self->_previewImageView layer];
  [layer setAllowsEdgeAntialiasing:allowsEdgeAntialiasing];

  layer2 = [(_PUVideoView *)self->_videoView layer];
  [layer2 setAllowsEdgeAntialiasing:allowsEdgeAntialiasing];
}

- (void)_updateContentMode
{
  videoViewContentMode = [(PUVideoPlayerView *)self videoViewContentMode];
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
  layer = [(_PUVideoView *)self->_videoView layer];
  [layer setVideoGravity:*v5];
}

- (void)setAllowsEdgeAntialiasing:(BOOL)antialiasing
{
  if (self->_allowsEdgeAntialiasing != antialiasing)
  {
    self->_allowsEdgeAntialiasing = antialiasing;
    [(PUVideoPlayerView *)self _updateEdgeAntialiasing];
  }
}

- (void)setVideoViewContentMode:(unint64_t)mode
{
  if (self->_videoViewContentMode != mode)
  {
    self->_videoViewContentMode = mode;
    [(PUVideoPlayerView *)self _updateContentMode];
  }
}

- (void)setIsReadyForVideoDisplay:(BOOL)display
{
  if (self->_isReadyForVideoDisplay != display)
  {
    displayCopy = display;
    self->_isReadyForVideoDisplay = display;
    delegate = [(PUVideoPlayerView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(PUVideoPlayerView *)self delegate];
      [delegate2 videoPlayerView:self isReadyForDisplayDidChange:displayCopy];
    }
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

- (void)_installNewVideoViewIfNecessaryWithPlayer:(id)player
{
  playerCopy = player;
  videoView = self->_videoView;
  v10 = playerCopy;
  if (!videoView)
  {
    v6 = [_PUVideoView alloc];
    [(PUVideoPlayerView *)self bounds];
    v7 = [(_PUVideoView *)v6 initWithFrame:?];
    v8 = self->_videoView;
    self->_videoView = v7;

    [(_PUVideoView *)self->_videoView setUserInteractionEnabled:0];
    [(_PUVideoView *)self->_videoView setAutoresizingMask:18];
    [(PUVideoPlayerView *)self insertSubview:self->_videoView atIndex:0];
    layer = [(_PUVideoView *)self->_videoView layer];
    [layer addObserver:self forKeyPath:@"readyForDisplay" options:4 context:&PUPlayerLayerReadyForDisplayObservingContext];

    playerCopy = v10;
    videoView = self->_videoView;
  }

  [(_PUVideoView *)videoView setPlayer:playerCopy];
  [(PUVideoPlayerView *)self _updateContentMode];
  [(PUVideoPlayerView *)self _updateEdgeAntialiasing];
  [(PUVideoPlayerView *)self setNeedsLayout];
}

- (void)setIsDisplayingPlaceholder:(BOOL)placeholder
{
  if (self->_isDisplayingPlaceholder != placeholder)
  {
    self->_isDisplayingPlaceholder = placeholder;
    [(PUVideoPlayerView *)self _updateSubviewsVisibility];
  }
}

- (void)configureWithAVPlayer:(id)player
{
  playerCopy = player;
  player = [(_PUVideoView *)self->_videoView player];

  if (player != playerCopy)
  {
    [(PUVideoPlayerView *)self setIsDisplayingPlaceholder:1];
    [(PUVideoPlayerView *)self setIsReadyForVideoDisplay:0];
    [(PUVideoPlayerView *)self _installNewVideoViewIfNecessaryWithPlayer:playerCopy];
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
  v11.super_class = PUVideoPlayerView;
  [(PUVideoPlayerView *)&v11 layoutSubviews];
  [(PUVideoPlayerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_previewImageView setFrame:?];
  [(_PUVideoView *)self->_videoView setFrame:v4, v6, v8, v10];
  [(PUVideoPlayerView *)self _updateSubviewsVisibility];
}

- (PUVideoPlayerView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PUVideoPlayerView;
  v3 = [(PUVideoPlayerView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(PUVideoPlayerView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    previewImageView = v3->_previewImageView;
    v3->_previewImageView = v5;

    [(UIImageView *)v3->_previewImageView setUserInteractionEnabled:0];
    [(PUVideoPlayerView *)v3 addSubview:v3->_previewImageView];
    v3->_isDisplayingPlaceholder = 1;
    v3->_isReadyForVideoDisplay = 0;
    [(PUVideoPlayerView *)v3 setVideoViewContentMode:0];
    [(PUVideoPlayerView *)v3 setClipsToBounds:1];
    [(PUVideoPlayerView *)v3 _updateContentMode];
    [(PUVideoPlayerView *)v3 _updateEdgeAntialiasing];
  }

  return v3;
}

@end