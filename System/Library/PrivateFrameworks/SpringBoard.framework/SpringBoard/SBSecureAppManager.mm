@interface SBSecureAppManager
+ (SBSecureAppManager)sharedInstance;
- (BOOL)hasSecureApp;
- (BOOL)hasSecureAppOfType:(unint64_t)type;
- (BOOL)hasWakeDestination;
- (SBSecureAppManager)init;
- (SBWakeDestination)wakeDestination;
- (id)_applicationForAction:(id)action;
- (id)_applicationSceneEntityForAction:(id)action;
- (id)newApplicationSceneEntityForCurrentSecureApp;
- (id)newHostableEntityForCurrentSecureApp;
- (id)secureAppAction;
- (void)_addRemoteAlertLockScreenContentAction:(id)action;
- (void)_addSecureAppAction:(id)action;
- (void)_enumerateSecureAppActionsByPriorityUsingBlock:(id)block;
- (void)_enumerateSecureAppActionsOfType:(unint64_t)type usingBlock:(id)block;
- (void)addLockScreenContentAction:(id)action;
- (void)addObserver:(id)observer;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)removeObserver:(id)observer;
- (void)setSecureAppTransitionCoordinator:(id)coordinator;
@end

@implementation SBSecureAppManager

- (id)secureAppAction
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__94;
  v9 = __Block_byref_object_dispose__94;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__SBSecureAppManager_secureAppAction__block_invoke;
  v4[3] = &unk_2783BC760;
  v4[4] = &v5;
  [(SBSecureAppManager *)self _enumerateSecureAppActionsByPriorityUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (SBSecureAppManager)sharedInstance
{
  if (sharedInstance_onceToken_36 != -1)
  {
    +[SBSecureAppManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_7;

  return v3;
}

- (BOOL)hasSecureApp
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__SBSecureAppManager_hasSecureApp__block_invoke;
  v4[3] = &unk_2783BC760;
  v4[4] = &v5;
  [(SBSecureAppManager *)self _enumerateSecureAppActionsByPriorityUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (SBWakeDestination)wakeDestination
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(SBSecureAppManager *)self hasSecureApp])
  {
    v3 = objc_alloc_init(SBWakeDestination);
    [(SBWakeDestination *)v3 setType:1];
    secureAppAction = [(SBSecureAppManager *)self secureAppAction];
    v5 = SBSecureAppBundleIdentifierForSecureAppType([(NSHashTable *)secureAppAction secureAppType]);
    [(SBWakeDestination *)v3 setIdentifier:v5];
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  if ([(NSMutableArray *)self->_remoteAlertActions count])
  {
    secureAppAction = [(NSMutableArray *)self->_remoteAlertActions lastObject];
    configurationObject = [(NSHashTable *)secureAppAction configurationObject];
    v7 = objc_opt_class();
    v8 = configurationObject;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v5 = v9;

    if (v5)
    {
      v3 = objc_alloc_init(SBWakeDestination);
      [(SBWakeDestination *)v3 setType:2];
      [(SBWakeDestination *)v3 setRemoteAlertDefinition:v5];
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_23;
  }

  if ([(NSHashTable *)self->_wakeDestinationProviders count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    secureAppAction = self->_wakeDestinationProviders;
    v3 = [(NSHashTable *)secureAppAction countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v3; i = (i + 1))
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(secureAppAction);
          }

          wakeDestinationHandler = [*(*(&v14 + 1) + 8 * i) wakeDestinationHandler];
          if (wakeDestinationHandler)
          {
            v5 = wakeDestinationHandler;
            v3 = objc_alloc_init(SBWakeDestination);
            [(SBWakeDestination *)v3 setType:3];
            [(SBWakeDestination *)v3 setWakeHandler:v5];
            goto LABEL_23;
          }
        }

        v3 = [(NSHashTable *)secureAppAction countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_24;
  }

  v3 = 0;
LABEL_25:

  return v3;
}

- (BOOL)hasWakeDestination
{
  wakeDestination = [(SBSecureAppManager *)self wakeDestination];
  v3 = wakeDestination != 0;

  return v3;
}

void __36__SBSecureAppManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBSecureAppManager);
  v1 = sharedInstance_sharedInstance_7;
  sharedInstance_sharedInstance_7 = v0;
}

- (SBSecureAppManager)init
{
  v12.receiver = self;
  v12.super_class = SBSecureAppManager;
  v2 = [(SBSecureAppManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    secureAppActions = v2->_secureAppActions;
    v2->_secureAppActions = v3;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    remoteAlertActions = v2->_remoteAlertActions;
    v2->_remoteAlertActions = v7;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    wakeDestinationProviders = v2->_wakeDestinationProviders;
    v2->_wakeDestinationProviders = weakObjectsHashTable2;
  }

  return v2;
}

- (void)addLockScreenContentAction:(id)action
{
  actionCopy = action;
  slot = [actionCopy slot];
  v5 = [slot isEqualToString:*MEMORY[0x277D67008]];

  if (v5)
  {
    [(SBSecureAppManager *)self _addSecureAppAction:actionCopy];
  }

  else
  {
    [(SBSecureAppManager *)self _addRemoteAlertLockScreenContentAction:actionCopy];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    v5 = [(NSHashTable *)self->_observers containsObject:observerCopy];
    observerCopy = v6;
    if (!v5)
    {
      [(NSHashTable *)self->_observers addObject:v6];
      observerCopy = v6;
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    v5 = [(NSHashTable *)self->_observers containsObject:observerCopy];
    observerCopy = v6;
    if (v5)
    {
      [(NSHashTable *)self->_observers removeObject:v6];
      observerCopy = v6;
    }
  }
}

uint64_t __34__SBSecureAppManager_hasSecureApp__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isValid];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)hasSecureAppOfType:(unint64_t)type
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__SBSecureAppManager_hasSecureAppOfType___block_invoke;
  v5[3] = &unk_2783BC760;
  v5[4] = &v6;
  [(SBSecureAppManager *)self _enumerateSecureAppActionsOfType:type usingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __41__SBSecureAppManager_hasSecureAppOfType___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isValid];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (id)newApplicationSceneEntityForCurrentSecureApp
{
  secureAppAction = [(SBSecureAppManager *)self secureAppAction];
  v4 = [(SBSecureAppManager *)self _applicationSceneEntityForAction:secureAppAction];

  return v4;
}

- (id)newHostableEntityForCurrentSecureApp
{
  secureAppAction = [(SBSecureAppManager *)self secureAppAction];
  if ([secureAppAction isInProcessAction])
  {
    hostableEntity = [secureAppAction hostableEntity];
  }

  else
  {
    hostableEntity = 0;
  }

  return hostableEntity;
}

void __37__SBSecureAppManager_secureAppAction__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 isValid])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)setSecureAppTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  secureAppTransitionCoordinator = self->_secureAppTransitionCoordinator;
  if (secureAppTransitionCoordinator != coordinatorCopy)
  {
    v7 = coordinatorCopy;
    [(SBLayoutStateTransitionCoordinator *)secureAppTransitionCoordinator removeObserver:self];
    objc_storeStrong(&self->_secureAppTransitionCoordinator, coordinator);
    [(SBLayoutStateTransitionCoordinator *)self->_secureAppTransitionCoordinator addObserver:self];
    coordinatorCopy = v7;
  }
}

