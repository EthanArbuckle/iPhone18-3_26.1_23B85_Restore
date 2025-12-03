@interface RBSResistTerminationGrant(RBProcessState)
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSResistTerminationGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v5 = a3;
  resistance = [self resistance];
  if (resistance > [v5 terminationResistance])
  {
    [v5 setTerminationResistance:resistance];
  }
}

@end