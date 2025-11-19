@interface _UISceneWindowingControlClientComponent
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation _UISceneWindowingControlClientComponent

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  if (!*(&self->super._invalid + 1))
  {
    *(&self->super._invalid + 1) = 1;
    v5 = [(FBSSceneComponent *)self clientScene:a3];
    v6 = [(UIScene *)UIWindowScene _sceneForFBSScene:v5];

    v7 = [v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 preferredWindowingControlStyleForScene:v6];
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
    v11 = [(FBSSceneComponent *)self clientScene];
    [v11 updateClientSettings:v10];
  }
}

@end