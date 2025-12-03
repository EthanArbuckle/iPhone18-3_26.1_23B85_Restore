@interface SBLockedPointerManager
- (BOOL)_queue_prefersLockForSceneIdentifier:(id)identifier;
- (BOOL)_shouldAllowPointerLockedForScene:(id)scene;
- (SBLockedPointerManager)initWithWindowScene:(id)scene;
- (id)_possibleSceneHandleForLockingPointerFromLayoutState:(id)state;
- (void)_notInvalidated_updateLockForLayoutState:(id)state;
- (void)_queue_lockPointerForSceneIdentifier:(id)identifier;
- (void)_queue_unlockPointer;
- (void)_queue_updateLockForLayoutState:(id)state;
- (void)_setPointerLockStatus:(int64_t)status forSceneWithIdentifier:(id)identifier;
- (void)clientWithSceneIdentifier:(id)identifier prefersPointerLockStatus:(int64_t)status;
- (void)clientWithSceneIdentifier:(id)identifier suppressPreferredLockStatus:(BOOL)status;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)sceneHandle:(id)handle didDestroyScene:(id)scene;
- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings;
- (void)sceneManager:(id)manager didAddExternalForegroundApplicationSceneHandle:(id)handle;
- (void)sceneManager:(id)manager didRemoveExternalForegroundApplicationSceneHandle:(id)handle;
@end

@implementation SBLockedPointerManager

- (SBLockedPointerManager)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v17.receiver = self;
  v17.super_class = SBLockedPointerManager;
  v5 = [(SBLockedPointerManager *)&v17 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D3DF50]);
    pointerClientController = v5->_pointerClientController;
    v5->_pointerClientController = v6;

    Serial = BSDispatchQueueCreateSerial();
    stateSerialQueue = v5->_stateSerialQueue;
    v5->_stateSerialQueue = Serial;

    v10 = objc_opt_new();
    queue_preferredLockStatusBySceneIdentifier = v5->_queue_preferredLockStatusBySceneIdentifier;
    v5->_queue_preferredLockStatusBySceneIdentifier = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    queue_sceneIdentifiersThatSuppressPreferredLockStatus = v5->_queue_sceneIdentifiersThatSuppressPreferredLockStatus;
    v5->_queue_sceneIdentifiersThatSuppressPreferredLockStatus = v12;

    sceneManager = [sceneCopy sceneManager];
    [sceneManager addObserver:v5];

    layoutStateTransitionCoordinator = [sceneCopy layoutStateTransitionCoordinator];
    [layoutStateTransitionCoordinator addObserver:v5];

    objc_storeWeak(&v5->_windowScene, sceneCopy);
  }

  return v5;
}

- (void)clientWithSceneIdentifier:(id)identifier prefersPointerLockStatus:(int64_t)status
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __77__SBLockedPointerManager_clientWithSceneIdentifier_prefersPointerLockStatus___block_invoke;
  v14 = &unk_2783AA668;
  v17 = &v19;
  statusCopy = status;
  selfCopy = self;
  v8 = identifierCopy;
  v16 = v8;
  dispatch_sync(stateSerialQueue, &v11);
  if (v20[3])
  {
    v9 = SBLogPointer();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:{status, v11, v12, v13, v14, selfCopy}];
      *buf = 138543618;
      v24 = v8;
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring request from %{public}@ to set pointerLockStatus %{public}@ because I'm invalidated", buf, 0x16u);
    }
  }

  else
  {
    [(SBLockedPointerManager *)self _notInvalidated_updateLockForLayoutState:0, v11, v12, v13, v14, selfCopy];
  }

  _Block_object_dispose(&v19, 8);
}

void __77__SBLockedPointerManager_clientWithSceneIdentifier_prefersPointerLockStatus___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = *(a1[4] + 80);
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v3 = *(a1[4] + 32);
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1[7]];
    [v3 setObject:v4 forKey:a1[5]];
  }
}

