@interface SBSceneHandle(SceneViewControlling)
- (uint64_t)newSceneViewController;
- (uint64_t)newSceneViewWithReferenceSize:()SceneViewControlling contentOrientation:containerOrientation:hostRequester:;
@end

@implementation SBSceneHandle(SceneViewControlling)

- (uint64_t)newSceneViewWithReferenceSize:()SceneViewControlling contentOrientation:containerOrientation:hostRequester:
{
  v12 = MEMORY[0x277D67980];
  v13 = a7;
  v14 = [[v12 alloc] initWithSceneHandle:self referenceSize:a5 contentOrientation:a6 containerOrientation:v13 hostRequester:{a2, a3}];

  return v14;
}

- (uint64_t)newSceneViewController
{
  v2 = [SBSceneViewController alloc];

  return [(SBSceneViewController *)v2 initWithSceneHandle:self];
}

@end