@interface SWProcessConfiguration
- (SWProcessConfiguration)initWithBackgroundPriority:(BOOL)a3;
@end

@implementation SWProcessConfiguration

- (SWProcessConfiguration)initWithBackgroundPriority:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SWProcessConfiguration;
  result = [(SWProcessConfiguration *)&v5 init];
  if (result)
  {
    result->_shouldRunAtBackgroundPriority = a3;
  }

  return result;
}

@end