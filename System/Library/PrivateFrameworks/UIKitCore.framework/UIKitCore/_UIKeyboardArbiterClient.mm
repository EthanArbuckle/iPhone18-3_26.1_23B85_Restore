@interface _UIKeyboardArbiterClient
+ (BOOL)enabled;
+ (id)automaticSharedArbiterClient;
+ (id)keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:(id)a3;
+ (id)mainBundleIdentifier;
+ (id)serviceName;
- (BOOL)_didHandleKeyboardClientChange:(id)a3 shouldConsiderSnapshottingKeyboard:(BOOL)a4 isLocalEvent:(BOOL)a5;
- (BOOL)allowedToShowKeyboard;
- (BOOL)hasAnyHostedViews;
- (BOOL)isOnScreenRotating;
- (BOOL)isSpotlight:(id)a3;
- (BOOL)keyboardActive;
- (BOOL)keyboardClientDidChange:(id)a3;
- (BOOL)keyboardVisible;
- (BOOL)remoteKeyboardUndocked:(BOOL)a3;
- (BOOL)shouldAllowInputViewsRestoredForId:(id)a3;
- (FBSScene)requiredScene;
- (UIInputWindowController)inputWindowRootViewController;
- (_UIKBArbiterClientKeyboardChangeDelegate)changeInfoDelegate;
- (_UIKeyboardArbiterClient)initWithShouldConnect:(BOOL)a3;
- (_UIKeyboardUIStateDelegate)kbUIStateDelegate;
- (double)heightForRemoteIAVPlaceholderIfNecessary;
- (id)arbiterConnection;
- (id)arbiterProxy;
- (id)existingInputWindowRootViewController;
- (void)_handleKeyboardChanged:(id)a3 isLocal:(BOOL)a4 onComplete:(id)a5;
- (void)_performOnDistributedControllersExceptSelf:(id)a3;
- (void)_postInputSourceDidChangeNotificationForResponder:(id)a3;
- (void)_updateEventSource:(int64_t)a3 options:(unint64_t)a4 responder:(id)a5;
- (void)applicationResume:(id)a3;
- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4;
- (void)checkConnection;
- (void)checkState;
- (void)cleanSuppression;
- (void)completeTransition:(id)a3 withInfo:(id)a4;
- (void)configureArbiterCommunication:(id)a3;
- (void)controllerDidLayoutSubviews:(id)a3;
- (void)dealloc;
- (void)didFailArbiterConnection;
- (void)didSuspend:(id)a3;
- (void)ignoreLayoutNotifications:(id)a3;
- (void)keyboardChangedCompleted;
- (void)performOnControllers:(id)a3;
- (void)performOnDistributedControllers:(id)a3;
- (void)performOnExistingControllers:(id)a3;
- (void)queue_endInputSessionWithCompletion:(id)a3;
- (void)queue_failedConnection:(id)a3;
- (void)queue_getDebugInfoWithCompletion:(id)a3;
- (void)queue_keyboardChanged:(id)a3 onComplete:(id)a4;
- (void)queue_keyboardChangedWithCompletion:(id)a3;
- (void)queue_keyboardIAVChanged:(double)a3 onComplete:(id)a4;
- (void)queue_keyboardSuppressed:(BOOL)a3 withCompletion:(id)a4;
- (void)queue_keyboardTransition:(id)a3 event:(unint64_t)a4 withInfo:(id)a5 onComplete:(id)a6;
- (void)queue_keyboardUIDidChange:(id)a3 onComplete:(id)a4;
- (void)queue_sceneBecameFocused:(id)a3 withCompletion:(id)a4;
- (void)queue_setLastEventSource:(int64_t)a3 withCompletion:(id)a4;
- (void)registerController:(id)a3;
- (void)sceneUpdated;
- (void)setDisableBecomeFirstResponder:(BOOL)a3 forSuppressionAssertion:(BOOL)a4 updatePlacement:(BOOL)a5 wantsAssistant:(BOOL)a6;
- (void)setPlacement:(id)a3 quietly:(BOOL)a4 animated:(BOOL)a5 generateSplitNotification:(BOOL)a6;
- (void)setSnapshotting:(BOOL)a3;
- (void)signalToProxyKeyboardChanged:(id)a3 onCompletion:(id)a4;
- (void)startConnectionWithCompletion:(id)a3;
- (void)startTransition:(id)a3 withInfo:(id)a4;
- (void)stopConnection;
- (void)unregisterController:(id)a3;
- (void)updateTransition:(id)a3 withInfo:(id)a4;
- (void)willResume:(id)a3;
@end

