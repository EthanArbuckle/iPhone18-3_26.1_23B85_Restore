@interface PXGVideoPlayerView
- (CGRect)clippingRect;
- (PXGVideoPlayerView)init;
- (void)becomeReusable;
- (void)setUserData:(id)data;
- (void)setVideoSession:(id)session;
@end

@implementation PXGVideoPlayerView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setVideoSession:(id)session
{
  sessionCopy = session;
  v5 = self->_videoSession;
  videoSessionView = v5;
  if (v5 != sessionCopy)
  {
    v7 = [(PXVideoSession *)v5 isEqual:sessionCopy];

    v8 = sessionCopy;
    if (v7)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_videoSession, session);
    videoSessionView = [(PXGVideoPlayerView *)self videoSessionView];
    [videoSessionView setVideoSession:sessionCopy];
  }

  v8 = sessionCopy;
LABEL_5:
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      px_descriptionForAssertionMessage = [(NSCopying *)dataCopy px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGVideoPlayerView.m" lineNumber:44 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"userData", v14, px_descriptionForAssertionMessage}];
    }
  }

  userData = self->_userData;
  if (userData != dataCopy && ([(NSCopying *)userData isEqual:dataCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_userData, data);
    videoSession = [(NSCopying *)dataCopy videoSession];
    [(PXGVideoPlayerView *)self setVideoSession:videoSession];

    toneMapToStandardDynamicRange = [(NSCopying *)dataCopy toneMapToStandardDynamicRange];
    videoSessionView = [(PXGVideoPlayerView *)self videoSessionView];
    [videoSessionView setToneMapToStandardDynamicRange:toneMapToStandardDynamicRange];

    placeholderImage = [(NSCopying *)dataCopy placeholderImage];
    videoSessionView2 = [(PXGVideoPlayerView *)self videoSessionView];
    [videoSessionView2 setPlaceholderImage:placeholderImage];
  }
}

- (void)becomeReusable
{
  [(PXGVideoPlayerView *)self setVideoSession:0];
  videoSessionView = [(PXGVideoPlayerView *)self videoSessionView];
  [videoSessionView setPlaceholderImage:0];
}

- (PXGVideoPlayerView)init
{
  v8.receiver = self;
  v8.super_class = PXGVideoPlayerView;
  v2 = [(PXGVideoPlayerView *)&v8 init];
  if (v2)
  {
    v3 = [PXVideoSessionUIView alloc];
    [(PXGVideoPlayerView *)v2 bounds];
    v4 = [(PXVideoSessionUIView *)v3 initWithFrame:?];
    videoSessionView = v2->_videoSessionView;
    v2->_videoSessionView = v4;

    [(PXVideoSessionUIView *)v2->_videoSessionView setAutoresizingMask:18];
    [(PXGVideoPlayerView *)v2 addSubview:v2->_videoSessionView];
    [(PXGVideoPlayerView *)v2 setUserInteractionEnabled:0];
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PXGVideoPlayerView *)v2 setBackgroundColor:secondarySystemBackgroundColor];
  }

  return v2;
}

@end