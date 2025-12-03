@interface MDModeDecision
- (MDModeDecision)initWithMode:(unint64_t)mode;
@end

@implementation MDModeDecision

- (MDModeDecision)initWithMode:(unint64_t)mode
{
  v5.receiver = self;
  v5.super_class = MDModeDecision;
  result = [(MDModeDecision *)&v5 init];
  if (result)
  {
    result->_currentMode = mode;
  }

  return result;
}

@end