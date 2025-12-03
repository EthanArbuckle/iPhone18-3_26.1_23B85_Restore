@interface _UIKeyboardArbiterClientInputDestination
+ (id)currentBundleIdentifier;
- (BOOL)_didHandleKeyboardClientChange:(id)change shouldConsiderSnapshottingKeyboard:(BOOL)keyboard isLocalEvent:(BOOL)event;
- (BOOL)_sceneFocusPermittedForApplication;
- (BOOL)_sceneFocusUpdatePermittedForWindow:(id)window;
- (BOOL)allowedToEnableKeyboardWindow;
- (BOOL)allowedToShowKeyboard;
- (BOOL)hasWindowHostingCallerID:(id)d;
- (BOOL)hasWindowHostingPID:(int)d;
- (BOOL)inputDestinationDidChange:(BOOL)change withIAVHeight:(double)height isIAVRelevant:(BOOL)relevant notifyRemote:(BOOL)remote forScene:(id)scene;
- (BOOL)isHostedInAnotherProcess;
- (BOOL)isWritingToolsHostingViewService;
- (BOOL)needsToShowKeyboard;
- (BOOL)needsToShowKeyboardForViewServiceHost;
- (BOOL)shouldIgnoreInputDestinationChange:(BOOL)change withIAVHeight:(double)height;
- (BOOL)shouldSnapshot;
- (BOOL)wantsToShowKeyboard;
- (BOOL)writingToolsAllowsSceneToRequestFocusOnPeekApplicationEvent;
- (CGRect)keyboardFrameIncludingRemoteIAV;
- (_UIKeyboardArbiterClientInputDestination)init;
- (id)_activeScreen;
- (id)currentHostedPIDs;
- (id)prepareForHostedWindowWithScene:(id)scene;
- (unint64_t)localSceneCount;
- (void)_layoutKeyboardViews:(id)views;
- (void)_performRequiredSceneUpdateIfPermittedForWindow:(uint64_t)window withContext:;
- (void)addWindowHostingPID:(int)d callerID:(id)iD;
- (void)applicationKeyWindowDidChange:(id)change;
- (void)clearKeyboardSceneIdentifierEnteringForeground:(id)foreground;
- (void)completeMoveKeyboard;
- (void)configureArbiterCommunication:(id)communication;
- (void)didBecomeActive:(id)active;
- (void)didFailArbiterConnection;
- (void)didRemoveDeactivationReason:(id)reason;
- (void)didSuspend:(id)suspend;
- (void)finishWithHostedWindow;
- (void)handleKeyboardUIDidChange:(id)change;
- (void)handleKeyboardUITrackingChange:(id)change;
- (void)keyboardUIDidChange:(id)change onComplete:(id)complete;
- (void)peekApplicationEvent:(id)event;
- (void)performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:(void *)delegate;
- (void)performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:(uint64_t)window servicePID:;
- (void)queue_activeProcessResignWithCompletion:(id)completion;
- (void)queue_endInputSessionWithCompletion:(id)completion;
- (void)queue_keyboardArbiterClientHandleChanged:(BOOL)changed withCompletion:(id)completion;
- (void)queue_keyboardChanged:(id)changed onComplete:(id)complete;
- (void)queue_keyboardUIDidChange:(id)change onComplete:(id)complete;
- (void)queue_sceneBecameFocused:(id)focused withCompletion:(id)completion;
- (void)queue_setKeyboardDisabled:(BOOL)disabled withCompletion:(id)completion;
- (void)removeWindowHostingPID:(int)d callerID:(id)iD;
- (void)requestEventDeferralTargetSelectionForWindow:(id)window;
- (void)resignFirstResponderIfNeeded;
- (void)restorePreservedInputViewsIfNecessary;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setCurrentClientState:(id)state;
- (void)setKeyboardSceneIdentifierEnteringForegroundForScene:(id)scene;
- (void)setSnapshotting:(BOOL)snapshotting;
- (void)setSuppressingKeyboard:(BOOL)keyboard forScene:(id)scene;
- (void)setWindowEnabled:(BOOL)enabled force:(BOOL)force;
- (void)setWindowHostingPID:(int)d active:(BOOL)active;
- (void)signalToProxyKeyboardChanged:(id)changed reason:(id)reason onCompletion:(id)completion;
- (void)startConnectionWithCompletion:(id)completion;
- (void)stopConnection;
- (void)syncKeyboardUIChangeInfo:(id)info;
- (void)updateWindowState;
- (void)userSelectedApp:(id)app onCompletion:(id)completion;
- (void)willAddDeactivationReason:(id)reason;
- (void)willResignActive:(id)active;
- (void)willResume:(id)resume;
@end

@implementation _UIKeyboardArbiterClientInputDestination

- (_UIKeyboardArbiterClientInputDestination)init
{
  v12.receiver = self;
  v12.super_class = _UIKeyboardArbiterClientInputDestination;
  v2 = [(_UIKeyboardArbiterClient *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_clientChangeResponseLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingKeyboardGrabs = v3->_pendingKeyboardGrabs;
    v3->_pendingKeyboardGrabs = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activePIDs = v3->_activePIDs;
    v3->_activePIDs = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    callerIDs = v3->_callerIDs;
    v3->_callerIDs = v8;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_sceneDidDisconnect_ name:@"UISceneDidDisconnectNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_willResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_didSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_applicationKeyWindowDidChange_ name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_willResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_didBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_willAddDeactivationReason_ name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_didRemoveDeactivationReason_ name:@"_UIApplicationDidRemoveDeactivationReasonNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_applicationResume_ name:@"UIApplicationResumedEventsOnlyNotification" object:UIApp];
    [defaultCenter addObserver:v3 selector:sel_sceneWillEnterForeground_ name:@"UISceneWillEnterForegroundNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_sceneDidEnterBackground_ name:@"UISceneDidEnterBackgroundNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_sceneDidActivate_ name:@"UISceneDidActivateNotification" object:0];
  }

  return v3;
}

- (id)currentHostedPIDs
{
  activePIDs = [(_UIKeyboardArbiterClientInputDestination *)self activePIDs];
  allObjects = [activePIDs allObjects];

  return allObjects;
}

- (void)startConnectionWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74___UIKeyboardArbiterClientInputDestination_startConnectionWithCompletion___block_invoke;
  v6[3] = &unk_1E712C6B8;
  objc_copyWeak(&v7, &location);
  v5.receiver = self;
  v5.super_class = _UIKeyboardArbiterClientInputDestination;
  [(_UIKeyboardArbiterClient *)&v5 startConnectionWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)stopConnection
{
  v3.receiver = self;
  v3.super_class = _UIKeyboardArbiterClientInputDestination;
  [(_UIKeyboardArbiterClient *)&v3 stopConnection];
  [(_UIKeyboardArbiterClient *)self cleanSuppression];
}

- (void)configureArbiterCommunication:(id)communication
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696B0D0];
  communicationCopy = communication;
  v5 = [v3 interfaceWithProtocol:&unk_1F013B608];
  [communicationCopy setRemoteObjectInterface:v5];

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016D5F0];
  [communicationCopy setExportedInterface:v6];

  v7 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = &unk_1F013B608;
    v14 = 2112;
    v15 = &unk_1F016D5F0;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination configureArbiterCommunication:]   >>> configuring input destination protocol for %@, remote: %@, exported: %@", &v10, 0x20u);
  }
}

- (void)didFailArbiterConnection
{
  v3.receiver = self;
  v3.super_class = _UIKeyboardArbiterClientInputDestination;
  [(_UIKeyboardArbiterClient *)&v3 didFailArbiterConnection];
  [(_UIKeyboardArbiterClient *)self setDisableBecomeFirstResponder:0];
}

- (void)setCurrentClientState:(id)state
{
  stateCopy = state;
  currentClientState = [(_UIKeyboardArbiterClient *)self currentClientState];
  [currentClientState keyboardIAVHeight];
  v7 = v6;
  [stateCopy keyboardIAVHeight];
  v9 = vabdd_f64(v7, v8);

  if (v9 > 0.00000011920929)
  {
    [(_UIKeyboardArbiterClient *)self setDidSignalKeyboardChangedForCurrentKeyboard:0];
  }

  v10.receiver = self;
  v10.super_class = _UIKeyboardArbiterClientInputDestination;
  [(_UIKeyboardArbiterClient *)&v10 setCurrentClientState:stateCopy];
}

