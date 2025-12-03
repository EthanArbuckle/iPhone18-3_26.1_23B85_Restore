@interface _UIRemoteKeyboards
+ (BOOL)enabled;
+ (BOOL)useSystemService;
+ (BOOL)wantsUnassociatedWindowSceneForKeyboardWindow;
+ (id)createArbiterConnection;
+ (id)keyboardWindowSceneForScreen:(id)screen create:(BOOL)create;
+ (id)serviceName;
+ (id)sharedRemoteKeyboards;
- (BOOL)_isWritingToolsHandlingKeyboardTracking;
- (BOOL)_sceneFocusPermittedForApplication;
- (BOOL)_sceneFocusUpdatePermittedForWindow:(id)window;
- (BOOL)allowedToEnableKeyboardWindow;
- (BOOL)allowedToShowKeyboard;
- (BOOL)assertionActivationStateForType:(unint64_t)type;
- (BOOL)assistantBarVisible;
- (BOOL)currentStateHasEqualRect:(CGRect)rect andIAVPosition:(CGRect)position;
- (BOOL)didHandleKeyboardChange:(id)change shouldConsiderSnapshottingKeyboard:(BOOL)keyboard isLocalEvent:(BOOL)event;
- (BOOL)hasLocalMinimumKeyboardHeightForScene:(id)scene;
- (BOOL)hasWindowHostingCallerID:(id)d;
- (BOOL)isFloating;
- (BOOL)isOnScreenRotating;
- (BOOL)isShowingModalAutofillPanel:(id)panel;
- (BOOL)isWritingToolsHostingViewService;
- (BOOL)keyboardIsForSystemService;
- (BOOL)keyboardVisible;
- (BOOL)needsToShowKeyboardForViewServiceHostWindow:(id)window;
- (BOOL)needsToShowKeyboardForWindow:(id)window;
- (BOOL)oldPathForSnapshot;
- (BOOL)refreshWithLocalMinimumKeyboardHeight:(double)height forScene:(id)scene;
- (BOOL)remoteKeyboardUndocked:(BOOL)undocked;
- (BOOL)sceneIsFullScreen;
- (BOOL)shouldAllowInputViewsRestoredForId:(id)id;
- (BOOL)wantsToShowKeyboardForViewServiceHostWindow:(id)window;
- (BOOL)wantsToShowKeyboardForWindow:(id)window;
- (CGPoint)persistentOffset;
- (CGRect)keyboardFrameIncludingRemoteIAV;
- (CGRect)keyboardPosition;
- (Class)keyboardWindowClass;
- (FBSScene)requiredScene;
- (NSArray)currentHostedPIDs;
- (UIRemoteKeyboardWindow)keyboardWindow;
- (_UIKeyboardArbitration)proxy;
- (_UIRemoteKeyboards)init;
- (double)heightForRemoteIAVPlaceholderIfNecessary;
- (double)intersectionHeightForWindowScene:(id)scene isLocalMinimumHeightOut:(BOOL *)out ignoreHorizontalOffset:(BOOL)offset;
- (id)_activeScreen;
- (id)inputWindowRootViewController;
- (id)prepareForHostedWindowWithScene:(id)scene;
- (id)viewHostForWindow:(id)window;
- (unint64_t)localSceneCount;
- (void)_lostWindow:(id)window;
- (void)_performOnDistributedControllersExceptSelf:(id)self;
- (void)_performRequiredSceneUpdateIfPermittedForWindow:(uint64_t)window withContext:;
- (void)_postInputSourceDidChangeNotificationForResponder:(id)responder;
- (void)_updateEventSource:(int64_t)keyboardSource options:(unint64_t)options responder:(id)responder;
- (void)addHostedWindowView:(id)view fromPID:(int)d forScene:(id)scene callerID:(id)iD;
- (void)addIgnoredSceneIdentityTokenString:(id)string;
- (void)applicationDidBecomeActive:(id)active forceSignalToProxy:(BOOL)proxy;
- (void)applicationDidRemoveDeactivationReason:(id)reason;
- (void)applicationDidSuspend:(id)suspend;
- (void)applicationKeyWindowDidChange:(id)change;
- (void)applicationKeyWindowWillChange:(id)change;
- (void)applicationResumedEventsOnly:(id)only;
- (void)applicationWillAddDeactivationReason:(id)reason;
- (void)applicationWillResignActive:(id)active;
- (void)applicationWillResume:(id)resume;
- (void)assertNeedsAutofillUI;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type;
- (void)checkConnection;
- (void)checkState;
- (void)cleanSuppression;
- (void)clearKeyboardSceneIdentifierEnteringForeground:(id)foreground;
- (void)completeMoveKeyboardForWindow:(id)window;
- (void)completeTransition:(id)transition withInfo:(id)info;
- (void)controllerDidLayoutSubviews:(id)subviews;
- (void)dealloc;
- (void)finishWithHostedWindow;
- (void)forceKeyboardAway;
- (void)ignoreLayoutNotifications:(id)notifications;
- (void)keyboardChangedCompleted;
- (void)peekApplicationEvent:(id)event;
- (void)performOnControllers:(id)controllers;
- (void)performOnDistributedControllers:(id)controllers;
- (void)performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:(void *)delegate;
- (void)performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:(uint64_t)window servicePID:;
- (void)pointIsWithinKeyboardContent:(CGPoint)content onCompletion:(id)completion;
- (void)prepareToMoveKeyboard:(CGRect)keyboard withIAV:(CGRect)v isIAVRelevant:(BOOL)relevant showing:(BOOL)showing notifyRemote:(BOOL)remote forScene:(id)scene;
- (void)preserveKeyboardWithId:(id)id;
- (void)prewarmEmojiKeyboard;
- (void)queue_activeProcessResignWithCompletion:(id)completion;
- (void)queue_endInputSessionWithCompletion:(id)completion;
- (void)queue_failedConnection:(id)connection;
- (void)queue_getDebugInfoWithCompletion:(id)completion;
- (void)queue_keyboardArbiterClientHandleChanged:(BOOL)changed withCompletion:(id)completion;
- (void)queue_keyboardChanged:(id)changed onComplete:(id)complete;
- (void)queue_keyboardChangedWithCompletion:(id)completion;
- (void)queue_keyboardIAVChanged:(double)changed onComplete:(id)complete;
- (void)queue_keyboardSuppressed:(BOOL)suppressed withCompletion:(id)completion;
- (void)queue_keyboardTransition:(id)transition event:(unint64_t)event withInfo:(id)info onComplete:(id)complete;
- (void)queue_keyboardUIDidChange:(id)change onComplete:(id)complete;
- (void)queue_sceneBecameFocused:(id)focused withCompletion:(id)completion;
- (void)queue_setKeyboardDisabled:(BOOL)disabled withCompletion:(id)completion;
- (void)queue_setLastEventSource:(int64_t)source withCompletion:(id)completion;
- (void)registerController:(id)controller;
- (void)removeIgnoredSceneIdentityTokenString:(id)string;
- (void)requestEventDeferralTargetSelectionForWindow:(id)window;
- (void)resetSnapshotWithWindowCheck:(BOOL)check;
- (void)restoreKeyboardIfNeeded;
- (void)restoreKeyboardWithId:(id)id;
- (void)restorePreservedInputViewsIfNecessary;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneUpdated;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)screenDidDisconnect:(id)disconnect;
- (void)setDisableBecomeFirstResponder:(BOOL)responder forSuppressionAssertion:(BOOL)assertion updatePlacement:(BOOL)placement wantsAssistant:(BOOL)assistant;
- (void)setEnableMultiscreenHack:(BOOL)hack;
- (void)setKeyboardSceneIdentifierEnteringForegroundForScene:(id)scene;
- (void)setPlacement:(id)placement quietly:(BOOL)quietly animated:(BOOL)animated generateSplitNotification:(BOOL)notification;
- (void)setShouldFence:(BOOL)fence;
- (void)setSnapshotting:(BOOL)snapshotting;
- (void)setStickerPrewarmingViewControllerEnabled:(BOOL)enabled;
- (void)setSuppressingKeyboard:(BOOL)keyboard forScene:(id)scene;
- (void)setWantsAssistantWhileSuppressingKeyboard:(BOOL)keyboard;
- (void)setWindowEnabled:(BOOL)enabled;
- (void)setWindowEnabled:(BOOL)enabled force:(BOOL)force;
- (void)setWindowLevel:(double)level sceneLevel:(double)sceneLevel forResponder:(id)responder;
- (void)signalToProxyKeyboardChanged:(id)changed onCompletion:(id)completion;
- (void)startConnection;
- (void)startTransition:(id)transition withInfo:(id)info;
- (void)stopConnection;
- (void)toggleSuppressionForWritingToolIfNeeded;
- (void)unregisterController:(id)controller;
- (void)updateAllVisibleFrames;
- (void)updateCurrentState:(id)state;
- (void)updateLastScreen:(id)screen;
- (void)updateLocalKeyboardChanged:(id)changed;
- (void)updateTransition:(id)transition withInfo:(id)info;
- (void)userSelectedApp:(id)app onCompletion:(id)completion;
- (void)userSelectedProcessIdentifier:(int)identifier withSceneIdentity:(id)identity onCompletion:(id)completion;
- (void)userTapsOnKeyboard;
@end

@implementation _UIRemoteKeyboards

+ (BOOL)enabled
{
  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference__UIRemoteKeyboardsEnabled, @"_UIRemoteKeyboardsEnabled") & 1) != 0 || byte_1ED48B31C)
  {
    v3 = _UIMainBundleIdentifier();
    if ([&unk_1EFE2CD30 containsObject:v3])
    {
      goto LABEL_11;
    }

    if (qword_1ED499800 != -1)
    {
      dispatch_once(&qword_1ED499800, &__block_literal_global_1176_0);
    }

    if (byte_1ED499714 & 1) != 0 || (_UIApplicationIsApplicationWidgetExtension() & 1) != 0 || (_UIApplicationIsKeyboardExtension() & 1) != 0 || (_UIApplicationIsWidgetServer())
    {
LABEL_11:
      LOBYTE(v2) = 0;
    }

    else
    {
      v2 = _UIApplicationIsUniversalControl() ^ 1;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

+ (id)sharedRemoteKeyboards
{
  if ([self enabled])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43___UIRemoteKeyboards_sharedRemoteKeyboards__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (qword_1ED499750 != -1)
    {
      dispatch_once(&qword_1ED499750, block);
    }

    v3 = qword_1ED499748;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)wantsUnassociatedWindowSceneForKeyboardWindow
{
  sharedRemoteKeyboards = [self sharedRemoteKeyboards];
  if ([objc_msgSend(sharedRemoteKeyboards "keyboardWindowClass")])
  {
    isFrontBoard = 1;
  }

  else
  {
    isFrontBoard = [UIApp isFrontBoard];
  }

  return isFrontBoard;
}

- (id)_activeScreen
{
  lastScreen = self->_lastScreen;
  if (lastScreen)
  {
    mainScreen = lastScreen;
LABEL_3:
    screen2 = mainScreen;
    goto LABEL_6;
  }

  v5 = +[UIWindowScene _keyWindowScene];
  screen = [v5 screen];

  if (!screen)
  {
    mainScreen = [objc_opt_self() mainScreen];
    goto LABEL_3;
  }

  v7 = +[UIWindowScene _keyWindowScene];
  screen2 = [v7 screen];

LABEL_6:

  return screen2;
}

- (UIRemoteKeyboardWindow)keyboardWindow
{
  keyboardWindowClass = [(_UIRemoteKeyboards *)self keyboardWindowClass];
  _activeScreen = [(_UIRemoteKeyboards *)self _activeScreen];
  v5 = [(objc_class *)keyboardWindowClass remoteKeyboardWindowForScreen:_activeScreen create:0];

  return v5;
}

- (double)heightForRemoteIAVPlaceholderIfNecessary
{
  if (![(_UIRemoteKeyboards *)self keyboardVisible])
  {
    return self->_remoteIAVHeight;
  }

  currentState = [(_UIRemoteKeyboards *)self currentState];
  [currentState keyboardPositionWithIAV];
  v5 = v4;
  currentState2 = [(_UIRemoteKeyboards *)self currentState];
  [currentState2 keyboardPosition];
  v8 = v5 - v7;

  return v8;
}

- (BOOL)oldPathForSnapshot
{
  if (+[UIKeyboard inputUIOOP])
  {
    return 1;
  }

  if (!self->_takingSnapshot)
  {
    return 0;
  }

  return [(_UIRemoteKeyboards *)self sceneIsFullScreen];
}

- (Class)keyboardWindowClass
{
  v2 = objc_opt_class();

  return v2;
}

- (BOOL)keyboardVisible
{
  currentState = [(_UIRemoteKeyboards *)self currentState];
  keyboardOnScreen = [currentState keyboardOnScreen];

  return keyboardOnScreen;
}

- (BOOL)_isWritingToolsHandlingKeyboardTracking
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___UIRemoteKeyboards__isWritingToolsHandlingKeyboardTracking__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  if (qword_1ED499768 != -1)
  {
    dispatch_once(&qword_1ED499768, block);
  }

  return byte_1ED499713;
}

- (_UIKeyboardArbitration)proxy
{
  connection = [(_UIRemoteKeyboards *)self connection];
  v3 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_416];

  return v3;
}

- (_UIRemoteKeyboards)init
{
  v24.receiver = self;
  v24.super_class = _UIRemoteKeyboards;
  v2 = [(_UIRemoteKeyboards *)&v24 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldFence = 1;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    windowControllers = v3->_windowControllers;
    v3->_windowControllers = weakObjectsHashTable;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    minimumKeyboardHeights = v3->_minimumKeyboardHeights;
    v3->_minimumKeyboardHeights = weakToStrongObjectsMapTable;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activePIDs = v3->_activePIDs;
    v3->_activePIDs = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeCIDs = v3->_activeCIDs;
    v3->_activeCIDs = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    currentKeyboardsBySceneIdentifier = v3->_currentKeyboardsBySceneIdentifier;
    v3->_currentKeyboardsBySceneIdentifier = v12;

    [(_UIRemoteKeyboards *)v3 checkConnection];
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingKeyboardGrabs = v3->_pendingKeyboardGrabs;
    v3->_pendingKeyboardGrabs = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    ignoredSceneIdentityTokenStringSet = v3->_ignoredSceneIdentityTokenStringSet;
    v3->_ignoredSceneIdentityTokenStringSet = v16;

    v18 = objc_alloc_init(_UIRemoteKeyboardsEventObserver);
    eventObserver = v3->_eventObserver;
    v3->_eventObserver = v18;

    [(_UIRemoteKeyboardsEventObserver *)v3->_eventObserver setDelegate:v3];
    v20 = [[_UIAssertionController alloc] initWithAssertionSubject:v3];
    assertionController = v3->_assertionController;
    v3->_assertionController = v20;

    if (!+[UIKeyboard inputUIOOP])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v3 selector:sel_sceneDidDisconnect_ name:@"UISceneDidDisconnectNotification" object:0];
      [defaultCenter addObserver:v3 selector:sel_applicationWillResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
      [defaultCenter addObserver:v3 selector:sel_applicationDidSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
      [defaultCenter addObserver:v3 selector:sel_applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];
      [defaultCenter addObserver:v3 selector:sel_applicationDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
      [defaultCenter addObserver:v3 selector:sel_applicationDidBecomeActive_ name:0x1EFBB47D0 object:0];
      [defaultCenter addObserver:v3 selector:sel_applicationWillAddDeactivationReason_ name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
      [defaultCenter addObserver:v3 selector:sel_applicationDidRemoveDeactivationReason_ name:@"_UIApplicationDidRemoveDeactivationReasonNotification" object:0];
      [defaultCenter addObserver:v3 selector:sel_applicationResumedEventsOnly_ name:@"UIApplicationResumedEventsOnlyNotification" object:UIApp];
      [defaultCenter addObserver:v3 selector:sel_applicationKeyWindowWillChange_ name:@"_UIWindowWillBecomeApplicationKeyNotification" object:0];
      [defaultCenter addObserver:v3 selector:sel_applicationKeyWindowDidChange_ name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
      [defaultCenter addObserver:v3 selector:sel_sceneWillEnterForeground_ name:@"UISceneWillEnterForegroundNotification" object:0];
      [defaultCenter addObserver:v3 selector:sel_sceneDidEnterBackground_ name:@"UISceneDidEnterBackgroundNotification" object:0];
      [defaultCenter addObserver:v3 selector:sel_sceneDidActivate_ name:@"UISceneDidActivateNotification" object:0];
      [defaultCenter addObserver:v3 selector:sel_screenDidDisconnect_ name:@"_UIScreenDidDisconnectNotification" object:0];
      [defaultCenter addObserver:v3 selector:sel_updateAllVisibleFrames name:@"UIKeyboardWillToggleCandidateBar" object:0];
      if ([UIApp _isSpringBoard])
      {
        [defaultCenter addObserver:v3 selector:sel_willLock_ name:@"_UISystemApplicationWillLockNotification" object:0];
      }
    }
  }

  return v3;
}

- (void)checkConnection
{
  connection = [(_UIRemoteKeyboards *)self connection];
  if (connection)
  {
  }

  else if (-[_UIRemoteKeyboards allowedToShowKeyboard](self, "allowedToShowKeyboard") || (-[_UIRemoteKeyboards keyboardWindow](self, "keyboardWindow"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 _isHostedInAnotherProcess], v4, v5))
  {

    [(_UIRemoteKeyboards *)self startConnection];
  }
}

- (BOOL)allowedToShowKeyboard
{
  if ([UIApp isSuspendedEventsOnly])
  {
    isSuspendedUnderLock = [UIApp isSuspendedUnderLock];
  }

  else
  {
    isSuspendedUnderLock = 1;
  }

  keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];
  if (([keyboardWindow _isHostedInAnotherProcess] & 1) != 0 || (objc_msgSend(UIApp, "isSuspended") & isSuspendedUnderLock) != 1 || +[UIKeyboardImpl isActivatingForeground](UIKeyboardImpl, "isActivatingForeground"))
  {
    _isSpringBoard = 1;
  }

  else
  {
    _isSpringBoard = [UIApp _isSpringBoard];
  }

  return _isSpringBoard;
}

- (void)checkState
{
  if ([UIApp _shouldAllowKeyboardArbiter])
  {

    [(_UIRemoteKeyboards *)self checkConnection];
  }

  else
  {
    connection = [(_UIRemoteKeyboards *)self connection];

    if (connection)
    {

      [(_UIRemoteKeyboards *)self stopConnection];
    }
  }
}

- (BOOL)_sceneFocusPermittedForApplication
{
  _shouldAllowKeyboardArbiter = [UIApp _shouldAllowKeyboardArbiter];
  if (_shouldAllowKeyboardArbiter)
  {

    LOBYTE(_shouldAllowKeyboardArbiter) = [(_UIRemoteKeyboards *)self allowedToShowKeyboard];
  }

  return _shouldAllowKeyboardArbiter;
}

+ (id)createArbiterConnection
{
  useSystemService = [self useSystemService];
  v3 = objc_alloc(MEMORY[0x1E696B0B8]);
  v4 = v3;
  if (useSystemService)
  {
    v5 = +[_UIRemoteKeyboards serviceName];
    v6 = [v4 initWithMachServiceName:v5 options:4096];
  }

  else
  {
    v6 = [v3 initWithServiceName:@"com.apple.UIKit.KeyboardManagement"];
  }

  v7 = _UIKeyboardArbitration_Interface();
  [v6 setRemoteObjectInterface:v7];

  v8 = _UIKeyboardArbitrationClient_Interface();
  [v6 setExportedInterface:v8];

  return v6;
}

+ (BOOL)useSystemService
{
  result = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference__UIRemoteKeyboardsUseSystemService, @"_UIRemoteKeyboardsUseSystemService");
  if (byte_1ED48B324)
  {
    return 1;
  }

  return result;
}

+ (id)serviceName
{
  if (qword_1ED499760 != -1)
  {
    dispatch_once(&qword_1ED499760, &__block_literal_global_436_2);
  }

  v3 = qword_1ED499758;

  return v3;
}

- (void)startConnection
{
  if (!+[UIKeyboard inputUIOOP])
  {
    v4 = _UIArbiterClientLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "startConnection", buf, 2u);
    }

    connection = [(_UIRemoteKeyboards *)self connection];

    if (!connection)
    {
      if ([UIApp _shouldAllowKeyboardArbiter])
      {
        [(_UIRemoteKeyboards *)self resetSnapshotWithWindowCheck:0];
        v6 = +[UIDevice currentDevice];
        userInterfaceIdiom = [v6 userInterfaceIdiom];

        if ((userInterfaceIdiom - 2) >= 3)
        {
          createArbiterConnection = [objc_opt_class() createArbiterConnection];
          objc_storeStrong(&self->_connection, createArbiterConnection);
          v9 = BSDispatchQueueCreateWithQualityOfService();
          [createArbiterConnection _setQueue:v9];
          objc_initWeak(buf, createArbiterConnection);
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __37___UIRemoteKeyboards_startConnection__block_invoke;
          v22[3] = &unk_1E70F2F80;
          objc_copyWeak(&v23, buf);
          v22[4] = self;
          [createArbiterConnection setInterruptionHandler:v22];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __37___UIRemoteKeyboards_startConnection__block_invoke_447;
          v20[3] = &unk_1E70F2F80;
          objc_copyWeak(&v21, buf);
          v20[4] = self;
          [createArbiterConnection setInvalidationHandler:v20];
          [createArbiterConnection setExportedObject:self];
          if (createArbiterConnection)
          {
            [createArbiterConnection resume];
            self->_expectingInitialState = 1;
            self->_remoteIAVHeight = 0.0;
            requiredScene = [(_UIRemoteKeyboards *)self requiredScene];
            proxy = [(_UIRemoteKeyboards *)self proxy];
            currentKeyboard = [(_UIRemoteKeyboards *)self currentKeyboard];
            if (currentKeyboard)
            {
              currentState = [(_UIRemoteKeyboards *)self currentState];
            }

            else
            {
              currentState = 0;
            }

            if (requiredScene)
            {
              identityToken = [requiredScene identityToken];
              v2 = +[UIWindow _applicationKeyWindow];
              v14 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:identityToken window:v2];
            }

            else
            {
              v14 = 0;
            }

            currentHostedPIDs = [(_UIRemoteKeyboards *)self currentHostedPIDs];
            shouldFence = self->_shouldFence;
            expectedSuppression = self->_expectedSuppression;
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __37___UIRemoteKeyboards_startConnection__block_invoke_449;
            v19[3] = &unk_1E7117CF0;
            v19[4] = self;
            [proxy startArbitrationWithExpectedState:currentState focusContext:v14 hostingPIDs:currentHostedPIDs usingFence:shouldFence withSuppression:expectedSuppression onConnected:v19];

            if (requiredScene)
            {
            }

            if (currentKeyboard)
            {
            }
          }

          objc_destroyWeak(&v21);
          objc_destroyWeak(&v23);
          objc_destroyWeak(buf);
        }
      }
    }
  }
}

