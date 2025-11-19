@interface _UISceneMainMenuHostComponent
- (_UISceneMainMenuHost)host;
- (id)_currentOverrideClientName;
- (id)handlePrivateActions:(id)a3;
- (void)_performHostSideProcessingForSessionResponse:(uint64_t)a1;
- (void)_performHostSideProcessingForStateResponse:(uint64_t)a1;
- (void)_populateElementGroupState:(void *)a3 withOverrideClientName:;
- (void)getBaseMainMenu:(id)a3;
- (void)performBaseMenuRequest:(id)a3 responseHandler:(id)a4;
- (void)performMainMenuCommandInvocationRequest:(id)a3 responseHandler:(id)a4;
- (void)performMainMenuDeferredElementRequest:(id)a3 responseHandler:(id)a4;
- (void)performMainMenuStateRequest:(id)a3 responseHandler:(id)a4;
- (void)performSessionRequest:(id)a3 handler:(id)a4;
- (void)setHost:(id)a3;
- (void)setScene:(id)a3;
@end

@implementation _UISceneMainMenuHostComponent

- (void)setScene:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (qword_1ED49DAE0 != -1)
  {
    dispatch_once(&qword_1ED49DAE0, &__block_literal_global_183);
  }

  if ((_MergedGlobals_1071 & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Process is not approved to use the main menu host component."];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UISceneMainMenuHostComponentAssertProcessIsApproved(void)"];
      *buf = 138544130;
      v9 = v6;
      v10 = 2114;
      v11 = @"_UISceneMainMenuHostComponent.m";
      v12 = 1024;
      v13 = 54;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189777030);
  }

  v7.receiver = self;
  v7.super_class = _UISceneMainMenuHostComponent;
  [(FBSSceneComponent *)&v7 setScene:v4];
}

- (id)handlePrivateActions:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29 = [MEMORY[0x1E695DFA8] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = v10;
        if (v11)
        {
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        if (v14)
        {
          v15 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v17 = v14;
            WeakRetained = objc_loadWeakRetained(&self->_host);
            if (WeakRetained)
            {
              v19 = WeakRetained;
              v20 = objc_loadWeakRetained(&self->_host);
              v21 = objc_opt_respondsToSelector();

              if (v21)
              {
                v22 = objc_loadWeakRetained(&self->_host);
                [v22 mainMenuDidInvalidate:self];
                goto LABEL_19;
              }
            }
          }

          else
          {
            v23 = objc_opt_self();
            v24 = objc_opt_isKindOfClass();

            if ((v24 & 1) == 0)
            {
              goto LABEL_21;
            }

            v25 = v14;
            v26 = objc_loadWeakRetained(&self->_host);

            if (v26)
            {
              v22 = objc_loadWeakRetained(&self->_host);
              v27 = [v25 commandInvocationNotification];
              [v22 mainMenuProvider:self didReceiveCommandInvocationNotification:v27];

LABEL_19:
              [v29 addObject:v14];
            }
          }
        }

LABEL_21:
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  return v29;
}

- (void)performBaseMenuRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [_UIMainMenuBaseMenuRequestAction alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72___UISceneMainMenuHostComponent_performBaseMenuRequest_responseHandler___block_invoke;
  v13[3] = &unk_1E7105320;
  objc_copyWeak(&v15, &location);
  v9 = v7;
  v14 = v9;
  v10 = [(_UIMainMenuBaseMenuRequestAction *)v8 initWithBaseMenuRequest:v6 handler:v13];
  v11 = [(FBSSceneComponent *)self scene];
  v12 = [MEMORY[0x1E695DFD8] setWithObject:v10];
  [v11 sendPrivateActions:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)getBaseMainMenu:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49___UISceneMainMenuHostComponent_getBaseMainMenu___block_invoke;
  v7[3] = &unk_1E71061E0;
  v8 = v4;
  v6 = v4;
  [(_UISceneMainMenuHostComponent *)self performBaseMenuRequest:v5 responseHandler:v7];
}

