@interface _UISceneLifecycleMultiplexer
+ (id)_mostActiveSceneForApplicationState;
+ (id)mostActiveSceneIncludingInternal:(BOOL)internal withTest:(id)test;
+ (id)mostActiveWindowSceneOnScreen:(id)screen;
+ (id)sharedInstance;
+ (int64_t)_compareLifecycleStateOfScene:(id)scene toScene:(id)toScene;
+ (void)configureInitialDeactivationReasons:(unint64_t)reasons;
- (BOOL)_prepareForClientSuspensionWithScene:(id)scene;
- (BOOL)isActive;
- (BOOL)isTrackingScene:(id)scene;
- (BOOL)lifecycleWantsUnnecessaryDelayForSceneDelivery;
- (BOOL)runningInTaskSwitcher;
- (BOOL)suspendedEventsOnly;
- (BOOL)suspendedUnderLock;
- (id)initForAppSingleton:(id)singleton;
- (int64_t)applicationState;
- (void)_evalTransitionToSettings:(id)settings fromSettings:(id)fromSettings forceExit:(BOOL)exit withTransitionStore:(id)store;
- (void)_globalTestRelatedActivationActionsForFirstActivation:(BOOL)activation foreground:(BOOL)foreground interfaceStyle:(int64_t)style transitionContext:(id)context;
- (void)_performBlock:(id)block withApplicationOfDeactivationReasons:(unint64_t)reasons fromReasons:(unint64_t)fromReasons;
- (void)_scheduleFirstCommit;
- (void)collectBackingStores;
- (void)completeApplicationLaunchWithFBSScene:(id)scene transitionContext:(id)context;
- (void)forceExitWithTransitionContext:(id)context scene:(id)scene;
- (void)uiScene:(id)scene transitionedFromState:(id)state withTransitionContext:(id)context;
@end

@implementation _UISceneLifecycleMultiplexer

+ (id)sharedInstance
{
  if (qword_1ED49CC30 != -1)
  {
    dispatch_once(&qword_1ED49CC30, &__block_literal_global_90);
  }

  v3 = _MergedGlobals_1027;

  return v3;
}

- (int64_t)applicationState
{
  WeakRetained = objc_loadWeakRetained(&self->_uiSceneOfRecord);
  if (WeakRetained)
  {
  }

  else if ([UIApp isFrontBoard])
  {
    return 0;
  }

  if (self->_transitionalLifecycleState)
  {
    v5 = [UIScene _activationStateFromSceneSettings:?];
    if (v5 != -1 && v5 != 2)
    {
      return v5 || (*(UIApp + 176) & 0x7FFFF) != 0;
    }

    return 2;
  }

  v7 = objc_loadWeakRetained(&self->_uiSceneOfRecord);

  if (!v7)
  {
    return 2;
  }

  v8 = objc_loadWeakRetained(&self->_uiSceneOfRecord);
  activationState = [v8 activationState];
  if (activationState == -1 || activationState == 2)
  {
    v4 = 2;
  }

  else if (activationState)
  {
    v4 = 1;
  }

  else
  {
    v4 = (*(UIApp + 176) & 0x7FFFF) != 0;
  }

  return v4;
}

- (BOOL)suspendedEventsOnly
{
  WeakRetained = objc_loadWeakRetained(&self->_uiSceneOfRecord);
  if (WeakRetained)
  {
  }

  else if ([UIApp isFrontBoard])
  {
    return 0;
  }

  transitionalLifecycleState = self->_transitionalLifecycleState;
  if (transitionalLifecycleState)
  {

    return _UISceneLifecycleStateIsSEO(transitionalLifecycleState);
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_uiSceneOfRecord);
    _isSuspendedEventsOnly = [v6 _isSuspendedEventsOnly];

    return _isSuspendedEventsOnly;
  }
}

- (BOOL)lifecycleWantsUnnecessaryDelayForSceneDelivery
{
  if (lifecycleWantsUnnecessaryDelayForSceneDelivery_onceToken != -1)
  {
    dispatch_once(&lifecycleWantsUnnecessaryDelayForSceneDelivery_onceToken, &__block_literal_global_2_1);
  }

  return lifecycleWantsUnnecessaryDelayForSceneDelivery__lifecycleWantsUnnecessaryDelayForSceneDelivery;
}

