@interface _UIRemoteKeyboards
+ (BOOL)enabled;
+ (BOOL)useSystemService;
+ (BOOL)wantsUnassociatedWindowSceneForKeyboardWindow;
+ (id)createArbiterConnection;
+ (id)keyboardWindowSceneForScreen:(id)a3 create:(BOOL)a4;
+ (id)serviceName;
+ (id)sharedRemoteKeyboards;
- (BOOL)_isWritingToolsHandlingKeyboardTracking;
- (BOOL)_sceneFocusPermittedForApplication;
- (BOOL)_sceneFocusUpdatePermittedForWindow:(id)a3;
- (BOOL)allowedToEnableKeyboardWindow;
- (BOOL)allowedToShowKeyboard;
- (BOOL)assertionActivationStateForType:(unint64_t)a3;
- (BOOL)assistantBarVisible;
- (BOOL)currentStateHasEqualRect:(CGRect)a3 andIAVPosition:(CGRect)a4;
- (BOOL)didHandleKeyboardChange:(id)a3 shouldConsiderSnapshottingKeyboard:(BOOL)a4 isLocalEvent:(BOOL)a5;
- (BOOL)hasLocalMinimumKeyboardHeightForScene:(id)a3;
- (BOOL)hasWindowHostingCallerID:(id)a3;
- (BOOL)isFloating;
- (BOOL)isOnScreenRotating;
- (BOOL)isShowingModalAutofillPanel:(id)a3;
- (BOOL)isWritingToolsHostingViewService;
- (BOOL)keyboardIsForSystemService;
- (BOOL)keyboardVisible;
- (BOOL)needsToShowKeyboardForViewServiceHostWindow:(id)a3;
- (BOOL)needsToShowKeyboardForWindow:(id)a3;
- (BOOL)oldPathForSnapshot;
- (BOOL)refreshWithLocalMinimumKeyboardHeight:(double)a3 forScene:(id)a4;
- (BOOL)remoteKeyboardUndocked:(BOOL)a3;
- (BOOL)sceneIsFullScreen;
- (BOOL)shouldAllowInputViewsRestoredForId:(id)a3;
- (BOOL)wantsToShowKeyboardForViewServiceHostWindow:(id)a3;
- (BOOL)wantsToShowKeyboardForWindow:(id)a3;
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
- (double)intersectionHeightForWindowScene:(id)a3 isLocalMinimumHeightOut:(BOOL *)a4 ignoreHorizontalOffset:(BOOL)a5;
- (id)_activeScreen;
- (id)inputWindowRootViewController;
- (id)prepareForHostedWindowWithScene:(id)a3;
- (id)viewHostForWindow:(id)a3;
- (unint64_t)localSceneCount;
- (void)_lostWindow:(id)a3;
- (void)_performOnDistributedControllersExceptSelf:(id)a3;
- (void)_performRequiredSceneUpdateIfPermittedForWindow:(uint64_t)a3 withContext:;
- (void)_postInputSourceDidChangeNotificationForResponder:(id)a3;
- (void)_updateEventSource:(int64_t)keyboardSource options:(unint64_t)a4 responder:(id)a5;
- (void)addHostedWindowView:(id)a3 fromPID:(int)a4 forScene:(id)a5 callerID:(id)a6;
- (void)addIgnoredSceneIdentityTokenString:(id)a3;
- (void)applicationDidBecomeActive:(id)a3 forceSignalToProxy:(BOOL)a4;
- (void)applicationDidRemoveDeactivationReason:(id)a3;
- (void)applicationDidSuspend:(id)a3;
- (void)applicationKeyWindowDidChange:(id)a3;
- (void)applicationKeyWindowWillChange:(id)a3;
- (void)applicationResumedEventsOnly:(id)a3;
- (void)applicationWillAddDeactivationReason:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)applicationWillResume:(id)a3;
- (void)assertNeedsAutofillUI;
- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4;
- (void)checkConnection;
- (void)checkState;
- (void)cleanSuppression;
- (void)clearKeyboardSceneIdentifierEnteringForeground:(id)a3;
- (void)completeMoveKeyboardForWindow:(id)a3;
- (void)completeTransition:(id)a3 withInfo:(id)a4;
- (void)controllerDidLayoutSubviews:(id)a3;
- (void)dealloc;
- (void)finishWithHostedWindow;
- (void)forceKeyboardAway;
- (void)ignoreLayoutNotifications:(id)a3;
- (void)keyboardChangedCompleted;
- (void)peekApplicationEvent:(id)a3;
- (void)performOnControllers:(id)a3;
- (void)performOnDistributedControllers:(id)a3;
- (void)performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:(void *)a1;
- (void)performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:(uint64_t)a3 servicePID:;
- (void)pointIsWithinKeyboardContent:(CGPoint)a3 onCompletion:(id)a4;
- (void)prepareToMoveKeyboard:(CGRect)a3 withIAV:(CGRect)a4 isIAVRelevant:(BOOL)a5 showing:(BOOL)a6 notifyRemote:(BOOL)a7 forScene:(id)a8;
- (void)preserveKeyboardWithId:(id)a3;
- (void)prewarmEmojiKeyboard;
- (void)queue_activeProcessResignWithCompletion:(id)a3;
- (void)queue_endInputSessionWithCompletion:(id)a3;
- (void)queue_failedConnection:(id)a3;
- (void)queue_getDebugInfoWithCompletion:(id)a3;
- (void)queue_keyboardArbiterClientHandleChanged:(BOOL)a3 withCompletion:(id)a4;
- (void)queue_keyboardChanged:(id)a3 onComplete:(id)a4;
- (void)queue_keyboardChangedWithCompletion:(id)a3;
- (void)queue_keyboardIAVChanged:(double)a3 onComplete:(id)a4;
- (void)queue_keyboardSuppressed:(BOOL)a3 withCompletion:(id)a4;
- (void)queue_keyboardTransition:(id)a3 event:(unint64_t)a4 withInfo:(id)a5 onComplete:(id)a6;
- (void)queue_keyboardUIDidChange:(id)a3 onComplete:(id)a4;
- (void)queue_sceneBecameFocused:(id)a3 withCompletion:(id)a4;
- (void)queue_setKeyboardDisabled:(BOOL)a3 withCompletion:(id)a4;
- (void)queue_setLastEventSource:(int64_t)a3 withCompletion:(id)a4;
- (void)registerController:(id)a3;
- (void)removeIgnoredSceneIdentityTokenString:(id)a3;
- (void)requestEventDeferralTargetSelectionForWindow:(id)a3;
- (void)resetSnapshotWithWindowCheck:(BOOL)a3;
- (void)restoreKeyboardIfNeeded;
- (void)restoreKeyboardWithId:(id)a3;
- (void)restorePreservedInputViewsIfNecessary;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneUpdated;
- (void)sceneWillEnterForeground:(id)a3;
- (void)screenDidDisconnect:(id)a3;
- (void)setDisableBecomeFirstResponder:(BOOL)a3 forSuppressionAssertion:(BOOL)a4 updatePlacement:(BOOL)a5 wantsAssistant:(BOOL)a6;
- (void)setEnableMultiscreenHack:(BOOL)a3;
- (void)setKeyboardSceneIdentifierEnteringForegroundForScene:(id)a3;
- (void)setPlacement:(id)a3 quietly:(BOOL)a4 animated:(BOOL)a5 generateSplitNotification:(BOOL)a6;
- (void)setShouldFence:(BOOL)a3;
- (void)setSnapshotting:(BOOL)a3;
- (void)setStickerPrewarmingViewControllerEnabled:(BOOL)a3;
- (void)setSuppressingKeyboard:(BOOL)a3 forScene:(id)a4;
- (void)setWantsAssistantWhileSuppressingKeyboard:(BOOL)a3;
- (void)setWindowEnabled:(BOOL)a3;
- (void)setWindowEnabled:(BOOL)a3 force:(BOOL)a4;
- (void)setWindowLevel:(double)a3 sceneLevel:(double)a4 forResponder:(id)a5;
- (void)signalToProxyKeyboardChanged:(id)a3 onCompletion:(id)a4;
- (void)startConnection;
- (void)startTransition:(id)a3 withInfo:(id)a4;
- (void)stopConnection;
- (void)toggleSuppressionForWritingToolIfNeeded;
- (void)unregisterController:(id)a3;
- (void)updateAllVisibleFrames;
- (void)updateCurrentState:(id)a3;
- (void)updateLastScreen:(id)a3;
- (void)updateLocalKeyboardChanged:(id)a3;
- (void)updateTransition:(id)a3 withInfo:(id)a4;
- (void)userSelectedApp:(id)a3 onCompletion:(id)a4;
- (void)userSelectedProcessIdentifier:(int)a3 withSceneIdentity:(id)a4 onCompletion:(id)a5;
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
  if ([a1 enabled])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43___UIRemoteKeyboards_sharedRemoteKeyboards__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
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
  v2 = [a1 sharedRemoteKeyboards];
  if ([objc_msgSend(v2 "keyboardWindowClass")])
  {
    v3 = 1;
  }

  else
  {
    v3 = [UIApp isFrontBoard];
  }

  return v3;
}

- (id)_activeScreen
{
  lastScreen = self->_lastScreen;
  if (lastScreen)
  {
    v3 = lastScreen;
LABEL_3:
    v4 = v3;
    goto LABEL_6;
  }

  v5 = +[UIWindowScene _keyWindowScene];
  v6 = [v5 screen];

  if (!v6)
  {
    v3 = [objc_opt_self() mainScreen];
    goto LABEL_3;
  }

  v7 = +[UIWindowScene _keyWindowScene];
  v4 = [v7 screen];

LABEL_6:

  return v4;
}

- (UIRemoteKeyboardWindow)keyboardWindow
{
  v3 = [(_UIRemoteKeyboards *)self keyboardWindowClass];
  v4 = [(_UIRemoteKeyboards *)self _activeScreen];
  v5 = [(objc_class *)v3 remoteKeyboardWindowForScreen:v4 create:0];

  return v5;
}

