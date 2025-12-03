@interface PRSWallpaperObserver
- (PRSWallpaperObserver)init;
- (PRSWallpaperObserver)initWithExplanation:(id)explanation;
- (void)_lock_invalidate;
- (void)activateWithConfiguration:(id)configuration;
- (void)dealloc;
- (void)invalidate;
- (void)notifyInitialUpdatesComplete;
- (void)notifyRoleActivePosterUpdates:(id)updates;
- (void)notifyRolePosterCollectionUpdates:(id)updates;
- (void)notifySnapshotUpdates:(id)updates;
- (void)notifyWallpaperUpdates:(id)updates;
@end

@implementation PRSWallpaperObserver

- (PRSWallpaperObserver)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@ is not allowed on %@", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = @"PRSWallpaperObserver.m";
    v21 = 1024;
    v22 = 201;
    v23 = 2114;
    v24 = v8;
    _os_log_error_impl(&dword_1C26FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (PRSWallpaperObserver)initWithExplanation:(id)explanation
{
  explanationCopy = explanation;
  if (!explanationCopy)
  {
    [PRSWallpaperObserver initWithExplanation:a2];
  }

  v6 = explanationCopy;
  v17.receiver = self;
  v17.super_class = PRSWallpaperObserver;
  v7 = [(PRSWallpaperObserver *)&v17 init];
  if (v7)
  {
    v8 = [v6 copy];
    explanation = v7->_explanation;
    v7->_explanation = v8;

    v7->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    conn_configurationByIdentity = v7->_conn_configurationByIdentity;
    v7->_conn_configurationByIdentity = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    conn_roleToActivePosterConfiguration = v7->_conn_roleToActivePosterConfiguration;
    v7->_conn_roleToActivePosterConfiguration = dictionary2;

    v14 = objc_opt_new();
    conn_posterUUIDToSuggestions = v7->_conn_posterUUIDToSuggestions;
    v7->_conn_posterUUIDToSuggestions = v14;
  }

  return v7;
}

- (void)dealloc
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v17 = *(self + 8);
  v16 = v6;
  v7 = [v4 stringWithFormat:@"<%@:%@:%p> must be invalidated before dealloc"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_8(&dword_1C26FF000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, self, v18, v19);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_lock_invalidate
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_lock_invalidated)
  {
    self->_lock_invalidated = 1;
    [(BSServiceConnectionClient *)self->_lock_connection invalidate];
    lock_pathHandler = self->_lock_pathHandler;
    self->_lock_pathHandler = 0;

    lock_snapshotHandler = self->_lock_snapshotHandler;
    self->_lock_snapshotHandler = 0;

    [(RBSAssertion *)self->_lock_initialUpdateAssertion invalidate];
    lock_initialUpdateAssertion = self->_lock_initialUpdateAssertion;
    self->_lock_initialUpdateAssertion = 0;
  }
}