- (void)setSnapshotting:(BOOL)snapshotting
{
  snapshottingCopy = snapshotting;
  v18 = *MEMORY[0x1E69E9840];
  snapshotting = [(_UIKeyboardArbiterClient *)self snapshotting];
  v16.receiver = self;
  v16.super_class = _UIKeyboardArbiterClientInputDestination;
  [(_UIKeyboardArbiterClient *)&v16 setSnapshotting:snapshottingCopy];
  if (snapshotting != snapshottingCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:0, 0];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if ([v11 _isTextEffectsWindow])
          {
            [v11 _updateRootViewConstraintsForInterfaceOrientationAndStatusBarHeight];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)shouldSnapshot
{
  v3 = +[_UIKeyboardArbiterClient mainBundleIdentifier];
  LOBYTE(self) = [(_UIKeyboardArbiterClient *)self isSpotlight:v3];

  return self ^ 1;
}

- (void)restorePreservedInputViewsIfNecessary
{
  [(_UIKeyboardArbiterClientInputDestination *)self userSelectedApp:0 onCompletion:0];
  v3.receiver = self;
  v3.super_class = _UIKeyboardArbiterClientInputDestination;
  [(_UIKeyboardArbiterClient *)&v3 restorePreservedInputViewsIfNecessary];
}

+ (id)currentBundleIdentifier
{
  if (qword_1ED49C1F8 != -1)
  {
    dispatch_once(&qword_1ED49C1F8, &__block_literal_global_208_1);
  }

  v3 = qword_1ED49C200;

  return v3;
}

- (BOOL)isWritingToolsHostingViewService
{
  currentClientState = [(_UIKeyboardArbiterClient *)self currentClientState];
  sourceBundleIdentifier = [currentClientState sourceBundleIdentifier];
  v4 = [sourceBundleIdentifier isEqualToString:@"com.apple.WritingToolsUIService"];

  return v4;
}

- (BOOL)writingToolsAllowsSceneToRequestFocusOnPeekApplicationEvent
{
  currentBundleIdentifier = [objc_opt_class() currentBundleIdentifier];
  v3 = [currentBundleIdentifier isEqualToString:@"com.apple.WritingToolsUIService"];

  return v3 ^ 1;
}

- (void)willResume:(id)resume
{
  resumeCopy = resume;
  if (![(_UIKeyboardArbiterClient *)self enqueuedWillEnterForegroundActions])
  {
    [(_UIKeyboardArbiterClient *)self setEnqueuedWillEnterForegroundActions:1];
    _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55___UIKeyboardArbiterClientInputDestination_willResume___block_invoke;
    v6[3] = &unk_1E70F35B8;
    v6[4] = self;
    v7 = resumeCopy;
    [_systemAnimationFenceExemptQueue performAsync:v6];
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v30 = *MEMORY[0x1E69E9840];
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

      requiredScene = [(_UIKeyboardArbiterClient *)self requiredScene];
      v9 = requiredScene;
      if (requiredScene)
      {
        identityToken = [requiredScene identityToken];
        stringRepresentation = [identityToken stringRepresentation];
      }

      else
      {
        stringRepresentation = [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];
      }

      v12 = [objc_opt_class() keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:object2];
      v13 = BSEqualStrings();
      v14 = +[UIWindowScene _keyWindowScene];
      _isTargetOfKeyboardEventDeferringEnvironment = [v14 _isTargetOfKeyboardEventDeferringEnvironment];

      if ((v13 & 1) != 0 || _isTargetOfKeyboardEventDeferringEnvironment)
      {
        wantsToShowKeyboard = [(_UIKeyboardArbiterClientInputDestination *)self wantsToShowKeyboard];
        v17 = KeyboardArbiterClientLog_3();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v20 = 138413314;
          v21 = v12;
          v22 = 1024;
          v23 = v13;
          v24 = 1024;
          v25 = wantsToShowKeyboard;
          v26 = 1024;
          currentInputDestination = [(_UIKeyboardArbiterClient *)self currentInputDestination];
          v28 = 1024;
          keyboardVisible = [(_UIKeyboardArbiterClient *)self keyboardVisible];
          _os_log_debug_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination sceneDidDisconnect:]  Performing required scene update for disconnecting scene: %@; needsUpdateToNil: %d; wantsToShowKeyboardForWindow: %d; hasCurrentKeyboard: %d; keyboardVisible: %d", &v20, 0x24u);
        }

        if (v13)
        {
          v18 = 0;
          v19 = 0x1000000;
        }

        else
        {
          v18 = +[UIWindow _applicationKeyWindow];
          v19 = 16777472;
        }

        [(_UIKeyboardArbiterClientInputDestination *)self _performRequiredSceneUpdateIfPermittedForWindow:v18 withContext:v19 | v13];
      }
    }
  }

  else
  {

    object2 = 0;
  }
}

- (void)_performRequiredSceneUpdateIfPermittedForWindow:(uint64_t)window withContext:
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    if ((window & 0x100) != 0)
    {
      v6 = [self currentInputDestination] ^ 1;
    }

    else
    {
      v6 = 1;
    }

    updatingKeyWindow = [self updatingKeyWindow];
    if ((updatingKeyWindow | window))
    {
      v8 = updatingKeyWindow ^ 1;
    }

    else
    {
      v8 = [self _sceneFocusUpdatePermittedForWindow:v5] & v6;
    }

    v9 = window & 0x10000;
    v10 = window & 0x1000000;
    v11 = window & 0x100000000;
    v12 = KeyboardArbiterClientLog_3();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67110656;
      *v34 = v8;
      *&v34[4] = 2048;
      *&v34[6] = v5;
      v35 = 1024;
      v36 = window & 1;
      v37 = 1024;
      v38 = (window & 0x100) >> 8;
      v39 = 1024;
      v40 = v9 >> 16;
      v41 = 1024;
      v42 = (window & 0x1000000) >> 24;
      v43 = 1024;
      v44 = (window & 0x100000000uLL) >> 32;
      _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination _performRequiredSceneUpdateIfPermittedForWindow:withContext:]  Update is permitted: %d; for window: %p; forcingUpdate: %d; consideringCurrentKeyboard: %d; updateFocusedSceneIdentityStringOrIdentifierIfNil: %d; updateProxyFocusContext: %d; notifyViewServiceHostIfNeeded: %d", buf, 0x30u);
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
        v30 = _settingsScene;
        stringRepresentation = [identityToken stringRepresentation];
        v23 = KeyboardArbiterClientLog_3();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v34 = stringRepresentation;
          _os_log_debug_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination _performRequiredSceneUpdateIfPermittedForWindow:withContext:]  Setting required scene: %@", buf, 0xCu);
        }

        [self setRequiredScene:_FBSScene];
        if (v20)
        {
          v24 = KeyboardArbiterClientLog_3();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v34 = stringRepresentation;
            _os_log_debug_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination _performRequiredSceneUpdateIfPermittedForWindow:withContext:]  Focusing scene identity: %@", buf, 0xCu);
          }

          [self setFocusedSceneIdentityStringOrIdentifier:stringRepresentation];
        }

        if (v10)
        {
          v25 = +[UIKBArbiterClientFocusContext focusContextForSceneIdentity:contextID:](UIKBArbiterClientFocusContext, "focusContextForSceneIdentity:contextID:", identityToken, [v5 _contextId]);
          v26 = KeyboardArbiterClientLog_3();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v34 = v25;
            _os_log_debug_impl(&dword_188A29000, v26, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination _performRequiredSceneUpdateIfPermittedForWindow:withContext:]  Updating proxy context: %@", buf, 0xCu);
          }

          arbiterProxy = [self arbiterProxy];
          [arbiterProxy setClientFocusContext:v25];
        }
      }

      else
      {
        if (_settingsScene == 0 || !v20)
        {
          goto LABEL_28;
        }

        v30 = _settingsScene;
        stringRepresentation = [objc_opt_class() keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:_settingsScene];
        v22 = KeyboardArbiterClientLog_3();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v34 = stringRepresentation;
          _os_log_debug_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination _performRequiredSceneUpdateIfPermittedForWindow:withContext:]  Focusing scene identifier: %@", buf, 0xCu);
        }

        [self setFocusedSceneIdentityStringOrIdentifier:stringRepresentation];
      }

      _settingsScene = v30;
LABEL_28:
      if (v11 && ([v5 _isTextEffectsWindow] & 1) == 0 && (objc_msgSend(v5, "_isRemoteKeyboardWindow") & 1) == 0)
      {
        v31 = @"_UIRemoteKeyboardsHostedWindowUserInfoKey";
        v32 = v5;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"_UIRemoteKeyboardsServiceWantsKeyboardFocusWithoutFirstResponderNotification" object:0 userInfo:v28];
      }
    }
  }
}

- (void)didSuspend:(id)suspend
{
  v14 = *MEMORY[0x1E69E9840];
  suspendCopy = suspend;
  wantsToShowKeyboard = [(_UIKeyboardArbiterClientInputDestination *)self wantsToShowKeyboard];
  v6 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v9 = wantsToShowKeyboard;
    v10 = 1024;
    currentInputDestination = [(_UIKeyboardArbiterClient *)self currentInputDestination];
    v12 = 1024;
    keyboardVisible = [(_UIKeyboardArbiterClient *)self keyboardVisible];
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination didSuspend:]  wantsToShowKeyboardForWindow: %d; currentInputDestination: %d; keyboardVisible: %d", buf, 0x14u);
  }

  if (wantsToShowKeyboard && ![(_UIKeyboardArbiterClientInputDestination *)self isHostedInAnotherProcess])
  {
    [(_UIKeyboardArbiterClientInputDestination *)self setWindowEnabled:0];
  }

  v7.receiver = self;
  v7.super_class = _UIKeyboardArbiterClientInputDestination;
  [(_UIKeyboardArbiterClient *)&v7 didSuspend:suspendCopy];
  [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_224_0];
}

