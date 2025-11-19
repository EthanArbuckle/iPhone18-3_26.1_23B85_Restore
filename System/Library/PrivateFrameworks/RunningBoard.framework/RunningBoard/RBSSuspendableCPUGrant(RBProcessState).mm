@interface RBSSuspendableCPUGrant(RBProcessState)
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSSuspendableCPUGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v5 = a3;
  v4 = [a1 role];
  if (v4 > [v5 role])
  {
    [v5 setRole:v4];
  }
}

@end