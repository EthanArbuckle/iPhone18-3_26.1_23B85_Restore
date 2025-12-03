@interface PUWallpaperPosterParallaxView
- (BOOL)_applyKeyPathsAndRelativeValues:(id)values forMotionEffect:(id)effect;
- (PUWallpaperPosterParallaxView)initWithFrame:(CGRect)frame parallaxHandler:(id)handler;
- (void)startParallax;
- (void)stopParallax;
@end

@implementation PUWallpaperPosterParallaxView

- (BOOL)_applyKeyPathsAndRelativeValues:(id)values forMotionEffect:(id)effect
{
  valuesCopy = values;
  motionEffect = [(PUWallpaperPosterParallaxView *)self motionEffect];
  [motionEffect parallaxVectorFromKeyPathsAndRelativeValues:valuesCopy];
  v8 = v7;
  v10 = v9;

  parallaxHandler = [(PUWallpaperPosterParallaxView *)self parallaxHandler];
  parallaxHandler[2](v8, v10);

  return 1;
}

- (void)stopParallax
{
  motionEffect = [(PUWallpaperPosterParallaxView *)self motionEffect];

  if (motionEffect)
  {
    motionEffect2 = [(PUWallpaperPosterParallaxView *)self motionEffect];
    [(PUWallpaperPosterParallaxView *)self removeMotionEffect:motionEffect2];

    [(PUWallpaperPosterParallaxView *)self setMotionEffect:0];
  }
}

- (void)startParallax
{
  motionEffect = [(PUWallpaperPosterParallaxView *)self motionEffect];

  if (!motionEffect)
  {
    v4 = objc_alloc_init(PUWallpaperPosterMotionEffect);
    [(PUWallpaperPosterParallaxView *)self setMotionEffect:v4];

    motionEffect2 = [(PUWallpaperPosterParallaxView *)self motionEffect];
    [(PUWallpaperPosterParallaxView *)self addMotionEffect:motionEffect2];
  }
}

- (PUWallpaperPosterParallaxView)initWithFrame:(CGRect)frame parallaxHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = PUWallpaperPosterParallaxView;
  height = [(PUWallpaperPosterParallaxView *)&v14 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [handlerCopy copy];
    parallaxHandler = height->_parallaxHandler;
    height->_parallaxHandler = v11;
  }

  return height;
}

@end