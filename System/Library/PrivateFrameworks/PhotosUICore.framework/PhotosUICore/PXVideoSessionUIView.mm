@interface PXVideoSessionUIView
- (CGRect)contentsRect;
- (PXVideoSessionUIView)initWithFrame:(CGRect)frame;
- (PXVideoSessionUIViewDelegate)delegate;
- (UIView)viewForSnapshotting;
- (id)generateSnapshotImage;
- (void)_updateEdgeAntialiasing;
- (void)_updatePlaceholderVisibility;
- (void)_updateVideoViewFrame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setAllowsEdgeAntialiasing:(BOOL)antialiasing;
- (void)setContentMode:(int64_t)mode;
- (void)setContentsRect:(CGRect)rect;
- (void)setPlaceholderImage:(id)image;
- (void)setPlaceholderVisible:(BOOL)visible;
- (void)setToneMapToStandardDynamicRange:(BOOL)range;
- (void)setVideoGravity:(id)gravity;
- (void)setVideoSession:(id)session;
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
  allowsEdgeAntialiasing = [(PXVideoSessionUIView *)self allowsEdgeAntialiasing];
  layer = [(UIImageView *)self->_placeholderImageView layer];
  [layer setAllowsEdgeAntialiasing:allowsEdgeAntialiasing];

  layer2 = [(PXVideoView *)self->_adoptedVideoView layer];
  [layer2 setAllowsEdgeAntialiasing:allowsEdgeAntialiasing];
}

- (void)setPlaceholderVisible:(BOOL)visible
{
  if (self->_placeholderVisible != visible)
  {
    self->_placeholderVisible = visible;
    v5 = 0.0;
    if (visible)
    {
      v5 = 1.0;
    }

    [(UIImageView *)self->_placeholderImageView setAlpha:v5];
    delegate = [(PXVideoSessionUIView *)self delegate];
    [delegate videoSessionViewPlaceholderVisibilityChanged:self];
  }
}

- (void)_updatePlaceholderVisibility
{
  v3 = [(PXVideoView *)self->_adoptedVideoView videoIsReadyForDisplay]^ 1;

  [(PXVideoSessionUIView *)self setPlaceholderVisible:v3];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 0x4000) != 0 && VideoSessionContext == context)
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
    placeholderImage = [(PXVideoSessionUIView *)self placeholderImage];
  }

  else
  {
    videoSession = [(PXVideoSessionUIView *)self videoSession];
    generateSnapshotImage = [videoSession generateSnapshotImage];

    if (generateSnapshotImage)
    {
      placeholderImage = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:generateSnapshotImage];
      CGImageRelease(generateSnapshotImage);
    }

    else
    {
      placeholderImage = 0;
    }
  }

  return placeholderImage;
}

- (void)setAllowsEdgeAntialiasing:(BOOL)antialiasing
{
  if (self->_allowsEdgeAntialiasing != antialiasing)
  {
    self->_allowsEdgeAntialiasing = antialiasing;
    [(PXVideoSessionUIView *)self _updateEdgeAntialiasing];
  }
}

- (void)_updateVideoViewFrame
{
  videoSession = [(PXVideoSessionUIView *)self videoSession];
  contentProvider = [videoSession contentProvider];
  videoAspectRatio = [contentProvider videoAspectRatio];

  [(PXVideoSessionUIView *)self contentsRect];
  [(PXVideoSessionUIView *)self bounds];
  [videoAspectRatio floatValue];
  v6 = v5;
  traitCollection = [(PXVideoSessionUIView *)self traitCollection];
  [traitCollection displayScale];
  v17 = v6;
  v18 = v8;
  PFFrameApplyingContentsRectInBounds();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(PXVideoView *)self->_adoptedVideoView setFrame:v10, v12, v14, v16, *&v17, v18];
}

- (void)setToneMapToStandardDynamicRange:(BOOL)range
{
  if (self->_toneMapToStandardDynamicRange != range)
  {
    self->_toneMapToStandardDynamicRange = range;
    [(PXVideoView *)self->_adoptedVideoView setToneMapToStandardDynamicRange:?];
  }
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(rect, self->_contentsRect))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;
    layer = [(UIImageView *)self->_placeholderImageView layer];
    [layer setContentsRect:{x, y, width, height}];

    [(PXVideoSessionUIView *)self _updateVideoViewFrame];
  }
}

- (void)setVideoGravity:(id)gravity
{
  gravityCopy = gravity;
  if (([gravityCopy isEqualToString:self->_videoGravity] & 1) == 0)
  {
    v4 = [gravityCopy copy];
    videoGravity = self->_videoGravity;
    self->_videoGravity = v4;

    [(PXVideoView *)self->_adoptedVideoView setVideoGravity:self->_videoGravity];
  }
}

- (void)setPlaceholderImage:(id)image
{
  imageCopy = image;
  if (self->_placeholderImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_placeholderImage, image);
    [(UIImageView *)self->_placeholderImageView setImage:v6];
    imageCopy = v6;
  }
}

- (void)setVideoSession:(id)session
{
  sessionCopy = session;
  videoSession = self->_videoSession;
  if (videoSession != sessionCopy)
  {
    v12 = sessionCopy;
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

    objc_storeStrong(&self->_videoSession, session);
    [(PXVideoSession *)self->_videoSession registerChangeObserver:self context:VideoSessionContext];
    dequeueVideoView = [(PXVideoSession *)v12 dequeueVideoView];
    v10 = self->_adoptedVideoView;
    self->_adoptedVideoView = dequeueVideoView;

    videoGravity = [(PXVideoSessionUIView *)self videoGravity];
    [(PXVideoView *)self->_adoptedVideoView setVideoGravity:videoGravity];

    [(PXVideoView *)self->_adoptedVideoView setContentMode:[(PXVideoSessionUIView *)self contentMode]];
    [(PXVideoView *)self->_adoptedVideoView setToneMapToStandardDynamicRange:[(PXVideoSessionUIView *)self toneMapToStandardDynamicRange]];
    [(PXVideoView *)self->_adoptedVideoView setDelegate:self];
    [(UIView *)self->_videoContainerView addSubview:self->_adoptedVideoView];
    [(PXVideoSessionUIView *)self setNeedsLayout];
    [(PXVideoSessionUIView *)self _updateEdgeAntialiasing];
    [(PXVideoSessionUIView *)self _updatePlaceholderVisibility];
    [(PXVideoSessionUIView *)self _updateVideoViewFrame];
    sessionCopy = v12;
  }
}

- (void)setContentMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = PXVideoSessionUIView;
  [(PXVideoSessionUIView *)&v5 setContentMode:?];
  [(PXVideoView *)self->_adoptedVideoView setContentMode:mode];
  [(UIImageView *)self->_placeholderImageView setContentMode:mode];
  [(UIView *)self->_videoContainerView setContentMode:mode];
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

- (PXVideoSessionUIView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = PXVideoSessionUIView;
  v3 = [(PXVideoSessionUIView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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