- (FBSScene)requiredScene
{
  _FBSScene = self->_requiredScene;
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = v3;
  if (!_FBSScene)
  {
    scene = [v3 scene];
    _FBSScene = [scene _FBSScene];

    if (!_FBSScene)
    {
      responder = [v4 responder];
      _responderWindow = [responder _responderWindow];
      windowScene = [_responderWindow windowScene];
      _settingsScene = [windowScene _settingsScene];
      _FBSScene = [_settingsScene _FBSScene];
    }
  }

  return _FBSScene;
}

- (NSArray)currentHostedPIDs
{
  v2 = [MEMORY[0x1E695DFD8] setWithArray:self->_activePIDs];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (BOOL)isOnScreenRotating
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40___UIRemoteKeyboards_isOnScreenRotating__block_invoke;
  v4[3] = &unk_1E7106018;
  v4[4] = &v5;
  [(_UIRemoteKeyboards *)self performOnControllers:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isWritingToolsHostingViewService
{
  currentState = [(_UIRemoteKeyboards *)self currentState];
  hostBundleIdentifier = [currentState hostBundleIdentifier];
  v4 = [hostBundleIdentifier isEqualToString:@"com.apple.WritingToolsUIService"];

  return v4;
}

- (void)toggleSuppressionForWritingToolIfNeeded
{
  if ([(_UIRemoteKeyboards *)self _usesInvisibleKeyboardBehindWTUI])
  {
    self->_showsInvisibleKeyboardBehindWTUI = 0;
    v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    responder = [v3 responder];

    if ([responder _isWritingToolsActive])
    {
      currentState = [(_UIRemoteKeyboards *)self currentState];
      hostBundleIdentifier = [currentState hostBundleIdentifier];
      if ([hostBundleIdentifier isEqualToString:@"com.apple.WritingToolsUIService"])
      {

        goto LABEL_6;
      }

      currentState2 = [(_UIRemoteKeyboards *)self currentState];
      sourceBundleIdentifier = [currentState2 sourceBundleIdentifier];
      v9 = [sourceBundleIdentifier isEqualToString:@"com.apple.WritingToolsUIService"];

      if (v9)
      {
LABEL_6:
        v10 = _UIArbiterClientLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "currentKeyboard:Y (toggleSuppressionForWritingTools)", v19, 2u);
        }

        [(_UIRemoteKeyboards *)self setCurrentKeyboard:1];
        currentState3 = [(_UIRemoteKeyboards *)self currentState];
        keyboardOnScreen = [currentState3 keyboardOnScreen];

        if (keyboardOnScreen)
        {
          self->_showsInvisibleKeyboardBehindWTUI = 1;
          if ([responder _writingToolsWantsKeyboardSuppression])
          {
            v13 = responder;
            v14 = 0;
LABEL_11:
            [v13 _setWritingToolsWantsKeyboardSuppression:v14];
            goto LABEL_20;
          }

          v17 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
          containerRootController = [v17 containerRootController];

          if ([containerRootController isTransitioning])
          {
            [containerRootController addPendingActivity:&__block_literal_global_458_0];
          }

          else
          {
            v18 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            [v18 forceReloadInputViews];
          }
        }

        else
        {
          if (self->_dontSuppressKeyboardAgain)
          {
            goto LABEL_20;
          }

          containerRootController = [(_UIRemoteKeyboards *)self currentState];
          if (![containerRootController keyboardOnScreen])
          {
            _writingToolsWantsKeyboardSuppression = [responder _writingToolsWantsKeyboardSuppression];

            if (_writingToolsWantsKeyboardSuppression)
            {
              goto LABEL_20;
            }

            v13 = responder;
            v14 = 1;
            goto LABEL_11;
          }
        }
      }
    }

LABEL_20:
  }
}

- (id)inputWindowRootViewController
{
  keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];
  rootViewController = [keyboardWindow rootViewController];

  return rootViewController;
}

- (unint64_t)localSceneCount
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          keyboardSceneDelegate = [v8 keyboardSceneDelegate];

          if (keyboardSceneDelegate)
          {
            ++v5;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)allowedToEnableKeyboardWindow
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  scene = [v3 scene];

  v9 = 0;
  if (scene)
  {
    if (self->_deactivatedByControlCenter || self->_deactivatedBySystemAlert || (keyboardSceneIdentifierEnteringForeground = self->_keyboardSceneIdentifierEnteringForeground, [scene _sceneIdentifier], v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(keyboardSceneIdentifierEnteringForeground) = -[NSString isEqualToString:](keyboardSceneIdentifierEnteringForeground, "isEqualToString:", v6), v6, (keyboardSceneIdentifierEnteringForeground & 1) != 0) || !objc_msgSend(scene, "activationState") || objc_msgSend(scene, "activationState") == 1 && (-[_UIRemoteKeyboards currentState](self, "currentState"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "keyboardOnScreen"), v7, v8) && ((objc_msgSend(scene, "_canDynamicallySpecifySupportedInterfaceOrientations") & 1) != 0 || (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "visualModeManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "windowingModeEnabled"), v11, v10, objc_msgSend(scene, "_coordinateSpace"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "bounds"), v15 = v14, v17 = v16, v13, objc_msgSend(scene, "screen"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "bounds"), v20 = v19, v22 = v21, v18, (v12 & 1) == 0) && v15 == v20 && v17 == v22))
    {
      v9 = 1;
    }
  }

  return v9;
}

- (void)keyboardChangedCompleted
{
  currentState = [(_UIRemoteKeyboards *)self currentState];
  sourceBundleIdentifier = [currentState sourceBundleIdentifier];
  if ([sourceBundleIdentifier isEqualToString:@"com.apple.siri"])
  {
  }

  else
  {
    ignoredSceneIdentityTokenStringSet = self->_ignoredSceneIdentityTokenStringSet;
    currentState2 = [(_UIRemoteKeyboards *)self currentState];
    sourceSceneIdentityString = [currentState2 sourceSceneIdentityString];
    LOBYTE(ignoredSceneIdentityTokenStringSet) = [(NSMutableSet *)ignoredSceneIdentityTokenStringSet containsObject:sourceSceneIdentityString];

    if ((ignoredSceneIdentityTokenStringSet & 1) == 0)
    {

      [(_UIRemoteKeyboards *)self resetSnapshotWithWindowCheck:1];
    }
  }
}

- (BOOL)isFloating
{
  currentState = [(_UIRemoteKeyboards *)self currentState];
  isFloating = [currentState isFloating];

  return isFloating;
}

- (BOOL)assistantBarVisible
{
  currentState = [(_UIRemoteKeyboards *)self currentState];
  assistantBarVisible = [currentState assistantBarVisible];

  return assistantBarVisible;
}

- (void)dealloc
{
  v6[14] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UISceneDidDisconnectNotification";
  v6[1] = @"UIApplicationWillEnterForegroundNotification";
  v6[2] = @"UIApplicationDidEnterBackgroundNotification";
  v6[3] = @"UIApplicationWillResignActiveNotification";
  v6[4] = @"UIApplicationDidBecomeActiveNotification";
  v6[5] = @"_UIApplicationWillAddDeactivationReasonNotification";
  v6[6] = @"_UIApplicationDidRemoveDeactivationReasonNotification";
  v6[7] = @"UIApplicationResumedEventsOnlyNotification";
  v6[8] = @"_UIWindowWillBecomeApplicationKeyNotification";
  v6[9] = @"_UIWindowDidBecomeApplicationKeyNotification";
  v6[10] = @"UISceneWillEnterForegroundNotification";
  v6[11] = @"UISceneDidEnterBackgroundNotification";
  v6[12] = @"UISceneDidActivateNotification";
  v6[13] = @"_UISystemApplicationWillLockNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:14];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  [(_UIRemoteKeyboards *)self stopConnection];
  [(_UIRemoteKeyboards *)self resetSnapshotWithWindowCheck:0];
  v5.receiver = self;
  v5.super_class = _UIRemoteKeyboards;
  [(_UIRemoteKeyboards *)&v5 dealloc];
}

- (BOOL)currentStateHasEqualRect:(CGRect)rect andIAVPosition:(CGRect)position
{
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  v8 = rect.size.height;
  v9 = rect.size.width;
  v10 = rect.origin.y;
  v11 = rect.origin.x;
  currentState = [(_UIRemoteKeyboards *)self currentState];
  [currentState keyboardPosition];
  v27.origin.x = v14;
  v27.origin.y = v15;
  v27.size.width = v16;
  v27.size.height = v17;
  v25.origin.x = v11;
  v25.origin.y = v10;
  v25.size.width = v9;
  v25.size.height = v8;
  if (CGRectEqualToRect(v25, v27))
  {
    currentState2 = [(_UIRemoteKeyboards *)self currentState];
    [currentState2 keyboardPositionWithIAV];
    v28.origin.x = v19;
    v28.origin.y = v20;
    v28.size.width = v21;
    v28.size.height = v22;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v23 = CGRectEqualToRect(v26, v28);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)updateCurrentState:(id)state
{
  stateCopy = state;
  [stateCopy keyboardPosition];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [stateCopy keyboardPositionWithIAV];
  if (![(_UIRemoteKeyboards *)self currentStateHasEqualRect:v5 andIAVPosition:v7, v9, v11, v12, v13, v14, v15])
  {
    [(_UIRemoteKeyboards *)self setDidSignalKeyboardChangedForCurrentKeyboard:0];
  }

  [(_UIRemoteKeyboards *)self setCurrentState:stateCopy];
}

- (void)signalToProxyKeyboardChanged:(id)changed onCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  completionCopy = completion;
  v8 = _UIArbiterClientLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24.val[0]) = 0;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "TX signalKeyboardChanged", &v24, 2u);
  }

  v9 = KeyboardArbiterClientLog_1();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v24.val[0] = 138412290;
    *&v24.val[1] = changedCopy;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "[_UIRemoteKeyboards signalToProxyKeyboardChanged:onCompletion:]  Signaling keyboard changed %@", &v24, 0xCu);
  }

  [(_UIRemoteKeyboards *)self setDidSignalKeyboardChangedForCurrentKeyboard:1];
  v10 = _UIMainBundleIdentifier();
  [changedCopy setSourceBundleIdentifier:v10];

  v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  scene = [v11 scene];
  _FBSScene = [scene _FBSScene];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    scene2 = [v15 scene];
    _FBSScene2 = [scene2 _FBSScene];
    hostHandle = [_FBSScene2 hostHandle];
    auditToken = [hostHandle auditToken];

    if (auditToken)
    {
      [auditToken realToken];
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
    }

    v20 = SecTaskCreateWithAuditToken(0, &v24);
    if (v20)
    {
      v21 = v20;
      v22 = SecTaskCopySigningIdentifier(v20, 0);
      CFRelease(v21);
      if ([(__CFString *)v22 isEqualToString:@"com.apple.InputUI"])
      {
        [changedCopy setHostBundleIdentifier:v22];
      }
    }
  }

  [(_UIRemoteKeyboards *)self updateLocalKeyboardChanged:changedCopy, *v24.val, *&v24.val[4]];
  proxy = [(_UIRemoteKeyboards *)self proxy];
  [proxy signalKeyboardChanged:changedCopy onCompletion:completionCopy];
}

- (void)updateLocalKeyboardChanged:(id)changed
{
  copyWithoutFence = [changed copyWithoutFence];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49___UIRemoteKeyboards_updateLocalKeyboardChanged___block_invoke;
  v5[3] = &unk_1E7104050;
  v6 = copyWithoutFence;
  v4 = copyWithoutFence;
  [UIKeyboardSceneDelegate performOnControllers:v5];
}

- (void)assertNeedsAutofillUI
{
  if (+[UIKeyboard usesInputSystemUIForAutoFillOnly])
  {
    currentKeyboard = [(_UIRemoteKeyboards *)self currentKeyboard];
    v4 = _UIKeyboardExtendedLog();
    proxy = v4;
    if (currentKeyboard)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_188A29000, proxy, OS_LOG_TYPE_DEFAULT, "Requesting scene for autofill UI", v6, 2u);
      }

      proxy = [(_UIRemoteKeyboards *)self proxy];
      [proxy signalAutofillUIBringupWithCompletion:&__block_literal_global_428];
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_188A29000, proxy, OS_LOG_TYPE_DEBUG, "Requesting scene for autofill UI: request is pending -- not yet the current keyboard", buf, 2u);
    }

    [(_UIRemoteKeyboards *)self setPendingAutofillRequest:!currentKeyboard];
  }
}

- (void)restoreKeyboardIfNeeded
{
  if ([(_UIRemoteKeyboards *)self _usesInvisibleKeyboardBehindWTUI]&& self->_dontSuppressKeyboardAgain || ([(_UIRemoteKeyboards *)self keyboardWindow], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, [(_UIRemoteKeyboards *)self currentState], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(_UIRemoteKeyboards *)self isShowingModalAutofillPanel:v5], v5, v4, v6))
  {
    *&self->_dontSuppressKeyboardAgain = 0;

    [(_UIRemoteKeyboards *)self applicationDidBecomeActive:0 forceSignalToProxy:1];
  }
}

- (void)queue_keyboardArbiterClientHandleChanged:(BOOL)changed withCompletion:(id)completion
{
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78___UIRemoteKeyboards_queue_keyboardArbiterClientHandleChanged_withCompletion___block_invoke;
  v9[3] = &unk_1E70FD0C8;
  changedCopy = changed;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v9];
}

- (void)queue_activeProcessResignWithCompletion:(id)completion
{
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62___UIRemoteKeyboards_queue_activeProcessResignWithCompletion___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v7];
}

- (void)queue_failedConnection:(id)connection
{
  connectionCopy = connection;
  interruptionHandler = [connectionCopy interruptionHandler];
  invalidationHandler = [connectionCopy invalidationHandler];
  [connectionCopy setInterruptionHandler:0];
  [connectionCopy setInvalidationHandler:0];
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45___UIRemoteKeyboards_queue_failedConnection___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v9[4] = self;
  v10 = connectionCopy;
  v8 = connectionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v9];
}

- (void)setShouldFence:(BOOL)fence
{
  if (self->_shouldFence != fence)
  {
    self->_shouldFence = fence;
    proxy = [(_UIRemoteKeyboards *)self proxy];
    [proxy setWantsFencing:self->_shouldFence];
  }
}

- (void)resetSnapshotWithWindowCheck:(BOOL)check
{
  keyboardSnapshot = self->_keyboardSnapshot;
  if (keyboardSnapshot)
  {
    checkCopy = check;
    [(UIView *)keyboardSnapshot removeFromSuperview];
    v6 = self->_keyboardSnapshot;
    self->_keyboardSnapshot = 0;

    if (checkCopy)
    {

      [(_UIRemoteKeyboards *)self completeMoveKeyboardForWindow:0];
    }
  }
}

- (void)addIgnoredSceneIdentityTokenString:(id)string
{
  if (string)
  {
    [(NSMutableSet *)self->_ignoredSceneIdentityTokenStringSet addObject:?];
  }
}

- (void)removeIgnoredSceneIdentityTokenString:(id)string
{
  if (string)
  {
    [(NSMutableSet *)self->_ignoredSceneIdentityTokenStringSet removeObject:?];
  }
}

- (BOOL)isShowingModalAutofillPanel:(id)panel
{
  panelCopy = panel;
  if (+[UIKeyboard usesInputSystemUIForAutoFillOnly])
  {
    sourceBundleIdentifier = [panelCopy sourceBundleIdentifier];
    if ([sourceBundleIdentifier isEqualToString:@"com.apple.InputUI"])
    {
      v5 = 1;
    }

    else
    {
      hostBundleIdentifier = [panelCopy hostBundleIdentifier];
      v5 = [hostBundleIdentifier isEqualToString:@"com.apple.InputUI"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)didHandleKeyboardChange:(id)change shouldConsiderSnapshottingKeyboard:(BOOL)keyboard isLocalEvent:(BOOL)event
{
  eventCopy = event;
  keyboardCopy = keyboard;
  v127 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  v122 = 0;
  handlingRemoteEvent = self->_handlingRemoteEvent;
  v81 = eventCopy;
  self->_handlingRemoteEvent = !eventCopy;
  v83 = +[UIKeyboardImpl activeInstance];
  if (self->_handlingRemoteEvent)
  {
    if (([v83 isMinimized] & 1) != 0 || (v8 = objc_msgSend(v83, "automaticMinimizationEnabled"), v8 != objc_msgSend(changeCopy, "automaticMinimizationEnabled")))
    {
      [v83 setAutomaticMinimizationEnabled:{objc_msgSend(changeCopy, "automaticMinimizationEnabled")}];
      geometryDelegate = [v83 geometryDelegate];
      [geometryDelegate syncMinimizedStateToHardwareKeyboardAttachedState];
    }
  }

  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  currentKeyboard = [(_UIRemoteKeyboards *)self currentKeyboard];
  v109 = 0;
  v110 = &v109;
  v111 = 0x3032000000;
  v112 = __Block_byref_object_copy__137;
  v113 = __Block_byref_object_dispose__137;
  v114 = 0;
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v108 = 0;
  v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  responder = [v11 responder];
  _isHostingRemoteContent = [responder _isHostingRemoteContent];

  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke;
  v97[3] = &unk_1E7117D18;
  v79 = v10;
  v98 = v79;
  v14 = changeCopy;
  v104 = _isHostingRemoteContent;
  v99 = v14;
  selfCopy = self;
  v101 = &v105;
  v102 = &v109;
  v103 = &v115;
  [UIKeyboardSceneDelegate performOnControllers:v97];
  if (v110[5])
  {
    *(v106 + 24) = 0;
  }

  v15 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  hardwareKeyboardExclusivityIdentifier = [v15 hardwareKeyboardExclusivityIdentifier];

  sourceBundleIdentifier = [v14 sourceBundleIdentifier];
  if ([sourceBundleIdentifier isEqualToString:@"com.apple.Spotlight"])
  {
    v18 = (hardwareKeyboardExclusivityIdentifier == 0) ^ [v14 isOneness];
  }

  else
  {
    v18 = 0;
  }

  sourceBundleIdentifier2 = [v14 sourceBundleIdentifier];
  if ([sourceBundleIdentifier2 isEqualToString:@"com.apple.CoreAuthUI"])
  {
    v82 = 1;
  }

  else
  {
    v82 = [sourceBundleIdentifier2 isEqualToString:@"com.apple.LocalAuthenticationUIService"];
  }

  sourceBundleIdentifier3 = [v14 sourceBundleIdentifier];
  v21 = [sourceBundleIdentifier3 isEqualToString:@"com.apple.WebSheet"];

  sourceBundleIdentifier4 = [v14 sourceBundleIdentifier];
  v23 = [sourceBundleIdentifier4 isEqualToString:@"com.apple.siri"];

  ignoredSceneIdentityTokenStringSet = self->_ignoredSceneIdentityTokenStringSet;
  sourceSceneIdentityString = [v14 sourceSceneIdentityString];
  v26 = [(NSMutableSet *)ignoredSceneIdentityTokenStringSet containsObject:sourceSceneIdentityString];

  if (v26)
  {
    v27 = _UIArbiterClientLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "handleKeyboardChange: isFromIgnoredScene", buf, 2u);
    }
  }

  currentState = [(_UIRemoteKeyboards *)self currentState];
  uiPosition = [currentState uiPosition];
  if (uiPosition == [v14 uiPosition])
  {
    goto LABEL_20;
  }

  _isSpringBoard = [UIApp _isSpringBoard];

  if (_isSpringBoard)
  {
    currentState = [MEMORY[0x1E696AD88] defaultCenter];
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "uiPosition")}];
    [currentState postNotificationName:@"UIKeyboardDidChangeUIPosition" object:v31];

