@interface PUWallpaperPosterParallaxView
- (BOOL)_applyKeyPathsAndRelativeValues:(id)a3 forMotionEffect:(id)a4;
- (PUWallpaperPosterParallaxView)initWithFrame:(CGRect)a3 parallaxHandler:(id)a4;
- (void)startParallax;
- (void)stopParallax;
@end

@implementation PUWallpaperPosterParallaxView

- (BOOL)_applyKeyPathsAndRelativeValues:(id)a3 forMotionEffect:(id)a4
{
  v5 = a3;
  v6 = [(PUWallpaperPosterParallaxView *)self motionEffect];
  [v6 parallaxVectorFromKeyPathsAndRelativeValues:v5];
  v8 = v7;
  v10 = v9;

  v11 = [(PUWallpaperPosterParallaxView *)self parallaxHandler];
  v11[2](v8, v10);

  return 1;
}

- (void)stopParallax
{
  v3 = [(PUWallpaperPosterParallaxView *)self motionEffect];

  if (v3)
  {
    v4 = [(PUWallpaperPosterParallaxView *)self motionEffect];
    [(PUWallpaperPosterParallaxView *)self removeMotionEffect:v4];

    [(PUWallpaperPosterParallaxView *)self setMotionEffect:0];
  }
}

- (void)startParallax
{
  v3 = [(PUWallpaperPosterParallaxView *)self motionEffect];

  if (!v3)
  {
    v4 = objc_alloc_init(PUWallpaperPosterMotionEffect);
    [(PUWallpaperPosterParallaxView *)self setMotionEffect:v4];

    v5 = [(PUWallpaperPosterParallaxView *)self motionEffect];
    [(PUWallpaperPosterParallaxView *)self addMotionEffect:v5];
  }
}

- (PUWallpaperPosterParallaxView)initWithFrame:(CGRect)a3 parallaxHandler:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = PUWallpaperPosterParallaxView;
  v10 = [(PUWallpaperPosterParallaxView *)&v14 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [v9 copy];
    parallaxHandler = v10->_parallaxHandler;
    v10->_parallaxHandler = v11;
  }

  return v10;
}

@end