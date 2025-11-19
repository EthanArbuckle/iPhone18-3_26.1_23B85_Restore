@interface _UIKeyboardArbiterClientInputDestination
+ (id)currentBundleIdentifier;
- (BOOL)_didHandleKeyboardClientChange:(id)a3 shouldConsiderSnapshottingKeyboard:(BOOL)a4 isLocalEvent:(BOOL)a5;
- (BOOL)_sceneFocusPermittedForApplication;
- (BOOL)_sceneFocusUpdatePermittedForWindow:(id)a3;
- (BOOL)allowedToEnableKeyboardWindow;
- (BOOL)allowedToShowKeyboard;
- (BOOL)hasWindowHostingCallerID:(id)a3;
- (BOOL)hasWindowHostingPID:(int)a3;
- (BOOL)inputDestinationDidChange:(BOOL)a3 withIAVHeight:(double)a4 isIAVRelevant:(BOOL)a5 notifyRemote:(BOOL)a6 forScene:(id)a7;
- (BOOL)isHostedInAnotherProcess;
- (BOOL)isWritingToolsHostingViewService;
- (BOOL)needsToShowKeyboard;
- (BOOL)needsToShowKeyboardForViewServiceHost;
- (BOOL)shouldIgnoreInputDestinationChange:(BOOL)a3 withIAVHeight:(double)a4;
- (BOOL)shouldSnapshot;
- (BOOL)wantsToShowKeyboard;
- (BOOL)writingToolsAllowsSceneToRequestFocusOnPeekApplicationEvent;
- (CGRect)keyboardFrameIncludingRemoteIAV;
- (_UIKeyboardArbiterClientInputDestination)init;
- (id)_activeScreen;
- (id)currentHostedPIDs;
- (id)prepareForHostedWindowWithScene:(id)a3;
- (unint64_t)localSceneCount;
- (void)_layoutKeyboardViews:(id)a3;
- (void)_performRequiredSceneUpdateIfPermittedForWindow:(uint64_t)a3 withContext:;
- (void)addWindowHostingPID:(int)a3 callerID:(id)a4;
- (void)applicationKeyWindowDidChange:(id)a3;
- (void)clearKeyboardSceneIdentifierEnteringForeground:(id)a3;
- (void)completeMoveKeyboard;
- (void)configureArbiterCommunication:(id)a3;
- (void)didBecomeActive:(id)a3;
- (void)didFailArbiterConnection;
- (void)didRemoveDeactivationReason:(id)a3;
- (void)didSuspend:(id)a3;
- (void)finishWithHostedWindow;
- (void)handleKeyboardUIDidChange:(id)a3;
- (void)handleKeyboardUITrackingChange:(id)a3;
- (void)keyboardUIDidChange:(id)a3 onComplete:(id)a4;
- (void)peekApplicationEvent:(id)a3;
- (void)performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:(void *)a1;
- (void)performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:(uint64_t)a3 servicePID:;
- (void)queue_activeProcessResignWithCompletion:(id)a3;
- (void)queue_endInputSessionWithCompletion:(id)a3;
- (void)queue_keyboardArbiterClientHandleChanged:(BOOL)a3 withCompletion:(id)a4;
- (void)queue_keyboardChanged:(id)a3 onComplete:(id)a4;
- (void)queue_keyboardUIDidChange:(id)a3 onComplete:(id)a4;
- (void)queue_sceneBecameFocused:(id)a3 withCompletion:(id)a4;
- (void)queue_setKeyboardDisabled:(BOOL)a3 withCompletion:(id)a4;
- (void)removeWindowHostingPID:(int)a3 callerID:(id)a4;
- (void)requestEventDeferralTargetSelectionForWindow:(id)a3;
- (void)resignFirstResponderIfNeeded;
- (void)restorePreservedInputViewsIfNecessary;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setCurrentClientState:(id)a3;
- (void)setKeyboardSceneIdentifierEnteringForegroundForScene:(id)a3;
- (void)setSnapshotting:(BOOL)a3;
- (void)setSuppressingKeyboard:(BOOL)a3 forScene:(id)a4;
- (void)setWindowEnabled:(BOOL)a3 force:(BOOL)a4;
- (void)setWindowHostingPID:(int)a3 active:(BOOL)a4;
- (void)signalToProxyKeyboardChanged:(id)a3 reason:(id)a4 onCompletion:(id)a5;
- (void)startConnectionWithCompletion:(id)a3;
- (void)stopConnection;
- (void)syncKeyboardUIChangeInfo:(id)a3;
- (void)updateWindowState;
- (void)userSelectedApp:(id)a3 onCompletion:(id)a4;
- (void)willAddDeactivationReason:(id)a3;
- (void)willResignActive:(id)a3;
- (void)willResume:(id)a3;
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

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v3 selector:sel_sceneDidDisconnect_ name:@"UISceneDidDisconnectNotification" object:0];
    [v10 addObserver:v3 selector:sel_willResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [v10 addObserver:v3 selector:sel_didSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [v10 addObserver:v3 selector:sel_applicationKeyWindowDidChange_ name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
    [v10 addObserver:v3 selector:sel_willResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];
    [v10 addObserver:v3 selector:sel_didBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
    [v10 addObserver:v3 selector:sel_willAddDeactivationReason_ name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
    [v10 addObserver:v3 selector:sel_didRemoveDeactivationReason_ name:@"_UIApplicationDidRemoveDeactivationReasonNotification" object:0];
    [v10 addObserver:v3 selector:sel_applicationResume_ name:@"UIApplicationResumedEventsOnlyNotification" object:UIApp];
    [v10 addObserver:v3 selector:sel_sceneWillEnterForeground_ name:@"UISceneWillEnterForegroundNotification" object:0];
    [v10 addObserver:v3 selector:sel_sceneDidEnterBackground_ name:@"UISceneDidEnterBackgroundNotification" object:0];
    [v10 addObserver:v3 selector:sel_sceneDidActivate_ name:@"UISceneDidActivateNotification" object:0];
  }

  return v3;
}

- (id)currentHostedPIDs
{
  v2 = [(_UIKeyboardArbiterClientInputDestination *)self activePIDs];
  v3 = [v2 allObjects];

  return v3;
}

- (void)startConnectionWithCompletion:(id)a3
{
  v4 = a3;
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

- (void)configureArbiterCommunication:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696B0D0];
  v4 = a3;
  v5 = [v3 interfaceWithProtocol:&unk_1F013B608];
  [v4 setRemoteObjectInterface:v5];

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016D5F0];
  [v4 setExportedInterface:v6];

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

- (void)setCurrentClientState:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardArbiterClient *)self currentClientState];
  [v5 keyboardIAVHeight];
  v7 = v6;
  [v4 keyboardIAVHeight];
  v9 = vabdd_f64(v7, v8);

  if (v9 > 0.00000011920929)
  {
    [(_UIKeyboardArbiterClient *)self setDidSignalKeyboardChangedForCurrentKeyboard:0];
  }

  v10.receiver = self;
  v10.super_class = _UIKeyboardArbiterClientInputDestination;
  [(_UIKeyboardArbiterClient *)&v10 setCurrentClientState:v4];
}

