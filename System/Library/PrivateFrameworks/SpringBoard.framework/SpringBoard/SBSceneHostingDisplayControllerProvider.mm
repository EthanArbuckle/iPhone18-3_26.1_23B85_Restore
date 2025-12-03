@interface SBSceneHostingDisplayControllerProvider
- (SBSceneHostingDisplayControllerProvider)initWithTransformerRegistry:(id)registry displayManager:(id)manager workspaceEventQueue:(id)queue displayModeResolverFactory:(id)factory policyFactory:(id)policyFactory;
- (id)displayControllerInfoForConnectingDisplay:(id)display configuration:(id)configuration;
- (id)transformDisplayConfiguration:(id)configuration;
- (void)dealloc;
- (void)displayManager:(id)manager didConnectIdentity:(id)identity withConfiguration:(id)configuration;
- (void)displayManager:(id)manager didDisconnectIdentity:(id)identity;
- (void)resolver:(id)resolver rootDisplay:(id)display didUpdateAvailability:(BOOL)availability;
@end

@implementation SBSceneHostingDisplayControllerProvider

- (SBSceneHostingDisplayControllerProvider)initWithTransformerRegistry:(id)registry displayManager:(id)manager workspaceEventQueue:(id)queue displayModeResolverFactory:(id)factory policyFactory:(id)policyFactory
{
  v48 = *MEMORY[0x277D85DE8];
  registryCopy = registry;
  managerCopy = manager;
  queueCopy = queue;
  factoryCopy = factory;
  policyFactoryCopy = policyFactory;
  if (registryCopy)
  {
    if (managerCopy)
    {
      goto LABEL_3;
    }

LABEL_17:
    [SBSceneHostingDisplayControllerProvider initWithTransformerRegistry:displayManager:workspaceEventQueue:displayModeResolverFactory:policyFactory:];
    if (factoryCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  [SBSceneHostingDisplayControllerProvider initWithTransformerRegistry:displayManager:workspaceEventQueue:displayModeResolverFactory:policyFactory:];
  if (!managerCopy)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (factoryCopy)
  {
    goto LABEL_4;
  }

LABEL_18:
  [SBSceneHostingDisplayControllerProvider initWithTransformerRegistry:displayManager:workspaceEventQueue:displayModeResolverFactory:policyFactory:];
LABEL_4:
  if (queueCopy)
  {
    if (policyFactoryCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [SBSceneHostingDisplayControllerProvider initWithTransformerRegistry:displayManager:workspaceEventQueue:displayModeResolverFactory:policyFactory:];
    if (policyFactoryCopy)
    {
      goto LABEL_6;
    }
  }

  [SBSceneHostingDisplayControllerProvider initWithTransformerRegistry:displayManager:workspaceEventQueue:displayModeResolverFactory:policyFactory:];
LABEL_6:
  v46.receiver = self;
  v46.super_class = SBSceneHostingDisplayControllerProvider;
  v17 = [(SBSceneHostingDisplayControllerProvider *)&v46 init];
  v18 = v17;
  if (v17)
  {
    v40 = registryCopy;
    objc_storeStrong(&v17->_transformerRegistry, registry);
    objc_storeWeak(&v18->_displayManager, managerCopy);
    v18->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    lock_capableRootDisplaysToResolverMap = v18->_lock_capableRootDisplaysToResolverMap;
    v18->_lock_capableRootDisplaysToResolverMap = dictionary;

    v21 = [MEMORY[0x277CBEB58] set];
    lock_derivedDisplaysAwaitingConnection = v18->_lock_derivedDisplaysAwaitingConnection;
    v18->_lock_derivedDisplaysAwaitingConnection = v21;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    lock_rootDisplaysToControllerMap = v18->_lock_rootDisplaysToControllerMap;
    v18->_lock_rootDisplaysToControllerMap = strongToWeakObjectsMapTable;

    objc_storeStrong(&v18->_workspaceEventQueue, queue);
    objc_storeStrong(&v18->_resolverFactory, factory);
    objc_storeStrong(&v18->_policyFactory, policyFactory);
    transformerRegistry = v18->_transformerRegistry;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [(SBDisplayTransformerRegistry *)transformerRegistry addTransformer:v18 withIdentifier:v27];
    transformerToken = v18->_transformerToken;
    v18->_transformerToken = v28;

    v30 = [managerCopy addObserver:v18];
    displayManagerObserverToken = v18->_displayManagerObserverToken;
    v18->_displayManagerObserverToken = v30;

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    connectedIdentities = [managerCopy connectedIdentities];
    v33 = [connectedIdentities countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v43;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v43 != v35)
          {
            objc_enumerationMutation(connectedIdentities);
          }

          v37 = *(*(&v42 + 1) + 8 * i);
          v38 = [managerCopy configurationForIdentity:{v37, v40}];
          [(SBSceneHostingDisplayControllerProvider *)v18 displayManager:managerCopy didConnectIdentity:v37 withConfiguration:v38];
        }

        v34 = [connectedIdentities countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v34);
    }

    registryCopy = v40;
  }

  return v18;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_transformerToken invalidate];
  [(BSInvalidatable *)self->_displayManagerObserverToken invalidate];
  v3.receiver = self;
  v3.super_class = SBSceneHostingDisplayControllerProvider;
  [(SBSceneHostingDisplayControllerProvider *)&v3 dealloc];
}