- (void)_addSecureAppAction:(id)action
{
  v70[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  secureAppType = [actionCopy secureAppType];
  v6 = secureAppTypeName();
  identifier = [actionCopy identifier];
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __42__SBSecureAppManager__addSecureAppAction___block_invoke;
  v54[3] = &unk_2783BC788;
  v8 = actionCopy;
  v55 = v8;
  v56 = &v57;
  [(SBSecureAppManager *)self _enumerateSecureAppActionsOfType:secureAppType usingBlock:v54];
  if (*(v58 + 24) != 1)
  {
    objc_initWeak(&location, v8);
    objc_initWeak(&from, self);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __42__SBSecureAppManager__addSecureAppAction___block_invoke_12;
    v47[3] = &unk_2783BC7B0;
    objc_copyWeak(&v50, &location);
    v47[4] = self;
    v51[1] = secureAppType;
    objc_copyWeak(v51, &from);
    v15 = v6;
    v48 = v15;
    v16 = identifier;
    v49 = v16;
    [v8 setInvalidationHandler:v47];
    if (![v8 isValid])
    {
LABEL_32:

      objc_destroyWeak(v51);
      objc_destroyWeak(&v50);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      goto LABEL_33;
    }

    secureAppActions = self->_secureAppActions;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:secureAppType];
    v19 = [(NSMutableDictionary *)secureAppActions objectForKey:v18];

    if (v19)
    {
      v20 = SBLogCoverSheet();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v19 count];
        *buf = 134218498;
        v63 = (v21 + 1);
        v64 = 2112;
        v65 = v15;
        v66 = 2112;
        v67 = v16;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "add content action (app) #%lu with type: %@ and identifier: %@", buf, 0x20u);
      }

      [v19 addObject:v8];
      v22 = self->_secureAppActions;
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:secureAppType];
      [(NSMutableDictionary *)v22 setObject:v19 forKey:v23];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v24 = [(NSHashTable *)self->_observers copy];
      v25 = [v24 countByEnumeratingWithState:&v39 objects:v61 count:16];
      if (!v25)
      {
        goto LABEL_31;
      }

      v37 = v19;
      v38 = identifier;
      v26 = *v40;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v39 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v28 secureAppOfTypeDidTakeNewAssertion:secureAppType];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v39 objects:v61 count:16];
      }

      while (v25);
    }

    else
    {
      v29 = SBLogCoverSheet();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v63 = v15;
        v64 = 2112;
        v65 = v16;
        _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "add content action (app) new with type: %@ and identifier: %@", buf, 0x16u);
      }

      v30 = self->_secureAppActions;
      v31 = [MEMORY[0x277CBEB18] arrayWithObject:v8];
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:secureAppType];
      [(NSMutableDictionary *)v30 setObject:v31 forKey:v32];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v24 = [(NSHashTable *)self->_observers copy];
      v33 = [v24 countByEnumeratingWithState:&v43 objects:v68 count:16];
      if (!v33)
      {
        goto LABEL_31;
      }

      v37 = 0;
      v38 = identifier;
      v34 = *v44;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v44 != v34)
          {
            objc_enumerationMutation(v24);
          }

          v36 = *(*(&v43 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v36 secureAppOfTypeDidBegin:secureAppType];
          }
        }

        v33 = [v24 countByEnumeratingWithState:&v43 objects:v68 count:16];
      }

      while (v33);
    }

    v19 = v37;
    identifier = v38;