@implementation _UIKeyboardArbiterClient

- (_UIKBArbiterClientKeyboardChangeDelegate)changeInfoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_changeInfoDelegate);

  return WeakRetained;
}

+ (id)automaticSharedArbiterClient
{
  if (_MergedGlobals_1068 != -1)
  {
    dispatch_once(&_MergedGlobals_1068, &__block_literal_global_180);
  }

  v3 = qword_1ED49DA80;

  return v3;
}

- (void)checkState
{
  if ([UIApp _shouldAllowKeyboardArbiter])
  {

    [(_UIKeyboardArbiterClient *)self checkConnection];
  }

  else
  {
    v3 = [(_UIKeyboardArbiterClient *)self connection];

    if (v3)
    {

      [(_UIKeyboardArbiterClient *)self stopConnection];
    }
  }
}

- (void)checkConnection
{
  v3 = [(_UIKeyboardArbiterClient *)self connection];
  if (v3)
  {
  }

  else if ([(_UIKeyboardArbiterClient *)self allowedToShowKeyboard])
  {

    [(_UIKeyboardArbiterClient *)self startConnection];
  }
}

- (BOOL)keyboardActive
{
  if ([(_UIKeyboardArbiterClient *)self currentInputDestination])
  {
    return 1;
  }

  return [(_UIKeyboardArbiterClient *)self keyboardUIHost];
}

- (void)keyboardChangedCompleted
{
  v2 = [(_UIKeyboardArbiterClient *)self currentUIState];
  [v2 resetAnimationFencing];
}

+ (BOOL)enabled
{
  if (_UIApplicationIsApplicationWidgetExtension() & 1) != 0 || (_UIApplicationIsKeyboardExtension() & 1) != 0 || (_UIApplicationIsKeyboardMediaService() & 1) != 0 || (_UIApplicationIsWidgetServer())
  {
    return 0;
  }

  else
  {
    return _UIApplicationIsFirstPartyStickers() ^ 1;
  }
}

- (id)arbiterConnection
{
  v3 = KeyboardArbiterClientLog_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClient arbiterConnection]  Starting arbiter connection", v12, 2u);
  }

  v4 = objc_alloc(MEMORY[0x1E696B0B8]);
  v5 = [objc_opt_class() serviceName];
  v6 = [v4 initWithMachServiceName:v5 options:4096];

  [(_UIKeyboardArbiterClient *)self configureArbiterCommunication:v6];
  v7 = [v6 exportedInterface];
  v8 = _UIKBArbiterSetForPlacements();
  [v7 setClasses:v8 forSelector:sel_queue_keyboardTransition_event_withInfo_onComplete_ argumentIndex:2 ofReply:0];

  v9 = [v6 remoteObjectInterface];
  v10 = _UIKBArbiterSetForPlacements();
  [v9 setClasses:v10 forSelector:sel_transition_eventStage_withInfo_ argumentIndex:2 ofReply:0];

  return v6;
}

+ (id)serviceName
{
  if (qword_1ED49DA90 != -1)
  {
    dispatch_once(&qword_1ED49DA90, &__block_literal_global_32_1);
  }

  v3 = qword_1ED49DA88;

  return v3;
}

