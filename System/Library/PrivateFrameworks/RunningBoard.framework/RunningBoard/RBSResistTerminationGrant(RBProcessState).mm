@interface RBSResistTerminationGrant(RBProcessState)
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSResistTerminationGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v5 = a3;
  v4 = [a1 resistance];
  if (v4 > [v5 terminationResistance])
  {
    [v5 setTerminationResistance:v4];
  }
}

@end