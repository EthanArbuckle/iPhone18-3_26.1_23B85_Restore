@interface MDModeDecision
- (MDModeDecision)initWithMode:(unint64_t)a3;
@end

@implementation MDModeDecision

- (MDModeDecision)initWithMode:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MDModeDecision;
  result = [(MDModeDecision *)&v5 init];
  if (result)
  {
    result->_currentMode = a3;
  }

  return result;
}

@end