- (void)setSnapshotting:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(_UIKeyboardArbiterClient *)self snapshotting];
  v16.receiver = self;
  v16.super_class = _UIKeyboardArbiterClientInputDestination;
  [(_UIKeyboardArbiterClient *)&v16 setSnapshotting:v3];
  if (v5 != v3)
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
  v2 = [(_UIKeyboardArbiterClient *)self currentClientState];
  v3 = [v2 sourceBundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.WritingToolsUIService"];

  return v4;
}

- (BOOL)writingToolsAllowsSceneToRequestFocusOnPeekApplicationEvent
{
  v2 = [objc_opt_class() currentBundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.WritingToolsUIService"];

  return v3 ^ 1;
}

- (void)willResume:(id)a3
{
  v4 = a3;
  if (![(_UIKeyboardArbiterClient *)self enqueuedWillEnterForegroundActions])
  {
    [(_UIKeyboardArbiterClient *)self setEnqueuedWillEnterForegroundActions:1];
    v5 = [UIApp _systemAnimationFenceExemptQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55___UIKeyboardArbiterClientInputDestination_willResume___block_invoke;
    v6[3] = &unk_1E70F35B8;
    v6[4] = self;
    v7 = v4;
    [v5 performAsync:v6];
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
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

      v8 = [(_UIKeyboardArbiterClient *)self requiredScene];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 identityToken];
        v11 = [v10 stringRepresentation];
      }

      else
      {
        v11 = [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];
      }

      v12 = [objc_opt_class() keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:v6];
      v13 = BSEqualStrings();
      v14 = +[UIWindowScene _keyWindowScene];
      v15 = [v14 _isTargetOfKeyboardEventDeferringEnvironment];

      if ((v13 & 1) != 0 || v15)
      {
        v16 = [(_UIKeyboardArbiterClientInputDestination *)self wantsToShowKeyboard];
        v17 = KeyboardArbiterClientLog_3();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v20 = 138413314;
          v21 = v12;
          v22 = 1024;
          v23 = v13;
          v24 = 1024;
          v25 = v16;
          v26 = 1024;
          v27 = [(_UIKeyboardArbiterClient *)self currentInputDestination];
          v28 = 1024;
          v29 = [(_UIKeyboardArbiterClient *)self keyboardVisible];
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

    v6 = 0;
  }
}

- (void)_performRequiredSceneUpdateIfPermittedForWindow:(uint64_t)a3 withContext:
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    if ((a3 & 0x100) != 0)
    {
      v6 = [a1 currentInputDestination] ^ 1;
    }

    else
    {
      v6 = 1;
    }

    v7 = [a1 updatingKeyWindow];
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
    v12 = KeyboardArbiterClientLog_3();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67110656;
      *v34 = v8;
      *&v34[4] = 2048;
      *&v34[6] = v5;
      v35 = 1024;
      v36 = a3 & 1;
      v37 = 1024;
      v38 = (a3 & 0x100) >> 8;
      v39 = 1024;
      v40 = v9 >> 16;
      v41 = 1024;
      v42 = (a3 & 0x1000000) >> 24;
      v43 = 1024;
      v44 = (a3 & 0x100000000uLL) >> 32;
      _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination _performRequiredSceneUpdateIfPermittedForWindow:withContext:]  Update is permitted: %d; for window: %p; forcingUpdate: %d; consideringCurrentKeyboard: %d; updateFocusedSceneIdentityStringOrIdentifierIfNil: %d; updateProxyFocusContext: %d; notifyViewServiceHostIfNeeded: %d", buf, 0x30u);
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
        v30 = v14;
        v21 = [v18 stringRepresentation];
        v23 = KeyboardArbiterClientLog_3();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v34 = v21;
          _os_log_debug_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination _performRequiredSceneUpdateIfPermittedForWindow:withContext:]  Setting required scene: %@", buf, 0xCu);
        }

        [a1 setRequiredScene:v17];
        if (v20)
        {
          v24 = KeyboardArbiterClientLog_3();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v34 = v21;
            _os_log_debug_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination _performRequiredSceneUpdateIfPermittedForWindow:withContext:]  Focusing scene identity: %@", buf, 0xCu);
          }

          [a1 setFocusedSceneIdentityStringOrIdentifier:v21];
        }

        if (v10)
        {
          v25 = +[UIKBArbiterClientFocusContext focusContextForSceneIdentity:contextID:](UIKBArbiterClientFocusContext, "focusContextForSceneIdentity:contextID:", v18, [v5 _contextId]);
          v26 = KeyboardArbiterClientLog_3();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v34 = v25;
            _os_log_debug_impl(&dword_188A29000, v26, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination _performRequiredSceneUpdateIfPermittedForWindow:withContext:]  Updating proxy context: %@", buf, 0xCu);
          }

          v27 = [a1 arbiterProxy];
          [v27 setClientFocusContext:v25];
        }
      }

      else
      {
        if (v14 == 0 || !v20)
        {
          goto LABEL_28;
        }

        v30 = v14;
        v21 = [objc_opt_class() keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:v14];
        v22 = KeyboardArbiterClientLog_3();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v34 = v21;
          _os_log_debug_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination _performRequiredSceneUpdateIfPermittedForWindow:withContext:]  Focusing scene identifier: %@", buf, 0xCu);
        }

        [a1 setFocusedSceneIdentityStringOrIdentifier:v21];
      }

      v14 = v30;
LABEL_28:
      if (v11 && ([v5 _isTextEffectsWindow] & 1) == 0 && (objc_msgSend(v5, "_isRemoteKeyboardWindow") & 1) == 0)
      {
        v31 = @"_UIRemoteKeyboardsHostedWindowUserInfoKey";
        v32 = v5;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v29 = [MEMORY[0x1E696AD88] defaultCenter];
        [v29 postNotificationName:@"_UIRemoteKeyboardsServiceWantsKeyboardFocusWithoutFirstResponderNotification" object:0 userInfo:v28];
      }
    }
  }
}

- (void)didSuspend:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIKeyboardArbiterClientInputDestination *)self wantsToShowKeyboard];
  v6 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v9 = v5;
    v10 = 1024;
    v11 = [(_UIKeyboardArbiterClient *)self currentInputDestination];
    v12 = 1024;
    v13 = [(_UIKeyboardArbiterClient *)self keyboardVisible];
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination didSuspend:]  wantsToShowKeyboardForWindow: %d; currentInputDestination: %d; keyboardVisible: %d", buf, 0x14u);
  }

  if (v5 && ![(_UIKeyboardArbiterClientInputDestination *)self isHostedInAnotherProcess])
  {
    [(_UIKeyboardArbiterClientInputDestination *)self setWindowEnabled:0];
  }

  v7.receiver = self;
  v7.super_class = _UIKeyboardArbiterClientInputDestination;
  [(_UIKeyboardArbiterClient *)&v7 didSuspend:v4];
  [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_224_0];
}