- (void)activateWithConfiguration:(id)configuration
{
  v95[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  NSClassFromString(&cfstr_Prswallpaperob_0.isa);
  if (!configurationCopy)
  {
    [PRSWallpaperObserver activateWithConfiguration:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSWallpaperObserver activateWithConfiguration:a2];
  }

  if (([configurationCopy isValid] & 1) == 0)
  {
    [(PRSWallpaperObserver *)self activateWithConfiguration:a2];
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_clientInvalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    v53 = MEMORY[0x1E696AEC0];
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    v56 = [v53 stringWithFormat:@"<%@:%@:%p> cannot be activated after invalidation", v55, self->_explanation, self];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [PRSWallpaperObserver activateWithConfiguration:];
    }

    v57 = v56;
    [v56 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1C2719DC4);
  }

  if (self->_lock_clientActivated)
  {
    [(PRSWallpaperObserver *)self _lock_invalidate];
    os_unfair_lock_unlock(&self->_lock);
    v58 = MEMORY[0x1E696AEC0];
    v59 = objc_opt_class();
    v60 = NSStringFromClass(v59);
    v61 = [v58 stringWithFormat:@"<%@:%@:%p> cannot be activated twice", v60, self->_explanation, self];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [PRSWallpaperObserver activateWithConfiguration:];
    }

    v62 = v61;
    [v61 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1C2719E58);
  }

  locationStateObserver = [configurationCopy locationStateObserver];

  snapshotObserver = [configurationCopy snapshotObserver];
  v74 = snapshotObserver != 0;

  activePosterRoleObserver = [configurationCopy activePosterRoleObserver];

  postersCollectionRoleObserver = [configurationCopy postersCollectionRoleObserver];

  if (locationStateObserver)
  {
    locationStateObserver2 = [configurationCopy locationStateObserver];
    self->_observed = [locationStateObserver2 locations];

    v11 = PRSWallpaperObserverLocationsDescription(self->_observed);
    active_observedDescription = self->_active_observedDescription;
    self->_active_observedDescription = v11;

    locationStateObserver3 = [configurationCopy locationStateObserver];
    handler = [locationStateObserver3 handler];
    lock_pathHandler = self->_lock_pathHandler;
    self->_lock_pathHandler = handler;

    if ((self->_observed & 0xF) == 0 || !self->_lock_pathHandler)
    {
      [(PRSWallpaperObserver *)self _lock_invalidate];
      os_unfair_lock_unlock(&self->_lock);
      v49 = MEMORY[0x1E696AEC0];
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = [v49 stringWithFormat:@"<%@:%@:%p> activated location state observer without observing anything", v51, self->_explanation, self];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [PRSWallpaperObserver activateWithConfiguration:];
      }

LABEL_47:
      v71 = v52;
      [v52 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1C2719D38);
    }
  }

  if (snapshotObserver)
  {
    snapshotObserver2 = [configurationCopy snapshotObserver];
    handler2 = [snapshotObserver2 handler];
    lock_snapshotHandler = self->_lock_snapshotHandler;
    self->_lock_snapshotHandler = handler2;

    if (!self->_lock_snapshotHandler)
    {
      [(PRSWallpaperObserver *)self _lock_invalidate];
      os_unfair_lock_unlock(&self->_lock);
      v63 = MEMORY[0x1E696AEC0];
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      v66 = [v63 stringWithFormat:@"<%@:%@:%p> activated snapshot observer without observing anything", v65, self->_explanation, self];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [PRSWallpaperObserver activateWithConfiguration:];
      }

      v67 = v66;
      [v66 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1C2719EF0);
    }
  }

  if (activePosterRoleObserver)
  {
    activePosterRoleObserver2 = [configurationCopy activePosterRoleObserver];
    lock_roleActivePosterObserver = self->_lock_roleActivePosterObserver;
    self->_lock_roleActivePosterObserver = activePosterRoleObserver2;

    roles = [(PRSPosterRoleActivePosterObserver *)self->_lock_roleActivePosterObserver roles];
    v22 = [roles copy];
    conn_activePosterRoles = self->_conn_activePosterRoles;
    self->_conn_activePosterRoles = v22;
  }

  if (postersCollectionRoleObserver)
  {
    postersCollectionRoleObserver2 = [configurationCopy postersCollectionRoleObserver];
    lock_rolePosterCollectionObserver = self->_lock_rolePosterCollectionObserver;
    self->_lock_rolePosterCollectionObserver = postersCollectionRoleObserver2;

    role = [(PRSPosterRoleCollectionObserver *)self->_lock_rolePosterCollectionObserver role];
    conn_knownPostersCollectionRole = self->_conn_knownPostersCollectionRole;
    self->_conn_knownPostersCollectionRole = role;

    goto LABEL_18;
  }

  if (!snapshotObserver && !locationStateObserver && !activePosterRoleObserver)
  {
    [(PRSWallpaperObserver *)self _lock_invalidate];
    os_unfair_lock_unlock(&self->_lock);
    v68 = MEMORY[0x1E696AEC0];
    v69 = objc_opt_class();
    v70 = NSStringFromClass(v69);
    v52 = [v68 stringWithFormat:@"<%@:%@:%p> activated without observing anything", v70, self->_explanation, self];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [PRSWallpaperObserver activateWithConfiguration:];
    }

    goto LABEL_47;
  }

LABEL_18:
  self->_lock_clientActivated = 1;
  if (!self->_lock_invalidated)
  {
    v76 = PRSWallpaperObserverInterface();
    v28 = MEMORY[0x1E698F498];
    identifier = [v76 identifier];
    v75 = [v28 endpointForMachName:@"com.apple.posterboardservices.services" service:identifier instance:0];

    if (v75)
    {
      objc_initWeak(&location, self);
      v30 = objc_opt_class();
      v73 = NSStringFromClass(v30);
      v72 = self->_explanation;
      v31 = self->_active_observedDescription;
      v32 = MEMORY[0x1E698F490];
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke;
      v88[3] = &unk_1E818D210;
      v88[4] = self;
      v90 = v74;
      v91 = activePosterRoleObserver != 0;
      v92 = postersCollectionRoleObserver != 0;
      v93 = locationStateObserver != 0;
      v33 = configurationCopy;
      v89 = v33;
      v34 = [v32 connectionWithEndpoint:v75 clientContextBuilder:v88];
      lock_connection = self->_lock_connection;
      self->_lock_connection = v34;

      v36 = self->_lock_connection;
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_2;
      v77[3] = &unk_1E818D2B0;
      v78 = v33;
      v79 = v76;
      selfCopy = self;
      objc_copyWeak(&v84, &location);
      v85 = locationStateObserver != 0;
      v86 = activePosterRoleObserver != 0;
      v87 = postersCollectionRoleObserver != 0;
      v37 = v73;
      v81 = v37;
      v38 = v72;
      v82 = v38;
      v39 = v31;
      v83 = v39;
      [(BSServiceConnectionClient *)v36 configureConnection:v77];
      if (locationStateObserver || activePosterRoleObserver || postersCollectionRoleObserver)
      {
        v40 = objc_alloc(MEMORY[0x1E69C7548]);
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"initializing PRSWallpaperObserver-%@", self->_explanation];
        remoteAssertionTarget = [(BSServiceConnectionClient *)self->_lock_connection remoteAssertionTarget];
        v43 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
        v95[0] = v43;
        v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:1];
        v45 = [v40 initWithExplanation:v41 target:remoteAssertionTarget attributes:v44];
        lock_initialUpdateAssertion = self->_lock_initialUpdateAssertion;
        self->_lock_initialUpdateAssertion = v45;

        [(RBSAssertion *)self->_lock_initialUpdateAssertion acquireWithInvalidationHandler:0];
      }

      [(BSServiceConnectionClient *)self->_lock_connection activate];

      objc_destroyWeak(&v84);
      objc_destroyWeak(&location);
    }

    else
    {
      v47 = PRSLogObserver();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [(PRSWallpaperObserver *)self activateWithConfiguration:v47];
      }

      [(PRSWallpaperObserver *)self _lock_invalidate];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v48 = *MEMORY[0x1E69E9840];
}

