@interface RBSAcquisitionCompletionAttribute(RBProcessState)
- (void)applyToAcquisitionContext:()RBProcessState;
@end

@implementation RBSAcquisitionCompletionAttribute(RBProcessState)

- (void)applyToAcquisitionContext:()RBProcessState
{
  v5 = a3;
  v4 = [a1 policy];
  if (v4 > [v5 acquisitionPolicy])
  {
    [v5 setAcquisitionPolicy:v4];
  }
}

@end