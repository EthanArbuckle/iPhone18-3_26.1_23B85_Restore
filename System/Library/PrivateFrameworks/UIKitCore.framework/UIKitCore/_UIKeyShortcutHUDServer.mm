@interface _UIKeyShortcutHUDServer
+ (_UIKeyShortcutHUDServer)sharedHUDServer;
- (_UIKeyShortcutHUDServer)init;
- (_UIKeyShortcutHUDViewController)hudVC;
- (_UIKeyboardEventModifierListener)modifierKeyListener;
- (int64_t)hudPresentationState;
- (void)_addPresentationObserversIfNeeded;
- (void)_applicationWillResignActive:(id)a3;
- (void)_dismissHUDWithSelectedShortcut:(id)a3;
- (void)_hardwareKeyboardAvailabilityChanged:(id)a3;
- (void)_removePresentationObserversIfNeeded;
- (void)_sendResponse:(id)a3 withSession:(id)a4;
- (void)dismissHUDForConnection:(id)a3;
- (void)handleKeyboardEvent:(id)a3;
- (void)keyShortcutHUDViewControllerDidBeginTypeAheadSearch:(id)a3;
- (void)keyShortcutHUDWindowDidResignKey:(id)a3;
- (void)keyShortcutHUDWindowSceneDidResignKeyboardFocus:(id)a3;
- (void)modifierListener:(id)a3 didUpdateModifierFlag:(int64_t)a4;
- (void)presentHUDWithConfiguration:(id)a3 inWindowScene:(id)a4 forConnection:(id)a5 completionHandler:(id)a6;
- (void)serviceConnectionDidInvalidate:(id)a3;
@end

@implementation _UIKeyShortcutHUDServer

+ (_UIKeyShortcutHUDServer)sharedHUDServer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___UIKeyShortcutHUDServer_sharedHUDServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED49E728 != -1)
  {
    dispatch_once(&qword_1ED49E728, block);
  }

  v2 = _MergedGlobals_1149;

  return v2;
}

- (_UIKeyShortcutHUDServer)init
{
  v6.receiver = self;
  v6.super_class = _UIKeyShortcutHUDServer;
  v3 = [(_UIKeyShortcutHUDServer *)&v6 init];
  if (v3 && +[UIKeyShortcutHUDService _isOOPFeatureEnabled]&& (_UIApplicationProcessIsOverlayUI() & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:v3 file:@"_UIKeyShortcutHUDServer.m" lineNumber:138 description:@"Attempted to initialize a _UIKeyShortcutHUDServer object for an OOP HUD outside of OverlayUI!"];
  }

  return v3;
}

