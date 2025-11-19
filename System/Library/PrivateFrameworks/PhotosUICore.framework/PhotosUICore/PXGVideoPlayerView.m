@interface PXGVideoPlayerView
- (CGRect)clippingRect;
- (PXGVideoPlayerView)init;
- (void)becomeReusable;
- (void)setUserData:(id)a3;
- (void)setVideoSession:(id)a3;
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

- (void)setVideoSession:(id)a3
{
  v9 = a3;
  v5 = self->_videoSession;
  v6 = v5;
  if (v5 != v9)
  {
    v7 = [(PXVideoSession *)v5 isEqual:v9];

    v8 = v9;
    if (v7)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_videoSession, a3);
    v6 = [(PXGVideoPlayerView *)self videoSessionView];
    [v6 setVideoSession:v9];
  }

  v8 = v9;
LABEL_5:
}

- (void)setUserData:(id)a3
{
  v16 = a3;
  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [(NSCopying *)v16 px_descriptionForAssertionMessage];
      [v12 handleFailureInMethod:a2 object:self file:@"PXGVideoPlayerView.m" lineNumber:44 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"userData", v14, v15}];
    }
  }

  userData = self->_userData;
  if (userData != v16 && ([(NSCopying *)userData isEqual:v16]& 1) == 0)
  {
    objc_storeStrong(&self->_userData, a3);
    v7 = [(NSCopying *)v16 videoSession];
    [(PXGVideoPlayerView *)self setVideoSession:v7];

    v8 = [(NSCopying *)v16 toneMapToStandardDynamicRange];
    v9 = [(PXGVideoPlayerView *)self videoSessionView];
    [v9 setToneMapToStandardDynamicRange:v8];

    v10 = [(NSCopying *)v16 placeholderImage];
    v11 = [(PXGVideoPlayerView *)self videoSessionView];
    [v11 setPlaceholderImage:v10];
  }
}

- (void)becomeReusable
{
  [(PXGVideoPlayerView *)self setVideoSession:0];
  v3 = [(PXGVideoPlayerView *)self videoSessionView];
  [v3 setPlaceholderImage:0];
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
    v6 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PXGVideoPlayerView *)v2 setBackgroundColor:v6];
  }

  return v2;
}

@end