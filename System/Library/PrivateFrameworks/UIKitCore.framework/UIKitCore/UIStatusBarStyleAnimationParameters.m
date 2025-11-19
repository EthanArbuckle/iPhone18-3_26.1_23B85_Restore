@interface UIStatusBarStyleAnimationParameters
- (BOOL)shouldAnimate;
- (UIStatusBarStyleAnimationParameters)initWithDefaultParameters;
@end

@implementation UIStatusBarStyleAnimationParameters

- (UIStatusBarStyleAnimationParameters)initWithDefaultParameters
{
  v3.receiver = self;
  v3.super_class = UIStatusBarStyleAnimationParameters;
  result = [(UIStatusBarAnimationParameters *)&v3 initWithDefaultParameters];
  if (result)
  {
    result->_styleAnimation = 1;
    result->super._duration = 0.35;
  }

  return result;
}

- (BOOL)shouldAnimate
{
  if (!self->_styleAnimation)
  {
    return 0;
  }

  v3.receiver = self;
  v3.super_class = UIStatusBarStyleAnimationParameters;
  return [(UIStatusBarAnimationParameters *)&v3 shouldAnimate];
}

@end