+ (id)mainBundleIdentifier
{
  if (qword_1ED49DA98 != -1)
  {
    dispatch_once(&qword_1ED49DA98, &__block_literal_global_228_0);
  }

  v3 = qword_1ED49DAA0;

  return v3;
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

- (_UIKeyboardArbiterClient)initWithShouldConnect:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = _UIKeyboardArbiterClient;
  v4 = [(_UIKeyboardArbiterClient *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_shouldFence = 1;
    v6 = objc_alloc_init(_UIRemoteKeyboardsEventObserver);
    eventObserver = v5->_eventObserver;
    v5->_eventObserver = v6;

    [(_UIRemoteKeyboardsEventObserver *)v5->_eventObserver setDelegate:v5];
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    windowControllers = v5->_windowControllers;
    v5->_windowControllers = v8;

    if (v3)
    {
      [(_UIKeyboardArbiterClient *)v5 checkConnection];
    }

    v10 = [[_UIAssertionController alloc] initWithAssertionSubject:v5];
    assertionController = v5->_assertionController;
    v5->_assertionController = v10;

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v5 selector:sel_applicationResume_ name:@"UIApplicationResumedEventsOnlyNotification" object:UIApp];
    [v12 addObserver:v5 selector:sel_willResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [v12 addObserver:v5 selector:sel_didSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  }

  return v5;
}

- (void)dealloc
{
  v6[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIApplicationResumedEventsOnlyNotification";
  v6[1] = @"UIApplicationWillEnterForegroundNotification";
  v6[2] = @"UIApplicationDidEnterBackgroundNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  [(_UIKeyboardArbiterClient *)self stopConnection];
  [(_UIKeyboardArbiterClient *)self resetSnapshotWithWindowCheck:0];
  v5.receiver = self;
  v5.super_class = _UIKeyboardArbiterClient;
  [(_UIKeyboardArbiterClient *)&v5 dealloc];
}

- (void)configureArbiterCommunication:(id)a3
{
  v3 = MEMORY[0x1E696B0D0];
  v4 = a3;
  v5 = [v3 interfaceWithProtocol:&unk_1F013B418];
  [v4 setRemoteObjectInterface:v5];

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF09B68];
  [v4 setExportedInterface:v6];
}

- (id)arbiterProxy
{
  v2 = [(_UIKeyboardArbiterClient *)self connection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_130];

  return v3;
}

- (void)startConnectionWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(_UIKeyboardArbiterClient *)self connection];

  if (!v6 && [UIApp _shouldAllowKeyboardArbiter])
  {
    v7 = _UIArbiterClientLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "startConnection", buf, 2u);
    }

    v8 = +[UIDevice currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if ((v9 - 2) >= 3)
    {
      v10 = [(_UIKeyboardArbiterClient *)self arbiterConnection];
      connection = self->_connection;
      self->_connection = v10;

      v12 = BSDispatchQueueCreateWithQualityOfService();
      v13 = [(_UIKeyboardArbiterClient *)self connection];
      [v13 _setQueue:v12];

      objc_initWeak(buf, self);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __58___UIKeyboardArbiterClient_startConnectionWithCompletion___block_invoke;
      v33[3] = &unk_1E70F5A28;
      objc_copyWeak(&v34, buf);
      v14 = [(_UIKeyboardArbiterClient *)self connection];
      [v14 setInterruptionHandler:v33];

      v15 = v31;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __58___UIKeyboardArbiterClient_startConnectionWithCompletion___block_invoke_133;
      v31[3] = &unk_1E70F5A28;
      objc_copyWeak(&v32, buf);
      v16 = [(_UIKeyboardArbiterClient *)self connection];
      [v16 setInvalidationHandler:v31];

      v17 = [(_UIKeyboardArbiterClient *)self connection];
      [v17 setExportedObject:self];

      v18 = [(_UIKeyboardArbiterClient *)self connection];

      if (!v18)
      {
LABEL_17:
        objc_destroyWeak(&v32);
        objc_destroyWeak(&v34);
        objc_destroyWeak(buf);

        goto LABEL_18;
      }

      v19 = [(_UIKeyboardArbiterClient *)self connection];
      [v19 resume];

      [(_UIKeyboardArbiterClient *)self setExpectingInitialState:1];
      [(_UIKeyboardArbiterClient *)self setAvoidDisableKeyboard:0];
      v20 = [(_UIKeyboardArbiterClient *)self requiredScene];
      v27 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
      v21 = [(_UIKeyboardArbiterClient *)self currentInputDestination];
      if (v21)
      {
        v26 = [(_UIKeyboardArbiterClient *)self currentClientState];
        if (v20)
        {
LABEL_9:
          v3 = [v20 identityToken];
          v15 = +[UIWindow _applicationKeyWindow];
          v22 = +[UIKBArbiterClientFocusContext focusContextForSceneIdentity:contextID:](UIKBArbiterClientFocusContext, "focusContextForSceneIdentity:contextID:", v3, [v15 _contextId]);
LABEL_12:
          v23 = [(_UIKeyboardArbiterClient *)self currentHostedPIDs];
          v24 = [(_UIKeyboardArbiterClient *)self shouldFence];
          v25 = [(_UIKeyboardArbiterClient *)self expectedSuppression];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __58___UIKeyboardArbiterClient_startConnectionWithCompletion___block_invoke_136;
          v28[3] = &unk_1E7105FF0;
          v29 = v5;
          objc_copyWeak(&v30, buf);
          [v27 startArbitrationWithExpectedState:v26 focusContext:v22 hostingPIDs:v23 usingFence:v24 withSuppression:v25 onConnected:v28];

          if (v20)
          {
          }

          if (v21)
          {
          }

          objc_destroyWeak(&v30);
          goto LABEL_17;
        }
      }

      else
      {
        v26 = 0;
        if (v20)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      goto LABEL_12;
    }
  }

LABEL_18:
}