LABEL_20:
  }

  if (*(v106 + 24) != 1 || (-[_UIRemoteKeyboards currentState](self, "currentState"), v32 = objc_claimAutoreleasedReturnValue(), [v32 sourceBundleIdentifier], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "sourceBundleIdentifier"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v33, "isEqualToString:", v34), v34, v33, v32, (v35 & 1) == 0))
  {
    currentState2 = [(_UIRemoteKeyboards *)self currentState];
    sourceBundleIdentifier5 = [currentState2 sourceBundleIdentifier];
    v38 = _UIMainBundleIdentifier();
    v39 = [sourceBundleIdentifier5 isEqualToString:v38];

    if (v39)
    {
      currentState3 = [(_UIRemoteKeyboards *)self currentState];
      [(_UIRemoteKeyboards *)self setBackupState:currentState3];
    }

    [(_UIRemoteKeyboards *)self updateCurrentState:v14];
  }

  if ([(_UIRemoteKeyboards *)self currentKeyboard])
  {
    v41 = *(v106 + 24) | v18 | v82 | v21 | v23;
  }

  else
  {
    v41 = 0;
  }

  [(_UIRemoteKeyboards *)self setCurrentKeyboard:v41 & 1];
  v42 = _UIArbiterClientLog();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    currentKeyboard2 = [(_UIRemoteKeyboards *)self currentKeyboard];
    v44 = "N";
    if (currentKeyboard2)
    {
      v45 = "Y";
    }

    else
    {
      v45 = "N";
    }

    if (*(v116 + 24))
    {
      v44 = "Y";
    }

    *buf = 136315394;
    v124 = v45;
    v125 = 2080;
    v126 = v44;
    _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_DEFAULT, "handleKeyboardChange: set currentKeyboard:%s (wasKeyboard:%s)", buf, 0x16u);
  }

  yieldingKeyboardToIgnoredScene = [(_UIRemoteKeyboards *)self yieldingKeyboardToIgnoredScene];
  v47 = yieldingKeyboardToIgnoredScene == 0;

  if (v47)
  {
    if ((v116[3] & v26 & 1) != 0 && [v14 keyboardOnScreen] && (objc_msgSend(UIApp, "_isSpringBoard") & 1) == 0)
    {
      v52 = _UIArbiterClientLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v52, OS_LOG_TYPE_DEFAULT, "handleKeyboardChange: begin yieldingKeyboardToIgnoredScene", buf, 2u);
      }

      sourceSceneIdentityString2 = [v14 sourceSceneIdentityString];
      [(_UIRemoteKeyboards *)self setYieldingKeyboardToIgnoredScene:sourceSceneIdentityString2];
    }
  }

  else
  {
    yieldingKeyboardToIgnoredScene2 = [(_UIRemoteKeyboards *)self yieldingKeyboardToIgnoredScene];
    sourceSceneIdentityString3 = [v14 sourceSceneIdentityString];
    v50 = [yieldingKeyboardToIgnoredScene2 isEqualToString:sourceSceneIdentityString3];

    if (v50 && ([v14 keyboardOnScreen] & 1) == 0)
    {
      v51 = _UIArbiterClientLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v51, OS_LOG_TYPE_DEFAULT, "handleKeyboardChange: set currentKeyboard:Y (end yieldingKeyboardToIgnoredScene)", buf, 2u);
      }

      [(_UIRemoteKeyboards *)self setCurrentKeyboard:1];
      [(_UIRemoteKeyboards *)self setYieldingKeyboardToIgnoredScene:0];
    }
  }

  [(_UIRemoteKeyboardsEventObserver *)self->_eventObserver setKeyboardIsVisible:[(_UIRemoteKeyboards *)self keyboardVisible]];
  if (v81)
  {
    if ([(_UIRemoteKeyboards *)self localSceneCount]>= 2)
    {
      sourceSceneIdentityString4 = [v14 sourceSceneIdentityString];
      v54 = sourceSceneIdentityString4 == 0;
    }

    else
    {
      v54 = 1;
    }
  }

  else
  {
    v54 = 0;
  }

  if (*(v116 + 24) == 1 && keyboardCopy && (-[_UIRemoteKeyboards currentState](self, "currentState"), v56 = objc_claimAutoreleasedReturnValue(), v57 = [v56 keyboardOnScreen], v56, v57))
  {
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_462;
    v94[3] = &unk_1E70F8A10;
    v94[4] = self;
    v95 = v23;
    v96 = v18;
    [UIView performWithoutAnimation:v94];
  }

  else if (self->_keyboardSnapshot)
  {
    [(_UIRemoteKeyboards *)self resetSnapshotWithWindowCheck:0];
  }

  v58 = [(_UIRemoteKeyboards *)self isShowingModalAutofillPanel:v14];
  v59 = v58;
  if (*(v116 + 24) != 1 || ((*(v106 + 24) | v18 | v82 | v21 | v23 | v26 | v58) & 1) != 0)
  {
    self->_updatingHeight = 1;
    [(_UIRemoteKeyboards *)self performOnControllers:&__block_literal_global_469];
    if (v18)
    {
      v60 = [UIApp _isSpringBoard] ^ 1;
    }

    else
    {
      v60 = 0;
    }

    if (v82)
    {
      v61 = [UIApp _isSpringBoard] ^ 1;
      if (!v21)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v61 = 0;
      if (!v21)
      {
LABEL_66:
        if (v23)
        {
LABEL_67:
          v62 = [UIApp _isSpringBoard] ^ 1;
LABEL_71:
          if (((v54 | v60 | v61 | v21 | v62 | v59 | v26) & 1) == 0)
          {
            v88[0] = MEMORY[0x1E69E9820];
            v88[1] = 3221225472;
            v88[2] = __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_2_470;
            v88[3] = &unk_1E7117D60;
            v89 = v14;
            selfCopy2 = self;
            v91 = &v119;
            [UIKeyboardSceneDelegate performOnControllers:v88];
            keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];
            rootViewController = [keyboardWindow rootViewController];
            [rootViewController removeCombinedBackdropViewIfNeeded];
          }

          [(_UIRemoteKeyboards *)self toggleSuppressionForWritingToolIfNeeded];
          [(_UIRemoteKeyboards *)self performOnControllers:&__block_literal_global_474];
          self->_updatingHeight = 0;
          goto LABEL_86;
        }

LABEL_70:
        v62 = 0;
        goto LABEL_71;
      }
    }

    v21 = [UIApp _isSpringBoard] ^ 1;
    if (v23)
    {
      goto LABEL_67;
    }

    goto LABEL_70;
  }

  if (!v54)
  {
    v65 = +[UIPeripheralHost sharedInstance];
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_3;
    v92[3] = &unk_1E70F3590;
    v93 = v14;
    [v65 performWithoutDeactivation:v92];
  }

  v66 = v110[5];
  if (v66)
  {
    v67 = v66;
  }

  else
  {
    v67 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  }

  v68 = v67;
  responder2 = [v67 responder];
  if (([responder2 _isHostingRemoteContent] & 1) == 0)
  {
    _responderWindow = [responder2 _responderWindow];
    [_responderWindow _setLastFirstResponder:responder2];
    if (objc_opt_respondsToSelector())
    {
      interactionState = [responder2 interactionState];
      [_responderWindow _setLastFirstResponderInteractionState:interactionState];
    }

    v72 = _UIArbiterClientLog();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v72, OS_LOG_TYPE_DEFAULT, "handleKeyboardChange: resignFirstResponder", buf, 2u);
    }

    [_responderWindow _setWantsResponderWithoutKeyboard:1];
    [responder2 resignFirstResponder];
    [_responderWindow _setWantsResponderWithoutKeyboard:0];
    _firstResponder = [_responderWindow _firstResponder];
    [_responderWindow _setLastNextResponder:_firstResponder];
  }

  *(v120 + 24) = 1;

LABEL_86:
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_2_475;
  v86[3] = &unk_1E7104050;
  v74 = v79;
  v87 = v74;
  [UIKeyboardSceneDelegate performOnControllers:v86];
  if (([v14 isLocal] & 1) == 0)
  {
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_3_476;
    v84[3] = &unk_1E7104050;
    v85 = v14;
    [UIKeyboardSceneDelegate performOnControllers:v84];
  }

  if ((v106[3] & 1) == 0)
  {
    currentState4 = [(_UIRemoteKeyboards *)self currentState];
    [currentState4 resetAnimationFencing];
  }

  self->_handlingRemoteEvent = handlingRemoteEvent;
  v76 = *(v120 + 24);

  _Block_object_dispose(&v105, 8);
  _Block_object_dispose(&v109, 8);

  _Block_object_dispose(&v115, 8);
  _Block_object_dispose(&v119, 8);

  return v76 & 1;
}

- (void)queue_keyboardUIDidChange:(id)change onComplete:(id)complete
{
  completeCopy = complete;
  v5 = _UIArbiterClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "RX keyboardUIDidChange (WARNING: Unexpected call to _UIRemoteKeyboards)", v6, 2u);
  }

  if (completeCopy)
  {
    completeCopy[2](completeCopy);
  }
}

- (void)queue_endInputSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _UIArbiterClientLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "RX endInputSession (WARNING: Unexpected call to _UIRemoteKeyboards)", v5, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)queue_keyboardChanged:(id)changed onComplete:(id)complete
{
  v21 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  completeCopy = complete;
  v8 = +[UIKeyboardVisualModeManager visualModeLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    selfCopy = self;
    v17 = 2048;
    v18 = changedCopy;
    v19 = 2112;
    v20 = changedCopy;
    _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "queue_keyboardChanged (self: %p, info: %p), %@", buf, 0x20u);
  }

  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55___UIRemoteKeyboards_queue_keyboardChanged_onComplete___block_invoke;
  v12[3] = &unk_1E70FCE28;
  v12[4] = self;
  v13 = changedCopy;
  v14 = completeCopy;
  v10 = completeCopy;
  v11 = changedCopy;
  [_systemAnimationFenceExemptQueue performAsync:v12];
}

- (void)queue_keyboardChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58___UIRemoteKeyboards_queue_keyboardChangedWithCompletion___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v7];
}

- (void)queue_keyboardIAVChanged:(double)changed onComplete:(id)complete
{
  completeCopy = complete;
  if ([UIApp _isSpringBoard])
  {
    _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58___UIRemoteKeyboards_queue_keyboardIAVChanged_onComplete___block_invoke;
    v8[3] = &unk_1E70F5FA8;
    changedCopy = changed;
    v8[4] = self;
    v9 = completeCopy;
    [_systemAnimationFenceExemptQueue performAsync:v8];
  }

  else if (completeCopy)
  {
    completeCopy[2](completeCopy);
  }
}

- (void)queue_sceneBecameFocused:(id)focused withCompletion:(id)completion
{
  focusedCopy = focused;
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62___UIRemoteKeyboards_queue_sceneBecameFocused_withCompletion___block_invoke;
  v11[3] = &unk_1E70FCE28;
  v12 = focusedCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = focusedCopy;
  [_systemAnimationFenceExemptQueue performAsync:v11];
}

- (void)_performRequiredSceneUpdateIfPermittedForWindow:(uint64_t)window withContext:
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    if ((window & 0x100) != 0)
    {
      v6 = [self currentKeyboard] ^ 1;
    }

    else
    {
      v6 = 1;
    }

    isUpdatingKeyWindow = [self isUpdatingKeyWindow];
    if ((isUpdatingKeyWindow | window))
    {
      v8 = isUpdatingKeyWindow ^ 1;
    }

    else
    {
      v8 = [self _sceneFocusUpdatePermittedForWindow:v5] & v6;
    }

    v9 = window & 0x10000;
    v10 = window & 0x1000000;
    v11 = window & 0x100000000;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED499788);
    if (*CategoryCachedImpl)
    {
      v33 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316930;
        v41 = "[_UIRemoteKeyboards _performRequiredSceneUpdateIfPermittedForWindow:withContext:]";
        v42 = 1024;
        *v43 = v8;
        *&v43[4] = 2048;
        *&v43[6] = v5;
        v44 = 1024;
        v45 = window & 1;
        v46 = 1024;
        v47 = (window & 0x100) >> 8;
        v48 = 1024;
        v49 = v9 >> 16;
        v50 = 1024;
        v51 = (window & 0x1000000) >> 24;
        v52 = 1024;
        v53 = (window & 0x100000000uLL) >> 32;
        _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "%s: Update is permitted: %d; for window: %p; forcingUpdate: %d; consideringCurrentKeyboard: %d; updateFocusedSceneIdentityStringOrIdentifierIfNil: %d; updateProxyFocusContext: %d; notifyViewServiceHostIfNeeded: %d", buf, 0x3Au);
      }
    }

    if (v8)
    {
      windowScene = [v5 windowScene];
      _settingsScene = [windowScene _settingsScene];

      windowScene2 = [v5 windowScene];
      _settingsScene2 = [windowScene2 _settingsScene];

      _FBSScene = [_settingsScene2 _FBSScene];

      identityToken = [_FBSScene identityToken];
      focusedSceneIdentityStringOrIdentifier = [self focusedSceneIdentityStringOrIdentifier];
      v20 = (focusedSceneIdentityStringOrIdentifier | v9) != 0;
      if (!v5 || _FBSScene)
      {
        stringRepresentation = [identityToken stringRepresentation];
        v25 = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED499790);
        if (*v25)
        {
          log = *(v25 + 8);
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v41 = "[_UIRemoteKeyboards _performRequiredSceneUpdateIfPermittedForWindow:withContext:]";
            v42 = 2112;
            *v43 = stringRepresentation;
            _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "%s: Setting required scene: %@", buf, 0x16u);
          }
        }

        [self setRequiredScene:_FBSScene];
        if (v20)
        {
          v26 = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED499798);
          if (*v26)
          {
            v34 = *(v26 + 8);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v41 = "[_UIRemoteKeyboards _performRequiredSceneUpdateIfPermittedForWindow:withContext:]";
              v42 = 2112;
              *v43 = stringRepresentation;
              _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "%s: Focusing scene identity: %@", buf, 0x16u);
            }
          }

          [self setFocusedSceneIdentityStringOrIdentifier:stringRepresentation];
        }

        if (v10)
        {
          v27 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:identityToken window:v5];
          v28 = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED4997A0);
          if (*v28)
          {
            v35 = *(v28 + 8);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v41 = "[_UIRemoteKeyboards _performRequiredSceneUpdateIfPermittedForWindow:withContext:]";
              v42 = 2112;
              *v43 = v27;
              _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "%s: Updating proxy context: %@", buf, 0x16u);
            }
          }

          proxy = [self proxy];
          [proxy setClientFocusContext:v27];
        }
      }

      else
      {
        if (_settingsScene == 0 || !v20)
        {
LABEL_26:
          if (v11)
          {
            v38 = @"_UIRemoteKeyboardsHostedWindowUserInfoKey";
            v39 = v5;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter postNotificationName:@"_UIRemoteKeyboardsServiceWantsKeyboardFocusWithoutFirstResponderNotification" object:0 userInfo:v31];
          }

          goto LABEL_29;
        }

        _FBSScene2 = [_settingsScene _FBSScene];
        v22 = _FBSScene2;
        if (_FBSScene2)
        {
          identityToken2 = [_FBSScene2 identityToken];
          stringRepresentation = [identityToken2 stringRepresentation];
        }

        else
        {
          stringRepresentation = [_settingsScene _sceneIdentifier];
        }

        v30 = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED4997A8);
        if (*v30)
        {
          v36 = *(v30 + 8);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v41 = "[_UIRemoteKeyboards _performRequiredSceneUpdateIfPermittedForWindow:withContext:]";
            v42 = 2112;
            *v43 = stringRepresentation;
            _os_log_impl(&dword_188A29000, v36, OS_LOG_TYPE_ERROR, "%s: Focusing scene identifier: %@", buf, 0x16u);
          }
        }

        [self setFocusedSceneIdentityStringOrIdentifier:stringRepresentation];
      }

      goto LABEL_26;
    }
  }

LABEL_29:
}

- (void)queue_getDebugInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55___UIRemoteKeyboards_queue_getDebugInfoWithCompletion___block_invoke;
    v6[3] = &unk_1E70F37C0;
    v6[4] = self;
    v7 = completionCopy;
    [_systemAnimationFenceExemptQueue performAsync:v6];
  }
}

- (void)stopConnection
{
  connection = [(_UIRemoteKeyboards *)self connection];
  [connection setInvalidationHandler:0];

  connection2 = [(_UIRemoteKeyboards *)self connection];
  [connection2 setInterruptionHandler:0];

  connection3 = [(_UIRemoteKeyboards *)self connection];
  [connection3 invalidate];

  connection = self->_connection;
  self->_connection = 0;

  [(_UIRemoteKeyboards *)self cleanSuppression];
}

- (void)cleanSuppression
{
  if (self->_externalSuppression >= 1)
  {
    v12 = v5;
    v13 = v4;
    v14 = v3;
    v15 = v2;
    v16 = v6;
    do
    {
      v9 = [UIPeripheralHost sharedInstance:v12];
      [v9 setDeactivatedKeyboard:0 forScene:0];

      externalSuppression = self->_externalSuppression;
      v11 = __OFSUB__(externalSuppression--, 1);
      self->_externalSuppression = externalSuppression;
    }

    while (!((externalSuppression < 0) ^ v11 | (externalSuppression == 0)));
  }

  [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_634];
}

+ (id)keyboardWindowSceneForScreen:(id)screen create:(BOOL)create
{
  createCopy = create;
  screenCopy = screen;
  if (([self enabled] & 1) != 0 && objc_msgSend(self, "wantsUnassociatedWindowSceneForKeyboardWindow"))
  {
    v7 = [UIWindowScene _unassociatedWindowSceneForScreen:screenCopy create:createCopy];
  }

  else
  {
    v7 = [UIWindowScene _keyboardWindowSceneForScreen:screenCopy create:createCopy];
  }

  v8 = v7;

  return v8;
}

- (void)setSnapshotting:(BOOL)snapshotting
{
  snapshottingCopy = snapshotting;
  v19 = *MEMORY[0x1E69E9840];
  takingSnapshot = self->_takingSnapshot;
  self->_takingSnapshot = snapshotting;
  v6 = _UIMainBundleIdentifier();
  v7 = [v6 isEqualToString:@"com.apple.Spotlight"];

  if ((v7 & 1) == 0)
  {
    [(_UIRemoteKeyboards *)self reloadForSnapshotting];
  }

  if (takingSnapshot != snapshottingCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:0, 0];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ([v13 _isTextEffectsWindow])
          {
            [v13 _updateRootViewConstraintsForInterfaceOrientationAndStatusBarHeight];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)sceneUpdated
{
  if (self->_takingSnapshot)
  {
    [(_UIRemoteKeyboards *)self reloadForSnapshotting];
  }
}

- (BOOL)sceneIsFullScreen
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  scene = [v2 scene];
  _FBSScene = [scene _FBSScene];

  settings = [_FBSScene settings];
  [settings frame];
  v7 = v6;
  v9 = v8;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _referenceBounds];
  v13 = v9 == v12 && v7 == v11;

  return v13;
}

- (void)setWindowEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (![(_UIRemoteKeyboards *)self hasAnyHostedViews]|| !self->_handlingRemoteEvent || self->_handlingViewServiceEvent)
  {

    [(_UIRemoteKeyboards *)self setWindowEnabled:enabledCopy force:0];
  }
}

