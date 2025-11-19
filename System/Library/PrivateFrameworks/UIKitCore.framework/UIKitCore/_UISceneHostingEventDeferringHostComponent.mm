@interface _UISceneHostingEventDeferringHostComponent
- (BOOL)maintainHostFirstResponderWhenClientWantsKeyboard;
- (BOOL)requestEventDeferralForAllFirstResponderChanges;
- (id)scene:(id)a3 handleActions:(id)a4;
- (void)_scene:(id)a3 isMovingToParent:(id)a4;
- (void)configureEventDeferringRulesWithParentScene:(uint64_t)a1;
- (void)configurePendingEventDeferringIfNecessary;
- (void)firstResponderDidChange:(id)a3;
- (void)invalidate;
- (void)scene:(id)a3 clientDidConnect:(id)a4;
- (void)sceneWillDeactivate:(id)a3 withContext:(id)a4;
- (void)setMaintainHostFirstResponderWhenClientWantsKeyboard:(BOOL)a3;
- (void)setRequestEventDeferralForAllFirstResponderChanges:(BOOL)a3;
- (void)setScene:(id)a3;
- (void)severEventDeferringRules;
- (void)tearDownEventDeferringRulesIfNecessaryWithReason:(uint64_t)a1;
@end

@implementation _UISceneHostingEventDeferringHostComponent

- (void)setScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UISceneHostingEventDeferringHostComponent;
  [(FBSSceneComponent *)&v5 setScene:a3];
  if (self)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel_firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
  }
}

- (void)setMaintainHostFirstResponderWhenClientWantsKeyboard:(BOOL)a3
{
  v3 = a3;
  v5 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  v6 = [(FBSSceneComponent *)self hostScene];
  v7 = [v6 identityToken];
  v8 = [v7 stringRepresentation];
  if (v3)
  {
    [v5 addIgnoredSceneIdentityTokenString:v8];
  }

  else
  {
    [v5 removeIgnoredSceneIdentityTokenString:v8];
  }

  v9 = [(FBSSceneComponent *)self hostScene];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99___UISceneHostingEventDeferringHostComponent_setMaintainHostFirstResponderWhenClientWantsKeyboard___block_invoke;
  v10[3] = &__block_descriptor_33_e72_v16__0__FBSMutableSceneSettings__UISceneHostingEventDeferringSettings__8l;
  v11 = v3;
  [v9 updateSettingsWithBlock:v10];
}

- (BOOL)maintainHostFirstResponderWhenClientWantsKeyboard
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 settings];
  v4 = [v3 maintainHostFirstResponderWhenClientWantsKeyboard];

  return v4;
}

- (void)setRequestEventDeferralForAllFirstResponderChanges:(BOOL)a3
{
  v4 = [(FBSSceneComponent *)self hostScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __97___UISceneHostingEventDeferringHostComponent_setRequestEventDeferralForAllFirstResponderChanges___block_invoke;
  v5[3] = &__block_descriptor_33_e72_v16__0__FBSMutableSceneSettings__UISceneHostingEventDeferringSettings__8l;
  v6 = a3;
  [v4 updateSettingsWithBlock:v5];
}

- (BOOL)requestEventDeferralForAllFirstResponderChanges
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 settings];
  v4 = [v3 requestEventDeferralForAllFirstResponderChanges];

  return v4;
}

