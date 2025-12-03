@interface PUParallaxVideoLayerContentView
- (PUParallaxVideoLayerContentView)initWithFrame:(CGRect)frame;
@end

@implementation PUParallaxVideoLayerContentView

- (PUParallaxVideoLayerContentView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PUParallaxVideoLayerContentView;
  v3 = [(PUParallaxVideoLayerContentView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x1E69874F0];
    _playerLayer = [(PUParallaxVideoLayerContentView *)v3 _playerLayer];
    [_playerLayer setVideoGravity:v5];
  }

  return v4;
}

@end