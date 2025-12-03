@interface _UIKeyShortcutHUDServer
+ (_UIKeyShortcutHUDServer)sharedHUDServer;
- (_UIKeyShortcutHUDServer)init;
- (_UIKeyShortcutHUDViewController)hudVC;
- (_UIKeyboardEventModifierListener)modifierKeyListener;
- (int64_t)hudPresentationState;
- (void)_addPresentationObserversIfNeeded;
- (void)_applicationWillResignActive:(id)active;
- (void)_dismissHUDWithSelectedShortcut:(id)shortcut;
- (void)_hardwareKeyboardAvailabilityChanged:(id)changed;
- (void)_removePresentationObserversIfNeeded;
- (void)_sendResponse:(id)response withSession:(id)session;
- (void)dismissHUDForConnection:(id)connection;
- (void)handleKeyboardEvent:(id)event;
- (void)keyShortcutHUDViewControllerDidBeginTypeAheadSearch:(id)search;
- (void)keyShortcutHUDWindowDidResignKey:(id)key;
- (void)keyShortcutHUDWindowSceneDidResignKeyboardFocus:(id)focus;
- (void)modifierListener:(id)listener didUpdateModifierFlag:(int64_t)flag;
- (void)presentHUDWithConfiguration:(id)configuration inWindowScene:(id)scene forConnection:(id)connection completionHandler:(id)handler;
- (void)serviceConnectionDidInvalidate:(id)invalidate;
@end

@implementation _UIKeyShortcutHUDServer

+ (_UIKeyShortcutHUDServer)sharedHUDServer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___UIKeyShortcutHUDServer_sharedHUDServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v3 file:@"_UIKeyShortcutHUDServer.m" lineNumber:138 description:@"Attempted to initialize a _UIKeyShortcutHUDServer object for an OOP HUD outside of OverlayUI!"];
  }

  return v3;
}

- (int64_t)hudPresentationState
{
  hudWindow = [(_UIKeyShortcutHUDServer *)self hudWindow];

  if (!hudWindow)
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
  hudWindow = [(_UIKeyShortcutHUDServer *)self hudWindow];
  rootViewController = [hudWindow rootViewController];

  return rootViewController;
}

