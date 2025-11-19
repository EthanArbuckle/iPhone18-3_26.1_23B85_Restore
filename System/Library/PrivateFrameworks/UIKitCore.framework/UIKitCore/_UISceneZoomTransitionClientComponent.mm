@interface _UISceneZoomTransitionClientComponent
- (NSString)debugDescription;
- (id)succinctDescription;
- (id)trackingViewForInteraction:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)dismissInteraction:(id)a3 didBeginAtLocation:(CGPoint)a4 withVelocity:(CGPoint)a5;
- (void)dismissInteraction:(id)a3 didCancelWithVelocity:(CGPoint)a4 originalPosition:(CGPoint)a5;
- (void)dismissInteraction:(id)a3 didDismissWithVelocity:(CGPoint)a4;
- (void)dismissInteraction:(id)a3 didIssueUpdate:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation _UISceneZoomTransitionClientComponent

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = [a4 settingsDiff];
  v6 = [v5 containsProperty:sel_wantsDismissInteraction];

  if (v6)
  {
    v7 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
    v8 = [v7 wantsDismissInteraction];

    if (v8)
    {
      if (self)
      {
        if (self->_dismissInteraction)
        {
          v17 = MEMORY[0x1E696AEC0];
          v18 = [(FBSSceneComponent *)self clientScene];
          v19 = [v18 identityToken];
          v20 = [v17 stringWithFormat:@"Dismiss interaction has already been installed on %@", v19];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v21 = NSStringFromSelector(sel_installDismissInteractionForZoomTransition);
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            *buf = 138544642;
            v26 = v21;
            v27 = 2114;
            v28 = v23;
            v29 = 2048;
            v30 = self;
            v31 = 2114;
            v32 = @"_UISceneZoomTransitionClientComponent.m";
            v33 = 1024;
            v34 = 45;
            v35 = 2114;
            v36 = v20;
            _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v20 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x189DA282CLL);
        }

        v9 = [(FBSSceneComponent *)self clientScene];
        v24 = [UIScene _sceneForFBSScene:v9];

        v10 = [v24 delegate];
        LOBYTE(v9) = objc_opt_respondsToSelector();

        if (v9)
        {
          v11 = [v24 delegate];
          v12 = [v11 window];

          if (v12)
          {
            v13 = objc_opt_new();
            [(_UIDismissInteraction *)v13 setDelegate:self];
            [(_UIDismissInteraction *)v13 setStyles:6];
            [v12 addInteraction:v13];
            dismissInteraction = self->_dismissInteraction;
            self->_dismissInteraction = v13;

            objc_storeWeak(&self->_dismissInteractionWindow, v12);
          }
        }
      }
    }

    else if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dismissInteractionWindow);
      [WeakRetained removeInteraction:self->_dismissInteraction];

      v16 = self->_dismissInteraction;
      self->_dismissInteraction = 0;

      objc_storeWeak(&self->_dismissInteractionWindow, 0);
    }
  }
}

- (id)trackingViewForInteraction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissInteractionWindow);

  return WeakRetained;
}

- (void)dismissInteraction:(id)a3 didBeginAtLocation:(CGPoint)a4 withVelocity:(CGPoint)a5
{
  v8 = [(_UISceneZoomTransitionDismissInteractionActionToHost *)a4.x actionForDismissInteractionDidBeginAtLocation:a5.x withVelocity:a5.y];
  v6 = [(FBSSceneComponent *)self clientScene];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [v6 sendPrivateActions:v7];
}

- (void)dismissInteraction:(id)a3 didIssueUpdate:(id)a4
{
  v7 = [_UISceneZoomTransitionDismissInteractionActionToHost actionForDismissInteractionDidIssueUpdate:a4];
  v5 = [(FBSSceneComponent *)self clientScene];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:v7];
  [v5 sendPrivateActions:v6];
}

- (void)dismissInteraction:(id)a3 didDismissWithVelocity:(CGPoint)a4
{
  v7 = [(_UISceneZoomTransitionDismissInteractionActionToHost *)a4.x actionForDismissInteractionDidDismissWithVelocity:?];
  v5 = [(FBSSceneComponent *)self clientScene];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:v7];
  [v5 sendPrivateActions:v6];
}

- (void)dismissInteraction:(id)a3 didCancelWithVelocity:(CGPoint)a4 originalPosition:(CGPoint)a5
{
  v8 = [(_UISceneZoomTransitionDismissInteractionActionToHost *)a4.x actionForDismissInteractionDidCancelWithVelocity:a5.x originalPosition:a5.y];
  v6 = [(FBSSceneComponent *)self clientScene];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [v6 sendPrivateActions:v7];
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67___UISceneZoomTransitionClientComponent_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = v4;
  v12 = v5;
  v13 = self;
  [v5 appendProem:self block:v11];
  v6 = [v5 style];
  v7 = [v6 verbosity];

  if (v7 != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67___UISceneZoomTransitionClientComponent_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    v10 = self;
    [v9 appendBodySectionWithName:0 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

@end