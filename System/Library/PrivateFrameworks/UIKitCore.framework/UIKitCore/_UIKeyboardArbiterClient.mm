@interface _UIKeyboardArbiterClient
+ (BOOL)enabled;
+ (id)automaticSharedArbiterClient;
+ (id)keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:(id)scene;
+ (id)mainBundleIdentifier;
+ (id)serviceName;
- (BOOL)_didHandleKeyboardClientChange:(id)change shouldConsiderSnapshottingKeyboard:(BOOL)keyboard isLocalEvent:(BOOL)event;
- (BOOL)allowedToShowKeyboard;
- (BOOL)hasAnyHostedViews;
- (BOOL)isOnScreenRotating;
- (BOOL)isSpotlight:(id)spotlight;
- (BOOL)keyboardActive;
- (BOOL)keyboardClientDidChange:(id)change;
- (BOOL)keyboardVisible;
- (BOOL)remoteKeyboardUndocked:(BOOL)undocked;
- (BOOL)shouldAllowInputViewsRestoredForId:(id)id;
- (FBSScene)requiredScene;
- (UIInputWindowController)inputWindowRootViewController;
- (_UIKBArbiterClientKeyboardChangeDelegate)changeInfoDelegate;
- (_UIKeyboardArbiterClient)initWithShouldConnect:(BOOL)connect;
- (_UIKeyboardUIStateDelegate)kbUIStateDelegate;
- (double)heightForRemoteIAVPlaceholderIfNecessary;
- (id)arbiterConnection;
- (id)arbiterProxy;
- (id)existingInputWindowRootViewController;
- (void)_handleKeyboardChanged:(id)changed isLocal:(BOOL)local onComplete:(id)complete;
- (void)_performOnDistributedControllersExceptSelf:(id)self;
- (void)_postInputSourceDidChangeNotificationForResponder:(id)responder;
- (void)_updateEventSource:(int64_t)source options:(unint64_t)options responder:(id)responder;
- (void)applicationResume:(id)resume;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type;
- (void)checkConnection;
- (void)checkState;
- (void)cleanSuppression;
- (void)completeTransition:(id)transition withInfo:(id)info;
- (void)configureArbiterCommunication:(id)communication;
- (void)controllerDidLayoutSubviews:(id)subviews;
- (void)dealloc;
- (void)didFailArbiterConnection;
- (void)didSuspend:(id)suspend;
- (void)ignoreLayoutNotifications:(id)notifications;
- (void)keyboardChangedCompleted;
- (void)performOnControllers:(id)controllers;
- (void)performOnDistributedControllers:(id)controllers;
- (void)performOnExistingControllers:(id)controllers;
- (void)queue_endInputSessionWithCompletion:(id)completion;
- (void)queue_failedConnection:(id)connection;
- (void)queue_getDebugInfoWithCompletion:(id)completion;
- (void)queue_keyboardChanged:(id)changed onComplete:(id)complete;
- (void)queue_keyboardChangedWithCompletion:(id)completion;
- (void)queue_keyboardIAVChanged:(double)changed onComplete:(id)complete;
- (void)queue_keyboardSuppressed:(BOOL)suppressed withCompletion:(id)completion;
- (void)queue_keyboardTransition:(id)transition event:(unint64_t)event withInfo:(id)info onComplete:(id)complete;
- (void)queue_keyboardUIDidChange:(id)change onComplete:(id)complete;
- (void)queue_sceneBecameFocused:(id)focused withCompletion:(id)completion;
- (void)queue_setLastEventSource:(int64_t)source withCompletion:(id)completion;
- (void)registerController:(id)controller;
- (void)sceneUpdated;
- (void)setDisableBecomeFirstResponder:(BOOL)responder forSuppressionAssertion:(BOOL)assertion updatePlacement:(BOOL)placement wantsAssistant:(BOOL)assistant;
- (void)setPlacement:(id)placement quietly:(BOOL)quietly animated:(BOOL)animated generateSplitNotification:(BOOL)notification;
- (void)setSnapshotting:(BOOL)snapshotting;
- (void)signalToProxyKeyboardChanged:(id)changed onCompletion:(id)completion;
- (void)startConnectionWithCompletion:(id)completion;
- (void)startTransition:(id)transition withInfo:(id)info;
- (void)stopConnection;
- (void)unregisterController:(id)controller;
- (void)updateTransition:(id)transition withInfo:(id)info;
- (void)willResume:(id)resume;
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
    connection = [(_UIKeyboardArbiterClient *)self connection];

    if (connection)
    {

      [(_UIKeyboardArbiterClient *)self stopConnection];
    }
  }
}