- (void)handleKeyboardEvent:(id)event
{
  eventCopy = event;
  [(_UIKeyShortcutHUDServer *)self setLastKeyboardEvent:eventCopy];
  modifierKeyListener = [(_UIKeyShortcutHUDServer *)self modifierKeyListener];
  [modifierKeyListener handleKeyboardEvent:eventCopy];
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

- (void)modifierListener:(id)listener didUpdateModifierFlag:(int64_t)flag
{
  listenerCopy = listener;
  if (([(_UIKeyShortcutHUDServer *)self hudPresentationState]- 1) <= 1)
  {
    currentModifierFlags = [listenerCopy currentModifierFlags];
    hudVC = [(_UIKeyShortcutHUDServer *)self hudVC];
    [hudVC setHeldModifierFlags:currentModifierFlags];

    hudVC2 = [(_UIKeyShortcutHUDServer *)self hudVC];
    configuration = [hudVC2 configuration];
    presentedModifierFlag = [configuration presentedModifierFlag];

    if (presentedModifierFlag != flag)
    {
LABEL_11:
      selfCopy2 = self;
      v13 = 0;
      goto LABEL_12;
    }

    if ([listenerCopy currentModifierFlags] == flag)
    {
      selfCopy2 = self;
      v13 = 1;
LABEL_12:
      [(_UIKeyShortcutHUDServer *)selfCopy2 setModifierKeyDownForHUDDismissal:v13];
      goto LABEL_13;
    }

    if (![listenerCopy currentModifierFlags])
    {
      if ([(_UIKeyShortcutHUDServer *)self isModifierKeyDownForHUDDismissal])
      {
        hudVC3 = [(_UIKeyShortcutHUDServer *)self hudVC];
        shouldDismissHUDForModifierKeyTap = [hudVC3 shouldDismissHUDForModifierKeyTap];

        if (shouldDismissHUDForModifierKeyTap)
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

- (void)presentHUDWithConfiguration:(id)configuration inWindowScene:(id)scene forConnection:(id)connection completionHandler:(id)handler
{
  v72 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  sceneCopy = scene;
  connectionCopy = connection;
  handlerCopy = handler;
  if (configurationCopy)
  {
    if (sceneCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKeyShortcutHUDServer.m" lineNumber:226 description:@"Attempted to present a HUD with a nil configuration!"];

    if (sceneCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIKeyShortcutHUDServer.m" lineNumber:227 description:@"Attempted to present a HUD into a nil window scene!"];

LABEL_3:
  if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled])
  {
    bundleIdentifier = [connectionCopy bundleIdentifier];
    IsSpringBoard = [bundleIdentifier isEqualToString:@"com.apple.springboard"];
  }

  else
  {
    IsSpringBoard = _UIApplicationProcessIsSpringBoard();
  }

  clientTraits = [configurationCopy clientTraits];
  [clientTraits setSystemApp:IsSpringBoard];

  if (connectionCopy)
  {
    [connectionCopy bundleIdentifier];
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
  hudWindow = [(_UIKeyShortcutHUDServer *)self hudWindow];
  v21 = hudWindow == 0;

  if (!v21)
  {
    v22 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEFAULT, "Server rejected presentation request: already have a HUD up", buf, 2u);
    }

    [v19 setAccepted:0];
    handlerCopy[2](handlerCopy, v19);
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
    handlerCopy[2](handlerCopy, v19);
  }

  v61 = +[UIWindow _applicationKeyWindow];
  v24 = objc_opt_new();
  [(_UIKeyShortcutHUDServer *)self setSession:v24];

  session = [(_UIKeyShortcutHUDServer *)self session];
  [session setKeyWindow:v61];

  session2 = [(_UIKeyShortcutHUDServer *)self session];
  [session2 setConnection:connectionCopy];

  [connectionCopy addObserver:self];
  if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled]&& _UIApplicationProcessIsOverlayUI())
  {
    initialHeldModifierFlags = [configurationCopy initialHeldModifierFlags];
    modifierKeyListener = [(_UIKeyShortcutHUDServer *)self modifierKeyListener];
    [modifierKeyListener setCurrentModifierFlags:initialHeldModifierFlags];
  }

  v29 = objc_opt_new();
  [v29 setDelegate:self];
  [v29 setConfiguration:configurationCopy];
  v30 = +[UIKeyShortcutHUDService sharedHUDService];
  metricsProvider = [v30 metricsProvider];
  [v29 setMetricsProvider:metricsProvider];

  modifierKeyListener2 = [(_UIKeyShortcutHUDServer *)self modifierKeyListener];
  [v29 setHeldModifierFlags:{objc_msgSend(modifierKeyListener2, "currentModifierFlags")}];

  v33 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    metricsProvider2 = [v29 metricsProvider];
    *buf = 138543362;
    v71 = metricsProvider2;
    _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_DEFAULT, "HUD metrics provider: %{public}@", buf, 0xCu);
  }

  v35 = [[_UIKeyShortcutHUDWindow alloc] initWithWindowScene:sceneCopy];
  [(_UIKeyShortcutHUDServer *)self setHudWindow:v35];

  hudWindow2 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  [hudWindow2 setRootViewController:v29];

  hudWindow3 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  [hudWindow3 setDelegate:self];

  hudWindow4 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  [v29 setHudWindow:hudWindow4];

  hudWindow5 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  [hudWindow5 makeKeyAndVisible];

  [v29 setupPassthroughScrollInteraction];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  hudWindow6 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  [defaultCenter postNotificationName:@"UIKeyShortcutHUDDidPresentNotification" object:hudWindow6];

  clientTraits2 = [configurationCopy clientTraits];
  if (![clientTraits2 isSystemApp])
  {
    goto LABEL_27;
  }

  v43 = +[UIKeyShortcutHUDService _isOOPFeatureEnabled];

  if (!v43)
  {
    clientTraits2 = +[UIKeyShortcutHUDService sharedHUDService];
    [clientTraits2 dismissAllNonSystemHUDs];
LABEL_27:
  }

  if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled])
  {
    getSBSKeyboardFocusServiceClass();
    v59 = objc_opt_new();
    _FBSScene = [sceneCopy _FBSScene];
    identityToken = [_FBSScene identityToken];

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
    v67 = handlerCopy;
    v66 = v19;
    [v59 requestKeyboardFocusForSceneIdentity:identityToken processID:v58 completion:v65];
    clientTraits3 = [configurationCopy clientTraits];
    isSystemApp = [clientTraits3 isSystemApp];

    if (isSystemApp)
    {
      v48 = _UIKeyShortcutHUDLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v48, OS_LOG_TYPE_DEFAULT, "Server requesting systemKeyCommandOverlay focus to OverlayUI", buf, 2u);
      }

      systemKeyCommandOverlayEnvironment = [getSBSKeyboardFocusServiceClass() systemKeyCommandOverlayEnvironment];
      v68 = systemKeyCommandOverlayEnvironment;
      v49 = MEMORY[0x1E698E3A0];
      stringRepresentation = [identityToken stringRepresentation];
      v51 = [v49 tokenForString:stringRepresentation];
      v69 = v51;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];

      v53 = [v59 applyAdditionalDeferringRules:v52 whenSceneHasKeyboardFocus:identityToken processID:v58];
      [(_UIKeyShortcutHUDServer *)self setSystemKeyCommandOverlayRulesToken:v53];
    }
  }

  _UIFocusBehaviorSetOverrideFocusSystemEnabled(1, sceneCopy, self);
  hudWindow7 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  _UIGameControllerNotifyRelevantSystemUIWillShow(sceneCopy, hudWindow7);

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

