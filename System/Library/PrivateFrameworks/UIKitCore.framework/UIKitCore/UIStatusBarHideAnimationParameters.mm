@interface UIStatusBarHideAnimationParameters
- (BOOL)shouldAnimate;
- (UIStatusBarHideAnimationParameters)initWithDefaultParameters;
@end

@implementation UIStatusBarHideAnimationParameters

- (BOOL)shouldAnimate
{
  if (!self->_hideAnimation)
  {
    return 0;
  }

  v3.receiver = self;
  v3.super_class = UIStatusBarHideAnimationParameters;
  return [(UIStatusBarAnimationParameters *)&v3 shouldAnimate];
}

- (UIStatusBarHideAnimationParameters)initWithDefaultParameters
{
  v3.receiver = self;
  v3.super_class = UIStatusBarHideAnimationParameters;
  result = [(UIStatusBarAnimationParameters *)&v3 initWithDefaultParameters];
  if (result)
  {
    result->_hideAnimation = 1;
    result->super._duration = 0.35;
  }

  return result;
}

@end