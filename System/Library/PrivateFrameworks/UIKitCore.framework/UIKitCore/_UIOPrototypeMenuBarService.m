@interface _UIOPrototypeMenuBarService
+ (id)sharedService;
- (BOOL)_shouldButtonsOnScenesBeEnabled;
- (BOOL)isUserAffordanceToShowPrototypeMenuBarAllowedForProcessForWindow:(id)a3;
- (_UIOPrototypeMenuBarService)init;
- (_UIOverlayService)overlayService;
- (void)_addButtonToWindowScene:(id)a3;
- (void)_addButtonsToExistingWindowScenes;
- (void)_baseMainMenuDidUpdate:(id)a3;
- (void)_mainMenuManager:(id)a3 userDidInvokeCommand:(id)a4;
- (void)_removeAllSceneButtons;
- (void)_removeButtonFromWindowScene:(id)a3;
- (void)_sceneDidDisconnect:(id)a3;
- (void)_sceneWillConnect:(id)a3;
- (void)_setMenuBarPresented:(BOOL)a3;
- (void)_updateExistingButtonsOnWindowScenes;
- (void)beginAddingSummonPrototypeMenuBarButtonsToScenesIfNeeded;
- (void)overlayServiceDidInvalidate:(id)a3;
- (void)prototypeMenuBarDidDismissForOverlayService:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)showPrototypeMenuBar;
- (void)togglePrototypeMenuBar;
@end

@implementation _UIOPrototypeMenuBarService

+ (id)sharedService
{
  if (qword_1ED4A0FB0 != -1)
  {
    dispatch_once(&qword_1ED4A0FB0, &__block_literal_global_566);
  }

  v3 = qword_1ED4A0FA8;

  return v3;
}

- (_UIOPrototypeMenuBarService)init
{
  v3.receiver = self;
  v3.super_class = _UIOPrototypeMenuBarService;
  result = [(_UIOPrototypeMenuBarService *)&v3 init];
  if (result)
  {
    result->_menuBarPresented = 0;
  }

  return result;
}

- (void)beginAddingSummonPrototypeMenuBarButtonsToScenesIfNeeded
{
  v3 = +[_UIMenuBarSettingsDomain rootSettings];
  [v3 addKeyObserver:self];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__sceneWillConnect_ name:@"UISceneWillConnectNotification" object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__sceneDidDisconnect_ name:@"UISceneDidDisconnectNotification" object:0];
}

