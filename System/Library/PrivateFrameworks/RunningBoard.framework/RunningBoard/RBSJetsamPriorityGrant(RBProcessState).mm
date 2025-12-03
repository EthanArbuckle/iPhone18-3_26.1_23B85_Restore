@interface RBSJetsamPriorityGrant(RBProcessState)
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSJetsamPriorityGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v5 = a3;
  band = [self band];
  if (band > [v5 explicitJetsamBand])
  {
    [v5 setExplicitJetsamBand:band];
  }
}

@end