- (double)heightForRemoteIAVPlaceholderIfNecessary
{
  if (![(_UIRemoteKeyboards *)self keyboardVisible])
  {
    return self->_remoteIAVHeight;
  }

  v3 = [(_UIRemoteKeyboards *)self currentState];
  [v3 keyboardPositionWithIAV];
  v5 = v4;
  v6 = [(_UIRemoteKeyboards *)self currentState];
  [v6 keyboardPosition];
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
  v2 = [(_UIRemoteKeyboards *)self currentState];
  v3 = [v2 keyboardOnScreen];

  return v3;
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
  v2 = [(_UIRemoteKeyboards *)self connection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_416];

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
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    windowControllers = v3->_windowControllers;
    v3->_windowControllers = v4;

    v6 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    minimumKeyboardHeights = v3->_minimumKeyboardHeights;
    v3->_minimumKeyboardHeights = v6;

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
      v22 = [MEMORY[0x1E696AD88] defaultCenter];
      [v22 addObserver:v3 selector:sel_sceneDidDisconnect_ name:@"UISceneDidDisconnectNotification" object:0];
      [v22 addObserver:v3 selector:sel_applicationWillResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
      [v22 addObserver:v3 selector:sel_applicationDidSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
      [v22 addObserver:v3 selector:sel_applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];
      [v22 addObserver:v3 selector:sel_applicationDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
      [v22 addObserver:v3 selector:sel_applicationDidBecomeActive_ name:0x1EFBB47D0 object:0];
      [v22 addObserver:v3 selector:sel_applicationWillAddDeactivationReason_ name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
      [v22 addObserver:v3 selector:sel_applicationDidRemoveDeactivationReason_ name:@"_UIApplicationDidRemoveDeactivationReasonNotification" object:0];
      [v22 addObserver:v3 selector:sel_applicationResumedEventsOnly_ name:@"UIApplicationResumedEventsOnlyNotification" object:UIApp];
      [v22 addObserver:v3 selector:sel_applicationKeyWindowWillChange_ name:@"_UIWindowWillBecomeApplicationKeyNotification" object:0];
      [v22 addObserver:v3 selector:sel_applicationKeyWindowDidChange_ name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
      [v22 addObserver:v3 selector:sel_sceneWillEnterForeground_ name:@"UISceneWillEnterForegroundNotification" object:0];
      [v22 addObserver:v3 selector:sel_sceneDidEnterBackground_ name:@"UISceneDidEnterBackgroundNotification" object:0];
      [v22 addObserver:v3 selector:sel_sceneDidActivate_ name:@"UISceneDidActivateNotification" object:0];
      [v22 addObserver:v3 selector:sel_screenDidDisconnect_ name:@"_UIScreenDidDisconnectNotification" object:0];
      [v22 addObserver:v3 selector:sel_updateAllVisibleFrames name:@"UIKeyboardWillToggleCandidateBar" object:0];
      if ([UIApp _isSpringBoard])
      {
        [v22 addObserver:v3 selector:sel_willLock_ name:@"_UISystemApplicationWillLockNotification" object:0];
      }
    }
  }

  return v3;
}

- (void)checkConnection
{
  v3 = [(_UIRemoteKeyboards *)self connection];
  if (v3)
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
    v3 = [UIApp isSuspendedUnderLock];
  }

  else
  {
    v3 = 1;
  }

  v4 = [(_UIRemoteKeyboards *)self keyboardWindow];
  if (([v4 _isHostedInAnotherProcess] & 1) != 0 || (objc_msgSend(UIApp, "isSuspended") & v3) != 1 || +[UIKeyboardImpl isActivatingForeground](UIKeyboardImpl, "isActivatingForeground"))
  {
    v5 = 1;
  }

  else
  {
    v5 = [UIApp _isSpringBoard];
  }

  return v5;
}

- (void)checkState
{
  if ([UIApp _shouldAllowKeyboardArbiter])
  {

    [(_UIRemoteKeyboards *)self checkConnection];
  }

  else
  {
    v3 = [(_UIRemoteKeyboards *)self connection];

    if (v3)
    {

      [(_UIRemoteKeyboards *)self stopConnection];
    }
  }
}

- (BOOL)_sceneFocusPermittedForApplication
{
  v3 = [UIApp _shouldAllowKeyboardArbiter];
  if (v3)
  {

    LOBYTE(v3) = [(_UIRemoteKeyboards *)self allowedToShowKeyboard];
  }

  return v3;
}

+ (id)createArbiterConnection
{
  v2 = [a1 useSystemService];
  v3 = objc_alloc(MEMORY[0x1E696B0B8]);
  v4 = v3;
  if (v2)
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

    v5 = [(_UIRemoteKeyboards *)self connection];

    if (!v5)
    {
      if ([UIApp _shouldAllowKeyboardArbiter])
      {
        [(_UIRemoteKeyboards *)self resetSnapshotWithWindowCheck:0];
        v6 = +[UIDevice currentDevice];
        v7 = [v6 userInterfaceIdiom];

        if ((v7 - 2) >= 3)
        {
          v8 = [objc_opt_class() createArbiterConnection];
          objc_storeStrong(&self->_connection, v8);
          v9 = BSDispatchQueueCreateWithQualityOfService();
          [v8 _setQueue:v9];
          objc_initWeak(buf, v8);
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __37___UIRemoteKeyboards_startConnection__block_invoke;
          v22[3] = &unk_1E70F2F80;
          objc_copyWeak(&v23, buf);
          v22[4] = self;
          [v8 setInterruptionHandler:v22];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __37___UIRemoteKeyboards_startConnection__block_invoke_447;
          v20[3] = &unk_1E70F2F80;
          objc_copyWeak(&v21, buf);
          v20[4] = self;
          [v8 setInvalidationHandler:v20];
          [v8 setExportedObject:self];
          if (v8)
          {
            [v8 resume];
            self->_expectingInitialState = 1;
            self->_remoteIAVHeight = 0.0;
            v10 = [(_UIRemoteKeyboards *)self requiredScene];
            v11 = [(_UIRemoteKeyboards *)self proxy];
            v12 = [(_UIRemoteKeyboards *)self currentKeyboard];
            if (v12)
            {
              v13 = [(_UIRemoteKeyboards *)self currentState];
            }

            else
            {
              v13 = 0;
            }

            if (v10)
            {
              v18 = [v10 identityToken];
              v2 = +[UIWindow _applicationKeyWindow];
              v14 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:v18 window:v2];
            }

            else
            {
              v14 = 0;
            }

            v15 = [(_UIRemoteKeyboards *)self currentHostedPIDs];
            shouldFence = self->_shouldFence;
            expectedSuppression = self->_expectedSuppression;
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __37___UIRemoteKeyboards_startConnection__block_invoke_449;
            v19[3] = &unk_1E7117CF0;
            v19[4] = self;
            [v11 startArbitrationWithExpectedState:v13 focusContext:v14 hostingPIDs:v15 usingFence:shouldFence withSuppression:expectedSuppression onConnected:v19];

            if (v10)
            {
            }

            if (v12)
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
  v2 = self->_requiredScene;
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = v3;
  if (!v2)
  {
    v5 = [v3 scene];
    v2 = [v5 _FBSScene];

    if (!v2)
    {
      v6 = [v4 responder];
      v7 = [v6 _responderWindow];
      v8 = [v7 windowScene];
      v9 = [v8 _settingsScene];
      v2 = [v9 _FBSScene];
    }
  }

  return v2;
}

- (NSArray)currentHostedPIDs
{
  v2 = [MEMORY[0x1E695DFD8] setWithArray:self->_activePIDs];
  v3 = [v2 allObjects];

  return v3;
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
  v2 = [(_UIRemoteKeyboards *)self currentState];
  v3 = [v2 hostBundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.WritingToolsUIService"];

  return v4;
}

- (void)toggleSuppressionForWritingToolIfNeeded
{
  if ([(_UIRemoteKeyboards *)self _usesInvisibleKeyboardBehindWTUI])
  {
    self->_showsInvisibleKeyboardBehindWTUI = 0;
    v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v4 = [v3 responder];

    if ([v4 _isWritingToolsActive])
    {
      v5 = [(_UIRemoteKeyboards *)self currentState];
      v6 = [v5 hostBundleIdentifier];
      if ([v6 isEqualToString:@"com.apple.WritingToolsUIService"])
      {

        goto LABEL_6;
      }

      v7 = [(_UIRemoteKeyboards *)self currentState];
      v8 = [v7 sourceBundleIdentifier];
      v9 = [v8 isEqualToString:@"com.apple.WritingToolsUIService"];

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
        v11 = [(_UIRemoteKeyboards *)self currentState];
        v12 = [v11 keyboardOnScreen];

        if (v12)
        {
          self->_showsInvisibleKeyboardBehindWTUI = 1;
          if ([v4 _writingToolsWantsKeyboardSuppression])
          {
            v13 = v4;
            v14 = 0;
LABEL_11:
            [v13 _setWritingToolsWantsKeyboardSuppression:v14];
            goto LABEL_20;
          }

          v17 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
          v15 = [v17 containerRootController];

          if ([v15 isTransitioning])
          {
            [v15 addPendingActivity:&__block_literal_global_458_0];
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

          v15 = [(_UIRemoteKeyboards *)self currentState];
          if (![v15 keyboardOnScreen])
          {
            v16 = [v4 _writingToolsWantsKeyboardSuppression];

            if (v16)
            {
              goto LABEL_20;
            }

            v13 = v4;
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
  v2 = [(_UIRemoteKeyboards *)self keyboardWindow];
  v3 = [v2 rootViewController];

  return v3;
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
          v9 = [v8 keyboardSceneDelegate];

          if (v9)
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
  v4 = [v3 scene];

  v9 = 0;
  if (v4)
  {
    if (self->_deactivatedByControlCenter || self->_deactivatedBySystemAlert || (keyboardSceneIdentifierEnteringForeground = self->_keyboardSceneIdentifierEnteringForeground, [v4 _sceneIdentifier], v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(keyboardSceneIdentifierEnteringForeground) = -[NSString isEqualToString:](keyboardSceneIdentifierEnteringForeground, "isEqualToString:", v6), v6, (keyboardSceneIdentifierEnteringForeground & 1) != 0) || !objc_msgSend(v4, "activationState") || objc_msgSend(v4, "activationState") == 1 && (-[_UIRemoteKeyboards currentState](self, "currentState"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "keyboardOnScreen"), v7, v8) && ((objc_msgSend(v4, "_canDynamicallySpecifySupportedInterfaceOrientations") & 1) != 0 || (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "visualModeManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "windowingModeEnabled"), v11, v10, objc_msgSend(v4, "_coordinateSpace"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "bounds"), v15 = v14, v17 = v16, v13, objc_msgSend(v4, "screen"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "bounds"), v20 = v19, v22 = v21, v18, (v12 & 1) == 0) && v15 == v20 && v17 == v22))
    {
      v9 = 1;
    }
  }

  return v9;
}

- (void)keyboardChangedCompleted
{
  v7 = [(_UIRemoteKeyboards *)self currentState];
  v3 = [v7 sourceBundleIdentifier];
  if ([v3 isEqualToString:@"com.apple.siri"])
  {
  }

  else
  {
    ignoredSceneIdentityTokenStringSet = self->_ignoredSceneIdentityTokenStringSet;
    v5 = [(_UIRemoteKeyboards *)self currentState];
    v6 = [v5 sourceSceneIdentityString];
    LOBYTE(ignoredSceneIdentityTokenStringSet) = [(NSMutableSet *)ignoredSceneIdentityTokenStringSet containsObject:v6];

    if ((ignoredSceneIdentityTokenStringSet & 1) == 0)
    {

      [(_UIRemoteKeyboards *)self resetSnapshotWithWindowCheck:1];
    }
  }
}

- (BOOL)isFloating
{
  v2 = [(_UIRemoteKeyboards *)self currentState];
  v3 = [v2 isFloating];

  return v3;
}

- (BOOL)assistantBarVisible
{
  v2 = [(_UIRemoteKeyboards *)self currentState];
  v3 = [v2 assistantBarVisible];

  return v3;
}

- (void)dealloc
{
  v6[14] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
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
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  [(_UIRemoteKeyboards *)self stopConnection];
  [(_UIRemoteKeyboards *)self resetSnapshotWithWindowCheck:0];
  v5.receiver = self;
  v5.super_class = _UIRemoteKeyboards;
  [(_UIRemoteKeyboards *)&v5 dealloc];
}

- (BOOL)currentStateHasEqualRect:(CGRect)a3 andIAVPosition:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v13 = [(_UIRemoteKeyboards *)self currentState];
  [v13 keyboardPosition];
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
    v18 = [(_UIRemoteKeyboards *)self currentState];
    [v18 keyboardPositionWithIAV];
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

- (void)updateCurrentState:(id)a3
{
  v16 = a3;
  [v16 keyboardPosition];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v16 keyboardPositionWithIAV];
  if (![(_UIRemoteKeyboards *)self currentStateHasEqualRect:v5 andIAVPosition:v7, v9, v11, v12, v13, v14, v15])
  {
    [(_UIRemoteKeyboards *)self setDidSignalKeyboardChangedForCurrentKeyboard:0];
  }

  [(_UIRemoteKeyboards *)self setCurrentState:v16];
}

- (void)signalToProxyKeyboardChanged:(id)a3 onCompletion:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
    *&v24.val[1] = v6;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "[_UIRemoteKeyboards signalToProxyKeyboardChanged:onCompletion:]  Signaling keyboard changed %@", &v24, 0xCu);
  }

  [(_UIRemoteKeyboards *)self setDidSignalKeyboardChangedForCurrentKeyboard:1];
  v10 = _UIMainBundleIdentifier();
  [v6 setSourceBundleIdentifier:v10];

  v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v12 = [v11 scene];
  v13 = [v12 _FBSScene];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v16 = [v15 scene];
    v17 = [v16 _FBSScene];
    v18 = [v17 hostHandle];
    v19 = [v18 auditToken];

    if (v19)
    {
      [v19 realToken];
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
        [v6 setHostBundleIdentifier:v22];
      }
    }
  }

  [(_UIRemoteKeyboards *)self updateLocalKeyboardChanged:v6, *v24.val, *&v24.val[4]];
  v23 = [(_UIRemoteKeyboards *)self proxy];
  [v23 signalKeyboardChanged:v6 onCompletion:v7];
}

- (void)updateLocalKeyboardChanged:(id)a3
{
  v3 = [a3 copyWithoutFence];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49___UIRemoteKeyboards_updateLocalKeyboardChanged___block_invoke;
  v5[3] = &unk_1E7104050;
  v6 = v3;
  v4 = v3;
  [UIKeyboardSceneDelegate performOnControllers:v5];
}

- (void)assertNeedsAutofillUI
{
  if (+[UIKeyboard usesInputSystemUIForAutoFillOnly])
  {
    v3 = [(_UIRemoteKeyboards *)self currentKeyboard];
    v4 = _UIKeyboardExtendedLog();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Requesting scene for autofill UI", v6, 2u);
      }

      v5 = [(_UIRemoteKeyboards *)self proxy];
      [v5 signalAutofillUIBringupWithCompletion:&__block_literal_global_428];
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "Requesting scene for autofill UI: request is pending -- not yet the current keyboard", buf, 2u);
    }

    [(_UIRemoteKeyboards *)self setPendingAutofillRequest:!v3];
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

- (void)queue_keyboardArbiterClientHandleChanged:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78___UIRemoteKeyboards_queue_keyboardArbiterClientHandleChanged_withCompletion___block_invoke;
  v9[3] = &unk_1E70FD0C8;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performAsync:v9];
}

- (void)queue_activeProcessResignWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [UIApp _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62___UIRemoteKeyboards_queue_activeProcessResignWithCompletion___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performAsync:v7];
}

- (void)queue_failedConnection:(id)a3
{
  v4 = a3;
  v5 = [v4 interruptionHandler];
  v6 = [v4 invalidationHandler];
  [v4 setInterruptionHandler:0];
  [v4 setInvalidationHandler:0];
  v7 = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45___UIRemoteKeyboards_queue_failedConnection___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 performAsync:v9];
}

- (void)setShouldFence:(BOOL)a3
{
  if (self->_shouldFence != a3)
  {
    self->_shouldFence = a3;
    v5 = [(_UIRemoteKeyboards *)self proxy];
    [v5 setWantsFencing:self->_shouldFence];
  }
}

- (void)resetSnapshotWithWindowCheck:(BOOL)a3
{
  keyboardSnapshot = self->_keyboardSnapshot;
  if (keyboardSnapshot)
  {
    v5 = a3;
    [(UIView *)keyboardSnapshot removeFromSuperview];
    v6 = self->_keyboardSnapshot;
    self->_keyboardSnapshot = 0;

    if (v5)
    {

      [(_UIRemoteKeyboards *)self completeMoveKeyboardForWindow:0];
    }
  }
}

- (void)addIgnoredSceneIdentityTokenString:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_ignoredSceneIdentityTokenStringSet addObject:?];
  }
}

- (void)removeIgnoredSceneIdentityTokenString:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_ignoredSceneIdentityTokenStringSet removeObject:?];
  }
}

- (BOOL)isShowingModalAutofillPanel:(id)a3
{
  v3 = a3;
  if (+[UIKeyboard usesInputSystemUIForAutoFillOnly])
  {
    v4 = [v3 sourceBundleIdentifier];
    if ([v4 isEqualToString:@"com.apple.InputUI"])
    {
      v5 = 1;
    }

    else
    {
      v6 = [v3 hostBundleIdentifier];
      v5 = [v6 isEqualToString:@"com.apple.InputUI"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)didHandleKeyboardChange:(id)a3 shouldConsiderSnapshottingKeyboard:(BOOL)a4 isLocalEvent:(BOOL)a5
{
  v5 = a5;
  v78 = a4;
  v127 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  v122 = 0;
  handlingRemoteEvent = self->_handlingRemoteEvent;
  v81 = v5;
  self->_handlingRemoteEvent = !v5;
  v83 = +[UIKeyboardImpl activeInstance];
  if (self->_handlingRemoteEvent)
  {
    if (([v83 isMinimized] & 1) != 0 || (v8 = objc_msgSend(v83, "automaticMinimizationEnabled"), v8 != objc_msgSend(v7, "automaticMinimizationEnabled")))
    {
      [v83 setAutomaticMinimizationEnabled:{objc_msgSend(v7, "automaticMinimizationEnabled")}];
      v9 = [v83 geometryDelegate];
      [v9 syncMinimizedStateToHardwareKeyboardAttachedState];
    }
  }

  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = [(_UIRemoteKeyboards *)self currentKeyboard];
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
  v12 = [v11 responder];
  v13 = [v12 _isHostingRemoteContent];

  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __94___UIRemoteKeyboards_didHandleKeyboardChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke;
  v97[3] = &unk_1E7117D18;
  v79 = v10;
  v98 = v79;
  v14 = v7;
  v104 = v13;
  v99 = v14;
  v100 = self;
  v101 = &v105;
  v102 = &v109;
  v103 = &v115;
  [UIKeyboardSceneDelegate performOnControllers:v97];
  if (v110[5])
  {
    *(v106 + 24) = 0;
  }

  v15 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v16 = [v15 hardwareKeyboardExclusivityIdentifier];

  v17 = [v14 sourceBundleIdentifier];
  if ([v17 isEqualToString:@"com.apple.Spotlight"])
  {
    v18 = (v16 == 0) ^ [v14 isOneness];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v14 sourceBundleIdentifier];
  if ([v19 isEqualToString:@"com.apple.CoreAuthUI"])
  {
    v82 = 1;
  }

  else
  {
    v82 = [v19 isEqualToString:@"com.apple.LocalAuthenticationUIService"];
  }

  v20 = [v14 sourceBundleIdentifier];
  v21 = [v20 isEqualToString:@"com.apple.WebSheet"];

  v22 = [v14 sourceBundleIdentifier];
  v23 = [v22 isEqualToString:@"com.apple.siri"];

  ignoredSceneIdentityTokenStringSet = self->_ignoredSceneIdentityTokenStringSet;
  v25 = [v14 sourceSceneIdentityString];
  v26 = [(NSMutableSet *)ignoredSceneIdentityTokenStringSet containsObject:v25];

  if (v26)
  {
    v27 = _UIArbiterClientLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "handleKeyboardChange: isFromIgnoredScene", buf, 2u);
    }
  }

  v28 = [(_UIRemoteKeyboards *)self currentState];
  v29 = [v28 uiPosition];
  if (v29 == [v14 uiPosition])
  {
    goto LABEL_20;
  }

  v30 = [UIApp _isSpringBoard];

  if (v30)
  {
    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "uiPosition")}];
    [v28 postNotificationName:@"UIKeyboardDidChangeUIPosition" object:v31];

