@interface RBSAcquisitionCompletionAttribute(RBProcessState)
- (void)applyToAcquisitionContext:()RBProcessState;
@end

@implementation RBSAcquisitionCompletionAttribute(RBProcessState)

- (void)applyToAcquisitionContext:()RBProcessState
{
  v5 = a3;
  policy = [self policy];
  if (policy > [v5 acquisitionPolicy])
  {
    [v5 setAcquisitionPolicy:policy];
  }
}

@end