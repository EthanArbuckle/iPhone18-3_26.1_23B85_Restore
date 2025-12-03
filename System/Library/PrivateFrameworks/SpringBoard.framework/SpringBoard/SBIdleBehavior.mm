@interface SBIdleBehavior
- (SBIdleBehavior)initWithDuration:(int64_t)duration warnMode:(int64_t)mode;
@end

@implementation SBIdleBehavior

- (SBIdleBehavior)initWithDuration:(int64_t)duration warnMode:(int64_t)mode
{
  v7.receiver = self;
  v7.super_class = SBIdleBehavior;
  result = [(SBIdleBehavior *)&v7 init];
  if (result)
  {
    result->_duration = duration;
    result->_warnMode = mode;
  }

  return result;
}

@end