- (void)performSessionRequest:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [_UIMainMenuSessionRequestAction alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63___UISceneMainMenuHostComponent_performSessionRequest_handler___block_invoke;
  v13[3] = &unk_1E7105208;
  objc_copyWeak(&v15, &location);
  v9 = v7;
  v14 = v9;
  v10 = [(_UIMainMenuSessionRequestAction *)v8 initWithSessionRequest:v6 handler:v13];
  v11 = [(FBSSceneComponent *)self scene];
  v12 = [MEMORY[0x1E695DFD8] setWithObject:v10];
  [v11 sendPrivateActions:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_performHostSideProcessingForSessionResponse:(uint64_t)a1
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = a2;
  v3 = [v18 session];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));

    if (!WeakRetained)
    {
      goto LABEL_12;
    }

    v5 = objc_loadWeakRetained((a1 + 24));
    v6 = [v5 hostKeyboardShortcutsForMainMenu:a1];

    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 keyboardShortcut];
          [v7 setObject:v13 forKeyedSubscript:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    if (v7)
    {
      v15 = [v7 copy];
    }

    else
    {
LABEL_12:
      v15 = MEMORY[0x1E695E0F8];
    }

    v16 = [v18 session];
    [v16 set_hostKeyboardShortcuts:v15];

    v17 = [v18 menuStateResponse];
    [(_UISceneMainMenuHostComponent *)a1 _performHostSideProcessingForStateResponse:v17];
  }
}

- (void)performMainMenuStateRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [_UIMainMenuStateRequestAction alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77___UISceneMainMenuHostComponent_performMainMenuStateRequest_responseHandler___block_invoke;
  v13[3] = &unk_1E7106208;
  objc_copyWeak(&v15, &location);
  v9 = v7;
  v14 = v9;
  v10 = [(_UIMainMenuStateRequestAction *)v8 initWithMenuStateRequest:v6 handler:v13];
  v11 = [(FBSSceneComponent *)self scene];
  v12 = [MEMORY[0x1E695DFD8] setWithObject:v10];
  [v11 sendPrivateActions:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_performHostSideProcessingForStateResponse:(uint64_t)a1
{
  v3 = a2;
  v4 = [(_UISceneMainMenuHostComponent *)a1 _currentOverrideClientName];
  if (v4)
  {
    v5 = [v3 menuStates];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __76___UISceneMainMenuHostComponent__performHostSideProcessingForStateResponse___block_invoke;
    v11 = &unk_1E7106280;
    v12 = a1;
    v6 = v4;
    v13 = v6;
    [v5 bs_each:&v8];

    v7 = [v3 uncategorizedMenuState];
    [(_UISceneMainMenuHostComponent *)a1 _populateElementGroupState:v7 withOverrideClientName:v6];
  }
}

- (void)performMainMenuDeferredElementRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [_UIMainMenuDeferredElementRequestAction alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87___UISceneMainMenuHostComponent_performMainMenuDeferredElementRequest_responseHandler___block_invoke;
  v13[3] = &unk_1E7105258;
  objc_copyWeak(&v15, &location);
  v9 = v7;
  v14 = v9;
  v10 = [(_UIMainMenuDeferredElementRequestAction *)v8 initWithDeferredElementRequest:v6 handler:v13];
  v11 = [(FBSSceneComponent *)self scene];
  v12 = [MEMORY[0x1E695DFD8] setWithObject:v10];
  [v11 sendPrivateActions:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)performMainMenuCommandInvocationRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [_UIMainMenuCommandInvocationRequestAction alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89___UISceneMainMenuHostComponent_performMainMenuCommandInvocationRequest_responseHandler___block_invoke;
  v13[3] = &unk_1E7105348;
  objc_copyWeak(&v15, &location);
  v9 = v7;
  v14 = v9;
  v10 = [(_UIMainMenuCommandInvocationRequestAction *)v8 initWithInvocationRequest:v6 responseHandler:v13];
  v11 = [(FBSSceneComponent *)self scene];
  v12 = [MEMORY[0x1E695DFD8] setWithObject:v10];
  [v11 sendPrivateActions:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)setHost:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_host, v4);
    v6 = [(FBSSceneComponent *)self hostScene];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41___UISceneMainMenuHostComponent_setHost___block_invoke;
    v7[3] = &unk_1E7106230;
    v8 = v4;
    [v6 updateSettingsWithBlock:v7];
  }
}

- (id)_currentOverrideClientName
{
  WeakRetained = objc_loadWeakRetained((a1 + 24));
  if (WeakRetained && (v3 = WeakRetained, v4 = objc_loadWeakRetained((a1 + 24)), v5 = objc_opt_respondsToSelector(), v4, v3, (v5 & 1) != 0))
  {
    v6 = objc_loadWeakRetained((a1 + 24));
    v7 = [v6 overrideClientNameForMainMenu:a1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_populateElementGroupState:(void *)a3 withOverrideClientName:
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83___UISceneMainMenuHostComponent__populateElementGroupState_withOverrideClientName___block_invoke;
    v7[3] = &unk_1E71062A8;
    v8 = v5;
    v9 = 0;
    _UIMainMenuElementGroupStateEnumerateCommandStatesHelper(a2, v7, &v9);
  }
}

- (_UISceneMainMenuHost)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end