- (void)stopConnection
{
  v3 = _UIArbiterClientLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "stopConnection", v8, 2u);
  }

  v4 = [(_UIKeyboardArbiterClient *)self connection];
  [v4 setInvalidationHandler:0];

  v5 = [(_UIKeyboardArbiterClient *)self connection];
  [v5 setInterruptionHandler:0];

  v6 = [(_UIKeyboardArbiterClient *)self connection];
  [v6 invalidate];

  connection = self->_connection;
  self->_connection = 0;
}

- (BOOL)keyboardVisible
{
  v2 = [(_UIKeyboardArbiterClient *)self currentUIState];
  v3 = [v2 keyboardOnScreen];

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
  v4[2] = __46___UIKeyboardArbiterClient_isOnScreenRotating__block_invoke;
  v4[3] = &unk_1E7106018;
  v4[4] = &v5;
  [(_UIKeyboardArbiterClient *)self performOnExistingControllers:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)hasAnyHostedViews
{
  v2 = [(_UIKeyboardArbiterClient *)self currentHostedPIDs];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)remoteKeyboardUndocked:(BOOL)a3
{
  v3 = a3;
  if ([(_UIKeyboardArbiterClient *)self currentInputDestination]&& !v3 || ![(_UIKeyboardArbiterClient *)self keyboardVisible])
  {
    return 0;
  }

  v5 = [(_UIKeyboardArbiterClient *)self currentUIState];
  [v5 keyboardPosition];
  v7 = v6 != 0.0;

  return v7;
}

- (BOOL)isSpotlight:(id)a3
{
  v3 = a3;
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = [v3 isEqualToString:@"com.apple.Spotlight"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4
{
  if (a4 <= 1)
  {
    [(_UIKeyboardArbiterClient *)self setDisableBecomeFirstResponder:a3 forSuppressionAssertion:1 updatePlacement:1 wantsAssistant:0];
  }
}

- (double)heightForRemoteIAVPlaceholderIfNecessary
{
  v3 = [UIApp _isSpringBoard];
  result = 0.0;
  if (v3)
  {
    return self->_heightForRemoteIAVPlaceholderIfNecessary;
  }

  return result;
}

- (UIInputWindowController)inputWindowRootViewController
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 containerRootController];

  return v3;
}

- (id)existingInputWindowRootViewController
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 existingContainerRootController];

  return v3;
}

- (void)queue_endInputSessionWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [UIApp _systemAnimationFenceExemptQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64___UIKeyboardArbiterClient_queue_endInputSessionWithCompletion___block_invoke;
  v6[3] = &unk_1E70F0F78;
  v7 = v3;
  v5 = v3;
  [v4 performAsync:v6];
}

- (void)queue_failedConnection:(id)a3
{
  v4 = a3;
  v5 = KeyboardArbiterClientLog_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClient queue_failedConnection:]  Did fail arbiter connection", buf, 2u);
  }

  v6 = [v4 interruptionHandler];
  v7 = [v4 invalidationHandler];
  [v4 setInterruptionHandler:0];
  [v4 setInvalidationHandler:0];
  v8 = [UIApp _systemAnimationFenceExemptQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51___UIKeyboardArbiterClient_queue_failedConnection___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 performAsync:v10];
}

- (void)didFailArbiterConnection
{
  v3 = [_UIKeyboardUIInformation alloc];
  v4 = [(_UIKeyboardUIInformation *)v3 initWithKeyboardFrame:0 onScreen:0 animated:0 tracking:0 wantsFence:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(_UIKeyboardArbiterClient *)self setCurrentUIState:v4];

  v5 = +[_UIKeyboardChangedInformation informationForKeyboardDown];
  [(_UIKeyboardArbiterClient *)self _didHandleKeyboardClientChange:v5 shouldConsiderSnapshottingKeyboard:0 isLocalEvent:1];

  [(_UIKeyboardArbiterClient *)self cleanSuppression];
}

- (void)queue_setLastEventSource:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68___UIKeyboardArbiterClient_queue_setLastEventSource_withCompletion___block_invoke;
  v9[3] = &unk_1E70F5FA8;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [v7 performAsync:v9];
}

