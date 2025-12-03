@interface UIStatusBarOrientationAnimationParameters
- (BOOL)shouldAnimate;
- (UIStatusBarOrientationAnimationParameters)initWithDefaultParameters;
@end

@implementation UIStatusBarOrientationAnimationParameters

- (UIStatusBarOrientationAnimationParameters)initWithDefaultParameters
{
  v6.receiver = self;
  v6.super_class = UIStatusBarOrientationAnimationParameters;
  initWithDefaultParameters = [(UIStatusBarAnimationParameters *)&v6 initWithDefaultParameters];
  v3 = initWithDefaultParameters;
  if (initWithDefaultParameters)
  {
    initWithDefaultParameters->_orientationAnimation = 2;
    [UIApp statusBarOrientationAnimationDuration];
    v3->super._duration = v4;
  }

  return v3;
}

- (BOOL)shouldAnimate
{
  if (!self->_orientationAnimation)
  {
    return 0;
  }

  v3.receiver = self;
  v3.super_class = UIStatusBarOrientationAnimationParameters;
  return [(UIStatusBarAnimationParameters *)&v3 shouldAnimate];
}

@end