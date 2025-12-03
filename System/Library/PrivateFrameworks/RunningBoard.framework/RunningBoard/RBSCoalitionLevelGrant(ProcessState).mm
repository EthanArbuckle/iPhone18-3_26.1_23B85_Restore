@interface RBSCoalitionLevelGrant(ProcessState)
- (void)applyToProcessState:()ProcessState attributePath:context:;
@end

@implementation RBSCoalitionLevelGrant(ProcessState)

- (void)applyToProcessState:()ProcessState attributePath:context:
{
  v7 = a3;
  coalitionLevel = [v7 coalitionLevel];
  coalitionLevel2 = [self coalitionLevel];
  if (coalitionLevel <= coalitionLevel2)
  {
    v6 = coalitionLevel2;
  }

  else
  {
    v6 = coalitionLevel;
  }

  [v7 setCoalitionLevel:v6];
}

@end