- (void)willAddDeactivationReason:(id)reason
{
  userInfo = [reason userInfo];
  v5 = [userInfo objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  integerValue = [v5 integerValue];

  if (integerValue > 6)
  {
    if ((integerValue - 14) < 3 || integerValue == 7)
    {
      focusedSceneIdentityStringOrIdentifier = [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];
      self->_hadFocusBeforeOverlay = focusedSceneIdentityStringOrIdentifier != 0;
    }

    if (integerValue == 12)
    {
      v9 = _UIArbiterClientLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "TX setDeactivating: Y (+DeactivationReason:SuspendedEventsOnly)", v11, 2u);
      }

      arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
      [arbiterProxy setDeactivating:1];
    }
  }

  else if (integerValue)
  {
    if (integerValue == 2)
    {

      [(_UIKeyboardArbiterClient *)self setDeactivatedByControlCenter:1];
    }

    else if (integerValue == 5)
    {
      self->_deactivatedBySystemAnimation = 1;
    }
  }

  else
  {

    [(_UIKeyboardArbiterClient *)self setDeactivatedBySystemGesture:1];
  }
}

- (void)didRemoveDeactivationReason:(id)reason
{
  userInfo = [reason userInfo];
  v5 = [userInfo objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  integerValue = [v5 integerValue];

  if (integerValue > 6)
  {
    if ((integerValue - 14) < 3 || integerValue == 7)
    {
      if (self->_hadFocusBeforeOverlay)
      {
        focusedSceneIdentityStringOrIdentifier = [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];

        if (focusedSceneIdentityStringOrIdentifier)
        {
          arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
          [arbiterProxy applicationShouldFocusWithBundle:0 onCompletion:&__block_literal_global_227_2];
        }
      }

      self->_hadFocusBeforeOverlay = 0;
    }

    if (integerValue == 12)
    {
      v10 = _UIArbiterClientLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "TX setDeactivating: N (-DeactivationReason:SuspendedEventsOnly)", v12, 2u);
      }

      arbiterProxy2 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
      [arbiterProxy2 setDeactivating:0];
    }
  }

  else if (integerValue)
  {
    if (integerValue == 2)
    {

      [(_UIKeyboardArbiterClient *)self setDeactivatedByControlCenter:0];
    }

    else if (integerValue == 5)
    {
      self->_deactivatedBySystemAnimation = 0;
    }
  }

  else
  {

    [(_UIKeyboardArbiterClient *)self setDeactivatedBySystemGesture:0];
  }
}

- (void)willResignActive:(id)active
{
  v4 = [(_UIKeyboardArbiterClient *)self deactivatedByControlCenter]|| self->_deactivatedBySystemAnimation;
  self->_resignActiveByControlCenter = v4;
  if ([(_UIKeyboardArbiterClient *)self currentInputDestination]&& !self->_resignActiveByControlCenter && !+[UIKeyboard isSpotlight])
  {
    currentClientState = [(_UIKeyboardArbiterClient *)self currentClientState];
    v6 = [currentClientState copyWithIntersectability:0];

    [v6 setShouldTakeSnapshot:0];
    [(_UIKeyboardArbiterClientInputDestination *)self signalToProxyKeyboardChanged:v6 reason:@"willResignActive" onCompletion:&__block_literal_global_233_2];
  }
}

- (void)didBecomeActive:(id)active
{
  [(_UIKeyboardArbiterClient *)self checkConnection];
  if ([(_UIKeyboardArbiterClient *)self currentInputDestination]&& !self->_resignActiveByControlCenter)
  {
    backupState = [(_UIKeyboardArbiterClient *)self backupState];
    v5 = backupState;
    if (backupState)
    {
      v6 = [backupState copyWithIntersectability:1];
    }

    else
    {
      currentClientState = [(_UIKeyboardArbiterClient *)self currentClientState];
      v6 = [currentClientState copyWithIntersectability:1];
    }

    [v6 setShouldTakeSnapshot:0];
    [(_UIKeyboardArbiterClientInputDestination *)self signalToProxyKeyboardChanged:v6 reason:@"didBecomeActive" onCompletion:&__block_literal_global_238_0];
    if (![(_UIKeyboardArbiterClientInputDestination *)self isHostedInAnotherProcess])
    {
      [(_UIKeyboardArbiterClientInputDestination *)self setWindowEnabled:1];
    }
  }

  self->_resignActiveByControlCenter = 0;
  [(_UIKeyboardArbiterClient *)self setDeactivatedByControlCenter:0];
  self->_deactivatedBySystemAnimation = 0;
}

- (void)setSuppressingKeyboard:(BOOL)keyboard forScene:(id)scene
{
  keyboardCopy = keyboard;
  v44 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  v7 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v39 = keyboardCopy;
    v40 = 2112;
    v41 = sceneCopy;
    v42 = 1024;
    expectedSuppression = [(_UIKeyboardArbiterClient *)self expectedSuppression];
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination setSuppressingKeyboard:forScene:]  setSuppressingKeyboard: %d forScene: %@ (expectedSuppression: %d)", buf, 0x18u);
  }

  if ([(_UIKeyboardArbiterClient *)self expectedSuppression]!= keyboardCopy)
  {
    [(_UIKeyboardArbiterClient *)self setExpectedSuppression:keyboardCopy];
    if ([(_UIKeyboardArbiterClient *)self expectedSuppression])
    {
      v8 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v8 userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v10 = dispatch_time(0, 500000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __76___UIKeyboardArbiterClientInputDestination_setSuppressingKeyboard_forScene___block_invoke;
        block[3] = &unk_1E70F3590;
        block[4] = self;
        dispatch_after(v10, MEMORY[0x1E69E96A0], block);
      }
    }

    v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    containerWindow = [v11 containerWindow];

    kbUIStateDelegate = [(_UIKeyboardArbiterClient *)self kbUIStateDelegate];
    screen = [containerWindow screen];
    v15 = [kbUIStateDelegate mostActiveWindowSceneOnScreen:screen];

    if (keyboardCopy)
    {
      if (!sceneCopy)
      {
        sceneCopy = v15;
      }

      objc_storeStrong(&self->_suppressedScene, sceneCopy);
    }

    else if (!sceneCopy)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v16 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1];
      v17 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v33;
LABEL_14:
        v20 = 0;
        while (1)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v32 + 1) + 8 * v20);
          suppressedScene = self->_suppressedScene;
          if (v21 == suppressedScene)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
            if (v18)
            {
              goto LABEL_14;
            }

            goto LABEL_20;
          }
        }

        sceneCopy = suppressedScene;

        if (v21)
        {
          goto LABEL_23;
        }
      }

      else
      {
LABEL_20:
      }

      sceneCopy = v15;
    }

LABEL_23:
    arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
    [arbiterProxy notifyHostedPIDsOfSuppression:keyboardCopy];

    v24 = +[UIPeripheralHost sharedInstance];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76___UIKeyboardArbiterClientInputDestination_setSuppressingKeyboard_forScene___block_invoke_2;
    aBlock[3] = &unk_1E70F5AF0;
    v25 = v24;
    v29 = v25;
    v31 = keyboardCopy;
    sceneCopy = sceneCopy;
    v30 = sceneCopy;
    v26 = _Block_copy(aBlock);
    if ([UIApp isSuspended])
    {
      v27 = +[UIInputViewAnimationStyle animationStyleImmediate];
      [v25 pushAnimationStyle:v27];

      [UIView performWithoutAnimation:v26];
      [v25 popAnimationStyle];
    }

    else
    {
      v26[2](v26);
    }
  }
}

- (BOOL)shouldIgnoreInputDestinationChange:(BOOL)change withIAVHeight:(double)height
{
  if ([(_UIKeyboardArbiterClient *)self currentInputDestination]!= change)
  {
    return 0;
  }

  currentClientState = [(_UIKeyboardArbiterClient *)self currentClientState];
  [currentClientState keyboardIAVHeight];
  v6 = vabdd_f64(v8, height) < 0.00000011920929;

  return v6;
}