- (void)clientWithSceneIdentifier:(id)identifier suppressPreferredLockStatus:(BOOL)status
{
  statusCopy = status;
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __80__SBLockedPointerManager_clientWithSceneIdentifier_suppressPreferredLockStatus___block_invoke;
  v18 = &unk_2783B90F0;
  v21 = &v23;
  selfCopy = self;
  v8 = identifierCopy;
  v20 = v8;
  v22 = statusCopy;
  dispatch_sync(stateSerialQueue, &v15);
  if (v24[3])
  {
    v9 = SBLogPointer();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithBool:{statusCopy, v15, v16, v17, v18, selfCopy}];
      *buf = 138543618;
      v28 = v8;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring request from %{public}@ to set suppressPreferredLockStatus %{public}@ because I'm invalidated", buf, 0x16u);
    }
  }

  else
  {
    v11 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    switcherController = [WeakRetained switcherController];
    contentViewController = [switcherController contentViewController];
    v9 = SBSafeCast(v11, contentViewController);

    if (v9)
    {
      [v9 clientWithSceneIdentifier:v8 suppressPreferredPointerLockStatusUpdated:statusCopy];
    }

    [(SBLockedPointerManager *)self _notInvalidated_updateLockForLayoutState:0];
  }

  _Block_object_dispose(&v23, 8);
}