- (int64_t)hudPresentationState
{
  v3 = [(_UIKeyShortcutHUDServer *)self hudWindow];

  if (!v3)
  {
    return 0;
  }

  v4 = 2;
  if ((*&self->_flags & 2) != 0)
  {
    v4 = 3;
  }

  if (*&self->_flags)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (_UIKeyShortcutHUDViewController)hudVC
{
  v2 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  v3 = [v2 rootViewController];

  return v3;
}

- (void)handleKeyboardEvent:(id)a3
{
  v4 = a3;
  [(_UIKeyShortcutHUDServer *)self setLastKeyboardEvent:v4];
  v5 = [(_UIKeyShortcutHUDServer *)self modifierKeyListener];
  [v5 handleKeyboardEvent:v4];
}

- (_UIKeyboardEventModifierListener)modifierKeyListener
{
  modifierKeyListener = self->_modifierKeyListener;
  if (!modifierKeyListener)
  {
    v4 = objc_opt_new();
    v5 = self->_modifierKeyListener;
    self->_modifierKeyListener = v4;

    [(_UIKeyboardEventModifierListener *)self->_modifierKeyListener setDelegate:self];
    modifierKeyListener = self->_modifierKeyListener;
  }

  return modifierKeyListener;
}

- (void)modifierListener:(id)a3 didUpdateModifierFlag:(int64_t)a4
{
  v6 = a3;
  if (([(_UIKeyShortcutHUDServer *)self hudPresentationState]- 1) <= 1)
  {
    v7 = [v6 currentModifierFlags];
    v8 = [(_UIKeyShortcutHUDServer *)self hudVC];
    [v8 setHeldModifierFlags:v7];

    v9 = [(_UIKeyShortcutHUDServer *)self hudVC];
    v10 = [v9 configuration];
    v11 = [v10 presentedModifierFlag];

    if (v11 != a4)
    {
LABEL_11:
      v12 = self;
      v13 = 0;
      goto LABEL_12;
    }

    if ([v6 currentModifierFlags] == a4)
    {
      v12 = self;
      v13 = 1;
LABEL_12:
      [(_UIKeyShortcutHUDServer *)v12 setModifierKeyDownForHUDDismissal:v13];
      goto LABEL_13;
    }

    if (![v6 currentModifierFlags])
    {
      if ([(_UIKeyShortcutHUDServer *)self isModifierKeyDownForHUDDismissal])
      {
        v14 = [(_UIKeyShortcutHUDServer *)self hudVC];
        v15 = [v14 shouldDismissHUDForModifierKeyTap];

        if (v15)
        {
          v16 = _UIKeyShortcutHUDLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "Dismissing HUD due to modifier key tap", v17, 2u);
          }

          [(_UIKeyShortcutHUDServer *)self _dismissHUD];
        }
      }

      goto LABEL_11;
    }
  }

LABEL_13:
}