- (BOOL)inputDestinationDidChange:(BOOL)change withIAVHeight:(double)height isIAVRelevant:(BOOL)relevant notifyRemote:(BOOL)remote forScene:(id)scene
{
  remoteCopy = remote;
  relevantCopy = relevant;
  changeCopy = change;
  v71 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  v13 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = changeCopy;
    v69 = 1024;
    v70 = remoteCopy;
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination inputDestinationDidChange:withIAVHeight:isIAVRelevant:notifyRemote:forScene:]  inputDestDidChange: %{BOOL}d; shouldNotify: %{BOOL}d", &buf, 0xEu);
  }

  if (![(_UIKeyboardArbiterClientInputDestination *)self shouldIgnoreInputDestinationChange:changeCopy withIAVHeight:height])
  {
    [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];

    [(_UIKeyboardArbiterClient *)self checkConnection];
    context = objc_autoreleasePoolPush();
    [(_UIKeyboardArbiterClient *)self setBackupState:0];
    arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
    v17 = arbiterProxy;
    heightCopy = 0.0;
    if (relevantCopy)
    {
      heightCopy = height;
    }

    [arbiterProxy notifyIAVHeight:heightCopy];

    currentInputDestination = [(_UIKeyboardArbiterClient *)self currentInputDestination];
    if (changeCopy)
    {
      if (currentInputDestination)
      {
        currentClientState = [(_UIKeyboardArbiterClient *)self currentClientState];
        [currentClientState keyboardIAVHeight];
        if (v21 == height)
        {
          didSignalKeyboardChangedForCurrentKeyboard = [(_UIKeyboardArbiterClient *)self didSignalKeyboardChangedForCurrentKeyboard];

          if (didSignalKeyboardChangedForCurrentKeyboard)
          {
            scene = KeyboardArbiterClientLog_3();
            if (os_log_type_enabled(scene, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              v24 = "[_UIKeyboardArbiterClientInputDestination inputDestinationDidChange:withIAVHeight:isIAVRelevant:notifyRemote:forScene:]  nothing changed, returning";
LABEL_20:
              _os_log_impl(&dword_188A29000, scene, OS_LOG_TYPE_DEFAULT, v24, &buf, 2u);
              goto LABEL_21;
            }

            goto LABEL_21;
          }
        }

        else
        {
        }
      }

      if ([(_UIKeyboardArbiterClient *)self currentInputDestination])
      {
        currentClientState2 = [(_UIKeyboardArbiterClient *)self currentClientState];
        [currentClientState2 keyboardIAVHeight];
        if (v30 != height)
        {
          kbUIStateDelegate = [(_UIKeyboardArbiterClient *)self kbUIStateDelegate];
          updatingPreferences = [kbUIStateDelegate updatingPreferences];

          LOBYTE(remoteCopy) = updatingPreferences ^ 1 | remoteCopy;
        }
      }

      v33 = [_UIKeyboardChangedInformation informationForKeyboardUpWithIAVHeight:height];
      [(_UIKeyboardArbiterClientInputDestination *)self setCurrentClientState:v33];

      [(_UIKeyboardArbiterClient *)self resetSnapshotWithWindowCheck:0];
    }

    else
    {
      if (!currentInputDestination)
      {
        currentUIState = [(_UIKeyboardArbiterClient *)self currentUIState];
        [currentUIState resetAnimationFencing];

        [(_UIKeyboardArbiterClient *)self setCurrentInputDestination:0];
        keyboardVisible = [(_UIKeyboardArbiterClient *)self keyboardVisible];
        eventObserver = [(_UIKeyboardArbiterClient *)self eventObserver];
        [eventObserver setKeyboardIsVisible:keyboardVisible];

        scene = KeyboardArbiterClientLog_3();
        if (os_log_type_enabled(scene, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          v24 = "[_UIKeyboardArbiterClientInputDestination inputDestinationDidChange:withIAVHeight:isIAVRelevant:notifyRemote:forScene:]  another keyboard hid us!";
          goto LABEL_20;
        }

LABEL_21:
        v15 = 0;
LABEL_40:

        objc_autoreleasePoolPop(context);
        goto LABEL_41;
      }

      if ([(_UIKeyboardArbiterClient *)self currentInputDestination])
      {
        v25 = +[_UIKeyboardChangedInformation informationForKeyboardDown];
        [(_UIKeyboardArbiterClientInputDestination *)self setCurrentClientState:v25];
      }
    }

    if ([UIApp _isSpringBoard])
    {
      keyboardSceneDelegate = [sceneCopy keyboardSceneDelegate];
      scene = [keyboardSceneDelegate scene];
    }

    else
    {
      scene = sceneCopy;
    }

    v35 = [objc_opt_class() keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:scene];
    currentClientState3 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [currentClientState3 setSourceSceneIdentityString:v35];

    v37 = _UIMainBundleIdentifier();
    currentClientState4 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [currentClientState4 setSourceBundleIdentifier:v37];

    screen = [scene screen];
    displayConfiguration = [screen displayConfiguration];
    _nameForDisplayType = [displayConfiguration _nameForDisplayType];
    currentClientState5 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [currentClientState5 setSourceDisplayIdentifier:_nameForDisplayType];

    shouldSnapshot = [(_UIKeyboardArbiterClientInputDestination *)self shouldSnapshot];
    currentClientState6 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [currentClientState6 setShouldTakeSnapshot:shouldSnapshot];

    v45 = [(_UIKeyboardArbiterClientInputDestination *)self localSceneCount]> 1;
    currentClientState7 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [currentClientState7 setMultipleScenes:v45];

    v47 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    hardwareKeyboardExclusivityIdentifier = [v47 hardwareKeyboardExclusivityIdentifier];
    currentClientState8 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [currentClientState8 setIsOneness:hardwareKeyboardExclusivityIdentifier != 0];

    currentUIState2 = [(_UIKeyboardArbiterClient *)self currentUIState];
    resizing = [currentUIState2 resizing];
    currentClientState9 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [currentClientState9 setResizing:resizing];

    keyboardVisible2 = [(_UIKeyboardArbiterClient *)self keyboardVisible];
    eventObserver2 = [(_UIKeyboardArbiterClient *)self eventObserver];
    [eventObserver2 setKeyboardIsVisible:keyboardVisible2];

    [(_UIKeyboardArbiterClient *)self setCurrentInputDestination:changeCopy];
    currentClientState10 = [(_UIKeyboardArbiterClient *)self currentClientState];
    if (((currentClientState10 != 0) & remoteCopy) == 1 && ([(_UIKeyboardArbiterClientInputDestination *)self allowedToShowKeyboard]|| [(_UIKeyboardArbiterClient *)self hostedCount]))
    {
      kbUIStateDelegate2 = [(_UIKeyboardArbiterClient *)self kbUIStateDelegate];
      layoutIsResizing = [kbUIStateDelegate2 layoutIsResizing];

      if (layoutIsResizing)
      {
        v15 = 0;
LABEL_39:
        [(_UIKeyboardArbiterClient *)self setExpectingInitialState:0];
        [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_248_3];
        goto LABEL_40;
      }

      v58 = +[_UIKBArbiterClientToken uniqueToken];
      v59 = [objc_opt_class() keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:sceneCopy];
      [v58 setSceneIdentityString:v59];

      pendingKeyboardGrabs = [(_UIKeyboardArbiterClientInputDestination *)self pendingKeyboardGrabs];
      [pendingKeyboardGrabs addObject:v58];

      objc_initWeak(&buf, self);
      currentClientState11 = [(_UIKeyboardArbiterClient *)self currentClientState];
      v62 = [currentClientState11 copy];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __120___UIKeyboardArbiterClientInputDestination_inputDestinationDidChange_withIAVHeight_isIAVRelevant_notifyRemote_forScene___block_invoke;
      v65[3] = &unk_1E70F2F80;
      objc_copyWeak(&v67, &buf);
      currentClientState10 = v58;
      v66 = currentClientState10;
      [(_UIKeyboardArbiterClientInputDestination *)self signalToProxyKeyboardChanged:v62 reason:@"inputDestinationDidChange" onCompletion:v65];

      objc_destroyWeak(&v67);
      objc_destroyWeak(&buf);
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_39;
  }

  v14 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination inputDestinationDidChange:withIAVHeight:isIAVRelevant:notifyRemote:forScene:]  returning early due to shouldIgnoreInputDestinationChange:", &buf, 2u);
  }

  v15 = 0;
LABEL_41:

  return v15;
}

- (void)_layoutKeyboardViews:(id)views
{
  inputWindowRootViewController = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  inputViewSet = [inputWindowRootViewController inputViewSet];
  normalizePlaceholders = [inputViewSet normalizePlaceholders];

  inputWindowRootViewController2 = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  placementIgnoringRotation = [inputWindowRootViewController2 placementIgnoringRotation];
  [placementIgnoringRotation remoteIntrinsicContentSizeForInputViewInSet:normalizePlaceholders includingIAV:0];
  v9 = v8;

  inputWindowRootViewController3 = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  placementIgnoringRotation2 = [inputWindowRootViewController3 placementIgnoringRotation];
  [placementIgnoringRotation2 remoteIntrinsicContentSizeForInputViewInSet:normalizePlaceholders includingIAV:1];
  v13 = v12;

  v14 = v13 - v9;
  currentClientState = [(_UIKeyboardArbiterClient *)self currentClientState];
  [currentClientState keyboardIAVHeight];
  if (vabdd_f64(v16, v14) > 0.00000011920929)
  {
    v17 = +[UIKeyboardImpl isFloating];

    if (v17)
    {
      goto LABEL_5;
    }

    currentInputDestination = [(_UIKeyboardArbiterClient *)self currentInputDestination];
    currentClientState = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
    inputViewSet2 = [currentClientState inputViewSet];
    isInputAccessoryViewPlaceholder = [inputViewSet2 isInputAccessoryViewPlaceholder];
    handlingRemoteEvent = [(_UIKeyboardArbiterClient *)self handlingRemoteEvent];
    v22 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    scene = [v22 scene];
    [(_UIKeyboardArbiterClientInputDestination *)self inputDestinationDidChange:currentInputDestination withIAVHeight:isInputAccessoryViewPlaceholder ^ 1u isIAVRelevant:!handlingRemoteEvent notifyRemote:scene forScene:v14];
  }

LABEL_5:
}

