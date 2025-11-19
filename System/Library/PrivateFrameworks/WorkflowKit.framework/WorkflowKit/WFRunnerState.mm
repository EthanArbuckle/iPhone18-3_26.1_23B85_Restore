@interface WFRunnerState
- (BOOL)canTransitionToState:(id)a3;
- (NSString)description;
@end

@implementation WFRunnerState

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(WFRunnerState *)self stage];
  if (v4 > 5)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E837A8C0[v4];
  }

  v9.receiver = self;
  v9.super_class = WFRunnerState;
  v6 = [(WFRunnerState *)&v9 description];
  v7 = [v3 stringWithFormat:@"%@ (%@)", v5, v6];

  return v7;
}

- (BOOL)canTransitionToState:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 stage];
    v6 = v5 > [(WFRunnerState *)self stage];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end