@interface UIRootWindowScenePresentationBinder
- (UIRootWindowScenePresentationBinder)initWithPriority:(int64_t)a3 displayConfiguration:(id)a4;
- (id)_initWithIdentifier:(id)a3 priority:(int64_t)a4 appearanceStyle:(unint64_t)a5 rootWindow:(id)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (void)_noteDidStopPresentingScene:(id)a3;
- (void)_noteWillStartPresentingScene:(id)a3;
- (void)invalidate;
@end

@implementation UIRootWindowScenePresentationBinder

- (id)_initWithIdentifier:(id)a3 priority:(int64_t)a4 appearanceStyle:(unint64_t)a5 rootWindow:(id)a6
{
  v11 = a6;
  v12 = a3;
  v13 = [v11 _sceneContainerView];
  v20.receiver = self;
  v20.super_class = UIRootWindowScenePresentationBinder;
  v14 = [(UIScenePresentationBinder *)&v20 initWithIdentifier:v12 priority:a4 rootView:v13 appearanceStyle:a5];

  if (v14)
  {
    objc_storeStrong(&v14->_rootSceneWindow, a6);
    v14->_shouldManageWindowLifecycle = v11 == 0;
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    presentedScenes = v14->_presentedScenes;
    v14->_presentedScenes = v15;

    v17 = [v11 displayConfiguration];
    displayConfiguration = v14->_displayConfiguration;
    v14->_displayConfiguration = v17;
  }

  return v14;
}

- (UIRootWindowScenePresentationBinder)initWithPriority:(int64_t)a3 displayConfiguration:(id)a4
{
  v7 = a4;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v7 identity];
  v10 = [v8 stringWithFormat:@"RootWindow-%@-%p", v9, self];
  v11 = [(UIRootWindowScenePresentationBinder *)self _initWithIdentifier:v10 priority:a3 appearanceStyle:0 rootWindow:0];

  if (v11)
  {
    objc_storeStrong(&v11->_displayConfiguration, a4);
  }

  return v11;
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = UIRootWindowScenePresentationBinder;
  [(UIScenePresentationBinder *)&v4 invalidate];
  if (self->_shouldManageWindowLifecycle)
  {
    rootSceneWindow = self->_rootSceneWindow;
    self->_rootSceneWindow = 0;
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(UIScenePresentationBinder *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__UIRootWindowScenePresentationBinder_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

- (void)_noteWillStartPresentingScene:(id)a3
{
  [(NSMutableSet *)self->_presentedScenes addObject:a3];
  if (self->_shouldManageWindowLifecycle && !self->_rootSceneWindow)
  {
    v4 = [[UIRootSceneWindow alloc] initWithDisplayConfiguration:self->_displayConfiguration];
    rootSceneWindow = self->_rootSceneWindow;
    self->_rootSceneWindow = v4;
  }

  if ([(UIView *)self->_rootSceneWindow isHidden])
  {
    v6 = self->_rootSceneWindow;

    [(_UIRootWindow *)v6 setHidden:0];
  }
}

- (void)_noteDidStopPresentingScene:(id)a3
{
  [(NSMutableSet *)self->_presentedScenes removeObject:a3];
  if (![(NSMutableSet *)self->_presentedScenes count]&& self->_shouldManageWindowLifecycle && [(UIScenePresentationBinder *)self _delegateShouldPresentSceneOnlyWhenLayersExist])
  {
    [(_UIRootWindow *)self->_rootSceneWindow setHidden:1];
    rootSceneWindow = self->_rootSceneWindow;
    self->_rootSceneWindow = 0;
  }
}

@end