- (void)checkConnection
{
  connection = [(_UIKeyboardArbiterClient *)self connection];
  if (connection)
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
  currentUIState = [(_UIKeyboardArbiterClient *)self currentUIState];
  [currentUIState resetAnimationFencing];
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
  serviceName = [objc_opt_class() serviceName];
  v6 = [v4 initWithMachServiceName:serviceName options:4096];

  [(_UIKeyboardArbiterClient *)self configureArbiterCommunication:v6];
  exportedInterface = [v6 exportedInterface];
  v8 = _UIKBArbiterSetForPlacements();
  [exportedInterface setClasses:v8 forSelector:sel_queue_keyboardTransition_event_withInfo_onComplete_ argumentIndex:2 ofReply:0];

  remoteObjectInterface = [v6 remoteObjectInterface];
  v10 = _UIKBArbiterSetForPlacements();
  [remoteObjectInterface setClasses:v10 forSelector:sel_transition_eventStage_withInfo_ argumentIndex:2 ofReply:0];

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

- (_UIKeyboardArbiterClient)initWithShouldConnect:(BOOL)connect
{
  connectCopy = connect;
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
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    windowControllers = v5->_windowControllers;
    v5->_windowControllers = weakObjectsHashTable;

    if (connectCopy)
    {
      [(_UIKeyboardArbiterClient *)v5 checkConnection];
    }

    v10 = [[_UIAssertionController alloc] initWithAssertionSubject:v5];
    assertionController = v5->_assertionController;
    v5->_assertionController = v10;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_applicationResume_ name:@"UIApplicationResumedEventsOnlyNotification" object:UIApp];
    [defaultCenter addObserver:v5 selector:sel_willResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [defaultCenter addObserver:v5 selector:sel_didSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  }

  return v5;
}

- (void)dealloc
{
  v6[3] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIApplicationResumedEventsOnlyNotification";
  v6[1] = @"UIApplicationWillEnterForegroundNotification";
  v6[2] = @"UIApplicationDidEnterBackgroundNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  [(_UIKeyboardArbiterClient *)self stopConnection];
  [(_UIKeyboardArbiterClient *)self resetSnapshotWithWindowCheck:0];
  v5.receiver = self;
  v5.super_class = _UIKeyboardArbiterClient;
  [(_UIKeyboardArbiterClient *)&v5 dealloc];
}

- (void)configureArbiterCommunication:(id)communication
{
  v3 = MEMORY[0x1E696B0D0];
  communicationCopy = communication;
  v5 = [v3 interfaceWithProtocol:&unk_1F013B418];
  [communicationCopy setRemoteObjectInterface:v5];

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF09B68];
  [communicationCopy setExportedInterface:v6];
}

- (id)arbiterProxy
{
  connection = [(_UIKeyboardArbiterClient *)self connection];
  v3 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_130];

  return v3;
}

