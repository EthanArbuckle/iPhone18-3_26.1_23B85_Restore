@interface RBSCoalitionLevelGrant(ProcessState)
- (void)applyToProcessState:()ProcessState attributePath:context:;
@end

@implementation RBSCoalitionLevelGrant(ProcessState)

- (void)applyToProcessState:()ProcessState attributePath:context:
{
  v7 = a3;
  v4 = [v7 coalitionLevel];
  v5 = [a1 coalitionLevel];
  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  [v7 setCoalitionLevel:v6];
}

@end