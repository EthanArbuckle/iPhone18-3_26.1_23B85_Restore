@interface UIWritingToolsCoordinatorAnimationParameters
- (UIWritingToolsCoordinatorAnimationParameters)initWithDelay:(double)delay duration:(double)duration;
@end

@implementation UIWritingToolsCoordinatorAnimationParameters

- (UIWritingToolsCoordinatorAnimationParameters)initWithDelay:(double)delay duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = UIWritingToolsCoordinatorAnimationParameters;
  result = [(UIWritingToolsCoordinatorAnimationParameters *)&v7 init];
  if (result)
  {
    result->_delay = delay;
    result->_duration = duration;
  }

  return result;
}

@end