- (void)setWindowEnabled:(BOOL)enabled force:(BOOL)force
{
  forceCopy = force;
  enabledCopy = enabled;
  v34 = *MEMORY[0x1E69E9840];
  if (![(_UIRemoteKeyboards *)self _usesInvisibleKeyboardBehindWTUI]|| !self->_showsInvisibleKeyboardBehindWTUI)
  {
    if (enabledCopy)
    {
      enabledCopy = self->_restoringKeyboardAfterDismissSiri || [(_UIRemoteKeyboards *)self allowedToEnableKeyboardWindow];
    }

    if (enabledCopy && forceCopy)
    {
      v7 = 2;
    }

    else
    {
      v7 = enabledCopy;
    }

    requiredScene = [(_UIRemoteKeyboards *)self requiredScene];
    identityToken = [requiredScene identityToken];

    v10 = off_1E7117DA8[v7];
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &setWindowEnabled_force____s_category);
    if (*CategoryCachedImpl)
    {
      v28 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = v28;
        stringRepresentation = [identityToken stringRepresentation];
        *buf = 136315650;
        *v33 = "[_UIRemoteKeyboards setWindowEnabled:force:]";
        *&v33[8] = 2080;
        *&v33[10] = v10;
        *&v33[18] = 2112;
        *&v33[20] = stringRepresentation;
        _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "%s: Setting window state: %s for scene identity: %@", buf, 0x20u);
      }
    }

    v12 = +[UIWindow _applicationKeyWindow];
    v13 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:identityToken window:v12];

    v14 = _UIArbiterClientLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];
      _contextId = [keyboardWindow _contextId];
      v17 = _UIKeyboardWindowStateToString(v7);
      v18 = v7;
      v19 = identityToken;
      requiredLevel = self->_requiredLevel;
      [v13 descriptionForLog];
      v21 = v31 = v13;
      *buf = 67109891;
      *v33 = _contextId;
      *&v33[4] = 2114;
      *&v33[6] = v17;
      *&v33[14] = 2048;
      *&v33[16] = requiredLevel;
      identityToken = v19;
      v7 = v18;
      *&v33[24] = 2113;
      *&v33[26] = v21;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "TX setWindowContextID:%u windowState:%{public}@ level:%.1f\n    focusContext:%{private}@", buf, 0x26u);

      v13 = v31;
    }

    proxy = [(_UIRemoteKeyboards *)self proxy];
    keyboardWindow2 = [(_UIRemoteKeyboards *)self keyboardWindow];
    [proxy setWindowContextID:objc_msgSend(keyboardWindow2 focusContext:"_contextId") windowState:v13 withLevel:{v7, self->_requiredLevel}];

    keyboardWindow3 = [(_UIRemoteKeyboards *)self keyboardWindow];
    [keyboardWindow3 setHidden:enabledCopy ^ 1];

    if (self->_windowEnabled != enabledCopy)
    {
      self->_windowEnabled = enabledCopy;
      v25 = +[UIKeyboardImpl activeInstance];
      inputModeIndicatorController = [v25 inputModeIndicatorController];
      [inputModeIndicatorController keyboardWindowEnabled:enabledCopy];
    }

    if (enabledCopy)
    {
      keyboardWindow4 = [(_UIRemoteKeyboards *)self keyboardWindow];
      [keyboardWindow4 _matchDeviceOrientation];
    }
  }
}

- (void)_lostWindow:(id)window
{
  windowCopy = window;
  _screen = [windowCopy _screen];
  mainScreen = [objc_opt_self() mainScreen];

  if (_screen != mainScreen)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 updateLayout];
  }

  lastScreen = self->_lastScreen;
  _screen2 = [windowCopy _screen];

  if (lastScreen == _screen2)
  {
    v9 = self->_lastScreen;
    self->_lastScreen = 0;
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v38 = *MEMORY[0x1E69E9840];
  disconnectCopy = disconnect;
  object = [disconnectCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object2 = [disconnectCopy object];

    if (object2 && [(UIScene *)object2 _hasInvalidated])
    {
      suppressedScene = self->_suppressedScene;
      if (object2 == suppressedScene)
      {
        self->_suppressedScene = 0;
      }

      requiredScene = [(_UIRemoteKeyboards *)self requiredScene];
      v9 = requiredScene;
      if (requiredScene)
      {
        identityToken = [requiredScene identityToken];
        stringRepresentation = [identityToken stringRepresentation];
      }

      else
      {
        stringRepresentation = [(_UIRemoteKeyboards *)self focusedSceneIdentityStringOrIdentifier];
      }

      _FBSScene = [(UIScene *)object2 _FBSScene];
      v13 = _FBSScene;
      if (_FBSScene)
      {
        identityToken2 = [_FBSScene identityToken];
        stringRepresentation2 = [identityToken2 stringRepresentation];
      }

      else
      {
        stringRepresentation2 = [(UIScene *)object2 _sceneIdentifier];
      }

      v16 = BSEqualStrings();
      v17 = +[UIWindowScene _keyWindowScene];
      _isTargetOfKeyboardEventDeferringEnvironment = [v17 _isTargetOfKeyboardEventDeferringEnvironment];

      if ((v16 & 1) != 0 || _isTargetOfKeyboardEventDeferringEnvironment)
      {
        keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];
        v20 = [(_UIRemoteKeyboards *)self wantsToShowKeyboardForWindow:keyboardWindow];

        CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &sceneDidDisconnect____s_category);
        if (*CategoryCachedImpl)
        {
          v24 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = v24;
            v26 = 136316418;
            v27 = "[_UIRemoteKeyboards sceneDidDisconnect:]";
            v28 = 2112;
            v29 = stringRepresentation2;
            v30 = 1024;
            v31 = v16;
            v32 = 1024;
            v33 = v20;
            v34 = 1024;
            currentKeyboard = [(_UIRemoteKeyboards *)self currentKeyboard];
            v36 = 1024;
            keyboardVisible = [(_UIRemoteKeyboards *)self keyboardVisible];
            _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "%s: Performing required scene update for disconnecting scene: %@; needsUpdateToNil: %d; wantsToShowKeyboardForWindow: %d; hasCurrentKeyboard: %d; keyboardVisible: %d", &v26, 0x2Eu);
          }
        }

        if (v16)
        {
          v22 = 0;
          v23 = 0x1000000;
        }

        else
        {
          v22 = +[UIWindow _applicationKeyWindow];
          v23 = 16777472;
        }

        [(_UIRemoteKeyboards *)self _performRequiredSceneUpdateIfPermittedForWindow:v22 withContext:v23 | v16];
      }
    }
  }

  else
  {

    object2 = 0;
  }
}

- (void)applicationDidSuspend:(id)suspend
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(_UIRemoteKeyboards *)self _usesInvisibleKeyboardBehindWTUI]&& self->_showsInvisibleKeyboardBehindWTUI)
  {
    self->_dontSuppressKeyboardAgain = 1;
    [(_UIRemoteKeyboards *)self restoreKeyboardIfNeeded];
  }

  keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];
  v5 = [(_UIRemoteKeyboards *)self wantsToShowKeyboardForWindow:keyboardWindow];

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &applicationDidSuspend____s_category);
  if (*CategoryCachedImpl)
  {
    v19 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      *buf = 136315906;
      v28 = "[_UIRemoteKeyboards applicationDidSuspend:]";
      v29 = 1024;
      v30 = v5;
      v31 = 1024;
      currentKeyboard = [(_UIRemoteKeyboards *)self currentKeyboard];
      v33 = 1024;
      keyboardVisible = [(_UIRemoteKeyboards *)self keyboardVisible];
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "%s: wantsToShowKeyboardForWindow: %d; hasCurrentKeyboard: %d; keyboardVisible: %d", buf, 0x1Eu);
    }
  }

  if (v5)
  {
    keyboardWindow2 = [(_UIRemoteKeyboards *)self keyboardWindow];
    _isHostedInAnotherProcess = [keyboardWindow2 _isHostedInAnotherProcess];

    if ((_isHostedInAnotherProcess & 1) == 0)
    {
      [(_UIRemoteKeyboards *)self setWindowEnabled:0];
    }
  }

  v9 = [UIApp _beginBackgroundTaskWithName:@"_UIRemoteKeyboard XPC disconnection" expirationHandler:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44___UIRemoteKeyboards_applicationDidSuspend___block_invoke;
  aBlock[3] = &unk_1E70F32F0;
  aBlock[4] = self;
  aBlock[5] = v9;
  v10 = _Block_copy(aBlock);
  connection = self->_connection;
  if (connection)
  {
    v12 = _UIArbiterClientLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = _UIMainBundleIdentifier();
      v14 = getpid();
      *buf = 138543618;
      v28 = v13;
      v29 = 1024;
      v30 = v14;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@(%d) invalidateConnection (appDidSuspend)", buf, 0x12u);
    }

    v15 = self->_connection;
    self->_connection = 0;
    v16 = v15;

    [(NSXPCConnection *)v16 setInterruptionHandler:0];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __44___UIRemoteKeyboards_applicationDidSuspend___block_invoke_645;
    v24[3] = &unk_1E70F0F78;
    v25 = v10;
    [(NSXPCConnection *)v16 setInvalidationHandler:v24];
    [(NSXPCConnection *)v16 invalidate];
  }

  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __44___UIRemoteKeyboards_applicationDidSuspend___block_invoke_2;
  v21[3] = &unk_1E70FD0C8;
  v23 = connection != 0;
  v21[4] = self;
  v22 = v10;
  v18 = v10;
  [_systemAnimationFenceExemptQueue performAsync:v21];
}

- (void)applicationWillResume:(id)resume
{
  resumeCopy = resume;
  if (!self->_enqueuedWillEnterForegroundActions)
  {
    self->_enqueuedWillEnterForegroundActions = 1;
    self->_userHasTappedOnKeyboard = 0;
    _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44___UIRemoteKeyboards_applicationWillResume___block_invoke;
    v6[3] = &unk_1E70F35B8;
    v6[4] = self;
    v7 = resumeCopy;
    [_systemAnimationFenceExemptQueue performAsync:v6];
  }
}

- (void)applicationResumedEventsOnly:(id)only
{
  if (!self->_windowEnabled)
  {
    [(_UIRemoteKeyboards *)self applicationWillResume:only];
  }
}

- (void)applicationKeyWindowWillChange:(id)change
{
  changeCopy = change;
  keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];

  if (keyboardWindow)
  {
    isFrontBoard = [UIApp isFrontBoard];
    object = [changeCopy object];
    v8 = object;
    if (isFrontBoard)
    {
      _overriddenInterfaceOrientation = [object _overriddenInterfaceOrientation];
    }

    else
    {
      _overriddenInterfaceOrientation = [object interfaceOrientation];
    }

    v10 = _overriddenInterfaceOrientation;
    v11 = +[UIWindow _applicationKeyWindow];
    v12 = v11;
    if (isFrontBoard)
    {
      _overriddenInterfaceOrientation2 = [v11 _overriddenInterfaceOrientation];
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      _overriddenInterfaceOrientation2 = [v11 interfaceOrientation];
      if (!v8)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    if (!v12 || v10 != _overriddenInterfaceOrientation2)
    {
      keyboardWindow2 = [(_UIRemoteKeyboards *)self keyboardWindow];
      interfaceOrientation = [keyboardWindow2 interfaceOrientation];

      if (interfaceOrientation != v10)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __53___UIRemoteKeyboards_applicationKeyWindowWillChange___block_invoke;
        block[3] = &unk_1E70F5AF0;
        v19 = isFrontBoard;
        v17 = v8;
        selfCopy = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)applicationKeyWindowDidChange:(id)change
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = 16777472;
  changeCopy = change;
  object = [changeCopy object];
  userInfo = [changeCopy userInfo];

  v8 = [userInfo objectForKey:@"Reason"];

  if (v8 && [v8 unsignedIntegerValue] == 1)
  {
    v4 = 0;
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &applicationKeyWindowDidChange____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = _UIRemoteKeyboardsFBSSceneIdentityStringFromSettingsSceneOfWindow(object);
      v13 = 136315906;
      v14 = "[_UIRemoteKeyboards applicationKeyWindowDidChange:]";
      v15 = 2048;
      v16 = object;
      v17 = 2112;
      v18 = v12;
      v19 = 2048;
      unsignedIntegerValue = [v8 unsignedIntegerValue];
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s: Application key window changed to window: %p; scene identity: %@; for reason: %lu", &v13, 0x2Au);
    }
  }

  [(_UIRemoteKeyboards *)self _performRequiredSceneUpdateIfPermittedForWindow:object withContext:v4];
  [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_650_0];
}

- (void)performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:(void *)delegate
{
  v18 = *MEMORY[0x1E69E9840];
  if (delegate)
  {
    keyWindowCandidate = [a2 keyWindowCandidate];
    v4 = keyWindowCandidate;
    if (keyWindowCandidate)
    {
      windowScene = [keyWindowCandidate windowScene];
      _settingsScene = [windowScene _settingsScene];

      _FBSScene = [_settingsScene _FBSScene];

      identityToken = [_FBSScene identityToken];
      stringRepresentation = [identityToken stringRepresentation];

      CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate____s_category);
      if (*CategoryCachedImpl)
      {
        v11 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = 136315650;
          v13 = "[_UIRemoteKeyboards performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:]";
          v14 = 2048;
          v15 = v4;
          v16 = 2112;
          v17 = stringRepresentation;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s: Performing required scene update for candidate window: %p; scene: %@", &v12, 0x20u);
        }
      }

      [(_UIRemoteKeyboards *)delegate _performRequiredSceneUpdateIfPermittedForWindow:v4 withContext:0];
    }
  }
}