LABEL_20:
  }

  if (*(v106 + 24) != 1 || (-[_UIRemoteKeyboards currentState](self, "currentState"), v32 = objc_claimAutoreleasedReturnValue(), [v32 sourceBundleIdentifier], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "sourceBundleIdentifier"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v33, "isEqualToString:", v34), v34, v33, v32, (v35 & 1) == 0))
  {
    v36 = [(_UIRemoteKeyboards *)self currentState];
    v37 = [v36 sourceBundleIdentifier];
    v38 = _UIMainBundleIdentifier();
    v39 = [v37 isEqualToString:v38];

    if (v39)
    {
      v40 = [(_UIRemoteKeyboards *)self currentState];
      [(_UIRemoteKeyboards *)self setBackupState:v40];
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
    v43 = [(_UIRemoteKeyboards *)self currentKeyboard];
    v44 = "N";
    if (v43)
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

  v46 = [(_UIRemoteKeyboards *)self yieldingKeyboardToIgnoredScene];
  v47 = v46 == 0;

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

      v53 = [v14 sourceSceneIdentityString];
      [(_UIRemoteKeyboards *)self setYieldingKeyboardToIgnoredScene:v53];
    }
  }

  else
  {
    v48 = [(_UIRemoteKeyboards *)self yieldingKeyboardToIgnoredScene];
    v49 = [v14 sourceSceneIdentityString];
    v50 = [v48 isEqualToString:v49];

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
      v55 = [v14 sourceSceneIdentityString];
      v54 = v55 == 0;
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

  if (*(v116 + 24) == 1 && v78 && (-[_UIRemoteKeyboards currentState](self, "currentState"), v56 = objc_claimAutoreleasedReturnValue(), v57 = [v56 keyboardOnScreen], v56, v57))
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
            v90 = self;
            v91 = &v119;
            [UIKeyboardSceneDelegate performOnControllers:v88];
            v63 = [(_UIRemoteKeyboards *)self keyboardWindow];
            v64 = [v63 rootViewController];
            [v64 removeCombinedBackdropViewIfNeeded];
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
  v69 = [v67 responder];
  if (([v69 _isHostingRemoteContent] & 1) == 0)
  {
    v70 = [v69 _responderWindow];
    [v70 _setLastFirstResponder:v69];
    if (objc_opt_respondsToSelector())
    {
      v71 = [v69 interactionState];
      [v70 _setLastFirstResponderInteractionState:v71];
    }

    v72 = _UIArbiterClientLog();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v72, OS_LOG_TYPE_DEFAULT, "handleKeyboardChange: resignFirstResponder", buf, 2u);
    }

    [v70 _setWantsResponderWithoutKeyboard:1];
    [v69 resignFirstResponder];
    [v70 _setWantsResponderWithoutKeyboard:0];
    v73 = [v70 _firstResponder];
    [v70 _setLastNextResponder:v73];
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
    v75 = [(_UIRemoteKeyboards *)self currentState];
    [v75 resetAnimationFencing];
  }

  self->_handlingRemoteEvent = handlingRemoteEvent;
  v76 = *(v120 + 24);

  _Block_object_dispose(&v105, 8);
  _Block_object_dispose(&v109, 8);

  _Block_object_dispose(&v115, 8);
  _Block_object_dispose(&v119, 8);

  return v76 & 1;
}

- (void)queue_keyboardUIDidChange:(id)a3 onComplete:(id)a4
{
  v4 = a4;
  v5 = _UIArbiterClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "RX keyboardUIDidChange (WARNING: Unexpected call to _UIRemoteKeyboards)", v6, 2u);
  }

  if (v4)
  {
    v4[2](v4);
  }
}

- (void)queue_endInputSessionWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _UIArbiterClientLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "RX endInputSession (WARNING: Unexpected call to _UIRemoteKeyboards)", v5, 2u);
  }

  if (v3)
  {
    v3[2](v3);
  }
}

- (void)queue_keyboardChanged:(id)a3 onComplete:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[UIKeyboardVisualModeManager visualModeLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v16 = self;
    v17 = 2048;
    v18 = v6;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "queue_keyboardChanged (self: %p, info: %p), %@", buf, 0x20u);
  }

  v9 = [UIApp _systemAnimationFenceExemptQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55___UIRemoteKeyboards_queue_keyboardChanged_onComplete___block_invoke;
  v12[3] = &unk_1E70FCE28;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 performAsync:v12];
}

- (void)queue_keyboardChangedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [UIApp _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58___UIRemoteKeyboards_queue_keyboardChangedWithCompletion___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performAsync:v7];
}

- (void)queue_keyboardIAVChanged:(double)a3 onComplete:(id)a4
{
  v6 = a4;
  if ([UIApp _isSpringBoard])
  {
    v7 = [UIApp _systemAnimationFenceExemptQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58___UIRemoteKeyboards_queue_keyboardIAVChanged_onComplete___block_invoke;
    v8[3] = &unk_1E70F5FA8;
    v10 = a3;
    v8[4] = self;
    v9 = v6;
    [v7 performAsync:v8];
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

- (void)queue_sceneBecameFocused:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [UIApp _systemAnimationFenceExemptQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62___UIRemoteKeyboards_queue_sceneBecameFocused_withCompletion___block_invoke;
  v11[3] = &unk_1E70FCE28;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performAsync:v11];
}

- (void)_performRequiredSceneUpdateIfPermittedForWindow:(uint64_t)a3 withContext:
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    if ((a3 & 0x100) != 0)
    {
      v6 = [a1 currentKeyboard] ^ 1;
    }

    else
    {
      v6 = 1;
    }

    v7 = [a1 isUpdatingKeyWindow];
    if ((v7 | a3))
    {
      v8 = v7 ^ 1;
    }

    else
    {
      v8 = [a1 _sceneFocusUpdatePermittedForWindow:v5] & v6;
    }

    v9 = a3 & 0x10000;
    v10 = a3 & 0x1000000;
    v11 = a3 & 0x100000000;
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
        v45 = a3 & 1;
        v46 = 1024;
        v47 = (a3 & 0x100) >> 8;
        v48 = 1024;
        v49 = v9 >> 16;
        v50 = 1024;
        v51 = (a3 & 0x1000000) >> 24;
        v52 = 1024;
        v53 = (a3 & 0x100000000uLL) >> 32;
        _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "%s: Update is permitted: %d; for window: %p; forcingUpdate: %d; consideringCurrentKeyboard: %d; updateFocusedSceneIdentityStringOrIdentifierIfNil: %d; updateProxyFocusContext: %d; notifyViewServiceHostIfNeeded: %d", buf, 0x3Au);
      }
    }

    if (v8)
    {
      v13 = [v5 windowScene];
      v14 = [v13 _settingsScene];

      v15 = [v5 windowScene];
      v16 = [v15 _settingsScene];

      v17 = [v16 _FBSScene];

      v18 = [v17 identityToken];
      v19 = [a1 focusedSceneIdentityStringOrIdentifier];
      v20 = (v19 | v9) != 0;
      if (!v5 || v17)
      {
        v24 = [v18 stringRepresentation];
        v25 = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED499790);
        if (*v25)
        {
          log = *(v25 + 8);
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v41 = "[_UIRemoteKeyboards _performRequiredSceneUpdateIfPermittedForWindow:withContext:]";
            v42 = 2112;
            *v43 = v24;
            _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "%s: Setting required scene: %@", buf, 0x16u);
          }
        }

        [a1 setRequiredScene:v17];
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
              *v43 = v24;
              _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "%s: Focusing scene identity: %@", buf, 0x16u);
            }
          }

          [a1 setFocusedSceneIdentityStringOrIdentifier:v24];
        }

        if (v10)
        {
          v27 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:v18 window:v5];
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

          v29 = [a1 proxy];
          [v29 setClientFocusContext:v27];
        }
      }

      else
      {
        if (v14 == 0 || !v20)
        {
LABEL_26:
          if (v11)
          {
            v38 = @"_UIRemoteKeyboardsHostedWindowUserInfoKey";
            v39 = v5;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
            v32 = [MEMORY[0x1E696AD88] defaultCenter];
            [v32 postNotificationName:@"_UIRemoteKeyboardsServiceWantsKeyboardFocusWithoutFirstResponderNotification" object:0 userInfo:v31];
          }

          goto LABEL_29;
        }

        v21 = [v14 _FBSScene];
        v22 = v21;
        if (v21)
        {
          v23 = [v21 identityToken];
          v24 = [v23 stringRepresentation];
        }

        else
        {
          v24 = [v14 _sceneIdentifier];
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
            *v43 = v24;
            _os_log_impl(&dword_188A29000, v36, OS_LOG_TYPE_ERROR, "%s: Focusing scene identifier: %@", buf, 0x16u);
          }
        }

        [a1 setFocusedSceneIdentityStringOrIdentifier:v24];
      }

      goto LABEL_26;
    }
  }

LABEL_29:
}

- (void)queue_getDebugInfoWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [UIApp _systemAnimationFenceExemptQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55___UIRemoteKeyboards_queue_getDebugInfoWithCompletion___block_invoke;
    v6[3] = &unk_1E70F37C0;
    v6[4] = self;
    v7 = v4;
    [v5 performAsync:v6];
  }
}

- (void)stopConnection
{
  v3 = [(_UIRemoteKeyboards *)self connection];
  [v3 setInvalidationHandler:0];

  v4 = [(_UIRemoteKeyboards *)self connection];
  [v4 setInterruptionHandler:0];

  v5 = [(_UIRemoteKeyboards *)self connection];
  [v5 invalidate];

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

+ (id)keyboardWindowSceneForScreen:(id)a3 create:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (([a1 enabled] & 1) != 0 && objc_msgSend(a1, "wantsUnassociatedWindowSceneForKeyboardWindow"))
  {
    v7 = [UIWindowScene _unassociatedWindowSceneForScreen:v6 create:v4];
  }

  else
  {
    v7 = [UIWindowScene _keyboardWindowSceneForScreen:v6 create:v4];
  }

  v8 = v7;

  return v8;
}

- (void)setSnapshotting:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  takingSnapshot = self->_takingSnapshot;
  self->_takingSnapshot = a3;
  v6 = _UIMainBundleIdentifier();
  v7 = [v6 isEqualToString:@"com.apple.Spotlight"];

  if ((v7 & 1) == 0)
  {
    [(_UIRemoteKeyboards *)self reloadForSnapshotting];
  }

  if (takingSnapshot != v3)
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
  v3 = [v2 scene];
  v4 = [v3 _FBSScene];

  v5 = [v4 settings];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v10 = [objc_opt_self() mainScreen];
  [v10 _referenceBounds];
  v13 = v9 == v12 && v7 == v11;

  return v13;
}

- (void)setWindowEnabled:(BOOL)a3
{
  v3 = a3;
  if (![(_UIRemoteKeyboards *)self hasAnyHostedViews]|| !self->_handlingRemoteEvent || self->_handlingViewServiceEvent)
  {

    [(_UIRemoteKeyboards *)self setWindowEnabled:v3 force:0];
  }
}

- (void)setWindowEnabled:(BOOL)a3 force:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v34 = *MEMORY[0x1E69E9840];
  if (![(_UIRemoteKeyboards *)self _usesInvisibleKeyboardBehindWTUI]|| !self->_showsInvisibleKeyboardBehindWTUI)
  {
    if (v5)
    {
      v5 = self->_restoringKeyboardAfterDismissSiri || [(_UIRemoteKeyboards *)self allowedToEnableKeyboardWindow];
    }

    if (v5 && v4)
    {
      v7 = 2;
    }

    else
    {
      v7 = v5;
    }

    v8 = [(_UIRemoteKeyboards *)self requiredScene];
    v9 = [v8 identityToken];

    v10 = off_1E7117DA8[v7];
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &setWindowEnabled_force____s_category);
    if (*CategoryCachedImpl)
    {
      v28 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = v28;
        v30 = [v9 stringRepresentation];
        *buf = 136315650;
        *v33 = "[_UIRemoteKeyboards setWindowEnabled:force:]";
        *&v33[8] = 2080;
        *&v33[10] = v10;
        *&v33[18] = 2112;
        *&v33[20] = v30;
        _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "%s: Setting window state: %s for scene identity: %@", buf, 0x20u);
      }
    }

    v12 = +[UIWindow _applicationKeyWindow];
    v13 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:v9 window:v12];

    v14 = _UIArbiterClientLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(_UIRemoteKeyboards *)self keyboardWindow];
      v16 = [v15 _contextId];
      v17 = _UIKeyboardWindowStateToString(v7);
      v18 = v7;
      v19 = v9;
      requiredLevel = self->_requiredLevel;
      [v13 descriptionForLog];
      v21 = v31 = v13;
      *buf = 67109891;
      *v33 = v16;
      *&v33[4] = 2114;
      *&v33[6] = v17;
      *&v33[14] = 2048;
      *&v33[16] = requiredLevel;
      v9 = v19;
      v7 = v18;
      *&v33[24] = 2113;
      *&v33[26] = v21;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "TX setWindowContextID:%u windowState:%{public}@ level:%.1f\n    focusContext:%{private}@", buf, 0x26u);

      v13 = v31;
    }

    v22 = [(_UIRemoteKeyboards *)self proxy];
    v23 = [(_UIRemoteKeyboards *)self keyboardWindow];
    [v22 setWindowContextID:objc_msgSend(v23 focusContext:"_contextId") windowState:v13 withLevel:{v7, self->_requiredLevel}];

    v24 = [(_UIRemoteKeyboards *)self keyboardWindow];
    [v24 setHidden:v5 ^ 1];

    if (self->_windowEnabled != v5)
    {
      self->_windowEnabled = v5;
      v25 = +[UIKeyboardImpl activeInstance];
      v26 = [v25 inputModeIndicatorController];
      [v26 keyboardWindowEnabled:v5];
    }

    if (v5)
    {
      v27 = [(_UIRemoteKeyboards *)self keyboardWindow];
      [v27 _matchDeviceOrientation];
    }
  }
}

