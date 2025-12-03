@interface SBKeyboardFocusService
- (SBKeyboardFocusService)initWithKeyboardFocusController:(id)controller sceneResolver:(id)resolver serviceListenerFactory:(id)factory;
- (SBKeyboardFocusService)initWithKeyboardFocusController:(id)controller systemUIScenesCoordinator:(id)coordinator;
- (void)_lock_updateExternalSceneIdentities;
- (void)client:(id)client deferAdditionalEnvironments:(id)environments whenSceneHasKeyboardFocus:(id)focus pid:(id)pid;
- (void)client:(id)client removeKeyboardFocusFromSceneIdentity:(id)identity pid:(id)pid;
- (void)client:(id)client requestKeyboardFocusForSceneIdentity:(id)identity pid:(id)pid completion:(id)completion;
- (void)client:(id)client setExternalSceneIdentities:(id)identities;
- (void)client:(id)client stopApplyingAdditionalDeferringRulesWhenSceneHasKeyboardFocus:(id)focus pid:(id)pid;
- (void)clientDidDisconnect:(id)disconnect;
@end

@implementation SBKeyboardFocusService

- (SBKeyboardFocusService)initWithKeyboardFocusController:(id)controller systemUIScenesCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  controllerCopy = controller;
  v8 = objc_alloc_init(_SBKeyboardServiceSceneResolver);
  [(_SBKeyboardServiceSceneResolver *)v8 setSystemUIScenesCoordinator:coordinatorCopy];

  v9 = objc_alloc_init(SBKeyboardServiceConnectionListenerFactory);
  v10 = [(SBKeyboardFocusService *)self initWithKeyboardFocusController:controllerCopy sceneResolver:v8 serviceListenerFactory:v9];

  return v10;
}

- (SBKeyboardFocusService)initWithKeyboardFocusController:(id)controller sceneResolver:(id)resolver serviceListenerFactory:(id)factory
{
  controllerCopy = controller;
  resolverCopy = resolver;
  factoryCopy = factory;
  v19.receiver = self;
  v19.super_class = SBKeyboardFocusService;
  v12 = [(SBKeyboardFocusService *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_keyboardFocusController, controller);
    objc_storeStrong(&v13->_sceneResolver, resolver);
    v13->_lock._os_unfair_lock_opaque = 0;
    v14 = BSDispatchQueueCreateWithQualityOfService();
    serviceQueue = v13->_serviceQueue;
    v13->_serviceQueue = v14;

    v16 = [factoryCopy newKeyboardServiceListenerForDelegate:v13 serviceQueue:v13->_serviceQueue];
    serviceConnectionListener = v13->_serviceConnectionListener;
    v13->_serviceConnectionListener = v16;

    [(_SBKeyboardServiceConnectionListening *)v13->_serviceConnectionListener activate];
  }

  return v13;
}

- (void)client:(id)client requestKeyboardFocusForSceneIdentity:(id)identity pid:(id)pid completion:(id)completion
{
  identityCopy = identity;
  pidCopy = pid;
  completionCopy = completion;
  v9 = completionCopy;
  v10 = pidCopy;
  v11 = identityCopy;
  BSDispatchMain();
}

void __85__SBKeyboardFocusService_client_requestKeyboardFocusForSceneIdentity_pid_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) sceneForSceneIdentityToken:*(a1 + 40) inProcess:{objc_msgSend(*(a1 + 48), "intValue")}];
  v3 = SBLogKeyboardFocus();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 48) intValue];
      *buf = 138543618;
      v18 = v5;
      v19 = 1024;
      v20 = v6;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SBKeyboardFocusService: requestKeyboardFocusForSceneIdentity %{public}@ pid: %i", buf, 0x12u);
    }

    v7 = *(*(a1 + 32) + 32);
    if (!v7)
    {
      v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v9 = *(a1 + 32);
      v10 = *(v9 + 32);
      *(v9 + 32) = v8;

      v7 = *(*(a1 + 32) + 32);
    }

    [v7 addObject:v2];
    v11 = *(a1 + 32);
    v12 = *(v11 + 8);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __85__SBKeyboardFocusService_client_requestKeyboardFocusForSceneIdentity_pid_completion___block_invoke_4;
    v13[3] = &unk_2783A8E88;
    v13[4] = v11;
    v14 = v2;
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    [v12 userFocusRequestForScene:v14 reason:@"SBKeyboardFocusService" completion:v13];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __85__SBKeyboardFocusService_client_requestKeyboardFocusForSceneIdentity_pid_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __85__SBKeyboardFocusService_client_requestKeyboardFocusForSceneIdentity_pid_completion___block_invoke_4(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (([*(a1[4] + 32) containsObject:a1[5]] & 1) == 0)
  {
    v4 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[6];
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SBKeyboardFocusService: finally got a callback for userFocusRequestedForScene %{public}@, but we are no longer tracking this scene, so updating keyboard focus controller once more", &v8, 0xCu);
    }

    [*(a1[4] + 8) removeKeyboardFocusFromScene:a1[5]];
  }

  v6 = a1[7];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  (*(v6 + 16))(v6, v7, 0);
}

