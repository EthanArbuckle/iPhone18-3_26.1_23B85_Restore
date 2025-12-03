@interface _UISceneZoomTransitionClientComponent
- (NSString)debugDescription;
- (id)succinctDescription;
- (id)trackingViewForInteraction:(id)interaction;
- (void)appendDescriptionToStream:(id)stream;
- (void)dismissInteraction:(id)interaction didBeginAtLocation:(CGPoint)location withVelocity:(CGPoint)velocity;
- (void)dismissInteraction:(id)interaction didCancelWithVelocity:(CGPoint)velocity originalPosition:(CGPoint)position;
- (void)dismissInteraction:(id)interaction didDismissWithVelocity:(CGPoint)velocity;
- (void)dismissInteraction:(id)interaction didIssueUpdate:(id)update;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation _UISceneZoomTransitionClientComponent

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  v37 = *MEMORY[0x1E69E9840];
  settingsDiff = [settings settingsDiff];
  v6 = [settingsDiff containsProperty:sel_wantsDismissInteraction];

  if (v6)
  {
    settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
    wantsDismissInteraction = [settings wantsDismissInteraction];

    if (wantsDismissInteraction)
    {
      if (self)
      {
        if (self->_dismissInteraction)
        {
          v17 = MEMORY[0x1E696AEC0];
          clientScene = [(FBSSceneComponent *)self clientScene];
          identityToken = [clientScene identityToken];
          v20 = [v17 stringWithFormat:@"Dismiss interaction has already been installed on %@", identityToken];

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
            selfCopy = self;
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

        clientScene2 = [(FBSSceneComponent *)self clientScene];
        v24 = [UIScene _sceneForFBSScene:clientScene2];

        delegate = [v24 delegate];
        LOBYTE(clientScene2) = objc_opt_respondsToSelector();

        if (clientScene2)
        {
          delegate2 = [v24 delegate];
          window = [delegate2 window];

          if (window)
          {
            v13 = objc_opt_new();
            [(_UIDismissInteraction *)v13 setDelegate:self];
            [(_UIDismissInteraction *)v13 setStyles:6];
            [window addInteraction:v13];
            dismissInteraction = self->_dismissInteraction;
            self->_dismissInteraction = v13;

            objc_storeWeak(&self->_dismissInteractionWindow, window);
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

- (id)trackingViewForInteraction:(id)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissInteractionWindow);

  return WeakRetained;
}

- (void)dismissInteraction:(id)interaction didBeginAtLocation:(CGPoint)location withVelocity:(CGPoint)velocity
{
  v8 = [(_UISceneZoomTransitionDismissInteractionActionToHost *)location.x actionForDismissInteractionDidBeginAtLocation:velocity.x withVelocity:velocity.y];
  clientScene = [(FBSSceneComponent *)self clientScene];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [clientScene sendPrivateActions:v7];
}

- (void)dismissInteraction:(id)interaction didIssueUpdate:(id)update
{
  v7 = [_UISceneZoomTransitionDismissInteractionActionToHost actionForDismissInteractionDidIssueUpdate:update];
  clientScene = [(FBSSceneComponent *)self clientScene];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:v7];
  [clientScene sendPrivateActions:v6];
}

- (void)dismissInteraction:(id)interaction didDismissWithVelocity:(CGPoint)velocity
{
  v7 = [(_UISceneZoomTransitionDismissInteractionActionToHost *)velocity.x actionForDismissInteractionDidDismissWithVelocity:?];
  clientScene = [(FBSSceneComponent *)self clientScene];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:v7];
  [clientScene sendPrivateActions:v6];
}

- (void)dismissInteraction:(id)interaction didCancelWithVelocity:(CGPoint)velocity originalPosition:(CGPoint)position
{
  v8 = [(_UISceneZoomTransitionDismissInteractionActionToHost *)velocity.x actionForDismissInteractionDidCancelWithVelocity:position.x originalPosition:position.y];
  clientScene = [(FBSSceneComponent *)self clientScene];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [clientScene sendPrivateActions:v7];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67___UISceneZoomTransitionClientComponent_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = streamCopy;
  v12 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v11];
  style = [v5 style];
  verbosity = [style verbosity];

  if (verbosity != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67___UISceneZoomTransitionClientComponent_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    selfCopy2 = self;
    [v9 appendBodySectionWithName:0 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end