- (void)_lostWindow:(id)a3
{
  v10 = a3;
  v4 = [v10 _screen];
  v5 = [objc_opt_self() mainScreen];

  if (v4 != v5)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 updateLayout];
  }

  lastScreen = self->_lastScreen;
  v8 = [v10 _screen];

  if (lastScreen == v8)
  {
    v9 = self->_lastScreen;
    self->_lastScreen = 0;
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 object];

    if (v6 && [(UIScene *)v6 _hasInvalidated])
    {
      suppressedScene = self->_suppressedScene;
      if (v6 == suppressedScene)
      {
        self->_suppressedScene = 0;
      }

      v8 = [(_UIRemoteKeyboards *)self requiredScene];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 identityToken];
        v11 = [v10 stringRepresentation];
      }

      else
      {
        v11 = [(_UIRemoteKeyboards *)self focusedSceneIdentityStringOrIdentifier];
      }

      v12 = [(UIScene *)v6 _FBSScene];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 identityToken];
        v15 = [v14 stringRepresentation];
      }

      else
      {
        v15 = [(UIScene *)v6 _sceneIdentifier];
      }

      v16 = BSEqualStrings();
      v17 = +[UIWindowScene _keyWindowScene];
      v18 = [v17 _isTargetOfKeyboardEventDeferringEnvironment];

      if ((v16 & 1) != 0 || v18)
      {
        v19 = [(_UIRemoteKeyboards *)self keyboardWindow];
        v20 = [(_UIRemoteKeyboards *)self wantsToShowKeyboardForWindow:v19];

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
            v29 = v15;
            v30 = 1024;
            v31 = v16;
            v32 = 1024;
            v33 = v20;
            v34 = 1024;
            v35 = [(_UIRemoteKeyboards *)self currentKeyboard];
            v36 = 1024;
            v37 = [(_UIRemoteKeyboards *)self keyboardVisible];
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

    v6 = 0;
  }
}

- (void)applicationDidSuspend:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(_UIRemoteKeyboards *)self _usesInvisibleKeyboardBehindWTUI]&& self->_showsInvisibleKeyboardBehindWTUI)
  {
    self->_dontSuppressKeyboardAgain = 1;
    [(_UIRemoteKeyboards *)self restoreKeyboardIfNeeded];
  }

  v4 = [(_UIRemoteKeyboards *)self keyboardWindow];
  v5 = [(_UIRemoteKeyboards *)self wantsToShowKeyboardForWindow:v4];

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
      v32 = [(_UIRemoteKeyboards *)self currentKeyboard];
      v33 = 1024;
      v34 = [(_UIRemoteKeyboards *)self keyboardVisible];
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "%s: wantsToShowKeyboardForWindow: %d; hasCurrentKeyboard: %d; keyboardVisible: %d", buf, 0x1Eu);
    }
  }

  if (v5)
  {
    v7 = [(_UIRemoteKeyboards *)self keyboardWindow];
    v8 = [v7 _isHostedInAnotherProcess];

    if ((v8 & 1) == 0)
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

  v17 = [UIApp _systemAnimationFenceExemptQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __44___UIRemoteKeyboards_applicationDidSuspend___block_invoke_2;
  v21[3] = &unk_1E70FD0C8;
  v23 = connection != 0;
  v21[4] = self;
  v22 = v10;
  v18 = v10;
  [v17 performAsync:v21];
}

- (void)applicationWillResume:(id)a3
{
  v4 = a3;
  if (!self->_enqueuedWillEnterForegroundActions)
  {
    self->_enqueuedWillEnterForegroundActions = 1;
    self->_userHasTappedOnKeyboard = 0;
    v5 = [UIApp _systemAnimationFenceExemptQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44___UIRemoteKeyboards_applicationWillResume___block_invoke;
    v6[3] = &unk_1E70F35B8;
    v6[4] = self;
    v7 = v4;
    [v5 performAsync:v6];
  }
}

- (void)applicationResumedEventsOnly:(id)a3
{
  if (!self->_windowEnabled)
  {
    [(_UIRemoteKeyboards *)self applicationWillResume:a3];
  }
}

- (void)applicationKeyWindowWillChange:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteKeyboards *)self keyboardWindow];

  if (v5)
  {
    v6 = [UIApp isFrontBoard];
    v7 = [v4 object];
    v8 = v7;
    if (v6)
    {
      v9 = [v7 _overriddenInterfaceOrientation];
    }

    else
    {
      v9 = [v7 interfaceOrientation];
    }

    v10 = v9;
    v11 = +[UIWindow _applicationKeyWindow];
    v12 = v11;
    if (v6)
    {
      v13 = [v11 _overriddenInterfaceOrientation];
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v13 = [v11 interfaceOrientation];
      if (!v8)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    if (!v12 || v10 != v13)
    {
      v14 = [(_UIRemoteKeyboards *)self keyboardWindow];
      v15 = [v14 interfaceOrientation];

      if (v15 != v10)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __53___UIRemoteKeyboards_applicationKeyWindowWillChange___block_invoke;
        block[3] = &unk_1E70F5AF0;
        v19 = v6;
        v17 = v8;
        v18 = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)applicationKeyWindowDidChange:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = 16777472;
  v5 = a3;
  v6 = [v5 object];
  v7 = [v5 userInfo];

  v8 = [v7 objectForKey:@"Reason"];

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
      v12 = _UIRemoteKeyboardsFBSSceneIdentityStringFromSettingsSceneOfWindow(v6);
      v13 = 136315906;
      v14 = "[_UIRemoteKeyboards applicationKeyWindowDidChange:]";
      v15 = 2048;
      v16 = v6;
      v17 = 2112;
      v18 = v12;
      v19 = 2048;
      v20 = [v8 unsignedIntegerValue];
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s: Application key window changed to window: %p; scene identity: %@; for reason: %lu", &v13, 0x2Au);
    }
  }

  [(_UIRemoteKeyboards *)self _performRequiredSceneUpdateIfPermittedForWindow:v6 withContext:v4];
  [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_650_0];
}

- (void)performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:(void *)a1
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = [a2 keyWindowCandidate];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 windowScene];
      v6 = [v5 _settingsScene];

      v7 = [v6 _FBSScene];

      v8 = [v7 identityToken];
      v9 = [v8 stringRepresentation];

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
          v17 = v9;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "%s: Performing required scene update for candidate window: %p; scene: %@", &v12, 0x20u);
        }
      }

      [(_UIRemoteKeyboards *)a1 _performRequiredSceneUpdateIfPermittedForWindow:v4 withContext:0];
    }
  }
}

- (BOOL)needsToShowKeyboardForWindow:(id)a3
{
  v4 = a3;
  if ([(_UIRemoteKeyboards *)self allowedToShowKeyboard])
  {
    v5 = [(_UIRemoteKeyboards *)self wantsToShowKeyboardForWindow:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)needsToShowKeyboardForViewServiceHostWindow:(id)a3
{
  v4 = a3;
  if ([(_UIRemoteKeyboards *)self allowedToShowKeyboard])
  {
    v5 = [(_UIRemoteKeyboards *)self wantsToShowKeyboardForViewServiceHostWindow:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sceneDidActivate:(id)a3
{
  v9 = a3;
  [(_UIRemoteKeyboards *)self clearKeyboardSceneIdentifierEnteringForeground:?];
  if ([(_UIRemoteKeyboards *)self currentKeyboard])
  {
    v4 = [(_UIRemoteKeyboards *)self keyboardWindow];
    v5 = [v4 isHidden];

    if (v5)
    {
      v6 = [v9 object];
      v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v8 = [v7 scene];

      if (v6 == v8)
      {
        [(_UIRemoteKeyboards *)self applicationDidBecomeActive:0];
      }
    }
  }
}

- (void)setKeyboardSceneIdentifierEnteringForegroundForScene:(id)a3
{
  v4 = [a3 _sceneIdentifier];
  keyboardSceneIdentifierEnteringForeground = self->_keyboardSceneIdentifierEnteringForeground;
  self->_keyboardSceneIdentifierEnteringForeground = v4;
}

- (void)clearKeyboardSceneIdentifierEnteringForeground:(id)a3
{
  v4 = [a3 object];
  keyboardSceneIdentifierEnteringForeground = self->_keyboardSceneIdentifierEnteringForeground;
  v8 = v4;
  v6 = [v4 _sceneIdentifier];
  LODWORD(keyboardSceneIdentifierEnteringForeground) = [(NSString *)keyboardSceneIdentifierEnteringForeground isEqualToString:v6];

  if (keyboardSceneIdentifierEnteringForeground)
  {
    v7 = self->_keyboardSceneIdentifierEnteringForeground;
    self->_keyboardSceneIdentifierEnteringForeground = 0;
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v9 = [a3 object];
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 scene];

  v6 = v9;
  if (v9 == v5)
  {
    v7 = [v9 _sceneIdentifier];
    keyboardSceneIdentifierEnteringForeground = self->_keyboardSceneIdentifierEnteringForeground;
    self->_keyboardSceneIdentifierEnteringForeground = v7;

    v6 = v9;
  }
}

- (void)screenDidDisconnect:(id)a3
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v7 = [v4 scene];

  if (-[_UIRemoteKeyboards currentKeyboard](self, "currentKeyboard") && [v7 activationState] == 1)
  {
    v5 = [v7 _sceneIdentifier];
    keyboardSceneIdentifierEnteringForeground = self->_keyboardSceneIdentifierEnteringForeground;
    self->_keyboardSceneIdentifierEnteringForeground = v5;
  }
}

- (BOOL)wantsToShowKeyboardForWindow:(id)a3
{
  v4 = a3;
  if ([(_UIRemoteKeyboards *)self currentKeyboard])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(_UIRemoteKeyboards *)self viewHostForWindow:v4];
    v5 = ([v6 hasHostedViews] & 1) != 0 || self->_keyboardSnapshot || -[_UIRemoteKeyboards isOnScreenRotating](self, "isOnScreenRotating");
  }

  return v5;
}

- (BOOL)wantsToShowKeyboardForViewServiceHostWindow:(id)a3
{
  v3 = [(_UIRemoteKeyboards *)self viewHostForWindow:a3];
  v4 = [v3 hasHostedViews];

  return v4;
}

- (void)updateLastScreen:(id)a3
{
  v5 = a3;
  if (self->_enableMultiscreenHack)
  {
    v10 = v5;
    p_lastScreen = &self->_lastScreen;
    if (self->_lastScreen)
    {
      v7 = [(objc_class *)[(_UIRemoteKeyboards *)self keyboardWindowClass] remoteKeyboardWindowForScreen:self->_lastScreen create:0];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 screen];

        if (v9 != v10)
        {
          [v8 invalidate];
        }
      }
    }

    objc_storeStrong(p_lastScreen, a3);
    v5 = v10;
  }
}

