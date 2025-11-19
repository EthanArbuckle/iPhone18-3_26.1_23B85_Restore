@interface FBScene(SBProductivityGestureDestination)
- (id)displayIdentity;
- (void)handleProductivityGestureAction:()SBProductivityGestureDestination;
@end

@implementation FBScene(SBProductivityGestureDestination)

- (id)displayIdentity
{
  v1 = [a1 settings];
  v2 = [v1 sb_displayIdentityForSceneManagers];

  return v2;
}

- (void)handleProductivityGestureAction:()SBProductivityGestureDestination
{
  v2 = [MEMORY[0x277CBEB98] setWithObject:?];
  [a1 sendActions:v2];
}

@end