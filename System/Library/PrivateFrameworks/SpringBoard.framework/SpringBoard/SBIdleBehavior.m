@interface SBIdleBehavior
- (SBIdleBehavior)initWithDuration:(int64_t)a3 warnMode:(int64_t)a4;
@end

@implementation SBIdleBehavior

- (SBIdleBehavior)initWithDuration:(int64_t)a3 warnMode:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = SBIdleBehavior;
  result = [(SBIdleBehavior *)&v7 init];
  if (result)
  {
    result->_duration = a3;
    result->_warnMode = a4;
  }

  return result;
}

@end