- (void)prepareToMoveKeyboard:(CGRect)a3 withIAV:(CGRect)a4 isIAVRelevant:(BOOL)a5 showing:(BOOL)a6 notifyRemote:(BOOL)a7 forScene:(id)a8
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3.size.height;
  v16 = a3.size.width;
  v194 = a3.origin.x;
  v195 = a3.origin.y;
  v205 = *MEMORY[0x1E69E9840];
  v18 = a8;
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
      v21 = [MEMORY[0x1E696AD98] numberWithBool:v9];
      v22 = [MEMORY[0x1E696AD98] numberWithBool:v8];
      v23 = +[UIKeyboardImpl activeInstance];
      v24 = [v23 isMinimized];
      v25 = @"NO";
      *buf = 138413058;
      *v200 = v20;
      *&v200[8] = 2112;
      if (v24)
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
    v26 = [v18 screen];
    v27 = v26;
    v28 = 0;
    if (self->_enableMultiscreenHack && v9)
    {
      v28 = self->_lastScreen != v26;
      [(_UIRemoteKeyboards *)self updateLastScreen:v26];
    }

    [(_UIRemoteKeyboards *)self setBackupState:0];
    v29 = [(_UIRemoteKeyboards *)self proxy];
    v30 = v29;
    v31 = height - v15;
    if (!v10)
    {
      v31 = 0.0;
    }

    [v29 notifyIAVHeight:v31];

    v32 = [(_UIRemoteKeyboards *)self keyboardWindow];
    v33 = [v32 rootViewController];
    v196 = v27;
    v34 = ([v33 isRotating] & 1) != 0 || self->_takingSnapshot;

    v35 = [v18 keyboardSceneDelegate];
    v36 = [v35 responder];
    v37 = [v36 _window];

    v192 = v8;
    if (v37)
    {
      v34 |= [v37 _requiresKeyboardPresentationFence] ^ 1;
    }

    v38 = +[UIKeyboardImpl activeInstance];
    v39 = [v38 layoutIsResizing];

    v188 = v39;
    if (v39)
    {
      v40 = 1;
    }

    else
    {
      v41 = [(_UIRemoteKeyboards *)self keyboardWindow];
      v42 = [v41 rootViewController];
      v43 = [v42 isTransitioningBetweenFloatingStates];

      v40 = v43 | v34;
    }

    v44 = objc_opt_class();
    v45 = [(_UIRemoteKeyboards *)self keyboardVisible];
    v46 = v45;
    if (!v9)
    {
      if (![(_UIRemoteKeyboards *)self currentKeyboard])
      {
        if ((v40 & 1) == 0)
        {
          v58 = [(_UIRemoteKeyboards *)self currentState];
          v59 = [v58 animationFence];
          [v18 _synchronizeDrawingWithFence:v59];
        }

        v60 = [(_UIRemoteKeyboards *)self currentState];
        [v60 resetAnimationFencing];
        goto LABEL_126;
      }

      if (!v46)
      {
        v189 = 1;
        goto LABEL_73;
      }

      v53 = [v44 informationForKeyboardDown];
      [(_UIRemoteKeyboards *)self updateCurrentState:v53];
      v189 = 1;
LABEL_72:

LABEL_73:
      v60 = v18;
      v99 = [v60 _FBSScene];
      v100 = v99;
      if (v99)
      {
        v101 = [v99 identityToken];
        v102 = [v101 stringRepresentation];
      }

      else
      {
        v102 = [v60 _sceneIdentifier];
      }

      v103 = [(_UIRemoteKeyboards *)self currentState];
      [v103 setSourceSceneIdentityString:v102];

      v104 = _UIMainBundleIdentifier();
      v105 = [(_UIRemoteKeyboards *)self currentState];
      [v105 setSourceBundleIdentifier:v104];

      v106 = [v60 screen];
      v107 = [v106 displayConfiguration];
      v108 = [v107 _nameForDisplayType];
      v109 = [(_UIRemoteKeyboards *)self currentState];
      [v109 setSourceDisplayIdentifier:v108];

      v110 = _UIMainBundleIdentifier();
      LODWORD(v107) = [v110 isEqualToString:@"com.apple.Spotlight"];

      v111 = [(_UIRemoteKeyboards *)self currentState];
      [v111 setShouldTakeSnapshot:v107 ^ 1];

      v112 = [(_UIRemoteKeyboards *)self localSceneCount]> 1;
      v113 = [(_UIRemoteKeyboards *)self currentState];
      [v113 setMultipleScenes:v112];

      v114 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v115 = [v114 hardwareKeyboardExclusivityIdentifier];
      v116 = [(_UIRemoteKeyboards *)self currentState];
      [v116 setIsOneness:v115 != 0];

      v117 = +[UIKeyboardImpl isFloating];
      v118 = [(_UIRemoteKeyboards *)self currentState];
      [v118 setIsFloating:v117];

      +[UIKeyboardImpl persistentOffset];
      v120 = v119;
      v122 = v121;
      v123 = [(_UIRemoteKeyboards *)self currentState];
      [v123 setPersistentOffset:{v120, v122}];

      [(_UIRemoteKeyboards *)self setCurrentKeyboard:v9];
      v124 = _UIArbiterClientLog();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        v125 = "N";
        if (v9)
        {
          v125 = "Y";
        }

        *buf = 136315138;
        *v200 = v125;
        _os_log_impl(&dword_188A29000, v124, OS_LOG_TYPE_DEFAULT, "prepareToMoveKeyboard: set currentKeyboard:%s", buf, 0xCu);
      }

      v191 = v18;

      v126 = [(_UIRemoteKeyboards *)self currentState];
      v127 = v37;
      if ([v126 multipleScenes])
      {
        v128 = [(_UIRemoteKeyboards *)self keyboardWindow];
        v129 = [(_UIRemoteKeyboards *)self viewHostForWindow:v128];
        v130 = [v129 hasHostedViews];

        if (v130)
        {
          v131 = v46;
          v132 = [MEMORY[0x1E696AD98] numberWithBool:v9];
          currentKeyboardsBySceneIdentifier = self->_currentKeyboardsBySceneIdentifier;
          v134 = [(_UIRemoteKeyboards *)self currentState];
          v135 = [v134 sourceSceneIdentityString];
          [(NSMutableDictionary *)currentKeyboardsBySceneIdentifier setObject:v132 forKeyedSubscript:v135];

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
      v138 = [v137 hasVisibleAssistantBar];
      v139 = [(_UIRemoteKeyboards *)self currentState];
      [v139 setAssistantBarVisible:v138];

      v140 = [v137 visualModeManager];
      v141 = [v140 windowingModeEnabled];

      v142 = [v137 visualModeManager];
      v143 = [v142 shouldShowWithinAppWindow];

      v144 = +[UIKeyboardImpl isFloating];
      v145 = +[UIKeyboardImpl isFloatingForced];
      if (v141)
      {
        v146 = v145;
        if (v143)
        {
          v147 = 1;
        }

        else
        {
          v148 = [(_UIRemoteKeyboards *)self currentState];
          v149 = [v148 keyboardOnScreen];

          if (v149)
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
          v181 = [(_UIRemoteKeyboards *)self currentState];
          v180 = [v181 keyboardOnScreen];
          *buf = 67110400;
          *v200 = 1;
          *&v200[4] = 1024;
          *&v200[6] = v143;
          LOWORD(v201) = 1024;
          *(&v201 + 2) = v180;
          HIWORD(v201) = 1024;
          *v202 = v144;
          *&v202[4] = 1024;
          *&v202[6] = v146;
          v203 = 2048;
          v204 = v147;
          _os_log_debug_impl(&dword_188A29000, v151, OS_LOG_TYPE_DEBUG, "prepareToMoveKeyboard (SM: %d, WVM: %d, OS: %d, FL: %d, FF: %d) -> uiPosition: %lu", buf, 0x2Au);
        }

        v152 = [(_UIRemoteKeyboards *)self currentState];
        [v152 setUiPosition:v147];

        v136 = off_1E70EA000;
      }

      v153 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v154 = [v153 containerRootController];
      v155 = [v154 isSnapshotting];

      if ([(_UIRemoteKeyboards *)self _isWritingToolsHandlingKeyboardTracking])
      {
        v156 = v131;
        if ([(_UIRemoteKeyboards *)self hasActiveKeyboardSuppressionAssertionsForReason:@"WritingTools"])
        {
          v157 = [(_UIRemoteKeyboards *)self currentState];
          [v157 keyboardPosition];
          v209.origin.x = v158;
          v209.origin.y = v159;
          v209.size.width = v160;
          v209.size.height = v161;
          v207.origin.x = v194;
          v207.origin.y = v195;
          v207.size.width = v16;
          v207.size.height = v15;
          v162 = CGRectEqualToRect(v207, v209);

          v163 = [(_UIRemoteKeyboards *)self currentState];
          [v163 keyboardPositionWithIAV];
          v210.origin.x = v164;
          v210.origin.y = v165;
          v210.size.width = v166;
          v210.size.height = v167;
          v208.origin.x = x;
          v208.origin.y = y;
          v208.size.width = width;
          v208.size.height = height;
          v168 = CGRectEqualToRect(v208, v210);

          v37 = v127;
          if (![(_UIRemoteKeyboards *)self currentKeyboard]|| v162 && v168)
          {
            v170 = KeyboardArbiterClientLog_1();
            v18 = v191;
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
            v18 = v191;
          }

          v136 = off_1E70EA000;
LABEL_111:
          [(_UIRemoteKeyboardsEventObserver *)self->_eventObserver setKeyboardIsVisible:[(_UIRemoteKeyboards *)self keyboardVisible]];
          if (v155 & 1 | ((v192 & 1) == 0))
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
              if (((v189 | v156) & 1) == 0 && [v60 _isKeyWindowScene])
              {
                [(_UIRemoteKeyboards *)self setWindowEnabled:[(_UIRemoteKeyboards *)self allowedToShowKeyboard]];
              }

              v179 = [(_UIRemoteKeyboards *)self currentState];
              [v179 resetAnimationFencing];

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
          v172 = [v60 _FBSScene];
          v173 = v172;
          if (v172)
          {
            v174 = [v172 identityToken];
            v175 = [v174 stringRepresentation];

            v136 = off_1E70EA000;
          }

          else
          {
            v175 = [v60 _sceneIdentifier];
          }

          [v171 setSceneIdentityString:v175];
          [(NSMutableSet *)self->_pendingKeyboardGrabs addObject:v171];
          v176 = [(_UIRemoteKeyboards *)self currentState];
          v177 = [v176 copy];
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

      v37 = v127;
      v18 = v191;
      goto LABEL_111;
    }

    if (!v28 && v45)
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

    v53 = [(objc_class *)[(_UIRemoteKeyboards *)self keyboardWindowClass] remoteKeyboardWindowForScreen:v196 create:1];
    v189 = [v53 _isHostedInAnotherProcess];
    if ([v18 _isKeyWindowScene])
    {
      v54 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
      [v54 windowLevel];
      [v53 setWindowLevel:v55 + 1.0];
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
      v93 = [(_UIRemoteKeyboards *)self currentState];
      [v93 keyboardPosition];
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
        v73 = [v18 effectiveGeometry];
        v74 = [v73 coordinateSpace];
        [v74 bounds];
        v76 = v75 - v15;

        v190 = [v18 effectiveGeometry];
        v77 = [v190 coordinateSpace];
        v78 = [v18 screen];
        [v78 coordinateSpace];
        v79 = v18;
        v80 = v37;
        v82 = v81 = v46;
        [v77 convertRect:v82 toCoordinateSpace:{v194, v76, v16, v15}];
        v84 = v83;
        v86 = v85;
        v67 = v87;
        v66 = v88;

        v46 = v81;
        v37 = v80;
        v18 = v79;

        v68 = v86;
LABEL_54:
        if (v67 != width || (v61 = v66, v63 = v67, v64 = v68, v65 = v84, v66 != v187))
        {
          v89 = v68;
          [v53 bounds];
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

      [v53 bounds];
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

      [v53 bounds];
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

- (id)viewHostForWindow:(id)a3
{
  v3 = a3;
  v4 = [v3 rootViewController];
  v5 = [v4 view];
  v6 = [v5 conformsToProtocol:&unk_1F0037170];

  if (v6)
  {
    v7 = [v3 rootViewController];
    v8 = [v7 view];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)completeMoveKeyboardForWindow:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteKeyboards *)self keyboardWindowClass];
  v6 = [v4 screen];
  v7 = [(objc_class *)v5 remoteKeyboardWindowForScreen:v6 create:0];

  if (v7 == v4)
  {
    [(_UIRemoteKeyboards *)self updateAllVisibleFrames];
    if ([(_UIRemoteKeyboards *)self currentKeyboard])
    {
      v12 = [v4 rootViewController];
      v13 = [v12 inputViewSet];
      v14 = [v13 isInputViewPlaceholder];

      if ((v14 & 1) == 0)
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

  v15 = [(_UIRemoteKeyboards *)self currentState];
  [v15 resetAnimationFencing];
}

- (void)setWindowLevel:(double)a3 sceneLevel:(double)a4 forResponder:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(_UIRemoteKeyboards *)self keyboardWindowClass];
  v10 = [v8 _responderWindow];
  v11 = [v10 screen];
  v12 = [(objc_class *)v9 remoteKeyboardWindowForScreen:v11 create:0];

  [v12 setWindowLevel:a3];
  v13 = [v8 _responderWindow];
  v14 = [v13 windowScene];
  v15 = [v14 _settingsScene];

  v16 = [v15 _FBSScene];

  v17 = [v16 identityToken];
  v18 = [v17 stringRepresentation];

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED4997B0);
  if (*CategoryCachedImpl)
  {
    v37 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v39 = 136315650;
      v40 = "[_UIRemoteKeyboards setWindowLevel:sceneLevel:forResponder:]";
      v41 = 2112;
      *v42 = v8;
      *&v42[8] = 2112;
      v43 = v18;
      _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "%s: Setting window level for responder: %@; scene identity: %@", &v39, 0x20u);
    }
  }

  v20 = [v8 _responderWindow];
  v21 = [v8 _responderWindow];
  v22 = [v21 windowScene];
  if ([v22 _isTargetOfKeyboardEventDeferringEnvironment])
  {
    v23 = 1;
  }

  else
  {
    v23 = 16777217;
  }

  [(_UIRemoteKeyboards *)self _performRequiredSceneUpdateIfPermittedForWindow:v20 withContext:v23];

  v24 = [(_UIRemoteKeyboards *)self requiredScene];
  v25 = [v24 identityToken];

  v26 = [v12 activeSceneIdentity];
  v27 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v28 = [v27 hardwareKeyboardExclusivityIdentifier];
  v29 = v28 != 0;

  v30 = BSEqualObjects() ^ 1;
  requiredLevel = self->_requiredLevel;
  if (requiredLevel == a4)
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
      *(&v43 + 2) = requiredLevel != a4;
      _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "%s: Should reset scene: %d; identitiesAreDifferent: %d; levelsAreDifferent: %d", &v39, 0x1Eu);
    }
  }

  if (v33)
  {
    self->_requiredLevel = a4;
    self->_hasExclusivityIdentifier = v29;
    [v12 resetScene];
  }

  v35 = [(_UIRemoteKeyboards *)self needsToShowKeyboardForWindow:v12];
  v36 = v35 && [(_UIRemoteKeyboards *)self needsToShowKeyboardForViewServiceHostWindow:v12];
  [(_UIRemoteKeyboards *)self setWindowEnabled:v35 force:v36];
}

- (void)controllerDidLayoutSubviews:(id)a3
{
  v4 = a3;
  if (self->_ignoreLayoutSubviews <= 0 && [(_UIRemoteKeyboards *)self currentKeyboard])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50___UIRemoteKeyboards_controllerDidLayoutSubviews___block_invoke;
    v5[3] = &unk_1E70F35B8;
    v5[4] = self;
    v6 = v4;
    [(_UIRemoteKeyboards *)self ignoreLayoutNotifications:v5];
  }
}

- (void)ignoreLayoutNotifications:(id)a3
{
  ++self->_ignoreLayoutSubviews;
  (*(a3 + 2))(a3, a2);
  --self->_ignoreLayoutSubviews;
}