- (BOOL)needsToShowKeyboardForWindow:(id)window
{
  windowCopy = window;
  if ([(_UIRemoteKeyboards *)self allowedToShowKeyboard])
  {
    v5 = [(_UIRemoteKeyboards *)self wantsToShowKeyboardForWindow:windowCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)needsToShowKeyboardForViewServiceHostWindow:(id)window
{
  windowCopy = window;
  if ([(_UIRemoteKeyboards *)self allowedToShowKeyboard])
  {
    v5 = [(_UIRemoteKeyboards *)self wantsToShowKeyboardForViewServiceHostWindow:windowCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sceneDidActivate:(id)activate
{
  activateCopy = activate;
  [(_UIRemoteKeyboards *)self clearKeyboardSceneIdentifierEnteringForeground:?];
  if ([(_UIRemoteKeyboards *)self currentKeyboard])
  {
    keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];
    isHidden = [keyboardWindow isHidden];

    if (isHidden)
    {
      object = [activateCopy object];
      v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      scene = [v7 scene];

      if (object == scene)
      {
        [(_UIRemoteKeyboards *)self applicationDidBecomeActive:0];
      }
    }
  }
}

- (void)setKeyboardSceneIdentifierEnteringForegroundForScene:(id)scene
{
  _sceneIdentifier = [scene _sceneIdentifier];
  keyboardSceneIdentifierEnteringForeground = self->_keyboardSceneIdentifierEnteringForeground;
  self->_keyboardSceneIdentifierEnteringForeground = _sceneIdentifier;
}

- (void)clearKeyboardSceneIdentifierEnteringForeground:(id)foreground
{
  object = [foreground object];
  keyboardSceneIdentifierEnteringForeground = self->_keyboardSceneIdentifierEnteringForeground;
  v8 = object;
  _sceneIdentifier = [object _sceneIdentifier];
  LODWORD(keyboardSceneIdentifierEnteringForeground) = [(NSString *)keyboardSceneIdentifierEnteringForeground isEqualToString:_sceneIdentifier];

  if (keyboardSceneIdentifierEnteringForeground)
  {
    v7 = self->_keyboardSceneIdentifierEnteringForeground;
    self->_keyboardSceneIdentifierEnteringForeground = 0;
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  object = [foreground object];
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  scene = [v4 scene];

  v6 = object;
  if (object == scene)
  {
    _sceneIdentifier = [object _sceneIdentifier];
    keyboardSceneIdentifierEnteringForeground = self->_keyboardSceneIdentifierEnteringForeground;
    self->_keyboardSceneIdentifierEnteringForeground = _sceneIdentifier;

    v6 = object;
  }
}

- (void)screenDidDisconnect:(id)disconnect
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  scene = [v4 scene];

  if (-[_UIRemoteKeyboards currentKeyboard](self, "currentKeyboard") && [scene activationState] == 1)
  {
    _sceneIdentifier = [scene _sceneIdentifier];
    keyboardSceneIdentifierEnteringForeground = self->_keyboardSceneIdentifierEnteringForeground;
    self->_keyboardSceneIdentifierEnteringForeground = _sceneIdentifier;
  }
}

- (BOOL)wantsToShowKeyboardForWindow:(id)window
{
  windowCopy = window;
  if ([(_UIRemoteKeyboards *)self currentKeyboard])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(_UIRemoteKeyboards *)self viewHostForWindow:windowCopy];
    v5 = ([v6 hasHostedViews] & 1) != 0 || self->_keyboardSnapshot || -[_UIRemoteKeyboards isOnScreenRotating](self, "isOnScreenRotating");
  }

  return v5;
}

- (BOOL)wantsToShowKeyboardForViewServiceHostWindow:(id)window
{
  v3 = [(_UIRemoteKeyboards *)self viewHostForWindow:window];
  hasHostedViews = [v3 hasHostedViews];

  return hasHostedViews;
}

- (void)updateLastScreen:(id)screen
{
  screenCopy = screen;
  if (self->_enableMultiscreenHack)
  {
    v10 = screenCopy;
    p_lastScreen = &self->_lastScreen;
    if (self->_lastScreen)
    {
      v7 = [(objc_class *)[(_UIRemoteKeyboards *)self keyboardWindowClass] remoteKeyboardWindowForScreen:self->_lastScreen create:0];
      v8 = v7;
      if (v7)
      {
        screen = [v7 screen];

        if (screen != v10)
        {
          [v8 invalidate];
        }
      }
    }

    objc_storeStrong(p_lastScreen, screen);
    screenCopy = v10;
  }
}

- (void)prepareToMoveKeyboard:(CGRect)keyboard withIAV:(CGRect)v isIAVRelevant:(BOOL)relevant showing:(BOOL)showing notifyRemote:(BOOL)remote forScene:(id)scene
{
  remoteCopy = remote;
  showingCopy = showing;
  relevantCopy = relevant;
  height = v.size.height;
  width = v.size.width;
  y = v.origin.y;
  x = v.origin.x;
  v15 = keyboard.size.height;
  v16 = keyboard.size.width;
  v194 = keyboard.origin.x;
  v195 = keyboard.origin.y;
  v205 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (![(_UIRemoteKeyboards *)self _usesInvisibleKeyboardBehindWTUI])
  {
LABEL_5:
    v19 = KeyboardArbiterClientLog_1();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v206.origin.x = v194;
      v206.origin.y = v195;
      v206.size.width = v16;
      v206.size.height = v15;
      v20 = NSStringFromCGRect(v206);
      v21 = [MEMORY[0x1E696AD98] numberWithBool:showingCopy];
      v22 = [MEMORY[0x1E696AD98] numberWithBool:remoteCopy];
      v23 = +[UIKeyboardImpl activeInstance];
      isMinimized = [v23 isMinimized];
      v25 = @"NO";
      *buf = 138413058;
      *v200 = v20;
      *&v200[8] = 2112;
      if (isMinimized)
      {
        v25 = @"YES";
      }

      v201 = v21;
      *v202 = 2112;
      *&v202[2] = v22;
      v203 = 2112;
      v204 = v25;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "[_UIRemoteKeyboards prepareToMoveKeyboard:withIAV:isIAVRelevant:showing:notifyRemote:forScene:] position: %@ visible: %@; notifyRemote: %@; isMinimized: %@", buf, 0x2Au);
    }

    context = objc_autoreleasePoolPush();
    screen = [sceneCopy screen];
    v27 = screen;
    v28 = 0;
    if (self->_enableMultiscreenHack && showingCopy)
    {
      v28 = self->_lastScreen != screen;
      [(_UIRemoteKeyboards *)self updateLastScreen:screen];
    }

    [(_UIRemoteKeyboards *)self setBackupState:0];
    proxy = [(_UIRemoteKeyboards *)self proxy];
    v30 = proxy;
    v31 = height - v15;
    if (!relevantCopy)
    {
      v31 = 0.0;
    }

    [proxy notifyIAVHeight:v31];

    keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];
    rootViewController = [keyboardWindow rootViewController];
    v196 = v27;
    v34 = ([rootViewController isRotating] & 1) != 0 || self->_takingSnapshot;

    keyboardSceneDelegate = [sceneCopy keyboardSceneDelegate];
    responder = [keyboardSceneDelegate responder];
    _window = [responder _window];

    v192 = remoteCopy;
    if (_window)
    {
      v34 |= [_window _requiresKeyboardPresentationFence] ^ 1;
    }

    v38 = +[UIKeyboardImpl activeInstance];
    layoutIsResizing = [v38 layoutIsResizing];

    v188 = layoutIsResizing;
    if (layoutIsResizing)
    {
      v40 = 1;
    }

    else
    {
      keyboardWindow2 = [(_UIRemoteKeyboards *)self keyboardWindow];
      rootViewController2 = [keyboardWindow2 rootViewController];
      isTransitioningBetweenFloatingStates = [rootViewController2 isTransitioningBetweenFloatingStates];

      v40 = isTransitioningBetweenFloatingStates | v34;
    }

    v44 = objc_opt_class();
    keyboardVisible = [(_UIRemoteKeyboards *)self keyboardVisible];
    v46 = keyboardVisible;
    if (!showingCopy)
    {
      if (![(_UIRemoteKeyboards *)self currentKeyboard])
      {
        if ((v40 & 1) == 0)
        {
          currentState = [(_UIRemoteKeyboards *)self currentState];
          animationFence = [currentState animationFence];
          [sceneCopy _synchronizeDrawingWithFence:animationFence];
        }

        currentState2 = [(_UIRemoteKeyboards *)self currentState];
        [currentState2 resetAnimationFencing];
        goto LABEL_126;
      }

      if (!v46)
      {
        _isHostedInAnotherProcess = 1;
        goto LABEL_73;
      }

      informationForKeyboardDown = [v44 informationForKeyboardDown];
      [(_UIRemoteKeyboards *)self updateCurrentState:informationForKeyboardDown];
      _isHostedInAnotherProcess = 1;
LABEL_72:

LABEL_73:
      currentState2 = sceneCopy;
      _FBSScene = [currentState2 _FBSScene];
      v100 = _FBSScene;
      if (_FBSScene)
      {
        identityToken = [_FBSScene identityToken];
        stringRepresentation = [identityToken stringRepresentation];
      }

      else
      {
        stringRepresentation = [currentState2 _sceneIdentifier];
      }

      currentState3 = [(_UIRemoteKeyboards *)self currentState];
      [currentState3 setSourceSceneIdentityString:stringRepresentation];

      v104 = _UIMainBundleIdentifier();
      currentState4 = [(_UIRemoteKeyboards *)self currentState];
      [currentState4 setSourceBundleIdentifier:v104];

      screen2 = [currentState2 screen];
      displayConfiguration = [screen2 displayConfiguration];
      _nameForDisplayType = [displayConfiguration _nameForDisplayType];
      currentState5 = [(_UIRemoteKeyboards *)self currentState];
      [currentState5 setSourceDisplayIdentifier:_nameForDisplayType];

      v110 = _UIMainBundleIdentifier();
      LODWORD(displayConfiguration) = [v110 isEqualToString:@"com.apple.Spotlight"];

      currentState6 = [(_UIRemoteKeyboards *)self currentState];
      [currentState6 setShouldTakeSnapshot:displayConfiguration ^ 1];

      v112 = [(_UIRemoteKeyboards *)self localSceneCount]> 1;
      currentState7 = [(_UIRemoteKeyboards *)self currentState];
      [currentState7 setMultipleScenes:v112];

      v114 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      hardwareKeyboardExclusivityIdentifier = [v114 hardwareKeyboardExclusivityIdentifier];
      currentState8 = [(_UIRemoteKeyboards *)self currentState];
      [currentState8 setIsOneness:hardwareKeyboardExclusivityIdentifier != 0];

      v117 = +[UIKeyboardImpl isFloating];
      currentState9 = [(_UIRemoteKeyboards *)self currentState];
      [currentState9 setIsFloating:v117];

      +[UIKeyboardImpl persistentOffset];
      v120 = v119;
      v122 = v121;
      currentState10 = [(_UIRemoteKeyboards *)self currentState];
      [currentState10 setPersistentOffset:{v120, v122}];

      [(_UIRemoteKeyboards *)self setCurrentKeyboard:showingCopy];
      v124 = _UIArbiterClientLog();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        v125 = "N";
        if (showingCopy)
        {
          v125 = "Y";
        }

        *buf = 136315138;
        *v200 = v125;
        _os_log_impl(&dword_188A29000, v124, OS_LOG_TYPE_DEFAULT, "prepareToMoveKeyboard: set currentKeyboard:%s", buf, 0xCu);
      }

      v191 = sceneCopy;

      currentState11 = [(_UIRemoteKeyboards *)self currentState];
      v127 = _window;
      if ([currentState11 multipleScenes])
      {
        keyboardWindow3 = [(_UIRemoteKeyboards *)self keyboardWindow];
        v129 = [(_UIRemoteKeyboards *)self viewHostForWindow:keyboardWindow3];
        hasHostedViews = [v129 hasHostedViews];

        if (hasHostedViews)
        {
          v131 = v46;
          v132 = [MEMORY[0x1E696AD98] numberWithBool:showingCopy];
          currentKeyboardsBySceneIdentifier = self->_currentKeyboardsBySceneIdentifier;
          currentState12 = [(_UIRemoteKeyboards *)self currentState];
          sourceSceneIdentityString = [currentState12 sourceSceneIdentityString];
          [(NSMutableDictionary *)currentKeyboardsBySceneIdentifier setObject:v132 forKeyedSubscript:sourceSceneIdentityString];

          goto LABEL_85;
        }
      }

      else
      {
      }

      v131 = v46;
      [(NSMutableDictionary *)self->_currentKeyboardsBySceneIdentifier removeAllObjects];
LABEL_85:
      [(_UIRemoteKeyboards *)self setYieldingKeyboardToIgnoredScene:0];
      v136 = off_1E70EA000;
      v137 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      hasVisibleAssistantBar = [v137 hasVisibleAssistantBar];
      currentState13 = [(_UIRemoteKeyboards *)self currentState];
      [currentState13 setAssistantBarVisible:hasVisibleAssistantBar];

      visualModeManager = [v137 visualModeManager];
      windowingModeEnabled = [visualModeManager windowingModeEnabled];

      visualModeManager2 = [v137 visualModeManager];
      shouldShowWithinAppWindow = [visualModeManager2 shouldShowWithinAppWindow];

      v144 = +[UIKeyboardImpl isFloating];
      v145 = +[UIKeyboardImpl isFloatingForced];
      if (windowingModeEnabled)
      {
        v146 = v145;
        if (shouldShowWithinAppWindow)
        {
          v147 = 1;
        }

        else
        {
          currentState14 = [(_UIRemoteKeyboards *)self currentState];
          keyboardOnScreen = [currentState14 keyboardOnScreen];

          if (keyboardOnScreen)
          {
            if (v146)
            {
              v150 = 3;
            }

            else
            {
              v150 = 0;
            }

            if (v144)
            {
              v147 = v150;
            }

            else
            {
              v147 = 3;
            }
          }

          else
          {
            v147 = 2;
          }
        }

        v151 = +[UIKeyboardVisualModeManager visualModeLog];
        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
        {
          currentState15 = [(_UIRemoteKeyboards *)self currentState];
          keyboardOnScreen2 = [currentState15 keyboardOnScreen];
          *buf = 67110400;
          *v200 = 1;
          *&v200[4] = 1024;
          *&v200[6] = shouldShowWithinAppWindow;
          LOWORD(v201) = 1024;
          *(&v201 + 2) = keyboardOnScreen2;
          HIWORD(v201) = 1024;
          *v202 = v144;
          *&v202[4] = 1024;
          *&v202[6] = v146;
          v203 = 2048;
          v204 = v147;
          _os_log_debug_impl(&dword_188A29000, v151, OS_LOG_TYPE_DEBUG, "prepareToMoveKeyboard (SM: %d, WVM: %d, OS: %d, FL: %d, FF: %d) -> uiPosition: %lu", buf, 0x2Au);
        }

        currentState16 = [(_UIRemoteKeyboards *)self currentState];
        [currentState16 setUiPosition:v147];

        v136 = off_1E70EA000;
      }

      v153 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      containerRootController = [v153 containerRootController];
      isSnapshotting = [containerRootController isSnapshotting];

      if ([(_UIRemoteKeyboards *)self _isWritingToolsHandlingKeyboardTracking])
      {
        v156 = v131;
        if ([(_UIRemoteKeyboards *)self hasActiveKeyboardSuppressionAssertionsForReason:@"WritingTools"])
        {
          currentState17 = [(_UIRemoteKeyboards *)self currentState];
          [currentState17 keyboardPosition];
          v209.origin.x = v158;
          v209.origin.y = v159;
          v209.size.width = v160;
          v209.size.height = v161;
          v207.origin.x = v194;
          v207.origin.y = v195;
          v207.size.width = v16;
          v207.size.height = v15;
          v162 = CGRectEqualToRect(v207, v209);

          currentState18 = [(_UIRemoteKeyboards *)self currentState];
          [currentState18 keyboardPositionWithIAV];
          v210.origin.x = v164;
          v210.origin.y = v165;
          v210.size.width = v166;
          v210.size.height = v167;
          v208.origin.x = x;
          v208.origin.y = y;
          v208.size.width = width;
          v208.size.height = height;
          v168 = CGRectEqualToRect(v208, v210);

          _window = v127;
          if (![(_UIRemoteKeyboards *)self currentKeyboard]|| v162 && v168)
          {
            v170 = KeyboardArbiterClientLog_1();
            sceneCopy = v191;
            if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, v170, OS_LOG_TYPE_DEFAULT, "-prepareToMoveKeyboards: do not signalKeyboardChanged since it has been suppressed for WritingTools", buf, 2u);
            }

            v169 = 1;
          }

          else
          {
            v169 = 0;
            sceneCopy = v191;
          }

          v136 = off_1E70EA000;
LABEL_111:
          [(_UIRemoteKeyboardsEventObserver *)self->_eventObserver setKeyboardIsVisible:[(_UIRemoteKeyboards *)self keyboardVisible]];
          if (isSnapshotting & 1 | ((v192 & 1) == 0))
          {
            goto LABEL_120;
          }

          if ([(_UIRemoteKeyboards *)self allowedToShowKeyboard])
          {
            if ((v188 | v169))
            {
LABEL_120:
              self->_expectingInitialState = 0;
              [(_UIRemoteKeyboards *)self checkConnection];
              if (((_isHostedInAnotherProcess | v156) & 1) == 0 && [currentState2 _isKeyWindowScene])
              {
                [(_UIRemoteKeyboards *)self setWindowEnabled:[(_UIRemoteKeyboards *)self allowedToShowKeyboard]];
              }

              currentState19 = [(_UIRemoteKeyboards *)self currentState];
              [currentState19 resetAnimationFencing];

              if ([(_UIRemoteKeyboards *)self pendingAutofillRequest])
              {
                [(_UIRemoteKeyboards *)self assertNeedsAutofillUI];
              }

              [(__objc2_class *)v136[21] performOnControllers:&__block_literal_global_662_0];

LABEL_126:
LABEL_127:

              objc_autoreleasePoolPop(context);
              goto LABEL_128;
            }
          }

          else if (v169 & 1 | (self->_hostedCount == 0) | v188 & 1)
          {
            goto LABEL_120;
          }

          v171 = +[_UIRemoteKeyboardsToken uniqueToken];
          _FBSScene2 = [currentState2 _FBSScene];
          v173 = _FBSScene2;
          if (_FBSScene2)
          {
            identityToken2 = [_FBSScene2 identityToken];
            stringRepresentation2 = [identityToken2 stringRepresentation];

            v136 = off_1E70EA000;
          }

          else
          {
            stringRepresentation2 = [currentState2 _sceneIdentifier];
          }

          [v171 setSceneIdentityString:stringRepresentation2];
          [(NSMutableSet *)self->_pendingKeyboardGrabs addObject:v171];
          currentState20 = [(_UIRemoteKeyboards *)self currentState];
          v177 = [currentState20 copy];
          v197[0] = MEMORY[0x1E69E9820];
          v197[1] = 3221225472;
          v197[2] = __96___UIRemoteKeyboards_prepareToMoveKeyboard_withIAV_isIAVRelevant_showing_notifyRemote_forScene___block_invoke;
          v197[3] = &unk_1E70F35B8;
          v197[4] = self;
          v198 = v171;
          v178 = v171;
          [(_UIRemoteKeyboards *)self signalToProxyKeyboardChanged:v177 onCompletion:v197];

          goto LABEL_120;
        }

        v169 = 0;
      }

      else
      {
        v169 = 0;
        v156 = v131;
      }

      _window = v127;
      sceneCopy = v191;
      goto LABEL_111;
    }

    if (!v28 && keyboardVisible)
    {
      if ([(_UIRemoteKeyboards *)self currentKeyboard])
      {
        if ([(_UIRemoteKeyboards *)self currentStateHasEqualRect:v194 andIAVPosition:v195, v16, v15, x, y, width, height])
        {
          if ([(_UIRemoteKeyboards *)self didSignalKeyboardChangedForCurrentKeyboard])
          {
            if (![(_UIRemoteKeyboards *)self isFloating])
            {
              goto LABEL_127;
            }

            [(_UIRemoteKeyboards *)self persistentOffset];
            v48 = v47;
            v50 = v49;
            +[UIKeyboardImpl persistentOffset];
            if (v48 == v52 && v50 == v51)
            {
              goto LABEL_127;
            }
          }
        }
      }
    }

    informationForKeyboardDown = [(objc_class *)[(_UIRemoteKeyboards *)self keyboardWindowClass] remoteKeyboardWindowForScreen:v196 create:1];
    _isHostedInAnotherProcess = [informationForKeyboardDown _isHostedInAnotherProcess];
    if ([sceneCopy _isKeyWindowScene])
    {
      v54 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
      [v54 windowLevel];
      [informationForKeyboardDown setWindowLevel:v55 + 1.0];
    }

    v186 = v16;
    v187 = height;
    v183 = x;
    v184 = width;
    v182 = y;
    v185 = v15;
    if (!+[UIInputWindowController useMetronomeTracking])
    {
      v61 = height;
      v62 = v16;
      v63 = width;
      v64 = y;
      v65 = x;
      v66 = v15;
      v67 = v62;
      v69 = v194;
      v68 = v195;
      if (!v46)
      {
LABEL_71:
        v98 = [v44 informationForKeyboardUp:v69 withIAV:{v68, v67, v66, v65, v64, v63, v61}];
        [(_UIRemoteKeyboards *)self updateCurrentState:v98];

        [(_UIRemoteKeyboards *)self resetSnapshotWithWindowCheck:0];
        x = v183;
        width = v184;
        y = v182;
        v15 = v185;
        v16 = v186;
        goto LABEL_72;
      }

LABEL_64:
      v92 = v68;
      currentState21 = [(_UIRemoteKeyboards *)self currentState];
      [currentState21 keyboardPosition];
      if (v95 != v186 || v94 != v185)
      {
        v96 = +[UIKeyboardImpl activeInstance];
        v97 = ([v96 updatingPreferences] & 1) == 0 && -[_UIRemoteKeyboards allowedToEnableKeyboardWindow](self, "allowedToEnableKeyboardWindow");
        v192 |= v97;
      }

      v68 = v92;
      height = v187;
      goto LABEL_71;
    }

    if (+[UIKeyboardImpl isFloating])
    {
      +[UIKeyboardImpl floatingPersistentOffset];
    }

    else
    {
      +[UIKeyboardImpl persistentOffset];
    }

    v69 = v56;
    v70 = v57;
    if (v195 == 1.0)
    {
      if (v57 <= 0.0)
      {
        effectiveGeometry = [sceneCopy effectiveGeometry];
        coordinateSpace = [effectiveGeometry coordinateSpace];
        [coordinateSpace bounds];
        v76 = v75 - v15;

        effectiveGeometry2 = [sceneCopy effectiveGeometry];
        coordinateSpace2 = [effectiveGeometry2 coordinateSpace];
        screen3 = [sceneCopy screen];
        [screen3 coordinateSpace];
        v79 = sceneCopy;
        v80 = _window;
        v82 = v81 = v46;
        [coordinateSpace2 convertRect:v82 toCoordinateSpace:{v194, v76, v16, v15}];
        v84 = v83;
        v86 = v85;
        v67 = v87;
        v66 = v88;

        v46 = v81;
        _window = v80;
        sceneCopy = v79;

        v68 = v86;
LABEL_54:
        if (v67 != width || (v61 = v66, v63 = v67, v64 = v68, v65 = v84, v66 != v187))
        {
          v89 = v68;
          [informationForKeyboardDown bounds];
          v68 = v89;
          v61 = v187;
          v64 = v90 - v187;
          v65 = v183;
          v63 = v184;
        }

        if (v69 <= 0.0 || v84 > 1.0)
        {
          v69 = v84;
        }

        height = v187;
        if (!v46)
        {
          goto LABEL_71;
        }

        goto LABEL_64;
      }

      [informationForKeyboardDown bounds];
      v68 = v71 - (v15 + v70);
    }

    else
    {
      if (v195 >= 1.0)
      {
        v66 = v15;
        v67 = v16;
        v68 = v195;
LABEL_53:
        v84 = v194;
        goto LABEL_54;
      }

      [informationForKeyboardDown bounds];
      v68 = v72 - v15;
    }

    v66 = v15;
    v67 = v16;
    goto LABEL_53;
  }

  if (!self->_showsInvisibleKeyboardBehindWTUI || self->_dontSuppressKeyboardAgain)
  {
    self->_showsInvisibleKeyboardBehindWTUI = 0;
    goto LABEL_5;
  }

LABEL_128:
}

- (id)viewHostForWindow:(id)window
{
  windowCopy = window;
  rootViewController = [windowCopy rootViewController];
  view = [rootViewController view];
  v6 = [view conformsToProtocol:&unk_1F0037170];

  if (v6)
  {
    rootViewController2 = [windowCopy rootViewController];
    view2 = [rootViewController2 view];
  }

  else
  {
    view2 = 0;
  }

  return view2;
}

- (void)completeMoveKeyboardForWindow:(id)window
{
  windowCopy = window;
  keyboardWindowClass = [(_UIRemoteKeyboards *)self keyboardWindowClass];
  screen = [windowCopy screen];
  v7 = [(objc_class *)keyboardWindowClass remoteKeyboardWindowForScreen:screen create:0];

  if (v7 == windowCopy)
  {
    [(_UIRemoteKeyboards *)self updateAllVisibleFrames];
    if ([(_UIRemoteKeyboards *)self currentKeyboard])
    {
      rootViewController = [windowCopy rootViewController];
      inputViewSet = [rootViewController inputViewSet];
      isInputViewPlaceholder = [inputViewSet isInputViewPlaceholder];

      if ((isInputViewPlaceholder & 1) == 0)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __52___UIRemoteKeyboards_completeMoveKeyboardForWindow___block_invoke_2;
        v16[3] = &unk_1E70F3590;
        v16[4] = self;
        [UIApp _performBlockAfterCATransactionCommits:v16];
      }
    }
  }

  else if (v7 && ([v7 _isHostedInAnotherProcess] & 1) == 0)
  {
    objc_initWeak(&location, v7);
    objc_initWeak(&from, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52___UIRemoteKeyboards_completeMoveKeyboardForWindow___block_invoke;
    aBlock[3] = &unk_1E70F3DA0;
    objc_copyWeak(&v18, &location);
    objc_copyWeak(&v19, &from);
    v8 = _Block_copy(aBlock);
    v9 = v8;
    if (self->_disablingKeyboard)
    {
      v10 = [v8 copy];
      pendingInvalidateKeyboardWindowBlock = self->_pendingInvalidateKeyboardWindowBlock;
      self->_pendingInvalidateKeyboardWindowBlock = v10;
    }

    else
    {
      v8[2](v8);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  currentState = [(_UIRemoteKeyboards *)self currentState];
  [currentState resetAnimationFencing];
}

- (void)setWindowLevel:(double)level sceneLevel:(double)sceneLevel forResponder:(id)responder
{
  v44 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  keyboardWindowClass = [(_UIRemoteKeyboards *)self keyboardWindowClass];
  _responderWindow = [responderCopy _responderWindow];
  screen = [_responderWindow screen];
  v12 = [(objc_class *)keyboardWindowClass remoteKeyboardWindowForScreen:screen create:0];

  [v12 setWindowLevel:level];
  _responderWindow2 = [responderCopy _responderWindow];
  windowScene = [_responderWindow2 windowScene];
  _settingsScene = [windowScene _settingsScene];

  _FBSScene = [_settingsScene _FBSScene];

  identityToken = [_FBSScene identityToken];
  stringRepresentation = [identityToken stringRepresentation];

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED4997B0);
  if (*CategoryCachedImpl)
  {
    v37 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v39 = 136315650;
      v40 = "[_UIRemoteKeyboards setWindowLevel:sceneLevel:forResponder:]";
      v41 = 2112;
      *v42 = responderCopy;
      *&v42[8] = 2112;
      v43 = stringRepresentation;
      _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "%s: Setting window level for responder: %@; scene identity: %@", &v39, 0x20u);
    }
  }

  _responderWindow3 = [responderCopy _responderWindow];
  _responderWindow4 = [responderCopy _responderWindow];
  windowScene2 = [_responderWindow4 windowScene];
  if ([windowScene2 _isTargetOfKeyboardEventDeferringEnvironment])
  {
    v23 = 1;
  }

  else
  {
    v23 = 16777217;
  }

  [(_UIRemoteKeyboards *)self _performRequiredSceneUpdateIfPermittedForWindow:_responderWindow3 withContext:v23];

  requiredScene = [(_UIRemoteKeyboards *)self requiredScene];
  identityToken2 = [requiredScene identityToken];

  activeSceneIdentity = [v12 activeSceneIdentity];
  v27 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  hardwareKeyboardExclusivityIdentifier = [v27 hardwareKeyboardExclusivityIdentifier];
  v29 = hardwareKeyboardExclusivityIdentifier != 0;

  v30 = BSEqualObjects() ^ 1;
  requiredLevel = self->_requiredLevel;
  if (requiredLevel == sceneLevel)
  {
    v32 = v30;
  }

  else
  {
    v32 = 1;
  }

  if (v29 == self->_hasExclusivityIdentifier)
  {
    v33 = v32;
  }

  else
  {
    v33 = 1;
  }

  v34 = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED4997B8);
  if (*v34)
  {
    v38 = *(v34 + 8);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = 136315906;
      v40 = "[_UIRemoteKeyboards setWindowLevel:sceneLevel:forResponder:]";
      v41 = 1024;
      *v42 = v33;
      *&v42[4] = 1024;
      *&v42[6] = v30;
      LOWORD(v43) = 1024;
      *(&v43 + 2) = requiredLevel != sceneLevel;
      _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "%s: Should reset scene: %d; identitiesAreDifferent: %d; levelsAreDifferent: %d", &v39, 0x1Eu);
    }
  }

  if (v33)
  {
    self->_requiredLevel = sceneLevel;
    self->_hasExclusivityIdentifier = v29;
    [v12 resetScene];
  }

  v35 = [(_UIRemoteKeyboards *)self needsToShowKeyboardForWindow:v12];
  v36 = v35 && [(_UIRemoteKeyboards *)self needsToShowKeyboardForViewServiceHostWindow:v12];
  [(_UIRemoteKeyboards *)self setWindowEnabled:v35 force:v36];
}

