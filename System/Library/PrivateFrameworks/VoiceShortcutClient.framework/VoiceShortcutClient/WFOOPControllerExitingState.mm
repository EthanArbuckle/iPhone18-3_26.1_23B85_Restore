@interface WFOOPControllerExitingState
- (BOOL)canTransitionToState:(id)state;
@end

@implementation WFOOPControllerExitingState

- (BOOL)canTransitionToState:(id)state
{
  stateCopy = state;
  if (stateCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([stateCopy stage] == 2)
    {
      v5 = 1;
    }

    else
    {
      v8.receiver = self;
      v8.super_class = WFOOPControllerExitingState;
      v5 = [(WFOOPControllerState *)&v8 canTransitionToState:stateCopy];
    }

    v6 = stateCopy;
  }

  else
  {

    v6 = 0;
    v5 = 0;
  }

  return v5;
}

@end