- (void)dismissHUDForConnection:(id)connection
{
  connectionCopy = connection;
  session = [(_UIKeyShortcutHUDServer *)self session];
  connection = [session connection];

  if (connection == connectionCopy)
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

- (void)_dismissHUDWithSelectedShortcut:(id)shortcut
{
  v46 = *MEMORY[0x1E69E9840];
  shortcutCopy = shortcut;
  hudPresentationState = [(_UIKeyShortcutHUDServer *)self hudPresentationState];
  if (hudPresentationState == 1)
  {
    flags = *&self->_flags & 0xFE;
    *&self->_flags = flags;
  }

  else
  {
    if (hudPresentationState != 2)
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
          uiKeyCommand = [shortcutCopy uiKeyCommand];
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          *location = 138543618;
          *&location[4] = uiKeyCommand;
          v44 = 2114;
          v45 = callStackSymbols;
          _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_DEFAULT, "HUD is dismissing; selectedKeyCommand=%{public}@, callStack=%{public}@", location, 0x16u);
        }
      }
    }
  }

LABEL_8:
  hudWindow = [(_UIKeyShortcutHUDServer *)self hudWindow];
  windowScene = [hudWindow windowScene];
  _UIFocusBehaviorSetOverrideFocusSystemEnabled(0, windowScene, self);

  [(_UIKeyShortcutHUDServer *)self setModifierKeyDownForHUDDismissal:0];
  v9 = dispatch_group_create();
  hudWindow2 = [(_UIKeyShortcutHUDServer *)self hudWindow];
  session = [(_UIKeyShortcutHUDServer *)self session];
  v12 = objc_opt_new();
  uiKeyCommand2 = [shortcutCopy uiKeyCommand];
  [v12 setKeyCommand:uiKeyCommand2];

  if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled](UIKeyShortcutHUDService, "_isOOPFeatureEnabled") && [shortcutCopy isPasteShortcut])
  {
    dispatch_group_enter(v9);
    v14 = +[UIPasteboard generalPasteboard];
    connection = [session connection];
    v16 = [connection pid];
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
  hudVC = [(_UIKeyShortcutHUDServer *)self hudVC];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __59___UIKeyShortcutHUDServer__dismissHUDWithSelectedShortcut___block_invoke_3;
  v34[3] = &unk_1E70F9098;
  objc_copyWeak(&v39, location);
  v18 = session;
  v35 = v18;
  v19 = hudWindow2;
  v36 = v19;
  v20 = v12;
  v37 = v20;
  v21 = v9;
  v38 = v21;
  [hudVC setHidden:1 completionHandler:v34];

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

- (void)_sendResponse:(id)response withSession:(id)session
{
  sessionCopy = session;
  responseCopy = response;
  if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled])
  {
    v7 = [[_UIOKeyShortcutHUDDismissalAction alloc] initWithResponse:responseCopy];

    connection = [sessionCopy connection];
    [connection sendAction:v7];

    responseCopy = [sessionCopy connection];
    [responseCopy removeObserver:self];
  }

  else
  {
    v7 = +[UIKeyShortcutHUDService sharedHUDService];
    [(_UIOKeyShortcutHUDDismissalAction *)v7 keyShortcutHUDDidDismissWithResponse:responseCopy toOverlayService:0];
  }
}

