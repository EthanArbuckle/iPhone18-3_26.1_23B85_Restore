@interface _UISceneHostingSheetPresentationHostComponent
- (BOOL)_viewClipsToBounds;
- (UIViewController)_targetViewController;
- (_UISheetPresentationControllerConfiguration)_sheetConfiguration;
- (id)currentPresentationController;
- (id)scene:(id)scene handleActions:(id)actions;
- (id)sheetDisconnectionAssertionForReason:(id)reason;
- (void)_setSheetConfiguration:(id)configuration;
- (void)_setViewClipsToBounds:(BOOL)bounds;
- (void)_sheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient;
- (void)_sheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change;
- (void)_sheetInteractionDraggingDidEnd;
- (void)evaluateSheetConnectionStateForNewAssertion:(BOOL)assertion;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
@end

@implementation _UISceneHostingSheetPresentationHostComponent

- (id)currentPresentationController
{
  WeakRetained = objc_loadWeakRetained(&self->_targetViewController);
  v3 = [WeakRetained _existingPresentationControllerImmediate:0 effective:1];

  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = v4;

  return v4;
}

- (id)sheetDisconnectionAssertionForReason:(id)reason
{
  v19 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  ++self->_sheetDisconnectionAssertionCount;
  v5 = MEMORY[0x1E696AEC0];
  hostScene = [(FBSSceneComponent *)self hostScene];
  identityToken = [hostScene identityToken];
  v8 = [v5 stringWithFormat:@"sheetDisconnectionAssertion::%@", identityToken];

  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x1E698E778]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86___UISceneHostingSheetPresentationHostComponent_sheetDisconnectionAssertionForReason___block_invoke;
  v14[3] = &unk_1E70FA170;
  objc_copyWeak(&v15, &location);
  v10 = [v9 initWithIdentifier:v8 forReason:reasonCopy invalidationBlock:v14];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneHosting", &sheetDisconnectionAssertionForReason____s_category);
  if (*CategoryCachedImpl)
  {
    v13 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Sheet disconnect assertion taken: %@", buf, 0xCu);
    }
  }

  [(_UISceneHostingSheetPresentationHostComponent *)self evaluateSheetConnectionStateForNewAssertion:1];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

- (void)evaluateSheetConnectionStateForNewAssertion:(BOOL)assertion
{
  sheetDisconnectionAssertionCount = self->_sheetDisconnectionAssertionCount;
  if (!sheetDisconnectionAssertionCount)
  {
    currentPresentationController = [(_UISceneHostingSheetPresentationHostComponent *)self currentPresentationController];
    v8 = currentPresentationController;
    selfCopy = self;
    goto LABEL_9;
  }

  if (sheetDisconnectionAssertionCount == 1 && assertion)
  {
    currentPresentationController = [(_UISceneHostingSheetPresentationHostComponent *)self currentPresentationController];
    v8 = currentPresentationController;
    selfCopy = 0;
LABEL_9:
    [currentPresentationController _tryToConnectToRemoteSheet:selfCopy];
  }
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v25 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v6 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = actionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = v12;
        if (v13)
        {
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        if (v16)
        {
          currentPresentationController = [(_UISceneHostingSheetPresentationHostComponent *)self currentPresentationController];
          [v16 executeActionForSheetPresentationController:currentPresentationController];

          [v6 addObject:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v18 = [v6 copy];

  return v18;
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  transitionContext = [settingsCopy transitionContext];

  if ([settingsDiff containsProperty:sel_sheetClientConfiguration])
  {
    clientSettings = [sceneCopy clientSettings];
    sheetClientConfiguration = [clientSettings sheetClientConfiguration];

    currentPresentationController = [(_UISceneHostingSheetPresentationHostComponent *)self currentPresentationController];
    if (currentPresentationController)
    {
      hostScene = [(FBSSceneComponent *)self hostScene];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __79___UISceneHostingSheetPresentationHostComponent_scene_didUpdateClientSettings___block_invoke;
      v14[3] = &unk_1E70F35B8;
      v15 = currentPresentationController;
      v16 = sheetClientConfiguration;
      [hostScene ui_performBlock:v14 withTransitionContext:transitionContext];
    }
  }
}

- (void)_setSheetConfiguration:(id)configuration
{
  configurationCopy = configuration;
  hostScene = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72___UISceneHostingSheetPresentationHostComponent__setSheetConfiguration___block_invoke;
  v7[3] = &unk_1E7120A80;
  v8 = configurationCopy;
  selfCopy = self;
  v6 = configurationCopy;
  [hostScene _performUpdateWithoutActivation:v7];
}

- (_UISheetPresentationControllerConfiguration)_sheetConfiguration
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  settings = [hostScene settings];
  sheetConfiguration = [settings sheetConfiguration];

  return sheetConfiguration;
}

- (void)_setViewClipsToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  WeakRetained = objc_loadWeakRetained(&self->_targetViewController);
  view = [WeakRetained view];
  [view setClipsToBounds:boundsCopy];
}

- (BOOL)_viewClipsToBounds
{
  WeakRetained = objc_loadWeakRetained(&self->_targetViewController);
  view = [WeakRetained view];
  clipsToBounds = [view clipsToBounds];

  return clipsToBounds;
}

- (void)_sheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient
{
  scene = [(FBSSceneComponent *)self scene];
  v4 = MEMORY[0x1E695DFD8];
  v5 = [_UISceneHostingSheetPresentationActionToClient actionForSheetInteractionDraggingDidBeginWithRubberBandCoefficient:coefficient];
  v6 = [v4 setWithObject:v5];
  [scene sendPrivateActions:v6];
}

- (void)_sheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change
{
  changeCopy = change;
  y = velocity.y;
  x = velocity.x;
  v8 = translation.y;
  v9 = translation.x;
  scene = [(FBSSceneComponent *)self scene];
  v10 = MEMORY[0x1E695DFD8];
  v11 = [_UISceneHostingSheetPresentationActionToClient actionForSheetInteractionDraggingDidChangeWithTranslation:changeCopy velocity:v9 animateChange:v8, x, y];
  v12 = [v10 setWithObject:v11];
  [scene sendPrivateActions:v12];
}

- (void)_sheetInteractionDraggingDidEnd
{
  scene = [(FBSSceneComponent *)self scene];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[_UISceneHostingSheetPresentationActionToClient actionForSheetInteractionDraggingDidEnd];
  v4 = [v2 setWithObject:v3];
  [scene sendPrivateActions:v4];
}

- (UIViewController)_targetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_targetViewController);

  return WeakRetained;
}

@end