void __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 encodeObject:*(*(a1 + 32) + 8) forKey:@"explanation"];
  [v6 encodeUInt64:*(*(a1 + 32) + 56) forKey:@"observedLocations"];
  [v6 encodeBool:*(a1 + 48) forKey:@"snapshotObservation"];
  [v6 encodeBool:*(a1 + 49) forKey:@"roleObservation"];
  if (*(a1 + 49) == 1)
  {
    v3 = [*(*(a1 + 32) + 40) roles];
    [v6 encodeCollection:v3 forKey:@"observedRoles"];

    [v6 encodeBool:objc_msgSend(*(*(a1 + 32) + 40) forKey:{"needsSandboxExtensions"), @"observedRolesNeedSandboxExtensions"}];
  }

  [v6 encodeBool:*(a1 + 50) forKey:@"collectionObserving"];
  if (*(a1 + 50) == 1)
  {
    v4 = [*(*(a1 + 32) + 48) role];
    [v6 encodeObject:v4 forKey:@"collectionObservingRole"];

    [v6 encodeBool:objc_msgSend(*(*(a1 + 32) + 48) forKey:{"needsSandboxExtensions"), @"collectionObservingNeedsSandboxExtensions"}];
  }

  if (*(a1 + 51) == 1)
  {
    v5 = [*(a1 + 40) locationStateObserver];
    [v6 encodeBool:objc_msgSend(v5 forKey:{"needsSandboxExtensions"), @"needsSandboxExtensions"}];
  }
}

void __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSDefaultServiceQuality();
  [v3 setServiceQuality:v4];

  [v3 setTargetQueue:*(*(a1 + 32) + 8)];
  [v3 setInterface:*(a1 + 40)];
  [v3 setInterfaceTarget:*(a1 + 48)];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_3;
  v15[3] = &unk_1E818D238;
  objc_copyWeak(&v19, (a1 + 80));
  v20 = *(a1 + 88);
  v21 = *(a1 + 89);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  [v3 setActivationHandler:v15];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_174;
  v10[3] = &unk_1E818D260;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  objc_copyWeak(&v14, (a1 + 80));
  v13 = *(a1 + 72);
  [v3 setInterruptionHandler:v10];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_175;
  v5[3] = &unk_1E818D288;
  objc_copyWeak(&v9, (a1 + 80));
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  [v3 setInvalidationHandler:v5];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&v19);
}

