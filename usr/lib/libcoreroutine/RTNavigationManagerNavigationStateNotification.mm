@interface RTNavigationManagerNavigationStateNotification
- (RTNavigationManagerNavigationStateNotification)initWithNavigationState:(int)state;
@end

@implementation RTNavigationManagerNavigationStateNotification

- (RTNavigationManagerNavigationStateNotification)initWithNavigationState:(int)state
{
  v5.receiver = self;
  v5.super_class = RTNavigationManagerNavigationStateNotification;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_state = state;
  }

  return result;
}

@end