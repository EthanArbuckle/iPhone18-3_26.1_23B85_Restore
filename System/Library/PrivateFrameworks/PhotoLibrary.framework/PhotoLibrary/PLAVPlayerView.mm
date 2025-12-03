@interface PLAVPlayerView
- (AVPlayer)player;
- (CGRect)videoRect;
- (PLAVPlayerView)initWithFrame:(CGRect)frame;
- (void)setPlayer:(id)player;
- (void)setScaleMode:(int64_t)mode duration:(double)duration;
@end

@implementation PLAVPlayerView

- (CGRect)videoRect
{
  layer = [(PLAVPlayerView *)self layer];

  [layer videoRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setScaleMode:(int64_t)mode duration:(double)duration
{
  layer = [(PLAVPlayerView *)self layer];
  if (layer)
  {
    v8 = layer;
    if (duration > 0.0)
    {
      [MEMORY[0x277CD9FF0] setAnimationDuration:duration];
    }

    v9 = MEMORY[0x277CE5DD8];
    v10 = MEMORY[0x277CE5DC8];
    if (mode != 3)
    {
      v10 = MEMORY[0x277CE5DD0];
    }

    if (mode != 2)
    {
      v9 = v10;
    }

    [v8 setVideoGravity:*v9];
  }

  self->_scaleMode = mode;
}

- (void)setPlayer:(id)player
{
  layer = [(PLAVPlayerView *)self layer];

  [layer setPlayer:player];
}

- (AVPlayer)player
{
  layer = [(PLAVPlayerView *)self layer];

  return [layer player];
}

- (PLAVPlayerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PLAVPlayerView;
  v3 = [(PLAVPlayerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [-[PLAVPlayerView layer](v3 "layer")];
    [(PLAVPlayerView *)v4 setScaleMode:1];
  }

  return v4;
}

@end