void __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = [v3 remoteTarget];
    v6 = v5;
    if (v5)
    {
      if (*(a1 + 64) == 1)
      {
        v59 = v5;
        v61 = v3;
        v7 = 0;
        v8 = WeakRetained + 80;
        v9 = 4;
        v10 = (WeakRetained + 80);
        do
        {
          if (*v10)
          {
            if (!v7)
            {
              v7 = [MEMORY[0x1E695DFA8] setWithCapacity:v9];
              v11 = *v10;
            }

            [v7 addObject:?];
          }

          ++v10;
          --v9;
        }

        while (v9);
        v57 = a1;
        v65 = WeakRetained;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v12 = v7;
        v13 = [v12 countByEnumeratingWithState:&v71 objects:v86 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = *v72;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v72 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v18 = *(*(&v71 + 1) + 8 * i);
              v19 = objc_alloc_init(PRSWallpaperObserverPathUpdate);
              [(PRSWallpaperObserverPathUpdate *)v19 setIdentity:v18];
              v20 = 0;
              v21 = 0;
              do
              {
                if ([v18 isEqual:*&v8[8 * v20]])
                {
                  v21 |= PRSWallpaperObserverLocationsFromIndex(v20);
                }

                ++v20;
              }

              while (v20 != 4);
              [(PRSWallpaperObserverPathUpdate *)v19 setLocations:v21];
              if (!v15)
              {
                v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
              }

              [(PRSPosterRoleCollectionObserverUpdate *)v15 addObject:v19];
            }

            v14 = [v12 countByEnumeratingWithState:&v71 objects:v86 count:16];
          }

          while (v14);
        }

        else
        {
          v15 = 0;
        }

        v6 = v59;
        v3 = v61;
        WeakRetained = v65;
        a1 = v57;
      }

      else
      {
        v15 = 0;
      }

      if (*(a1 + 65) == 1)
      {
        v66 = objc_opt_new();
        if ([*(WeakRetained + 19) count])
        {
          v56 = v15;
          v58 = a1;
          v60 = v6;
          v62 = v3;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          obj = *(WeakRetained + 19);
          v22 = [obj countByEnumeratingWithState:&v67 objects:v85 count:16];
          if (v22)
          {
            v23 = v22;
            v64 = *v68;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v68 != v64)
                {
                  objc_enumerationMutation(obj);
                }

                v25 = *(*(&v67 + 1) + 8 * j);
                v26 = [*(WeakRetained + 17) objectForKeyedSubscript:v25];
                v27 = [v26 _path];
                v28 = [v27 serverIdentity];
                v29 = [v28 posterUUID];

                v30 = [*(WeakRetained + 18) objectForKey:v29];
                __PFServerPosterPathFromPFPosterContents();
                v32 = v31 = WeakRetained;
                v33 = [v30 bs_mapNoNulls:v32];

                WeakRetained = v31;
                v34 = [[PRSRoleActivePosterObserverUpdate alloc] initWithRole:v25 activePath:v27 suggestionDescriptors:v33];
                [(PRSPosterRoleCollectionObserverUpdate *)v66 addObject:v34];
              }

              v23 = [obj countByEnumeratingWithState:&v67 objects:v85 count:16];
            }

            while (v23);
          }

          v6 = v60;
          v3 = v62;
          v15 = v56;
          a1 = v58;
        }
      }

      else
      {
        v66 = 0;
      }

      if (*(a1 + 66) == 1 && [*(WeakRetained + 15) count] && *(WeakRetained + 16))
      {
        v35 = [PRSPosterRoleCollectionObserverUpdate alloc];
        v36 = *(WeakRetained + 16);
        v37 = [*(WeakRetained + 15) copy];
        v38 = [(PRSPosterRoleCollectionObserverUpdate *)v35 initWithRole:v36 posterCollection:v37];
      }

      else
      {
        v38 = 0;
      }

      v39 = PRSLogObserver();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a1 + 32);
        v41 = *(a1 + 40);
        v42 = *(a1 + 48);
        *buf = 138544130;
        v76 = v40;
        v77 = 2114;
        v78 = v41;
        v79 = 2048;
        v80 = WeakRetained;
        v81 = 2114;
        v82 = v42;
        _os_log_impl(&dword_1C26FF000, v39, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> received activation reply - sending known data...", buf, 0x2Au);
      }

      if (v15)
      {
        v43 = PRSLogObserver();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(a1 + 32);
          v45 = *(a1 + 40);
          v46 = *(a1 + 48);
          *buf = 138544386;
          v76 = v44;
          v77 = 2114;
          v78 = v45;
          v79 = 2048;
          v80 = WeakRetained;
          v81 = 2114;
          v82 = v46;
          v83 = 2114;
          v84 = v15;
          _os_log_impl(&dword_1C26FF000, v43, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> known identities of %{public}@", buf, 0x34u);
        }
      }

      if (v66)
      {
        v47 = PRSLogObserver();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = *(a1 + 32);
          v49 = *(a1 + 40);
          v50 = *(a1 + 48);
          *buf = 138544386;
          v76 = v48;
          v77 = 2114;
          v78 = v49;
          v79 = 2048;
          v80 = WeakRetained;
          v81 = 2114;
          v82 = v50;
          v83 = 2114;
          v84 = v66;
          _os_log_impl(&dword_1C26FF000, v47, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> known roles of %{public}@", buf, 0x34u);
        }
      }

      if (v38)
      {
        v51 = PRSLogObserver();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = *(a1 + 32);
          v53 = *(a1 + 40);
          v54 = *(a1 + 48);
          *buf = 138544386;
          v76 = v52;
          v77 = 2114;
          v78 = v53;
          v79 = 2048;
          v80 = WeakRetained;
          v81 = 2114;
          v82 = v54;
          v83 = 2114;
          v84 = v38;
          _os_log_impl(&dword_1C26FF000, v51, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> known posters for role of %{public}@", buf, 0x34u);
        }
      }

      [v6 initializeWithKnownIdentities:v15 knownRoles:v66 knownCollection:v38];
    }
  }

  v55 = *MEMORY[0x1E69E9840];
}

void __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_174(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRSLogObserver();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v8 = *(a1 + 48);
    v10 = 138544130;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    v14 = 2048;
    v15 = WeakRetained;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_1C26FF000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> reactivating after interrupt", &v10, 0x2Au);
  }

  [v3 activate];
  v9 = *MEMORY[0x1E69E9840];
}