+ (id)_mostActiveSceneForApplicationState
{
  v16 = *MEMORY[0x1E69E9840];
  mostActiveScene = [self mostActiveScene];
  v4 = [self mostActiveSceneIncludingInternal:1 withTest:&__block_literal_global_12_0];
  if ([self _compareLifecycleStateOfScene:mostActiveScene toScene:v4] == -1)
  {
    v5 = v4;
  }

  else
  {
    v5 = mostActiveScene;
  }

  v6 = v5;
  v7 = *(__UILogGetCategoryCachedImpl("AppLifecycle", &_mostActiveSceneForApplicationState___s_category) + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    _sceneIdentifier = [v6 _sceneIdentifier];
    _persistenceIdentifier = [v6 _persistenceIdentifier];
    v12 = 138543618;
    v13 = _sceneIdentifier;
    v14 = 2114;
    v15 = _persistenceIdentifier;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "sceneOfRecord: sceneID: %{public}@  persistentID: %{public}@", &v12, 0x16u);
  }

  return v6;
}

- (void)_scheduleFirstCommit
{
  _firstCommitBlock = [UIApp _firstCommitBlock];
  _firstCommitBlock[2]();
}

- (BOOL)suspendedUnderLock
{
  WeakRetained = objc_loadWeakRetained(&self->_uiSceneOfRecord);
  if (WeakRetained)
  {
  }

  else if ([UIApp isFrontBoard])
  {
    return 0;
  }

  transitionalLifecycleState = self->_transitionalLifecycleState;
  if (transitionalLifecycleState)
  {

    return [(UIApplicationSceneSettings *)transitionalLifecycleState underLock];
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_uiSceneOfRecord);
    _isSuspendedUnderLock = [v6 _isSuspendedUnderLock];

    return _isSuspendedUnderLock;
  }
}

- (void)collectBackingStores
{
  [MEMORY[0x1E6979518] flush];
  v2 = +[_UISceneLifecycleMultiplexer sharedInstance];
  applicationState = [v2 applicationState];

  if (applicationState == 2)
  {
    [UIApp _beginBackgroundTaskWithName:@"com.apple.UIKit.CABackingStoreCollect" expirationHandler:0];
    CABackingStoreCollectWithCompletionHandler();
  }

  else
  {
    v4.n128_f64[0] = CACurrentMediaTime();

    MEMORY[0x1EEDD5D88](v4);
  }
}

- (BOOL)isActive
{
  WeakRetained = objc_loadWeakRetained(&self->_uiSceneOfRecord);
  if (WeakRetained)
  {
  }

  else if ([UIApp isFrontBoard])
  {
    return 1;
  }

  transitionalLifecycleState = self->_transitionalLifecycleState;
  if (transitionalLifecycleState)
  {

    return _UISceneLifecycleStateIsForegroundActive(transitionalLifecycleState);
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_uiSceneOfRecord);
    _isActive = [v6 _isActive];

    return _isActive;
  }
}

- (id)initForAppSingleton:(id)singleton
{
  v7.receiver = self;
  v7.super_class = _UISceneLifecycleMultiplexer;
  v3 = [(_UISceneLifecycleMultiplexer *)&v7 init];
  v4 = v3;
  if (v3)
  {
    objc_storeWeak(&v3->_uiSceneOfRecord, 0);
    transitionalLifecycleState = v4->_transitionalLifecycleState;
    v4->_transitionalLifecycleState = 0;

    *&v4->_multiplexerFlags &= ~2u;
  }

  return v4;
}

- (BOOL)runningInTaskSwitcher
{
  WeakRetained = objc_loadWeakRetained(&self->_uiSceneOfRecord);
  if (WeakRetained)
  {
  }

  else if ([UIApp isFrontBoard])
  {
    LOBYTE(v4) = 0;
    return v4;
  }

  transitionalLifecycleState = self->_transitionalLifecycleState;
  if (transitionalLifecycleState)
  {
    return ([(UIApplicationSceneSettings *)transitionalLifecycleState deactivationReasons]>> 3) & 1;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_uiSceneOfRecord);
    _isRunningInTaskSwitcher = [v6 _isRunningInTaskSwitcher];

    LOBYTE(v4) = _isRunningInTaskSwitcher;
  }

  return v4;
}