- (void)controllerDidLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  if (self->_ignoreLayoutSubviews <= 0 && [(_UIRemoteKeyboards *)self currentKeyboard])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50___UIRemoteKeyboards_controllerDidLayoutSubviews___block_invoke;
    v5[3] = &unk_1E70F35B8;
    v5[4] = self;
    v6 = subviewsCopy;
    [(_UIRemoteKeyboards *)self ignoreLayoutNotifications:v5];
  }
}

- (void)ignoreLayoutNotifications:(id)notifications
{
  ++self->_ignoreLayoutSubviews;
  (*(notifications + 2))(notifications, a2);
  --self->_ignoreLayoutSubviews;
}

- (void)registerController:(id)controller
{
  controllerCopy = controller;
  if (([controllerCopy conformsToProtocol:&unk_1F003A0E0] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Object does not implement expected protocol: %@", controllerCopy}];
  }

  [(NSHashTable *)self->_windowControllers addObject:controllerCopy];
  [controllerCopy setControllerDelegate:self];
}

- (void)unregisterController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setControllerDelegate:0];
  [(NSHashTable *)self->_windowControllers removeObject:controllerCopy];
}

- (void)performOnControllers:(id)controllers
{
  v18 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  v5 = [(NSHashTable *)self->_windowControllers copy];
  keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];
  rootViewController = [keyboardWindow rootViewController];

  if (rootViewController && [v5 containsObject:rootViewController])
  {
    controllersCopy[2](controllersCopy, rootViewController);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (*(*(&v13 + 1) + 8 * v12) != rootViewController)
        {
          (controllersCopy[2])(controllersCopy);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_performOnDistributedControllersExceptSelf:(id)self
{
  selfCopy = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___UIRemoteKeyboards__performOnDistributedControllersExceptSelf___block_invoke;
  v6[3] = &unk_1E71060D0;
  v7 = selfCopy;
  v5 = selfCopy;
  [(_UIRemoteKeyboards *)self performOnControllers:v6];
}

- (void)performOnDistributedControllers:(id)controllers
{
  v4 = *(controllers + 2);
  controllersCopy = controllers;
  v4();
  [(_UIRemoteKeyboards *)self _performOnDistributedControllersExceptSelf:controllersCopy];
}

- (id)prepareForHostedWindowWithScene:(id)scene
{
  sceneCopy = scene;
  screen = [sceneCopy screen];
  v6 = [(objc_class *)[(_UIRemoteKeyboards *)self keyboardWindowClass] remoteKeyboardWindowForScreen:screen create:0];
  ++self->_hostedCount;
  v7 = [(objc_class *)[(_UIRemoteKeyboards *)self keyboardWindowClass] remoteKeyboardWindowForScreen:screen create:1];
  windowScene = [v7 windowScene];
  if (!windowScene || (v9 = windowScene, [v7 windowScene], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "_hasInvalidated"), v10, v9, v11))
  {
    [v7 setWindowScene:sceneCopy];
  }

  [(_UIRemoteKeyboards *)self checkConnection];
  if (self->_hostedCount == 1)
  {
    if (v6)
    {
      [v6 invalidate];
    }

    v12 = +[UIPeripheralHost sharedInstance];
    [v12 forceReloadInputViews];
  }

  return v7;
}

- (void)finishWithHostedWindow
{
  v3 = self->_hostedCount - 1;
  self->_hostedCount = v3;
  if (!v3)
  {
    v4 = +[UIPeripheralHost sharedInstance];
    [v4 forceReloadInputViews];
  }
}

- (BOOL)refreshWithLocalMinimumKeyboardHeight:(double)height forScene:(id)scene
{
  sceneCopy = scene;
  minimumKeyboardHeights = self->_minimumKeyboardHeights;
  _FBSScene = [sceneCopy _FBSScene];
  v9 = _FBSScene;
  if (_FBSScene)
  {
    identityToken = [_FBSScene identityToken];
    stringRepresentation = [identityToken stringRepresentation];
  }

  else
  {
    stringRepresentation = [sceneCopy _sceneIdentifier];
  }

  v12 = [(NSMapTable *)minimumKeyboardHeights objectForKey:stringRepresentation];
  [v12 doubleValue];
  v14 = v13;

  if (v14 != height)
  {
    v15 = self->_minimumKeyboardHeights;
    if (height == 0.0)
    {
      _FBSScene2 = [sceneCopy _FBSScene];
      v17 = _FBSScene2;
      if (_FBSScene2)
      {
        identityToken2 = [_FBSScene2 identityToken];
        stringRepresentation2 = [identityToken2 stringRepresentation];
      }

      else
      {
        stringRepresentation2 = [sceneCopy _sceneIdentifier];
      }

      [(NSMapTable *)v15 removeObjectForKey:stringRepresentation2];
    }

    else
    {
      stringRepresentation2 = [MEMORY[0x1E696AD98] numberWithDouble:height];
      _FBSScene3 = [sceneCopy _FBSScene];
      v21 = _FBSScene3;
      if (_FBSScene3)
      {
        identityToken3 = [_FBSScene3 identityToken];
        stringRepresentation3 = [identityToken3 stringRepresentation];
      }

      else
      {
        stringRepresentation3 = [sceneCopy _sceneIdentifier];
      }

      [(NSMapTable *)v15 setObject:stringRepresentation2 forKey:stringRepresentation3];
    }
  }

  return v14 != height;
}

- (BOOL)hasLocalMinimumKeyboardHeightForScene:(id)scene
{
  sceneCopy = scene;
  minimumKeyboardHeights = self->_minimumKeyboardHeights;
  _FBSScene = [sceneCopy _FBSScene];
  v7 = _FBSScene;
  if (_FBSScene)
  {
    identityToken = [_FBSScene identityToken];
    stringRepresentation = [identityToken stringRepresentation];
  }

  else
  {
    stringRepresentation = [sceneCopy _sceneIdentifier];
  }

  v10 = [(NSMapTable *)minimumKeyboardHeights objectForKey:stringRepresentation];
  [v10 doubleValue];
  v12 = v11;

  return v12 > 0.0;
}

- (double)intersectionHeightForWindowScene:(id)scene isLocalMinimumHeightOut:(BOOL *)out ignoreHorizontalOffset:(BOOL)offset
{
  offsetCopy = offset;
  sceneCopy = scene;
  v10 = 0x1E70E9000uLL;
  if (+[UIKeyboard inputUIOOP])
  {
    selfCopy = self;
    v12 = sceneCopy;
    v13 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    keyboardArbiterClient = [v13 keyboardArbiterClient];

    currentClientState = [keyboardArbiterClient currentClientState];
    if (+[UIKeyboard usesInputSystemUI])
    {
      outCopy = out;
      currentUIState = [keyboardArbiterClient currentUIState];
      bundleIdentifier = [currentUIState bundleIdentifier];
      v18 = _UIMainBundleIdentifier();
      if (([bundleIdentifier isEqualToString:v18] & 1) == 0)
      {

        goto LABEL_9;
      }

      keyboardVisible = [keyboardArbiterClient keyboardVisible];

      out = outCopy;
      v10 = 0x1E70E9000;
      if (keyboardVisible)
      {
        v20 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        currentUIState = [v20 responder];

        inputView = [currentUIState inputView];
        if (inputView)
        {
          bundleIdentifier = inputView;
          goto LABEL_60;
        }

        inputViewController = [currentUIState inputViewController];
        bundleIdentifier = [inputViewController view];

        if (bundleIdentifier)
        {
LABEL_60:
          [bundleIdentifier frame];
          if (v64 == 0.0)
          {
            sceneCopy = v12;

            height = 0.0;
            goto LABEL_91;
          }
        }

LABEL_9:

        out = outCopy;
        v10 = 0x1E70E9000uLL;
      }
    }

    currentUIState2 = [keyboardArbiterClient currentUIState];
    [currentUIState2 keyboardPosition];
    v23 = v28;
    v25 = v29;
    v27 = v30;

    sceneCopy = v12;
    self = selfCopy;
    goto LABEL_11;
  }

  currentClientState = [(_UIRemoteKeyboards *)self currentState];
  [currentClientState keyboardPosition];
  v23 = v22;
  v25 = v24;
  v27 = v26;
LABEL_11:
  v31 = 0.0;
  if (!currentClientState || ([currentClientState avoidIntersectability] & 1) != 0)
  {
    goto LABEL_93;
  }

  keyboardArbiterClient = _UIMainBundleIdentifier();
  v32 = v10;
  if ([keyboardArbiterClient isEqualToString:@"com.apple.Spotlight"] & 1) != 0 || (objc_msgSend(UIApp, "_isSpringBoard"))
  {
    v33 = 0;
  }

  else
  {
    currentUIState = [currentClientState sourceBundleIdentifier];
    height = 0.0;
    if ([currentUIState isEqualToString:@"com.apple.Spotlight"])
    {
LABEL_91:

LABEL_92:
      v31 = height;
      goto LABEL_93;
    }

    v104 = currentUIState;
    v33 = 1;
  }

  v34 = _UIMainBundleIdentifier();
  outCopy2 = out;
  if ([v34 isEqualToString:@"com.apple.CoreAuthUI"] & 1) != 0 || (objc_msgSend(v34, "isEqualToString:", @"com.apple.LocalAuthenticationUIService") & 1) != 0 || (objc_msgSend(UIApp, "_isSpringBoard"))
  {
    v35 = 0;
    goto LABEL_20;
  }

  sourceBundleIdentifier = [currentClientState sourceBundleIdentifier];
  if ([sourceBundleIdentifier isEqualToString:@"com.apple.CoreAuthUI"])
  {

    height = 0.0;
    currentUIState = v104;
    if ((v33 & 1) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  v65 = [sourceBundleIdentifier isEqualToString:@"com.apple.LocalAuthenticationUIService"];
  v66 = sourceBundleIdentifier;
  currentUIState2 = v65;
  v102 = v66;

  v35 = 1;
  LOBYTE(v37) = 1;
  if ((currentUIState2 & 1) == 0)
  {
LABEL_20:
    v108 = v35;
    v110 = v33;
    rect = self;
    v36 = _UIMainBundleIdentifier();
    if ([v36 isEqualToString:@"com.apple.WebSheet"] & 1) != 0 || (objc_msgSend(UIApp, "_isSpringBoard"))
    {
      v37 = 0;
    }

    else
    {
      currentUIState2 = [currentClientState sourceBundleIdentifier];
      v37 = 1;
      if ([currentUIState2 isEqualToString:@"com.apple.WebSheet"])
      {
        goto LABEL_33;
      }
    }

    if (sceneCopy && ![*(v32 + 3824) inputUIOOP])
    {
      v99 = currentUIState2;
      v100 = offsetCopy;
      sourceDisplayIdentifier = [currentClientState sourceDisplayIdentifier];
      v40 = sceneCopy;
      v41 = sourceDisplayIdentifier;
      v101 = v40;
      screen = [v40 screen];
      displayConfiguration = [screen displayConfiguration];
      _nameForDisplayType = [displayConfiguration _nameForDisplayType];
      v45 = [v41 isEqual:_nameForDisplayType];

      if (!v37)
      {

        offsetCopy = v100;
        if (v108)
        {
        }

        sceneCopy = v101;
        self = rect;
        if (v110)
        {
        }

        if (v45)
        {
          goto LABEL_39;
        }

        goto LABEL_93;
      }

      LOBYTE(v37) = v45 ^ 1;
      sceneCopy = v101;
      offsetCopy = v100;
      currentUIState2 = v99;
    }

    else
    {
      if ((v37 & 1) == 0)
      {

        LOBYTE(v37) = 0;
        goto LABEL_34;
      }

      LOBYTE(v37) = 0;
    }

LABEL_33:

LABEL_34:
    self = rect;
    v33 = v110;
    if ((v108 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

LABEL_36:
  if (v33)
  {
  }

  if ((v37 & 1) == 0)
  {
LABEL_39:
    v46 = +[UIWindowScene _keyWindowScene];
    _keyWindow = [(UIWindowScene *)v46 _keyWindow];

    if (_keyWindow && ([_keyWindow _isHostedInAnotherProcess] & 1) == 0)
    {
      v48 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:sceneCopy];
    }

    else
    {
      v48 = [UITextEffectsWindow activeTextEffectsWindowForWindowScene:sceneCopy];
    }

    keyboardArbiterClient = v48;
    v49 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    visualModeManager = [v49 visualModeManager];
    windowingModeEnabled = [visualModeManager windowingModeEnabled];

    if (windowingModeEnabled && ([keyboardArbiterClient hostedViewReference], !CGRectIsEmpty(v114)))
    {
      [keyboardArbiterClient hostedViewReference];
      v109 = v60;
      v111 = v59;
      v57 = v61;
      recta = v62;
    }

    else
    {
      [keyboardArbiterClient actualSceneFrame];
      v109 = v53;
      v111 = v52;
      v55 = v54;
      v57 = v56;
      if ([UIApp _isSpringBoard] && (objc_msgSend(keyboardArbiterClient, "interfaceOrientation") - 3) <= 1 && (objc_msgSend(keyboardArbiterClient, "actualSceneOrientation") - 3) >= 2)
      {
        v109 = 0.0;
        v111 = 0.0;
        recta = v55;
      }

      else
      {
        recta = v57;
        v57 = v55;
      }
    }

    [keyboardArbiterClient _sceneBounds];
    v68 = v67;
    v70 = v69;
    +[UIKeyboardImpl normalizedPersistentOffset];
    v103 = v71;
    v105 = v72;
    v73 = v70;
    if ([keyboardArbiterClient interfaceOrientation])
    {
      keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];
      if ([keyboardWindow interfaceOrientation])
      {
        v75 = ([keyboardArbiterClient interfaceOrientation] - 3) < 2;
        keyboardWindow2 = [(_UIRemoteKeyboards *)self keyboardWindow];
        v77 = v75 ^ (([keyboardWindow2 interfaceOrientation] - 3) < 2);

        if (v77)
        {
          v73 = v68;
        }

        else
        {
          v73 = v70;
        }
      }

      else
      {

        v73 = v70;
      }
    }

    if ([keyboardArbiterClient _shouldResizeWithScene])
    {
      screen2 = [keyboardArbiterClient screen];
      [screen2 bounds];
      v68 = v79;
      v70 = v80;

      v73 = v70;
    }

    v81 = _keyWindow;
    minimumKeyboardHeights = self->_minimumKeyboardHeights;
    _FBSScene = [sceneCopy _FBSScene];
    v84 = _FBSScene;
    if (_FBSScene)
    {
      identityToken = [_FBSScene identityToken];
      stringRepresentation = [identityToken stringRepresentation];
    }

    else
    {
      stringRepresentation = [sceneCopy _sceneIdentifier];
    }

    v87 = [(NSMapTable *)minimumKeyboardHeights objectForKey:stringRepresentation];
    [v87 doubleValue];
    v89 = v88;

    currentUIState = v81;
    if (v89 > 0.0)
    {
      v115.origin.y = v109;
      v115.origin.x = v111;
      v115.size.width = v57;
      v115.size.height = recta;
      v90 = v89 + v73 - CGRectGetMaxY(v115);
      if (outCopy2)
      {
        *outCopy2 = v90 > v27;
      }

      if (v27 < v90)
      {
        v27 = v90;
      }

      v25 = v68;
    }

    v91 = v73 - v27;
    if (offsetCopy)
    {
      v25 = v68;
    }

    if (v91 != 0.0 && v105 != 0.0 && ![(_UIRemoteKeyboards *)self wantsAssistantWhileSuppressingKeyboard])
    {
      if (+[UIKeyboardImpl isFloating])
      {
        +[UIKeyboardImpl floatingPersistentOffset];
        [UIInputViewSetPlacementFloating frameAtOffset:"frameAtOffset:keyboardSize:screenSize:" keyboardSize:? screenSize:?];
        v23 = v92;
        v91 = v93;
        v25 = v94;
        v27 = v95;
      }

      else
      {
        [UIInputViewSetPlacementUndocked computeOffsetForOffset:v103 withSize:v105 chromeBuffer:v68 onScreenSize:v27, 92.0, 0.0, 0.0, 0.0, *&v68, *&v70];
        v23 = v23 + v96;
        v91 = v91 - v97;
      }
    }

    v116.origin.x = v23;
    v116.origin.y = v91;
    v116.size.width = v25;
    v116.size.height = v27;
    v118.origin.y = v109;
    v118.origin.x = v111;
    v118.size.width = v57;
    v118.size.height = recta;
    v117 = CGRectIntersection(v116, v118);
    height = v117.size.height;
    goto LABEL_91;
  }

LABEL_93:

  return v31;
}

- (CGRect)keyboardFrameIncludingRemoteIAV
{
  currentState = [(_UIRemoteKeyboards *)self currentState];
  [currentState keyboardPositionWithRemoteIAV];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)keyboardPosition
{
  currentState = [(_UIRemoteKeyboards *)self currentState];
  [currentState keyboardPosition];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGPoint)persistentOffset
{
  currentState = [(_UIRemoteKeyboards *)self currentState];
  [currentState persistentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (BOOL)remoteKeyboardUndocked:(BOOL)undocked
{
  undockedCopy = undocked;
  if (![(_UIRemoteKeyboards *)self currentKeyboard]|| undockedCopy)
  {
    if ([(_UIRemoteKeyboards *)self keyboardVisible])
    {
      currentState = [(_UIRemoteKeyboards *)self currentState];
      [currentState keyboardPosition];
      MaxY = CGRectGetMaxY(v11);
      v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      scene = [v7 scene];
      screen = [scene screen];
      [screen bounds];
      LOBYTE(undockedCopy) = MaxY < CGRectGetHeight(v12);
    }

    else
    {
      LOBYTE(undockedCopy) = 0;
    }
  }

  return undockedCopy;
}

- (void)addHostedWindowView:(id)view fromPID:(int)d forScene:(id)scene callerID:(id)iD
{
  v8 = *&d;
  viewCopy = view;
  sceneCopy = scene;
  iDCopy = iD;
  if (sceneCopy)
  {
    screen = [sceneCopy screen];
    [(_UIRemoteKeyboards *)self updateLastScreen:screen];
  }

  keyboardWindowClass = [(_UIRemoteKeyboards *)self keyboardWindowClass];
  _activeScreen = [(_UIRemoteKeyboards *)self _activeScreen];
  v16 = [(objc_class *)keyboardWindowClass remoteKeyboardWindowForScreen:_activeScreen create:1];

  [v16 setHidden:0];
  v17 = [(_UIRemoteKeyboards *)self viewHostForWindow:v16];
  objc_initWeak(&location, v17);

  v18 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  proxy = [(_UIRemoteKeyboards *)self proxy];
  [proxy setWindowHostingPID:v8 active:1];

  [(NSMutableArray *)self->_activePIDs addObject:v18];
  if (iDCopy)
  {
    [(NSMutableArray *)self->_activeCIDs addObject:iDCopy];
  }

  _isHostedInAnotherProcess = [v16 _isHostedInAnotherProcess];
  if ((_isHostedInAnotherProcess & 1) == 0)
  {
    [(_UIRemoteKeyboards *)self setWindowEnabled:[(_UIRemoteKeyboards *)self allowedToShowKeyboard]];
  }

  v21 = objc_loadWeakRetained(&location);
  [v16 updateLastRemoteView:1 forView:viewCopy inContainer:v21];

  v22 = objc_loadWeakRetained(&location);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68___UIRemoteKeyboards_addHostedWindowView_fromPID_forScene_callerID___block_invoke;
  v26[3] = &unk_1E7117D88;
  v26[4] = self;
  v23 = v18;
  v27 = v23;
  v32 = _isHostedInAnotherProcess;
  v31 = v8;
  v24 = iDCopy;
  v28 = v24;
  objc_copyWeak(&v30, &location);
  v25 = viewCopy;
  v29 = v25;
  [v22 addHostedView:v25 withViewRemovalHandler:v26];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (void)performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:(uint64_t)window servicePID:
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (*(self + 96) == 1)
    {
      windowScene = [v5 windowScene];
      v8 = windowScene == *(self + 88);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(self + 40);
    v10 = [MEMORY[0x1E696AD98] numberWithInt:window];
    v11 = [v9 containsObject:v10];

    v12 = window ? v11 : 1;
    if (v6 && !v8 && v12)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &performRequiredSceneUpdateIfPermittedForViewServiceHostWindow_servicePID____s_category);
      if (*CategoryCachedImpl)
      {
        v14 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = 136315394;
          v16 = "[_UIRemoteKeyboards performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:servicePID:]";
          v17 = 2048;
          v18 = v6;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "%s: Performing required scene update for window hosting remote ui: %p", &v15, 0x16u);
        }
      }

      [(_UIRemoteKeyboards *)self _performRequiredSceneUpdateIfPermittedForWindow:v6 withContext:0x101010001];
    }
  }
}

- (BOOL)hasWindowHostingCallerID:(id)d
{
  if (d)
  {
    return [(NSMutableArray *)self->_activeCIDs containsObject:?];
  }

  else
  {
    return [(_UIRemoteKeyboards *)self hasAnyHostedViews];
  }
}

- (void)setSuppressingKeyboard:(BOOL)keyboard forScene:(id)scene
{
  keyboardCopy = keyboard;
  v36 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (self->_expectedSuppression != keyboardCopy)
  {
    self->_expectedSuppression = keyboardCopy;
    if (keyboardCopy && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v7 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54___UIRemoteKeyboards_setSuppressingKeyboard_forScene___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_after(v7, MEMORY[0x1E69E96A0], block);
    }

    keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];
    v9 = keyboardWindow;
    if (keyboardWindow)
    {
      containerWindow = keyboardWindow;
    }

    else
    {
      v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      containerWindow = [v11 containerWindow];
    }

    screen = [containerWindow screen];
    v13 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:screen];

    if (keyboardCopy)
    {
      if (!sceneCopy)
      {
        sceneCopy = v13;
      }

      objc_storeStrong(&self->_suppressedScene, sceneCopy);
    }

    else if (!sceneCopy)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1];
      v15 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v31;
LABEL_15:
        v18 = 0;
        while (1)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v30 + 1) + 8 * v18);
          suppressedScene = self->_suppressedScene;
          if (v19 == suppressedScene)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
            if (v16)
            {
              goto LABEL_15;
            }

            goto LABEL_21;
          }
        }

        sceneCopy = suppressedScene;

        if (v19)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_21:
      }

      sceneCopy = v13;
    }

