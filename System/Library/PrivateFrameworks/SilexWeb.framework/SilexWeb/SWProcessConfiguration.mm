@interface SWProcessConfiguration
- (SWProcessConfiguration)initWithBackgroundPriority:(BOOL)priority;
@end

@implementation SWProcessConfiguration

- (SWProcessConfiguration)initWithBackgroundPriority:(BOOL)priority
{
  v5.receiver = self;
  v5.super_class = SWProcessConfiguration;
  result = [(SWProcessConfiguration *)&v5 init];
  if (result)
  {
    result->_shouldRunAtBackgroundPriority = priority;
  }

  return result;
}

@end