void *__80__SBLockedPointerManager_clientWithSceneIdentifier_suppressPreferredLockStatus___block_invoke(void *result)
{
  *(*(result[6] + 8) + 24) = *(result[4] + 80);
  if ((*(*(result[6] + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result[4] + 48) containsObject:result[5]];
    if (result)
    {
      if ((v1[7] & 1) == 0)
      {
        v2 = v1[5];
        v3 = *(v1[4] + 48);

        return [v3 removeObject:v2];
      }
    }

    else if (*(v1 + 56))
    {
      v4 = v1[5];
      v5 = *(v1[4] + 48);

      return [v5 addObject:v4];
    }
  }

  return result;
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  sceneManager = [WeakRetained sceneManager];
  [sceneManager removeObserver:self];

  layoutStateTransitionCoordinator = [WeakRetained layoutStateTransitionCoordinator];
  [layoutStateTransitionCoordinator removeObserver:self];

  stateSerialQueue = self->_stateSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SBLockedPointerManager_invalidate__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_sync(stateSerialQueue, block);
}

void __36__SBLockedPointerManager_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  [*(*(a1 + 32) + 64) invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  *(v4 + 64) = 0;

  *(*(a1 + 32) + 80) = 1;
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__SBLockedPointerManager_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke;
  block[3] = &unk_2783A8CE0;
  block[4] = self;
  block[5] = &v12;
  dispatch_sync(stateSerialQueue, block);
  if (v13[3])
  {
    toLayoutState = SBLogPointer();
    if (os_log_type_enabled(toLayoutState, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21ED4E000, toLayoutState, OS_LOG_TYPE_DEFAULT, "Ignoring layout state transition didBegin because I'm invalidated", v10, 2u);
    }
  }

  else
  {
    toLayoutState = [contextCopy toLayoutState];
    [(SBLockedPointerManager *)self _notInvalidated_updateLockForLayoutState:toLayoutState];
  }

  _Block_object_dispose(&v12, 8);
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__SBLockedPointerManager_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke;
  block[3] = &unk_2783A8CE0;
  block[4] = self;
  block[5] = &v12;
  dispatch_sync(stateSerialQueue, block);
  if (v13[3])
  {
    toLayoutState = SBLogPointer();
    if (os_log_type_enabled(toLayoutState, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21ED4E000, toLayoutState, OS_LOG_TYPE_DEFAULT, "Ignoring layout state transition didEnd because I'm invalidated", v10, 2u);
    }
  }

  else
  {
    toLayoutState = [contextCopy toLayoutState];
    [(SBLockedPointerManager *)self _notInvalidated_updateLockForLayoutState:toLayoutState];
  }

  _Block_object_dispose(&v12, 8);
}

- (void)sceneManager:(id)manager didAddExternalForegroundApplicationSceneHandle:(id)handle
{
  managerCopy = manager;
  handleCopy = handle;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__SBLockedPointerManager_sceneManager_didAddExternalForegroundApplicationSceneHandle___block_invoke;
  v9[3] = &unk_2783A8CE0;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(stateSerialQueue, v9);
  if ((v11[3] & 1) == 0)
  {
    [handleCopy addObserver:self];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)sceneManager:(id)manager didRemoveExternalForegroundApplicationSceneHandle:(id)handle
{
  managerCopy = manager;
  handleCopy = handle;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__SBLockedPointerManager_sceneManager_didRemoveExternalForegroundApplicationSceneHandle___block_invoke;
  v9[3] = &unk_2783A8CE0;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(stateSerialQueue, v9);
  if ((v11[3] & 1) == 0)
  {
    [handleCopy removeObserver:self];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings
{
  handleCopy = handle;
  diffCopy = diff;
  settingsCopy = settings;
  if (!self->_sceneSettingsInspector)
  {
    v11 = objc_alloc_init(MEMORY[0x277D75178]);
    sceneSettingsInspector = self->_sceneSettingsInspector;
    self->_sceneSettingsInspector = v11;

    objc_initWeak(&location, self);
    v13 = self->_sceneSettingsInspector;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __81__SBLockedPointerManager_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke;
    v23[3] = &unk_2783AC8A0;
    objc_copyWeak(&v24, &location);
    [(UIApplicationSceneSettingsDiffInspector *)v13 observeDeactivationReasonsWithBlock:v23];
    v14 = self->_sceneSettingsInspector;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __81__SBLockedPointerManager_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_2;
    v21[3] = &unk_2783AC8A0;
    objc_copyWeak(&v22, &location);
    [(UIApplicationSceneSettingsDiffInspector *)v14 observeIsForegroundWithBlock:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  location = 0;
  p_location = &location;
  v19 = 0x2020000000;
  v20 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__SBLockedPointerManager_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_3;
  v16[3] = &unk_2783A8CE0;
  v16[4] = self;
  v16[5] = &location;
  dispatch_sync(stateSerialQueue, v16);
  if ((p_location[3] & 1) == 0)
  {
    [(UIApplicationSceneSettingsDiffInspector *)self->_sceneSettingsInspector inspectDiff:diffCopy withContext:0];
  }

  _Block_object_dispose(&location, 8);
}

void __81__SBLockedPointerManager_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notInvalidated_updateLockForLayoutState:0];
}

void __81__SBLockedPointerManager_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notInvalidated_updateLockForLayoutState:0];
}

- (void)sceneHandle:(id)handle didDestroyScene:(id)scene
{
  handleCopy = handle;
  sceneCopy = scene;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  stateSerialQueue = self->_stateSerialQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__SBLockedPointerManager_sceneHandle_didDestroyScene___block_invoke;
  v10[3] = &unk_2783A8CE0;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(stateSerialQueue, v10);
  if ((v12[3] & 1) == 0)
  {
    identifier = [sceneCopy identifier];
    if (identifier)
    {
      [(NSMutableDictionary *)self->_queue_preferredLockStatusBySceneIdentifier removeObjectForKey:identifier];
      [(NSMutableSet *)self->_queue_sceneIdentifiersThatSuppressPreferredLockStatus removeObject:identifier];
      [(SBLockedPointerManager *)self _notInvalidated_updateLockForLayoutState:0];
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (id)_possibleSceneHandleForLockingPointerFromLayoutState:(id)state
{
  stateCopy = state;
  elements = [stateCopy elements];
  v5 = [elements count];

  if (v5 >= 2)
  {
    v6 = SBLogPointer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SBLockedPointerManager _possibleSceneHandleForLockingPointerFromLayoutState:];
    }

    goto LABEL_16;
  }

  if (!v5)
  {
    v6 = SBLogPointer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SBLockedPointerManager _possibleSceneHandleForLockingPointerFromLayoutState:];
    }

    goto LABEL_16;
  }

  v7 = objc_opt_class();
  v8 = SBSafeCast(v7, stateCopy);
  v6 = v8;
  if (!v8)
  {
LABEL_8:
    elements2 = [stateCopy elements];
    anyObject = [elements2 anyObject];

    workspaceEntity = [anyObject workspaceEntity];
    applicationSceneEntity = [workspaceEntity applicationSceneEntity];
    sceneHandle = [applicationSceneEntity sceneHandle];

    goto LABEL_17;
  }

  if ([v8 unlockedEnvironmentMode]== 3)
  {
    if ([v6 spaceConfiguration]== 1)
    {
      goto LABEL_8;
    }

    v14 = SBLogPointer();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [SBLockedPointerManager _possibleSceneHandleForLockingPointerFromLayoutState:];
    }
  }

  else
  {
    v14 = SBLogPointer();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [SBLockedPointerManager _possibleSceneHandleForLockingPointerFromLayoutState:];
    }
  }