- (void)displayManager:(id)manager didConnectIdentity:(id)identity withConfiguration:(id)configuration
{
  identityCopy = identity;
  configurationCopy = configuration;
  if ([identityCopy isRootIdentity])
  {
    v8 = [(SBWindowingModeResolverFactory *)self->_resolverFactory resolverForPhysicalDisplay:configurationCopy];
    v9 = v8;
    if (v8)
    {
      [v8 setDelegate:self];
      os_unfair_lock_assert_not_owner(&self->_lock);
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableDictionary *)self->_lock_capableRootDisplaysToResolverMap setObject:v9 forKey:identityCopy];
      os_unfair_lock_unlock(&self->_lock);
      WeakRetained = objc_loadWeakRetained(&self->_displayManager);
      [WeakRetained updateTransformsWithCompletion:0];
    }
  }
}

- (void)displayManager:(id)manager didDisconnectIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_capableRootDisplaysToResolverMap objectForKey:identityCopy];

  if (v5)
  {
    [(NSMutableDictionary *)self->_lock_capableRootDisplaysToResolverMap removeObjectForKey:identityCopy];
  }

  v6 = [(NSMapTable *)self->_lock_rootDisplaysToControllerMap objectForKey:identityCopy];

  if (v6)
  {
    [(NSMapTable *)self->_lock_rootDisplaysToControllerMap removeObjectForKey:identityCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_displayManager);
    [WeakRetained updateTransformsWithCompletion:0];
  }
}