- (void)registerController:(id)a3
{
  v4 = a3;
  if (([v4 conformsToProtocol:&unk_1F003A0E0] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Object does not implement expected protocol: %@", v4}];
  }

  [(NSHashTable *)self->_windowControllers addObject:v4];
  [v4 setControllerDelegate:self];
}

- (void)unregisterController:(id)a3
{
  v4 = a3;
  [v4 setControllerDelegate:0];
  [(NSHashTable *)self->_windowControllers removeObject:v4];
}

- (void)performOnControllers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSHashTable *)self->_windowControllers copy];
  v6 = [(_UIRemoteKeyboards *)self keyboardWindow];
  v7 = [v6 rootViewController];

  if (v7 && [v5 containsObject:v7])
  {
    v4[2](v4, v7);
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

        if (*(*(&v13 + 1) + 8 * v12) != v7)
        {
          (v4[2])(v4);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_performOnDistributedControllersExceptSelf:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___UIRemoteKeyboards__performOnDistributedControllersExceptSelf___block_invoke;
  v6[3] = &unk_1E71060D0;
  v7 = v4;
  v5 = v4;
  [(_UIRemoteKeyboards *)self performOnControllers:v6];
}

- (void)performOnDistributedControllers:(id)a3
{
  v4 = *(a3 + 2);
  v5 = a3;
  v4();
  [(_UIRemoteKeyboards *)self _performOnDistributedControllersExceptSelf:v5];
}

- (id)prepareForHostedWindowWithScene:(id)a3
{
  v4 = a3;
  v5 = [v4 screen];
  v6 = [(objc_class *)[(_UIRemoteKeyboards *)self keyboardWindowClass] remoteKeyboardWindowForScreen:v5 create:0];
  ++self->_hostedCount;
  v7 = [(objc_class *)[(_UIRemoteKeyboards *)self keyboardWindowClass] remoteKeyboardWindowForScreen:v5 create:1];
  v8 = [v7 windowScene];
  if (!v8 || (v9 = v8, [v7 windowScene], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "_hasInvalidated"), v10, v9, v11))
  {
    [v7 setWindowScene:v4];
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

- (BOOL)refreshWithLocalMinimumKeyboardHeight:(double)a3 forScene:(id)a4
{
  v6 = a4;
  minimumKeyboardHeights = self->_minimumKeyboardHeights;
  v8 = [v6 _FBSScene];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 identityToken];
    v11 = [v10 stringRepresentation];
  }

  else
  {
    v11 = [v6 _sceneIdentifier];
  }

  v12 = [(NSMapTable *)minimumKeyboardHeights objectForKey:v11];
  [v12 doubleValue];
  v14 = v13;

  if (v14 != a3)
  {
    v15 = self->_minimumKeyboardHeights;
    if (a3 == 0.0)
    {
      v16 = [v6 _FBSScene];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 identityToken];
        v19 = [v18 stringRepresentation];
      }

      else
      {
        v19 = [v6 _sceneIdentifier];
      }

      [(NSMapTable *)v15 removeObjectForKey:v19];
    }

    else
    {
      v19 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      v20 = [v6 _FBSScene];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 identityToken];
        v23 = [v22 stringRepresentation];
      }

      else
      {
        v23 = [v6 _sceneIdentifier];
      }

      [(NSMapTable *)v15 setObject:v19 forKey:v23];
    }
  }

  return v14 != a3;
}

- (BOOL)hasLocalMinimumKeyboardHeightForScene:(id)a3
{
  v4 = a3;
  minimumKeyboardHeights = self->_minimumKeyboardHeights;
  v6 = [v4 _FBSScene];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 identityToken];
    v9 = [v8 stringRepresentation];
  }

  else
  {
    v9 = [v4 _sceneIdentifier];
  }

  v10 = [(NSMapTable *)minimumKeyboardHeights objectForKey:v9];
  [v10 doubleValue];
  v12 = v11;

  return v12 > 0.0;
}

- (double)intersectionHeightForWindowScene:(id)a3 isLocalMinimumHeightOut:(BOOL *)a4 ignoreHorizontalOffset:(BOOL)a5
{
  v6 = a5;
  v9 = a3;
  v10 = 0x1E70E9000uLL;
  if (+[UIKeyboard inputUIOOP])
  {
    v11 = self;
    v12 = v9;
    v13 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v14 = [v13 keyboardArbiterClient];

    v15 = [v14 currentClientState];
    if (+[UIKeyboard usesInputSystemUI])
    {
      v112 = a4;
      v16 = [v14 currentUIState];
      v17 = [v16 bundleIdentifier];
      v18 = _UIMainBundleIdentifier();
      if (([v17 isEqualToString:v18] & 1) == 0)
      {

        goto LABEL_9;
      }

      v19 = [v14 keyboardVisible];

      a4 = v112;
      v10 = 0x1E70E9000;
      if (v19)
      {
        v20 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v16 = [v20 responder];

        v21 = [v16 inputView];
        if (v21)
        {
          v17 = v21;
          goto LABEL_60;
        }

        v63 = [v16 inputViewController];
        v17 = [v63 view];

        if (v17)
        {
LABEL_60:
          [v17 frame];
          if (v64 == 0.0)
          {
            v9 = v12;

            height = 0.0;
            goto LABEL_91;
          }
        }

LABEL_9:

        a4 = v112;
        v10 = 0x1E70E9000uLL;
      }
    }

    v5 = [v14 currentUIState];
    [v5 keyboardPosition];
    v23 = v28;
    v25 = v29;
    v27 = v30;

    v9 = v12;
    self = v11;
    goto LABEL_11;
  }

  v15 = [(_UIRemoteKeyboards *)self currentState];
  [v15 keyboardPosition];
  v23 = v22;
  v25 = v24;
  v27 = v26;
LABEL_11:
  v31 = 0.0;
  if (!v15 || ([v15 avoidIntersectability] & 1) != 0)
  {
    goto LABEL_93;
  }

  v14 = _UIMainBundleIdentifier();
  v32 = v10;
  if ([v14 isEqualToString:@"com.apple.Spotlight"] & 1) != 0 || (objc_msgSend(UIApp, "_isSpringBoard"))
  {
    v33 = 0;
  }

  else
  {
    v16 = [v15 sourceBundleIdentifier];
    height = 0.0;
    if ([v16 isEqualToString:@"com.apple.Spotlight"])
    {
LABEL_91:

LABEL_92:
      v31 = height;
      goto LABEL_93;
    }

    v104 = v16;
    v33 = 1;
  }

  v34 = _UIMainBundleIdentifier();
  v113 = a4;
  if ([v34 isEqualToString:@"com.apple.CoreAuthUI"] & 1) != 0 || (objc_msgSend(v34, "isEqualToString:", @"com.apple.LocalAuthenticationUIService") & 1) != 0 || (objc_msgSend(UIApp, "_isSpringBoard"))
  {
    v35 = 0;
    goto LABEL_20;
  }

  v58 = [v15 sourceBundleIdentifier];
  if ([v58 isEqualToString:@"com.apple.CoreAuthUI"])
  {

    height = 0.0;
    v16 = v104;
    if ((v33 & 1) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  v65 = [v58 isEqualToString:@"com.apple.LocalAuthenticationUIService"];
  v66 = v58;
  v5 = v65;
  v102 = v66;

  v35 = 1;
  LOBYTE(v37) = 1;
  if ((v5 & 1) == 0)
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
      v5 = [v15 sourceBundleIdentifier];
      v37 = 1;
      if ([v5 isEqualToString:@"com.apple.WebSheet"])
      {
        goto LABEL_33;
      }
    }

    if (v9 && ![*(v32 + 3824) inputUIOOP])
    {
      v99 = v5;
      v100 = v6;
      v39 = [v15 sourceDisplayIdentifier];
      v40 = v9;
      v41 = v39;
      v101 = v40;
      v42 = [v40 screen];
      v43 = [v42 displayConfiguration];
      v44 = [v43 _nameForDisplayType];
      v45 = [v41 isEqual:v44];

      if (!v37)
      {

        v6 = v100;
        if (v108)
        {
        }

        v9 = v101;
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
      v9 = v101;
      v6 = v100;
      v5 = v99;
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
    v47 = [(UIWindowScene *)v46 _keyWindow];

    if (v47 && ([v47 _isHostedInAnotherProcess] & 1) == 0)
    {
      v48 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v9];
    }

    else
    {
      v48 = [UITextEffectsWindow activeTextEffectsWindowForWindowScene:v9];
    }

    v14 = v48;
    v49 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v50 = [v49 visualModeManager];
    v51 = [v50 windowingModeEnabled];

    if (v51 && ([v14 hostedViewReference], !CGRectIsEmpty(v114)))
    {
      [v14 hostedViewReference];
      v109 = v60;
      v111 = v59;
      v57 = v61;
      recta = v62;
    }

    else
    {
      [v14 actualSceneFrame];
      v109 = v53;
      v111 = v52;
      v55 = v54;
      v57 = v56;
      if ([UIApp _isSpringBoard] && (objc_msgSend(v14, "interfaceOrientation") - 3) <= 1 && (objc_msgSend(v14, "actualSceneOrientation") - 3) >= 2)
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

    [v14 _sceneBounds];
    v68 = v67;
    v70 = v69;
    +[UIKeyboardImpl normalizedPersistentOffset];
    v103 = v71;
    v105 = v72;
    v73 = v70;
    if ([v14 interfaceOrientation])
    {
      v74 = [(_UIRemoteKeyboards *)self keyboardWindow];
      if ([v74 interfaceOrientation])
      {
        v75 = ([v14 interfaceOrientation] - 3) < 2;
        v76 = [(_UIRemoteKeyboards *)self keyboardWindow];
        v77 = v75 ^ (([v76 interfaceOrientation] - 3) < 2);

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

    if ([v14 _shouldResizeWithScene])
    {
      v78 = [v14 screen];
      [v78 bounds];
      v68 = v79;
      v70 = v80;

      v73 = v70;
    }

    v81 = v47;
    minimumKeyboardHeights = self->_minimumKeyboardHeights;
    v83 = [v9 _FBSScene];
    v84 = v83;
    if (v83)
    {
      v85 = [v83 identityToken];
      v86 = [v85 stringRepresentation];
    }

    else
    {
      v86 = [v9 _sceneIdentifier];
    }

    v87 = [(NSMapTable *)minimumKeyboardHeights objectForKey:v86];
    [v87 doubleValue];
    v89 = v88;

    v16 = v81;
    if (v89 > 0.0)
    {
      v115.origin.y = v109;
      v115.origin.x = v111;
      v115.size.width = v57;
      v115.size.height = recta;
      v90 = v89 + v73 - CGRectGetMaxY(v115);
      if (v113)
      {
        *v113 = v90 > v27;
      }

      if (v27 < v90)
      {
        v27 = v90;
      }

      v25 = v68;
    }

    v91 = v73 - v27;
    if (v6)
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
  v2 = [(_UIRemoteKeyboards *)self currentState];
  [v2 keyboardPositionWithRemoteIAV];
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
  v2 = [(_UIRemoteKeyboards *)self currentState];
  [v2 keyboardPosition];
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
  v2 = [(_UIRemoteKeyboards *)self currentState];
  [v2 persistentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (BOOL)remoteKeyboardUndocked:(BOOL)a3
{
  v3 = a3;
  if (![(_UIRemoteKeyboards *)self currentKeyboard]|| v3)
  {
    if ([(_UIRemoteKeyboards *)self keyboardVisible])
    {
      v5 = [(_UIRemoteKeyboards *)self currentState];
      [v5 keyboardPosition];
      MaxY = CGRectGetMaxY(v11);
      v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v8 = [v7 scene];
      v9 = [v8 screen];
      [v9 bounds];
      LOBYTE(v3) = MaxY < CGRectGetHeight(v12);
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)addHostedWindowView:(id)a3 fromPID:(int)a4 forScene:(id)a5 callerID:(id)a6
{
  v8 = *&a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v11)
  {
    v13 = [v11 screen];
    [(_UIRemoteKeyboards *)self updateLastScreen:v13];
  }

  v14 = [(_UIRemoteKeyboards *)self keyboardWindowClass];
  v15 = [(_UIRemoteKeyboards *)self _activeScreen];
  v16 = [(objc_class *)v14 remoteKeyboardWindowForScreen:v15 create:1];

  [v16 setHidden:0];
  v17 = [(_UIRemoteKeyboards *)self viewHostForWindow:v16];
  objc_initWeak(&location, v17);

  v18 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v19 = [(_UIRemoteKeyboards *)self proxy];
  [v19 setWindowHostingPID:v8 active:1];

  [(NSMutableArray *)self->_activePIDs addObject:v18];
  if (v12)
  {
    [(NSMutableArray *)self->_activeCIDs addObject:v12];
  }

  v20 = [v16 _isHostedInAnotherProcess];
  if ((v20 & 1) == 0)
  {
    [(_UIRemoteKeyboards *)self setWindowEnabled:[(_UIRemoteKeyboards *)self allowedToShowKeyboard]];
  }

  v21 = objc_loadWeakRetained(&location);
  [v16 updateLastRemoteView:1 forView:v10 inContainer:v21];

  v22 = objc_loadWeakRetained(&location);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68___UIRemoteKeyboards_addHostedWindowView_fromPID_forScene_callerID___block_invoke;
  v26[3] = &unk_1E7117D88;
  v26[4] = self;
  v23 = v18;
  v27 = v23;
  v32 = v20;
  v31 = v8;
  v24 = v12;
  v28 = v24;
  objc_copyWeak(&v30, &location);
  v25 = v10;
  v29 = v25;
  [v22 addHostedView:v25 withViewRemovalHandler:v26];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (void)performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:(uint64_t)a3 servicePID:
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (*(a1 + 96) == 1)
    {
      v7 = [v5 windowScene];
      v8 = v7 == *(a1 + 88);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 40);
    v10 = [MEMORY[0x1E696AD98] numberWithInt:a3];
    v11 = [v9 containsObject:v10];

    v12 = a3 ? v11 : 1;
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

      [(_UIRemoteKeyboards *)a1 _performRequiredSceneUpdateIfPermittedForWindow:v6 withContext:0x101010001];
    }
  }
}

- (BOOL)hasWindowHostingCallerID:(id)a3
{
  if (a3)
  {
    return [(NSMutableArray *)self->_activeCIDs containsObject:?];
  }

  else
  {
    return [(_UIRemoteKeyboards *)self hasAnyHostedViews];
  }
}

- (void)setSuppressingKeyboard:(BOOL)a3 forScene:(id)a4
{
  v4 = a3;
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_expectedSuppression != v4)
  {
    self->_expectedSuppression = v4;
    if (v4 && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v7 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54___UIRemoteKeyboards_setSuppressingKeyboard_forScene___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_after(v7, MEMORY[0x1E69E96A0], block);
    }

    v8 = [(_UIRemoteKeyboards *)self keyboardWindow];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v10 = [v11 containerWindow];
    }

    v12 = [v10 screen];
    v13 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:v12];

    if (v4)
    {
      if (!v6)
      {
        v6 = v13;
      }

      objc_storeStrong(&self->_suppressedScene, v6);
    }

    else if (!v6)
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

        v6 = suppressedScene;

        if (v19)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_21:
      }

      v6 = v13;
    }

LABEL_24:
    v21 = [(_UIRemoteKeyboards *)self proxy];
    [v21 notifyHostedPIDsOfSuppression:v4];

    v22 = +[UIPeripheralHost sharedInstance];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54___UIRemoteKeyboards_setSuppressingKeyboard_forScene___block_invoke_2;
    aBlock[3] = &unk_1E70F5AF0;
    v23 = v22;
    v27 = v23;
    v29 = v4;
    v6 = v6;
    v28 = v6;
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

- (void)queue_keyboardSuppressed:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62___UIRemoteKeyboards_queue_keyboardSuppressed_withCompletion___block_invoke;
  v9[3] = &unk_1E70FD0C8;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performAsync:v9];
}

- (void)queue_keyboardTransition:(id)a3 event:(unint64_t)a4 withInfo:(id)a5 onComplete:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
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

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __73___UIRemoteKeyboards_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_3;
      v28[3] = &unk_1E7106060;
      v29 = v10;
      v30 = v11;
      v14 = _Block_copy(v28);

      v15 = v29;
    }

    else
    {
      if (a4 != 3 || ![@"Placement" isEqualToString:v10])
      {
        goto LABEL_13;
      }

      v16 = [v11 objectForKey:@"Placement"];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __73___UIRemoteKeyboards_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_4;
      v25[3] = &unk_1E7106060;
      v26 = v16;
      v27 = v11;
      v15 = v16;
      v14 = _Block_copy(v25);
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __73___UIRemoteKeyboards_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_2;
        aBlock[3] = &unk_1E7106060;
        v32 = v10;
        v33 = v11;
        v14 = _Block_copy(aBlock);

        v15 = v32;
        goto LABEL_16;
      }