LABEL_16:
  sceneHandle = 0;
LABEL_17:

  return sceneHandle;
}

- (BOOL)_shouldAllowPointerLockedForScene:(id)scene
{
  v25 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  controlCenterController = [WeakRetained controlCenterController];
  isPresented = [controlCenterController isPresented];

  v8 = +[SBCoverSheetPresentationManager sharedInstance];
  isPresented2 = [v8 isPresented];

  sceneIfExists = [sceneCopy sceneIfExists];
  if (sceneIfExists)
  {
    isEffectivelyForeground = [sceneCopy isEffectivelyForeground];
    settings = [sceneIfExists settings];
    if ([settings isUISubclass])
    {
      v13 = ([settings deactivationReasons] & 0xFFFFFFFFFFFFFEFFLL) == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = isEffectivelyForeground & v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = ((isPresented | isPresented2) ^ 1) & v14;
  v16 = SBLogPointer();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18[0] = 67109888;
    v18[1] = v15 & 1;
    v19 = 1024;
    v20 = isPresented ^ 1;
    v21 = 1024;
    v22 = isPresented2 ^ 1;
    v23 = 1024;
    v24 = v14;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "shouldAllow:%d isAllowedBasedOnControlCenterState:%d isAllowedBasedOnCoverSheetState:%d isAllowedFromActivationState:%d", v18, 0x1Au);
  }

  return v15 & 1;
}

- (void)_notInvalidated_updateLockForLayoutState:(id)state
{
  stateCopy = state;
  if (!stateCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    layoutStateProvider = [WeakRetained layoutStateProvider];
    stateCopy = [layoutStateProvider layoutState];
  }

  stateSerialQueue = self->_stateSerialQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__SBLockedPointerManager__notInvalidated_updateLockForLayoutState___block_invoke;
  v9[3] = &unk_2783A92D8;
  v9[4] = self;
  v10 = stateCopy;
  v8 = stateCopy;
  dispatch_async(stateSerialQueue, v9);
}

- (void)_queue_updateLockForLayoutState:(id)state
{
  v19 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  dispatch_assert_queue_V2(self->_stateSerialQueue);
  if (self->_queue_isInvalidated)
  {
    v5 = SBLogPointer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      *v16 = stateCopy;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring request to update pointer lock state for layout state: %@ because I'm invalidated", &v15, 0xCu);
    }
  }

  else
  {
    v5 = [(SBLockedPointerManager *)self _possibleSceneHandleForLockingPointerFromLayoutState:stateCopy];
    sceneIdentifier = [v5 sceneIdentifier];
    v7 = SBLogPointer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      *v16 = sceneIdentifier;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Re-evaluating pointer lock state for scene %@", &v15, 0xCu);
    }

    queue_sceneIdentifierThatHasLockedPointer = self->_queue_sceneIdentifierThatHasLockedPointer;
    v9 = [(SBLockedPointerManager *)self _queue_prefersLockForSceneIdentifier:sceneIdentifier];
    v10 = [(NSMutableSet *)self->_queue_sceneIdentifiersThatSuppressPreferredLockStatus containsObject:sceneIdentifier];
    if (v9)
    {
      v11 = [(SBLockedPointerManager *)self _shouldAllowPointerLockedForScene:v5]& (v10 ^ 1);
    }

    else
    {
      v11 = 0;
    }

    v12 = SBLogPointer();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 67109632;
      *v16 = v9;
      *&v16[4] = 1024;
      *&v16[6] = v11;
      v17 = 1024;
      v18 = queue_sceneIdentifierThatHasLockedPointer != 0;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "currentScenePrefersLock:%d shouldBeLocked:%d isCurrentlyLocked:%d", &v15, 0x14u);
    }

    if (!v11 || queue_sceneIdentifierThatHasLockedPointer)
    {
      if (queue_sceneIdentifierThatHasLockedPointer)
      {
        v14 = v11;
      }

      else
      {
        v14 = 1;
      }

      if ((v14 & 1) == 0)
      {
        [(SBLockedPointerManager *)self _queue_unlockPointer];
      }
    }

    else
    {
      sceneIdentifier2 = [v5 sceneIdentifier];
      [(SBLockedPointerManager *)self _queue_lockPointerForSceneIdentifier:sceneIdentifier2];
    }
  }
}

