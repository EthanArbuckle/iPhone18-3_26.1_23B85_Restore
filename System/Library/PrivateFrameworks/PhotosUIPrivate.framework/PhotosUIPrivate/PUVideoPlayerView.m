@interface PUVideoPlayerView
- (CGRect)placeholderImageContentsRect;
- (PUVideoPlayerView)initWithFrame:(CGRect)a3;
- (PUVideoPlayerViewDelegate)delegate;
- (id)generateSnapshotImage;
- (void)_installNewVideoViewIfNecessaryWithPlayer:(id)a3;
- (void)_updateContentMode;
- (void)_updateEdgeAntialiasing;
- (void)_updateSubviewsVisibility;
- (void)configureWithAVPlayer:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAllowsEdgeAntialiasing:(BOOL)a3;
- (void)setIsDisplayingPlaceholder:(BOOL)a3;
- (void)setIsReadyForVideoDisplay:(BOOL)a3;
- (void)setPlaceholderImage:(id)a3;
- (void)setPlaceholderImageContentsRect:(CGRect)a3;
- (void)setVideoViewContentMode:(unint64_t)a3;
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
    v4 = [(_PUVideoView *)self->_videoView player];
    v5 = v4;
    if (v4)
    {
      [v4 currentTime];
    }

    else
    {
      v18 = 0uLL;
      v19 = 0;
    }

    memset(v17, 0, sizeof(v17));
    v6 = [(_PUVideoView *)self->_videoView player];
    v7 = [v6 currentItem];
    v8 = [v7 asset];

    v9 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:v8];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &PUPlayerLayerReadyForDisplayObservingContext)
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
    [(PUVideoPlayerView *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
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
  v3 = [(_PUVideoView *)self->_videoView layer];
  [v3 removeObserver:self forKeyPath:@"readyForDisplay"];

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
  v3 = [(PUVideoPlayerView *)self allowsEdgeAntialiasing];
  v4 = [(UIImageView *)self->_previewImageView layer];
  [v4 setAllowsEdgeAntialiasing:v3];

  v5 = [(_PUVideoView *)self->_videoView layer];
  [v5 setAllowsEdgeAntialiasing:v3];
}

- (void)_updateContentMode
{
  v3 = [(PUVideoPlayerView *)self videoViewContentMode];
  v4 = v3;
  if (v3 == 1)
  {
    v5 = MEMORY[0x1E69874E8];
  }

  else
  {
    if (v3)
    {
      return;
    }

    v5 = MEMORY[0x1E69874F0];
    v4 = 2;
  }

  [(UIImageView *)self->_previewImageView setContentMode:v4];
  v6 = [(_PUVideoView *)self->_videoView layer];
  [v6 setVideoGravity:*v5];
}

- (void)setAllowsEdgeAntialiasing:(BOOL)a3
{
  if (self->_allowsEdgeAntialiasing != a3)
  {
    self->_allowsEdgeAntialiasing = a3;
    [(PUVideoPlayerView *)self _updateEdgeAntialiasing];
  }
}

- (void)setVideoViewContentMode:(unint64_t)a3
{
  if (self->_videoViewContentMode != a3)
  {
    self->_videoViewContentMode = a3;
    [(PUVideoPlayerView *)self _updateContentMode];
  }
}

- (void)setIsReadyForVideoDisplay:(BOOL)a3
{
  if (self->_isReadyForVideoDisplay != a3)
  {
    v3 = a3;
    self->_isReadyForVideoDisplay = a3;
    v5 = [(PUVideoPlayerView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(PUVideoPlayerView *)self delegate];
      [v7 videoPlayerView:self isReadyForDisplayDidChange:v3];
    }
  }
}

- (void)setPlaceholderImageContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_placeholderImageContentsRect = &self->_placeholderImageContentsRect;
  if (!CGRectEqualToRect(a3, self->_placeholderImageContentsRect))
  {
    p_placeholderImageContentsRect->origin.x = x;
    p_placeholderImageContentsRect->origin.y = y;
    p_placeholderImageContentsRect->size.width = width;
    p_placeholderImageContentsRect->size.height = height;
    v9 = [(UIImageView *)self->_previewImageView layer];
    [v9 setContentsRect:{x, y, width, height}];
  }
}

- (void)_installNewVideoViewIfNecessaryWithPlayer:(id)a3
{
  v4 = a3;
  videoView = self->_videoView;
  v10 = v4;
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
    v9 = [(_PUVideoView *)self->_videoView layer];
    [v9 addObserver:self forKeyPath:@"readyForDisplay" options:4 context:&PUPlayerLayerReadyForDisplayObservingContext];

    v4 = v10;
    videoView = self->_videoView;
  }

  [(_PUVideoView *)videoView setPlayer:v4];
  [(PUVideoPlayerView *)self _updateContentMode];
  [(PUVideoPlayerView *)self _updateEdgeAntialiasing];
  [(PUVideoPlayerView *)self setNeedsLayout];
}

- (void)setIsDisplayingPlaceholder:(BOOL)a3
{
  if (self->_isDisplayingPlaceholder != a3)
  {
    self->_isDisplayingPlaceholder = a3;
    [(PUVideoPlayerView *)self _updateSubviewsVisibility];
  }
}

- (void)configureWithAVPlayer:(id)a3
{
  v5 = a3;
  v4 = [(_PUVideoView *)self->_videoView player];

  if (v4 != v5)
  {
    [(PUVideoPlayerView *)self setIsDisplayingPlaceholder:1];
    [(PUVideoPlayerView *)self setIsReadyForVideoDisplay:0];
    [(PUVideoPlayerView *)self _installNewVideoViewIfNecessaryWithPlayer:v5];
  }
}

- (void)setPlaceholderImage:(id)a3
{
  v5 = a3;
  if (self->_placeholderImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholderImage, a3);
    [(UIImageView *)self->_previewImageView setImage:v6];
    v5 = v6;
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

- (PUVideoPlayerView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PUVideoPlayerView;
  v3 = [(PUVideoPlayerView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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