- (void)willAddDeactivationReason:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  v6 = [v5 integerValue];

  if (v6 > 6)
  {
    if ((v6 - 14) < 3 || v6 == 7)
    {
      v8 = [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];
      self->_hadFocusBeforeOverlay = v8 != 0;
    }

    if (v6 == 12)
    {
      v9 = _UIArbiterClientLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "TX setDeactivating: Y (+DeactivationReason:SuspendedEventsOnly)", v11, 2u);
      }

      v10 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
      [v10 setDeactivating:1];
    }
  }

  else if (v6)
  {
    if (v6 == 2)
    {

      [(_UIKeyboardArbiterClient *)self setDeactivatedByControlCenter:1];
    }

    else if (v6 == 5)
    {
      self->_deactivatedBySystemAnimation = 1;
    }
  }

  else
  {

    [(_UIKeyboardArbiterClient *)self setDeactivatedBySystemGesture:1];
  }
}

- (void)didRemoveDeactivationReason:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  v6 = [v5 integerValue];

  if (v6 > 6)
  {
    if ((v6 - 14) < 3 || v6 == 7)
    {
      if (self->_hadFocusBeforeOverlay)
      {
        v8 = [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];

        if (v8)
        {
          v9 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
          [v9 applicationShouldFocusWithBundle:0 onCompletion:&__block_literal_global_227_2];
        }
      }

      self->_hadFocusBeforeOverlay = 0;
    }

    if (v6 == 12)
    {
      v10 = _UIArbiterClientLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "TX setDeactivating: N (-DeactivationReason:SuspendedEventsOnly)", v12, 2u);
      }

      v11 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
      [v11 setDeactivating:0];
    }
  }

  else if (v6)
  {
    if (v6 == 2)
    {

      [(_UIKeyboardArbiterClient *)self setDeactivatedByControlCenter:0];
    }

    else if (v6 == 5)
    {
      self->_deactivatedBySystemAnimation = 0;
    }
  }

  else
  {

    [(_UIKeyboardArbiterClient *)self setDeactivatedBySystemGesture:0];
  }
}

- (void)willResignActive:(id)a3
{
  v4 = [(_UIKeyboardArbiterClient *)self deactivatedByControlCenter]|| self->_deactivatedBySystemAnimation;
  self->_resignActiveByControlCenter = v4;
  if ([(_UIKeyboardArbiterClient *)self currentInputDestination]&& !self->_resignActiveByControlCenter && !+[UIKeyboard isSpotlight])
  {
    v5 = [(_UIKeyboardArbiterClient *)self currentClientState];
    v6 = [v5 copyWithIntersectability:0];

    [v6 setShouldTakeSnapshot:0];
    [(_UIKeyboardArbiterClientInputDestination *)self signalToProxyKeyboardChanged:v6 reason:@"willResignActive" onCompletion:&__block_literal_global_233_2];
  }
}

- (void)didBecomeActive:(id)a3
{
  [(_UIKeyboardArbiterClient *)self checkConnection];
  if ([(_UIKeyboardArbiterClient *)self currentInputDestination]&& !self->_resignActiveByControlCenter)
  {
    v4 = [(_UIKeyboardArbiterClient *)self backupState];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 copyWithIntersectability:1];
    }

    else
    {
      v7 = [(_UIKeyboardArbiterClient *)self currentClientState];
      v6 = [v7 copyWithIntersectability:1];
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

- (void)setSuppressingKeyboard:(BOOL)a3 forScene:(id)a4
{
  v4 = a3;
  v44 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v39 = v4;
    v40 = 2112;
    v41 = v6;
    v42 = 1024;
    v43 = [(_UIKeyboardArbiterClient *)self expectedSuppression];
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination setSuppressingKeyboard:forScene:]  setSuppressingKeyboard: %d forScene: %@ (expectedSuppression: %d)", buf, 0x18u);
  }

  if ([(_UIKeyboardArbiterClient *)self expectedSuppression]!= v4)
  {
    [(_UIKeyboardArbiterClient *)self setExpectedSuppression:v4];
    if ([(_UIKeyboardArbiterClient *)self expectedSuppression])
    {
      v8 = +[UIDevice currentDevice];
      v9 = [v8 userInterfaceIdiom];

      if ((v9 & 0xFFFFFFFFFFFFFFFBLL) != 1)
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
    v12 = [v11 containerWindow];

    v13 = [(_UIKeyboardArbiterClient *)self kbUIStateDelegate];
    v14 = [v12 screen];
    v15 = [v13 mostActiveWindowSceneOnScreen:v14];

    if (v4)
    {
      if (!v6)
      {
        v6 = v15;
      }

      objc_storeStrong(&self->_suppressedScene, v6);
    }

    else if (!v6)
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

        v6 = suppressedScene;

        if (v21)
        {
          goto LABEL_23;
        }
      }

      else
      {
LABEL_20:
      }

      v6 = v15;
    }

LABEL_23:
    v23 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
    [v23 notifyHostedPIDsOfSuppression:v4];

    v24 = +[UIPeripheralHost sharedInstance];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76___UIKeyboardArbiterClientInputDestination_setSuppressingKeyboard_forScene___block_invoke_2;
    aBlock[3] = &unk_1E70F5AF0;
    v25 = v24;
    v29 = v25;
    v31 = v4;
    v6 = v6;
    v30 = v6;
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

- (BOOL)shouldIgnoreInputDestinationChange:(BOOL)a3 withIAVHeight:(double)a4
{
  if ([(_UIKeyboardArbiterClient *)self currentInputDestination]!= a3)
  {
    return 0;
  }

  v7 = [(_UIKeyboardArbiterClient *)self currentClientState];
  [v7 keyboardIAVHeight];
  v6 = vabdd_f64(v8, a4) < 0.00000011920929;

  return v6;
}