- (void)configureEventDeferringRulesWithParentScene:(uint64_t)a1
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained == v3)
    {
LABEL_24:

      goto LABEL_25;
    }

    v5 = [a1 hostScene];
    v6 = [v5 clientHandle];
    if (![v5 isActive] || !v6)
    {

LABEL_23:
      goto LABEL_24;
    }

    v7 = [v6 identity];
    v8 = [v7 isLocal];

    if ((v8 & 1) == 0)
    {
      [(_UISceneHostingEventDeferringHostComponent *)a1 tearDownEventDeferringRulesIfNecessaryWithReason:?];
      if (!v3)
      {
        v31 = [MEMORY[0x1E696AAA8] currentHandler];
        [v31 handleFailureInMethod:sel_configureEventDeferringRulesWithParentScene_ object:a1 file:@"_UISceneHostingEventDeferringHostComponent.m" lineNumber:134 description:@"A valid parent scene is required to configure event deferring"];
      }

      if (([a1 maintainHostFirstResponderWhenClientWantsKeyboard] & 1) == 0)
      {
        v9 = [a1 hostScene];
        v10 = [v9 uiSceneHostingController];

        if (qword_1ED49AD10 != -1)
        {
          dispatch_once(&qword_1ED49AD10, &__block_literal_global_560);
        }

        if (_MergedGlobals_7_7 != 1 || (([v10 sceneViewController], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "parentViewController"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_opt_class(), v14 = v12, !v13) ? (v15 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v15 = 0) : (v15 = v14), v16 = v15, v14, v14, v11, !v16))
        {
          v16 = [v10 sceneView];
        }

        [v16 becomeFirstResponder];
      }

      WeakRetained = objc_alloc_init(MEMORY[0x1E698E3F8]);
      v5 = [a1 hostScene];
      v40 = [v5 clientHandle];
      v17 = [v40 processHandle];
      v18 = [v17 pid];

      [WeakRetained setPid:v18];
      v19 = [v5 identityToken];
      v20 = [v19 stringRepresentation];

      v39 = v20;
      v38 = [MEMORY[0x1E698E3A0] tokenForString:v20];
      [WeakRetained setToken:?];
      v21 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
      v22 = [MEMORY[0x1E695DFD8] setWithObject:v21];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: begin deferring to hosted scene in %@", objc_opt_class(), a1, v21];
      v24 = [a1 hostScene];
      v25 = [v24 uiSceneHostingController];
      v26 = [v25 sceneViewController];

      v27 = [v3 _eventDeferringManager];
      v28 = [(_UIEventDeferringManager *)v27 beginRemoteEventDeferringInEnvironments:v22 forOwningInterfaceElement:v26 toTarget:WeakRetained withReason:v23];
      v29 = *(a1 + 32);
      *(a1 + 32) = v28;

      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneHosting", &qword_1ED49AD18);
      if (*CategoryCachedImpl)
      {
        v32 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          log = v32;
          v33 = objc_opt_class();
          v34 = *(a1 + 32);
          v37 = v33;
          v35 = [v34 description];
          *buf = 138412802;
          v42 = v33;
          v43 = 2048;
          v44 = a1;
          v45 = 2112;
          v46 = v35;
          _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "<%@: %p> Deferring events with token %@", buf, 0x20u);
        }
      }

      objc_storeWeak((a1 + 40), v3);

      goto LABEL_23;
    }
  }

LABEL_25:
}

- (void)tearDownEventDeferringRulesIfNecessaryWithReason:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        (*(v5 + 16))(v5, *(a1 + 32), v3);
        v6 = *(v4 + 16);
        *(v4 + 16) = 0;
      }

      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneHosting", &tearDownEventDeferringRulesIfNecessaryWithReason____s_category);
      if (*CategoryCachedImpl)
      {
        v9 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = v9;
          v11 = objc_opt_class();
          v12 = *(a1 + 32);
          v13 = v11;
          v14 = [v12 description];
          v15 = 138412802;
          v16 = v11;
          v17 = 2048;
          v18 = a1;
          v19 = 2112;
          v20 = v14;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "<%@: %p> Stopped deferring events with token %@", &v15, 0x20u);
        }
      }

      v8 = *(a1 + 32);
      *(a1 + 32) = 0;

      objc_storeWeak((a1 + 40), 0);
    }
  }
}

- (void)configurePendingEventDeferringIfNecessary
{
  if (a1 && !*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));

    if (WeakRetained)
    {
      v3 = objc_loadWeakRetained((a1 + 48));
      [(_UISceneHostingEventDeferringHostComponent *)a1 configureEventDeferringRulesWithParentScene:v3];

      objc_storeWeak((a1 + 48), 0);
    }

    else
    {
      *(a1 + 24) |= 1u;
    }
  }
}

