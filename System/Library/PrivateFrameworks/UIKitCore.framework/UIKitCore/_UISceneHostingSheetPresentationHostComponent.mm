@interface _UISceneHostingSheetPresentationHostComponent
- (BOOL)_viewClipsToBounds;
- (UIViewController)_targetViewController;
- (_UISheetPresentationControllerConfiguration)_sheetConfiguration;
- (id)currentPresentationController;
- (id)scene:(id)a3 handleActions:(id)a4;
- (id)sheetDisconnectionAssertionForReason:(id)a3;
- (void)_setSheetConfiguration:(id)a3;
- (void)_setViewClipsToBounds:(BOOL)a3;
- (void)_sheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3;
- (void)_sheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5;
- (void)_sheetInteractionDraggingDidEnd;
- (void)evaluateSheetConnectionStateForNewAssertion:(BOOL)a3;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
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

- (id)sheetDisconnectionAssertionForReason:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  ++self->_sheetDisconnectionAssertionCount;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(FBSSceneComponent *)self hostScene];
  v7 = [v6 identityToken];
  v8 = [v5 stringWithFormat:@"sheetDisconnectionAssertion::%@", v7];

  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x1E698E778]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86___UISceneHostingSheetPresentationHostComponent_sheetDisconnectionAssertionForReason___block_invoke;
  v14[3] = &unk_1E70FA170;
  objc_copyWeak(&v15, &location);
  v10 = [v9 initWithIdentifier:v8 forReason:v4 invalidationBlock:v14];
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

- (void)evaluateSheetConnectionStateForNewAssertion:(BOOL)a3
{
  sheetDisconnectionAssertionCount = self->_sheetDisconnectionAssertionCount;
  if (!sheetDisconnectionAssertionCount)
  {
    v6 = [(_UISceneHostingSheetPresentationHostComponent *)self currentPresentationController];
    v8 = v6;
    v7 = self;
    goto LABEL_9;
  }

  if (sheetDisconnectionAssertionCount == 1 && a3)
  {
    v6 = [(_UISceneHostingSheetPresentationHostComponent *)self currentPresentationController];
    v8 = v6;
    v7 = 0;
LABEL_9:
    [v6 _tryToConnectToRemoteSheet:v7];
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
          v17 = [(_UISceneHostingSheetPresentationHostComponent *)self currentPresentationController];
          [v16 executeActionForSheetPresentationController:v17];

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

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 settingsDiff];
  v9 = [v7 transitionContext];

  if ([v8 containsProperty:sel_sheetClientConfiguration])
  {
    v10 = [v6 clientSettings];
    v11 = [v10 sheetClientConfiguration];

    v12 = [(_UISceneHostingSheetPresentationHostComponent *)self currentPresentationController];
    if (v12)
    {
      v13 = [(FBSSceneComponent *)self hostScene];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __79___UISceneHostingSheetPresentationHostComponent_scene_didUpdateClientSettings___block_invoke;
      v14[3] = &unk_1E70F35B8;
      v15 = v12;
      v16 = v11;
      [v13 ui_performBlock:v14 withTransitionContext:v9];
    }
  }
}

- (void)_setSheetConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72___UISceneHostingSheetPresentationHostComponent__setSheetConfiguration___block_invoke;
  v7[3] = &unk_1E7120A80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 _performUpdateWithoutActivation:v7];
}

- (_UISheetPresentationControllerConfiguration)_sheetConfiguration
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 settings];
  v4 = [v3 sheetConfiguration];

  return v4;
}

- (void)_setViewClipsToBounds:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_targetViewController);
  v4 = [WeakRetained view];
  [v4 setClipsToBounds:v3];
}

- (BOOL)_viewClipsToBounds
{
  WeakRetained = objc_loadWeakRetained(&self->_targetViewController);
  v3 = [WeakRetained view];
  v4 = [v3 clipsToBounds];

  return v4;
}

- (void)_sheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3
{
  v7 = [(FBSSceneComponent *)self scene];
  v4 = MEMORY[0x1E695DFD8];
  v5 = [_UISceneHostingSheetPresentationActionToClient actionForSheetInteractionDraggingDidBeginWithRubberBandCoefficient:a3];
  v6 = [v4 setWithObject:v5];
  [v7 sendPrivateActions:v6];
}

- (void)_sheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  v13 = [(FBSSceneComponent *)self scene];
  v10 = MEMORY[0x1E695DFD8];
  v11 = [_UISceneHostingSheetPresentationActionToClient actionForSheetInteractionDraggingDidChangeWithTranslation:v5 velocity:v9 animateChange:v8, x, y];
  v12 = [v10 setWithObject:v11];
  [v13 sendPrivateActions:v12];
}

- (void)_sheetInteractionDraggingDidEnd
{
  v5 = [(FBSSceneComponent *)self scene];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[_UISceneHostingSheetPresentationActionToClient actionForSheetInteractionDraggingDidEnd];
  v4 = [v2 setWithObject:v3];
  [v5 sendPrivateActions:v4];
}

- (UIViewController)_targetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_targetViewController);

  return WeakRetained;
}

@end