- (void)queue_keyboardSuppressed:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68___UIKeyboardArbiterClient_queue_keyboardSuppressed_withCompletion___block_invoke;
  v9[3] = &unk_1E70FD0C8;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performAsync:v9];
}

- (void)queue_keyboardChanged:(id)a3 onComplete:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [UIApp _systemAnimationFenceExemptQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61___UIKeyboardArbiterClient_queue_keyboardChanged_onComplete___block_invoke;
  v11[3] = &unk_1E70FCE28;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performAsync:v11];
}

- (void)_handleKeyboardChanged:(id)a3 isLocal:(BOOL)a4 onComplete:(id)a5
{
  v6 = a4;
  v10 = a3;
  v8 = a5;
  if ([UIApp systemIsAnimatingApplicationLifecycleEvent] && (objc_msgSend(v10, "keyboardPosition"), CGRectGetHeight(v12) != 0.0))
  {
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = -[_UIKeyboardArbiterClient _didHandleKeyboardClientChange:shouldConsiderSnapshottingKeyboard:isLocalEvent:](self, "_didHandleKeyboardClientChange:shouldConsiderSnapshottingKeyboard:isLocalEvent:", v10, [v10 shouldTakeSnapshot], v6);
    if (!v8)
    {
      goto LABEL_8;
    }

    if (v9)
    {
      [UIApp _performBlockAfterCATransactionCommits:v8];
      goto LABEL_8;
    }
  }

  v8[2](v8);
LABEL_8:
}

- (void)queue_keyboardChangedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [UIApp _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64___UIKeyboardArbiterClient_queue_keyboardChangedWithCompletion___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performAsync:v7];
}

- (void)queue_keyboardIAVChanged:(double)a3 onComplete:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = _UIArbiterClientLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "RX keyboardIAVChanged:%.1f", &v7, 0xCu);
  }

  if (v5)
  {
    v5[2](v5);
  }
}

- (void)queue_keyboardTransition:(id)a3 event:(unint64_t)a4 withInfo:(id)a5 onComplete:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(_UIKeyboardArbiterClient *)self keyboardActive]&& !+[UIKeyboard isKeyboardProcess])
  {
    v21 = _UIArbiterClientLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "RX keyboardTransition:event: (ignoring for keyboardActive", buf, 2u);
    }

    goto LABEL_25;
  }

  if (+[UIKeyboard isKeyboardProcess])
  {
    if (([v10 isEqualToString:0x1EFB7AC50] & 1) == 0)
    {
      goto LABEL_25;
    }

    v13 = [v11 objectForKeyedSubscript:0x1EFB7AC90];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [v11 mutableCopy];
      v16 = +[UIInputViewSetPlacementOffScreenDown placement];
      [v15 setObject:v16 forKeyedSubscript:0x1EFB7AC90];

      v11 = v15;
    }

    v17 = [v11 bs_filter:&__block_literal_global_153];

    v11 = v17;
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __79___UIKeyboardArbiterClient_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_4;
      v33[3] = &unk_1E7106060;
      v34 = v10;
      v35 = v11;
      v18 = _Block_copy(v33);

      v19 = v34;
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_20;
      }

      if (+[UIKeyboard isKeyboardProcess])
      {
        goto LABEL_25;
      }

      if (![@"Placement" isEqualToString:v10])
      {
        goto LABEL_20;
      }

      v20 = [v11 objectForKey:@"Placement"];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __79___UIKeyboardArbiterClient_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_5;
      v30[3] = &unk_1E7106060;
      v31 = v20;
      v32 = v11;
      v19 = v20;
      v18 = _Block_copy(v30);
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
        aBlock[2] = __79___UIKeyboardArbiterClient_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_3;
        aBlock[3] = &unk_1E7106060;
        v37 = v10;
        v38 = v11;
        v18 = _Block_copy(aBlock);

        v19 = v37;
        goto LABEL_23;
      }

LABEL_20:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unknown transition data: %@/%lu/%@", v10, a4, v11}];
      goto LABEL_25;
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __79___UIKeyboardArbiterClient_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_2;
    v39[3] = &unk_1E7106060;
    v40 = v10;
    v41 = v11;
    v18 = _Block_copy(v39);

    v19 = v40;
  }

LABEL_23:

  if (v18)
  {
    v22 = [UIApp _systemAnimationFenceExemptQueue];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __79___UIKeyboardArbiterClient_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_6;
    v24[3] = &unk_1E7106088;
    v25 = v10;
    v26 = self;
    v29 = a4;
    v27 = v18;
    v28 = v12;
    v23 = v18;
    [v22 performAsync:v24];

    goto LABEL_27;
  }