- (BOOL)inputDestinationDidChange:(BOOL)a3 withIAVHeight:(double)a4 isIAVRelevant:(BOOL)a5 notifyRemote:(BOOL)a6 forScene:(id)a7
{
  v7 = a6;
  v8 = a5;
  v10 = a3;
  v71 = *MEMORY[0x1E69E9840];
  v12 = a7;
  v13 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = v10;
    v69 = 1024;
    v70 = v7;
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination inputDestinationDidChange:withIAVHeight:isIAVRelevant:notifyRemote:forScene:]  inputDestDidChange: %{BOOL}d; shouldNotify: %{BOOL}d", &buf, 0xEu);
  }

  if (![(_UIKeyboardArbiterClientInputDestination *)self shouldIgnoreInputDestinationChange:v10 withIAVHeight:a4])
  {
    [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];

    [(_UIKeyboardArbiterClient *)self checkConnection];
    context = objc_autoreleasePoolPush();
    [(_UIKeyboardArbiterClient *)self setBackupState:0];
    v16 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
    v17 = v16;
    v18 = 0.0;
    if (v8)
    {
      v18 = a4;
    }

    [v16 notifyIAVHeight:v18];

    v19 = [(_UIKeyboardArbiterClient *)self currentInputDestination];
    if (v10)
    {
      if (v19)
      {
        v20 = [(_UIKeyboardArbiterClient *)self currentClientState];
        [v20 keyboardIAVHeight];
        if (v21 == a4)
        {
          v22 = [(_UIKeyboardArbiterClient *)self didSignalKeyboardChangedForCurrentKeyboard];

          if (v22)
          {
            v23 = KeyboardArbiterClientLog_3();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              v24 = "[_UIKeyboardArbiterClientInputDestination inputDestinationDidChange:withIAVHeight:isIAVRelevant:notifyRemote:forScene:]  nothing changed, returning";
LABEL_20:
              _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, v24, &buf, 2u);
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
        v29 = [(_UIKeyboardArbiterClient *)self currentClientState];
        [v29 keyboardIAVHeight];
        if (v30 != a4)
        {
          v31 = [(_UIKeyboardArbiterClient *)self kbUIStateDelegate];
          v32 = [v31 updatingPreferences];

          LOBYTE(v7) = v32 ^ 1 | v7;
        }
      }

      v33 = [_UIKeyboardChangedInformation informationForKeyboardUpWithIAVHeight:a4];
      [(_UIKeyboardArbiterClientInputDestination *)self setCurrentClientState:v33];

      [(_UIKeyboardArbiterClient *)self resetSnapshotWithWindowCheck:0];
    }

    else
    {
      if (!v19)
      {
        v26 = [(_UIKeyboardArbiterClient *)self currentUIState];
        [v26 resetAnimationFencing];

        [(_UIKeyboardArbiterClient *)self setCurrentInputDestination:0];
        v27 = [(_UIKeyboardArbiterClient *)self keyboardVisible];
        v28 = [(_UIKeyboardArbiterClient *)self eventObserver];
        [v28 setKeyboardIsVisible:v27];

        v23 = KeyboardArbiterClientLog_3();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
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
      v34 = [v12 keyboardSceneDelegate];
      v23 = [v34 scene];
    }

    else
    {
      v23 = v12;
    }

    v35 = [objc_opt_class() keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:v23];
    v36 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [v36 setSourceSceneIdentityString:v35];

    v37 = _UIMainBundleIdentifier();
    v38 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [v38 setSourceBundleIdentifier:v37];

    v39 = [v23 screen];
    v40 = [v39 displayConfiguration];
    v41 = [v40 _nameForDisplayType];
    v42 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [v42 setSourceDisplayIdentifier:v41];

    v43 = [(_UIKeyboardArbiterClientInputDestination *)self shouldSnapshot];
    v44 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [v44 setShouldTakeSnapshot:v43];

    v45 = [(_UIKeyboardArbiterClientInputDestination *)self localSceneCount]> 1;
    v46 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [v46 setMultipleScenes:v45];

    v47 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v48 = [v47 hardwareKeyboardExclusivityIdentifier];
    v49 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [v49 setIsOneness:v48 != 0];

    v50 = [(_UIKeyboardArbiterClient *)self currentUIState];
    v51 = [v50 resizing];
    v52 = [(_UIKeyboardArbiterClient *)self currentClientState];
    [v52 setResizing:v51];

    v53 = [(_UIKeyboardArbiterClient *)self keyboardVisible];
    v54 = [(_UIKeyboardArbiterClient *)self eventObserver];
    [v54 setKeyboardIsVisible:v53];

    [(_UIKeyboardArbiterClient *)self setCurrentInputDestination:v10];
    v55 = [(_UIKeyboardArbiterClient *)self currentClientState];
    if (((v55 != 0) & v7) == 1 && ([(_UIKeyboardArbiterClientInputDestination *)self allowedToShowKeyboard]|| [(_UIKeyboardArbiterClient *)self hostedCount]))
    {
      v56 = [(_UIKeyboardArbiterClient *)self kbUIStateDelegate];
      v57 = [v56 layoutIsResizing];

      if (v57)
      {
        v15 = 0;
LABEL_39:
        [(_UIKeyboardArbiterClient *)self setExpectingInitialState:0];
        [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_248_3];
        goto LABEL_40;
      }

      v58 = +[_UIKBArbiterClientToken uniqueToken];
      v59 = [objc_opt_class() keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:v12];
      [v58 setSceneIdentityString:v59];

      v60 = [(_UIKeyboardArbiterClientInputDestination *)self pendingKeyboardGrabs];
      [v60 addObject:v58];

      objc_initWeak(&buf, self);
      v61 = [(_UIKeyboardArbiterClient *)self currentClientState];
      v62 = [v61 copy];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __120___UIKeyboardArbiterClientInputDestination_inputDestinationDidChange_withIAVHeight_isIAVRelevant_notifyRemote_forScene___block_invoke;
      v65[3] = &unk_1E70F2F80;
      objc_copyWeak(&v67, &buf);
      v55 = v58;
      v66 = v55;
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

- (void)_layoutKeyboardViews:(id)a3
{
  v4 = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  v5 = [v4 inputViewSet];
  v24 = [v5 normalizePlaceholders];

  v6 = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  v7 = [v6 placementIgnoringRotation];
  [v7 remoteIntrinsicContentSizeForInputViewInSet:v24 includingIAV:0];
  v9 = v8;

  v10 = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  v11 = [v10 placementIgnoringRotation];
  [v11 remoteIntrinsicContentSizeForInputViewInSet:v24 includingIAV:1];
  v13 = v12;

  v14 = v13 - v9;
  v15 = [(_UIKeyboardArbiterClient *)self currentClientState];
  [v15 keyboardIAVHeight];
  if (vabdd_f64(v16, v14) > 0.00000011920929)
  {
    v17 = +[UIKeyboardImpl isFloating];

    if (v17)
    {
      goto LABEL_5;
    }

    v18 = [(_UIKeyboardArbiterClient *)self currentInputDestination];
    v15 = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
    v19 = [v15 inputViewSet];
    v20 = [v19 isInputAccessoryViewPlaceholder];
    v21 = [(_UIKeyboardArbiterClient *)self handlingRemoteEvent];
    v22 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v23 = [v22 scene];
    [(_UIKeyboardArbiterClientInputDestination *)self inputDestinationDidChange:v18 withIAVHeight:v20 ^ 1u isIAVRelevant:!v21 notifyRemote:v23 forScene:v14];
  }

LABEL_5:
}

- (BOOL)_didHandleKeyboardClientChange:(id)a3 shouldConsiderSnapshottingKeyboard:(BOOL)a4 isLocalEvent:(BOOL)a5
{
  v5 = a5;
  v54 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = v5;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination _didHandleKeyboardClientChange:shouldConsiderSnapshottingKeyboard:isLocalEvent:]  Keyboard client did change: %@ is local: %d", buf, 0x12u);
  }

  v37 = [(_UIKeyboardArbiterClient *)self handlingRemoteEvent];
  [(_UIKeyboardArbiterClient *)self setHandlingRemoteEvent:!v5];
  v9 = [(_UIKeyboardArbiterClient *)self currentInputDestination];
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
  v12 = v7;
  v50 = v12;
  v51 = buf;
  [UIKeyboardSceneDelegate performOnControllers:v48];
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v13 = [(_UIKeyboardArbiterClient *)self currentClientState];
    v14 = [v13 sourceBundleIdentifier];
    v15 = +[_UIKeyboardArbiterClient mainBundleIdentifier];
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      v17 = [(_UIKeyboardArbiterClient *)self currentClientState];
      [(_UIKeyboardArbiterClient *)self setBackupState:v17];
    }

    [(_UIKeyboardArbiterClientInputDestination *)self setCurrentClientState:v12];
  }

  v18 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v19 = [v18 hardwareKeyboardExclusivityIdentifier];

  v20 = [v12 sourceBundleIdentifier];
  if ([(_UIKeyboardArbiterClient *)self isSpotlight:v20])
  {
    v21 = (v19 == 0) ^ [v12 isOneness];
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
  if (v5)
  {
    if ([(_UIKeyboardArbiterClientInputDestination *)self localSceneCount]>= 2)
    {
      v23 = [v12 sourceSceneIdentityString];
      v5 = v23 == 0;
    }

    else
    {
      v5 = 1;
    }
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  if (v9 && ((*(*&buf[8] + 24) | v21) & 1) == 0)
  {
    v25 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v26 = [v25 responder];

    if (([v26 _isHostingRemoteContent] & 1) == 0)
    {
      v27 = [v26 _responderWindow];
      [v27 _setLastFirstResponder:v26];
      if (objc_opt_respondsToSelector())
      {
        v28 = [v26 interactionState];
        [v27 _setLastFirstResponderInteractionState:v28];
      }

      v29 = _UIArbiterClientLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 0;
        _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_DEFAULT, "handleKeyboardClientChange: resignFirstResponder", v43, 2u);
      }

      [v27 _setWantsResponderWithoutKeyboard:1];
      [v26 resignFirstResponder];
      [v27 _setWantsResponderWithoutKeyboard:0];
      v30 = [v27 _firstResponder];
      [v27 _setLastNextResponder:v30];
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

    if (((v5 | v24) & 1) == 0)
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
    v32 = [(_UIKeyboardArbiterClient *)self currentUIState];
    [v32 resetAnimationFencing];
  }

  [(_UIKeyboardArbiterClient *)self setHandlingRemoteEvent:v37];
  v33 = [(_UIKeyboardArbiterClient *)self changeInfoDelegate];
  [v33 didHandleKeyboardClientChange:self];

  os_unfair_lock_lock(&self->_clientChangeResponseLock);
  clientChangeResponseTransaction = self->_clientChangeResponseTransaction;
  self->_clientChangeResponseTransaction = 0;

  os_unfair_lock_unlock(&self->_clientChangeResponseLock);
  v35 = *(v45 + 24);

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(buf, 8);

  return v35 & 1;
}

- (void)signalToProxyKeyboardChanged:(id)a3 reason:(id)a4 onCompletion:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _UIArbiterClientLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v9;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "RX signalKeyboardClientChanged (reason:%{public}@)", &v14, 0xCu);
  }

  v12 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination signalToProxyKeyboardChanged:onCompletion:]  Signaling keyboard changed %@", &v14, 0xCu);
  }

  [(_UIKeyboardArbiterClient *)self setDidSignalKeyboardChangedForCurrentKeyboard:1];
  v13 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  [v13 signalKeyboardClientChanged:v8 onCompletion:v10];
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