- (void)severEventDeferringRules
{
  if (a1 && *(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    objc_storeWeak((a1 + 48), WeakRetained);

    [(_UISceneHostingEventDeferringHostComponent *)a1 tearDownEventDeferringRulesIfNecessaryWithReason:?];
  }
}

- (void)firstResponderDidChange:(id)a3
{
  v10 = [a3 object];
  v4 = [v10 _windowHostingScene];
  v5 = [v10 firstResponder];

  v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v7 = [v6 handlingRemoteEvent];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_eventDeferringParentScene);
    v9 = BSEqualObjects();

    if (!(v7 & 1 | ((v9 & 1) == 0)))
    {
      [(_UISceneHostingEventDeferringHostComponent *)self severEventDeferringRules];
    }
  }
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        if ([v12 UIActionType] == 58)
        {
          [v6 addObject:v12];
          if (self)
          {
            v13 = [(FBSSceneComponent *)self hostScene];
            v14 = [v13 _keyboardHostComponent];
            v15 = [v14 suppressKeyboardFocusRequests];

            if (v15)
            {
              [(_UISceneHostingEventDeferringHostComponent *)self severEventDeferringRules];
            }

            else
            {
              [(_UISceneHostingEventDeferringHostComponent *)self configurePendingEventDeferringIfNecessary];
              v16 = [(FBSSceneComponent *)self hostScene];
              v17 = [v16 uiSceneHostingController];
              v18 = [v17 sceneView];
              v19 = [v18 _window];

              if (v19)
              {
                v20 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
                v21 = v20;
                if (v20)
                {
                  [(_UIRemoteKeyboards *)v20 performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:v19 servicePID:0];
                }
              }
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v22 = [v6 copy];

  return v22;
}

- (void)scene:(id)a3 clientDidConnect:(id)a4
{
  if (*&self->_flags)
  {
    [(_UISceneHostingEventDeferringHostComponent *)self configurePendingEventDeferringIfNecessary];
    *&self->_flags &= ~1u;
  }
}

- (void)sceneWillDeactivate:(id)a3 withContext:(id)a4
{
  if (self->_eventDeferringOwnershipToken)
  {
    WeakRetained = objc_loadWeakRetained(&self->_eventDeferringParentScene);
    objc_storeWeak(&self->_parentScenePendingEventDeferringRules, WeakRetained);

    [(_UISceneHostingEventDeferringHostComponent *)self tearDownEventDeferringRulesIfNecessaryWithReason:?];
    *&self->_flags |= 1u;
  }
}

- (void)invalidate
{
  if ([(_UISceneHostingEventDeferringHostComponent *)self maintainHostFirstResponderWhenClientWantsKeyboard])
  {
    v3 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    v4 = [(FBSSceneComponent *)self hostScene];
    v5 = [v4 identityToken];
    v6 = [v5 stringRepresentation];
    [v3 removeIgnoredSceneIdentityTokenString:v6];
  }

  v8.receiver = self;
  v8.super_class = _UISceneHostingEventDeferringHostComponent;
  [(FBSSceneComponent *)&v8 invalidate];
  if (self)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 removeObserver:self name:@"UIWindowFirstResponderDidChangeNotification" object:0];
  }
}

- (void)_scene:(id)a3 isMovingToParent:(id)a4
{
  v5 = [a4 _windowHostingScene];
  v6 = v5;
  if (v5)
  {
    if (self->_eventDeferringOwnershipToken || (*&self->_flags & 1) != 0)
    {
      [(_UISceneHostingEventDeferringHostComponent *)self configureEventDeferringRulesWithParentScene:v5];
      *&self->_flags &= ~1u;
    }

    else
    {
      objc_storeWeak(&self->_parentScenePendingEventDeferringRules, v5);
    }
  }

  else
  {
    [(_UISceneHostingEventDeferringHostComponent *)self tearDownEventDeferringRulesIfNecessaryWithReason:?];
  }
}

@end