void __50__PRSWallpaperObserver_activateWithConfiguration___block_invoke_175(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = PRSLogObserver();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = 138544130;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    v12 = 2048;
    v13 = WeakRetained;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1C26FF000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> remotely invalidated", &v8, 0x2Au);
  }

  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 40);
    [(os_unfair_lock_s *)WeakRetained _lock_invalidate];
    os_unfair_lock_unlock(WeakRetained + 40);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_clientInvalidated)
  {
    self->_lock_clientInvalidated = 1;
    v3 = PRSLogObserver();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      explanation = self->_explanation;
      v8 = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = explanation;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C26FF000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p> client invalidated", &v8, 0x20u);
    }

    [(PRSWallpaperObserver *)self _lock_invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)notifyWallpaperUpdates:(id)updates
{
  v99 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = PRSLogObserver();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    explanation = self->_explanation;
    active_observedDescription = self->_active_observedDescription;
    *buf = 138544386;
    v87 = v7;
    v88 = 2114;
    v89 = explanation;
    v90 = 2048;
    selfCopy4 = self;
    v92 = 2114;
    v93 = active_observedDescription;
    v94 = 2114;
    v95 = updatesCopy;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> received updates=%{public}@", buf, 0x34u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_51;
  }

  if (!self->_lock_pathHandler)
  {
    [(PRSWallpaperObserver *)self notifyWallpaperUpdates:a2];
  }

  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v77[3] = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  if (![updatesCopy count])
  {
    LOBYTE(v30) = 0;
    LOBYTE(v31) = 1;
    *(v83 + 24) = 1;
    goto LABEL_38;
  }

  v72 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  obj = updatesCopy;
  v13 = [obj countByEnumeratingWithState:&v69 objects:v98 count:16];
  if (!v13)
  {
    v30 = 0;
    goto LABEL_33;
  }

  v57 = *v70;
  while (2)
  {
    v56 = v13;
    for (i = 0; i != v56; ++i)
    {
      if (*v70 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v69 + 1) + 8 * i);
      path = [v15 path];
      identity = [path identity];
      if (!identity)
      {
        identity = [v15 identity];
        if (!identity)
        {
          v30 = 0;
          *(v83 + 24) = 1;
          goto LABEL_32;
        }
      }

      conn_configurationByIdentity = self->_conn_configurationByIdentity;
      if (path)
      {
        v19 = [[PRSPosterConfiguration alloc] _initWithPath:path];
        [(NSMutableDictionary *)conn_configurationByIdentity setObject:v19 forKey:identity];

        *(v74 + 24) = 1;
      }

      else
      {
        v20 = [(NSMutableDictionary *)self->_conn_configurationByIdentity objectForKey:identity];
        _path = [v20 _path];
        serverIdentity = [_path serverIdentity];

        identity = serverIdentity;
        if (!serverIdentity)
        {
          path = PRSLogObserver();
          if (os_log_type_enabled(path, OS_LOG_TYPE_FAULT))
          {
            v50 = objc_opt_class();
            v51 = NSStringFromClass(v50);
            v52 = self->_explanation;
            v53 = self->_active_observedDescription;
            identity2 = [v15 identity];
            *buf = 138544642;
            v87 = v51;
            v88 = 2114;
            v89 = v52;
            v90 = 2048;
            selfCopy4 = self;
            v92 = 2114;
            v93 = v53;
            v94 = 2114;
            v95 = identity2;
            v96 = 2114;
            v97 = obj;
            _os_log_fault_impl(&dword_1C26FF000, path, OS_LOG_TYPE_FAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> received update that assumes a previous update for %{public}@ that we don't have : updates=%{public}@", buf, 0x3Eu);
          }

          v30 = 1;
          goto LABEL_32;
        }
      }

      v23 = [v15 locations] & 0xF;
      if (!v23)
      {
        *(v83 + 24) = 1;

LABEL_31:
        v30 = 0;
LABEL_32:

        goto LABEL_33;
      }

      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v60 = __47__PRSWallpaperObserver_notifyWallpaperUpdates___block_invoke;
      v61 = &unk_1E818D2D8;
      v66 = &v82;
      v65 = v77;
      selfCopy3 = self;
      v24 = identity;
      v67 = &v73;
      v68 = &v78;
      v63 = v24;
      v64 = v15;
      v25 = v59;
      v26 = 0;
      buf[0] = 0;
      v27 = vcnt_s8(v23);
      v27.i16[0] = vaddlv_u8(v27);
      v28 = v27.i32[0];
      do
      {
        if (((1 << v26) & v23) != 0)
        {
          v60(v25);
          if (buf[0])
          {
            break;
          }

          --v28;
        }

        if (v26 > 0x3E)
        {
          break;
        }

        ++v26;
      }

      while (v28 > 0);

      v29 = *(v83 + 24);
      if (v29)
      {
        goto LABEL_31;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v69 objects:v98 count:16];
    v30 = 0;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_33:

  v32 = MEMORY[0x1E695DFA8];
  allKeys = [(NSMutableDictionary *)self->_conn_configurationByIdentity allKeys];
  v34 = [v32 setWithArray:allKeys];

  for (j = 0; j != 4; ++j)
  {
    if (self->_conn_identityLocations[j])
    {
      [v34 removeObject:?];
    }
  }

  v36 = self->_conn_configurationByIdentity;
  allObjects = [v34 allObjects];
  [(NSMutableDictionary *)v36 removeObjectsForKeys:allObjects];

  v31 = *(v83 + 24);
  if ((v30 | v31))
  {
LABEL_38:
    if (v30 & 1) == 0 && (v31)
    {
      v38 = PRSLogObserver();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        v46 = objc_opt_class();
        v47 = NSStringFromClass(v46);
        v48 = self->_explanation;
        v49 = self->_active_observedDescription;
        *buf = 138544386;
        v87 = v47;
        v88 = 2114;
        v89 = v48;
        v90 = 2048;
        selfCopy4 = self;
        v92 = 2114;
        v93 = v49;
        v94 = 2114;
        v95 = updatesCopy;
        _os_log_fault_impl(&dword_1C26FF000, v38, OS_LOG_TYPE_FAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> received incoherent updates : updates=%{public}@", buf, 0x34u);
      }
    }

    [(PRSWallpaperObserver *)self _lock_invalidate];
  }

  if (self->_lock_pathHandler && ((v74[3] & 1) != 0 || v79[3]))
  {
    self->_lock_initialLocationStateUpdateWasSent = 1;
    v10 = MEMORY[0x1C691D2A0]();
    v39 = [PRSWallpaperObserverState alloc];
    v40 = [(NSMutableDictionary *)self->_conn_configurationByIdentity objectForKey:self->_conn_identityLocations[0]];
    v41 = [(NSMutableDictionary *)self->_conn_configurationByIdentity objectForKey:self->_conn_identityLocations[1]];
    v42 = [(NSMutableDictionary *)self->_conn_configurationByIdentity objectForKey:self->_conn_identityLocations[2]];
    v43 = [(NSMutableDictionary *)self->_conn_configurationByIdentity objectForKey:self->_conn_identityLocations[3]];
    v11 = [(PRSWallpaperObserverState *)v39 _initWithSelectedLock:v40 selectedHome:v41 activeLock:v42 activeHome:v43];

    v44 = [PRSWallpaperObserverTransition alloc];
    v12 = [(PRSWallpaperObserverTransition *)v44 _initWithChanged:v79[3]];
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(v77, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    (v10)[2](v10, v11, v12);
  }

LABEL_51:

  v45 = *MEMORY[0x1E69E9840];
}

uint64_t __47__PRSWallpaperObserver_notifyWallpaperUpdates___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = result;
  if ((a2 & ~*(*(*(result + 56) + 8) + 24)) != 0)
  {
    v6 = PRSWallpaperObserverLocationsToIndex(a2);
    v7 = *(v4 + 40);
    v8 = *(v4 + 32) + 8 * v6;
    v10 = *(v8 + 80);
    v9 = (v8 + 80);
    if (v10 != v7)
    {
      objc_storeStrong(v9, v7);
      *(*(*(v4 + 72) + 8) + 24) = 1;
      *(*(*(v4 + 80) + 8) + 24) |= a2;
    }

    *(*(*(v4 + 56) + 8) + 24) |= a2;
    result = [*(v4 + 48) changed];
    if ((a2 & ~result) == 0)
    {
      *(*(*(v4 + 80) + 8) + 24) |= a2;
    }
  }

  else
  {
    *(*(*(result + 64) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)notifySnapshotUpdates:(id)updates
{
  v38 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = PRSLogObserver();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    explanation = self->_explanation;
    active_observedDescription = self->_active_observedDescription;
    *buf = 138544386;
    v29 = v7;
    v30 = 2114;
    v31 = explanation;
    v32 = 2048;
    selfCopy = self;
    v34 = 2114;
    v35 = active_observedDescription;
    v36 = 2114;
    v37 = updatesCopy;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> received snapshot updates=%{public}@", buf, 0x34u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v10 = MEMORY[0x1C691D2A0](self->_lock_snapshotHandler);
    os_unfair_lock_unlock(&self->_lock);
    if (v10)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = updatesCopy;
      v11 = updatesCopy;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * v15);
            v17 = [PRSPosterConfiguration alloc];
            path = [v16 path];
            v19 = [(PRSPosterConfiguration *)v17 _initWithPath:path];

            snapshotType = [v16 snapshotType];
            (v10)[2](v10, v19, snapshotType);

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      updatesCopy = v22;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)notifyRoleActivePosterUpdates:(id)updates
{
  v68 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = PRSLogObserver();
  selfCopy = self;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    explanation = self->_explanation;
    active_observedDescription = self->_active_observedDescription;
    *buf = 138544386;
    v59 = v7;
    v60 = 2114;
    v61 = explanation;
    v62 = 2048;
    selfCopy2 = self;
    v64 = 2114;
    v65 = active_observedDescription;
    v66 = 2114;
    v67 = updatesCopy;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> received role updates=%{public}@", buf, 0x34u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    v10 = 0;
    v11 = 0;
    goto LABEL_38;
  }

  v40 = self->_lock_roleActivePosterObserver;
  v41 = updatesCopy;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = updatesCopy;
  v44 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v44)
  {
    v45 = 0;
    v43 = *v53;
    while (1)
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v53 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v52 + 1) + 8 * i);
        role = [v13 role];
        activePath = [v13 activePath];
        v16 = [(NSMutableDictionary *)self->_conn_roleToActivePosterConfiguration objectForKey:role];
        _path = [v16 _path];

        [activePath serverIdentity];
        v19 = v18 = self;
        posterUUID = [v19 posterUUID];

        serverIdentity = [_path serverIdentity];
        posterUUID2 = [serverIdentity posterUUID];

        suggestionDescriptors = [v13 suggestionDescriptors];
        v24 = [(NSMutableDictionary *)v18->_conn_posterUUIDToSuggestions objectForKey:posterUUID];
        v25 = __PFServerPosterPathFromPFPosterContents();
        v47 = [v24 bs_mapNoNulls:v25];

        if (_path)
        {
          serverIdentity2 = [_path serverIdentity];
          serverIdentity3 = [activePath serverIdentity];
          if ([serverIdentity2 isEqual:serverIdentity3])
          {
            v28 = BSEqualArrays();

            if (v28)
            {
              goto LABEL_24;
            }
          }

          else
          {
          }
        }

        v29 = [suggestionDescriptors bs_mapNoNulls:&__block_literal_global_10];
        v30 = [[PRSPosterConfiguration alloc] _initWithPath:activePath];
        [(NSMutableDictionary *)selfCopy->_conn_roleToActivePosterConfiguration setObject:v30 forKeyedSubscript:role];
        if (posterUUID2)
        {
          [(NSMutableDictionary *)selfCopy->_conn_posterUUIDToSuggestions removeObjectForKey:posterUUID2];
        }

        if (posterUUID)
        {
          v31 = [v29 count];
          conn_posterUUIDToSuggestions = selfCopy->_conn_posterUUIDToSuggestions;
          if (v31)
          {
            [(NSMutableDictionary *)conn_posterUUIDToSuggestions setObject:v29 forKey:posterUUID];
          }

          else
          {
            [(NSMutableDictionary *)conn_posterUUIDToSuggestions removeObjectForKey:posterUUID];
          }
        }

        v33 = [[PRSPosterRoleActivePosterObserverState alloc] initWithRole:role activePoster:v30 suggestions:v29];
        v34 = v45;
        if (!v45)
        {
          v34 = objc_opt_new();
        }

        v45 = v34;
        [v34 addObject:v33];

LABEL_24:
        self = selfCopy;
      }

      v44 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (!v44)
      {
        goto LABEL_28;
      }
    }
  }

  v45 = 0;