- (void)applicationKeyWindowDidChange:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:@"Reason"];

  if (v7)
  {
    v8 = [v7 unsignedIntegerValue] == 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = 16777472;
  v10 = [v5 windowScene];
  if (_UISceneSystemShellManagesKeyboardFocusIsPossibleForScene(v10) && (_UISceneSystemShellManagesKeyboardFocusForScene(v10) & 1) == 0)
  {
    v11 = [v10 _isConnecting] & 1;
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
    v14 = [v5 windowScene];
    v15 = [v14 _settingsScene];

    v16 = [v15 _FBSScene];

    v17 = [v16 identityToken];
    v18 = [v17 stringRepresentation];

    *buf = 134218754;
    v20 = v5;
    v21 = 2112;
    v22 = v18;
    v23 = 2048;
    v24 = [v7 unsignedIntegerValue];
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

  [(_UIKeyboardArbiterClientInputDestination *)self _performRequiredSceneUpdateIfPermittedForWindow:v5 withContext:v13];
  [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_264_0];
}

- (BOOL)isHostedInAnotherProcess
{
  v2 = [(_UIKeyboardArbiterClient *)self existingInputWindowRootViewController];
  v3 = [v2 view];
  v4 = [v3 window];
  if ([v4 _isHostedInAnotherProcess])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[UIWindow _applicationKeyWindow];
    v5 = [v6 _isHostedInAnotherProcess];
  }

  return v5;
}

- (BOOL)hasWindowHostingPID:(int)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&a3];
  v5 = [(_UIKeyboardArbiterClientInputDestination *)self activePIDs];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)hasWindowHostingCallerID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_UIKeyboardArbiterClientInputDestination *)self callerIDs];
    v6 = [v5 allKeys];
    v7 = [v6 containsObject:v4];
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

- (void)addWindowHostingPID:(int)a3 callerID:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  [(_UIKeyboardArbiterClientInputDestination *)self setWindowHostingPID:v4 active:1];
  if (v6)
  {
    v8 = [(_UIKeyboardArbiterClientInputDestination *)self callerIDs];
    [v8 setObject:v7 forKey:v6];
  }

  else
  {
    v8 = KeyboardArbiterClientLog_3();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination addWindowHostingPID:callerID:]  nil callerID", v9, 2u);
    }
  }
}

- (void)removeWindowHostingPID:(int)a3 callerID:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  if (v6)
  {
    v8 = [(_UIKeyboardArbiterClientInputDestination *)self callerIDs];
    [v8 removeObjectForKey:v6];
  }

  else
  {
    v8 = KeyboardArbiterClientLog_3();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination removeWindowHostingPID:callerID:]  nil callerID", v12, 2u);
    }
  }

  v9 = [(_UIKeyboardArbiterClientInputDestination *)self callerIDs];
  v10 = [v9 allValues];
  v11 = [v10 containsObject:v7];

  if ((v11 & 1) == 0)
  {
    [(_UIKeyboardArbiterClientInputDestination *)self setWindowHostingPID:v4 active:0];
  }
}

- (void)setWindowHostingPID:(int)a3 active:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v5 = *&a3;
    v10 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v7 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
    [v7 setWindowHostingPID:v5 active:v4];

    v8 = [(_UIKeyboardArbiterClientInputDestination *)self activePIDs];
    v9 = v8;
    if (v4)
    {
      [v8 addObject:v10];

      if (![(_UIKeyboardArbiterClientInputDestination *)self isHostedInAnotherProcess])
      {
        [(_UIKeyboardArbiterClientInputDestination *)self setWindowEnabled:[(_UIKeyboardArbiterClientInputDestination *)self allowedToShowKeyboard]];
      }
    }

    else
    {
      [v8 removeObject:v10];

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

  v4 = [(_UIKeyboardArbiterClient *)self keyboardSnapshot];
  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(_UIKeyboardArbiterClient *)self isOnScreenRotating];
  }

  return v3;
}

