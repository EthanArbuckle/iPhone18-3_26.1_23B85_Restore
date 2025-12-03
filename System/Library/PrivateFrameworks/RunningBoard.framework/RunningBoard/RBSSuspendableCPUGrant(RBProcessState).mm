@interface RBSSuspendableCPUGrant(RBProcessState)
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSSuspendableCPUGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v5 = a3;
  role = [self role];
  if (role > [v5 role])
  {
    [v5 setRole:role];
  }
}

@end