@interface ISVideoPlayerUIView
- (CGRect)contentsRect;
- (ISVideoPlayerUIView)initWithCoder:(id)coder;
- (ISVideoPlayerUIView)initWithFrame:(CGRect)frame;
- (id)videoLayerReadyForDisplayChangeHandler;
- (void)_ISVideoPlayerUIView_commonInitialization;
- (void)_updateVideoGravity;
- (void)setContentMode:(int64_t)mode;
- (void)setContentsRect:(CGRect)rect;
- (void)setVideoLayerReadyForDisplayChangeHandler:(id)handler;
- (void)setVideoPlayer:(id)player;
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
  contentMode = [(ISVideoPlayerUIView *)self contentMode];
  v4 = MEMORY[0x277CE5DD0];
  v5 = MEMORY[0x277CE5DD8];
  if (contentMode != 2)
  {
    v5 = MEMORY[0x277CE5DC8];
  }

  if (contentMode != 1)
  {
    v4 = v5;
  }

  v7 = *v4;
  playerLayer = [(ISAVPlayerUIView *)self->_playerView playerLayer];
  [playerLayer setVideoGravity:v7];
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
    layer = [(ISAVPlayerUIView *)self->_playerView layer];
    [layer setContentsRect:{x, y, width, height}];
  }
}

- (void)setVideoPlayer:(id)player
{
  playerCopy = player;
  if (self->_videoPlayer != playerCopy)
  {
    v7 = playerCopy;
    playerLayer = [(ISAVPlayerUIView *)self->_playerView playerLayer];
    [playerLayer setPlayer:v7];
    objc_storeStrong(&self->_videoPlayer, player);

    playerCopy = v7;
  }
}

- (void)setContentMode:(int64_t)mode
{
  v4.receiver = self;
  v4.super_class = ISVideoPlayerUIView;
  [(ISVideoPlayerUIView *)&v4 setContentMode:mode];
  [(ISVideoPlayerUIView *)self _updateVideoGravity];
}

- (id)videoLayerReadyForDisplayChangeHandler
{
  playerLayer = [(ISVideoPlayerUIView *)self playerLayer];
  readyForDisplayChangeHandler = [playerLayer readyForDisplayChangeHandler];

  return readyForDisplayChangeHandler;
}

- (void)setVideoLayerReadyForDisplayChangeHandler:(id)handler
{
  handlerCopy = handler;
  playerLayer = [(ISVideoPlayerUIView *)self playerLayer];
  [playerLayer setReadyForDisplayChangeHandler:handlerCopy];
}

- (void)_ISVideoPlayerUIView_commonInitialization
{
  layer = [(ISVideoPlayerUIView *)self layer];
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.1 alpha:0.01];
  [layer setBorderColor:{objc_msgSend(v4, "CGColor")}];

  layer2 = [(ISVideoPlayerUIView *)self layer];
  [layer2 setBorderWidth:1.0];

  v6 = [ISAVPlayerUIView alloc];
  [(ISVideoPlayerUIView *)self bounds];
  v7 = [(ISAVPlayerUIView *)v6 initWithFrame:?];
  playerView = self->_playerView;
  self->_playerView = v7;

  [(ISAVPlayerUIView *)self->_playerView setAutoresizingMask:18];
  [(ISVideoPlayerUIView *)self addSubview:self->_playerView];
  self->_contentsRect = *ISRectUnit;
}

- (ISVideoPlayerUIView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ISVideoPlayerUIView;
  v3 = [(ISVideoPlayerUIView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ISVideoPlayerUIView *)v3 _ISVideoPlayerUIView_commonInitialization];
  }

  return v4;
}

- (ISVideoPlayerUIView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ISVideoPlayerUIView;
  v3 = [(ISVideoPlayerUIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ISVideoPlayerUIView *)v3 _ISVideoPlayerUIView_commonInitialization];
  }

  return v4;
}

@end