LABEL_25:
  if (v12)
  {
    v12[2](v12);
  }

LABEL_27:
}

- (void)setDisableBecomeFirstResponder:(BOOL)a3 forSuppressionAssertion:(BOOL)a4 updatePlacement:(BOOL)a5 wantsAssistant:(BOOL)a6
{
  v31[3] = *MEMORY[0x1E69E9840];
  if (self->_disableBecomeFirstResponder != a3)
  {
    v6 = a6;
    v7 = a5;
    v8 = a4;
    v9 = a3;
    if (a3 || (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isWaitingForInputUI], v11, !v12))
    {
      v13 = [(_UIKeyboardArbiterClient *)self existingInputWindowRootViewController];
      v14 = [v13 placement];
      v15 = v9 && [(_UIAssertionController *)self->_assertionController hasAssertionsForReason:@"WritingTools"];
      v16 = +[UIPeripheralHost sharedInstance];
      [v16 setDeactivatedKeyboard:v9 forScene:0 forSuppressionAssertion:v8 updatePlacement:v7 wantsAssistant:v6 keepAccessories:v15];

      v17 = [v13 placement];
      self->_disableBecomeFirstResponder = v9;
      if (+[UIKeyboard usesInputSystemUI])
      {
        if (v9)
        {
          v18 = 1;
        }

        else
        {
          v18 = [v17 showsKeyboard];
        }

        v19 = +[UIKeyboardImpl activeInstance];
        v20 = [v19 remoteTextInputPartner];
        v30[0] = @"disabled";
        v21 = [MEMORY[0x1E696AD98] numberWithBool:v9];
        v31[0] = v21;
        v30[1] = @"forSuppressionAssertion";
        v22 = [MEMORY[0x1E696AD98] numberWithBool:v8];
        v31[1] = v22;
        v30[2] = @"updatePlacement";
        v23 = [MEMORY[0x1E696AD98] numberWithBool:v18];
        v31[2] = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
        [v20 forwardApplicationOperation:sel_setRemoteDisableBecomeFirstResponder_ object:v24];
      }
    }

    else
    {
      v13 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __114___UIKeyboardArbiterClient_setDisableBecomeFirstResponder_forSuppressionAssertion_updatePlacement_wantsAssistant___block_invoke;
      v25[3] = &unk_1E7102030;
      v25[4] = self;
      v26 = v9;
      v27 = v8;
      v28 = v7;
      v29 = v6;
      [v13 addPostWaitingForInputUIBlock:v25];
    }
  }
}

- (void)queue_getDebugInfoWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _UIArbiterClientLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEBUG, "RX getDebugInfo (noop)", v5, 2u);
  }

  if (v3)
  {
    v3[2](v3, 0);
  }
}