- (BOOL)_didHandleKeyboardClientChange:(id)change shouldConsiderSnapshottingKeyboard:(BOOL)keyboard isLocalEvent:(BOOL)event
{
  eventCopy = event;
  v54 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v8 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = changeCopy;
    *&buf[12] = 1024;
    *&buf[14] = eventCopy;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination _didHandleKeyboardClientChange:shouldConsiderSnapshottingKeyboard:isLocalEvent:]  Keyboard client did change: %@ is local: %d", buf, 0x12u);
  }

  handlingRemoteEvent = [(_UIKeyboardArbiterClient *)self handlingRemoteEvent];
  [(_UIKeyboardArbiterClient *)self setHandlingRemoteEvent:!eventCopy];
  currentInputDestination = [(_UIKeyboardArbiterClient *)self currentInputDestination];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v53 = 0;
  v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __123___UIKeyboardArbiterClientInputDestination__didHandleKeyboardClientChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke;
  v48[3] = &unk_1E712C6E0;
  v48[4] = self;
  v11 = v10;
  v49 = v11;
  v12 = changeCopy;
  v50 = v12;
  v51 = buf;
  [UIKeyboardSceneDelegate performOnControllers:v48];
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    currentClientState = [(_UIKeyboardArbiterClient *)self currentClientState];
    sourceBundleIdentifier = [currentClientState sourceBundleIdentifier];
    v15 = +[_UIKeyboardArbiterClient mainBundleIdentifier];
    v16 = [sourceBundleIdentifier isEqualToString:v15];

    if (v16)
    {
      currentClientState2 = [(_UIKeyboardArbiterClient *)self currentClientState];
      [(_UIKeyboardArbiterClient *)self setBackupState:currentClientState2];
    }

    [(_UIKeyboardArbiterClientInputDestination *)self setCurrentClientState:v12];
  }

  v18 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  hardwareKeyboardExclusivityIdentifier = [v18 hardwareKeyboardExclusivityIdentifier];

  sourceBundleIdentifier2 = [v12 sourceBundleIdentifier];
  if ([(_UIKeyboardArbiterClient *)self isSpotlight:sourceBundleIdentifier2])
  {
    v21 = (hardwareKeyboardExclusivityIdentifier == 0) ^ [v12 isOneness];
  }

  else
  {
    v21 = 0;
  }

  if ([(_UIKeyboardArbiterClient *)self currentInputDestination])
  {
    v22 = *(*&buf[8] + 24) | v21;
  }

  else
  {
    v22 = 0;
  }

  [(_UIKeyboardArbiterClient *)self setCurrentInputDestination:v22 & 1];
  if (eventCopy)
  {
    if ([(_UIKeyboardArbiterClientInputDestination *)self localSceneCount]>= 2)
    {
      sourceSceneIdentityString = [v12 sourceSceneIdentityString];
      eventCopy = sourceSceneIdentityString == 0;
    }

    else
    {
      eventCopy = 1;
    }
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  if (currentInputDestination && ((*(*&buf[8] + 24) | v21) & 1) == 0)
  {
    v25 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    responder = [v25 responder];

    if (([responder _isHostingRemoteContent] & 1) == 0)
    {
      _responderWindow = [responder _responderWindow];
      [_responderWindow _setLastFirstResponder:responder];
      if (objc_opt_respondsToSelector())
      {
        interactionState = [responder interactionState];
        [_responderWindow _setLastFirstResponderInteractionState:interactionState];
      }

      v29 = _UIArbiterClientLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 0;
        _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_DEFAULT, "handleKeyboardClientChange: resignFirstResponder", v43, 2u);
      }

      [_responderWindow _setWantsResponderWithoutKeyboard:1];
      [responder resignFirstResponder];
      [_responderWindow _setWantsResponderWithoutKeyboard:0];
      _firstResponder = [_responderWindow _firstResponder];
      [_responderWindow _setLastNextResponder:_firstResponder];
    }

    *(v45 + 24) = 1;
  }

  else
  {
    [(_UIKeyboardArbiterClient *)self setUpdatingHeight:1];
    [(_UIKeyboardArbiterClient *)self performOnExistingControllers:&__block_literal_global_255_2];
    if (v21)
    {
      v24 = [UIApp _isSpringBoard] ^ 1;
    }

    else
    {
      v24 = 0;
    }

    if (((eventCopy | v24) & 1) == 0)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __123___UIKeyboardArbiterClientInputDestination__didHandleKeyboardClientChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_2;
      v40[3] = &unk_1E7117D60;
      v40[4] = self;
      v41 = v12;
      v42 = &v44;
      [UIKeyboardSceneDelegate performOnControllers:v40];
    }

    [(_UIKeyboardArbiterClient *)self performOnExistingControllers:&__block_literal_global_257_0];
    [(_UIKeyboardArbiterClient *)self setUpdatingHeight:0];
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __123___UIKeyboardArbiterClientInputDestination__didHandleKeyboardClientChange_shouldConsiderSnapshottingKeyboard_isLocalEvent___block_invoke_6;
  v38[3] = &unk_1E712C708;
  v38[4] = self;
  v31 = v11;
  v39 = v31;
  [UIKeyboardSceneDelegate performOnControllers:v38];
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    currentUIState = [(_UIKeyboardArbiterClient *)self currentUIState];
    [currentUIState resetAnimationFencing];
  }

  [(_UIKeyboardArbiterClient *)self setHandlingRemoteEvent:handlingRemoteEvent];
  changeInfoDelegate = [(_UIKeyboardArbiterClient *)self changeInfoDelegate];
  [changeInfoDelegate didHandleKeyboardClientChange:self];

  os_unfair_lock_lock(&self->_clientChangeResponseLock);
  clientChangeResponseTransaction = self->_clientChangeResponseTransaction;
  self->_clientChangeResponseTransaction = 0;

  os_unfair_lock_unlock(&self->_clientChangeResponseLock);
  v35 = *(v45 + 24);

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(buf, 8);

  return v35 & 1;
}

- (void)signalToProxyKeyboardChanged:(id)changed reason:(id)reason onCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  reasonCopy = reason;
  completionCopy = completion;
  v11 = _UIArbiterClientLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = reasonCopy;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "RX signalKeyboardClientChanged (reason:%{public}@)", &v14, 0xCu);
  }

  v12 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = changedCopy;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination signalToProxyKeyboardChanged:onCompletion:]  Signaling keyboard changed %@", &v14, 0xCu);
  }

  [(_UIKeyboardArbiterClient *)self setDidSignalKeyboardChangedForCurrentKeyboard:1];
  arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  [arbiterProxy signalKeyboardClientChanged:changedCopy onCompletion:completionCopy];
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

- (void)applicationKeyWindowDidChange:(id)change
{
  v27 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  object = [changeCopy object];
  userInfo = [changeCopy userInfo];

  v7 = [userInfo objectForKey:@"Reason"];

  if (v7)
  {
    v8 = [v7 unsignedIntegerValue] == 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = 16777472;
  windowScene = [object windowScene];
  if (_UISceneSystemShellManagesKeyboardFocusIsPossibleForScene(windowScene) && (_UISceneSystemShellManagesKeyboardFocusForScene(windowScene) & 1) == 0)
  {
    v11 = [windowScene _isConnecting] & 1;
    if (v11)
    {
      v9 = 0x1000000;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    windowScene2 = [object windowScene];
    _settingsScene = [windowScene2 _settingsScene];

    _FBSScene = [_settingsScene _FBSScene];

    identityToken = [_FBSScene identityToken];
    stringRepresentation = [identityToken stringRepresentation];

    *buf = 134218754;
    v20 = object;
    v21 = 2112;
    v22 = stringRepresentation;
    v23 = 2048;
    unsignedIntegerValue = [v7 unsignedIntegerValue];
    v25 = 1024;
    v26 = v11;
    _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination applicationKeyWindowDidChange:]  Application key window changed to window: %p; scene identity: %@; for reason: %lu; nonSystemShellManagedScene: %{BOOL}d", buf, 0x26u);
  }

  if (v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = v9;
  }

  [(_UIKeyboardArbiterClientInputDestination *)self _performRequiredSceneUpdateIfPermittedForWindow:object withContext:v13];
  [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_264_0];
}

- (BOOL)isHostedInAnotherProcess
{
  existingInputWindowRootViewController = [(_UIKeyboardArbiterClient *)self existingInputWindowRootViewController];
  view = [existingInputWindowRootViewController view];
  window = [view window];
  if ([window _isHostedInAnotherProcess])
  {
    _isHostedInAnotherProcess = 1;
  }

  else
  {
    v6 = +[UIWindow _applicationKeyWindow];
    _isHostedInAnotherProcess = [v6 _isHostedInAnotherProcess];
  }

  return _isHostedInAnotherProcess;
}

- (BOOL)hasWindowHostingPID:(int)d
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&d];
  activePIDs = [(_UIKeyboardArbiterClientInputDestination *)self activePIDs];
  v6 = [activePIDs containsObject:v4];

  return v6;
}

- (BOOL)hasWindowHostingCallerID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    callerIDs = [(_UIKeyboardArbiterClientInputDestination *)self callerIDs];
    allKeys = [callerIDs allKeys];
    v7 = [allKeys containsObject:dCopy];
  }

  else
  {
    v8 = KeyboardArbiterClientLog_3();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination hasWindowHostingCallerID:]  nil callerID", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)addWindowHostingPID:(int)d callerID:(id)iD
{
  v4 = *&d;
  iDCopy = iD;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  [(_UIKeyboardArbiterClientInputDestination *)self setWindowHostingPID:v4 active:1];
  if (iDCopy)
  {
    callerIDs = [(_UIKeyboardArbiterClientInputDestination *)self callerIDs];
    [callerIDs setObject:v7 forKey:iDCopy];
  }

  else
  {
    callerIDs = KeyboardArbiterClientLog_3();
    if (os_log_type_enabled(callerIDs, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, callerIDs, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination addWindowHostingPID:callerID:]  nil callerID", v9, 2u);
    }
  }
}

