@interface WFOOPControllerExitingState
- (BOOL)canTransitionToState:(id)a3;
@end

@implementation WFOOPControllerExitingState

- (BOOL)canTransitionToState:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v4 stage] == 2)
    {
      v5 = 1;
    }

    else
    {
      v8.receiver = self;
      v8.super_class = WFOOPControllerExitingState;
      v5 = [(WFOOPControllerState *)&v8 canTransitionToState:v4];
    }

    v6 = v4;
  }

  else
  {

    v6 = 0;
    v5 = 0;
  }

  return v5;
}

@end