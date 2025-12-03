@interface FBScene(SBProductivityGestureDestination)
- (id)displayIdentity;
- (void)handleProductivityGestureAction:()SBProductivityGestureDestination;
@end

@implementation FBScene(SBProductivityGestureDestination)

- (id)displayIdentity
{
  settings = [self settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

  return sb_displayIdentityForSceneManagers;
}

- (void)handleProductivityGestureAction:()SBProductivityGestureDestination
{
  v2 = [MEMORY[0x277CBEB98] setWithObject:?];
  [self sendActions:v2];
}

@end