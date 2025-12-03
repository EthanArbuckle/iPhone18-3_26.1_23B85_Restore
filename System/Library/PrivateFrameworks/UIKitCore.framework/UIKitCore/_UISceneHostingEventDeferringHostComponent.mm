@interface _UISceneHostingEventDeferringHostComponent
- (BOOL)maintainHostFirstResponderWhenClientWantsKeyboard;
- (BOOL)requestEventDeferralForAllFirstResponderChanges;
- (id)scene:(id)scene handleActions:(id)actions;
- (void)_scene:(id)_scene isMovingToParent:(id)parent;
- (void)configureEventDeferringRulesWithParentScene:(uint64_t)scene;
- (void)configurePendingEventDeferringIfNecessary;
- (void)firstResponderDidChange:(id)change;
- (void)invalidate;
- (void)scene:(id)scene clientDidConnect:(id)connect;
- (void)sceneWillDeactivate:(id)deactivate withContext:(id)context;
- (void)setMaintainHostFirstResponderWhenClientWantsKeyboard:(BOOL)keyboard;
- (void)setRequestEventDeferralForAllFirstResponderChanges:(BOOL)changes;
- (void)setScene:(id)scene;
- (void)severEventDeferringRules;
- (void)tearDownEventDeferringRulesIfNecessaryWithReason:(uint64_t)reason;
@end

@implementation _UISceneHostingEventDeferringHostComponent

- (void)setScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = _UISceneHostingEventDeferringHostComponent;
  [(FBSSceneComponent *)&v5 setScene:scene];
  if (self)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
  }
}

- (void)setMaintainHostFirstResponderWhenClientWantsKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  v5 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  hostScene = [(FBSSceneComponent *)self hostScene];
  identityToken = [hostScene identityToken];
  stringRepresentation = [identityToken stringRepresentation];
  if (keyboardCopy)
  {
    [v5 addIgnoredSceneIdentityTokenString:stringRepresentation];
  }

  else
  {
    [v5 removeIgnoredSceneIdentityTokenString:stringRepresentation];
  }

  hostScene2 = [(FBSSceneComponent *)self hostScene];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99___UISceneHostingEventDeferringHostComponent_setMaintainHostFirstResponderWhenClientWantsKeyboard___block_invoke;
  v10[3] = &__block_descriptor_33_e72_v16__0__FBSMutableSceneSettings__UISceneHostingEventDeferringSettings__8l;
  v11 = keyboardCopy;
  [hostScene2 updateSettingsWithBlock:v10];
}

- (BOOL)maintainHostFirstResponderWhenClientWantsKeyboard
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  settings = [hostScene settings];
  maintainHostFirstResponderWhenClientWantsKeyboard = [settings maintainHostFirstResponderWhenClientWantsKeyboard];

  return maintainHostFirstResponderWhenClientWantsKeyboard;
}

- (void)setRequestEventDeferralForAllFirstResponderChanges:(BOOL)changes
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __97___UISceneHostingEventDeferringHostComponent_setRequestEventDeferralForAllFirstResponderChanges___block_invoke;
  v5[3] = &__block_descriptor_33_e72_v16__0__FBSMutableSceneSettings__UISceneHostingEventDeferringSettings__8l;
  changesCopy = changes;
  [hostScene updateSettingsWithBlock:v5];
}

- (BOOL)requestEventDeferralForAllFirstResponderChanges
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  settings = [hostScene settings];
  requestEventDeferralForAllFirstResponderChanges = [settings requestEventDeferralForAllFirstResponderChanges];

  return requestEventDeferralForAllFirstResponderChanges;
}