LABEL_31:

    goto LABEL_32;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBSecureAppManager cannot accept action %@ with type %@ because it already has one ", v8, v6];
  v10 = SBLogCoverSheet();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SBSceneManager _handleAction:v9 forScene:v10];
  }

  v11 = MEMORY[0x277CCA9B8];
  v69 = *MEMORY[0x277CCA450];
  v70[0] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
  v13 = [v11 errorWithDomain:*MEMORY[0x277D67178] code:1 userInfo:v12];

  v14 = [MEMORY[0x277CF0B68] responseForError:v13];
  [v8 sendResponse:v14];

LABEL_33:
  _Block_object_dispose(&v57, 8);
}

void __42__SBSecureAppManager__addSecureAppAction___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 supportedInterfaceOrientations];
  v7 = [*(a1 + 32) supportedInterfaceOrientations];
  v8 = [v5 type];
  v9 = [*(a1 + 32) type];
  v10 = [v5 isValid];

  if (v10 && v6 == v7 && v8 == v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void __42__SBSecureAppManager__addSecureAppAction___block_invoke_12(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__SBSecureAppManager__addSecureAppAction___block_invoke_2;
  v3[3] = &unk_2783BC7B0;
  objc_copyWeak(&v6, (a1 + 56));
  v2 = *(a1 + 72);
  v3[4] = *(a1 + 32);
  v7[1] = v2;
  objc_copyWeak(v7, (a1 + 64));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], v3);

  objc_destroyWeak(v7);
  objc_destroyWeak(&v6);
}

void __42__SBSecureAppManager__addSecureAppAction___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(*(a1 + 32) + 16);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
  v5 = [v3 objectForKey:v4];

  if ([v5 containsObject:WeakRetained])
  {
    v6 = objc_loadWeakRetained((a1 + 64));
    v7 = [v6 observers];
    v8 = [v7 allObjects];

    if ([v5 count] == 1)
    {
      v9 = SBLogCoverSheet();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        *buf = 138412546;
        v30 = v10;
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "removed last content action (app) with type: %@, last had identifier: %@", buf, 0x16u);
      }

      v12 = *(*(a1 + 32) + 16);
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
      [v12 removeObjectForKey:v13];
    }

    else
    {
      [v5 removeObject:WeakRetained];
      v14 = SBLogCoverSheet();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 40);
        v16 = *(a1 + 48);
        *buf = 138412802;
        v30 = v15;
        v31 = 2112;
        v32 = v16;
        v33 = 2048;
        v34 = [v5 count];
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "removed a content action (app) with type: %@ and identifier: %@. %lu remain.", buf, 0x20u);
      }

      v17 = *(*(a1 + 32) + 16);
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
      [v17 setObject:v5 forKey:v13];
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        v22 = 0;
        do
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v24 + 1) + 8 * v22);
          if (objc_opt_respondsToSelector())
          {
            [v23 secureAppOfTypeDidEnd:{*(a1 + 72), v24}];
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v20);
    }
  }
}