- (void)removeWindowHostingPID:(int)d callerID:(id)iD
{
  v4 = *&d;
  iDCopy = iD;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  if (iDCopy)
  {
    callerIDs = [(_UIKeyboardArbiterClientInputDestination *)self callerIDs];
    [callerIDs removeObjectForKey:iDCopy];
  }

  else
  {
    callerIDs = KeyboardArbiterClientLog_3();
    if (os_log_type_enabled(callerIDs, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, callerIDs, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination removeWindowHostingPID:callerID:]  nil callerID", v12, 2u);
    }
  }

  callerIDs2 = [(_UIKeyboardArbiterClientInputDestination *)self callerIDs];
  allValues = [callerIDs2 allValues];
  v11 = [allValues containsObject:v7];

  if ((v11 & 1) == 0)
  {
    [(_UIKeyboardArbiterClientInputDestination *)self setWindowHostingPID:v4 active:0];
  }
}

- (void)setWindowHostingPID:(int)d active:(BOOL)active
{
  if (d)
  {
    activeCopy = active;
    v5 = *&d;
    v10 = [MEMORY[0x1E696AD98] numberWithInt:?];
    arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
    [arbiterProxy setWindowHostingPID:v5 active:activeCopy];

    activePIDs = [(_UIKeyboardArbiterClientInputDestination *)self activePIDs];
    v9 = activePIDs;
    if (activeCopy)
    {
      [activePIDs addObject:v10];

      if (![(_UIKeyboardArbiterClientInputDestination *)self isHostedInAnotherProcess])
      {
        [(_UIKeyboardArbiterClientInputDestination *)self setWindowEnabled:[(_UIKeyboardArbiterClientInputDestination *)self allowedToShowKeyboard]];
      }
    }

    else
    {
      [activePIDs removeObject:v10];

      if (![(_UIKeyboardArbiterClient *)self hasAnyHostedViews])
      {
        [(_UIKeyboardArbiterClientInputDestination *)self completeMoveKeyboard];
      }
    }
  }
}

- (BOOL)wantsToShowKeyboard
{
  if ([(_UIKeyboardArbiterClient *)self currentInputDestination]|| [(_UIKeyboardArbiterClient *)self hasAnyHostedViews])
  {
    return 1;
  }

  keyboardSnapshot = [(_UIKeyboardArbiterClient *)self keyboardSnapshot];
  if (keyboardSnapshot)
  {
    isOnScreenRotating = 1;
  }

  else
  {
    isOnScreenRotating = [(_UIKeyboardArbiterClient *)self isOnScreenRotating];
  }

  return isOnScreenRotating;
}

- (id)prepareForHostedWindowWithScene:(id)scene
{
  ++self->_hostedCount;
  screen = [scene screen];
  [(_UIKeyboardArbiterClient *)self checkConnection];
  if (self->_hostedCount == 1)
  {
    v5 = +[UIPeripheralHost sharedInstance];
    [v5 forceReloadInputViews];
  }

  return 0;
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

- (CGRect)keyboardFrameIncludingRemoteIAV
{
  currentClientState = [(_UIKeyboardArbiterClient *)self currentClientState];
  [currentClientState keyboardPositionWithRemoteIAV];
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

- (BOOL)needsToShowKeyboard
{
  allowedToShowKeyboard = [(_UIKeyboardArbiterClientInputDestination *)self allowedToShowKeyboard];
  if (allowedToShowKeyboard)
  {

    LOBYTE(allowedToShowKeyboard) = [(_UIKeyboardArbiterClientInputDestination *)self wantsToShowKeyboard];
  }

  return allowedToShowKeyboard;
}

- (BOOL)needsToShowKeyboardForViewServiceHost
{
  allowedToShowKeyboard = [(_UIKeyboardArbiterClientInputDestination *)self allowedToShowKeyboard];
  if (allowedToShowKeyboard)
  {

    LOBYTE(allowedToShowKeyboard) = [(_UIKeyboardArbiterClientInputDestination *)self wantsToShowKeyboardForViewServiceHost];
  }

  return allowedToShowKeyboard;
}

- (BOOL)allowedToShowKeyboard
{
  v4.receiver = self;
  v4.super_class = _UIKeyboardArbiterClientInputDestination;
  return [(_UIKeyboardArbiterClient *)&v4 allowedToShowKeyboard]|| [(_UIKeyboardArbiterClientInputDestination *)self isHostedInAnotherProcess];
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

- (BOOL)allowedToEnableKeyboardWindow
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  scene = [v3 scene];

  v9 = 0;
  if (scene)
  {
    keyboardSceneIdentifierEnteringForeground = self->_keyboardSceneIdentifierEnteringForeground;
    _sceneIdentifier = [scene _sceneIdentifier];
    LOBYTE(keyboardSceneIdentifierEnteringForeground) = [(NSString *)keyboardSceneIdentifierEnteringForeground isEqualToString:_sceneIdentifier];

    if ((keyboardSceneIdentifierEnteringForeground & 1) != 0 || ![scene activationState] || objc_msgSend(scene, "activationState") == 1 && (-[_UIKeyboardArbiterClient currentUIState](self, "currentUIState"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "keyboardOnScreen"), v7, v8) && ((objc_msgSend(scene, "_canDynamicallySpecifySupportedInterfaceOrientations") & 1) != 0 || (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "visualModeManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "windowingModeEnabled"), v11, v10, objc_msgSend(scene, "_coordinateSpace"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "bounds"), v15 = v14, v17 = v16, v13, objc_msgSend(scene, "screen"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "bounds"), v20 = v19, v22 = v21, v18, (v12 & 1) == 0) && v15 == v20 && v17 == v22))
    {
      v9 = 1;
    }
  }

  return v9;
}

- (void)resignFirstResponderIfNeeded
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  responder = [v2 responder];

  if (([responder _isHostingRemoteContent] & 1) == 0)
  {
    v4 = _UIArbiterClientLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "resignFirstResponderIfNeeded: resignFirstResponder", v8, 2u);
    }

    _responderWindow = [responder _responderWindow];
    [_responderWindow _setLastFirstResponder:responder];
    if (objc_opt_respondsToSelector())
    {
      interactionState = [responder interactionState];
      [_responderWindow _setLastFirstResponderInteractionState:interactionState];
    }

    [responder resignFirstResponder];
    _firstResponder = [_responderWindow _firstResponder];
    [_responderWindow _setLastNextResponder:_firstResponder];
  }
}

- (void)setWindowEnabled:(BOOL)enabled force:(BOOL)force
{
  forceCopy = force;
  v24 = *MEMORY[0x1E69E9840];
  v6 = enabled && [(_UIKeyboardArbiterClientInputDestination *)self allowedToEnableKeyboardWindow];
  if (v6 && forceCopy)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6;
  }

  requiredScene = [(_UIKeyboardArbiterClient *)self requiredScene];
  identityToken = [requiredScene identityToken];

  v10 = off_1E712C798[v7];
  v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  responder = [v11 responder];
  _responderWindow = [responder _responderWindow];
  _contextId = [_responderWindow _contextId];

  if (!_contextId)
  {
    v15 = +[UIWindow _applicationKeyWindow];
    _contextId = [v15 _contextId];
  }

  v16 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    stringRepresentation = [identityToken stringRepresentation];
    v20 = 136315394;
    v21 = v10;
    v22 = 2112;
    v23 = stringRepresentation;
    _os_log_debug_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination setWindowEnabled:force:]  Setting window state: %s for scene identity: %@", &v20, 0x16u);
  }

  arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  v18 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:identityToken contextID:_contextId];
  [arbiterProxy setWindowContextID:0 focusContext:v18 windowState:v7 withLevel:10000001.0];
}

- (void)updateWindowState
{
  needsToShowKeyboard = [(_UIKeyboardArbiterClientInputDestination *)self needsToShowKeyboard];
  v4 = needsToShowKeyboard && [(_UIKeyboardArbiterClientInputDestination *)self needsToShowKeyboardForViewServiceHost];

  [(_UIKeyboardArbiterClientInputDestination *)self setWindowEnabled:needsToShowKeyboard force:v4];
}

- (void)completeMoveKeyboard
{
  if (![(_UIKeyboardArbiterClientInputDestination *)self isHostedInAnotherProcess])
  {
    [(_UIKeyboardArbiterClientInputDestination *)self setWindowEnabled:[(_UIKeyboardArbiterClientInputDestination *)self needsToShowKeyboard] force:0];
  }

  currentUIState = [(_UIKeyboardArbiterClient *)self currentUIState];
  [currentUIState resetAnimationFencing];
}

- (void)userSelectedApp:(id)app onCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  appCopy = app;
  completionCopy = completion;
  if (appCopy && ![(__CFString *)appCopy isEqualToString:&stru_1EFB14550])
  {
    focusedSceneIdentityStringOrIdentifier = 0;
  }

  else
  {
    requiredScene = [(_UIKeyboardArbiterClient *)self requiredScene];
    identityToken = [requiredScene identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    [(_UIKeyboardArbiterClientInputDestination *)self setFocusedSceneIdentityStringOrIdentifier:stringRepresentation];

    focusedSceneIdentityStringOrIdentifier = [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];
  }

  v12 = _UIArbiterClientLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"(self)";
    if (appCopy)
    {
      v13 = appCopy;
    }

    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "TX applicationShouldFocusWithBundle:%{public}@ (userSelectedApp)", &v16, 0xCu);
  }

  v14 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412546;
    v17 = appCopy;
    v18 = 2112;
    v19 = focusedSceneIdentityStringOrIdentifier;
    _os_log_debug_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination userSelectedApp:onCompletion:]  Focus bundle: %@, focusedSceneIdentity: %@", &v16, 0x16u);
  }

  if (!completionCopy)
  {
    completionCopy = &__block_literal_global_273_0;
  }

  arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  [arbiterProxy applicationShouldFocusWithBundle:appCopy onCompletion:completionCopy];
}

