@interface UIRootWindowScenePresentationBinder
- (UIRootWindowScenePresentationBinder)initWithPriority:(int64_t)priority displayConfiguration:(id)configuration;
- (id)_initWithIdentifier:(id)identifier priority:(int64_t)priority appearanceStyle:(unint64_t)style rootWindow:(id)window;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (void)_noteDidStopPresentingScene:(id)scene;
- (void)_noteWillStartPresentingScene:(id)scene;
- (void)invalidate;
@end

@implementation UIRootWindowScenePresentationBinder

- (id)_initWithIdentifier:(id)identifier priority:(int64_t)priority appearanceStyle:(unint64_t)style rootWindow:(id)window
{
  windowCopy = window;
  identifierCopy = identifier;
  _sceneContainerView = [windowCopy _sceneContainerView];
  v20.receiver = self;
  v20.super_class = UIRootWindowScenePresentationBinder;
  v14 = [(UIScenePresentationBinder *)&v20 initWithIdentifier:identifierCopy priority:priority rootView:_sceneContainerView appearanceStyle:style];

  if (v14)
  {
    objc_storeStrong(&v14->_rootSceneWindow, window);
    v14->_shouldManageWindowLifecycle = windowCopy == 0;
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    presentedScenes = v14->_presentedScenes;
    v14->_presentedScenes = v15;

    displayConfiguration = [windowCopy displayConfiguration];
    displayConfiguration = v14->_displayConfiguration;
    v14->_displayConfiguration = displayConfiguration;
  }

  return v14;
}

- (UIRootWindowScenePresentationBinder)initWithPriority:(int64_t)priority displayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8 = MEMORY[0x1E696AEC0];
  identity = [configurationCopy identity];
  v10 = [v8 stringWithFormat:@"RootWindow-%@-%p", identity, self];
  v11 = [(UIRootWindowScenePresentationBinder *)self _initWithIdentifier:v10 priority:priority appearanceStyle:0 rootWindow:0];

  if (v11)
  {
    objc_storeStrong(&v11->_displayConfiguration, configuration);
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

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(UIScenePresentationBinder *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__UIRootWindowScenePresentationBinder_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v5 = succinctDescriptionBuilder;
  v10 = v5;
  selfCopy = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

- (void)_noteWillStartPresentingScene:(id)scene
{
  [(NSMutableSet *)self->_presentedScenes addObject:scene];
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

- (void)_noteDidStopPresentingScene:(id)scene
{
  [(NSMutableSet *)self->_presentedScenes removeObject:scene];
  if (![(NSMutableSet *)self->_presentedScenes count]&& self->_shouldManageWindowLifecycle && [(UIScenePresentationBinder *)self _delegateShouldPresentSceneOnlyWhenLayersExist])
  {
    [(_UIRootWindow *)self->_rootSceneWindow setHidden:1];
    rootSceneWindow = self->_rootSceneWindow;
    self->_rootSceneWindow = 0;
  }
}

@end