+ (id)mostActiveSceneIncludingInternal:(BOOL)internal withTest:(id)test
{
  internalCopy = internal;
  testCopy = test;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74___UISceneLifecycleMultiplexer_mostActiveSceneIncludingInternal_withTest___block_invoke;
  aBlock[3] = &unk_1E70F99B8;
  v7 = testCopy;
  v30 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [UIScene _scenesIncludingInternal:internalCopy];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__24;
  v27 = __Block_byref_object_dispose__24;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -1;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74___UISceneLifecycleMultiplexer_mostActiveSceneIncludingInternal_withTest___block_invoke_8;
  v14[3] = &unk_1E70F99E0;
  v10 = v8;
  v15 = v10;
  v16 = &v23;
  v17 = &v19;
  selfCopy = self;
  [v9 enumerateObjectsUsingBlock:v14];
  if (v20[3] == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v24[5];
  }

  v12 = v11;

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v12;
}

+ (int64_t)_compareLifecycleStateOfScene:(id)scene toScene:(id)toScene
{
  sceneCopy = scene;
  toSceneCopy = toScene;
  if (!toSceneCopy)
  {
    goto LABEL_8;
  }

  if (!sceneCopy || (v7 = [sceneCopy activationState], v8 = objc_msgSend(toSceneCopy, "activationState"), v7 > v8))
  {
    v9 = -1;
    goto LABEL_9;
  }

  if (v7 != v8)
  {
LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

  _effectiveSettings = [sceneCopy _effectiveSettings];
  if ([_effectiveSettings underLock])
  {
    v11 = 1;
  }

  else if (_UISceneLifecycleStateIsSEO(_effectiveSettings))
  {
    v11 = 2;
  }

  else if (([_effectiveSettings deactivationReasons] & 8) != 0)
  {
    v11 = 3;
  }

  else if ([UIScene _activationStateFromSceneSettings:_effectiveSettings])
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  _effectiveSettings2 = [toSceneCopy _effectiveSettings];
  if ([_effectiveSettings2 underLock])
  {
    v14 = 1;
  }

  else if (_UISceneLifecycleStateIsSEO(_effectiveSettings2))
  {
    v14 = 2;
  }

  else if (([_effectiveSettings2 deactivationReasons] & 8) != 0)
  {
    v14 = 3;
  }

  else if ([UIScene _activationStateFromSceneSettings:_effectiveSettings2])
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (v11 < v14)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

LABEL_9:

  return v9;
}

+ (id)mostActiveWindowSceneOnScreen:(id)screen
{
  screenCopy = screen;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62___UISceneLifecycleMultiplexer_mostActiveWindowSceneOnScreen___block_invoke;
  v8[3] = &unk_1E70F44A8;
  v9 = screenCopy;
  v5 = screenCopy;
  v6 = [self mostActiveSceneWithTest:v8];

  return v6;
}

- (BOOL)isTrackingScene:(id)scene
{
  sceneCopy = scene;
  WeakRetained = objc_loadWeakRetained(&self->_uiSceneOfRecord);

  return WeakRetained == sceneCopy;
}

+ (void)configureInitialDeactivationReasons:(unint64_t)reasons
{
  sharedInstance = [self sharedInstance];
  activatedOnce = [sharedInstance activatedOnce];

  if (reasons && (activatedOnce & 1) == 0)
  {
    v6 = 0;
    do
    {
      v7 = (1 << v6);
      if ((reasons & v7) != 0)
      {
        if (v6 <= 0x13 && ((0xC3FFFu >> v6) & 1) != 0)
        {
          [UIApp _deactivateForReason:dword_18A6789E0[v6]];
        }

        reasons &= ~v7;
      }

      if (v6 > 0x12)
      {
        break;
      }

      ++v6;
    }

    while (reasons);
  }
}

- (void)completeApplicationLaunchWithFBSScene:(id)scene transitionContext:(id)context
{
  if ((*&self->_multiplexerFlags & 1) == 0)
  {
    contextCopy = context;
    sceneCopy = scene;
    entr_act_end();
    _requestHardwareEventsIfNeeded();
    [UIApp _deactivateForReason:11];
    [UIApp _runWithMainScene:sceneCopy transitionContext:contextCopy completion:0];
  }
}

- (void)uiScene:(id)scene transitionedFromState:(id)state withTransitionContext:(id)context
{
  sceneCopy = scene;
  stateCopy = state;
  contextCopy = context;
  _mostActiveSceneForApplicationState = [objc_opt_class() _mostActiveSceneForApplicationState];
  WeakRetained = objc_loadWeakRetained(&self->_uiSceneOfRecord);
  objc_storeWeak(&self->_uiSceneOfRecord, _mostActiveSceneForApplicationState);
  _FBSScene = [sceneCopy _FBSScene];
  v12 = contextCopy;
  _effectiveUISettings = [_mostActiveSceneForApplicationState _effectiveUISettings];
  v14 = [WeakRetained isEqual:sceneCopy];
  _effectiveUISettings2 = stateCopy;
  if ((v14 & 1) == 0)
  {
    _effectiveUISettings2 = [WeakRetained _effectiveUISettings];
  }

  v16 = _FBSScene;
  v17 = v12;
  if (self)
  {
    [(_UISceneLifecycleMultiplexer *)self _evalTransitionToSettings:_effectiveUISettings fromSettings:_effectiveUISettings2 forceExit:0 withTransitionStore:v16, v17];
    if (v14)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ((v14 & 1) == 0)
  {
LABEL_5:
  }

LABEL_6:
}

- (void)forceExitWithTransitionContext:(id)context scene:(id)scene
{
  contextCopy = context;
  sceneCopy = scene;
  uiSettings = [sceneCopy uiSettings];
  v9 = [uiSettings mutableCopy];
  [v9 setForeground:0];
  v10 = sceneCopy;
  v11 = contextCopy;
  v12 = [v9 copy];
  v13 = v10;
  v14 = v11;
  v15 = v14;
  if (self)
  {
    [(_UISceneLifecycleMultiplexer *)self _evalTransitionToSettings:v12 fromSettings:uiSettings forceExit:1 withTransitionStore:v13, v14];
  }

  else
  {
  }
}

- (void)_performBlock:(id)block withApplicationOfDeactivationReasons:(unint64_t)reasons fromReasons:(unint64_t)fromReasons
{
  blockCopy = block;
  _isSpringBoardShowingAnAlert = [UIApp _isSpringBoardShowingAnAlert];
  v8 = _isSpringBoardShowingAnAlert;
  if (_isSpringBoardShowingAnAlert)
  {
    [UIApp _deactivateForReason:13];
  }

  if (!blockCopy || fromReasons == reasons)
  {
    if (blockCopy)
    {
      blockCopy[2]();
    }
  }

  else
  {
    v9 = reasons & ~fromReasons;
    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = (1 << v10);
        if ((v9 & v11) != 0)
        {
          if (v10 <= 0x13 && ((0xC3FFFu >> v10) & 1) != 0)
          {
            [UIApp _deactivateForReason:dword_18A6789E0[v10]];
          }

          v9 &= ~v11;
        }

        if (v10 > 0x12)
        {
          break;
        }

        ++v10;
      }

      while (v9);
    }

    blockCopy[2]();
    v12 = fromReasons & ~reasons;
    if (v12)
    {
      v13 = 0;
      do
      {
        v14 = (1 << v13);
        if ((v12 & v14) != 0)
        {
          if (v13 <= 0x13 && ((0xC3FFFu >> v13) & 1) != 0)
          {
            [UIApp _stopDeactivatingForReason:dword_18A6789E0[v13]];
          }

          v12 &= ~v14;
        }

        if (v13 > 0x12)
        {
          break;
        }

        ++v13;
      }

      while (v12);
    }
  }

  if ((v8 & 1) == 0)
  {
    [UIApp _stopDeactivatingForReason:13];
  }
}

