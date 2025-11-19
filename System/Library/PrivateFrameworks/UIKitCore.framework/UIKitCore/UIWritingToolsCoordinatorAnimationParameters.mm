@interface UIWritingToolsCoordinatorAnimationParameters
- (UIWritingToolsCoordinatorAnimationParameters)initWithDelay:(double)a3 duration:(double)a4;
@end

@implementation UIWritingToolsCoordinatorAnimationParameters

- (UIWritingToolsCoordinatorAnimationParameters)initWithDelay:(double)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = UIWritingToolsCoordinatorAnimationParameters;
  result = [(UIWritingToolsCoordinatorAnimationParameters *)&v7 init];
  if (result)
  {
    result->_delay = a3;
    result->_duration = a4;
  }

  return result;
}

@end