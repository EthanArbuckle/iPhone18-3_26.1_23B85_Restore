@interface WFOOPControllerState
- (BOOL)canTransitionToState:(id)state;
- (NSString)description;
@end

@implementation WFOOPControllerState

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  stage = [(WFOOPControllerState *)self stage];
  if (stage > 9)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E7AFFDF0[stage];
  }

  v9.receiver = self;
  v9.super_class = WFOOPControllerState;
  v6 = [(WFOOPControllerState *)&v9 description];
  v7 = [v3 stringWithFormat:@"%@ (%@)", v5, v6];

  return v7;
}

- (BOOL)canTransitionToState:(id)state
{
  stateCopy = state;
  if (stateCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    stage = [stateCopy stage];
    v6 = stage > [(WFOOPControllerState *)self stage];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end