- (void)_evalTransitionToSettings:(id)settings fromSettings:(id)fromSettings forceExit:(BOOL)exit withTransitionStore:(id)store
{
  var1 = store.var1;
  var0 = store.var0;
  exitCopy = exit;
  settingsCopy = settings;
  fromSettingsCopy = fromSettings;
  if (_UISceneLifecycleStateIsEqual(settingsCopy, fromSettingsCopy))
  {
    if (exitCopy)
    {
      [UIApp _handleTaskCompletionAndTerminate:var1];
    }
  }

  else
  {
    objc_storeStrong(&self->_transitionalLifecycleState, fromSettings);
    v32 = var0;
    v33 = var1;
    v13 = [UIScene _activationStateFromSceneSettings:fromSettingsCopy];
    v31 = exitCopy;
    v14 = _UISceneLifecycleCompositeActionMaskFromStateToState__staticStateMap[4 * v13 + 5 + [UIScene _activationStateFromSceneSettings:settingsCopy]];
    _UISceneLifecycleCompositeActionMaskHighestLifecycleActionType(v14);
    multiplexerFlags = self->_multiplexerFlags;
    v16 = multiplexerFlags & 2;
    *&self->_multiplexerFlags = multiplexerFlags | 2;
    v17 = var0;
    v30 = [UIScene _sceneForFBSScene:v17];
    v18 = [(UIScene *)UIWindowScene _sceneForFBSScene:v17];
    uiSettings = [v17 uiSettings];
    uiClientSettings = [v17 uiClientSettings];
    v20 = (v16 == 0) & (v14 >> 5) | ((v14 & 4) >> 2);
    if (v20)
    {
      -[_UISceneLifecycleMultiplexer _globalTestRelatedActivationActionsForFirstActivation:foreground:interfaceStyle:transitionContext:](self, "_globalTestRelatedActivationActionsForFirstActivation:foreground:interfaceStyle:transitionContext:", v16 == 0, [settingsCopy isForeground], objc_msgSend(uiSettings, "userInterfaceStyle"), var1);
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3254779904;
    v34[2] = __101___UISceneLifecycleMultiplexer__evalTransitionToSettings_fromSettings_forceExit_withTransitionStore___block_invoke;
    v34[3] = &unk_1EFAFC708;
    v21 = v16 >> 1;
    v22 = var1;
    v23 = v21 ^ 1;
    v43 = v14;
    v34[4] = self;
    v35 = settingsCopy;
    v36 = v17;
    v24 = v36;
    v41 = v24;
    v42 = v22;
    v25 = uiSettings;
    v37 = v25;
    v26 = v30;
    v38 = v26;
    v39 = fromSettingsCopy;
    v44 = v23;
    v45 = v31;
    v27 = v18;
    v40 = v27;
    v46 = v20;
    -[_UISceneLifecycleMultiplexer _performBlock:withApplicationOfDeactivationReasons:fromReasons:](self, "_performBlock:withApplicationOfDeactivationReasons:fromReasons:", v34, [v35 deactivationReasons], objc_msgSend(v39, "deactivationReasons"));

    var0 = v32;
    var1 = v33;
  }

  transitionalLifecycleState = self->_transitionalLifecycleState;
  self->_transitionalLifecycleState = 0;
}

- (BOOL)_prepareForClientSuspensionWithScene:(id)scene
{
  v3 = MEMORY[0x1E695DF90];
  sceneCopy = scene;
  v5 = objc_alloc_init(v3);
  [UIApp defaultImageSnapshotExpiration];
  v7 = v6;
  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v8) = [UIApp applicationSuspendWithSettings:v5];
    if ((*(UIApp + 176) & 0x8000000000000000) == 0)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults synchronize];
    }

    v10 = [v5 valueForKey:@"UISuspendedDefaultPNGKey"];
    v11 = [v10 copy];

    if (v11)
    {
      v12 = v11;
    }
  }

  else
  {
    *(UIApp + 176) &= ~0x800000000uLL;
    [UIApp applicationSuspend];
    v11 = 0;
    v8 = (*(UIApp + 180) >> 3) & 1;
  }

  v13 = [UIScene _sceneForFBSScene:sceneCopy];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69___UISceneLifecycleMultiplexer__prepareForClientSuspensionWithScene___block_invoke;
  v17[3] = &unk_1E70F9A08;
  v18 = v5;
  v19 = v11;
  v20 = v7;
  v14 = v11;
  v15 = v5;
  [v13 _updateUIClientSettingsWithBlock:v17];

  return v8;
}

- (void)_globalTestRelatedActivationActionsForFirstActivation:(BOOL)activation foreground:(BOOL)foreground interfaceStyle:(int64_t)style transitionContext:(id)context
{
  foregroundCopy = foreground;
  activationCopy = activation;
  *(UIApp + 176) |= 0x400000000uLL;
  [UIApp _configureLaunchOptions:{context, foreground, style}];
  v8 = UIApp;

  [v8 _initiateLaunchActionsBackgrounded:!foregroundCopy firstActivation:activationCopy];
}

@end