- (void)client:(id)client removeKeyboardFocusFromSceneIdentity:(id)identity pid:(id)pid
{
  identityCopy = identity;
  pidCopy = pid;
  v7 = pidCopy;
  v8 = identityCopy;
  BSDispatchMain();
}

void __74__SBKeyboardFocusService_client_removeKeyboardFocusFromSceneIdentity_pid___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) sceneForSceneIdentityToken:*(a1 + 40) inProcess:{objc_msgSend(*(a1 + 48), "intValue")}];
  if (v2)
  {
    v3 = [*(*(a1 + 32) + 32) containsObject:v2];
    v4 = SBLogKeyboardFocus();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v7 = [*(a1 + 48) intValue];
        v9 = 138543618;
        v10 = v6;
        v11 = 1024;
        v12 = v7;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBKeyboardFocusService: removeKeyboardFocusFromSceneIdentity %{public}@ pid: %i", &v9, 0x12u);
      }

      [*(*(a1 + 32) + 8) removeKeyboardFocusFromScene:v2];
      [*(*(a1 + 32) + 32) removeObject:v2];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __74__SBKeyboardFocusService_client_removeKeyboardFocusFromSceneIdentity_pid___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v8 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __74__SBKeyboardFocusService_client_removeKeyboardFocusFromSceneIdentity_pid___block_invoke_cold_2();
    }
  }
}

- (void)client:(id)client deferAdditionalEnvironments:(id)environments whenSceneHasKeyboardFocus:(id)focus pid:(id)pid
{
  clientCopy = client;
  environmentsCopy = environments;
  focusCopy = focus;
  pidCopy = pid;
  v17 = environmentsCopy;
  v11 = clientCopy;
  v12 = environmentsCopy;
  v13 = pidCopy;
  v14 = focusCopy;
  BSDispatchMain();
}

void __91__SBKeyboardFocusService_client_deferAdditionalEnvironments_whenSceneHasKeyboardFocus_pid___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) sceneForSceneIdentityToken:*(a1 + 40) inProcess:{objc_msgSend(*(a1 + 48), "intValue")}];
  if (v2)
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = *(a1 + 56);
    v24 = 0;
    v7 = [v3 unarchivedDictionaryWithKeysOfClass:v4 objectsOfClass:v5 fromData:v6 error:&v24];
    v8 = v24;
    if (v8)
    {
      v9 = SBLogKeyboardFocus();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __91__SBKeyboardFocusService_client_deferAdditionalEnvironments_whenSceneHasKeyboardFocus_pid___block_invoke_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    else
    {
      v9 = +[SBKeyboardFocusTarget targetForSceneIdentityToken:pid:](SBKeyboardFocusTarget, "targetForSceneIdentityToken:pid:", *(a1 + 40), [*(a1 + 48) intValue]);
      v16 = [*(*(a1 + 32) + 8) deferAdditionalEnvironments:v7 whenTargetHasKeyboardFocus:v9];
      os_unfair_lock_lock((*(a1 + 32) + 64));
      v17 = *(*(a1 + 32) + 40);
      if (!v17)
      {
        v18 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
        v19 = *(a1 + 32);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        v17 = *(*(a1 + 32) + 40);
      }

      v21 = [v17 objectForKey:*(a1 + 64)];
      if (!v21)
      {
        v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [*(*(a1 + 32) + 40) setObject:v21 forKey:*(a1 + 64)];
      }

      v22 = [v21 objectForKey:v9];
      v23 = v22;
      if (v22)
      {
        [v22 invalidate];
      }

      [v21 setObject:v16 forKey:v9];
      os_unfair_lock_unlock((*(a1 + 32) + 64));
    }
  }

  else
  {
    v8 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __91__SBKeyboardFocusService_client_deferAdditionalEnvironments_whenSceneHasKeyboardFocus_pid___block_invoke_cold_2();
    }
  }
}

