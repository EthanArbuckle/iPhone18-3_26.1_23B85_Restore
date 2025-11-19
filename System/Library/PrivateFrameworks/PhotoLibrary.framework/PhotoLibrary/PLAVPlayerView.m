@interface PLAVPlayerView
- (AVPlayer)player;
- (CGRect)videoRect;
- (PLAVPlayerView)initWithFrame:(CGRect)a3;
- (void)setPlayer:(id)a3;
- (void)setScaleMode:(int64_t)a3 duration:(double)a4;
@end

@implementation PLAVPlayerView

- (CGRect)videoRect
{
  v2 = [(PLAVPlayerView *)self layer];

  [v2 videoRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setScaleMode:(int64_t)a3 duration:(double)a4
{
  v7 = [(PLAVPlayerView *)self layer];
  if (v7)
  {
    v8 = v7;
    if (a4 > 0.0)
    {
      [MEMORY[0x277CD9FF0] setAnimationDuration:a4];
    }

    v9 = MEMORY[0x277CE5DD8];
    v10 = MEMORY[0x277CE5DC8];
    if (a3 != 3)
    {
      v10 = MEMORY[0x277CE5DD0];
    }

    if (a3 != 2)
    {
      v9 = v10;
    }

    [v8 setVideoGravity:*v9];
  }

  self->_scaleMode = a3;
}

- (void)setPlayer:(id)a3
{
  v4 = [(PLAVPlayerView *)self layer];

  [v4 setPlayer:a3];
}

- (AVPlayer)player
{
  v2 = [(PLAVPlayerView *)self layer];

  return [v2 player];
}

- (PLAVPlayerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PLAVPlayerView;
  v3 = [(PLAVPlayerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [-[PLAVPlayerView layer](v3 "layer")];
    [(PLAVPlayerView *)v4 setScaleMode:1];
  }

  return v4;
}

@end