- (void)startConnectionWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(_UIKeyboardArbiterClient *)self connection];

  if (!connection && [UIApp _shouldAllowKeyboardArbiter])
  {
    v7 = _UIArbiterClientLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "startConnection", buf, 2u);
    }

    v8 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v8 userInterfaceIdiom];

    if ((userInterfaceIdiom - 2) >= 3)
    {
      arbiterConnection = [(_UIKeyboardArbiterClient *)self arbiterConnection];
      connection = self->_connection;
      self->_connection = arbiterConnection;

      v12 = BSDispatchQueueCreateWithQualityOfService();
      connection2 = [(_UIKeyboardArbiterClient *)self connection];
      [connection2 _setQueue:v12];

      objc_initWeak(buf, self);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __58___UIKeyboardArbiterClient_startConnectionWithCompletion___block_invoke;
      v33[3] = &unk_1E70F5A28;
      objc_copyWeak(&v34, buf);
      connection3 = [(_UIKeyboardArbiterClient *)self connection];
      [connection3 setInterruptionHandler:v33];

      v15 = v31;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __58___UIKeyboardArbiterClient_startConnectionWithCompletion___block_invoke_133;
      v31[3] = &unk_1E70F5A28;
      objc_copyWeak(&v32, buf);
      connection4 = [(_UIKeyboardArbiterClient *)self connection];
      [connection4 setInvalidationHandler:v31];

      connection5 = [(_UIKeyboardArbiterClient *)self connection];
      [connection5 setExportedObject:self];

      connection6 = [(_UIKeyboardArbiterClient *)self connection];

      if (!connection6)
      {
LABEL_17:
        objc_destroyWeak(&v32);
        objc_destroyWeak(&v34);
        objc_destroyWeak(buf);

        goto LABEL_18;
      }

      connection7 = [(_UIKeyboardArbiterClient *)self connection];
      [connection7 resume];

      [(_UIKeyboardArbiterClient *)self setExpectingInitialState:1];
      [(_UIKeyboardArbiterClient *)self setAvoidDisableKeyboard:0];
      requiredScene = [(_UIKeyboardArbiterClient *)self requiredScene];
      arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
      currentInputDestination = [(_UIKeyboardArbiterClient *)self currentInputDestination];
      if (currentInputDestination)
      {
        currentClientState = [(_UIKeyboardArbiterClient *)self currentClientState];
        if (requiredScene)
        {
LABEL_9:
          identityToken = [requiredScene identityToken];
          v15 = +[UIWindow _applicationKeyWindow];
          v22 = +[UIKBArbiterClientFocusContext focusContextForSceneIdentity:contextID:](UIKBArbiterClientFocusContext, "focusContextForSceneIdentity:contextID:", identityToken, [v15 _contextId]);
LABEL_12:
          currentHostedPIDs = [(_UIKeyboardArbiterClient *)self currentHostedPIDs];
          shouldFence = [(_UIKeyboardArbiterClient *)self shouldFence];
          expectedSuppression = [(_UIKeyboardArbiterClient *)self expectedSuppression];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __58___UIKeyboardArbiterClient_startConnectionWithCompletion___block_invoke_136;
          v28[3] = &unk_1E7105FF0;
          v29 = completionCopy;
          objc_copyWeak(&v30, buf);
          [arbiterProxy startArbitrationWithExpectedState:currentClientState focusContext:v22 hostingPIDs:currentHostedPIDs usingFence:shouldFence withSuppression:expectedSuppression onConnected:v28];

          if (requiredScene)
          {
          }

          if (currentInputDestination)
          {
          }

          objc_destroyWeak(&v30);
          goto LABEL_17;
        }
      }

      else
      {
        currentClientState = 0;
        if (requiredScene)
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

  connection = [(_UIKeyboardArbiterClient *)self connection];
  [connection setInvalidationHandler:0];

  connection2 = [(_UIKeyboardArbiterClient *)self connection];
  [connection2 setInterruptionHandler:0];

  connection3 = [(_UIKeyboardArbiterClient *)self connection];
  [connection3 invalidate];

  connection = self->_connection;
  self->_connection = 0;
}

- (BOOL)keyboardVisible
{
  currentUIState = [(_UIKeyboardArbiterClient *)self currentUIState];
  keyboardOnScreen = [currentUIState keyboardOnScreen];

  return keyboardOnScreen;
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
  currentHostedPIDs = [(_UIKeyboardArbiterClient *)self currentHostedPIDs];
  v3 = [currentHostedPIDs count] != 0;

  return v3;
}

- (BOOL)remoteKeyboardUndocked:(BOOL)undocked
{
  undockedCopy = undocked;
  if ([(_UIKeyboardArbiterClient *)self currentInputDestination]&& !undockedCopy || ![(_UIKeyboardArbiterClient *)self keyboardVisible])
  {
    return 0;
  }

  currentUIState = [(_UIKeyboardArbiterClient *)self currentUIState];
  [currentUIState keyboardPosition];
  v7 = v6 != 0.0;

  return v7;
}

- (BOOL)isSpotlight:(id)spotlight
{
  spotlightCopy = spotlight;
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = [spotlightCopy isEqualToString:@"com.apple.Spotlight"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type
{
  if (type <= 1)
  {
    [(_UIKeyboardArbiterClient *)self setDisableBecomeFirstResponder:state forSuppressionAssertion:1 updatePlacement:1 wantsAssistant:0];
  }
}

- (double)heightForRemoteIAVPlaceholderIfNecessary
{
  _isSpringBoard = [UIApp _isSpringBoard];
  result = 0.0;
  if (_isSpringBoard)
  {
    return self->_heightForRemoteIAVPlaceholderIfNecessary;
  }

  return result;
}

- (UIInputWindowController)inputWindowRootViewController
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  containerRootController = [v2 containerRootController];

  return containerRootController;
}

- (id)existingInputWindowRootViewController
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  existingContainerRootController = [v2 existingContainerRootController];

  return existingContainerRootController;
}

- (void)queue_endInputSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64___UIKeyboardArbiterClient_queue_endInputSessionWithCompletion___block_invoke;
  v6[3] = &unk_1E70F0F78;
  v7 = completionCopy;
  v5 = completionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v6];
}

