@interface _UISceneHostingViewControllerPreferencePropagationClientComponent
- (int)preferredStatusBarVisibility;
- (void)setPreferredStatusBarVisibility:(int)visibility;
@end

@implementation _UISceneHostingViewControllerPreferencePropagationClientComponent

- (int)preferredStatusBarVisibility
{
  scene = [(FBSSceneComponent *)self scene];
  clientSettings = [scene clientSettings];
  preferredStatusBarVisibility = [clientSettings preferredStatusBarVisibility];

  return preferredStatusBarVisibility;
}

- (void)setPreferredStatusBarVisibility:(int)visibility
{
  clientScene = [(FBSSceneComponent *)self clientScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __101___UISceneHostingViewControllerPreferencePropagationClientComponent_setPreferredStatusBarVisibility___block_invoke;
  v5[3] = &__block_descriptor_36_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  visibilityCopy = visibility;
  [clientScene updateClientSettings:v5];
}

@end