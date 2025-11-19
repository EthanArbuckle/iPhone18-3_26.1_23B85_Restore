@interface RBSJetsamPriorityGrant(RBProcessState)
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSJetsamPriorityGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v5 = a3;
  v4 = [a1 band];
  if (v4 > [v5 explicitJetsamBand])
  {
    [v5 setExplicitJetsamBand:v4];
  }
}

@end