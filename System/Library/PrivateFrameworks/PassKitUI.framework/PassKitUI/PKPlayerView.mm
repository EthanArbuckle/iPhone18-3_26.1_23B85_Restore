@interface PKPlayerView
- (PKPlayerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)playItemAtURL:(id)l;
@end

@implementation PKPlayerView

- (PKPlayerView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PKPlayerView;
  v3 = [(PKPlayerView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E6988100] playerWithPlayerItem:0];
    player = v3->_player;
    v3->_player = v4;

    [(AVQueuePlayer *)v3->_player setMuted:1];
    v6 = objc_alloc_init(MEMORY[0x1E6958608]);
    controller = v3->_controller;
    v3->_controller = v6;

    [(AVPlayerViewController *)v3->_controller setShowsMinimalPlaybackControlsWhenEmbeddedInline:1];
    [(AVPlayerViewController *)v3->_controller setCanPausePlaybackWhenExitingFullScreen:0];
    [(AVPlayerViewController *)v3->_controller setVideoGravity:*MEMORY[0x1E69874F0]];
    [(AVPlayerViewController *)v3->_controller setPlayer:v3->_player];
    view = [(AVPlayerViewController *)v3->_controller view];
    [(PKPlayerView *)v3 addSubview:view];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKPlayerView;
  [(PKPlayerView *)&v4 layoutSubviews];
  view = [(AVPlayerViewController *)self->_controller view];
  [(PKPlayerView *)self bounds];
  [view setFrame:?];
}

- (void)playItemAtURL:(id)l
{
  v6 = [MEMORY[0x1E69880B0] playerItemWithURL:l];
  v4 = [MEMORY[0x1E69880E8] playerLooperWithPlayer:self->_player templateItem:v6];
  playerLooper = self->_playerLooper;
  self->_playerLooper = v4;

  [(AVQueuePlayer *)self->_player play];
}

@end