- (void)queue_sceneBecameFocused:(id)a3 withCompletion:(id)a4
{
  v4 = a4;
  v5 = _UIArbiterClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "RX sceneBecameFocused (WARNING: subclass is missing implementation)", v6, 2u);
  }

  if (v4)
  {
    v4[2](v4);
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

- (void)_updateEventSource:(int64_t)a3 options:(unint64_t)a4 responder:(id)a5
{
  v5 = a4;
  v10 = a5;
  if (!a3)
  {
    if ((v5 & 8) == 0)
    {
      a3 = [(_UIKeyboardArbiterClient *)self keyboardSource];
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((v5 & 8) != 0)
  {
LABEL_6:
    [(_UIKeyboardArbiterClient *)self setKeyboardSource:a3];
  }

LABEL_7:
  if (self->_lastEventSource == a3)
  {
    goto LABEL_13;
  }

  self->_lastEventSource = a3;
  if (v5)
  {
    [UIScribbleInteraction _lastEventSourceChanged:a3];
    if ((v5 & 4) == 0)
    {
LABEL_10:
      if ((v5 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_10;
  }

  v8 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  [v8 signalEventSourceChanged:a3 completionHandler:&__block_literal_global_186];

  if ((v5 & 2) == 0)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_18:
  v9 = +[UIKeyboardImpl activeInstance];
  [v9 _suppressSoftwareKeyboardStateChangedIgnoringPolicyDelegate:0];

  if (v5)
  {
LABEL_12:
    [(_UIKeyboardArbiterClient *)self _postInputSourceDidChangeNotificationForResponder:v10];
  }

LABEL_13:
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

  [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_188];
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
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSHashTable *)self->_windowControllers copy];
  v6 = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  if (v6 && [v5 containsObject:v6])
  {
    v4[2](v4, v6);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (*(*(&v12 + 1) + 8 * v11) != v6)
        {
          (v4[2])(v4);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)performOnExistingControllers:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSHashTable *)self->_windowControllers copy];
  v6 = [(_UIKeyboardArbiterClient *)self existingInputWindowRootViewController];
  if (v6 && [v5 containsObject:v6])
  {
    v4[2](v4, v6);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (*(*(&v12 + 1) + 8 * v11) != v6)
        {
          (v4[2])(v4);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_performOnDistributedControllersExceptSelf:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___UIKeyboardArbiterClient__performOnDistributedControllersExceptSelf___block_invoke;
  v6[3] = &unk_1E71060D0;
  v7 = v4;
  v5 = v4;
  [(_UIKeyboardArbiterClient *)self performOnControllers:v6];
}

- (void)performOnDistributedControllers:(id)a3
{
  v4 = *(a3 + 2);
  v5 = a3;
  v4();
  [(_UIKeyboardArbiterClient *)self _performOnDistributedControllersExceptSelf:v5];
}

- (BOOL)shouldAllowInputViewsRestoredForId:(id)a3
{
  v4 = a3;
  if ([(_UIKeyboardArbiterClient *)self keyboardVisible]&& ![(_UIKeyboardArbiterClient *)self keyboardActive])
  {
    v5 = [v4 isEqual:@"inputui-keyboard-inputviews-preservation-key"];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)controllerDidLayoutSubviews:(id)a3
{
  v4 = a3;
  if (self->_ignoreLayoutSubviews <= 0 && [(_UIKeyboardArbiterClient *)self keyboardActive])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56___UIKeyboardArbiterClient_controllerDidLayoutSubviews___block_invoke;
    v5[3] = &unk_1E70F35B8;
    v5[4] = self;
    v6 = v4;
    [(_UIKeyboardArbiterClient *)self ignoreLayoutNotifications:v5];
  }
}

- (void)ignoreLayoutNotifications:(id)a3
{
  ++self->_ignoreLayoutSubviews;
  (*(a3 + 2))(a3, a2);
  --self->_ignoreLayoutSubviews;
}

- (void)signalToProxyKeyboardChanged:(id)a3 onCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)sceneUpdated
{
  if ([(_UIKeyboardArbiterClient *)self snapshotting])
  {

    [(_UIKeyboardArbiterClient *)self reloadForSnapshotting];
  }
}

- (void)setSnapshotting:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  v5 = KeyboardArbiterClientLog_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClient setSnapshotting:]  setSnapshotting: %d", v6, 8u);
  }

  self->_snapshotting = v3;
  [(_UIKeyboardArbiterClient *)self reloadForSnapshotting];
}

- (void)queue_keyboardUIDidChange:(id)a3 onComplete:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _UIArbiterClientLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "RX keyboardUIDidChange", v13, 2u);
  }

  handlingRemoteEvent = self->_handlingRemoteEvent;
  self->_handlingRemoteEvent = 1;
  [(_UIKeyboardArbiterClient *)self setCurrentUIState:v7];

  v10 = [(_UIKeyboardArbiterClient *)self keyboardVisible];
  v11 = [(_UIKeyboardArbiterClient *)self eventObserver];
  [v11 setKeyboardIsVisible:v10];

  v12 = [(_UIKeyboardArbiterClient *)self changeInfoDelegate];
  [v12 didHandleKeyboardUIChange:self];

  if (v6)
  {
    v6[2](v6);
  }

  self->_handlingRemoteEvent = handlingRemoteEvent;
}

- (BOOL)keyboardClientDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 sourceSceneIdentityString];
  v6 = [(_UIKeyboardArbiterClient *)self currentClientState];
  v7 = [v6 sourceSceneIdentityString];
  v8 = [v5 isEqualToString:v7];

  v9 = [(_UIKeyboardArbiterClient *)self currentUIState];
  LODWORD(v5) = [v9 keyboardOnScreen];
  LODWORD(v6) = [v4 keyboardOnScreen];

  return ((v8 | v5 ^ v6) & 1) == 0;
}