- (BOOL)_shouldButtonsOnScenesBeEnabled
{
  v2 = _UIIsPrototypeMenuBarEnabled();
  if (v2)
  {
    v3 = +[_UIMenuBarSettingsDomain rootSettings];
    v4 = [v3 isShowPrototypeMenuBarButtonEnabled];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (_UIOverlayService)overlayService
{
  overlayService = self->_overlayService;
  if (!overlayService)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45___UIOPrototypeMenuBarService_overlayService__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    if (overlayService_onceToken != -1)
    {
      dispatch_once(&overlayService_onceToken, block);
    }

    overlayService = self->_overlayService;
  }

  return overlayService;
}

- (void)_setMenuBarPresented:(BOOL)a3
{
  if (self->_menuBarPresented != a3)
  {
    self->_menuBarPresented = a3;
    [(_UIOPrototypeMenuBarService *)self _updateExistingButtonsOnWindowScenes];
    menuBarPresented = self->_menuBarPresented;
    v6 = +[_UIMainMenuManager sharedManager];
    v7 = v6;
    if (menuBarPresented)
    {
      [v6 addMainMenuObserver:self];
    }

    else
    {
      [v6 removeMainMenuObserver:self];
    }
  }
}

- (BOOL)isUserAffordanceToShowPrototypeMenuBarAllowedForProcessForWindow:(id)a3
{
  v3 = a3;
  if (qword_1ED4A0FB8 != -1)
  {
    dispatch_once(&qword_1ED4A0FB8, &__block_literal_global_5_10);
  }

  v4 = 0;
  if (v3 && (_MergedGlobals_1303 & 1) == 0)
  {
    v5 = [v3 _windowHostingScene];
    v6 = [v5 _sceneSessionRoleIsCarPlayOrNonInteractiveExternal];

    if (v6 & 1) != 0 || ([v3 _isHostedInAnotherProcess])
    {
      v4 = 0;
    }

    else
    {
      [v3 frame];
      v9 = vabdd_f64(v7, *(MEMORY[0x1E695F060] + 8)) >= 0.00000011920929;
      v4 = vabdd_f64(v8, *MEMORY[0x1E695F060]) >= 0.00000011920929 || v9;
    }
  }

  return v4;
}

- (void)showPrototypeMenuBar
{
  if (!self->_menuBarPresented)
  {
    [(_UIOPrototypeMenuBarService *)self togglePrototypeMenuBar];
  }
}

- (void)togglePrototypeMenuBar
{
  if (_UIIsPrototypeMenuBarEnabled())
  {
    if (self->_menuBarPresented)
    {
      v3 = +[_UIODismissPrototypeMenuBarAction action];
      [(_UIOPrototypeMenuBarService *)self _setMenuBarPresented:0];
    }

    else
    {
      v4 = objc_opt_new();
      v5 = _UIMainBundleIdentifier();
      v6 = [UIImage _applicationIconImageForBundleIdentifier:v5 format:5 scale:2.0];
      [v4 setClientAppIcon:v6];

      v7 = [_UIOShowPrototypeMenuBarAction alloc];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53___UIOPrototypeMenuBarService_togglePrototypeMenuBar__block_invoke;
      v9[3] = &unk_1E70F5AC0;
      v9[4] = self;
      v3 = [(_UIOShowPrototypeMenuBarAction *)v7 initWithConfiguration:v4 handler:v9];
    }

    v8 = [(_UIOPrototypeMenuBarService *)self overlayService];
    [v8 sendOverlayAction:v3];
  }
}

- (void)prototypeMenuBarDidDismissForOverlayService:(id)a3
{
  if (self->_overlayService == a3)
  {
    [(_UIOPrototypeMenuBarService *)self _setMenuBarPresented:0];
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = a3;
  v6 = +[_UIMenuBarSettingsDomain rootSettings];

  if (v6 == v5)
  {
    if ([(_UIOPrototypeMenuBarService *)self _shouldButtonsOnScenesBeEnabled])
    {

      [(_UIOPrototypeMenuBarService *)self _addButtonsToExistingWindowScenes];
    }

    else
    {

      [(_UIOPrototypeMenuBarService *)self _removeAllSceneButtons];
    }
  }
}

- (void)overlayServiceDidInvalidate:(id)a3
{
  if (self->_overlayService == a3)
  {
    [(_UIOPrototypeMenuBarService *)self _setMenuBarPresented:0];
  }
}

- (void)_baseMainMenuDidUpdate:(id)a3
{
  if (self->_menuBarPresented)
  {
    v5 = +[_UIBaseMenuDidInvalidateNotificationAction action];
    [(_UIOverlayService *)self->_overlayService sendOverlayAction:v5];
  }
}

- (void)_mainMenuManager:(id)a3 userDidInvokeCommand:(id)a4
{
  if (self->_menuBarPresented)
  {
    v6 = a4;
    v7 = [[_UIMainMenuCommandInvocationNotificationAction alloc] initWithCommandInvocationNotification:v6];

    [(_UIOverlayService *)self->_overlayService sendOverlayAction:v7];
  }
}

- (void)_sceneWillConnect:(id)a3
{
  v6 = [a3 object];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(_UIOPrototypeMenuBarService *)self _addButtonToWindowScene:v6];
  }
}

- (void)_addButtonToWindowScene:(id)a3
{
  objc_initWeak(&location, a3);
  v4 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___UIOPrototypeMenuBarService__addButtonToWindowScene___block_invoke;
  block[3] = &unk_1E70F2F80;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_updateExistingButtonsOnWindowScenes
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMapTable *)self->_summonButtonWindows objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setMenuBarPresented:self->_menuBarPresented];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_addButtonsToExistingWindowScenes
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [UIApp connectedScenes];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [(_UIOPrototypeMenuBarService *)self _addButtonToWindowScene:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_removeButtonFromWindowScene:(id)a3
{
  v6 = a3;
  v4 = [(NSMapTable *)self->_summonButtonWindows objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 setWindowScene:0];
    [(NSMapTable *)self->_summonButtonWindows removeObjectForKey:v6];
  }
}

- (void)_removeAllSceneButtons
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(NSMapTable *)self->_summonButtonWindows count])
  {
    v3 = NSAllMapTableKeys(self->_summonButtonWindows);
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(_UIOPrototypeMenuBarService *)self _removeButtonFromWindowScene:*(*(&v8 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)_sceneDidDisconnect:(id)a3
{
  v6 = [a3 object];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(_UIOPrototypeMenuBarService *)self _removeButtonFromWindowScene:v6];
  }
}

@end