- (id)prepareForHostedWindowWithScene:(id)a3
{
  ++self->_hostedCount;
  v4 = [a3 screen];
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
  v2 = [(_UIKeyboardArbiterClient *)self currentClientState];
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

- (BOOL)needsToShowKeyboard
{
  v3 = [(_UIKeyboardArbiterClientInputDestination *)self allowedToShowKeyboard];
  if (v3)
  {

    LOBYTE(v3) = [(_UIKeyboardArbiterClientInputDestination *)self wantsToShowKeyboard];
  }

  return v3;
}

- (BOOL)needsToShowKeyboardForViewServiceHost
{
  v3 = [(_UIKeyboardArbiterClientInputDestination *)self allowedToShowKeyboard];
  if (v3)
  {

    LOBYTE(v3) = [(_UIKeyboardArbiterClientInputDestination *)self wantsToShowKeyboardForViewServiceHost];
  }

  return v3;
}

- (BOOL)allowedToShowKeyboard
{
  v4.receiver = self;
  v4.super_class = _UIKeyboardArbiterClientInputDestination;
  return [(_UIKeyboardArbiterClient *)&v4 allowedToShowKeyboard]|| [(_UIKeyboardArbiterClientInputDestination *)self isHostedInAnotherProcess];
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

- (BOOL)allowedToEnableKeyboardWindow
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 scene];

  v9 = 0;
  if (v4)
  {
    keyboardSceneIdentifierEnteringForeground = self->_keyboardSceneIdentifierEnteringForeground;
    v6 = [v4 _sceneIdentifier];
    LOBYTE(keyboardSceneIdentifierEnteringForeground) = [(NSString *)keyboardSceneIdentifierEnteringForeground isEqualToString:v6];

    if ((keyboardSceneIdentifierEnteringForeground & 1) != 0 || ![v4 activationState] || objc_msgSend(v4, "activationState") == 1 && (-[_UIKeyboardArbiterClient currentUIState](self, "currentUIState"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "keyboardOnScreen"), v7, v8) && ((objc_msgSend(v4, "_canDynamicallySpecifySupportedInterfaceOrientations") & 1) != 0 || (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "visualModeManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "windowingModeEnabled"), v11, v10, objc_msgSend(v4, "_coordinateSpace"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "bounds"), v15 = v14, v17 = v16, v13, objc_msgSend(v4, "screen"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "bounds"), v20 = v19, v22 = v21, v18, (v12 & 1) == 0) && v15 == v20 && v17 == v22))
    {
      v9 = 1;
    }
  }

  return v9;
}

- (void)resignFirstResponderIfNeeded
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 responder];

  if (([v3 _isHostingRemoteContent] & 1) == 0)
  {
    v4 = _UIArbiterClientLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "resignFirstResponderIfNeeded: resignFirstResponder", v8, 2u);
    }

    v5 = [v3 _responderWindow];
    [v5 _setLastFirstResponder:v3];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v3 interactionState];
      [v5 _setLastFirstResponderInteractionState:v6];
    }

    [v3 resignFirstResponder];
    v7 = [v5 _firstResponder];
    [v5 _setLastNextResponder:v7];
  }
}

- (void)setWindowEnabled:(BOOL)a3 force:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3 && [(_UIKeyboardArbiterClientInputDestination *)self allowedToEnableKeyboardWindow];
  if (v6 && v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [(_UIKeyboardArbiterClient *)self requiredScene];
  v9 = [v8 identityToken];

  v10 = off_1E712C798[v7];
  v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v12 = [v11 responder];
  v13 = [v12 _responderWindow];
  v14 = [v13 _contextId];

  if (!v14)
  {
    v15 = +[UIWindow _applicationKeyWindow];
    v14 = [v15 _contextId];
  }

  v16 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v19 = [v9 stringRepresentation];
    v20 = 136315394;
    v21 = v10;
    v22 = 2112;
    v23 = v19;
    _os_log_debug_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination setWindowEnabled:force:]  Setting window state: %s for scene identity: %@", &v20, 0x16u);
  }

  v17 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  v18 = [UIKBArbiterClientFocusContext focusContextForSceneIdentity:v9 contextID:v14];
  [v17 setWindowContextID:0 focusContext:v18 windowState:v7 withLevel:10000001.0];
}

- (void)updateWindowState
{
  v3 = [(_UIKeyboardArbiterClientInputDestination *)self needsToShowKeyboard];
  v4 = v3 && [(_UIKeyboardArbiterClientInputDestination *)self needsToShowKeyboardForViewServiceHost];

  [(_UIKeyboardArbiterClientInputDestination *)self setWindowEnabled:v3 force:v4];
}

- (void)completeMoveKeyboard
{
  if (![(_UIKeyboardArbiterClientInputDestination *)self isHostedInAnotherProcess])
  {
    [(_UIKeyboardArbiterClientInputDestination *)self setWindowEnabled:[(_UIKeyboardArbiterClientInputDestination *)self needsToShowKeyboard] force:0];
  }

  v3 = [(_UIKeyboardArbiterClient *)self currentUIState];
  [v3 resetAnimationFencing];
}

- (void)userSelectedApp:(id)a3 onCompletion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && ![(__CFString *)v6 isEqualToString:&stru_1EFB14550])
  {
    v11 = 0;
  }

  else
  {
    v8 = [(_UIKeyboardArbiterClient *)self requiredScene];
    v9 = [v8 identityToken];
    v10 = [v9 stringRepresentation];
    [(_UIKeyboardArbiterClientInputDestination *)self setFocusedSceneIdentityStringOrIdentifier:v10];

    v11 = [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];
  }

  v12 = _UIArbiterClientLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"(self)";
    if (v6)
    {
      v13 = v6;
    }

    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "TX applicationShouldFocusWithBundle:%{public}@ (userSelectedApp)", &v16, 0xCu);
  }

  v14 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v11;
    _os_log_debug_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination userSelectedApp:onCompletion:]  Focus bundle: %@, focusedSceneIdentity: %@", &v16, 0x16u);
  }

  if (!v7)
  {
    v7 = &__block_literal_global_273_0;
  }

  v15 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
  [v15 applicationShouldFocusWithBundle:v6 onCompletion:v7];
}

- (void)performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:(void *)a1
{
  v15 = *MEMORY[0x1E69E9840];
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

      v10 = KeyboardArbiterClientLog_3();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = 134218242;
        v12 = v4;
        v13 = 2112;
        v14 = v9;
        _os_log_debug_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination performRequiredSceneUpdateForKeyWindowCandidateOfSceneDelegate:]  Performing required scene update for candidate window: %p; scene: %@", &v11, 0x16u);
      }

      [(_UIKeyboardArbiterClientInputDestination *)a1 _performRequiredSceneUpdateIfPermittedForWindow:v4 withContext:16777217];
    }
  }
}

