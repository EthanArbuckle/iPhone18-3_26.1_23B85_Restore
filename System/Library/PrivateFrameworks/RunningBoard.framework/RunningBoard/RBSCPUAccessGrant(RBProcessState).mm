@interface RBSCPUAccessGrant(RBProcessState)
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSCPUAccessGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v5 = a3;
  v4 = [a1 role];
  if (v4 > [v5 role])
  {
    [v5 setRole:v4];
  }

  [v5 setPreventSuspend:1];
}

@end