- (void)queue_failedConnection:(id)connection
{
  connectionCopy = connection;
  v5 = KeyboardArbiterClientLog_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClient queue_failedConnection:]  Did fail arbiter connection", buf, 2u);
  }

  interruptionHandler = [connectionCopy interruptionHandler];
  invalidationHandler = [connectionCopy invalidationHandler];
  [connectionCopy setInterruptionHandler:0];
  [connectionCopy setInvalidationHandler:0];
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51___UIKeyboardArbiterClient_queue_failedConnection___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v11 = connectionCopy;
  v9 = connectionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v10];
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

- (void)queue_setLastEventSource:(int64_t)source withCompletion:(id)completion
{
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68___UIKeyboardArbiterClient_queue_setLastEventSource_withCompletion___block_invoke;
  v9[3] = &unk_1E70F5FA8;
  v10 = completionCopy;
  sourceCopy = source;
  v9[4] = self;
  v8 = completionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v9];
}

- (void)queue_keyboardSuppressed:(BOOL)suppressed withCompletion:(id)completion
{
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68___UIKeyboardArbiterClient_queue_keyboardSuppressed_withCompletion___block_invoke;
  v9[3] = &unk_1E70FD0C8;
  suppressedCopy = suppressed;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v9];
}

- (void)queue_keyboardChanged:(id)changed onComplete:(id)complete
{
  changedCopy = changed;
  completeCopy = complete;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61___UIKeyboardArbiterClient_queue_keyboardChanged_onComplete___block_invoke;
  v11[3] = &unk_1E70FCE28;
  v11[4] = self;
  v12 = changedCopy;
  v13 = completeCopy;
  v9 = completeCopy;
  v10 = changedCopy;
  [_systemAnimationFenceExemptQueue performAsync:v11];
}

- (void)_handleKeyboardChanged:(id)changed isLocal:(BOOL)local onComplete:(id)complete
{
  localCopy = local;
  changedCopy = changed;
  completeCopy = complete;
  if ([UIApp systemIsAnimatingApplicationLifecycleEvent] && (objc_msgSend(changedCopy, "keyboardPosition"), CGRectGetHeight(v12) != 0.0))
  {
    if (!completeCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = -[_UIKeyboardArbiterClient _didHandleKeyboardClientChange:shouldConsiderSnapshottingKeyboard:isLocalEvent:](self, "_didHandleKeyboardClientChange:shouldConsiderSnapshottingKeyboard:isLocalEvent:", changedCopy, [changedCopy shouldTakeSnapshot], localCopy);
    if (!completeCopy)
    {
      goto LABEL_8;
    }

    if (v9)
    {
      [UIApp _performBlockAfterCATransactionCommits:completeCopy];
      goto LABEL_8;
    }
  }

  completeCopy[2](completeCopy);
LABEL_8:
}

- (void)queue_keyboardChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64___UIKeyboardArbiterClient_queue_keyboardChangedWithCompletion___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v7];
}

- (void)queue_keyboardIAVChanged:(double)changed onComplete:(id)complete
{
  v9 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  v6 = _UIArbiterClientLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    changedCopy = changed;
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "RX keyboardIAVChanged:%.1f", &v7, 0xCu);
  }

  if (completeCopy)
  {
    completeCopy[2](completeCopy);
  }
}

