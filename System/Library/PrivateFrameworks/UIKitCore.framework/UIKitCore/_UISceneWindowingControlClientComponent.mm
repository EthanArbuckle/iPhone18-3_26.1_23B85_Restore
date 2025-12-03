@interface _UISceneWindowingControlClientComponent
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation _UISceneWindowingControlClientComponent

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  if (!*(&self->super._invalid + 1))
  {
    *(&self->super._invalid + 1) = 1;
    v5 = [(FBSSceneComponent *)self clientScene:scene];
    v6 = [(UIScene *)UIWindowScene _sceneForFBSScene:v5];

    delegate = [v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [delegate preferredWindowingControlStyleForScene:v6];
      if (v8)
      {
        v9 = v8[1];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67___UISceneWindowingControlClientComponent_scene_didUpdateSettings___block_invoke;
    v12[3] = &__block_descriptor_40_e109_v24__0__FBSMutableSceneClientSettings__UISceneWindowingControlClientSettings__8__FBSSceneTransitionContext_16l;
    v12[4] = v9;
    v10 = v12;
    clientScene = [(FBSSceneComponent *)self clientScene];
    [clientScene updateClientSettings:v10];
  }
}

@end