- (void)performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:(uint64_t)a3 servicePID:
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    if ([a1 expectedSuppression])
    {
      v6 = [v5 windowScene];
      v7 = v6 == a1[22];
    }

    else
    {
      v7 = 0;
    }

    v8 = a1[31];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:a3];
    v10 = [v8 containsObject:v9];

    v11 = a3 ? v10 : 1;
    if (v5 && !v7 && v11)
    {
      v12 = KeyboardArbiterClientLog_3();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = 134217984;
        v14 = v5;
        _os_log_debug_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEBUG, "[_UIKeyboardArbiterClientInputDestination performRequiredSceneUpdateIfPermittedForViewServiceHostWindow:servicePID:]  Performing required scene update for window hosting remote ui: %p", &v13, 0xCu);
      }

      [(_UIKeyboardArbiterClientInputDestination *)a1 _performRequiredSceneUpdateIfPermittedForWindow:v5 withContext:0x101010001];
    }
  }
}

- (BOOL)_sceneFocusPermittedForApplication
{
  v3 = [UIApp _shouldAllowKeyboardArbiter];
  if (v3)
  {

    LOBYTE(v3) = [(_UIKeyboardArbiterClientInputDestination *)self allowedToShowKeyboard];
  }

  return v3;
}

- (BOOL)_sceneFocusUpdatePermittedForWindow:(id)a3
{
  v4 = a3;
  if (v4 && [UIApp _systemShellAllowsInteractionTrackingKeyboardFocusUpdateForWindow:v4] && -[_UIKeyboardArbiterClientInputDestination _sceneFocusPermittedForApplication](self, "_sceneFocusPermittedForApplication"))
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

      if ([(_UIKeyboardArbiterClientInputDestination *)self _sceneFocusPermittedForApplication])
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

            v8 = [(_UIKeyboardArbiterClientInputDestination *)self focusedSceneIdentityStringOrIdentifier];
            v9 = [objc_opt_class() keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:v6];
            v24 = [(_UIKeyboardArbiterClient *)self keyboardVisible];
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
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 type])
  {
    v5 = [(_UIKeyboardArbiterClient *)self eventObserver];
    [v5 peekApplicationEvent:v4];

    v6 = [(_UIKeyboardArbiterClientInputDestination *)self _sceneFocusPermittedForApplication];
    v7 = [v4 allTouches];
    v8 = [v7 anyObject];

    v9 = [v8 view];
    if ([v8 phase])
    {
      v10 = [v8 phase] == 3;
    }

    else
    {
      v10 = 1;
    }

    if (v6 && v10)
    {
      v11 = [v9 _responderWindow];
      if (_UITouchIsWithinTiledWindowResizeRegion(v8, v11))
      {
        v12 = 3;
      }

      else
      {
        v12 = 0;
      }

      if ([v8 phase] == v12)
      {
        v13 = objc_opt_class();
        v14 = [v11 windowScene];
        v15 = [v13 keyboardClientFBSSceneIdentityStringOrIdentifierFromScene:v14];

        v16 = [(_UIKeyboardArbiterClientInputDestination *)self _sceneFocusUpdatePermittedForWindow:v11];
        v17 = [v9 _wantsTargetOfKeyboardEventDeferringEnvironment];
        v18 = [v8 type] == 2;
        v19 = +[UIDictationController activeInstance];
        [v19 cancelDictationForResponderIfNeeded:v9 wantsKeyboard:v17 isPencil:v18];

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
          v21 = [(_UIKeyboardArbiterClient *)self keyboardVisible];
          v22 = [v8 _isPointerTouch];
          v23 = v22;
          v24 = (v17 & 1 | !v21 || v22) && [(_UIKeyboardArbiterClientInputDestination *)self writingToolsAllowsSceneToRequestFocusOnPeekApplicationEvent];
          v25 = KeyboardArbiterClientLog_3();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67110146;
            *v41 = v24;
            *&v41[4] = 1024;
            *&v41[6] = v21;
            *&v41[10] = 1024;
            *&v41[12] = v17;
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
            if (v17 && ![v9 isFirstResponder])
            {
              v26 = 65537;
            }

            [(_UIKeyboardArbiterClientInputDestination *)self _performRequiredSceneUpdateIfPermittedForWindow:v11 withContext:v26];
            v27 = [(_UIKeyboardArbiterClient *)self requiredScene];
            v28 = [v27 identityToken];

            v29 = [(_UIKeyboardArbiterClient *)self currentInputDestination]| v17;
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

              v32 = [v28 description];
              v33 = _UISceneIdentityToLogString(v32);
              *buf = 136315394;
              *v41 = v31;
              v15 = v39;
              *&v41[8] = 2114;
              *&v41[10] = v33;
              _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_DEFAULT, "TX focusApplication (peekAppEvent) stealKB:%s scene:%{public}@", buf, 0x16u);
            }

            v34 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
            v35 = getpid();
            v36 = +[UIKBArbiterClientFocusContext focusContextForSceneIdentity:contextID:](UIKBArbiterClientFocusContext, "focusContextForSceneIdentity:contextID:", v28, [v11 _contextId]);
            [v34 focusApplicationWithProcessIdentifier:v35 context:v36 stealingKeyboard:v38 & 1 onCompletion:&__block_literal_global_289_3];

            if (([v11 _isApplicationKeyWindow] & 1) == 0)
            {
              [(_UIKeyboardArbiterClientInputDestination *)self setUpdatingKeyWindow:1];
              [v11 makeKeyWindow];
              [(_UIKeyboardArbiterClientInputDestination *)self setUpdatingKeyWindow:0];
            }
          }

          else
          {
            v37 = [v11 windowScene];
            v28 = [v37 keyboardSceneDelegate];

            [v28 setKeyWindowCandidate:v11];
            v15 = v39;
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }
}

- (void)queue_endInputSessionWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [UIApp _systemAnimationFenceExemptQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80___UIKeyboardArbiterClientInputDestination_queue_endInputSessionWithCompletion___block_invoke;
  v6[3] = &unk_1E70F0F78;
  v7 = v3;
  v5 = v3;
  [v4 performAsync:v6];
}

- (void)queue_keyboardChanged:(id)a3 onComplete:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v11 = v6;
  v21 = v11;
  dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  v12 = [UIApp _systemAnimationFenceExemptQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77___UIKeyboardArbiterClientInputDestination_queue_keyboardChanged_onComplete___block_invoke_291;
  v15[3] = &unk_1E712C730;
  v13 = v11;
  v16 = v13;
  v17 = self;
  objc_copyWeak(&v19, &location);
  v14 = v7;
  v18 = v14;
  [v12 performAsync:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)handleKeyboardUITrackingChange:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardArbiterClient *)self handlingRemoteEvent];
  [(_UIKeyboardArbiterClient *)self setHandlingRemoteEvent:1];
  [v4 keyboardPosition];
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
  [(_UIKeyboardArbiterClient *)self setHandlingRemoteEvent:v5];
}