LABEL_28:

  os_unfair_lock_unlock(&self->_lock);
  v10 = v40;
  if (v40)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = v45;
    v35 = [v11 countByEnumeratingWithState:&v48 objects:v56 count:16];
    updatesCopy = v41;
    if (v35)
    {
      v36 = v35;
      v37 = *v49;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v49 != v37)
          {
            objc_enumerationMutation(v11);
          }

          [(PRSPosterRoleActivePosterObserver *)v10 issueUpdatedState:*(*(&v48 + 1) + 8 * j), v40];
        }

        v36 = [v11 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v36);
    }
  }

  else
  {
    updatesCopy = v41;
    v11 = v45;
  }

LABEL_38:

  v39 = *MEMORY[0x1E69E9840];
}

id __54__PRSWallpaperObserver_notifyRoleActivePosterUpdates___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRSPosterDescriptor alloc] _initWithPath:v2];

  return v3;
}

- (void)notifyRolePosterCollectionUpdates:(id)updates
{
  v66 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = PRSLogObserver();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    explanation = self->_explanation;
    active_observedDescription = self->_active_observedDescription;
    *buf = 138544386;
    v57 = v7;
    v58 = 2114;
    v59 = explanation;
    v60 = 2048;
    selfCopy = self;
    v62 = 2114;
    v63 = active_observedDescription;
    v64 = 2114;
    v65 = updatesCopy;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%{public}@:%p observed=(%{public}@)> received role updates=%{public}@", buf, 0x34u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    v10 = 0;
    v11 = 0;
    goto LABEL_37;
  }

  v10 = self->_lock_rolePosterCollectionObserver;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v39 = updatesCopy;
  v12 = updatesCopy;
  v45 = [v12 countByEnumeratingWithState:&v50 objects:v55 count:16];
  v11 = 0;
  if (v45)
  {
    v13 = *v51;
    selfCopy2 = self;
    v43 = v10;
    v40 = *v51;
    v41 = v12;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v15 = *(*(&v50 + 1) + 8 * i);
        role = [v15 role];
        role2 = [(PRSPosterRoleCollectionObserver *)v10 role];
        v18 = [role isEqual:role2];

        if (v18)
        {
          posterCollection = [v15 posterCollection];
          v20 = self->_conn_knownPostersCollection;
          v21 = [posterCollection count];
          if (v21 != [(NSArray *)v20 count])
          {
            goto LABEL_20;
          }

          if ([posterCollection count])
          {
            v44 = v11;
            v22 = 0;
            do
            {
              v23 = [(NSArray *)v20 objectAtIndexedSubscript:v22];
              v24 = [posterCollection objectAtIndexedSubscript:v22];
              serverIdentity = [v23 serverIdentity];
              serverIdentity2 = [v24 serverIdentity];
              v27 = BSEqualObjects();

              if ((v27 & 1) == 0)
              {
                break;
              }

              ++v22;
            }

            while (v22 < [posterCollection count]);
            v28 = v27 ^ 1;
            self = selfCopy2;
            v10 = v43;
            v11 = v44;
            v13 = v40;
            v12 = v41;
            if (!posterCollection)
            {
LABEL_20:
              v29 = [posterCollection copy];
              conn_knownPostersCollection = self->_conn_knownPostersCollection;
              self->_conn_knownPostersCollection = v29;

              v31 = [[PRSPosterRoleCollectionObserverUpdate alloc] initWithRole:role posterCollection:posterCollection];
              if (!v11)
              {
                v11 = objc_opt_new();
              }

              [v11 addObject:v31];

              goto LABEL_23;
            }
          }

          else
          {
            v28 = 0;
            if (!posterCollection)
            {
              goto LABEL_20;
            }
          }

          if (v28)
          {
            goto LABEL_20;
          }

LABEL_23:
        }
      }

      v45 = [v12 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v45);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    updatesCopy = v39;
    if ([v11 count])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v32 = v11;
      v33 = [v32 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v47;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v47 != v35)
            {
              objc_enumerationMutation(v32);
            }

            posterCollection2 = [*(*(&v46 + 1) + 8 * j) posterCollection];
            [(PRSPosterRoleCollectionObserver *)v10 issueUpdatedState:posterCollection2];
          }

          v34 = [v32 countByEnumeratingWithState:&v46 objects:v54 count:16];
        }

        while (v34);
      }

      v11 = v32;
    }
  }

  else
  {
    updatesCopy = v39;
  }

