@interface WFRunnerState
- (BOOL)canTransitionToState:(id)state;
- (NSString)description;
@end

@implementation WFRunnerState

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  stage = [(WFRunnerState *)self stage];
  if (stage > 5)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E837A8C0[stage];
  }

  v9.receiver = self;
  v9.super_class = WFRunnerState;
  v6 = [(WFRunnerState *)&v9 description];
  v7 = [v3 stringWithFormat:@"%@ (%@)", v5, v6];

  return v7;
}

- (BOOL)canTransitionToState:(id)state
{
  stateCopy = state;
  if (stateCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    stage = [stateCopy stage];
    v6 = stage > [(WFRunnerState *)self stage];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end