- (void)handleKeyboardUIDidChange:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v5 = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  v6 = ([v5 isRotating] & 1) != 0 || -[_UIKeyboardArbiterClient snapshotting](self, "snapshotting");

  v21 = v6;
  v7 = [(_UIKeyboardArbiterClient *)self kbUIStateDelegate];
  v8 = [v7 layoutIsResizing];

  if ((v8 & 1) != 0 || (-[_UIKeyboardArbiterClient inputWindowRootViewController](self, "inputWindowRootViewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isTransitioningBetweenFloatingStates], v9, v10))
  {
    *(v19 + 24) = 1;
  }

  v11 = [(_UIKeyboardArbiterClient *)self handlingRemoteEvent];
  [(_UIKeyboardArbiterClient *)self setHandlingRemoteEvent:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70___UIKeyboardArbiterClientInputDestination_handleKeyboardUIDidChange___block_invoke;
  v14[3] = &unk_1E712C778;
  v12 = v4;
  v16 = self;
  v17 = &v18;
  v15 = v12;
  [UIKeyboardSceneDelegate performOnControllers:v14];
  [(_UIKeyboardArbiterClient *)self setHandlingRemoteEvent:v11];
  v13 = [(_UIKeyboardArbiterClient *)self currentUIState];
  [v13 resetAnimationFencing];

  _Block_object_dispose(&v18, 8);
}

- (void)queue_keyboardUIDidChange:(id)a3 onComplete:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hasValidNotification];
  v9 = KeyboardArbiterClientLog_3();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = [v6 notificationInfo];
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination queue_keyboardUIDidChange:onComplete:]  Destination posting notification: %@", buf, 0xCu);
    }
  }

  else if (v10)
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination queue_keyboardUIDidChange:onComplete:]  Keyboard UI did change: %@", buf, 0xCu);
  }

  v12 = [UIApp _systemAnimationFenceExemptQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81___UIKeyboardArbiterClientInputDestination_queue_keyboardUIDidChange_onComplete___block_invoke;
  v15[3] = &unk_1E70FCE28;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  [v12 performAsync:v15];
}

- (void)requestEventDeferralTargetSelectionForWindow:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[UIKeyboard doesKeyboardFollowEventDeferralTarget])
  {
    [(_UIKeyboardArbiterClientInputDestination *)self _performRequiredSceneUpdateIfPermittedForWindow:v4 withContext:0x100010001];
    v5 = [(_UIKeyboardArbiterClient *)self requiredScene];
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

    v10 = [(_UIKeyboardArbiterClient *)self arbiterProxy];
    [v10 focusApplicationWithProcessIdentifier:getpid() context:v7 stealingKeyboard:0 onCompletion:&__block_literal_global_340_0];
  }
}

- (void)syncKeyboardUIChangeInfo:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = KeyboardArbiterClientLog_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination syncKeyboardUIChangeInfo:]  Sync Keyboard UI Change info: %@", &v6, 0xCu);
  }

  [(_UIKeyboardArbiterClientInputDestination *)self keyboardUIDidChange:v4 onComplete:0];
}

- (void)keyboardUIDidChange:(id)a3 onComplete:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 currentInputMode];
    if (v8)
    {
      v9 = v8;
      v10 = +[UIKeyboardInputModeController sharedInputModeController];
      v11 = [v10 currentInputMode];
      v12 = [v11 identifier];
      v13 = [v6 currentInputMode];
      v14 = [v12 isEqualToString:v13];

      if (([v6 tracking] & 1) == 0)
      {
        if ((v14 & 1) == 0)
        {
          v15 = [v6 currentInputMode];
          v16 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v15];

          v17 = [MEMORY[0x1E696AD88] defaultCenter];
          [v17 postNotificationName:@"UITextInputCurrentInputModeWillChangeNotification" object:0];

          v18 = [MEMORY[0x1E696AD88] defaultCenter];
          [v18 postNotificationName:@"UITextInputWillPersistFindUINotification" object:0];

          v19 = +[UIKeyboardInputModeController sharedInputModeController];
          [v19 updateCurrentInputMode:v16];
        }

        goto LABEL_9;
      }
    }

    else if (![v6 tracking])
    {
LABEL_9:
      if (([v6 hasValidNotification] & 1) == 0)
      {
        [(_UIKeyboardArbiterClient *)self setCurrentUIState:v6];
        v22 = KeyboardArbiterClientLog_3();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412290;
          v29 = v6;
          _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputDestination keyboardUIDidChange:onComplete:]  Setting currentUIState: %@", &v28, 0xCu);
        }
      }

      v23 = [(_UIKeyboardArbiterClient *)self keyboardVisible];
      v24 = [(_UIKeyboardArbiterClient *)self eventObserver];
      [v24 setKeyboardIsVisible:v23];

      v25 = +[UIKeyboardImpl activeInstance];
      [v25 setSuppressUpdateInputMode:1];

      [(_UIKeyboardArbiterClientInputDestination *)self handleKeyboardUIDidChange:v6];
      v26 = +[UIKeyboardImpl activeInstance];
      [v26 setSuppressUpdateInputMode:0];

      if (v7)
      {
        [UIApp _performBlockAfterCATransactionCommits:v7];
      }

LABEL_15:
      v27 = [(_UIKeyboardArbiterClient *)self changeInfoDelegate];
      [v27 didHandleKeyboardUIChange:self];

      goto LABEL_16;
    }

    [(_UIKeyboardArbiterClient *)self setCurrentUIState:v6];
    v20 = [(_UIKeyboardArbiterClient *)self keyboardVisible];
    v21 = [(_UIKeyboardArbiterClient *)self eventObserver];
    [v21 setKeyboardIsVisible:v20];

    [(_UIKeyboardArbiterClientInputDestination *)self handleKeyboardUITrackingChange:v6];
    if (v7)
    {
      v7[2](v7);
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)queue_activeProcessResignWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [UIApp _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84___UIKeyboardArbiterClientInputDestination_queue_activeProcessResignWithCompletion___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performAsync:v7];
}

- (void)queue_keyboardArbiterClientHandleChanged:(BOOL)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = [UIApp _systemAnimationFenceExemptQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __100___UIKeyboardArbiterClientInputDestination_queue_keyboardArbiterClientHandleChanged_withCompletion___block_invoke;
  v8[3] = &unk_1E7101B70;
  v10 = a3;
  v9 = v5;
  v7 = v5;
  [v6 performAsync:v8];
}

- (void)queue_setKeyboardDisabled:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  if ([(_UIKeyboardArbiterClient *)self expectingInitialState]&& !a3)
  {
    [(_UIKeyboardArbiterClient *)self setAvoidDisableKeyboard:1];
  }

  v7 = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85___UIKeyboardArbiterClientInputDestination_queue_setKeyboardDisabled_withCompletion___block_invoke;
  v9[3] = &unk_1E70FD0C8;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performAsync:v9];
}

- (void)queue_sceneBecameFocused:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [UIApp _systemAnimationFenceExemptQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84___UIKeyboardArbiterClientInputDestination_queue_sceneBecameFocused_withCompletion___block_invoke;
  v11[3] = &unk_1E70FCE28;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performAsync:v11];
}

@end