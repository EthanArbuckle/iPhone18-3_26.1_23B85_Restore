@interface PXVideoSessionUIView
- (CGRect)contentsRect;
- (PXVideoSessionUIView)initWithFrame:(CGRect)a3;
- (PXVideoSessionUIViewDelegate)delegate;
- (UIView)viewForSnapshotting;
- (id)generateSnapshotImage;
- (void)_updateEdgeAntialiasing;
- (void)_updatePlaceholderVisibility;
- (void)_updateVideoViewFrame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setAllowsEdgeAntialiasing:(BOOL)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setContentsRect:(CGRect)a3;
- (void)setPlaceholderImage:(id)a3;
- (void)setPlaceholderVisible:(BOOL)a3;
- (void)setToneMapToStandardDynamicRange:(BOOL)a3;
- (void)setVideoGravity:(id)a3;
- (void)setVideoSession:(id)a3;
@end

@implementation PXVideoSessionUIView

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

- (PXVideoSessionUIViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateEdgeAntialiasing
{
  v3 = [(PXVideoSessionUIView *)self allowsEdgeAntialiasing];
  v4 = [(UIImageView *)self->_placeholderImageView layer];
  [v4 setAllowsEdgeAntialiasing:v3];

  v5 = [(PXVideoView *)self->_adoptedVideoView layer];
  [v5 setAllowsEdgeAntialiasing:v3];
}

- (void)setPlaceholderVisible:(BOOL)a3
{
  if (self->_placeholderVisible != a3)
  {
    self->_placeholderVisible = a3;
    v5 = 0.0;
    if (a3)
    {
      v5 = 1.0;
    }

    [(UIImageView *)self->_placeholderImageView setAlpha:v5];
    v6 = [(PXVideoSessionUIView *)self delegate];
    [v6 videoSessionViewPlaceholderVisibilityChanged:self];
  }
}

- (void)_updatePlaceholderVisibility
{
  v3 = [(PXVideoView *)self->_adoptedVideoView videoIsReadyForDisplay]^ 1;

  [(PXVideoSessionUIView *)self setPlaceholderVisible:v3];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 0x4000) != 0 && VideoSessionContext == a5)
  {
    px_dispatch_on_main_queue_sync();
  }
}

void __53__PXVideoSessionUIView_observable_didChange_context___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) videoSession];
  v2 = [v3 videoPlayer];
  [*(*(a1 + 32) + 416) setPlayer:v2];
}

- (void)dealloc
{
  if (self->_adoptedVideoView)
  {
    videoSession = self->_videoSession;
    if (videoSession)
    {
      [(PXVideoSession *)videoSession recycleVideoView:?];
    }
  }

  v4.receiver = self;
  v4.super_class = PXVideoSessionUIView;
  [(PXVideoSessionUIView *)&v4 dealloc];
}

- (UIView)viewForSnapshotting
{
  adoptedVideoView = self->_adoptedVideoView;
  if (adoptedVideoView)
  {
    if ([(PXVideoView *)adoptedVideoView videoIsReadyForDisplay])
    {
      adoptedVideoView = self->_adoptedVideoView;
    }

    else
    {
      adoptedVideoView = 0;
    }
  }

  return adoptedVideoView;
}

- (id)generateSnapshotImage
{
  if ([(PXVideoSessionUIView *)self placeholderVisible])
  {
    v3 = [(PXVideoSessionUIView *)self placeholderImage];
  }

  else
  {
    v4 = [(PXVideoSessionUIView *)self videoSession];
    v5 = [v4 generateSnapshotImage];

    if (v5)
    {
      v3 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v5];
      CGImageRelease(v5);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)setAllowsEdgeAntialiasing:(BOOL)a3
{
  if (self->_allowsEdgeAntialiasing != a3)
  {
    self->_allowsEdgeAntialiasing = a3;
    [(PXVideoSessionUIView *)self _updateEdgeAntialiasing];
  }
}

- (void)_updateVideoViewFrame
{
  v3 = [(PXVideoSessionUIView *)self videoSession];
  v4 = [v3 contentProvider];
  v19 = [v4 videoAspectRatio];

  [(PXVideoSessionUIView *)self contentsRect];
  [(PXVideoSessionUIView *)self bounds];
  [v19 floatValue];
  v6 = v5;
  v7 = [(PXVideoSessionUIView *)self traitCollection];
  [v7 displayScale];
  v17 = v6;
  v18 = v8;
  PFFrameApplyingContentsRectInBounds();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(PXVideoView *)self->_adoptedVideoView setFrame:v10, v12, v14, v16, *&v17, v18];
}

- (void)setToneMapToStandardDynamicRange:(BOOL)a3
{
  if (self->_toneMapToStandardDynamicRange != a3)
  {
    self->_toneMapToStandardDynamicRange = a3;
    [(PXVideoView *)self->_adoptedVideoView setToneMapToStandardDynamicRange:?];
  }
}