- (void)presentHUDWithConfiguration:(id)a3 inWindowScene:(id)a4 forConnection:(id)a5 completionHandler:(id)a6
{
  v72 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    [v55 handleFailureInMethod:a2 object:self file:@"_UIKeyShortcutHUDServer.m" lineNumber:226 description:@"Attempted to present a HUD with a nil configuration!"];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v56 = [MEMORY[0x1E696AAA8] currentHandler];
  [v56 handleFailureInMethod:a2 object:self file:@"_UIKeyShortcutHUDServer.m" lineNumber:227 description:@"Attempted to present a HUD into a nil window scene!"];

LABEL_3:
  if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled])
  {
    v15 = [v13 bundleIdentifier];
    IsSpringBoard = [v15 isEqualToString:@"com.apple.springboard"];
  }

  else
  {
    IsSpringBoard = _UIApplicationProcessIsSpringBoard();
  }

  v17 = [v11 clientTraits];
  [v17 setSystemApp:IsSpringBoard];

  if (v13)
  {
    [v13 bundleIdentifier];
  }

  else
  {
    _UIMainBundleIdentifier();
  }
  v62 = ;
  v18 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v71 = v62;
    _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "Server received presentation request for bundle id: %{public}@", buf, 0xCu);
  }

  v19 = objc_opt_new();
  v20 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  v21 = v20 == 0;

  if (!v21)
  {
    v22 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEFAULT, "Server rejected presentation request: already have a HUD up", buf, 2u);
    }

    [v19 setAccepted:0];
    v14[2](v14, v19);
    goto LABEL_37;
  }

  *&self->_flags |= 1u;
  [(_UIKeyShortcutHUDServer *)self _addPresentationObserversIfNeeded];
  v23 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "Server will accept presentation request", buf, 2u);
  }

  [v19 setAccepted:1];
  if (!+[UIKeyShortcutHUDService _isOOPFeatureEnabled])
  {
    v14[2](v14, v19);
  }

  v61 = +[UIWindow _applicationKeyWindow];
  v24 = objc_opt_new();
  [(_UIKeyShortcutHUDServer *)self setSession:v24];

  v25 = [(_UIKeyShortcutHUDServer *)self session];
  [v25 setKeyWindow:v61];

  v26 = [(_UIKeyShortcutHUDServer *)self session];
  [v26 setConnection:v13];

  [v13 addObserver:self];
  if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled]&& _UIApplicationProcessIsOverlayUI())
  {
    v27 = [v11 initialHeldModifierFlags];
    v28 = [(_UIKeyShortcutHUDServer *)self modifierKeyListener];
    [v28 setCurrentModifierFlags:v27];
  }

  v29 = objc_opt_new();
  [v29 setDelegate:self];
  [v29 setConfiguration:v11];
  v30 = +[UIKeyShortcutHUDService sharedHUDService];
  v31 = [v30 metricsProvider];
  [v29 setMetricsProvider:v31];

  v32 = [(_UIKeyShortcutHUDServer *)self modifierKeyListener];
  [v29 setHeldModifierFlags:{objc_msgSend(v32, "currentModifierFlags")}];

  v33 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [v29 metricsProvider];
    *buf = 138543362;
    v71 = v34;
    _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_DEFAULT, "HUD metrics provider: %{public}@", buf, 0xCu);
  }

  v35 = [[_UIKeyShortcutHUDWindow alloc] initWithWindowScene:v12];
  [(_UIKeyShortcutHUDServer *)self setHudWindow:v35];

  v36 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  [v36 setRootViewController:v29];

  v37 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  [v37 setDelegate:self];

  v38 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  [v29 setHudWindow:v38];

  v39 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  [v39 makeKeyAndVisible];

  [v29 setupPassthroughScrollInteraction];
  v40 = [MEMORY[0x1E696AD88] defaultCenter];
  v41 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  [v40 postNotificationName:@"UIKeyShortcutHUDDidPresentNotification" object:v41];

  v42 = [v11 clientTraits];
  if (![v42 isSystemApp])
  {
    goto LABEL_27;
  }

  v43 = +[UIKeyShortcutHUDService _isOOPFeatureEnabled];

  if (!v43)
  {
    v42 = +[UIKeyShortcutHUDService sharedHUDService];
    [v42 dismissAllNonSystemHUDs];
LABEL_27:
  }

  if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled])
  {
    getSBSKeyboardFocusServiceClass();
    v59 = objc_opt_new();
    v44 = [v12 _FBSScene];
    v60 = [v44 identityToken];

    v58 = getpid();
    v45 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v45, OS_LOG_TYPE_DEFAULT, "Server will request keyboard focus to OverlayUI", buf, 2u);
    }

    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __101___UIKeyShortcutHUDServer_presentHUDWithConfiguration_inWindowScene_forConnection_completionHandler___block_invoke;
    v65[3] = &unk_1E7107E48;
    v67 = v14;
    v66 = v19;
    [v59 requestKeyboardFocusForSceneIdentity:v60 processID:v58 completion:v65];
    v46 = [v11 clientTraits];
    v47 = [v46 isSystemApp];

    if (v47)
    {
      v48 = _UIKeyShortcutHUDLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v48, OS_LOG_TYPE_DEFAULT, "Server requesting systemKeyCommandOverlay focus to OverlayUI", buf, 2u);
      }

      v57 = [getSBSKeyboardFocusServiceClass() systemKeyCommandOverlayEnvironment];
      v68 = v57;
      v49 = MEMORY[0x1E698E3A0];
      v50 = [v60 stringRepresentation];
      v51 = [v49 tokenForString:v50];
      v69 = v51;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];

      v53 = [v59 applyAdditionalDeferringRules:v52 whenSceneHasKeyboardFocus:v60 processID:v58];
      [(_UIKeyShortcutHUDServer *)self setSystemKeyCommandOverlayRulesToken:v53];
    }
  }

  _UIFocusBehaviorSetOverrideFocusSystemEnabled(1, v12, self);
  v54 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  _UIGameControllerNotifyRelevantSystemUIWillShow(v12, v54);

  objc_initWeak(buf, self);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __101___UIKeyShortcutHUDServer_presentHUDWithConfiguration_inWindowScene_forConnection_completionHandler___block_invoke_25;
  v63[3] = &unk_1E70F5A28;
  objc_copyWeak(&v64, buf);
  [v29 setHidden:0 completionHandler:v63];
  objc_destroyWeak(&v64);
  objc_destroyWeak(buf);

