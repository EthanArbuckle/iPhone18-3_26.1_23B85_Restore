@interface _UISceneFocusMovementBSActionsHandler
- (_UISceneFocusMovementBSActionsHandler)init;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
- (void)_focusSystemSceneComponentDidPerformInitialSetupNotification:(id)a3;
@end

@implementation _UISceneFocusMovementBSActionsHandler

- (_UISceneFocusMovementBSActionsHandler)init
{
  v7.receiver = self;
  v7.super_class = _UISceneFocusMovementBSActionsHandler;
  v2 = [(_UISceneFocusMovementBSActionsHandler *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    pendingFocusMovementActions = v2->_pendingFocusMovementActions;
    v2->_pendingFocusMovementActions = v3;

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__focusSystemSceneComponentDidPerformInitialSetupNotification_ name:@"_UIFocusSystemSceneComponentDidFinishInitialization" object:0];
  }

  return v2;
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v8 objectsPassingTest:&__block_literal_global_348];
  if ([v10 count])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v9 _focusSystemSceneComponent];
      v12 = [v11 focusSystem];

      if (v12)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v13 = v10;
        v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v26;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [v12 _handleFocusMovementAction:{*(*(&v25 + 1) + 8 * i), v25}];
            }

            v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v15);
        }
      }

      else
      {
        v18 = [v9 _FBSScene];
        v19 = [v18 identityToken];
        v20 = [v19 stringRepresentation];

        pendingFocusMovementActions = self->_pendingFocusMovementActions;
        v22 = [v10 allObjects];
        [(NSMutableDictionary *)pendingFocusMovementActions setObject:v22 forKey:v20];
      }
    }
  }

  v23 = [v8 mutableCopy];
  [v23 minusSet:v10];

  return v23;
}

- (void)_focusSystemSceneComponentDidPerformInitialSetupNotification:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:0x1EFB17090];

  if (v5)
  {
    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_pendingFocusMovementActions objectForKey:v7];
      v9 = [v8 count];

      if (v9)
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v10 = [(NSMutableDictionary *)self->_pendingFocusMovementActions objectForKey:v7, 0];
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v5 _handleFocusMovementAction:*(*(&v15 + 1) + 8 * v14++)];
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v12);
        }
      }
    }
  }

  [(NSMutableDictionary *)self->_pendingFocusMovementActions removeObjectForKey:v7];
}

@end