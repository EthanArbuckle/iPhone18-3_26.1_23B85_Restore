@interface ISVideoPlayerUIView
- (CGRect)contentsRect;
- (ISVideoPlayerUIView)initWithCoder:(id)a3;
- (ISVideoPlayerUIView)initWithFrame:(CGRect)a3;
- (id)videoLayerReadyForDisplayChangeHandler;
- (void)_ISVideoPlayerUIView_commonInitialization;
- (void)_updateVideoGravity;
- (void)setContentMode:(int64_t)a3;
- (void)setContentsRect:(CGRect)a3;
- (void)setVideoLayerReadyForDisplayChangeHandler:(id)a3;
- (void)setVideoPlayer:(id)a3;
@end

@implementation ISVideoPlayerUIView

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

- (void)_updateVideoGravity
{
  v3 = [(ISVideoPlayerUIView *)self contentMode];
  v4 = MEMORY[0x277CE5DD0];
  v5 = MEMORY[0x277CE5DD8];
  if (v3 != 2)
  {
    v5 = MEMORY[0x277CE5DC8];
  }

  if (v3 != 1)
  {
    v4 = v5;
  }

  v7 = *v4;
  v6 = [(ISAVPlayerUIView *)self->_playerView playerLayer];
  [v6 setVideoGravity:v7];
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
    v9 = [(ISAVPlayerUIView *)self->_playerView layer];
    [v9 setContentsRect:{x, y, width, height}];
  }
}

- (void)setVideoPlayer:(id)a3
{
  v5 = a3;
  if (self->_videoPlayer != v5)
  {
    v7 = v5;
    v6 = [(ISAVPlayerUIView *)self->_playerView playerLayer];
    [v6 setPlayer:v7];
    objc_storeStrong(&self->_videoPlayer, a3);

    v5 = v7;
  }
}

- (void)setContentMode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = ISVideoPlayerUIView;
  [(ISVideoPlayerUIView *)&v4 setContentMode:a3];
  [(ISVideoPlayerUIView *)self _updateVideoGravity];
}

- (id)videoLayerReadyForDisplayChangeHandler
{
  v2 = [(ISVideoPlayerUIView *)self playerLayer];
  v3 = [v2 readyForDisplayChangeHandler];

  return v3;
}

- (void)setVideoLayerReadyForDisplayChangeHandler:(id)a3
{
  v4 = a3;
  v5 = [(ISVideoPlayerUIView *)self playerLayer];
  [v5 setReadyForDisplayChangeHandler:v4];
}

- (void)_ISVideoPlayerUIView_commonInitialization
{
  v3 = [(ISVideoPlayerUIView *)self layer];
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.1 alpha:0.01];
  [v3 setBorderColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [(ISVideoPlayerUIView *)self layer];
  [v5 setBorderWidth:1.0];

  v6 = [ISAVPlayerUIView alloc];
  [(ISVideoPlayerUIView *)self bounds];
  v7 = [(ISAVPlayerUIView *)v6 initWithFrame:?];
  playerView = self->_playerView;
  self->_playerView = v7;

  [(ISAVPlayerUIView *)self->_playerView setAutoresizingMask:18];
  [(ISVideoPlayerUIView *)self addSubview:self->_playerView];
  self->_contentsRect = *ISRectUnit;
}

- (ISVideoPlayerUIView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ISVideoPlayerUIView;
  v3 = [(ISVideoPlayerUIView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ISVideoPlayerUIView *)v3 _ISVideoPlayerUIView_commonInitialization];
  }

  return v4;
}

- (ISVideoPlayerUIView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ISVideoPlayerUIView;
  v3 = [(ISVideoPlayerUIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ISVideoPlayerUIView *)v3 _ISVideoPlayerUIView_commonInitialization];
  }

  return v4;
}

@end