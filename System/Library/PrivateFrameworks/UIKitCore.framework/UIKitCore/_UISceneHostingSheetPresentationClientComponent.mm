@interface _UISceneHostingSheetPresentationClientComponent
- (UISheetPresentationController)_localSheetPresentationController;
- (id)scene:(id)a3 handleActions:(id)a4;
- (void)_setLocalSheetPresentationController:(id)a3;
- (void)_sheetGrabberDidTriggerPrimaryAction;
- (void)_sheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3 dismissible:(BOOL)a4 interruptedOffset:(CGPoint)a5;
- (void)_sheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5 dismissible:(BOOL)a6;
- (void)_sheetInteractionDraggingDidEnd;
- (void)_sheetPresentationControllerClientConfigurationDidChange:(id)a3;
- (void)applySheetConfigurationToLocalPresentationControllerWithTransitionContext:(id)a3;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation _UISceneHostingSheetPresentationClientComponent

- (void)_setLocalSheetPresentationController:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_localSheetPresentationController, v4);
  [v4 _setClientRemotePresentationDelegate:self];

  [(_UISceneHostingSheetPresentationClientComponent *)self applySheetConfigurationToLocalPresentationControllerWithTransitionContext:0];
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v8 = a4;
  v5 = [v8 settingsDiff];
  v6 = [v5 containsProperty:sel_sheetConfiguration];

  if (v6)
  {
    v7 = [v8 transitionContext];
    [(_UISceneHostingSheetPresentationClientComponent *)self applySheetConfigurationToLocalPresentationControllerWithTransitionContext:v7];
  }
}

- (void)applySheetConfigurationToLocalPresentationControllerWithTransitionContext:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self scene];
  v6 = [v5 settings];
  v7 = [v6 sheetConfiguration];

  WeakRetained = objc_loadWeakRetained(&self->_localSheetPresentationController);
  v9 = WeakRetained;
  if (v7 && WeakRetained)
  {
    v10 = [WeakRetained containerView];
    v11 = [v10 window];

    [v11 layoutIfNeeded];
    [v9 _setConfiguration:v7];
    v12 = [v4 animationSettings];
    if (v12)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __125___UISceneHostingSheetPresentationClientComponent_applySheetConfigurationToLocalPresentationControllerWithTransitionContext___block_invoke;
      v13[3] = &unk_1E70F3590;
      v14 = v11;
      [UIView _animateWithAnimationSettings:v12 animations:v13 completion:0];
    }

    else
    {
      [v11 layoutIfNeeded];
    }
  }
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
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

- (void)_sheetPresentationControllerClientConfigurationDidChange:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self clientScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __108___UISceneHostingSheetPresentationClientComponent__sheetPresentationControllerClientConfigurationDidChange___block_invoke;
  v7[3] = &unk_1E712A650;
  v8 = v4;
  v6 = v4;
  [v5 updateClientSettings:v7];
}

- (void)_sheetGrabberDidTriggerPrimaryAction
{
  v5 = [(FBSSceneComponent *)self scene];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[_UISceneHostingSheetPresentationActionToHost actionForSheetGrabberDidTriggerPrimaryAction];
  v4 = [v2 setWithObject:v3];
  [v5 sendPrivateActions:v4];
}

- (void)_sheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3 dismissible:(BOOL)a4 interruptedOffset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4;
  v12 = [(FBSSceneComponent *)self scene];
  v9 = MEMORY[0x1E695DFD8];
  v10 = [_UISceneHostingSheetPresentationActionToHost actionForSheetInteractionDraggingDidBeginWithRubberBandCoefficient:v7 dismissible:a3 interruptedOffset:x, y];
  v11 = [v9 setWithObject:v10];
  [v12 sendPrivateActions:v11];
}

- (void)_sheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5 dismissible:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  v15 = [(FBSSceneComponent *)self scene];
  v12 = MEMORY[0x1E695DFD8];
  v13 = [_UISceneHostingSheetPresentationActionToHost actionForSheetInteractionDraggingDidChangeWithTranslation:v7 velocity:v6 animateChange:v11 dismissible:v10, x, y];
  v14 = [v12 setWithObject:v13];
  [v15 sendPrivateActions:v14];
}

- (void)_sheetInteractionDraggingDidEnd
{
  v5 = [(FBSSceneComponent *)self scene];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[_UISceneHostingSheetPresentationActionToHost actionForSheetInteractionDraggingDidEnd];
  v4 = [v2 setWithObject:v3];
  [v5 sendPrivateActions:v4];
}

- (UISheetPresentationController)_localSheetPresentationController
{
  WeakRetained = objc_loadWeakRetained(&self->_localSheetPresentationController);

  return WeakRetained;
}

@end