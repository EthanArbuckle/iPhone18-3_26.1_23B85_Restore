@interface WFOOPControllerState
- (BOOL)canTransitionToState:(id)a3;
- (NSString)description;
@end

@implementation WFOOPControllerState

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(WFOOPControllerState *)self stage];
  if (v4 > 9)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E7AFFDF0[v4];
  }

  v9.receiver = self;
  v9.super_class = WFOOPControllerState;
  v6 = [(WFOOPControllerState *)&v9 description];
  v7 = [v3 stringWithFormat:@"%@ (%@)", v5, v6];

  return v7;
}

- (BOOL)canTransitionToState:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 stage];
    v6 = v5 > [(WFOOPControllerState *)self stage];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end