LABEL_24:
    proxy = [(_UIRemoteKeyboards *)self proxy];
    [proxy notifyHostedPIDsOfSuppression:keyboardCopy];

    v22 = +[UIPeripheralHost sharedInstance];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54___UIRemoteKeyboards_setSuppressingKeyboard_forScene___block_invoke_2;
    aBlock[3] = &unk_1E70F5AF0;
    v23 = v22;
    v27 = v23;
    v29 = keyboardCopy;
    sceneCopy = sceneCopy;
    v28 = sceneCopy;
    v24 = _Block_copy(aBlock);
    if ([UIApp isSuspended])
    {
      v25 = +[UIInputViewAnimationStyle animationStyleImmediate];
      [v23 pushAnimationStyle:v25];

      [UIView performWithoutAnimation:v24];
      [v23 popAnimationStyle];
    }

    else
    {
      v24[2](v24);
    }
  }
}

- (void)queue_keyboardSuppressed:(BOOL)suppressed withCompletion:(id)completion
{
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62___UIRemoteKeyboards_queue_keyboardSuppressed_withCompletion___block_invoke;
  v9[3] = &unk_1E70FD0C8;
  suppressedCopy = suppressed;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v9];
}

- (void)queue_keyboardTransition:(id)transition event:(unint64_t)event withInfo:(id)info onComplete:(id)complete
{
  transitionCopy = transition;
  infoCopy = info;
  completeCopy = complete;
  if ([(_UIRemoteKeyboards *)self keyboardActive])
  {
    v13 = _UIArbiterClientLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "RX keyboardTransition:event: (ignoring for keyboardActive", buf, 2u);
    }

    goto LABEL_18;
  }

  if (event > 1)
  {
    if (event == 2)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __73___UIRemoteKeyboards_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_3;
      v28[3] = &unk_1E7106060;
      v29 = transitionCopy;
      v30 = infoCopy;
      v14 = _Block_copy(v28);

      v15 = v29;
    }

    else
    {
      if (event != 3 || ![@"Placement" isEqualToString:transitionCopy])
      {
        goto LABEL_13;
      }

      v16 = [infoCopy objectForKey:@"Placement"];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __73___UIRemoteKeyboards_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_4;
      v25[3] = &unk_1E7106060;
      v26 = v16;
      v27 = infoCopy;
      v15 = v16;
      v14 = _Block_copy(v25);
    }
  }

  else
  {
    if (event)
    {
      if (event == 1)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __73___UIRemoteKeyboards_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_2;
        aBlock[3] = &unk_1E7106060;
        v32 = transitionCopy;
        v33 = infoCopy;
        v14 = _Block_copy(aBlock);

        v15 = v32;
        goto LABEL_16;
      }

LABEL_13:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unknown transition data: %@/%lu/%@", transitionCopy, event, infoCopy}];
      goto LABEL_18;
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __73___UIRemoteKeyboards_queue_keyboardTransition_event_withInfo_onComplete___block_invoke;
    v34[3] = &unk_1E7106060;
    v35 = transitionCopy;
    v36 = infoCopy;
    v14 = _Block_copy(v34);

    v15 = v35;
  }

LABEL_16:

  if (v14)
  {
    _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73___UIRemoteKeyboards_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_5;
    v19[3] = &unk_1E7106088;
    v20 = transitionCopy;
    selfCopy = self;
    eventCopy = event;
    v22 = v14;
    v23 = completeCopy;
    v18 = v14;
    [_systemAnimationFenceExemptQueue performAsync:v19];

    goto LABEL_20;
  }

LABEL_18:
  if (completeCopy)
  {
    completeCopy[2](completeCopy);
  }

LABEL_20:
}

- (void)setDisableBecomeFirstResponder:(BOOL)responder forSuppressionAssertion:(BOOL)assertion updatePlacement:(BOOL)placement wantsAssistant:(BOOL)assistant
{
  if (self->_disablingKeyboard != responder)
  {
    assistantCopy = assistant;
    placementCopy = placement;
    assertionCopy = assertion;
    responderCopy = responder;
    v11 = [(_UIAssertionController *)self->_assertionController hasAssertionsForReason:@"WritingTools"];
    v12 = +[UIPeripheralHost sharedInstance];
    [v12 setDeactivatedKeyboard:responderCopy forScene:0 forSuppressionAssertion:assertionCopy updatePlacement:placementCopy wantsAssistant:assistantCopy keepAccessories:v11];

    self->_disablingKeyboard = responderCopy;
    if (!responderCopy)
    {
      pendingInvalidateKeyboardWindowBlock = self->_pendingInvalidateKeyboardWindowBlock;
      if (pendingInvalidateKeyboardWindowBlock)
      {
        pendingInvalidateKeyboardWindowBlock[2]();
        v14 = self->_pendingInvalidateKeyboardWindowBlock;
        self->_pendingInvalidateKeyboardWindowBlock = 0;
      }
    }
  }
}

- (void)setWantsAssistantWhileSuppressingKeyboard:(BOOL)keyboard
{
  if (self->_wantsAssistantWhileSuppressingKeyboard != keyboard)
  {
    keyboardCopy = keyboard;
    self->_wantsAssistantWhileSuppressingKeyboard = keyboard;
    if (keyboard)
    {
      v5 = +[UIKeyboardImpl activeInstance];
      [v5 _setShouldSuppressAssistantBar:0];
    }

    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v6 _updateVisibilityObserversWithReset:0];

    if ([(_UIRemoteKeyboards *)self disableBecomeFirstResponder])
    {
      v7 = [(_UIAssertionController *)self->_assertionController hasAssertionsForReason:@"WritingTools"];
      v10 = +[UIPeripheralHost sharedInstance];
      v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      nextAnimationStyle = [v8 nextAnimationStyle];
      [v10 updatePlacementForDeactivatedKeyboard:1 forSuppressionAssertion:1 wantsAssistant:keyboardCopy keepAccessories:v7 animationStyle:nextAnimationStyle];
    }
  }
}

- (void)prewarmEmojiKeyboard
{
  v29[4] = *MEMORY[0x1E69E9840];
  gotLoadHelper_x8__OBJC_CLASS___STKPrewarmingViewController(v2);
  v5 = objc_alloc_init(*(v4 + 2560));
  stickerPrewarmingViewController = self->_stickerPrewarmingViewController;
  self->_stickerPrewarmingViewController = v5;

  keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];
  rootViewController = [keyboardWindow rootViewController];

  view = [(UIViewController *)self->_stickerPrewarmingViewController view];
  v10 = view;
  if (view)
  {
    v11 = rootViewController == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
  }

  else
  {
    view2 = [(UIViewController *)self->_stickerPrewarmingViewController view];
    window = [view2 window];
    keyboardWindow2 = [(_UIRemoteKeyboards *)self keyboardWindow];

    if (window != keyboardWindow2)
    {
      [rootViewController addChildViewController:self->_stickerPrewarmingViewController];
      view3 = [rootViewController view];
      view4 = [(UIViewController *)self->_stickerPrewarmingViewController view];
      [view3 addSubview:view4];
      [view4 setTranslatesAutoresizingMaskIntoConstraints:0];
      topAnchor = [view4 topAnchor];
      v28 = view3;
      bottomAnchor = [view3 bottomAnchor];
      v25 = [topAnchor constraintEqualToAnchor:bottomAnchor];
      v29[0] = v25;
      leadingAnchor = [view4 leadingAnchor];
      trailingAnchor = [view3 trailingAnchor];
      v18 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];
      v29[1] = v18;
      widthAnchor = [view4 widthAnchor];
      v20 = [widthAnchor constraintEqualToConstant:1.0];
      v29[2] = v20;
      heightAnchor = [view4 heightAnchor];
      v22 = [heightAnchor constraintEqualToConstant:1.0];
      v29[3] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];

      [MEMORY[0x1E69977A0] activateConstraints:v23];
      [(UIViewController *)self->_stickerPrewarmingViewController didMoveToParentViewController:rootViewController];
    }
  }
}

- (void)setStickerPrewarmingViewControllerEnabled:(BOOL)enabled
{
  stickerPrewarmingViewController = self->_stickerPrewarmingViewController;
  if (enabled)
  {
    if (!stickerPrewarmingViewController)
    {
      if (+[UIKeyboard isRemoteEmojiCollectionViewEnabled])
      {
        v5 = dispatch_time(0, 350000000);
        v6 = dispatch_get_global_queue(17, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __64___UIRemoteKeyboards_setStickerPrewarmingViewControllerEnabled___block_invoke;
        block[3] = &unk_1E70F3590;
        block[4] = self;
        dispatch_after(v5, v6, block);
      }
    }
  }

  else
  {
    [(UIViewController *)stickerPrewarmingViewController willMoveToParentViewController:0];
    view = [(UIViewController *)self->_stickerPrewarmingViewController view];
    [view removeFromSuperview];

    [(UIViewController *)self->_stickerPrewarmingViewController removeFromParentViewController];
    v8 = self->_stickerPrewarmingViewController;
    self->_stickerPrewarmingViewController = 0;
  }
}

- (BOOL)assertionActivationStateForType:(unint64_t)type
{
  if (type > 1)
  {
    if (type != 2)
    {
      return 0;
    }

    _window = [(UIViewController *)self->_stickerPrewarmingViewController _window];
    keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];
    v7 = _window == keyboardWindow;

    return v7;
  }

  else
  {

    return [(_UIRemoteKeyboards *)self disableBecomeFirstResponder];
  }
}

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type
{
  stateCopy = state;
  if (type > 1)
  {
    if (type == 2)
    {

      [(_UIRemoteKeyboards *)self setStickerPrewarmingViewControllerEnabled:?];
    }
  }

  else
  {
    wantsAssistantWhileSuppressingKeyboard = [(_UIRemoteKeyboards *)self wantsAssistantWhileSuppressingKeyboard];

    [(_UIRemoteKeyboards *)self setDisableBecomeFirstResponder:stateCopy forSuppressionAssertion:1 updatePlacement:1 wantsAssistant:wantsAssistantWhileSuppressingKeyboard];
  }
}

- (void)queue_setKeyboardDisabled:(BOOL)disabled withCompletion:(id)completion
{
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63___UIRemoteKeyboards_queue_setKeyboardDisabled_withCompletion___block_invoke;
  v9[3] = &unk_1E70FD0C8;
  disabledCopy = disabled;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v9];
}

- (void)forceKeyboardAway
{
  v3 = _UIArbiterClientLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "TX signalKeyboardChanged (forceKeyboardAway)", buf, 2u);
  }

  v4 = +[_UIKeyboardChangedInformationWithFencing informationForKeyboardDown];
  [(_UIRemoteKeyboards *)self updateLocalKeyboardChanged:v4];
  proxy = [(_UIRemoteKeyboards *)self proxy];
  v6 = [v4 copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39___UIRemoteKeyboards_forceKeyboardAway__block_invoke;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [proxy signalKeyboardChanged:v6 onCompletion:v8];
}

- (void)preserveKeyboardWithId:(id)id
{
  v14 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v5 = _UIArbiterClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = idCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "TX signalKeyboardChanged (preserveKeyboardWithId:%{public}@)", buf, 0xCu);
  }

  v6 = [_UIKeyboardChangedInformationWithFencing informationForKeyboardPreserve:idCopy];
  [(_UIRemoteKeyboards *)self updateLocalKeyboardChanged:v6];
  proxy = [(_UIRemoteKeyboards *)self proxy];
  v8 = [v6 copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45___UIRemoteKeyboards_preserveKeyboardWithId___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [proxy signalKeyboardChanged:v8 onCompletion:v10];
}

- (void)restoreKeyboardWithId:(id)id
{
  v14 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v5 = _UIArbiterClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = idCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "TX signalKeyboardChanged (restoreKeyboardWithId:%{public}@)", buf, 0xCu);
  }

  v6 = [_UIKeyboardChangedInformationWithFencing informationForKeyboardRestore:idCopy];
  [(_UIRemoteKeyboards *)self updateLocalKeyboardChanged:v6];
  proxy = [(_UIRemoteKeyboards *)self proxy];
  v8 = [v6 copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44___UIRemoteKeyboards_restoreKeyboardWithId___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [proxy signalKeyboardChanged:v8 onCompletion:v10];
}

- (void)userSelectedApp:(id)app onCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  appCopy = app;
  completionCopy = completion;
  if (appCopy && ![appCopy isEqualToString:&stru_1EFB14550])
  {
    focusedSceneIdentityStringOrIdentifier = 0;
  }

  else
  {
    requiredScene = [(_UIRemoteKeyboards *)self requiredScene];
    identityToken = [requiredScene identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    [(_UIRemoteKeyboards *)self setFocusedSceneIdentityStringOrIdentifier:stringRepresentation];

    focusedSceneIdentityStringOrIdentifier = [(_UIRemoteKeyboards *)self focusedSceneIdentityStringOrIdentifier];
  }

  v12 = _UIArbiterClientLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = appCopy;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "TX applicationShouldFocusWithBundle (userSelectedApp: %@)", &v16, 0xCu);
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &userSelectedApp_onCompletion____s_category);
  if (*CategoryCachedImpl)
  {
    v15 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = "[_UIRemoteKeyboards userSelectedApp:onCompletion:]";
      v18 = 2112;
      v19 = appCopy;
      v20 = 2112;
      v21 = focusedSceneIdentityStringOrIdentifier;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "%s: Focus bundle: %@, sceneIdentity: %@", &v16, 0x20u);
    }
  }

  if (!completionCopy)
  {
    completionCopy = &__block_literal_global_713;
  }

  proxy = [(_UIRemoteKeyboards *)self proxy];
  [proxy applicationShouldFocusWithBundle:appCopy onCompletion:completionCopy];
}

- (void)pointIsWithinKeyboardContent:(CGPoint)content onCompletion:(id)completion
{
  y = content.y;
  x = content.x;
  completionCopy = completion;
  proxy = [(_UIRemoteKeyboards *)self proxy];
  [proxy pointIsWithinKeyboardContent:completionCopy onCompletion:{x, y}];
}

- (void)userTapsOnKeyboard
{
  if (!self->_userHasTappedOnKeyboard)
  {
    self->_userHasTappedOnKeyboard = 1;
    proxy = [(_UIRemoteKeyboards *)self proxy];
    [proxy userFirstTapOnKeyboard];
  }
}

- (void)updateAllVisibleFrames
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    visualModeManager = [v3 visualModeManager];
    windowingModeEnabled = [visualModeManager windowingModeEnabled];

    if (windowingModeEnabled)
    {
      if (self->_currentKeyboard)
      {
        inputWindowRootViewController = [(_UIRemoteKeyboards *)self inputWindowRootViewController];
        v8 = [UIPeripheralHost allVisibleFrames:inputWindowRootViewController];
      }

      else
      {
        v8 = 0;
      }

      if ([UIApp _isSpringBoard])
      {
        [UIPeripheralHost setAllVisibleFrames:v8];
      }

      else
      {
        proxy = [(_UIRemoteKeyboards *)self proxy];
        [proxy setAllVisibleFrames:v8];
      }
    }
  }
}

- (void)userSelectedProcessIdentifier:(int)identifier withSceneIdentity:(id)identity onCompletion:(id)completion
{
  v6 = *&identifier;
  v27 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  completionCopy = completion;
  stringRepresentation = [identityCopy stringRepresentation];
  if (!identityCopy)
  {
    requiredScene = [(_UIRemoteKeyboards *)self requiredScene];
    identityToken = [requiredScene identityToken];
    stringRepresentation2 = [identityToken stringRepresentation];
    [(_UIRemoteKeyboards *)self setFocusedSceneIdentityStringOrIdentifier:stringRepresentation2];

    focusedSceneIdentityStringOrIdentifier = [(_UIRemoteKeyboards *)self focusedSceneIdentityStringOrIdentifier];

    stringRepresentation = focusedSceneIdentityStringOrIdentifier;
  }

  v15 = _UIArbiterClientLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [identityCopy description];
    v17 = _UISceneIdentityToLogString(v16);
    v23 = 67109378;
    *v24 = v6;
    *&v24[4] = 2114;
    *&v24[6] = v17;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "TX focusApplicationWithPID (userSelectedPID:%d scene:%{public}@)", &v23, 0x12u);
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &userSelectedProcessIdentifier_withSceneIdentity_onCompletion____s_category);
  if (*CategoryCachedImpl)
  {
    v22 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      *v24 = "[_UIRemoteKeyboards userSelectedProcessIdentifier:withSceneIdentity:onCompletion:]";
      *&v24[8] = 1024;
      *&v24[10] = v6;
      v25 = 2112;
      v26 = stringRepresentation;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "%s: Focus PID: %d, sceneIdentity: %@", &v23, 0x1Cu);
    }
  }

  if (!completionCopy)
  {
    completionCopy = &__block_literal_global_718;
  }

  proxy = [(_UIRemoteKeyboards *)self proxy];
  v20 = +[UIWindow _applicationKeyWindow];
  v21 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:identityCopy window:v20];
  [proxy focusApplicationWithProcessIdentifier:v6 context:v21 onCompletion:completionCopy];
}

- (void)requestEventDeferralTargetSelectionForWindow:(id)window
{
  v13 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  if (+[UIKeyboard doesKeyboardFollowEventDeferralTarget])
  {
    [(_UIRemoteKeyboards *)self _performRequiredSceneUpdateIfPermittedForWindow:windowCopy withContext:0x100010001];
    requiredScene = [(_UIRemoteKeyboards *)self requiredScene];
    identityToken = [requiredScene identityToken];

    v7 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:identityToken window:windowCopy];
    v8 = _UIArbiterClientLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      descriptionForLog = [v7 descriptionForLog];
      v11 = 138543362;
      v12 = descriptionForLog;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "TX focusApplication (requestEventDeferralTargetSelection) stealKB:N context:%{public}@", &v11, 0xCu);
    }

    proxy = [(_UIRemoteKeyboards *)self proxy];
    [proxy focusApplicationWithProcessIdentifier:getpid() context:v7 stealingKeyboard:0 onCompletion:&__block_literal_global_723];
  }
}

- (void)_postInputSourceDidChangeNotificationForResponder:(id)responder
{
  v17[2] = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  if (responderCopy)
  {
    responder = responderCopy;
  }

  else
  {
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    responder = [v6 responder];

    if (!responder)
    {
      v14 = @"UITextInputSourceDidChangeInputSourceKey";
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_lastEventSource];
      v15 = v7;
      v8 = MEMORY[0x1E695DF20];
      v9 = &v15;
      v10 = &v14;
      v11 = 1;
      goto LABEL_5;
    }
  }

  v16[0] = @"UITextInputSourceDidChangeInputSourceKey";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_lastEventSource];
  v16[1] = @"UITextInputResponderCapabilitiesChangedInputResponderKey";
  v17[0] = v7;
  v17[1] = responder;
  v8 = MEMORY[0x1E695DF20];
  v9 = v17;
  v10 = v16;
  v11 = 2;
LABEL_5:
  v12 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:v11];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UITextInputSourceDidChangeNotification" object:0 userInfo:v12];
}