- (void)queue_keyboardTransition:(id)transition event:(unint64_t)event withInfo:(id)info onComplete:(id)complete
{
  transitionCopy = transition;
  infoCopy = info;
  completeCopy = complete;
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
    if (([transitionCopy isEqualToString:0x1EFB7AC50] & 1) == 0)
    {
      goto LABEL_25;
    }

    v13 = [infoCopy objectForKeyedSubscript:0x1EFB7AC90];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [infoCopy mutableCopy];
      v16 = +[UIInputViewSetPlacementOffScreenDown placement];
      [v15 setObject:v16 forKeyedSubscript:0x1EFB7AC90];

      infoCopy = v15;
    }

    v17 = [infoCopy bs_filter:&__block_literal_global_153];

    infoCopy = v17;
  }

  if (event > 1)
  {
    if (event == 2)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __79___UIKeyboardArbiterClient_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_4;
      v33[3] = &unk_1E7106060;
      v34 = transitionCopy;
      v35 = infoCopy;
      v18 = _Block_copy(v33);

      v19 = v34;
    }

    else
    {
      if (event != 3)
      {
        goto LABEL_20;
      }

      if (+[UIKeyboard isKeyboardProcess])
      {
        goto LABEL_25;
      }

      if (![@"Placement" isEqualToString:transitionCopy])
      {
        goto LABEL_20;
      }

      v20 = [infoCopy objectForKey:@"Placement"];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __79___UIKeyboardArbiterClient_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_5;
      v30[3] = &unk_1E7106060;
      v31 = v20;
      v32 = infoCopy;
      v19 = v20;
      v18 = _Block_copy(v30);
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
        aBlock[2] = __79___UIKeyboardArbiterClient_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_3;
        aBlock[3] = &unk_1E7106060;
        v37 = transitionCopy;
        v38 = infoCopy;
        v18 = _Block_copy(aBlock);

        v19 = v37;
        goto LABEL_23;
      }

LABEL_20:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unknown transition data: %@/%lu/%@", transitionCopy, event, infoCopy}];
      goto LABEL_25;
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __79___UIKeyboardArbiterClient_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_2;
    v39[3] = &unk_1E7106060;
    v40 = transitionCopy;
    v41 = infoCopy;
    v18 = _Block_copy(v39);

    v19 = v40;
  }

LABEL_23:

  if (v18)
  {
    _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __79___UIKeyboardArbiterClient_queue_keyboardTransition_event_withInfo_onComplete___block_invoke_6;
    v24[3] = &unk_1E7106088;
    v25 = transitionCopy;
    selfCopy = self;
    eventCopy = event;
    v27 = v18;
    v28 = completeCopy;
    v23 = v18;
    [_systemAnimationFenceExemptQueue performAsync:v24];

    goto LABEL_27;
  }

LABEL_25:
  if (completeCopy)
  {
    completeCopy[2](completeCopy);
  }

LABEL_27:
}

- (void)setDisableBecomeFirstResponder:(BOOL)responder forSuppressionAssertion:(BOOL)assertion updatePlacement:(BOOL)placement wantsAssistant:(BOOL)assistant
{
  v31[3] = *MEMORY[0x1E69E9840];
  if (self->_disableBecomeFirstResponder != responder)
  {
    assistantCopy = assistant;
    placementCopy = placement;
    assertionCopy = assertion;
    responderCopy = responder;
    if (responder || (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isWaitingForInputUI], v11, !v12))
    {
      existingInputWindowRootViewController = [(_UIKeyboardArbiterClient *)self existingInputWindowRootViewController];
      placement = [existingInputWindowRootViewController placement];
      v15 = responderCopy && [(_UIAssertionController *)self->_assertionController hasAssertionsForReason:@"WritingTools"];
      v16 = +[UIPeripheralHost sharedInstance];
      [v16 setDeactivatedKeyboard:responderCopy forScene:0 forSuppressionAssertion:assertionCopy updatePlacement:placementCopy wantsAssistant:assistantCopy keepAccessories:v15];

      placement2 = [existingInputWindowRootViewController placement];
      self->_disableBecomeFirstResponder = responderCopy;
      if (+[UIKeyboard usesInputSystemUI])
      {
        if (responderCopy)
        {
          showsKeyboard = 1;
        }

        else
        {
          showsKeyboard = [placement2 showsKeyboard];
        }

        v19 = +[UIKeyboardImpl activeInstance];
        remoteTextInputPartner = [v19 remoteTextInputPartner];
        v30[0] = @"disabled";
        v21 = [MEMORY[0x1E696AD98] numberWithBool:responderCopy];
        v31[0] = v21;
        v30[1] = @"forSuppressionAssertion";
        v22 = [MEMORY[0x1E696AD98] numberWithBool:assertionCopy];
        v31[1] = v22;
        v30[2] = @"updatePlacement";
        v23 = [MEMORY[0x1E696AD98] numberWithBool:showsKeyboard];
        v31[2] = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
        [remoteTextInputPartner forwardApplicationOperation:sel_setRemoteDisableBecomeFirstResponder_ object:v24];
      }
    }

    else
    {
      existingInputWindowRootViewController = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __114___UIKeyboardArbiterClient_setDisableBecomeFirstResponder_forSuppressionAssertion_updatePlacement_wantsAssistant___block_invoke;
      v25[3] = &unk_1E7102030;
      v25[4] = self;
      v26 = responderCopy;
      v27 = assertionCopy;
      v28 = placementCopy;
      v29 = assistantCopy;
      [existingInputWindowRootViewController addPostWaitingForInputUIBlock:v25];
    }
  }
}

