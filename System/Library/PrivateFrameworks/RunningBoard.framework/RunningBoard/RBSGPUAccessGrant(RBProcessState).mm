@interface RBSGPUAccessGrant(RBProcessState)
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSGPUAccessGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v5 = a3;
  role = [self role];
  if (role > [v5 gpuRole])
  {
    [v5 setGPURole:{objc_msgSend(self, "role")}];
  }
}

@end