- (void)keyShortcutHUDViewControllerDidBeginTypeAheadSearch:(id)search
{
  lastKeyboardEvent = [(_UIKeyShortcutHUDServer *)self lastKeyboardEvent];
  _cloneEvent = [lastKeyboardEvent _cloneEvent];

  hudWindow = [(_UIKeyShortcutHUDServer *)self hudWindow];

  if (hudWindow && _cloneEvent)
  {
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79___UIKeyShortcutHUDServer_keyShortcutHUDViewControllerDidBeginTypeAheadSearch___block_invoke;
    v8[3] = &unk_1E70F3590;
    v9 = _cloneEvent;
    [mainRunLoop performBlock:v8];
  }
}

- (void)keyShortcutHUDWindowDidResignKey:(id)key
{
  keyCopy = key;
  hudWindow = [(_UIKeyShortcutHUDServer *)self hudWindow];

  if (hudWindow == keyCopy)
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

- (void)keyShortcutHUDWindowSceneDidResignKeyboardFocus:(id)focus
{
  focusCopy = focus;
  hudWindow = [(_UIKeyShortcutHUDServer *)self hudWindow];

  if (hudWindow == focusCopy)
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

- (void)serviceConnectionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v5 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Dismissing HUD due to invalidated connection from remote client", v6, 2u);
  }

  [(_UIKeyShortcutHUDServer *)self dismissHUDForConnection:invalidateCopy];
}

- (void)_addPresentationObserversIfNeeded
{
  if ((*&self->_flags & 4) == 0)
  {
    *&self->_flags |= 4u;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:UIApp];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__hardwareKeyboardAvailabilityChanged_ name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];
  }
}

- (void)_removePresentationObserversIfNeeded
{
  if ((*&self->_flags & 4) != 0)
  {
    *&self->_flags &= ~4u;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UIApplicationWillResignActiveNotification" object:UIApp];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];
  }
}

- (void)_applicationWillResignActive:(id)active
{
  v4 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing HUD due to application resigning active", v6, 2u);
  }

  [(_UIKeyShortcutHUDServer *)self _dismissHUD];
  modifierKeyListener = [(_UIKeyShortcutHUDServer *)self modifierKeyListener];
  [modifierKeyListener setCurrentModifierFlags:0];
}

- (void)_hardwareKeyboardAvailabilityChanged:(id)changed
{
  v4 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v4 _isHardwareKeyboardAvailable];

  if ((_isHardwareKeyboardAvailable & 1) == 0)
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