LABEL_37:

  v38 = *MEMORY[0x1E69E9840];
}

- (void)notifyInitialUpdatesComplete
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_clientInvalidated)
  {
    [(RBSAssertion *)self->_lock_initialUpdateAssertion invalidate];
    lock_initialUpdateAssertion = self->_lock_initialUpdateAssertion;
    self->_lock_initialUpdateAssertion = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)initWithExplanation:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"explanation", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithConfiguration:(char *)a1 .cold.1(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSWallpaperObserverConfigurationClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithConfiguration:(uint64_t)a1 .cold.2(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v18 = *(a1 + 8);
  v17 = v6;
  v7 = [v4 stringWithFormat:@"<%@:%@:%p> cannot be activated with an invalid configuration"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_8(&dword_1C26FF000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v17, v18, a1, v19, v20);
  }

  v16 = v7;
  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activateWithConfiguration:.cold.3()
{
  OUTLINED_FUNCTION_7();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)activateWithConfiguration:(uint64_t)a1 .cold.4(uint64_t a1, NSObject *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 64);
  v9 = 138544130;
  v10 = v5;
  v11 = 2114;
  v12 = v6;
  v13 = 2048;
  v14 = a1;
  v15 = 2114;
  v16 = v7;
  _os_log_error_impl(&dword_1C26FF000, a2, OS_LOG_TYPE_ERROR, "<%{public}@:%{public}@:%p observed=(%{public}@)> failed to lookup endpoint", &v9, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)activateWithConfiguration:.cold.5()
{
  OUTLINED_FUNCTION_7();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)activateWithConfiguration:.cold.6()
{
  OUTLINED_FUNCTION_7();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)activateWithConfiguration:.cold.7()
{
  OUTLINED_FUNCTION_7();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)activateWithConfiguration:.cold.8()
{
  OUTLINED_FUNCTION_7();
  v11 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_1C26FF000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)activateWithConfiguration:(char *)a1 .cold.9(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)notifyWallpaperUpdates:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v19 = *(a1 + 64);
  v17 = v6;
  v18 = *(a1 + 8);
  v7 = [v4 stringWithFormat:@"<%@:%@:%p observed=(%@)> it should be impossible for us to have an nil path handler at this point"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_8(&dword_1C26FF000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v17, v18, a1, v19, v20);
  }

  v16 = v7;
  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end