LABEL_37:
}

- (void)dismissHUDForConnection:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyShortcutHUDServer *)self session];
  v6 = [v5 connection];

  if (v6 == v4)
  {
    v7 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Dismissing HUD due to a dismissal request from the client", v8, 2u);
    }

    [(_UIKeyShortcutHUDServer *)self _dismissHUD];
  }
}

- (void)_dismissHUDWithSelectedShortcut:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v4 = [(_UIKeyShortcutHUDServer *)self hudPresentationState];
  if (v4 == 1)
  {
    flags = *&self->_flags & 0xFE;
    *&self->_flags = flags;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    flags = self->_flags;
  }

  *&self->_flags = flags | 2;
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v6 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v25 = _UIInternalPreference_KeyShortcutHUDEnhancedLogging;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_KeyShortcutHUDEnhancedLogging)
    {
      while (v6 >= v25)
      {
        _UIInternalPreferenceSync(v6, &_UIInternalPreference_KeyShortcutHUDEnhancedLogging, @"KeyShortcutHUDEnhancedLogging", _UIInternalPreferenceUpdateBool);
        v25 = _UIInternalPreference_KeyShortcutHUDEnhancedLogging;
        if (v6 == _UIInternalPreference_KeyShortcutHUDEnhancedLogging)
        {
          goto LABEL_8;
        }
      }

      if (byte_1EA95E20C)
      {
        v26 = _UIKeyShortcutHUDLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v29 uiKeyCommand];
          v28 = [MEMORY[0x1E696AF00] callStackSymbols];
          *location = 138543618;
          *&location[4] = v27;
          v44 = 2114;
          v45 = v28;
          _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_DEFAULT, "HUD is dismissing; selectedKeyCommand=%{public}@, callStack=%{public}@", location, 0x16u);
        }
      }
    }
  }

LABEL_8:
  v7 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  v8 = [v7 windowScene];
  _UIFocusBehaviorSetOverrideFocusSystemEnabled(0, v8, self);

  [(_UIKeyShortcutHUDServer *)self setModifierKeyDownForHUDDismissal:0];
  v9 = dispatch_group_create();
  v10 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  v11 = [(_UIKeyShortcutHUDServer *)self session];
  v12 = objc_opt_new();
  v13 = [v29 uiKeyCommand];
  [v12 setKeyCommand:v13];

  if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled](UIKeyShortcutHUDService, "_isOOPFeatureEnabled") && [v29 isPasteShortcut])
  {
    dispatch_group_enter(v9);
    v14 = +[UIPasteboard generalPasteboard];
    v15 = [v11 connection];
    v16 = [v15 pid];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __59___UIKeyShortcutHUDServer__dismissHUDWithSelectedShortcut___block_invoke;
    v40[3] = &unk_1E710CA58;
    v41 = v12;
    v42 = v9;
    [v14 _requestSecurePasteAuthenticationMessageWithContext:0x5A4A97C3218CE65BLL forClientVersionedPID:v16 completionBlock:v40];
  }

  dispatch_group_enter(v9);
  objc_initWeak(location, self);
  v17 = [(_UIKeyShortcutHUDServer *)self hudVC];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __59___UIKeyShortcutHUDServer__dismissHUDWithSelectedShortcut___block_invoke_3;
  v34[3] = &unk_1E70F9098;
  objc_copyWeak(&v39, location);
  v18 = v11;
  v35 = v18;
  v19 = v10;
  v36 = v19;
  v20 = v12;
  v37 = v20;
  v21 = v9;
  v38 = v21;
  [v17 setHidden:1 completionHandler:v34];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___UIKeyShortcutHUDServer__dismissHUDWithSelectedShortcut___block_invoke_4;
  block[3] = &unk_1E70F6B40;
  block[4] = self;
  v31 = v20;
  v32 = v18;
  v33 = v19;
  v22 = v19;
  v23 = v18;
  v24 = v20;
  dispatch_group_notify(v21, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v39);
  objc_destroyWeak(location);

