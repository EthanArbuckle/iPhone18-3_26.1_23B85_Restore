@interface SBAccessoryWindowSceneLocalSceneHostComponent
- (FBSScene)associatedClientScene;
@end

@implementation SBAccessoryWindowSceneLocalSceneHostComponent

- (FBSScene)associatedClientScene
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedClientScene);

  return WeakRetained;
}

@end