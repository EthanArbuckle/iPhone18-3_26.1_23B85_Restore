@interface PUParallaxVideoLayerContentView
- (PUParallaxVideoLayerContentView)initWithFrame:(CGRect)a3;
@end

@implementation PUParallaxVideoLayerContentView

- (PUParallaxVideoLayerContentView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PUParallaxVideoLayerContentView;
  v3 = [(PUParallaxVideoLayerContentView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x1E69874F0];
    v6 = [(PUParallaxVideoLayerContentView *)v3 _playerLayer];
    [v6 setVideoGravity:v5];
  }

  return v4;
}

@end