- (void)configureEventDeferringRulesWithParentScene:(uint64_t)scene
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (scene)
  {
    WeakRetained = objc_loadWeakRetained((scene + 40));
    if (WeakRetained == v3)
    {
LABEL_24:

      goto LABEL_25;
    }

    hostScene = [scene hostScene];
    clientHandle = [hostScene clientHandle];
    if (![hostScene isActive] || !clientHandle)
    {

LABEL_23:
      goto LABEL_24;
    }

    identity = [clientHandle identity];
    isLocal = [identity isLocal];

    if ((isLocal & 1) == 0)
    {
      [(_UISceneHostingEventDeferringHostComponent *)scene tearDownEventDeferringRulesIfNecessaryWithReason:?];
      if (!v3)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel_configureEventDeferringRulesWithParentScene_ object:scene file:@"_UISceneHostingEventDeferringHostComponent.m" lineNumber:134 description:@"A valid parent scene is required to configure event deferring"];
      }

      if (([scene maintainHostFirstResponderWhenClientWantsKeyboard] & 1) == 0)
      {
        hostScene2 = [scene hostScene];
        uiSceneHostingController = [hostScene2 uiSceneHostingController];

        if (qword_1ED49AD10 != -1)
        {
          dispatch_once(&qword_1ED49AD10, &__block_literal_global_560);
        }

        if (_MergedGlobals_7_7 != 1 || (([uiSceneHostingController sceneViewController], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "parentViewController"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_opt_class(), v14 = v12, !v13) ? (v15 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v15 = 0) : (v15 = v14), sceneView = v15, v14, v14, v11, !sceneView))
        {
          sceneView = [uiSceneHostingController sceneView];
        }

        [sceneView becomeFirstResponder];
      }

      WeakRetained = objc_alloc_init(MEMORY[0x1E698E3F8]);
      hostScene = [scene hostScene];
      clientHandle2 = [hostScene clientHandle];
      processHandle = [clientHandle2 processHandle];
      v18 = [processHandle pid];

      [WeakRetained setPid:v18];
      identityToken = [hostScene identityToken];
      stringRepresentation = [identityToken stringRepresentation];

      v39 = stringRepresentation;
      v38 = [MEMORY[0x1E698E3A0] tokenForString:stringRepresentation];
      [WeakRetained setToken:?];
      keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
      v22 = [MEMORY[0x1E695DFD8] setWithObject:keyboardFocusEnvironment];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: begin deferring to hosted scene in %@", objc_opt_class(), scene, keyboardFocusEnvironment];
      hostScene3 = [scene hostScene];
      uiSceneHostingController2 = [hostScene3 uiSceneHostingController];
      sceneViewController = [uiSceneHostingController2 sceneViewController];

      _eventDeferringManager = [v3 _eventDeferringManager];
      v28 = [(_UIEventDeferringManager *)_eventDeferringManager beginRemoteEventDeferringInEnvironments:v22 forOwningInterfaceElement:sceneViewController toTarget:WeakRetained withReason:v23];
      v29 = *(scene + 32);
      *(scene + 32) = v28;

      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneHosting", &qword_1ED49AD18);
      if (*CategoryCachedImpl)
      {
        v32 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          log = v32;
          v33 = objc_opt_class();
          v34 = *(scene + 32);
          v37 = v33;
          v35 = [v34 description];
          *buf = 138412802;
          v42 = v33;
          v43 = 2048;
          sceneCopy = scene;
          v45 = 2112;
          v46 = v35;
          _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "<%@: %p> Deferring events with token %@", buf, 0x20u);
        }
      }

      objc_storeWeak((scene + 40), v3);

      goto LABEL_23;
    }
  }

LABEL_25:
}

- (void)tearDownEventDeferringRulesIfNecessaryWithReason:(uint64_t)reason
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (reason)
  {
    v4 = *(reason + 32);
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        (*(v5 + 16))(v5, *(reason + 32), v3);
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
          v12 = *(reason + 32);
          v13 = v11;
          v14 = [v12 description];
          v15 = 138412802;
          v16 = v11;
          v17 = 2048;
          reasonCopy = reason;
          v19 = 2112;
          v20 = v14;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "<%@: %p> Stopped deferring events with token %@", &v15, 0x20u);
        }
      }

      v8 = *(reason + 32);
      *(reason + 32) = 0;

      objc_storeWeak((reason + 40), 0);
    }
  }
}