- (void)performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:(void *)delegate
{
  v15 = *MEMORY[0x1E69E9840];
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

      v10 = KeyboardArbiterClientLog_3();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = 134218242;
        v12 = v4;
        v13 = 2112;
        v14 = stringRepresentation;
        _os_log_debug_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:]  Performing required scene update for candidate window: %p; scene: %@", &v11, 0x16u);
      }

      [(_UIKeyboardArbiterClientInputDestination *)delegate _performRequiredSceneUpdateIfPermittedForWindow:v4 withContext:16777217];
    }
  }
}

- (void)performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:(uint64_t)window servicePID:
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    if ([self expectedSuppression])
    {
      windowScene = [v5 windowScene];
      v7 = windowScene == self[22];
    }

    else
    {
      v7 = 0;
    }

    v8 = self[31];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:window];
    v10 = [v8 containsObject:v9];

    v11 = window ? v10 : 1;
    if (v5 && !v7 && v11)
    {
      v12 = KeyboardArbiterClientLog_3();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = 134217984;
        v14 = v5;
        _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:servicePID:]  Performing required scene update for window hosting remote ui: %p", &v13, 0xCu);
      }

      [(_UIKeyboardArbiterClientInputDestination *)self _performRequiredSceneUpdateIfPermittedForWindow:v5 withContext:0x101010001];
    }
  }
}

- (BOOL)_sceneFocusPermittedForApplication
{
  _shouldAllowKeyboardArbiter = [UIApp _shouldAllowKeyboardArbiter];
  if (_shouldAllowKeyboardArbiter)
  {

    LOBYTE(_shouldAllowKeyboardArbiter) = [(_UIKeyboardArbiterClientInputDestination *)self allowedToShowKeyboard];
  }

  return _shouldAllowKeyboardArbiter;
}

- (BOOL)_sceneFocusUpdatePermittedForWindow:(id)window
{
  windowCopy = window;
  if (windowCopy && [UIApp _systemShellAllowsInteractionTrackingKeyboardFocusUpdateForWindow:windowCopy] && -[_UIKeyboardArbiterClientInputDestination _sceneFocusPermittedForApplication](self, "_sceneFocusPermittedForApplication"))
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

      if ([(_UIKeyboardArbiterClientInputDestination *)self _sceneFocusPermittedForApplication])
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

            focusedSceneIdentityStringOrIdentifier = [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];
            _keyboardClientComponent = [objc_opt_class() keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:v6];
            keyboardVisible = [(_UIKeyboardArbiterClient *)self keyboardVisible];
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
  v45 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (![eventCopy type])
  {
    eventObserver = [(_UIKeyboardArbiterClient *)self eventObserver];
    [eventObserver peekApplicationEvent:eventCopy];

    _sceneFocusPermittedForApplication = [(_UIKeyboardArbiterClientInputDestination *)self _sceneFocusPermittedForApplication];
    allTouches = [eventCopy allTouches];
    anyObject = [allTouches anyObject];

    view = [anyObject view];
    if ([anyObject phase])
    {
      v10 = [anyObject phase] == 3;
    }

    else
    {
      v10 = 1;
    }

    if (_sceneFocusPermittedForApplication && v10)
    {
      _responderWindow = [view _responderWindow];
      if (_UITouchIsWithinTiledWindowResizeRegion(anyObject, _responderWindow))
      {
        v12 = 3;
      }

      else
      {
        v12 = 0;
      }

      if ([anyObject phase] == v12)
      {
        v13 = objc_opt_class();
        windowScene = [_responderWindow windowScene];
        v15 = [v13 keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:windowScene];

        v16 = [(_UIKeyboardArbiterClientInputDestination *)self _sceneFocusUpdatePermittedForWindow:_responderWindow];
        _wantsTargetOfKeyboardEventDeferringEnvironment = [view _wantsTargetOfKeyboardEventDeferringEnvironment];
        v18 = [anyObject type] == 2;
        v19 = +[UIDictationController activeInstance];
        [v19 cancelDictationForResponderIfNeeded:view wantsKeyboard:_wantsTargetOfKeyboardEventDeferringEnvironment isPencil:v18];

        [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_284];
        v20 = KeyboardArbiterClientLog_3();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          *v41 = v16;
          *&v41[4] = 2112;
          *&v41[6] = v15;
          _os_log_debug_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination peekApplicationEvent:]  Update permitted: %d; for scene identity or identifier: %@", buf, 0x12u);
        }

        if (v16)
        {
          v39 = v15;
          keyboardVisible = [(_UIKeyboardArbiterClient *)self keyboardVisible];
          _isPointerTouch = [anyObject _isPointerTouch];
          v23 = _isPointerTouch;
          v24 = (_wantsTargetOfKeyboardEventDeferringEnvironment & 1 | !keyboardVisible || _isPointerTouch) && [(_UIKeyboardArbiterClientInputDestination *)self writingToolsAllowsSceneToRequestFocusOnPeekApplicationEvent];
          v25 = KeyboardArbiterClientLog_3();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67110146;
            *v41 = v24;
            *&v41[4] = 1024;
            *&v41[6] = keyboardVisible;
            *&v41[10] = 1024;
            *&v41[12] = _wantsTargetOfKeyboardEventDeferringEnvironment;
            *&v41[16] = 1024;
            v42 = v23;
            v43 = 2112;
            v44 = v39;
            _os_log_debug_impl(&dword_188A29000, v25, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination peekApplicationEvent:]  Request scene focus: %d; keyboardOnScreen: %d; wantsKeyboard: %d; touchIsPointer: %d; for scene identity or identifier: %@", buf, 0x24u);
          }

          if (v24)
          {
            v26 = 0x100010001;
            v15 = v39;
            if (_wantsTargetOfKeyboardEventDeferringEnvironment && ![view isFirstResponder])
            {
              v26 = 65537;
            }

            [(_UIKeyboardArbiterClientInputDestination *)self _performRequiredSceneUpdateIfPermittedForWindow:_responderWindow withContext:v26];
            requiredScene = [(_UIKeyboardArbiterClient *)self requiredScene];
            identityToken = [requiredScene identityToken];

            v29 = [(_UIKeyboardArbiterClient *)self currentInputDestination]| _wantsTargetOfKeyboardEventDeferringEnvironment;
            v38 = v29 ^ 1;
            v30 = _UIArbiterClientLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              if (v29)
              {
                v31 = "N";
              }

              else
              {
                v31 = "Y";
              }

              v32 = [identityToken description];
              v33 = _UISceneIdentityToLogString(v32);
              *buf = 136315394;
              *v41 = v31;
              v15 = v39;
              *&v41[8] = 2114;
              *&v41[10] = v33;
              _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_DEFAULT, "TX focusApplication (peekAppEvent) stealKB:%s scene:%{public}@", buf, 0x16u);
            }

            arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
            v35 = getpid();
            v36 = +[UIKBArbiterClientFocusContext focusContextForSceneIdentity:contextID:](UIKBArbiterClientFocusContext, "focusContextForSceneIdentity:contextID:", identityToken, [_responderWindow _contextId]);
            [arbiterProxy focusApplicationWithProcessIdentifier:v35 context:v36 stealingKeyboard:v38 & 1 onCompletion:&__block_literal_global_289_3];

            if (([_responderWindow _isApplicationKeyWindow] & 1) == 0)
            {
              [(_UIKeyboardArbiterClientInputDestination *)self setUpdatingKeyWindow:1];
              [_responderWindow makeKeyWindow];
              [(_UIKeyboardArbiterClientInputDestination *)self setUpdatingKeyWindow:0];
            }
          }

          else
          {
            windowScene2 = [_responderWindow windowScene];
            identityToken = [windowScene2 keyboardSceneDelegate];

            [identityToken setKeyWindowCandidate:_responderWindow];
            v15 = v39;
          }
        }
      }
    }

    else
    {
      _responderWindow = 0;
    }
  }
}

- (void)queue_endInputSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80___UIKeyboardArbiterClientInputDestination_queue_endInputSessionWithCompletion___block_invoke;
  v6[3] = &unk_1E70F0F78;
  v7 = completionCopy;
  v5 = completionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v6];
}