- (void)queue_getDebugInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _UIArbiterClientLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEBUG, "RX getDebugInfo (noop)", v5, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)queue_sceneBecameFocused:(id)focused withCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _UIArbiterClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "RX sceneBecameFocused (WARNING: subclass is missing implementation)", v6, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (void)_updateEventSource:(int64_t)source options:(unint64_t)options responder:(id)responder
{
  optionsCopy = options;
  responderCopy = responder;
  if (!source)
  {
    if ((optionsCopy & 8) == 0)
    {
      source = [(_UIKeyboardArbiterClient *)self keyboardSource];
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((optionsCopy & 8) != 0)
  {
LABEL_6:
    [(_UIKeyboardArbiterClient *)self setKeyboardSource:source];
  }

LABEL_7:
  if (self->_lastEventSource == source)
  {
    goto LABEL_13;
  }

  self->_lastEventSource = source;
  if (optionsCopy)
  {
    [UIScribbleInteraction _lastEventSourceChanged:source];
    if ((optionsCopy & 4) == 0)
    {
LABEL_10:
      if ((optionsCopy & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else if ((optionsCopy & 4) == 0)
  {
    goto LABEL_10;
  }

  arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  [arbiterProxy signalEventSourceChanged:source completionHandler:&__block_literal_global_186];

  if ((optionsCopy & 2) == 0)
  {
LABEL_11:
    if ((optionsCopy & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_18:
  v9 = +[UIKeyboardImpl activeInstance];
  [v9 _suppressSoftwareKeyboardStateChangedIgnoringPolicyDelegate:0];

  if (optionsCopy)
  {
LABEL_12:
    [(_UIKeyboardArbiterClient *)self _postInputSourceDidChangeNotificationForResponder:responderCopy];
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
  v17 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  v5 = [(NSHashTable *)self->_windowControllers copy];
  inputWindowRootViewController = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  if (inputWindowRootViewController && [v5 containsObject:inputWindowRootViewController])
  {
    controllersCopy[2](controllersCopy, inputWindowRootViewController);
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

        if (*(*(&v12 + 1) + 8 * v11) != inputWindowRootViewController)
        {
          (controllersCopy[2])(controllersCopy);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)performOnExistingControllers:(id)controllers
{
  v17 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  v5 = [(NSHashTable *)self->_windowControllers copy];
  existingInputWindowRootViewController = [(_UIKeyboardArbiterClient *)self existingInputWindowRootViewController];
  if (existingInputWindowRootViewController && [v5 containsObject:existingInputWindowRootViewController])
  {
    controllersCopy[2](controllersCopy, existingInputWindowRootViewController);
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

        if (*(*(&v12 + 1) + 8 * v11) != existingInputWindowRootViewController)
        {
          (controllersCopy[2])(controllersCopy);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_performOnDistributedControllersExceptSelf:(id)self
{
  selfCopy = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___UIKeyboardArbiterClient__performOnDistributedControllersExceptSelf___block_invoke;
  v6[3] = &unk_1E71060D0;
  v7 = selfCopy;
  v5 = selfCopy;
  [(_UIKeyboardArbiterClient *)self performOnControllers:v6];
}

- (void)performOnDistributedControllers:(id)controllers
{
  v4 = *(controllers + 2);
  controllersCopy = controllers;
  v4();
  [(_UIKeyboardArbiterClient *)self _performOnDistributedControllersExceptSelf:controllersCopy];
}

- (BOOL)shouldAllowInputViewsRestoredForId:(id)id
{
  idCopy = id;
  if ([(_UIKeyboardArbiterClient *)self keyboardVisible]&& ![(_UIKeyboardArbiterClient *)self keyboardActive])
  {
    v5 = [idCopy isEqual:@"inputui-keyboard-inputviews-preservation-key"];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)controllerDidLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  if (self->_ignoreLayoutSubviews <= 0 && [(_UIKeyboardArbiterClient *)self keyboardActive])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56___UIKeyboardArbiterClient_controllerDidLayoutSubviews___block_invoke;
    v5[3] = &unk_1E70F35B8;
    v5[4] = self;
    v6 = subviewsCopy;
    [(_UIKeyboardArbiterClient *)self ignoreLayoutNotifications:v5];
  }
}

- (void)ignoreLayoutNotifications:(id)notifications
{
  ++self->_ignoreLayoutSubviews;
  (*(notifications + 2))(notifications, a2);
  --self->_ignoreLayoutSubviews;
}

- (void)signalToProxyKeyboardChanged:(id)changed onCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)sceneUpdated
{
  if ([(_UIKeyboardArbiterClient *)self snapshotting])
  {

    [(_UIKeyboardArbiterClient *)self reloadForSnapshotting];
  }
}

- (void)setSnapshotting:(BOOL)snapshotting
{
  snapshottingCopy = snapshotting;
  v7 = *MEMORY[0x1E69E9840];
  v5 = KeyboardArbiterClientLog_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = snapshottingCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClient setSnapshotting:]  setSnapshotting: %d", v6, 8u);
  }

  self->_snapshotting = snapshottingCopy;
  [(_UIKeyboardArbiterClient *)self reloadForSnapshotting];
}

- (void)queue_keyboardUIDidChange:(id)change onComplete:(id)complete
{
  completeCopy = complete;
  changeCopy = change;
  v8 = _UIArbiterClientLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "RX keyboardUIDidChange", v13, 2u);
  }

  handlingRemoteEvent = self->_handlingRemoteEvent;
  self->_handlingRemoteEvent = 1;
  [(_UIKeyboardArbiterClient *)self setCurrentUIState:changeCopy];

  keyboardVisible = [(_UIKeyboardArbiterClient *)self keyboardVisible];
  eventObserver = [(_UIKeyboardArbiterClient *)self eventObserver];
  [eventObserver setKeyboardIsVisible:keyboardVisible];

  changeInfoDelegate = [(_UIKeyboardArbiterClient *)self changeInfoDelegate];
  [changeInfoDelegate didHandleKeyboardUIChange:self];

  if (completeCopy)
  {
    completeCopy[2](completeCopy);
  }

  self->_handlingRemoteEvent = handlingRemoteEvent;
}

- (BOOL)keyboardClientDidChange:(id)change
{
  changeCopy = change;
  sourceSceneIdentityString = [changeCopy sourceSceneIdentityString];
  currentClientState = [(_UIKeyboardArbiterClient *)self currentClientState];
  sourceSceneIdentityString2 = [currentClientState sourceSceneIdentityString];
  v8 = [sourceSceneIdentityString isEqualToString:sourceSceneIdentityString2];

  currentUIState = [(_UIKeyboardArbiterClient *)self currentUIState];
  LODWORD(sourceSceneIdentityString) = [currentUIState keyboardOnScreen];
  LODWORD(currentClientState) = [changeCopy keyboardOnScreen];

  return ((v8 | sourceSceneIdentityString ^ currentClientState) & 1) == 0;
}

- (BOOL)_didHandleKeyboardClientChange:(id)change shouldConsiderSnapshottingKeyboard:(BOOL)keyboard isLocalEvent:(BOOL)event
{
  changeCopy = change;
  handlingRemoteEvent = self->_handlingRemoteEvent;
  self->_handlingRemoteEvent = !event;
  if (!event)
  {
    v9 = +[UIKeyboardImpl activeInstance];
    automaticMinimizationEnabled = [v9 automaticMinimizationEnabled];
    automaticMinimizationEnabled2 = [changeCopy automaticMinimizationEnabled];

    if (automaticMinimizationEnabled != automaticMinimizationEnabled2)
    {
      automaticMinimizationEnabled3 = [changeCopy automaticMinimizationEnabled];
      v13 = +[UIKeyboardImpl activeInstance];
      [v13 setAutomaticMinimizationEnabled:automaticMinimizationEnabled3];

      v14 = +[UIKeyboardImpl activeInstance];
      geometryDelegate = [v14 geometryDelegate];
      [geometryDelegate syncMinimizedStateToHardwareKeyboardAttachedState];
    }
  }

  [(_UIKeyboardArbiterClient *)self keyboardActive];
  v16 = [(_UIKeyboardArbiterClient *)self keyboardClientDidChange:changeCopy];
  sourceBundleIdentifier = [changeCopy sourceBundleIdentifier];
  [(_UIKeyboardArbiterClient *)self isSpotlight:sourceBundleIdentifier];

  if (v16)
  {
    currentClientState = [(_UIKeyboardArbiterClient *)self currentClientState];
    [(_UIKeyboardArbiterClient *)self setBackupState:currentClientState];

    [(_UIKeyboardArbiterClient *)self setCurrentClientState:changeCopy];
    changeInfoDelegate = [(_UIKeyboardArbiterClient *)self changeInfoDelegate];
    [changeInfoDelegate didHandleKeyboardClientChange:self];
  }

  self->_handlingRemoteEvent = handlingRemoteEvent;

  return 1;
}

+ (id)keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:(id)scene
{
  _FBSScene = [scene _FBSScene];
  v5 = _FBSScene;
  if (_FBSScene)
  {
    identityToken = [_FBSScene identityToken];
    stringRepresentation = [identityToken stringRepresentation];
  }

  else
  {
    stringRepresentation = [scene _sceneIdentifier];
  }

  return stringRepresentation;
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

  if (-[_UIKeyboardArbiterClient isHostedInAnotherProcess](self, "isHostedInAnotherProcess") || ([UIApp isSuspended] & isSuspendedUnderLock) != 1)
  {
    return 1;
  }

  kbUIStateDelegate = [(_UIKeyboardArbiterClient *)self kbUIStateDelegate];
  isActivatingInForeground = [kbUIStateDelegate isActivatingInForeground];

  return isActivatingInForeground;
}

- (void)didSuspend:(id)suspend
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

  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39___UIKeyboardArbiterClient_didSuspend___block_invoke_3;
  v10[3] = &unk_1E70FD0C8;
  v12 = connection != 0;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  [_systemAnimationFenceExemptQueue performAsync:v10];
}

- (void)applicationResume:(id)resume
{
  if (!self->_windowEnabled)
  {
    [(_UIKeyboardArbiterClient *)self willResume:resume];
  }
}

- (void)willResume:(id)resume
{
  if (![(_UIKeyboardArbiterClient *)self enqueuedWillEnterForegroundActions])
  {
    [(_UIKeyboardArbiterClient *)self setEnqueuedWillEnterForegroundActions:1];
    _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39___UIKeyboardArbiterClient_willResume___block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [_systemAnimationFenceExemptQueue performAsync:v5];
  }
}

- (_UIKeyboardUIStateDelegate)kbUIStateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_kbUIStateDelegate);

  return WeakRetained;
}

- (void)startTransition:(id)transition withInfo:(id)info
{
  infoCopy = info;
  transitionCopy = transition;
  arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  [arbiterProxy transition:transitionCopy eventStage:0 withInfo:infoCopy];
}

- (void)updateTransition:(id)transition withInfo:(id)info
{
  infoCopy = info;
  transitionCopy = transition;
  arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  [arbiterProxy transition:transitionCopy eventStage:1 withInfo:infoCopy];
}

- (void)completeTransition:(id)transition withInfo:(id)info
{
  infoCopy = info;
  transitionCopy = transition;
  arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  [arbiterProxy transition:transitionCopy eventStage:2 withInfo:infoCopy];
}

- (void)setPlacement:(id)placement quietly:(BOOL)quietly animated:(BOOL)animated generateSplitNotification:(BOOL)notification
{
  notificationCopy = notification;
  animatedCopy = animated;
  quietlyCopy = quietly;
  v17[4] = *MEMORY[0x1E69E9840];
  placementCopy = placement;
  arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
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

  [arbiterProxy transition:@"Placement" eventStage:3 withInfo:v15];
}

@end