LABEL_13:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unknown transition data: %@/%lu/%@", v10, a4, v11}];
      goto LABEL_18;
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __73___UIRemoteKeyboards_queue_keyboardTransition_event_withInfo_onComplete___block_invoke;
    v34[3] = &unk_1E7106060;
    v35 = v10;
    v36 = v11;
    v14 = _Block_copy(v34);

    v15 = v35;
  }

LABEL_16:

  if (v14)
  {
    v17 = [UIApp _systemAnimationFenceExemptQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73___UIRemoteKeyboards_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_5;
    v19[3] = &unk_1E7106088;
    v20 = v10;
    v21 = self;
    v24 = a4;
    v22 = v14;
    v23 = v12;
    v18 = v14;
    [v17 performAsync:v19];

    goto LABEL_20;
  }

LABEL_18:
  if (v12)
  {
    v12[2](v12);
  }

LABEL_20:
}

- (void)setDisableBecomeFirstResponder:(BOOL)a3 forSuppressionAssertion:(BOOL)a4 updatePlacement:(BOOL)a5 wantsAssistant:(BOOL)a6
{
  if (self->_disablingKeyboard != a3)
  {
    v6 = a6;
    v7 = a5;
    v8 = a4;
    v9 = a3;
    v11 = [(_UIAssertionController *)self->_assertionController hasAssertionsForReason:@"WritingTools"];
    v12 = +[UIPeripheralHost sharedInstance];
    [v12 setDeactivatedKeyboard:v9 forScene:0 forSuppressionAssertion:v8 updatePlacement:v7 wantsAssistant:v6 keepAccessories:v11];

    self->_disablingKeyboard = v9;
    if (!v9)
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

- (void)setWantsAssistantWhileSuppressingKeyboard:(BOOL)a3
{
  if (self->_wantsAssistantWhileSuppressingKeyboard != a3)
  {
    v3 = a3;
    self->_wantsAssistantWhileSuppressingKeyboard = a3;
    if (a3)
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
      v9 = [v8 nextAnimationStyle];
      [v10 updatePlacementForDeactivatedKeyboard:1 forSuppressionAssertion:1 wantsAssistant:v3 keepAccessories:v7 animationStyle:v9];
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

  v7 = [(_UIRemoteKeyboards *)self keyboardWindow];
  v8 = [v7 rootViewController];

  v9 = [(UIViewController *)self->_stickerPrewarmingViewController view];
  v10 = v9;
  if (v9)
  {
    v11 = v8 == 0;
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
    v12 = [(UIViewController *)self->_stickerPrewarmingViewController view];
    v13 = [v12 window];
    v14 = [(_UIRemoteKeyboards *)self keyboardWindow];

    if (v13 != v14)
    {
      [v8 addChildViewController:self->_stickerPrewarmingViewController];
      v15 = [v8 view];
      v16 = [(UIViewController *)self->_stickerPrewarmingViewController view];
      [v15 addSubview:v16];
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      v27 = [v16 topAnchor];
      v28 = v15;
      v26 = [v15 bottomAnchor];
      v25 = [v27 constraintEqualToAnchor:v26];
      v29[0] = v25;
      v24 = [v16 leadingAnchor];
      v17 = [v15 trailingAnchor];
      v18 = [v24 constraintEqualToAnchor:v17];
      v29[1] = v18;
      v19 = [v16 widthAnchor];
      v20 = [v19 constraintEqualToConstant:1.0];
      v29[2] = v20;
      v21 = [v16 heightAnchor];
      v22 = [v21 constraintEqualToConstant:1.0];
      v29[3] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];

      [MEMORY[0x1E69977A0] activateConstraints:v23];
      [(UIViewController *)self->_stickerPrewarmingViewController didMoveToParentViewController:v8];
    }
  }
}

- (void)setStickerPrewarmingViewControllerEnabled:(BOOL)a3
{
  stickerPrewarmingViewController = self->_stickerPrewarmingViewController;
  if (a3)
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
    v7 = [(UIViewController *)self->_stickerPrewarmingViewController view];
    [v7 removeFromSuperview];

    [(UIViewController *)self->_stickerPrewarmingViewController removeFromParentViewController];
    v8 = self->_stickerPrewarmingViewController;
    self->_stickerPrewarmingViewController = 0;
  }
}

- (BOOL)assertionActivationStateForType:(unint64_t)a3
{
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      return 0;
    }

    v5 = [(UIViewController *)self->_stickerPrewarmingViewController _window];
    v6 = [(_UIRemoteKeyboards *)self keyboardWindow];
    v7 = v5 == v6;

    return v7;
  }

  else
  {

    return [(_UIRemoteKeyboards *)self disableBecomeFirstResponder];
  }
}

- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4
{
  v4 = a3;
  if (a4 > 1)
  {
    if (a4 == 2)
    {

      [(_UIRemoteKeyboards *)self setStickerPrewarmingViewControllerEnabled:?];
    }
  }

  else
  {
    v6 = [(_UIRemoteKeyboards *)self wantsAssistantWhileSuppressingKeyboard];

    [(_UIRemoteKeyboards *)self setDisableBecomeFirstResponder:v4 forSuppressionAssertion:1 updatePlacement:1 wantsAssistant:v6];
  }
}

- (void)queue_setKeyboardDisabled:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63___UIRemoteKeyboards_queue_setKeyboardDisabled_withCompletion___block_invoke;
  v9[3] = &unk_1E70FD0C8;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performAsync:v9];
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
  v5 = [(_UIRemoteKeyboards *)self proxy];
  v6 = [v4 copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39___UIRemoteKeyboards_forceKeyboardAway__block_invoke;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 signalKeyboardChanged:v6 onCompletion:v8];
}

- (void)preserveKeyboardWithId:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIArbiterClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "TX signalKeyboardChanged (preserveKeyboardWithId:%{public}@)", buf, 0xCu);
  }

  v6 = [_UIKeyboardChangedInformationWithFencing informationForKeyboardPreserve:v4];
  [(_UIRemoteKeyboards *)self updateLocalKeyboardChanged:v6];
  v7 = [(_UIRemoteKeyboards *)self proxy];
  v8 = [v6 copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45___UIRemoteKeyboards_preserveKeyboardWithId___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 signalKeyboardChanged:v8 onCompletion:v10];
}

- (void)restoreKeyboardWithId:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIArbiterClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "TX signalKeyboardChanged (restoreKeyboardWithId:%{public}@)", buf, 0xCu);
  }

  v6 = [_UIKeyboardChangedInformationWithFencing informationForKeyboardRestore:v4];
  [(_UIRemoteKeyboards *)self updateLocalKeyboardChanged:v6];
  v7 = [(_UIRemoteKeyboards *)self proxy];
  v8 = [v6 copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44___UIRemoteKeyboards_restoreKeyboardWithId___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 signalKeyboardChanged:v8 onCompletion:v10];
}

- (void)userSelectedApp:(id)a3 onCompletion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && ![v6 isEqualToString:&stru_1EFB14550])
  {
    v11 = 0;
  }

  else
  {
    v8 = [(_UIRemoteKeyboards *)self requiredScene];
    v9 = [v8 identityToken];
    v10 = [v9 stringRepresentation];
    [(_UIRemoteKeyboards *)self setFocusedSceneIdentityStringOrIdentifier:v10];

    v11 = [(_UIRemoteKeyboards *)self focusedSceneIdentityStringOrIdentifier];
  }

  v12 = _UIArbiterClientLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v6;
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
      v19 = v6;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "%s: Focus bundle: %@, sceneIdentity: %@", &v16, 0x20u);
    }
  }

  if (!v7)
  {
    v7 = &__block_literal_global_713;
  }

  v14 = [(_UIRemoteKeyboards *)self proxy];
  [v14 applicationShouldFocusWithBundle:v6 onCompletion:v7];
}

- (void)pointIsWithinKeyboardContent:(CGPoint)a3 onCompletion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_UIRemoteKeyboards *)self proxy];
  [v8 pointIsWithinKeyboardContent:v7 onCompletion:{x, y}];
}

- (void)userTapsOnKeyboard
{
  if (!self->_userHasTappedOnKeyboard)
  {
    self->_userHasTappedOnKeyboard = 1;
    v3 = [(_UIRemoteKeyboards *)self proxy];
    [v3 userFirstTapOnKeyboard];
  }
}

- (void)updateAllVisibleFrames
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v4 = [v3 visualModeManager];
    v5 = [v4 windowingModeEnabled];

    if (v5)
    {
      if (self->_currentKeyboard)
      {
        v6 = [(_UIRemoteKeyboards *)self inputWindowRootViewController];
        v8 = [UIPeripheralHost allVisibleFrames:v6];
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
        v7 = [(_UIRemoteKeyboards *)self proxy];
        [v7 setAllVisibleFrames:v8];
      }
    }
  }
}

- (void)userSelectedProcessIdentifier:(int)a3 withSceneIdentity:(id)a4 onCompletion:(id)a5
{
  v6 = *&a3;
  v27 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [v8 stringRepresentation];
  if (!v8)
  {
    v11 = [(_UIRemoteKeyboards *)self requiredScene];
    v12 = [v11 identityToken];
    v13 = [v12 stringRepresentation];
    [(_UIRemoteKeyboards *)self setFocusedSceneIdentityStringOrIdentifier:v13];

    v14 = [(_UIRemoteKeyboards *)self focusedSceneIdentityStringOrIdentifier];

    v10 = v14;
  }

  v15 = _UIArbiterClientLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v8 description];
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
      v26 = v10;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "%s: Focus PID: %d, sceneIdentity: %@", &v23, 0x1Cu);
    }
  }

  if (!v9)
  {
    v9 = &__block_literal_global_718;
  }

  v19 = [(_UIRemoteKeyboards *)self proxy];
  v20 = +[UIWindow _applicationKeyWindow];
  v21 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:v8 window:v20];
  [v19 focusApplicationWithProcessIdentifier:v6 context:v21 onCompletion:v9];
}

- (void)requestEventDeferralTargetSelectionForWindow:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[UIKeyboard doesKeyboardFollowEventDeferralTarget])
  {
    [(_UIRemoteKeyboards *)self _performRequiredSceneUpdateIfPermittedForWindow:v4 withContext:0x100010001];
    v5 = [(_UIRemoteKeyboards *)self requiredScene];
    v6 = [v5 identityToken];

    v7 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:v6 window:v4];
    v8 = _UIArbiterClientLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 descriptionForLog];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "TX focusApplication (requestEventDeferralTargetSelection) stealKB:N context:%{public}@", &v11, 0xCu);
    }

    v10 = [(_UIRemoteKeyboards *)self proxy];
    [v10 focusApplicationWithProcessIdentifier:getpid() context:v7 stealingKeyboard:0 onCompletion:&__block_literal_global_723];
  }
}

- (void)_postInputSourceDidChangeNotificationForResponder:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v5 = [v6 responder];

    if (!v5)
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
  v17[1] = v5;
  v8 = MEMORY[0x1E695DF20];
  v9 = v17;
  v10 = v16;
  v11 = 2;
LABEL_5:
  v12 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:v11];

  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  [v13 postNotificationName:@"UITextInputSourceDidChangeNotification" object:0 userInfo:v12];
}

- (void)_updateEventSource:(int64_t)keyboardSource options:(unint64_t)a4 responder:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (keyboardSource)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((v5 & 8) != 0)
  {
LABEL_6:
    self->_keyboardSource = keyboardSource;
    goto LABEL_7;
  }

  keyboardSource = self->_keyboardSource;