LABEL_12:
  [(_UIKeyShortcutHUDServer *)self _removePresentationObserversIfNeeded];
}

- (void)_sendResponse:(id)a3 withSession:(id)a4
{
  v9 = a4;
  v6 = a3;
  if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled])
  {
    v7 = [[_UIOKeyShortcutHUDDismissalAction alloc] initWithResponse:v6];

    v8 = [v9 connection];
    [v8 sendAction:v7];

    v6 = [v9 connection];
    [v6 removeObserver:self];
  }

  else
  {
    v7 = +[UIKeyShortcutHUDService sharedHUDService];
    [(_UIOKeyShortcutHUDDismissalAction *)v7 keyShortcutHUDDidDismissWithResponse:v6 toOverlayService:0];
  }
}

- (void)keyShortcutHUDViewControllerDidBeginTypeAheadSearch:(id)a3
{
  v4 = [(_UIKeyShortcutHUDServer *)self lastKeyboardEvent];
  v5 = [v4 _cloneEvent];

  v6 = [(_UIKeyShortcutHUDServer *)self hudWindow];

  if (v6 && v5)
  {
    v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79___UIKeyShortcutHUDServer_keyShortcutHUDViewControllerDidBeginTypeAheadSearch___block_invoke;
    v8[3] = &unk_1E70F3590;
    v9 = v5;
    [v7 performBlock:v8];
  }
}

- (void)keyShortcutHUDWindowDidResignKey:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyShortcutHUDServer *)self hudWindow];

  if (v5 == v4)
  {
    v6 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Dismissing HUD due to its window resigning key", v7, 2u);
    }

    [(_UIKeyShortcutHUDServer *)self _dismissHUD];
  }
}

- (void)keyShortcutHUDWindowSceneDidResignKeyboardFocus:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyShortcutHUDServer *)self hudWindow];

  if (v5 == v4)
  {
    v6 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Dismissing HUD due to its window scene losing keyboard focus", v7, 2u);
    }

    [(_UIKeyShortcutHUDServer *)self _dismissHUD];
  }
}

- (void)serviceConnectionDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Dismissing HUD due to invalidated connection from remote client", v6, 2u);
  }

  [(_UIKeyShortcutHUDServer *)self dismissHUDForConnection:v4];
}

- (void)_addPresentationObserversIfNeeded
{
  if ((*&self->_flags & 4) == 0)
  {
    *&self->_flags |= 4u;
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel__applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:UIApp];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel__hardwareKeyboardAvailabilityChanged_ name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];
  }
}

- (void)_removePresentationObserversIfNeeded
{
  if ((*&self->_flags & 4) != 0)
  {
    *&self->_flags &= ~4u;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:@"UIApplicationWillResignActiveNotification" object:UIApp];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];
  }
}

- (void)_applicationWillResignActive:(id)a3
{
  v4 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing HUD due to application resigning active", v6, 2u);
  }

  [(_UIKeyShortcutHUDServer *)self _dismissHUD];
  v5 = [(_UIKeyShortcutHUDServer *)self modifierKeyListener];
  [v5 setCurrentModifierFlags:0];
}

- (void)_hardwareKeyboardAvailabilityChanged:(id)a3
{
  v4 = +[UIDevice currentDevice];
  v5 = [v4 _isHardwareKeyboardAvailable];

  if ((v5 & 1) == 0)
  {
    v6 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Dismissing HUD due to hardware keyboard being disconnected", v7, 2u);
    }

    [(_UIKeyShortcutHUDServer *)self _dismissHUD];
  }
}

@end