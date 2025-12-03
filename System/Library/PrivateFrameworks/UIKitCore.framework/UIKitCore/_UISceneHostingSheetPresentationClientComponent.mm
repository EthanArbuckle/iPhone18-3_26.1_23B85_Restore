@interface _UISceneHostingSheetPresentationClientComponent
- (UISheetPresentationController)_localSheetPresentationController;
- (id)scene:(id)scene handleActions:(id)actions;
- (void)_setLocalSheetPresentationController:(id)controller;
- (void)_sheetGrabberDidTriggerPrimaryAction;
- (void)_sheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient dismissible:(BOOL)dismissible interruptedOffset:(CGPoint)offset;
- (void)_sheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change dismissible:(BOOL)dismissible;
- (void)_sheetInteractionDraggingDidEnd;
- (void)_sheetPresentationControllerClientConfigurationDidChange:(id)change;
- (void)applySheetConfigurationToLocalPresentationControllerWithTransitionContext:(id)context;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation _UISceneHostingSheetPresentationClientComponent

- (void)_setLocalSheetPresentationController:(id)controller
{
  controllerCopy = controller;
  objc_storeWeak(&self->_localSheetPresentationController, controllerCopy);
  [controllerCopy _setClientRemotePresentationDelegate:self];

  [(_UISceneHostingSheetPresentationClientComponent *)self applySheetConfigurationToLocalPresentationControllerWithTransitionContext:0];
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v6 = [settingsDiff containsProperty:sel_sheetConfiguration];

  if (v6)
  {
    transitionContext = [settingsCopy transitionContext];
    [(_UISceneHostingSheetPresentationClientComponent *)self applySheetConfigurationToLocalPresentationControllerWithTransitionContext:transitionContext];
  }
}

- (void)applySheetConfigurationToLocalPresentationControllerWithTransitionContext:(id)context
{
  contextCopy = context;
  scene = [(FBSSceneComponent *)self scene];
  settings = [scene settings];
  sheetConfiguration = [settings sheetConfiguration];

  WeakRetained = objc_loadWeakRetained(&self->_localSheetPresentationController);
  v9 = WeakRetained;
  if (sheetConfiguration && WeakRetained)
  {
    containerView = [WeakRetained containerView];
    window = [containerView window];

    [window layoutIfNeeded];
    [v9 _setConfiguration:sheetConfiguration];
    animationSettings = [contextCopy animationSettings];
    if (animationSettings)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __125___UISceneHostingSheetPresentationClientComponent_applySheetConfigurationToLocalPresentationControllerWithTransitionContext___block_invoke;
      v13[3] = &unk_1E70F3590;
      v14 = window;
      [UIView _animateWithAnimationSettings:animationSettings animations:v13 completion:0];
    }

    else
    {
      [window layoutIfNeeded];
    }
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
          WeakRetained = objc_loadWeakRetained(&self->_localSheetPresentationController);
          [v16 executeActionForSheetPresentationController:{WeakRetained, v20}];

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

- (void)_sheetPresentationControllerClientConfigurationDidChange:(id)change
{
  changeCopy = change;
  clientScene = [(FBSSceneComponent *)self clientScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __108___UISceneHostingSheetPresentationClientComponent__sheetPresentationControllerClientConfigurationDidChange___block_invoke;
  v7[3] = &unk_1E712A650;
  v8 = changeCopy;
  v6 = changeCopy;
  [clientScene updateClientSettings:v7];
}

- (void)_sheetGrabberDidTriggerPrimaryAction
{
  scene = [(FBSSceneComponent *)self scene];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[_UISceneHostingSheetPresentationActionToHost actionForSheetGrabberDidTriggerPrimaryAction];
  v4 = [v2 setWithObject:v3];
  [scene sendPrivateActions:v4];
}

- (void)_sheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient dismissible:(BOOL)dismissible interruptedOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  dismissibleCopy = dismissible;
  scene = [(FBSSceneComponent *)self scene];
  v9 = MEMORY[0x1E695DFD8];
  v10 = [_UISceneHostingSheetPresentationActionToHost actionForSheetInteractionDraggingDidBeginWithRubberBandCoefficient:dismissibleCopy dismissible:coefficient interruptedOffset:x, y];
  v11 = [v9 setWithObject:v10];
  [scene sendPrivateActions:v11];
}

- (void)_sheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change dismissible:(BOOL)dismissible
{
  dismissibleCopy = dismissible;
  changeCopy = change;
  y = velocity.y;
  x = velocity.x;
  v10 = translation.y;
  v11 = translation.x;
  scene = [(FBSSceneComponent *)self scene];
  v12 = MEMORY[0x1E695DFD8];
  v13 = [_UISceneHostingSheetPresentationActionToHost actionForSheetInteractionDraggingDidChangeWithTranslation:changeCopy velocity:dismissibleCopy animateChange:v11 dismissible:v10, x, y];
  v14 = [v12 setWithObject:v13];
  [scene sendPrivateActions:v14];
}

- (void)_sheetInteractionDraggingDidEnd
{
  scene = [(FBSSceneComponent *)self scene];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[_UISceneHostingSheetPresentationActionToHost actionForSheetInteractionDraggingDidEnd];
  v4 = [v2 setWithObject:v3];
  [scene sendPrivateActions:v4];
}

- (UISheetPresentationController)_localSheetPresentationController
{
  WeakRetained = objc_loadWeakRetained(&self->_localSheetPresentationController);

  return WeakRetained;
}

@end