- (void)_addRemoteAlertLockScreenContentAction:(id)action
{
  v20 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  [actionCopy secureAppType];
  v5 = secureAppTypeName();
  identifier = [actionCopy identifier];
  objc_initWeak(&location, actionCopy);
  v7 = SBLogCoverSheet();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = identifier;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "add content action (alert) with type: %@ and identifier: %@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SBSecureAppManager__addRemoteAlertLockScreenContentAction___block_invoke;
  v10[3] = &unk_2783B4560;
  objc_copyWeak(&v14, &location);
  v8 = v5;
  v11 = v8;
  v9 = identifier;
  v12 = v9;
  selfCopy = self;
  [actionCopy setInvalidationHandler:v10];
  [(NSMutableArray *)self->_remoteAlertActions addObject:actionCopy];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __61__SBSecureAppManager__addRemoteAlertLockScreenContentAction___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SBSecureAppManager__addRemoteAlertLockScreenContentAction___block_invoke_2;
  v4[3] = &unk_2783B4560;
  objc_copyWeak(&v8, (a1 + 56));
  v5 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);

  objc_destroyWeak(&v8);
}

void __61__SBSecureAppManager__addRemoteAlertLockScreenContentAction___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = SBLogCoverSheet();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "removing content action (alert) with type: %@ and identifier: %@", &v6, 0x16u);
  }

  [*(*(a1 + 48) + 24) removeObject:WeakRetained];
}

- (id)_applicationSceneEntityForAction:(id)action
{
  actionCopy = action;
  if (![actionCopy isInProcessAction] || (objc_msgSend(actionCopy, "applicationSceneEntity"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(actionCopy, "setApplicationSceneEntity:", 0), !v5))
  {
    v6 = [(SBSecureAppManager *)self _applicationForAction:actionCopy];
    v7 = [SBSecureAppPolicy shouldAlwaysShowSecureSceneForApp:v6];
    v8 = [SBDeviceApplicationSceneEntity alloc];
    if (v7)
    {
      v9 = [(SBDeviceApplicationSceneEntity *)v8 initWithApplicationForMainSecureDisplay:v6];
    }

    else
    {
      v9 = [(SBDeviceApplicationSceneEntity *)v8 initWithApplicationForMainDisplay:v6];
    }

    v5 = v9;
  }

  return v5;
}

- (id)_applicationForAction:(id)action
{
  v3 = SBSecureAppBundleIdentifierForSecureAppType([action secureAppType]);
  if (v3)
  {
    v4 = +[SBApplicationController sharedInstance];
    v5 = [v4 applicationWithBundleIdentifier:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_enumerateSecureAppActionsByPriorityUsingBlock:(id)block
{
  for (i = 1; i != 16; ++i)
  {
    [(SBSecureAppManager *)self _enumerateSecureAppActionsOfType:i usingBlock:block];
  }
}

- (void)_enumerateSecureAppActionsOfType:(unint64_t)type usingBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  secureAppActions = self->_secureAppActions;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v9 = [(NSMutableDictionary *)secureAppActions objectForKey:v8];

  if (v9)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        v16 = 0;
        blockCopy[2](blockCopy, v15, &v16);
        if (v16)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  secureAppAction = [(SBSecureAppManager *)self secureAppAction];
  if ([contextCopy isComplete] && objc_msgSend(secureAppAction, "automaticallyInvalidatesOnSecureAppUserDismissal"))
  {
    v19 = secureAppAction;
    v7 = SBSecureAppBundleIdentifierForSecureAppType([secureAppAction secureAppType]);
    v20 = contextCopy;
    [contextCopy toLayoutState];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v24 = 0u;
    elements = [v18 elements];
    v9 = [elements countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(elements);
          }

          workspaceEntity = [*(*(&v21 + 1) + 8 * v12) workspaceEntity];
          applicationSceneEntity = [workspaceEntity applicationSceneEntity];
          sceneHandle = [applicationSceneEntity sceneHandle];
          application = [sceneHandle application];
          bundleIdentifier = [application bundleIdentifier];

          LOBYTE(workspaceEntity) = [bundleIdentifier isEqualToString:v7];
          if (workspaceEntity)
          {

            secureAppAction = v19;
            goto LABEL_13;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [elements countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    secureAppAction = v19;
    [v19 invalidate];
LABEL_13:

    contextCopy = v20;
  }
}

@end