- (void)configurePendingEventDeferringIfNecessary
{
  if (self && !*(self + 32))
  {
    WeakRetained = objc_loadWeakRetained((self + 48));

    if (WeakRetained)
    {
      v3 = objc_loadWeakRetained((self + 48));
      [(_UISceneHostingEventDeferringHostComponent *)self configureEventDeferringRulesWithParentScene:v3];

      objc_storeWeak((self + 48), 0);
    }

    else
    {
      *(self + 24) |= 1u;
    }
  }
}

- (void)severEventDeferringRules
{
  if (self && *(self + 32))
  {
    WeakRetained = objc_loadWeakRetained((self + 40));
    objc_storeWeak((self + 48), WeakRetained);

    [(_UISceneHostingEventDeferringHostComponent *)self tearDownEventDeferringRulesIfNecessaryWithReason:?];
  }
}

- (void)firstResponderDidChange:(id)change
{
  object = [change object];
  _windowHostingScene = [object _windowHostingScene];
  firstResponder = [object firstResponder];

  v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  handlingRemoteEvent = [v6 handlingRemoteEvent];

  if (firstResponder)
  {
    WeakRetained = objc_loadWeakRetained(&self->_eventDeferringParentScene);
    v9 = BSEqualObjects();

    if (!(handlingRemoteEvent & 1 | ((v9 & 1) == 0)))
    {
      [(_UISceneHostingEventDeferringHostComponent *)self severEventDeferringRules];
    }
  }
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v29 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v6 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = actionsCopy;
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
            hostScene = [(FBSSceneComponent *)self hostScene];
            _keyboardHostComponent = [hostScene _keyboardHostComponent];
            suppressKeyboardFocusRequests = [_keyboardHostComponent suppressKeyboardFocusRequests];

            if (suppressKeyboardFocusRequests)
            {
              [(_UISceneHostingEventDeferringHostComponent *)self severEventDeferringRules];
            }

            else
            {
              [(_UISceneHostingEventDeferringHostComponent *)self configurePendingEventDeferringIfNecessary];
              hostScene2 = [(FBSSceneComponent *)self hostScene];
              uiSceneHostingController = [hostScene2 uiSceneHostingController];
              sceneView = [uiSceneHostingController sceneView];
              _window = [sceneView _window];

              if (_window)
              {
                v20 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
                v21 = v20;
                if (v20)
                {
                  [(_UIRemoteKeyboards *)v20 performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:_window servicePID:0];
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

- (void)scene:(id)scene clientDidConnect:(id)connect
{
  if (*&self->_flags)
  {
    [(_UISceneHostingEventDeferringHostComponent *)self configurePendingEventDeferringIfNecessary];
    *&self->_flags &= ~1u;
  }
}

- (void)sceneWillDeactivate:(id)deactivate withContext:(id)context
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
    hostScene = [(FBSSceneComponent *)self hostScene];
    identityToken = [hostScene identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    [v3 removeIgnoredSceneIdentityTokenString:stringRepresentation];
  }

  v8.receiver = self;
  v8.super_class = _UISceneHostingEventDeferringHostComponent;
  [(FBSSceneComponent *)&v8 invalidate];
  if (self)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UIWindowFirstResponderDidChangeNotification" object:0];
  }
}

- (void)_scene:(id)_scene isMovingToParent:(id)parent
{
  _windowHostingScene = [parent _windowHostingScene];
  v6 = _windowHostingScene;
  if (_windowHostingScene)
  {
    if (self->_eventDeferringOwnershipToken || (*&self->_flags & 1) != 0)
    {
      [(_UISceneHostingEventDeferringHostComponent *)self configureEventDeferringRulesWithParentScene:_windowHostingScene];
      *&self->_flags &= ~1u;
    }

    else
    {
      objc_storeWeak(&self->_parentScenePendingEventDeferringRules, _windowHostingScene);
    }
  }

  else
  {
    [(_UISceneHostingEventDeferringHostComponent *)self tearDownEventDeferringRulesIfNecessaryWithReason:?];
  }
}

@end