- (BOOL)_didHandleKeyboardClientChange:(id)a3 shouldConsiderSnapshottingKeyboard:(BOOL)a4 isLocalEvent:(BOOL)a5
{
  v7 = a3;
  handlingRemoteEvent = self->_handlingRemoteEvent;
  self->_handlingRemoteEvent = !a5;
  if (!a5)
  {
    v9 = +[UIKeyboardImpl activeInstance];
    v10 = [v9 automaticMinimizationEnabled];
    v11 = [v7 automaticMinimizationEnabled];

    if (v10 != v11)
    {
      v12 = [v7 automaticMinimizationEnabled];
      v13 = +[UIKeyboardImpl activeInstance];
      [v13 setAutomaticMinimizationEnabled:v12];

      v14 = +[UIKeyboardImpl activeInstance];
      v15 = [v14 geometryDelegate];
      [v15 syncMinimizedStateToHardwareKeyboardAttachedState];
    }
  }

  [(_UIKeyboardArbiterClient *)self keyboardActive];
  v16 = [(_UIKeyboardArbiterClient *)self keyboardClientDidChange:v7];
  v17 = [v7 sourceBundleIdentifier];
  [(_UIKeyboardArbiterClient *)self isSpotlight:v17];

  if (v16)
  {
    v18 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [(_UIKeyboardArbiterClient *)self setBackupState:v18];

    [(_UIKeyboardArbiterClient *)self setCurrentClientState:v7];
    v19 = [(_UIKeyboardArbiterClient *)self changeInfoDelegate];
    [v19 didHandleKeyboardClientChange:self];
  }

  self->_handlingRemoteEvent = handlingRemoteEvent;

  return 1;
}

+ (id)keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:(id)a3
{
  v4 = [a3 _FBSScene];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identityToken];
    v7 = [v6 stringRepresentation];
  }

  else
  {
    v7 = [a3 _sceneIdentifier];
  }

  return v7;
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

  if (-[_UIKeyboardArbiterClient isHostedInAnotherProcess](self, "isHostedInAnotherProcess") || ([UIApp isSuspended] & v3) != 1)
  {
    return 1;
  }

  v4 = [(_UIKeyboardArbiterClient *)self kbUIStateDelegate];
  v5 = [v4 isActivatingInForeground];

  return v5;
}

- (void)didSuspend:(id)a3
{
  v4 = [UIApp _beginBackgroundTaskWithName:@"_UIKeyboardArbiterClient XPC disconnection" expirationHandler:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39___UIKeyboardArbiterClient_didSuspend___block_invoke;
  aBlock[3] = &unk_1E70F32F0;
  aBlock[4] = self;
  aBlock[5] = v4;
  v5 = _Block_copy(aBlock);
  connection = self->_connection;
  if (connection)
  {
    self->_connection = 0;
    v7 = connection;

    [(NSXPCConnection *)v7 setInterruptionHandler:0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39___UIKeyboardArbiterClient_didSuspend___block_invoke_2;
    v13[3] = &unk_1E70F0F78;
    v14 = v5;
    [(NSXPCConnection *)v7 setInvalidationHandler:v13];
    [(NSXPCConnection *)v7 invalidate];
  }

  v8 = [UIApp _systemAnimationFenceExemptQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39___UIKeyboardArbiterClient_didSuspend___block_invoke_3;
  v10[3] = &unk_1E70FD0C8;
  v12 = connection != 0;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  [v8 performAsync:v10];
}

- (void)applicationResume:(id)a3
{
  if (!self->_windowEnabled)
  {
    [(_UIKeyboardArbiterClient *)self willResume:a3];
  }
}

- (void)willResume:(id)a3
{
  if (![(_UIKeyboardArbiterClient *)self enqueuedWillEnterForegroundActions])
  {
    [(_UIKeyboardArbiterClient *)self setEnqueuedWillEnterForegroundActions:1];
    v4 = [UIApp _systemAnimationFenceExemptQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39___UIKeyboardArbiterClient_willResume___block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [v4 performAsync:v5];
  }
}

- (_UIKeyboardUIStateDelegate)kbUIStateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_kbUIStateDelegate);

  return WeakRetained;
}

- (void)startTransition:(id)a3 withInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  [v8 transition:v7 eventStage:0 withInfo:v6];
}

- (void)updateTransition:(id)a3 withInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  [v8 transition:v7 eventStage:1 withInfo:v6];
}

- (void)completeTransition:(id)a3 withInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  [v8 transition:v7 eventStage:2 withInfo:v6];
}

- (void)setPlacement:(id)a3 quietly:(BOOL)a4 animated:(BOOL)a5 generateSplitNotification:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v17[4] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
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