- (BOOL)_queue_prefersLockForSceneIdentifier:(id)identifier
{
  stateSerialQueue = self->_stateSerialQueue;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(stateSerialQueue);
  v6 = [(NSMutableDictionary *)self->_queue_preferredLockStatusBySceneIdentifier objectForKey:identifierCopy];

  if (v6)
  {
    v7 = [v6 integerValue] == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_queue_lockPointerForSceneIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_stateSerialQueue);
  v5 = SBLogPointer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = identifierCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Locking pointer for scene %{public}@", buf, 0xCu);
  }

  if (self->_queue_sceneIdentifierThatHasLockedPointer)
  {
    [(SBLockedPointerManager *)self _setPointerLockStatus:0 forSceneWithIdentifier:?];
  }

  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Scene %@ requested locked pointer", identifierCopy];
  mEMORY[0x277CF0720] = [MEMORY[0x277CF0720] sharedInstance];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
  hardwareIdentifier = [_fbsDisplayConfiguration hardwareIdentifier];
  v11 = [mEMORY[0x277CF0720] pointerSuppressionAssertionOnDisplay:hardwareIdentifier forReason:identifierCopy withOptionsMask:2];
  queue_backboardLockedPointerAssertion = self->_queue_backboardLockedPointerAssertion;
  self->_queue_backboardLockedPointerAssertion = v11;

  v13 = [(PSPointerClientController *)self->_pointerClientController persistentlyHidePointerAssertionForReason:4];
  queue_pointerHiddenAssertion = self->_queue_pointerHiddenAssertion;
  self->_queue_pointerHiddenAssertion = v13;

  queue_sceneIdentifierThatHasLockedPointer = self->_queue_sceneIdentifierThatHasLockedPointer;
  self->_queue_sceneIdentifierThatHasLockedPointer = identifierCopy;
  v16 = identifierCopy;

  [(SBLockedPointerManager *)self _setPointerLockStatus:1 forSceneWithIdentifier:v16];
}

- (void)_queue_unlockPointer
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateSerialQueue);
  v3 = SBLogPointer();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    queue_sceneIdentifierThatHasLockedPointer = self->_queue_sceneIdentifierThatHasLockedPointer;
    v9 = 138543362;
    v10 = queue_sceneIdentifierThatHasLockedPointer;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Unlocking pointer locked by scene %{public}@", &v9, 0xCu);
  }

  if (self->_queue_sceneIdentifierThatHasLockedPointer)
  {
    [(SBLockedPointerManager *)self _setPointerLockStatus:0 forSceneWithIdentifier:?];
  }

  else
  {
    v5 = SBLogPointer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBLockedPointerManager _queue_unlockPointer];
    }
  }

  v6 = self->_queue_sceneIdentifierThatHasLockedPointer;
  self->_queue_sceneIdentifierThatHasLockedPointer = 0;

  [(BSInvalidatable *)self->_queue_backboardLockedPointerAssertion invalidate];
  queue_backboardLockedPointerAssertion = self->_queue_backboardLockedPointerAssertion;
  self->_queue_backboardLockedPointerAssertion = 0;

  [(BSInvalidatable *)self->_queue_pointerHiddenAssertion invalidate];
  queue_pointerHiddenAssertion = self->_queue_pointerHiddenAssertion;
  self->_queue_pointerHiddenAssertion = 0;
}

- (void)_setPointerLockStatus:(int64_t)status forSceneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SBLockedPointerManager__setPointerLockStatus_forSceneWithIdentifier___block_invoke;
  v7[3] = &unk_2783A8BC8;
  v8 = identifierCopy;
  statusCopy = status;
  v6 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __71__SBLockedPointerManager__setPointerLockStatus_forSceneWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D0AAD8] sharedInstance];
  v3 = [v2 sceneWithIdentifier:*(a1 + 32)];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__SBLockedPointerManager__setPointerLockStatus_forSceneWithIdentifier___block_invoke_2;
  v4[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
  v4[4] = *(a1 + 40);
  [v3 updateSettingsWithBlock:v4];
}

@end