- (id)displayControllerInfoForConnectingDisplay:(id)display configuration:(id)configuration
{
  v22 = *MEMORY[0x277D85DE8];
  displayCopy = display;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableSet *)self->_lock_derivedDisplaysAwaitingConnection containsObject:displayCopy];
  [(NSMutableSet *)self->_lock_derivedDisplaysAwaitingConnection removeObject:displayCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    v8 = [(SBSceneHostingDisplayControllerPolicyFactory *)self->_policyFactory policyForConnectingDisplay:displayCopy];
    v9 = [v8 displayAssertionPriorityLevel:displayCopy];
    v10 = [v8 displayAssertionDeactivationReasons:displayCopy];
    v11 = [[SBSceneHostingDisplayController alloc] initWithWorkspaceEventQueue:self->_workspaceEventQueue policy:v8];
    v12 = [[SBDisplayControllerInfo alloc] initWithController:v11 windowingMode:[(SBWindowingModeResolverFactory *)self->_resolverFactory displayWindowingMode] priorityLevel:v9 deactivationReasons:v10];
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    rootIdentity = [displayCopy rootIdentity];
    v14 = [(NSMapTable *)self->_lock_rootDisplaysToControllerMap objectForKey:rootIdentity];
    if (v14)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBSceneHostingDisplayControllerProvider.m" lineNumber:141 description:{@"we can only track one controller per physical display. already tracking: %@; wanted to add: %@; to display: %@", v14, v11, rootIdentity}];
    }

    [(NSMapTable *)self->_lock_rootDisplaysToControllerMap setObject:v11 forKey:rootIdentity];
    v15 = SBLogDisplayControlling();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v19 = v11;
      v20 = 2114;
      v21 = rootIdentity;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "tracking controller: %{public}@; display: %{public}@", buf, 0x16u);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)transformDisplayConfiguration:(id)configuration
{
  v35 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v6 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  identity = [configurationCopy identity];
  rootIdentity = [identity rootIdentity];

  v9 = [(NSMutableDictionary *)self->_lock_capableRootDisplaysToResolverMap objectForKey:rootIdentity];
  if ([v9 isWindowingModeAvailable])
  {
    v10 = [objc_alloc(MEMORY[0x277D0ACE8]) initWithConfiguration:configurationCopy];
    [(SBSceneHostingDisplayControllerPolicyFactory *)self->_policyFactory transformDisplayConfiguration:configurationCopy forControllersWithBuilder:v10];
    v11 = [(NSMapTable *)self->_lock_rootDisplaysToControllerMap objectForKey:rootIdentity];
    v26 = v11;
    if (v11)
    {
      [v11 transformDisplayConfiguration:configurationCopy withBuilder:v10];
    }

    else
    {
      v12 = SBLogDisplayTransforming();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(SBSceneHostingDisplayControllerProvider *)self transformDisplayConfiguration:a2, v12];
      }
    }

    v28 = 0;
    v13 = [v10 buildConfigurationWithError:&v28];
    v27 = v28;
    if (v13)
    {
      lock_derivedDisplaysAwaitingConnection = self->_lock_derivedDisplaysAwaitingConnection;
      identity2 = [v13 identity];
      [(NSMutableSet *)lock_derivedDisplaysAwaitingConnection addObject:identity2];

      [v6 addObject:v13];
    }

    else
    {
      v16 = SBLogDisplayTransforming();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(SBSceneHostingDisplayControllerProvider *)v27 transformDisplayConfiguration:configurationCopy, v16];
      }
    }

    v17 = SBLogDisplayTransforming();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = _SBFLoggingMethodProem();
      v19 = objc_opt_class();
      NSStringFromClass(v19);
      v21 = v20 = v6;
      *buf = 138543874;
      v30 = v18;
      v31 = 2114;
      v32 = v21;
      v33 = 2114;
      v34 = v13;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] transformed display: %{public}@", buf, 0x20u);

      v6 = v20;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v22 = SBLogDisplayTransforming();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    _SBFLoggingMethodProem();
    v25 = v24 = v6;
    *buf = 138543618;
    v30 = v25;
    v31 = 2114;
    v32 = v24;
    _os_log_debug_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ returning: %{public}@", buf, 0x16u);

    v6 = v24;
  }

  return v6;
}

- (void)resolver:(id)resolver rootDisplay:(id)display didUpdateAvailability:(BOOL)availability
{
  if (([display isRootIdentity] & 1) == 0)
  {
    [SBSceneHostingDisplayControllerProvider resolver:rootDisplay:didUpdateAvailability:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_displayManager);
  [WeakRetained updateTransformsWithCompletion:0];
}

- (void)initWithTransformerRegistry:displayManager:workspaceEventQueue:displayModeResolverFactory:policyFactory:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"transformerRegistry" object:? file:? lineNumber:? description:?];
}

- (void)initWithTransformerRegistry:displayManager:workspaceEventQueue:displayModeResolverFactory:policyFactory:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"displayManager" object:? file:? lineNumber:? description:?];
}

- (void)initWithTransformerRegistry:displayManager:workspaceEventQueue:displayModeResolverFactory:policyFactory:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"displayModeResolverFactory" object:? file:? lineNumber:? description:?];
}

- (void)initWithTransformerRegistry:displayManager:workspaceEventQueue:displayModeResolverFactory:policyFactory:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"workspaceEventQueue" object:? file:? lineNumber:? description:?];
}

- (void)initWithTransformerRegistry:displayManager:workspaceEventQueue:displayModeResolverFactory:policyFactory:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"policyFactory" object:? file:? lineNumber:? description:?];
}

- (void)transformDisplayConfiguration:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _SBFLoggingMethodProem();
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ not passing to controller as we don't have one yet", &v5, 0xCu);
}

- (void)transformDisplayConfiguration:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Unable to create shell ui external display configuration: %@ from configuration:%@", &v3, 0x16u);
}

- (void)resolver:rootDisplay:didUpdateAvailability:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootDisplay isRootIdentity]" object:? file:? lineNumber:? description:?];
}

@end