- (void)_updateEventSource:(int64_t)keyboardSource options:(unint64_t)options responder:(id)responder
{
  optionsCopy = options;
  responderCopy = responder;
  if (keyboardSource)
  {
    if ((optionsCopy & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((optionsCopy & 8) != 0)
  {
LABEL_6:
    self->_keyboardSource = keyboardSource;
    goto LABEL_7;
  }

  keyboardSource = self->_keyboardSource;
LABEL_7:
  if ((optionsCopy & 0x10) == 0 && self->_lastEventSource == keyboardSource)
  {
    goto LABEL_14;
  }

  self->_lastEventSource = keyboardSource;
  v11 = responderCopy;
  if ((optionsCopy & 1) == 0)
  {
    if ((optionsCopy & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    proxy = [(_UIRemoteKeyboards *)self proxy];
    [proxy signalEventSourceChanged:keyboardSource completionHandler:&__block_literal_global_726];

    responderCopy = v11;
    if ((optionsCopy & 1) == 0)
    {
LABEL_12:
      if ((optionsCopy & 2) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_19;
  }

  [UIScribbleInteraction _lastEventSourceChanged:keyboardSource];
  responderCopy = v11;
  if ((optionsCopy & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((optionsCopy & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_19:
  [(_UIRemoteKeyboards *)self _postInputSourceDidChangeNotificationForResponder:v11];
  responderCopy = v11;
  if ((optionsCopy & 2) != 0)
  {
LABEL_13:
    v9 = +[UIKeyboardImpl activeInstance];
    [v9 _suppressSoftwareKeyboardStateChangedIgnoringPolicyDelegate:0];

    responderCopy = v11;
  }

LABEL_14:
}

- (void)queue_setLastEventSource:(int64_t)source withCompletion:(id)completion
{
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62___UIRemoteKeyboards_queue_setLastEventSource_withCompletion___block_invoke;
  v9[3] = &unk_1E70F5FA8;
  v10 = completionCopy;
  sourceCopy = source;
  v9[4] = self;
  v8 = completionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v9];
}

- (BOOL)_sceneFocusUpdatePermittedForWindow:(id)window
{
  windowCopy = window;
  if (windowCopy && [UIApp _systemShellAllowsInteractionTrackingKeyboardFocusUpdateForWindow:windowCopy] && -[_UIRemoteKeyboards _sceneFocusPermittedForApplication](self, "_sceneFocusPermittedForApplication"))
  {
    windowScene = [windowCopy windowScene];
    v6 = windowScene;
    v7 = 0;
    if (self)
    {
      focusedSceneIdentityStringOrIdentifier = windowScene;
      if (!windowScene)
      {
LABEL_39:

        goto LABEL_40;
      }

      if ([(_UIRemoteKeyboards *)self _sceneFocusPermittedForApplication])
      {
        _keyboardClientComponent = [v6 _keyboardClientComponent];
        if (([_keyboardClientComponent suppressKeyboardFocusRequests] & 1) == 0)
        {
          v10 = +[UIWindowScene _keyWindowScene];

          if (v10 == v6)
          {

LABEL_23:
            if (([windowCopy _isTextEffectsWindow] & 1) != 0 || (objc_msgSend(windowCopy, "_isRemoteKeyboardWindow") & 1) != 0 || (objc_msgSend(windowCopy, "windowScene"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "_FBSScene"), v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v21) || !objc_msgSend(windowCopy, "_isHostedInAnotherProcess"))
            {
              isKindOfClass = 0;
            }

            else
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
            }

            _canUpdateSceneFocus = [windowCopy _canUpdateSceneFocus];
            if ((isKindOfClass & 1) == 0 && !_canUpdateSceneFocus || ![windowCopy _appearsInLoupe])
            {
LABEL_34:
              v7 = 0;
LABEL_40:

              goto LABEL_19;
            }

            focusedSceneIdentityStringOrIdentifier = [(_UIRemoteKeyboards *)self focusedSceneIdentityStringOrIdentifier];
            _keyboardClientComponent = _UIRemoteKeyboardsFBSSceneIdentityStringOrIdentifierFromScene(v6);
            keyboardVisible = [(_UIRemoteKeyboards *)self keyboardVisible];
            if (focusedSceneIdentityStringOrIdentifier)
            {
              v25 = BSEqualStrings() ^ 1;
            }

            else
            {
              LOBYTE(v25) = 1;
            }

            v26 = +[UIWindow _applicationKeyWindow];

            if (isKindOfClass)
            {
              v27 = BSEqualStrings();
              if (v26 == windowCopy)
              {
                v28 = 0;
              }

              else
              {
                v28 = v27;
              }
            }

            else
            {
              v28 = 0;
            }

            if (keyboardVisible)
            {
              v7 = v25 | v28;
            }

            else
            {
              v7 = 1;
            }

            goto LABEL_38;
          }

          screen = [v6 screen];
          if (([screen _userInterfaceIdiom] - 2) > 2)
          {
            v12 = [_UIRemoteKeyboards keyboardWindowSceneForScreen:screen create:0];
            session = [v6 session];
            role = [session role];
            v15 = [role isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"];

            activationState = [v6 activationState];
            activationState2 = [v6 activationState];
            if (v12 != v6)
            {
              if (activationState != 1 && activationState2 != 0)
              {
                v15 = 1;
              }

              if (v15)
              {
                goto LABEL_34;
              }

              goto LABEL_23;
            }
          }
        }

        v7 = 0;
        focusedSceneIdentityStringOrIdentifier = v6;
LABEL_38:

        goto LABEL_39;
      }

      v7 = 0;
    }

    focusedSceneIdentityStringOrIdentifier = v6;
    goto LABEL_39;
  }

  v7 = 0;
LABEL_19:

  return v7 & 1;
}

- (void)peekApplicationEvent:(id)event
{
  v55 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([(_UIRemoteKeyboards *)self _usesInvisibleKeyboardBehindWTUI]&& self->_showsInvisibleKeyboardBehindWTUI)
  {
    self->_dontSuppressKeyboardAgain = 1;
  }

  if (![eventCopy type])
  {
    [(_UIRemoteKeyboardsEventObserver *)self->_eventObserver peekApplicationEvent:eventCopy];
    _sceneFocusPermittedForApplication = [(_UIRemoteKeyboards *)self _sceneFocusPermittedForApplication];
    allTouches = [eventCopy allTouches];
    anyObject = [allTouches anyObject];

    phase = [anyObject phase];
    if (_sceneFocusPermittedForApplication)
    {
      if (phase)
      {
        v9 = phase == 3;
      }

      else
      {
        v9 = 1;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    window = [anyObject window];
    _isRemoteKeyboardWindow = [window _isRemoteKeyboardWindow];

    view = [anyObject view];
    v14 = view;
    if (_isRemoteKeyboardWindow)
    {
      [anyObject window];
    }

    else
    {
      [view _responderWindow];
    }
    v15 = ;
    if (v10)
    {
      v16 = _UITouchIsWithinTiledWindowResizeRegion(anyObject, v15) ? 3 : 0;
      if ([anyObject phase] == v16)
      {
        windowScene = [v15 windowScene];
        _FBSScene = [windowScene _FBSScene];
        v19 = _FBSScene;
        if (_FBSScene)
        {
          identityToken = [_FBSScene identityToken];
          stringRepresentation = [identityToken stringRepresentation];
        }

        else
        {
          stringRepresentation = [windowScene _sceneIdentifier];
        }

        v22 = [(_UIRemoteKeyboards *)self _sceneFocusUpdatePermittedForWindow:v15];
        _wantsTargetOfKeyboardEventDeferringEnvironment = [v14 _wantsTargetOfKeyboardEventDeferringEnvironment];
        if ((_isRemoteKeyboardWindow & 1) == 0)
        {
          v24 = [anyObject type] == 2;
          v25 = +[UIDictationController activeInstance];
          [v25 cancelDictationForResponderIfNeeded:v14 wantsKeyboard:_wantsTargetOfKeyboardEventDeferringEnvironment isPencil:v24];
        }

        [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_729];
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED4997C0);
        if (*CategoryCachedImpl)
        {
          v42 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v48 = "[_UIRemoteKeyboards peekApplicationEvent:]";
            v49 = 1024;
            LODWORD(v50) = v22;
            WORD2(v50) = 2112;
            *(&v50 + 6) = stringRepresentation;
            _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, "%s: Update permitted: %d; for scene identity or identifier: %@", buf, 0x1Cu);
          }
        }

        if (v22)
        {
          keyboardVisible = [(_UIRemoteKeyboards *)self keyboardVisible];
          _isPointerTouch = [anyObject _isPointerTouch];
          v29 = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED4997C8);
          if (*v29)
          {
            loga = *(v29 + 8);
            if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              v48 = "[_UIRemoteKeyboards peekApplicationEvent:]";
              v49 = 1024;
              LODWORD(v50) = (!keyboardVisible | _isPointerTouch | _wantsTargetOfKeyboardEventDeferringEnvironment) & 1;
              WORD2(v50) = 1024;
              *(&v50 + 6) = keyboardVisible;
              WORD5(v50) = 1024;
              HIDWORD(v50) = _wantsTargetOfKeyboardEventDeferringEnvironment;
              v51 = 1024;
              v52 = _isPointerTouch & 1;
              v53 = 2112;
              v54 = stringRepresentation;
              _os_log_impl(&dword_188A29000, loga, OS_LOG_TYPE_ERROR, "%s: Request scene focus: %d; keyboardOnScreen: %d; wantsKeyboard: %d; touchIsPointer: %d; for scene identity or identifier: %@", buf, 0x2Eu);
            }
          }

          if ((!keyboardVisible | _isPointerTouch | _wantsTargetOfKeyboardEventDeferringEnvironment))
          {
            v30 = 0x100010001;
            if (_wantsTargetOfKeyboardEventDeferringEnvironment && ![v14 isFirstResponder])
            {
              v30 = 65537;
            }

            [(_UIRemoteKeyboards *)self _performRequiredSceneUpdateIfPermittedForWindow:v15 withContext:v30];
            requiredScene = [(_UIRemoteKeyboards *)self requiredScene];
            identityToken2 = [requiredScene identityToken];

            v33 = [(_UIRemoteKeyboards *)self currentKeyboard]| _wantsTargetOfKeyboardEventDeferringEnvironment;
            log = v33 ^ 1;
            v34 = _UIArbiterClientLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v43 = stringRepresentation;
              if (v33)
              {
                v35 = "N";
              }

              else
              {
                v35 = "Y";
              }

              v36 = [identityToken2 description];
              v37 = _UISceneIdentityToLogString(v36);
              *buf = 136315394;
              v48 = v35;
              stringRepresentation = v44;
              v49 = 2114;
              *&v50 = v37;
              _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_DEFAULT, "TX focusApplication (peekAppEvent) stealKB:%s scene:%{public}@", buf, 0x16u);
            }

            proxy = [(_UIRemoteKeyboards *)self proxy];
            v39 = getpid();
            v40 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:identityToken2 window:v15];
            [proxy focusApplicationWithProcessIdentifier:v39 context:v40 stealingKeyboard:log & 1 onCompletion:&__block_literal_global_733];

            if (([v15 _isApplicationKeyWindow] & 1) == 0)
            {
              [(_UIRemoteKeyboards *)self setUpdatingKeyWindow:1];
              [v15 makeKeyWindow];
              [(_UIRemoteKeyboards *)self setUpdatingKeyWindow:0];
            }
          }

          else
          {
            windowScene2 = [v15 windowScene];
            identityToken2 = [windowScene2 keyboardSceneDelegate];

            [identityToken2 setKeyWindowCandidate:v15];
          }
        }
      }
    }
  }
}

- (void)restorePreservedInputViewsIfNecessary
{
  [(_UIRemoteKeyboards *)self userSelectedApp:0 onCompletion:0];

  [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_735];
}

- (BOOL)shouldAllowInputViewsRestoredForId:(id)id
{
  idCopy = id;
  if ([(_UIRemoteKeyboards *)self keyboardActive])
  {
    v5 = 1;
  }

  else if ([(_UIRemoteKeyboards *)self _isWritingToolsHandlingKeyboardTracking])
  {
    yieldingKeyboardToIgnoredScene = [(_UIRemoteKeyboards *)self yieldingKeyboardToIgnoredScene];
    v5 = yieldingKeyboardToIgnoredScene != 0;
  }

  else
  {
    v5 = 0;
  }

  bundlesThatShouldNotPreventRestoration = [objc_opt_class() bundlesThatShouldNotPreventRestoration];
  currentState = [(_UIRemoteKeyboards *)self currentState];
  sourceBundleIdentifier = [currentState sourceBundleIdentifier];
  if (([bundlesThatShouldNotPreventRestoration containsObject:sourceBundleIdentifier] & 1) != 0 || v5 | !-[_UIRemoteKeyboards keyboardVisible](self, "keyboardVisible"))
  {
    v10 = 1;
  }

  else
  {
    v10 = [idCopy isEqual:@"remote-keyboards"];
  }

  return v10;
}

- (void)applicationWillAddDeactivationReason:(id)reason
{
  userInfo = [reason userInfo];
  v5 = [userInfo objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  integerValue = [v5 integerValue];

  if (integerValue > 13)
  {
    if ((integerValue - 14) >= 3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  switch(integerValue)
  {
    case 2:
      self->_deactivatedByControlCenter = 1;
      break;
    case 7:
LABEL_7:
      focusedSceneIdentityStringOrIdentifier = [(_UIRemoteKeyboards *)self focusedSceneIdentityStringOrIdentifier];
      self->_hadFocusBeforeOverlay = focusedSceneIdentityStringOrIdentifier != 0;

      break;
    case 13:
      self->_deactivatedBySystemAlert = 1;
      break;
  }

LABEL_8:
  if ([(_UIRemoteKeyboards *)self currentKeyboard])
  {
    goto LABEL_9;
  }

  if (![(_UIRemoteKeyboards *)self keyboardVisible])
  {
    return;
  }

  currentState = [(_UIRemoteKeyboards *)self currentState];
  hostBundleIdentifier = [currentState hostBundleIdentifier];
  v11 = _UIMainBundleIdentifier();
  if ([hostBundleIdentifier isEqualToString:v11])
  {

LABEL_9:
    if (integerValue == 12)
    {
      v8 = _UIArbiterClientLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "TX setDeactivating: Y (+DeactivationReason:SuspendedEventsOnly)", buf, 2u);
      }

      proxy = [(_UIRemoteKeyboards *)self proxy];
      [proxy setDeactivating:1];
    }

    return;
  }
}

- (void)applicationDidRemoveDeactivationReason:(id)reason
{
  userInfo = [reason userInfo];
  v5 = [userInfo objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  integerValue = [v5 integerValue];

  if (integerValue <= 12)
  {
    if (integerValue == 2)
    {
      self->_deactivatedByControlCenter = 0;
      return;
    }

    if (integerValue != 7)
    {
      goto LABEL_11;
    }
  }

  else if ((integerValue - 14) >= 3)
  {
    if (integerValue == 13)
    {
      self->_deactivatedBySystemAlert = 0;
    }

    return;
  }

  if (self->_hadFocusBeforeOverlay)
  {
    focusedSceneIdentityStringOrIdentifier = [(_UIRemoteKeyboards *)self focusedSceneIdentityStringOrIdentifier];

    if (focusedSceneIdentityStringOrIdentifier)
    {
      proxy = [(_UIRemoteKeyboards *)self proxy];
      [proxy applicationShouldFocusWithBundle:0 onCompletion:&__block_literal_global_740];
    }
  }

  self->_hadFocusBeforeOverlay = 0;
LABEL_11:
  if (integerValue == 12)
  {
    v9 = _UIArbiterClientLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Send setDeactivating: N (-DeactivationReason:SuspendedEventsOnly)", v11, 2u);
    }

    proxy2 = [(_UIRemoteKeyboards *)self proxy];
    [proxy2 setDeactivating:0];
  }
}

- (void)applicationWillResignActive:(id)active
{
  if ([(_UIRemoteKeyboards *)self currentKeyboard])
  {
    if (!self->_deactivatedByControlCenter)
    {
      v4 = _UIMainBundleIdentifier();
      v5 = [v4 isEqualToString:@"com.apple.Spotlight"];

      if ((v5 & 1) == 0)
      {
        currentState = [(_UIRemoteKeyboards *)self currentState];
        v7 = [currentState copyWithIntersectability:0];

        [v7 setShouldTakeSnapshot:0];
        [(_UIRemoteKeyboards *)self signalToProxyKeyboardChanged:v7 onCompletion:&__block_literal_global_742];
      }
    }
  }

  inputWindowRootViewController = [(_UIRemoteKeyboards *)self inputWindowRootViewController];
  presentedViewController = [inputWindowRootViewController presentedViewController];

  if (presentedViewController)
  {
    inputWindowRootViewController2 = [(_UIRemoteKeyboards *)self inputWindowRootViewController];
    presentedViewController2 = [inputWindowRootViewController2 presentedViewController];
    [presentedViewController2 dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)applicationDidBecomeActive:(id)active forceSignalToProxy:(BOOL)proxy
{
  activeCopy = active;
  if (proxy || [(_UIRemoteKeyboards *)self currentKeyboard]&& !self->_deactivatedByControlCenter)
  {
    backupState = [(_UIRemoteKeyboards *)self backupState];
    v7 = backupState;
    if (backupState)
    {
      v8 = [backupState copyWithIntersectability:1];
    }

    else
    {
      currentState = [(_UIRemoteKeyboards *)self currentState];
      v8 = [currentState copyWithIntersectability:1];
    }

    [v8 setShouldTakeSnapshot:0];
    [(_UIRemoteKeyboards *)self signalToProxyKeyboardChanged:v8 onCompletion:&__block_literal_global_744];
    keyboardWindow = [(_UIRemoteKeyboards *)self keyboardWindow];
    _isHostedInAnotherProcess = [keyboardWindow _isHostedInAnotherProcess];

    if ((_isHostedInAnotherProcess & 1) == 0)
    {
      [(_UIRemoteKeyboards *)self setWindowEnabled:1];
    }
  }

  self->_deactivatedByControlCenter = 0;
}

- (void)setEnableMultiscreenHack:(BOOL)hack
{
  v10 = _UIMainBundleIdentifier();
  if (([v10 isEqualToString:@"com.apple.mobilenotes"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"com.apple.sidecar.extension.display") & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D930];
    v8 = _UIMainBundleIdentifier();
    v9 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Application '%@' not permitted to use '%@'", v8, v9}];
  }

  self->_enableMultiscreenHack = hack;
}

- (BOOL)keyboardIsForSystemService
{
  if (![(_UIKeyboardUIInformation *)self->_currentState keyboardOnScreen])
  {
    return 0;
  }

  sourceBundleIdentifier = [(_UIKeyboardChangedInformation *)self->_currentState sourceBundleIdentifier];
  v4 = _UIMainBundleIdentifier();
  if ([sourceBundleIdentifier isEqualToString:v4])
  {
    v5 = 0;
  }

  else
  {
    sourceBundleIdentifier2 = [(_UIKeyboardChangedInformation *)self->_currentState sourceBundleIdentifier];
    if ([sourceBundleIdentifier2 isEqualToString:@"com.apple.Spotlight"])
    {
      v5 = 1;
    }

    else
    {
      sourceBundleIdentifier3 = [(_UIKeyboardChangedInformation *)self->_currentState sourceBundleIdentifier];
      if ([sourceBundleIdentifier3 isEqualToString:@"com.apple.siri"])
      {
        v5 = 1;
      }

      else
      {
        sourceBundleIdentifier4 = [(_UIKeyboardChangedInformation *)self->_currentState sourceBundleIdentifier];
        if ([sourceBundleIdentifier4 isEqualToString:@"com.apple.CoreAuthUI"])
        {
          v5 = 1;
        }

        else
        {
          v5 = [sourceBundleIdentifier4 isEqualToString:@"com.apple.LocalAuthenticationUIService"];
        }
      }
    }
  }

  return v5;
}

- (void)startTransition:(id)transition withInfo:(id)info
{
  infoCopy = info;
  transitionCopy = transition;
  proxy = [(_UIRemoteKeyboards *)self proxy];
  [proxy transition:transitionCopy eventStage:0 withInfo:infoCopy];
}

- (void)updateTransition:(id)transition withInfo:(id)info
{
  infoCopy = info;
  transitionCopy = transition;
  proxy = [(_UIRemoteKeyboards *)self proxy];
  [proxy transition:transitionCopy eventStage:1 withInfo:infoCopy];
}

- (void)completeTransition:(id)transition withInfo:(id)info
{
  infoCopy = info;
  transitionCopy = transition;
  proxy = [(_UIRemoteKeyboards *)self proxy];
  [proxy transition:transitionCopy eventStage:2 withInfo:infoCopy];

  [(_UIRemoteKeyboards *)self updateAllVisibleFrames];
}

- (void)setPlacement:(id)placement quietly:(BOOL)quietly animated:(BOOL)animated generateSplitNotification:(BOOL)notification
{
  notificationCopy = notification;
  animatedCopy = animated;
  quietlyCopy = quietly;
  v17[4] = *MEMORY[0x1E69E9840];
  placementCopy = placement;
  proxy = [(_UIRemoteKeyboards *)self proxy];
  v17[0] = placementCopy;
  v16[0] = @"Placement";
  v16[1] = @"Quiet";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:quietlyCopy];
  v17[1] = v12;
  v16[2] = @"Animated";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:animatedCopy];
  v17[2] = v13;
  v16[3] = @"Notify";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:notificationCopy];
  v17[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];

  [proxy transition:@"Placement" eventStage:3 withInfo:v15];
}

@end