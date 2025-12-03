@interface RBSCPUAccessGrant(RBProcessState)
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSCPUAccessGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v5 = a3;
  role = [self role];
  if (role > [v5 role])
  {
    [v5 setRole:role];
  }

  [v5 setPreventSuspend:1];
}

@end