- (void)queue_keyboardChanged:(id)changed onComplete:(id)complete
{
  changedCopy = changed;
  completeCopy = complete;
  objc_initWeak(&location, self);
  os_unfair_lock_lock(&self->_clientChangeResponseLock);
  v8 = os_transaction_create();
  clientChangeResponseTransaction = self->_clientChangeResponseTransaction;
  self->_clientChangeResponseTransaction = v8;

  os_unfair_lock_unlock(&self->_clientChangeResponseLock);
  v10 = dispatch_time(0, 300000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77___UIKeyboardArbiterClientInputDestination_queue_keyboardChanged_onComplete___block_invoke;
  block[3] = &unk_1E70F35B8;
  block[4] = self;
  v11 = changedCopy;
  v21 = v11;
  dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77___UIKeyboardArbiterClientInputDestination_queue_keyboardChanged_onComplete___block_invoke_291;
  v15[3] = &unk_1E712C730;
  v13 = v11;
  v16 = v13;
  selfCopy = self;
  objc_copyWeak(&v19, &location);
  v14 = completeCopy;
  v18 = v14;
  [_systemAnimationFenceExemptQueue performAsync:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)handleKeyboardUITrackingChange:(id)change
{
  changeCopy = change;
  handlingRemoteEvent = [(_UIKeyboardArbiterClient *)self handlingRemoteEvent];
  [(_UIKeyboardArbiterClient *)self setHandlingRemoteEvent:1];
  [changeCopy keyboardPosition];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75___UIKeyboardArbiterClientInputDestination_handleKeyboardUITrackingChange___block_invoke;
  v15[3] = &__block_descriptor_64_e33_v16__0__UIKeyboardSceneDelegate_8l;
  v15[4] = v7;
  v15[5] = v9;
  v15[6] = v11;
  v15[7] = v13;
  [UIKeyboardSceneDelegate performOnControllers:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75___UIKeyboardArbiterClientInputDestination_handleKeyboardUITrackingChange___block_invoke_2;
  v14[3] = &__block_descriptor_64_e22_v24__0__UIWindow_8_B16l;
  v14[4] = v7;
  v14[5] = v9;
  v14[6] = v11;
  v14[7] = v13;
  [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v14];
  [(_UIKeyboardArbiterClient *)self setHandlingRemoteEvent:handlingRemoteEvent];
}

- (void)handleKeyboardUIDidChange:(id)change
{
  changeCopy = change;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  inputWindowRootViewController = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  v6 = ([inputWindowRootViewController isRotating] & 1) != 0 || -[_UIKeyboardArbiterClient snapshotting](self, "snapshotting");

  v21 = v6;
  kbUIStateDelegate = [(_UIKeyboardArbiterClient *)self kbUIStateDelegate];
  layoutIsResizing = [kbUIStateDelegate layoutIsResizing];

  if ((layoutIsResizing & 1) != 0 || (-[_UIKeyboardArbiterClient inputWindowRootViewController](self, "inputWindowRootViewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isTransitioningBetweenFloatingStates], v9, v10))
  {
    *(v19 + 24) = 1;
  }

  handlingRemoteEvent = [(_UIKeyboardArbiterClient *)self handlingRemoteEvent];
  [(_UIKeyboardArbiterClient *)self setHandlingRemoteEvent:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70___UIKeyboardArbiterClientInputDestination_handleKeyboardUIDidChange___block_invoke;
  v14[3] = &unk_1E712C778;
  v12 = changeCopy;
  selfCopy = self;
  v17 = &v18;
  v15 = v12;
  [UIKeyboardSceneDelegate performOnControllers:v14];
  [(_UIKeyboardArbiterClient *)self setHandlingRemoteEvent:handlingRemoteEvent];
  currentUIState = [(_UIKeyboardArbiterClient *)self currentUIState];
  [currentUIState resetAnimationFencing];

  _Block_object_dispose(&v18, 8);
}

- (void)queue_keyboardUIDidChange:(id)change onComplete:(id)complete
{
  v20 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  completeCopy = complete;
  hasValidNotification = [changeCopy hasValidNotification];
  v9 = KeyboardArbiterClientLog_3();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (hasValidNotification)
  {
    if (v10)
    {
      notificationInfo = [changeCopy notificationInfo];
      *buf = 138412290;
      v19 = notificationInfo;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination queue_keyboardUIDidChange:onComplete:]  Destination posting notification: %@", buf, 0xCu);
    }
  }

  else if (v10)
  {
    *buf = 138412290;
    v19 = changeCopy;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination queue_keyboardUIDidChange:onComplete:]  Keyboard UI did change: %@", buf, 0xCu);
  }

  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81___UIKeyboardArbiterClientInputDestination_queue_keyboardUIDidChange_onComplete___block_invoke;
  v15[3] = &unk_1E70FCE28;
  v15[4] = self;
  v16 = changeCopy;
  v17 = completeCopy;
  v13 = completeCopy;
  v14 = changeCopy;
  [_systemAnimationFenceExemptQueue performAsync:v15];
}

- (void)requestEventDeferralTargetSelectionForWindow:(id)window
{
  v13 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  if (+[UIKeyboard doesKeyboardFollowEventDeferralTarget])
  {
    [(_UIKeyboardArbiterClientInputDestination *)self _performRequiredSceneUpdateIfPermittedForWindow:windowCopy withContext:0x100010001];
    requiredScene = [(_UIKeyboardArbiterClient *)self requiredScene];
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

    arbiterProxy = [(_UIKeyboardArbiterClient *)self arbiterProxy];
    [arbiterProxy focusApplicationWithProcessIdentifier:getpid() context:v7 stealingKeyboard:0 onCompletion:&__block_literal_global_340_0];
  }
}

- (void)syncKeyboardUIChangeInfo:(id)info
{
  v8 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = infoCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination syncKeyboardUIChangeInfo:]  Sync Keyboard UI Change info: %@", &v6, 0xCu);
  }

  [(_UIKeyboardArbiterClientInputDestination *)self keyboardUIDidChange:infoCopy onComplete:0];
}

- (void)keyboardUIDidChange:(id)change onComplete:(id)complete
{
  v30 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  completeCopy = complete;
  if (changeCopy)
  {
    currentInputMode = [changeCopy currentInputMode];
    if (currentInputMode)
    {
      v9 = currentInputMode;
      v10 = +[UIKeyboardInputModeController sharedInputModeController];
      currentInputMode2 = [v10 currentInputMode];
      identifier = [currentInputMode2 identifier];
      currentInputMode3 = [changeCopy currentInputMode];
      v14 = [identifier isEqualToString:currentInputMode3];

      if (([changeCopy tracking] & 1) == 0)
      {
        if ((v14 & 1) == 0)
        {
          currentInputMode4 = [changeCopy currentInputMode];
          v16 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:currentInputMode4];

          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter postNotificationName:@"UITextInputCurrentInputModeWillChangeNotification" object:0];

          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter2 postNotificationName:@"UITextInputWillPersistFindUINotification" object:0];

          v19 = +[UIKeyboardInputModeController sharedInputModeController];
          [v19 updateCurrentInputMode:v16];
        }

        goto LABEL_9;
      }
    }

    else if (![changeCopy tracking])
    {
LABEL_9:
      if (([changeCopy hasValidNotification] & 1) == 0)
      {
        [(_UIKeyboardArbiterClient *)self setCurrentUIState:changeCopy];
        v22 = KeyboardArbiterClientLog_3();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412290;
          v29 = changeCopy;
          _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination keyboardUIDidChange:onComplete:]  Setting currentUIState: %@", &v28, 0xCu);
        }
      }

      keyboardVisible = [(_UIKeyboardArbiterClient *)self keyboardVisible];
      eventObserver = [(_UIKeyboardArbiterClient *)self eventObserver];
      [eventObserver setKeyboardIsVisible:keyboardVisible];

      v25 = +[UIKeyboardImpl activeInstance];
      [v25 setSuppressUpdateInputMode:1];

      [(_UIKeyboardArbiterClientInputDestination *)self handleKeyboardUIDidChange:changeCopy];
      v26 = +[UIKeyboardImpl activeInstance];
      [v26 setSuppressUpdateInputMode:0];

      if (completeCopy)
      {
        [UIApp _performBlockAfterCATransactionCommits:completeCopy];
      }

LABEL_15:
      changeInfoDelegate = [(_UIKeyboardArbiterClient *)self changeInfoDelegate];
      [changeInfoDelegate didHandleKeyboardUIChange:self];

      goto LABEL_16;
    }

    [(_UIKeyboardArbiterClient *)self setCurrentUIState:changeCopy];
    keyboardVisible2 = [(_UIKeyboardArbiterClient *)self keyboardVisible];
    eventObserver2 = [(_UIKeyboardArbiterClient *)self eventObserver];
    [eventObserver2 setKeyboardIsVisible:keyboardVisible2];

    [(_UIKeyboardArbiterClientInputDestination *)self handleKeyboardUITrackingChange:changeCopy];
    if (completeCopy)
    {
      completeCopy[2](completeCopy);
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)queue_activeProcessResignWithCompletion:(id)completion
{
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84___UIKeyboardArbiterClientInputDestination_queue_activeProcessResignWithCompletion___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v7];
}

- (void)queue_keyboardArbiterClientHandleChanged:(BOOL)changed withCompletion:(id)completion
{
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __100___UIKeyboardArbiterClientInputDestination_queue_keyboardArbiterClientHandleChanged_withCompletion___block_invoke;
  v8[3] = &unk_1E7101B70;
  changedCopy = changed;
  v9 = completionCopy;
  v7 = completionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v8];
}

- (void)queue_setKeyboardDisabled:(BOOL)disabled withCompletion:(id)completion
{
  completionCopy = completion;
  if ([(_UIKeyboardArbiterClient *)self expectingInitialState]&& !disabled)
  {
    [(_UIKeyboardArbiterClient *)self setAvoidDisableKeyboard:1];
  }

  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85___UIKeyboardArbiterClientInputDestination_queue_setKeyboardDisabled_withCompletion___block_invoke;
  v9[3] = &unk_1E70FD0C8;
  disabledCopy = disabled;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v9];
}

- (void)queue_sceneBecameFocused:(id)focused withCompletion:(id)completion
{
  focusedCopy = focused;
  completionCopy = completion;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84___UIKeyboardArbiterClientInputDestination_queue_sceneBecameFocused_withCompletion___block_invoke;
  v11[3] = &unk_1E70FCE28;
  v12 = focusedCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = focusedCopy;
  [_systemAnimationFenceExemptQueue performAsync:v11];
}

@end