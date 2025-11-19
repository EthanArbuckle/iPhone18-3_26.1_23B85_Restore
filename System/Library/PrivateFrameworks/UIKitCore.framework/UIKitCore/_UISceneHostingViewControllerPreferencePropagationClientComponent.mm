@interface _UISceneHostingViewControllerPreferencePropagationClientComponent
- (int)preferredStatusBarVisibility;
- (void)setPreferredStatusBarVisibility:(int)a3;
@end

@implementation _UISceneHostingViewControllerPreferencePropagationClientComponent

- (int)preferredStatusBarVisibility
{
  v2 = [(FBSSceneComponent *)self scene];
  v3 = [v2 clientSettings];
  v4 = [v3 preferredStatusBarVisibility];

  return v4;
}

- (void)setPreferredStatusBarVisibility:(int)a3
{
  v4 = [(FBSSceneComponent *)self clientScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __101___UISceneHostingViewControllerPreferencePropagationClientComponent_setPreferredStatusBarVisibility___block_invoke;
  v5[3] = &__block_descriptor_36_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
  v6 = a3;
  [v4 updateClientSettings:v5];
}

@end