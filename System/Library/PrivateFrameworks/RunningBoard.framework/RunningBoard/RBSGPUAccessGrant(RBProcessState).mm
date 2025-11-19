@interface RBSGPUAccessGrant(RBProcessState)
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSGPUAccessGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v5 = a3;
  v4 = [a1 role];
  if (v4 > [v5 gpuRole])
  {
    [v5 setGPURole:{objc_msgSend(a1, "role")}];
  }
}

@end