LABEL_7:
  if ((v5 & 0x10) == 0 && self->_lastEventSource == keyboardSource)
  {
    goto LABEL_14;
  }

  self->_lastEventSource = keyboardSource;
  v11 = v8;
  if ((v5 & 1) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    v10 = [(_UIRemoteKeyboards *)self proxy];
    [v10 signalEventSourceChanged:keyboardSource completionHandler:&__block_literal_global_726];

    v8 = v11;
    if ((v5 & 1) == 0)
    {
LABEL_12:
      if ((v5 & 2) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_19;
  }

  [UIScribbleInteraction _lastEventSourceChanged:keyboardSource];
  v8 = v11;
  if ((v5 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_19:
  [(_UIRemoteKeyboards *)self _postInputSourceDidChangeNotificationForResponder:v11];
  v8 = v11;
  if ((v5 & 2) != 0)
  {
LABEL_13:
    v9 = +[UIKeyboardImpl activeInstance];
    [v9 _suppressSoftwareKeyboardStateChangedIgnoringPolicyDelegate:0];

    v8 = v11;
  }

LABEL_14:
}

- (void)queue_setLastEventSource:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62___UIRemoteKeyboards_queue_setLastEventSource_withCompletion___block_invoke;
  v9[3] = &unk_1E70F5FA8;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [v7 performAsync:v9];
}

- (BOOL)_sceneFocusUpdatePermittedForWindow:(id)a3
{
  v4 = a3;
  if (v4 && [UIApp _systemShellAllowsInteractionTrackingKeyboardFocusUpdateForWindow:v4] && -[_UIRemoteKeyboards _sceneFocusPermittedForApplication](self, "_sceneFocusPermittedForApplication"))
  {
    v5 = [v4 windowScene];
    v6 = v5;
    v7 = 0;
    if (self)
    {
      v8 = v5;
      if (!v5)
      {
LABEL_39:

        goto LABEL_40;
      }

      if ([(_UIRemoteKeyboards *)self _sceneFocusPermittedForApplication])
      {
        v9 = [v6 _keyboardClientComponent];
        if (([v9 suppressKeyboardFocusRequests] & 1) == 0)
        {
          v10 = +[UIWindowScene _keyWindowScene];

          if (v10 == v6)
          {

LABEL_23:
            if (([v4 _isTextEffectsWindow] & 1) != 0 || (objc_msgSend(v4, "_isRemoteKeyboardWindow") & 1) != 0 || (objc_msgSend(v4, "windowScene"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "_FBSScene"), v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v21) || !objc_msgSend(v4, "_isHostedInAnotherProcess"))
            {
              isKindOfClass = 0;
            }

            else
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
            }

            v23 = [v4 _canUpdateSceneFocus];
            if ((isKindOfClass & 1) == 0 && !v23 || ![v4 _appearsInLoupe])
            {
LABEL_34:
              v7 = 0;
LABEL_40:

              goto LABEL_19;
            }

            v8 = [(_UIRemoteKeyboards *)self focusedSceneIdentityStringOrIdentifier];
            v9 = _UIRemoteKeyboardsFBSSceneIdentityStringOrIdentifierFromScene(v6);
            v24 = [(_UIRemoteKeyboards *)self keyboardVisible];
            if (v8)
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
              if (v26 == v4)
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

            if (v24)
            {
              v7 = v25 | v28;
            }

            else
            {
              v7 = 1;
            }

            goto LABEL_38;
          }

          v11 = [v6 screen];
          if (([v11 _userInterfaceIdiom] - 2) > 2)
          {
            v12 = [_UIRemoteKeyboards keyboardWindowSceneForScreen:v11 create:0];
            v13 = [v6 session];
            v14 = [v13 role];
            v15 = [v14 isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"];

            v16 = [v6 activationState];
            v17 = [v6 activationState];
            if (v12 != v6)
            {
              if (v16 != 1 && v17 != 0)
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
        v8 = v6;
LABEL_38:

        goto LABEL_39;
      }

      v7 = 0;
    }

    v8 = v6;
    goto LABEL_39;
  }

  v7 = 0;
LABEL_19:

  return v7 & 1;
}

- (void)peekApplicationEvent:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UIRemoteKeyboards *)self _usesInvisibleKeyboardBehindWTUI]&& self->_showsInvisibleKeyboardBehindWTUI)
  {
    self->_dontSuppressKeyboardAgain = 1;
  }

  if (![v4 type])
  {
    [(_UIRemoteKeyboardsEventObserver *)self->_eventObserver peekApplicationEvent:v4];
    v5 = [(_UIRemoteKeyboards *)self _sceneFocusPermittedForApplication];
    v6 = [v4 allTouches];
    v7 = [v6 anyObject];

    v8 = [v7 phase];
    if (v5)
    {
      if (v8)
      {
        v9 = v8 == 3;
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

    v11 = [v7 window];
    v12 = [v11 _isRemoteKeyboardWindow];

    v13 = [v7 view];
    v14 = v13;
    if (v12)
    {
      [v7 window];
    }

    else
    {
      [v13 _responderWindow];
    }
    v15 = ;
    if (v10)
    {
      v16 = _UITouchIsWithinTiledWindowResizeRegion(v7, v15) ? 3 : 0;
      if ([v7 phase] == v16)
      {
        v17 = [v15 windowScene];
        v18 = [v17 _FBSScene];
        v19 = v18;
        if (v18)
        {
          v20 = [v18 identityToken];
          v21 = [v20 stringRepresentation];
        }

        else
        {
          v21 = [v17 _sceneIdentifier];
        }

        v22 = [(_UIRemoteKeyboards *)self _sceneFocusUpdatePermittedForWindow:v15];
        v23 = [v14 _wantsTargetOfKeyboardEventDeferringEnvironment];
        if ((v12 & 1) == 0)
        {
          v24 = [v7 type] == 2;
          v25 = +[UIDictationController activeInstance];
          [v25 cancelDictationForResponderIfNeeded:v14 wantsKeyboard:v23 isPencil:v24];
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
            *(&v50 + 6) = v21;
            _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, "%s: Update permitted: %d; for scene identity or identifier: %@", buf, 0x1Cu);
          }
        }

        if (v22)
        {
          v27 = [(_UIRemoteKeyboards *)self keyboardVisible];
          v28 = [v7 _isPointerTouch];
          v29 = __UILogGetCategoryCachedImpl("KeyboardFocus", &qword_1ED4997C8);
          if (*v29)
          {
            loga = *(v29 + 8);
            if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              v48 = "[_UIRemoteKeyboards peekApplicationEvent:]";
              v49 = 1024;
              LODWORD(v50) = (!v27 | v28 | v23) & 1;
              WORD2(v50) = 1024;
              *(&v50 + 6) = v27;
              WORD5(v50) = 1024;
              HIDWORD(v50) = v23;
              v51 = 1024;
              v52 = v28 & 1;
              v53 = 2112;
              v54 = v21;
              _os_log_impl(&dword_188A29000, loga, OS_LOG_TYPE_ERROR, "%s: Request scene focus: %d; keyboardOnScreen: %d; wantsKeyboard: %d; touchIsPointer: %d; for scene identity or identifier: %@", buf, 0x2Eu);
            }
          }

          if ((!v27 | v28 | v23))
          {
            v30 = 0x100010001;
            if (v23 && ![v14 isFirstResponder])
            {
              v30 = 65537;
            }

            [(_UIRemoteKeyboards *)self _performRequiredSceneUpdateIfPermittedForWindow:v15 withContext:v30];
            v31 = [(_UIRemoteKeyboards *)self requiredScene];
            v32 = [v31 identityToken];

            v33 = [(_UIRemoteKeyboards *)self currentKeyboard]| v23;
            log = v33 ^ 1;
            v34 = _UIArbiterClientLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v43 = v21;
              if (v33)
              {
                v35 = "N";
              }

              else
              {
                v35 = "Y";
              }

              v36 = [v32 description];
              v37 = _UISceneIdentityToLogString(v36);
              *buf = 136315394;
              v48 = v35;
              v21 = v44;
              v49 = 2114;
              *&v50 = v37;
              _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_DEFAULT, "TX focusApplication (peekAppEvent) stealKB:%s scene:%{public}@", buf, 0x16u);
            }

            v38 = [(_UIRemoteKeyboards *)self proxy];
            v39 = getpid();
            v40 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:v32 window:v15];
            [v38 focusApplicationWithProcessIdentifier:v39 context:v40 stealingKeyboard:log & 1 onCompletion:&__block_literal_global_733];

            if (([v15 _isApplicationKeyWindow] & 1) == 0)
            {
              [(_UIRemoteKeyboards *)self setUpdatingKeyWindow:1];
              [v15 makeKeyWindow];
              [(_UIRemoteKeyboards *)self setUpdatingKeyWindow:0];
            }
          }

          else
          {
            v41 = [v15 windowScene];
            v32 = [v41 keyboardSceneDelegate];

            [v32 setKeyWindowCandidate:v15];
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

- (BOOL)shouldAllowInputViewsRestoredForId:(id)a3
{
  v4 = a3;
  if ([(_UIRemoteKeyboards *)self keyboardActive])
  {
    v5 = 1;
  }

  else if ([(_UIRemoteKeyboards *)self _isWritingToolsHandlingKeyboardTracking])
  {
    v6 = [(_UIRemoteKeyboards *)self yieldingKeyboardToIgnoredScene];
    v5 = v6 != 0;
  }

  else
  {
    v5 = 0;
  }

  v7 = [objc_opt_class() bundlesThatShouldNotPreventRestoration];
  v8 = [(_UIRemoteKeyboards *)self currentState];
  v9 = [v8 sourceBundleIdentifier];
  if (([v7 containsObject:v9] & 1) != 0 || v5 | !-[_UIRemoteKeyboards keyboardVisible](self, "keyboardVisible"))
  {
    v10 = 1;
  }

  else
  {
    v10 = [v4 isEqual:@"remote-keyboards"];
  }

  return v10;
}

- (void)applicationWillAddDeactivationReason:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  v6 = [v5 integerValue];

  if (v6 > 13)
  {
    if ((v6 - 14) >= 3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  switch(v6)
  {
    case 2:
      self->_deactivatedByControlCenter = 1;
      break;
    case 7:
LABEL_7:
      v7 = [(_UIRemoteKeyboards *)self focusedSceneIdentityStringOrIdentifier];
      self->_hadFocusBeforeOverlay = v7 != 0;

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

  v12 = [(_UIRemoteKeyboards *)self currentState];
  v10 = [v12 hostBundleIdentifier];
  v11 = _UIMainBundleIdentifier();
  if ([v10 isEqualToString:v11])
  {

LABEL_9:
    if (v6 == 12)
    {
      v8 = _UIArbiterClientLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "TX setDeactivating: Y (+DeactivationReason:SuspendedEventsOnly)", buf, 2u);
      }

      v9 = [(_UIRemoteKeyboards *)self proxy];
      [v9 setDeactivating:1];
    }

    return;
  }
}

- (void)applicationDidRemoveDeactivationReason:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  v6 = [v5 integerValue];

  if (v6 <= 12)
  {
    if (v6 == 2)
    {
      self->_deactivatedByControlCenter = 0;
      return;
    }

    if (v6 != 7)
    {
      goto LABEL_11;
    }
  }

  else if ((v6 - 14) >= 3)
  {
    if (v6 == 13)
    {
      self->_deactivatedBySystemAlert = 0;
    }

    return;
  }

  if (self->_hadFocusBeforeOverlay)
  {
    v7 = [(_UIRemoteKeyboards *)self focusedSceneIdentityStringOrIdentifier];

    if (v7)
    {
      v8 = [(_UIRemoteKeyboards *)self proxy];
      [v8 applicationShouldFocusWithBundle:0 onCompletion:&__block_literal_global_740];
    }
  }

  self->_hadFocusBeforeOverlay = 0;
LABEL_11:
  if (v6 == 12)
  {
    v9 = _UIArbiterClientLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Send setDeactivating: N (-DeactivationReason:SuspendedEventsOnly)", v11, 2u);
    }

    v10 = [(_UIRemoteKeyboards *)self proxy];
    [v10 setDeactivating:0];
  }
}

- (void)applicationWillResignActive:(id)a3
{
  if ([(_UIRemoteKeyboards *)self currentKeyboard])
  {
    if (!self->_deactivatedByControlCenter)
    {
      v4 = _UIMainBundleIdentifier();
      v5 = [v4 isEqualToString:@"com.apple.Spotlight"];

      if ((v5 & 1) == 0)
      {
        v6 = [(_UIRemoteKeyboards *)self currentState];
        v7 = [v6 copyWithIntersectability:0];

        [v7 setShouldTakeSnapshot:0];
        [(_UIRemoteKeyboards *)self signalToProxyKeyboardChanged:v7 onCompletion:&__block_literal_global_742];
      }
    }
  }

  v8 = [(_UIRemoteKeyboards *)self inputWindowRootViewController];
  v9 = [v8 presentedViewController];

  if (v9)
  {
    v11 = [(_UIRemoteKeyboards *)self inputWindowRootViewController];
    v10 = [v11 presentedViewController];
    [v10 dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)applicationDidBecomeActive:(id)a3 forceSignalToProxy:(BOOL)a4
{
  v12 = a3;
  if (a4 || [(_UIRemoteKeyboards *)self currentKeyboard]&& !self->_deactivatedByControlCenter)
  {
    v6 = [(_UIRemoteKeyboards *)self backupState];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 copyWithIntersectability:1];
    }

    else
    {
      v9 = [(_UIRemoteKeyboards *)self currentState];
      v8 = [v9 copyWithIntersectability:1];
    }

    [v8 setShouldTakeSnapshot:0];
    [(_UIRemoteKeyboards *)self signalToProxyKeyboardChanged:v8 onCompletion:&__block_literal_global_744];
    v10 = [(_UIRemoteKeyboards *)self keyboardWindow];
    v11 = [v10 _isHostedInAnotherProcess];

    if ((v11 & 1) == 0)
    {
      [(_UIRemoteKeyboards *)self setWindowEnabled:1];
    }
  }

  self->_deactivatedByControlCenter = 0;
}

- (void)setEnableMultiscreenHack:(BOOL)a3
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

  self->_enableMultiscreenHack = a3;
}

- (BOOL)keyboardIsForSystemService
{
  if (![(_UIKeyboardUIInformation *)self->_currentState keyboardOnScreen])
  {
    return 0;
  }

  v3 = [(_UIKeyboardChangedInformation *)self->_currentState sourceBundleIdentifier];
  v4 = _UIMainBundleIdentifier();
  if ([v3 isEqualToString:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(_UIKeyboardChangedInformation *)self->_currentState sourceBundleIdentifier];
    if ([v6 isEqualToString:@"com.apple.Spotlight"])
    {
      v5 = 1;
    }

    else
    {
      v7 = [(_UIKeyboardChangedInformation *)self->_currentState sourceBundleIdentifier];
      if ([v7 isEqualToString:@"com.apple.siri"])
      {
        v5 = 1;
      }

      else
      {
        v8 = [(_UIKeyboardChangedInformation *)self->_currentState sourceBundleIdentifier];
        if ([v8 isEqualToString:@"com.apple.CoreAuthUI"])
        {
          v5 = 1;
        }

        else
        {
          v5 = [v8 isEqualToString:@"com.apple.LocalAuthenticationUIService"];
        }
      }
    }
  }

  return v5;
}

- (void)startTransition:(id)a3 withInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIRemoteKeyboards *)self proxy];
  [v8 transition:v7 eventStage:0 withInfo:v6];
}

- (void)updateTransition:(id)a3 withInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIRemoteKeyboards *)self proxy];
  [v8 transition:v7 eventStage:1 withInfo:v6];
}

- (void)completeTransition:(id)a3 withInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIRemoteKeyboards *)self proxy];
  [v8 transition:v7 eventStage:2 withInfo:v6];

  [(_UIRemoteKeyboards *)self updateAllVisibleFrames];
}

- (void)setPlacement:(id)a3 quietly:(BOOL)a4 animated:(BOOL)a5 generateSplitNotification:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v17[4] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [(_UIRemoteKeyboards *)self proxy];
  v17[0] = v10;
  v16[0] = @"Placement";
  v16[1] = @"Quiet";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  v17[1] = v12;
  v16[2] = @"Animated";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  v17[2] = v13;
  v16[3] = @"Notify";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v17[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];

  [v11 transition:@"Placement" eventStage:3 withInfo:v15];
}

@end