- (void)client:(id)client setExternalSceneIdentities:(id)identities
{
  clientCopy = client;
  identitiesCopy = identities;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_externalSceneIdentitiesByClient)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lock_externalSceneIdentitiesByClient = self->_lock_externalSceneIdentitiesByClient;
    self->_lock_externalSceneIdentitiesByClient = strongToStrongObjectsMapTable;
  }

  v9 = [identitiesCopy count];
  v10 = self->_lock_externalSceneIdentitiesByClient;
  if (v9)
  {
    [(NSMapTable *)v10 setObject:identitiesCopy forKey:clientCopy];
  }

  else
  {
    [(NSMapTable *)v10 removeObjectForKey:clientCopy];
  }

  [(SBKeyboardFocusService *)self _lock_updateExternalSceneIdentities];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)client:(id)client stopApplyingAdditionalDeferringRulesWhenSceneHasKeyboardFocus:(id)focus pid:(id)pid
{
  focusCopy = focus;
  clientCopy = client;
  v12 = +[SBKeyboardFocusTarget targetForSceneIdentityToken:pid:](SBKeyboardFocusTarget, "targetForSceneIdentityToken:pid:", focusCopy, [pid intValue]);

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMapTable *)self->_lock_additionalDeferringRulesByClient objectForKey:clientCopy];

  v11 = [v10 objectForKey:v12];
  if (v11)
  {
    [v10 removeObjectForKey:v12];
    [v11 invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)clientDidDisconnect:(id)disconnect
{
  v16 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSMapTable *)self->_lock_additionalDeferringRulesByClient objectForKey:disconnectCopy, 0];
  allValues = [v5 allValues];

  v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v10++) invalidate];
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(NSMapTable *)self->_lock_additionalDeferringRulesByClient removeObjectForKey:disconnectCopy];
  [(NSMapTable *)self->_lock_externalSceneIdentitiesByClient removeObjectForKey:disconnectCopy];
  [(SBKeyboardFocusService *)self _lock_updateExternalSceneIdentities];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_updateExternalSceneIdentities
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMapTable *)self->_lock_externalSceneIdentitiesByClient objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [v3 unionSet:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v3;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBKeyboardFocusService: external scene identities are now: %{public}@", buf, 0xCu);
  }

  [(SBKeyboardFocusControlling *)self->_keyboardFocusController setExternalSceneIdentities:v3];
}

void __85__SBKeyboardFocusService_client_requestKeyboardFocusForSceneIdentity_pid_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, v0, v1, "SBKeyboardFocusService: requestKeyboardFocusForSceneIdentity failed to find scene %{public}@", v2, v3, v4, v5, v6);
}

void __74__SBKeyboardFocusService_client_removeKeyboardFocusFromSceneIdentity_pid___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, v0, v1, "SBKeyboardFocusService: removeKeyboardFocusFromSceneIdentity called for non-focus-requested scene %{public}@", v2, v3, v4, v5, v6);
}

void __74__SBKeyboardFocusService_client_removeKeyboardFocusFromSceneIdentity_pid___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, v0, v1, "SBKeyboardFocusService: removeKeyboardFocusFromSceneIdentity failed to find scene %{public}@", v2, v3, v4, v5, v6);
}

void __91__SBKeyboardFocusService_client_deferAdditionalEnvironments_whenSceneHasKeyboardFocus_pid___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_5(&dword_21ED4E000, v0, v1, "SBKeyboardFocusService: deferAdditionalEnvironments: failed to find scene %{public}@", v2, v3, v4, v5, v6);
}

@end