- (void)setContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(a3, self->_contentsRect))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;
    v9 = [(UIImageView *)self->_placeholderImageView layer];
    [v9 setContentsRect:{x, y, width, height}];

    [(PXVideoSessionUIView *)self _updateVideoViewFrame];
  }
}

- (void)setVideoGravity:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToString:self->_videoGravity] & 1) == 0)
  {
    v4 = [v6 copy];
    videoGravity = self->_videoGravity;
    self->_videoGravity = v4;

    [(PXVideoView *)self->_adoptedVideoView setVideoGravity:self->_videoGravity];
  }
}

- (void)setPlaceholderImage:(id)a3
{
  v5 = a3;
  if (self->_placeholderImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholderImage, a3);
    [(UIImageView *)self->_placeholderImageView setImage:v6];
    v5 = v6;
  }
}

- (void)setVideoSession:(id)a3
{
  v5 = a3;
  videoSession = self->_videoSession;
  if (videoSession != v5)
  {
    v12 = v5;
    [(PXVideoSession *)videoSession unregisterChangeObserver:self context:VideoSessionContext];
    adoptedVideoView = self->_adoptedVideoView;
    if (adoptedVideoView)
    {
      [(PXVideoView *)adoptedVideoView setDelegate:0];
      [(PXVideoView *)self->_adoptedVideoView removeFromSuperview];
      [(PXVideoSession *)self->_videoSession recycleVideoView:self->_adoptedVideoView];
      v8 = self->_adoptedVideoView;
      self->_adoptedVideoView = 0;
    }

    objc_storeStrong(&self->_videoSession, a3);
    [(PXVideoSession *)self->_videoSession registerChangeObserver:self context:VideoSessionContext];
    v9 = [(PXVideoSession *)v12 dequeueVideoView];
    v10 = self->_adoptedVideoView;
    self->_adoptedVideoView = v9;

    v11 = [(PXVideoSessionUIView *)self videoGravity];
    [(PXVideoView *)self->_adoptedVideoView setVideoGravity:v11];

    [(PXVideoView *)self->_adoptedVideoView setContentMode:[(PXVideoSessionUIView *)self contentMode]];
    [(PXVideoView *)self->_adoptedVideoView setToneMapToStandardDynamicRange:[(PXVideoSessionUIView *)self toneMapToStandardDynamicRange]];
    [(PXVideoView *)self->_adoptedVideoView setDelegate:self];
    [(UIView *)self->_videoContainerView addSubview:self->_adoptedVideoView];
    [(PXVideoSessionUIView *)self setNeedsLayout];
    [(PXVideoSessionUIView *)self _updateEdgeAntialiasing];
    [(PXVideoSessionUIView *)self _updatePlaceholderVisibility];
    [(PXVideoSessionUIView *)self _updateVideoViewFrame];
    v5 = v12;
  }
}

- (void)setContentMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PXVideoSessionUIView;
  [(PXVideoSessionUIView *)&v5 setContentMode:?];
  [(PXVideoView *)self->_adoptedVideoView setContentMode:a3];
  [(UIImageView *)self->_placeholderImageView setContentMode:a3];
  [(UIView *)self->_videoContainerView setContentMode:a3];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PXVideoSessionUIView;
  [(PXVideoSessionUIView *)&v11 layoutSubviews];
  [(PXVideoSessionUIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_placeholderImageView setFrame:?];
  [(UIView *)self->_videoContainerView setFrame:v4, v6, v8, v10];
  [(PXVideoSessionUIView *)self _updateVideoViewFrame];
}

- (PXVideoSessionUIView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = PXVideoSessionUIView;
  v3 = [(PXVideoSessionUIView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(&v3->_videoGravity, *MEMORY[0x1E69874F0]);
    v4->_placeholderVisible = 1;
    v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    placeholderImageView = v4->_placeholderImageView;
    v4->_placeholderImageView = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    videoContainerView = v4->_videoContainerView;
    v4->_videoContainerView = v7;

    [(UIView *)v4->_videoContainerView setClipsToBounds:1];
    v9 = *(off_1E77221F8 + 1);
    v4->_contentsRect.origin = *off_1E77221F8;
    v4->_contentsRect.size = v9;
    [(PXVideoSessionUIView *)v4 addSubview:v4->_placeholderImageView];
    [(PXVideoSessionUIView *)v4 addSubview:v4->_videoContainerView];
    [(PXVideoSessionUIView *)v4 setContentMode:2];
    [(PXVideoSessionUIView *)v4 setClipsToBounds:1];
    [(PXVideoSessionUIView *)v4 _updateEdgeAntialiasing];
  }

  return v4;
}

@end