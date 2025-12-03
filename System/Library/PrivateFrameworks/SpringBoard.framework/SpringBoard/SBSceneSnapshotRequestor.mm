@interface SBSceneSnapshotRequestor
- (BOOL)handleSnapshotRequestAction:(id)action forSceneHandle:(id)handle;
- (SBSceneSnapshotRequestor)initWithDelegate:(id)delegate;
- (SBSceneSnapshotRequestorDelegate)delegate;
- (id)_debugName;
- (id)_displayItemLayoutAttributesProvider;
- (id)_fbsSceneSnapshotRequestsFromSBSceneSnapshotRequests:(id)requests forSceneHandle:(id)handle settings:(id)settings snapshotRequestContext:(id)context;
- (id)_sbSceneSnapshotRequestsForSceneHandle:(id)handle settings:(id)settings snapshotRequestContext:(id)context;
- (id)_sceneSnapshotRequestContext;
- (id)_sceneSnapshotRequestStrategy;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)preventTakingSupplementalSnapshotsForBackgroundingScenesWithReason:(id)reason;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)invalidate;
- (void)invalidatePendingSnapshotsForSceneID:(id)d;
- (void)requestSnapshotsForSceneHandle:(id)handle updatingToNewSettings:(id)settings withUpdateContext:(id)context;
@end

@implementation SBSceneSnapshotRequestor

- (SBSceneSnapshotRequestor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = SBSceneSnapshotRequestor;
  v5 = [(SBSceneSnapshotRequestor *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    outgoingSnapshots = v6->_outgoingSnapshots;
    v6->_outgoingSnapshots = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    incomingSnapshots = v6->_incomingSnapshots;
    v6->_incomingSnapshots = v9;
  }

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSceneSnapshotRequestor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  _debugName = [(SBSceneSnapshotRequestor *)self _debugName];
  v5 = [v3 appendObject:_debugName withName:@"debugName"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSceneSnapshotRequestor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBSceneSnapshotRequestor *)self succinctDescriptionBuilder];
  _sceneSnapshotRequestStrategy = [(SBSceneSnapshotRequestor *)self _sceneSnapshotRequestStrategy];
  v6 = [succinctDescriptionBuilder appendObject:_sceneSnapshotRequestStrategy withName:@"strategy"];

  v7 = [succinctDescriptionBuilder appendUnsignedInteger:-[NSMutableSet count](self->_incomingSnapshots withName:{"count"), @"incomingSnapshots.count"}];
  v8 = [succinctDescriptionBuilder appendUnsignedInteger:-[NSMutableSet count](self->_outgoingSnapshots withName:{"count"), @"outgoingSnapshots.count"}];

  return succinctDescriptionBuilder;
}

- (void)invalidate
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_outgoingSnapshots;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v17 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_incomingSnapshots;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) invalidate];
      }

      while (v10 != v12);
      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

- (id)preventTakingSupplementalSnapshotsForBackgroundingScenesWithReason:(id)reason
{
  reasonCopy = reason;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277CF0CE8]);
  v6 = MEMORY[0x277D85CD0];
  v7 = MEMORY[0x277D85CD0];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __95__SBSceneSnapshotRequestor_preventTakingSupplementalSnapshotsForBackgroundingScenesWithReason___block_invoke;
  v16 = &unk_2783A9070;
  objc_copyWeak(&v17, &location);
  v8 = [v5 initWithIdentifier:@"SBSceneSnapshotRequestor.PreventSupplementalSnapshots" forReason:reasonCopy queue:v6 invalidationBlock:&v13];

  preventSupplementalSnapshotsAssertions = self->_preventSupplementalSnapshotsAssertions;
  if (!preventSupplementalSnapshotsAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v11 = self->_preventSupplementalSnapshotsAssertions;
    self->_preventSupplementalSnapshotsAssertions = weakObjectsHashTable;

    preventSupplementalSnapshotsAssertions = self->_preventSupplementalSnapshotsAssertions;
  }

  [(NSHashTable *)preventSupplementalSnapshotsAssertions addObject:v8, v13, v14, v15, v16];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v8;
}

void __95__SBSceneSnapshotRequestor_preventTakingSupplementalSnapshotsForBackgroundingScenesWithReason___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 3);
    [v5 removeObject:v7];
    if (![v5 count])
    {
      v6 = v4[3];
      v4[3] = 0;
    }
  }
}

- (void)requestSnapshotsForSceneHandle:(id)handle updatingToNewSettings:(id)settings withUpdateContext:(id)context
{
  v124 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  settingsCopy = settings;
  contextCopy = context;
  v92 = handleCopy;
  if (!handleCopy)
  {
    [SBSceneSnapshotRequestor requestSnapshotsForSceneHandle:updatingToNewSettings:withUpdateContext:];
  }

  v90 = settingsCopy;
  if (!settingsCopy)
  {
    [SBSceneSnapshotRequestor requestSnapshotsForSceneHandle:updatingToNewSettings:withUpdateContext:];
  }

  if (!contextCopy)
  {
    [SBSceneSnapshotRequestor requestSnapshotsForSceneHandle:updatingToNewSettings:withUpdateContext:];
  }

  scene = [handleCopy scene];
  application = [handleCopy application];
  info = [application info];

  v10 = info;
  if (([info disablesSnapshots] & 1) == 0)
  {
    settings = [scene settings];
    if ([settings isForeground])
    {
      v85 = [settingsCopy isForeground] ^ 1;
    }

    else
    {
      v85 = 0;
    }

    if ([settings isForeground])
    {
      isForeground = 0;
    }

    else
    {
      isForeground = [settingsCopy isForeground];
    }

    transitionContext = [contextCopy transitionContext];
    watchdogTransitionContext = [transitionContext watchdogTransitionContext];
    watchdogBehavior = [watchdogTransitionContext watchdogBehavior];

    if (v85)
    {
      v14 = @"we are taking new snapshots";
    }

    else
    {
      if (watchdogBehavior == 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = isForeground;
      }

      if (v15 != 1)
      {
LABEL_88:

        v10 = info;
        goto LABEL_89;
      }

      v14 = @"(unknown)";
      if (watchdogBehavior == 1)
      {
        v14 = @"another scene update with a watchdog is happening";
      }

      if (isForeground)
      {
        v14 = @"the scene is moving to the foreground";
      }
    }

    v94 = v14;
    identifier = [scene identifier];
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v17 = [(NSMutableSet *)self->_outgoingSnapshots copy];
    v18 = [v17 countByEnumeratingWithState:&v112 objects:v123 count:16];
    if (v18)
    {
      v19 = *v113;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v113 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v112 + 1) + 8 * i);
          sceneID = [v21 sceneID];
          v23 = [identifier isEqualToString:sceneID];

          if (v23)
          {
            v24 = SBLogSceneSnapshots();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              succinctDescription = [(SBSceneSnapshotRequestor *)self succinctDescription];
              identifier2 = [scene identifier];
              v27 = objc_opt_class();
              v28 = NSStringFromClass(v27);
              *buf = 138544386;
              *&buf[4] = succinctDescription;
              *&buf[12] = 2114;
              *&buf[14] = identifier2;
              *&buf[22] = 2114;
              *v122 = v28;
              *&v122[8] = 2050;
              *&v122[10] = v21;
              *&v122[18] = 2114;
              *&v122[20] = v94;
              _os_log_debug_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEBUG, "%{public}@ [%{public}@] Cancelling outgoing snapshot action <%{public}@ %{public}p> because %{public}@", buf, 0x34u);
            }

            [v21 invalidate];
            [(NSMutableSet *)self->_outgoingSnapshots removeObject:v21];
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v112 objects:v123 count:16];
      }

      while (v18);
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v29 = [(NSMutableSet *)self->_incomingSnapshots copy];
    v30 = [v29 countByEnumeratingWithState:&v108 objects:v120 count:16];
    if (v30)
    {
      v31 = *v109;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v109 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v108 + 1) + 8 * j);
          context = [v33 context];
          sceneID2 = [context sceneID];
          v36 = [identifier isEqualToString:sceneID2];

          if (v36)
          {
            v37 = SBLogSceneSnapshots();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              succinctDescription2 = [(SBSceneSnapshotRequestor *)self succinctDescription];
              identifier3 = [scene identifier];
              v41 = objc_opt_class();
              v42 = NSStringFromClass(v41);
              *buf = 138544386;
              *&buf[4] = succinctDescription2;
              *&buf[12] = 2114;
              *&buf[14] = identifier3;
              *&buf[22] = 2114;
              *v122 = v42;
              *&v122[8] = 2050;
              *&v122[10] = v33;
              *&v122[18] = 2114;
              *&v122[20] = v94;
              _os_log_debug_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEBUG, "%{public}@ [%{public}@] Cancelling incoming snapshot action <%{public}@ %{public}p> because %{public}@", buf, 0x34u);
            }

            v38 = FBSSceneSnapshotActionResponseForErrorCode();
            [v33 sendResponse:v38];

            [(NSMutableSet *)self->_incomingSnapshots removeObject:v33];
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v108 objects:v120 count:16];
      }

      while (v30);
    }

    if (v85)
    {
      _sceneSnapshotRequestContext = [(SBSceneSnapshotRequestor *)self _sceneSnapshotRequestContext];
      v93 = [(SBSceneSnapshotRequestor *)self _sbSceneSnapshotRequestsForSceneHandle:v92 settings:v90 snapshotRequestContext:_sceneSnapshotRequestContext];
      v43 = SBLogSceneSnapshots();
      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);

      if (v44)
      {
        v45 = SBLogSceneSnapshots();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          succinctDescription3 = [(SBSceneSnapshotRequestor *)self succinctDescription];
          identifier4 = [scene identifier];
          v83 = [v93 count];
          *buf = 138543874;
          *&buf[4] = succinctDescription3;
          *&buf[12] = 2114;
          *&buf[14] = identifier4;
          *&buf[22] = 1026;
          *v122 = v83;
          _os_log_debug_impl(&dword_21ED4E000, v45, OS_LOG_TYPE_DEBUG, "%{public}@ [%{public}@] Generated %{public}d SB requests", buf, 0x1Cu);
        }

        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v46 = v93;
        v47 = [v46 countByEnumeratingWithState:&v104 objects:v119 count:16];
        if (v47)
        {
          v48 = *v105;
          do
          {
            for (k = 0; k != v47; ++k)
            {
              if (*v105 != v48)
              {
                objc_enumerationMutation(v46);
              }

              v50 = *(*(&v104 + 1) + 8 * k);
              v51 = SBLogSceneSnapshots();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                [(SBSceneSnapshotRequestor *)v117 requestSnapshotsForSceneHandle:v50 updatingToNewSettings:&v118 withUpdateContext:v51];
              }
            }

            v47 = [v46 countByEnumeratingWithState:&v104 objects:v119 count:16];
          }

          while (v47);
        }
      }

      if ([v93 count])
      {
        v84 = [(SBSceneSnapshotRequestor *)self _fbsSceneSnapshotRequestsFromSBSceneSnapshotRequests:v93 forSceneHandle:v92 settings:v90 snapshotRequestContext:_sceneSnapshotRequestContext];
        v52 = SBLogSceneSnapshots();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          succinctDescription4 = [(SBSceneSnapshotRequestor *)self succinctDescription];
          identifier5 = [scene identifier];
          v55 = [v84 count];
          *buf = 138544130;
          *&buf[4] = succinctDescription4;
          *&buf[12] = 2114;
          *&buf[14] = identifier5;
          *&buf[22] = 1024;
          *v122 = v55;
          *&v122[4] = 2112;
          *&v122[6] = @"the scene actually moved to the background";
          _os_log_impl(&dword_21ED4E000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Requesting %d snapshot(s) because %@", buf, 0x26u);
        }

        v56 = SBLogSceneSnapshots();
        v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG);

        if (v57)
        {
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v58 = v84;
          v59 = [v58 countByEnumeratingWithState:&v100 objects:v116 count:16];
          if (v59)
          {
            v60 = *v101;
            do
            {
              for (m = 0; m != v59; ++m)
              {
                if (*v101 != v60)
                {
                  objc_enumerationMutation(v58);
                }

                settings2 = [*(*(&v100 + 1) + 8 * m) settings];
                v63 = objc_opt_class();
                v64 = settings2;
                if (v63)
                {
                  if (objc_opt_isKindOfClass())
                  {
                    v65 = v64;
                  }

                  else
                  {
                    v65 = 0;
                  }
                }

                else
                {
                  v65 = 0;
                }

                v66 = v65;

                v67 = SBLogSceneSnapshots();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                {
                  [v66 frame];
                  v68 = NSStringFromCGRect(v125);
                  [v66 interfaceOrientation];
                  v69 = BSInterfaceOrientationDescription();
                  [v66 userInterfaceStyle];
                  v70 = SBFStringForUIUserInterfaceStyle();
                  *buf = 138543874;
                  *&buf[4] = v68;
                  *&buf[12] = 2114;
                  *&buf[14] = v69;
                  *&buf[22] = 2114;
                  *v122 = v70;
                  _os_log_debug_impl(&dword_21ED4E000, v67, OS_LOG_TYPE_DEBUG, " - frame: %{public}@, interfaceOrientation: %{public}@, user interface style: %{public}@", buf, 0x20u);
                }
              }

              v59 = [v58 countByEnumeratingWithState:&v100 objects:v116 count:16];
            }

            while (v59);
          }
        }

        if (transitionContext)
        {
          v71 = self->_outgoingSnapshots;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          *v122 = __Block_byref_object_copy__47;
          *&v122[8] = __Block_byref_object_dispose__47;
          *&v122[16] = 0;
          v72 = objc_alloc(MEMORY[0x277D0AAE0]);
          v97[0] = MEMORY[0x277D85DD0];
          v97[1] = 3221225472;
          v97[2] = __99__SBSceneSnapshotRequestor_requestSnapshotsForSceneHandle_updatingToNewSettings_withUpdateContext___block_invoke;
          v97[3] = &unk_2783B49E0;
          v73 = v71;
          v98 = v73;
          v99 = buf;
          v74 = [v72 initWithScene:scene requests:v84 expirationInterval:v97 responseHandler:5.0];
          v75 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v74;

          [(NSMutableSet *)self->_outgoingSnapshots addObject:*(*&buf[8] + 40)];
          actions = [transitionContext actions];
          v77 = actions;
          if (actions)
          {
            v78 = actions;
          }

          else
          {
            v78 = [MEMORY[0x277CBEB98] set];
          }

          v79 = v78;

          v80 = [v79 setByAddingObject:*(*&buf[8] + 40)];
          [transitionContext setActions:v80];

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v73 = SBLogSceneSnapshots();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            [SBSceneSnapshotRequestor requestSnapshotsForSceneHandle:scene updatingToNewSettings:v73 withUpdateContext:?];
          }
        }
      }
    }

    goto LABEL_88;
  }

LABEL_89:
}

void __99__SBSceneSnapshotRequestor_requestSnapshotsForSceneHandle_updatingToNewSettings_withUpdateContext___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __99__SBSceneSnapshotRequestor_requestSnapshotsForSceneHandle_updatingToNewSettings_withUpdateContext___block_invoke_2;
  v4[3] = &unk_2783A9300;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

- (BOOL)handleSnapshotRequestAction:(id)action forSceneHandle:(id)handle
{
  v41 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  handleCopy = handle;
  if (!actionCopy)
  {
    [SBSceneSnapshotRequestor handleSnapshotRequestAction:forSceneHandle:];
  }

  if (!handleCopy)
  {
    [SBSceneSnapshotRequestor handleSnapshotRequestAction:forSceneHandle:];
  }

  application = [handleCopy application];
  if (application)
  {
    context = [actionCopy context];
    type = [actionCopy type];
    if (type == 2)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v22 = _os_activity_create(&dword_21ED4E000, "XBInvalidate", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      os_activity_scope_enter(v22, &state);

      v23 = XBLogFileManifest();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        succinctDescription = [(SBSceneSnapshotRequestor *)self succinctDescription];
        sceneIdentifier = [handleCopy sceneIdentifier];
        *buf = 138543874;
        v36 = succinctDescription;
        v37 = 2114;
        v38 = sceneIdentifier;
        v39 = 2112;
        v40 = context;
        _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Got snapshot-invalidate request with context: %@", buf, 0x20u);
      }

      [application deleteSnapshotForContext:context];
      v26 = FBSSceneSnapshotActionResponseForErrorCode();
      [actionCopy sendResponse:v26];
    }

    else
    {
      if (type != 1)
      {
        v27 = FBSSceneSnapshotActionResponseForErrorCode();
        [actionCopy sendResponse:v27];

LABEL_23:
        goto LABEL_24;
      }

      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v11 = _os_activity_create(&dword_21ED4E000, "XBCapture", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      os_activity_scope_enter(v11, &state);

      v12 = SBLogSceneSnapshots();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        succinctDescription2 = [(SBSceneSnapshotRequestor *)self succinctDescription];
        sceneIdentifier2 = [handleCopy sceneIdentifier];
        *buf = 138543874;
        v36 = succinctDescription2;
        v37 = 2114;
        v38 = sceneIdentifier2;
        v39 = 2048;
        v40 = actionCopy;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Got FBSSceneSnapshotRequestTypePerform (%p)", buf, 0x20u);
      }

      sceneIfExists = [handleCopy sceneIfExists];
      settings = [sceneIfExists settings];
      v17 = settings;
      if (settings && ([settings isForeground] & 1) == 0)
      {
        [(NSMutableSet *)self->_incomingSnapshots addObject:actionCopy];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __71__SBSceneSnapshotRequestor_handleSnapshotRequestAction_forSceneHandle___block_invoke;
        v29[3] = &unk_2783B4A30;
        v29[4] = self;
        v30 = handleCopy;
        v31 = actionCopy;
        v32 = application;
        v33 = context;
        [v32 saveSnapshotForSceneHandle:v30 context:v33 completion:v29];
      }

      else
      {
        v18 = SBLogSceneSnapshots();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          succinctDescription3 = [(SBSceneSnapshotRequestor *)self succinctDescription];
          [handleCopy sceneIdentifier];
          objc_claimAutoreleasedReturnValue();
          [SBSceneSnapshotRequestor handleSnapshotRequestAction:forSceneHandle:];
        }

        v20 = FBSSceneSnapshotActionResponseForErrorCode();
        [actionCopy sendResponse:v20];
      }
    }

    os_activity_scope_leave(&state);
    goto LABEL_23;
  }

  v21 = FBSSceneSnapshotActionResponseForErrorCode();
  [actionCopy sendResponse:v21];

LABEL_24:
  return 1;
}

void __71__SBSceneSnapshotRequestor_handleSnapshotRequestAction_forSceneHandle___block_invoke(id *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = SBLogSceneSnapshots();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1[4] succinctDescription];
    v6 = [a1[5] sceneIdentifier];
    v7 = a1[6];
    *buf = 138544130;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    v18 = 2048;
    v19 = v7;
    v20 = 2048;
    v21 = a2;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Snapshot request (%p) complete with error: %ld", buf, 0x2Au);
  }

  v8 = a1[6];
  v9 = a1[5];
  v10 = a1[7];
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v12 = v11;
  v13 = a1[8];
  BSDispatchMain();
}

uint64_t __71__SBSceneSnapshotRequestor_handleSnapshotRequestAction_forSceneHandle___block_invoke_56(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  result = [*(*(a1 + 32) + 16) containsObject:*(a1 + 40)];
  if (result)
  {
    if ([*(a1 + 40) isValid])
    {
      v3 = *(a1 + 40);
      v4 = FBSSceneSnapshotActionResponseForErrorCode();
      [v3 sendResponse:v4];

      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 16);

      return [v6 removeObject:v5];
    }

    v7 = SBLogSceneSnapshots();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) succinctDescription];
      v9 = [*(a1 + 48) sceneIdentifier];
      v10 = *(a1 + 40);
      v15 = 138543874;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Snapshot request (%p) was invalidated before it completed!", &v15, 0x20u);
    }

    [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  }

  else if (!*(a1 + 72))
  {
    return result;
  }

  v11 = SBLogSceneSnapshots();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [*(a1 + 32) succinctDescription];
    v13 = [*(a1 + 48) sceneIdentifier];
    v14 = *(a1 + 40);
    v15 = 138543874;
    v16 = v12;
    v17 = 2114;
    v18 = v13;
    v19 = 2048;
    v20 = v14;
    _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ [%{public}@] Deleting any snapshot taken for now-invalidated action (%p)", &v15, 0x20u);
  }

  return [*(a1 + 56) deleteSnapshotForContext:*(a1 + 64)];
}

- (void)invalidatePendingSnapshotsForSceneID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(NSMutableSet *)self->_outgoingSnapshots copy];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        sceneID = [v10 sceneID];
        v12 = [dCopy isEqualToString:sceneID];

        if (v12)
        {
          [v10 invalidate];
          [(NSMutableSet *)self->_outgoingSnapshots removeObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [(NSMutableSet *)self->_incomingSnapshots copy];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        context = [v18 context];
        sceneID2 = [context sceneID];
        v21 = [dCopy isEqualToString:sceneID2];

        if (v21)
        {
          [v18 invalidate];
          [(NSMutableSet *)self->_incomingSnapshots removeObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }
}

- (id)_sbSceneSnapshotRequestsForSceneHandle:(id)handle settings:(id)settings snapshotRequestContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  settingsCopy = settings;
  contextCopy = context;
  if (handleCopy)
  {
    if (settingsCopy)
    {
      goto LABEL_3;
    }

LABEL_16:
    [SBSceneSnapshotRequestor _sbSceneSnapshotRequestsForSceneHandle:settings:snapshotRequestContext:];
    if (contextCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  [SBSceneSnapshotRequestor _sbSceneSnapshotRequestsForSceneHandle:settings:snapshotRequestContext:];
  if (!settingsCopy)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (contextCopy)
  {
    goto LABEL_4;
  }

LABEL_17:
  [SBSceneSnapshotRequestor _sbSceneSnapshotRequestsForSceneHandle:settings:snapshotRequestContext:];
LABEL_4:
  if ([(NSHashTable *)self->_preventSupplementalSnapshotsAssertions count])
  {
    v11 = SBLogSceneSnapshots();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      succinctDescription = [(SBSceneSnapshotRequestor *)self succinctDescription];
      sceneIdentifier = [handleCopy sceneIdentifier];
      v20 = [(NSHashTable *)self->_preventSupplementalSnapshotsAssertions count];
      allObjects = [(NSHashTable *)self->_preventSupplementalSnapshotsAssertions allObjects];
      v22 = [allObjects bs_map:&__block_literal_global_130];
      v23 = 138544130;
      v24 = succinctDescription;
      v25 = 2114;
      v26 = sceneIdentifier;
      v27 = 2050;
      v28 = v20;
      v29 = 2114;
      v30 = v22;
      _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ [%{public}@] Preventing supplemental snapshot requests because %{public}lu assertion(s): %{public}@", &v23, 0x2Au);
    }

LABEL_7:

    _sceneSnapshotRequestStrategy = objc_alloc_init(SBSingleSceneSnapshotRequestStrategy);
    goto LABEL_10;
  }

  sceneDisplayLayoutStateTransitionContext = [contextCopy sceneDisplayLayoutStateTransitionContext];
  fromLayoutState = [sceneDisplayLayoutStateTransitionContext fromLayoutState];

  if (!fromLayoutState)
  {
    v11 = SBLogSceneSnapshots();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SBSceneSnapshotRequestor _sbSceneSnapshotRequestsForSceneHandle:handleCopy settings:v11 snapshotRequestContext:?];
    }

    goto LABEL_7;
  }

  _sceneSnapshotRequestStrategy = [(SBSceneSnapshotRequestor *)self _sceneSnapshotRequestStrategy];
LABEL_10:
  v15 = _sceneSnapshotRequestStrategy;
  v16 = [(SBSingleSceneSnapshotRequestStrategy *)_sceneSnapshotRequestStrategy snapshotRequestsForSceneHandle:handleCopy settings:settingsCopy snapshotRequestContext:contextCopy];

  return v16;
}

- (id)_fbsSceneSnapshotRequestsFromSBSceneSnapshotRequests:(id)requests forSceneHandle:(id)handle settings:(id)settings snapshotRequestContext:(id)context
{
  requestsCopy = requests;
  handleCopy = handle;
  settingsCopy = settings;
  contextCopy = context;
  if (requestsCopy)
  {
    if (handleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSceneSnapshotRequestor _fbsSceneSnapshotRequestsFromSBSceneSnapshotRequests:forSceneHandle:settings:snapshotRequestContext:];
    if (handleCopy)
    {
LABEL_3:
      if (settingsCopy)
      {
        goto LABEL_4;
      }

LABEL_18:
      [SBSceneSnapshotRequestor _fbsSceneSnapshotRequestsFromSBSceneSnapshotRequests:forSceneHandle:settings:snapshotRequestContext:];
      if (contextCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  [SBSceneSnapshotRequestor _fbsSceneSnapshotRequestsFromSBSceneSnapshotRequests:forSceneHandle:settings:snapshotRequestContext:];
  if (!settingsCopy)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (contextCopy)
  {
    goto LABEL_5;
  }

LABEL_19:
  [SBSceneSnapshotRequestor _fbsSceneSnapshotRequestsFromSBSceneSnapshotRequests:forSceneHandle:settings:snapshotRequestContext:];
LABEL_5:
  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = objc_alloc_init(MEMORY[0x277CBEB58]);
  application = [handleCopy application];
  info = [application info];

  v17 = objc_opt_class();
  v18 = settingsCopy;
  v50 = a2;
  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v45 = v20;
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x2020000000;
  v47 = [info xb_userInterfaceStyleForRequestedUserInterfaceStyle:{objc_msgSend(v20, "userInterfaceStyle")}];
  v69[3] = v47;
  sceneDisplayReferenceFrameProvider = [contextCopy sceneDisplayReferenceFrameProvider];
  sceneDisplayLayoutStateTransitionContext = [contextCopy sceneDisplayLayoutStateTransitionContext];
  fromLayoutState = [sceneDisplayLayoutStateTransitionContext fromLayoutState];

  embeddedDisplayReferenceFrameProvider = [contextCopy embeddedDisplayReferenceFrameProvider];
  v51 = fromLayoutState;
  appLayout = [fromLayoutState appLayout];
  sceneIdentifier = [handleCopy sceneIdentifier];
  v25 = [v51 elementWithIdentifier:sceneIdentifier];
  layoutRole = [v25 layoutRole];

  interfaceOrientation = [v18 interfaceOrientation];
  v42 = info;
  v43 = contextCopy;
  _displayItemLayoutAttributesProvider = [(SBSceneSnapshotRequestor *)self _displayItemLayoutAttributesProvider];
  if ((interfaceOrientation - 1) >= 2)
  {
    v29 = 1;
  }

  else
  {
    v29 = 4;
  }

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __128__SBSceneSnapshotRequestor__fbsSceneSnapshotRequestsFromSBSceneSnapshotRequests_forSceneHandle_settings_snapshotRequestContext___block_invoke;
  v52[3] = &unk_2783B4A78;
  v30 = _displayItemLayoutAttributesProvider;
  v53 = v30;
  v31 = appLayout;
  v54 = v31;
  v64 = interfaceOrientation;
  v32 = requestsCopy;
  v55 = v32;
  v33 = sceneDisplayReferenceFrameProvider;
  v56 = v33;
  selfCopy = self;
  v34 = handleCopy;
  v58 = v34;
  v65 = v29;
  v66 = layoutRole;
  v35 = v18;
  v59 = v35;
  v36 = embeddedDisplayReferenceFrameProvider;
  v67 = v50;
  v68 = v47;
  v60 = v36;
  v63 = v69;
  v37 = v48;
  v61 = v37;
  v38 = v49;
  v62 = v38;
  [v30 performBlockWithoutUpdating:v52];
  v39 = v62;
  v40 = v38;

  _Block_object_dispose(v69, 8);

  return v40;
}

void __128__SBSceneSnapshotRequestor__fbsSceneSnapshotRequestsFromSBSceneSnapshotRequests_forSceneHandle_settings_snapshotRequestContext___block_invoke(uint64_t a1)
{
  v119 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 preferredDisplayOrdinal];
  v5 = *(a1 + 120);
  v6 = v5 - 1;
  v7 = 2 * ((v5 - 3) < 2);
  if (v6 < 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v79 = [v2 layoutAttributesMapForAppLayout:v3 displayOrdinal:v4 orientation:v8];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = *(a1 + 48);
  v82 = [obj countByEnumeratingWithState:&v99 objects:v118 count:16];
  if (v82)
  {
    v81 = *v100;
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    do
    {
      v11 = 0;
      do
      {
        if (*v100 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v89 = *(*(&v99 + 1) + 8 * v11);
        if (![v89 size]|| *(a1 + 56))
        {
          v12 = [v89 orientation];
          v83 = v11;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v13 = &unk_28336E160;
                goto LABEL_31;
              case 4:
                v14 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 120)];
                v115[0] = v14;
                v15 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 128)];
                v115[1] = v15;
                v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:2];
                break;
              case 5:
                v14 = [*(a1 + 40) itemForLayoutRole:*(a1 + 136)];
                v15 = [v79 objectForKey:v14];
                v16 = [(SBHomeScreenConfigurationServer *)v15 connections];
                v13 = MEMORY[0x277CBEBF8];
                if (v16 == 2)
                {
                  v17 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 128)];
                  v114 = v17;
                  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
                }

                break;
              default:
                v13 = 0;
                goto LABEL_31;
            }
          }

          else
          {
            if (v12)
            {
              if (v12 != 1)
              {
                if (v12 == 2)
                {
                  v13 = &unk_28336E148;
                }

                else
                {
                  v13 = 0;
                }

LABEL_31:
                v97 = 0u;
                v98 = 0u;
                v95 = 0u;
                v96 = 0u;
                v18 = v13;
                v86 = [v18 countByEnumeratingWithState:&v95 objects:v113 count:16];
                if (!v86)
                {
                  goto LABEL_92;
                }

                v84 = *v96;
                v85 = v18;
                while (2)
                {
                  v23 = 0;
LABEL_34:
                  if (*v96 != v84)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v90 = *(*(&v95 + 1) + 8 * v23);
                  v24 = [v90 integerValue];
                  v25 = [v89 size];
                  v26 = 0.0;
                  if (v25 <= 2)
                  {
                    if (v25)
                    {
                      if (v25 == 1)
                      {
                        v36 = *(a1 + 56);
                      }

                      else
                      {
                        v34 = 0.0;
                        v32 = 0.0;
                        v30 = 0.0;
                        if (v25 != 2)
                        {
                          goto LABEL_53;
                        }

                        v36 = *(a1 + 88);
                      }

                      [v36 referenceFrameForInterfaceOrientation:v24 layoutRole:*(a1 + 136) appLayout:*(a1 + 40)];
                    }

                    else
                    {
                      [*(a1 + 80) frame];
                    }
                  }

                  else
                  {
                    if (v25 <= 4)
                    {
                      if (v25 == 3)
                      {
                        v41 = [*(a1 + 40) leafAppLayoutForRole:*(a1 + 136)];
                        [*(a1 + 56) referenceFrameForInterfaceOrientation:v24 layoutRole:1 appLayout:v41];
                        v30 = v42;
                        v32 = v43;
                        v34 = v44;
                        v26 = v45;
                      }

                      else
                      {
                        v27 = *(a1 + 56);
                        v28 = SBAppLayoutGenericAppLayoutWithConfiguration(3);
                        [v27 referenceFrameForInterfaceOrientation:v24 layoutRole:1 appLayout:v28];
                        v30 = v29;
                        v32 = v31;
                        v34 = v33;
                        v26 = v35;
                      }

                      goto LABEL_53;
                    }

                    if (v25 != 5)
                    {
                      v34 = 0.0;
                      v32 = 0.0;
                      v30 = 0.0;
                      if (v25 == 6)
                      {
                        [*(a1 + 56) referenceFrameForInterfaceOrientation:v24 centerConfiguration:1];
                        break;
                      }

LABEL_53:
                      if (v34 == v9 && v26 == v10)
                      {
                        v73 = [MEMORY[0x277CCA890] currentHandler];
                        v74 = *(a1 + 144);
                        v75 = *(a1 + 64);
                        v120.origin.x = v30;
                        v120.origin.y = v32;
                        v120.size.width = v34;
                        v120.size.height = v26;
                        v76 = NSStringFromCGRect(v120);
                        v77 = [*(a1 + 72) sceneIdentifier];
                        [v73 handleFailureInMethod:v74 object:v75 file:@"SBSceneSnapshotRequestor.m" lineNumber:451 description:{@"frame %@ isn't valid for scene %@ from request %@", v76, v77, v89}];
                      }

                      v47 = [v89 userInterfaceStyle];
                      v87 = v23;
                      if (v47 == 1)
                      {
                        v50 = *(*(a1 + 112) + 8);
                        if (*(v50 + 24) == 2)
                        {
                          *(v50 + 24) = 1;
                          v49 = &unk_28336E178;
                        }

                        else
                        {
                          *(v50 + 24) = 2;
                          v49 = &unk_28336E190;
                        }
                      }

                      else if (v47)
                      {
                        v49 = 0;
                      }

                      else
                      {
                        v48 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 152)];
                        v112 = v48;
                        v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];

                        *(*(*(a1 + 112) + 8) + 24) = *(a1 + 152);
                      }

                      v93 = 0u;
                      v94 = 0u;
                      v91 = 0u;
                      v92 = 0u;
                      v51 = v49;
                      v52 = [v51 countByEnumeratingWithState:&v91 objects:v111 count:16];
                      if (v52)
                      {
                        v53 = v52;
                        v54 = *v92;
                        do
                        {
                          for (i = 0; i != v53; ++i)
                          {
                            if (*v92 != v54)
                            {
                              objc_enumerationMutation(v51);
                            }

                            v56 = [*(*(&v91 + 1) + 8 * i) integerValue];
                            if (v24)
                            {
                              v57 = v56;
                              v58 = MEMORY[0x277CCACA8];
                              v59 = SBFStringForUIUserInterfaceStyle();
                              v60 = [v58 stringWithFormat:@"w%0.0f:h%0.0f:%@:%@", *&v34, *&v26, v59, v90];

                              if ([*(a1 + 96) containsObject:v60])
                              {
                                v61 = SBLogSceneSnapshots();
                                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
                                {
                                  v88 = [*(a1 + 64) succinctDescription];
                                  v62 = [*(a1 + 72) sceneIdentifier];
                                  v63 = [v89 succinctDescription];
                                  *buf = 138544130;
                                  v104 = v88;
                                  v105 = 2114;
                                  v106 = v62;
                                  v107 = 2114;
                                  v108 = v60;
                                  v109 = 2114;
                                  v110 = v63;
                                  v64 = v63;
                                  _os_log_debug_impl(&dword_21ED4E000, v61, OS_LOG_TYPE_DEBUG, "%{public}@ [%{public}@] skipping duplicate request (%{public}@) from sbRequest %{public}@", buf, 0x2Au);
                                }
                              }

                              else
                              {
                                [*(a1 + 96) addObject:v60];
                                v67 = [*(a1 + 80) mutableCopy];
                                [v67 setFrame:{v30, v32, v34, v26}];
                                [v67 setInterfaceOrientation:v24];
                                [v67 setActiveAppearanceOverride:0];
                                v68 = objc_opt_class();
                                v61 = v67;
                                if (v68)
                                {
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v69 = v61;
                                  }

                                  else
                                  {
                                    v69 = 0;
                                  }
                                }

                                else
                                {
                                  v69 = 0;
                                }

                                v70 = v69;

                                [v70 setUserInterfaceStyle:v57];
                                v71 = ([SBApp underMemoryPressure] & 1) == 0 && !-[NSObject size](v89, "size") && v57 == *(a1 + 152) && v24 == *(a1 + 120);
                                v72 = [objc_alloc(MEMORY[0x277D0ADE8]) initWithSettings:v61 allowsProtectedContent:v71];
                                [*(a1 + 104) addObject:v72];
                              }
                            }

                            else
                            {
                              v60 = SBLogSceneSnapshots();
                              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                              {
                                v65 = [*(a1 + 64) succinctDescription];
                                v66 = [*(a1 + 72) sceneIdentifier];
                                *buf = 138543874;
                                v104 = v65;
                                v105 = 2114;
                                v106 = v66;
                                v107 = 2114;
                                v108 = v89;
                                _os_log_error_impl(&dword_21ED4E000, v60, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] skipping snapshot request with unknown orientation from sbRequest %{public}@", buf, 0x20u);
                              }
                            }
                          }

                          v53 = [v51 countByEnumeratingWithState:&v91 objects:v111 count:16];
                        }

                        while (v53);
                      }

                      v23 = v87 + 1;
                      v18 = v85;
                      if (v87 + 1 == v86)
                      {
                        v86 = [v85 countByEnumeratingWithState:&v95 objects:v113 count:16];
                        if (!v86)
                        {
LABEL_92:

                          v11 = v83;
                          goto LABEL_93;
                        }

                        continue;
                      }

                      goto LABEL_34;
                    }

                    [*(a1 + 56) referenceFrameForInterfaceOrientation:v24 floatingConfiguration:2];
                  }

                  break;
                }

                v30 = v37;
                v32 = v38;
                v34 = v39;
                v26 = v40;
                goto LABEL_53;
              }

              v14 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 128)];
              v116 = v14;
              v21 = MEMORY[0x277CBEA60];
              v22 = &v116;
            }

            else
            {
              v14 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 120)];
              v117 = v14;
              v21 = MEMORY[0x277CBEA60];
              v22 = &v117;
            }

            v13 = [v21 arrayWithObjects:v22 count:1];
          }

          goto LABEL_31;
        }

        v18 = SBLogSceneSnapshots();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [*(a1 + 64) succinctDescription];
          v20 = [*(a1 + 72) sceneIdentifier];
          *buf = 138543874;
          v104 = v19;
          v105 = 2114;
          v106 = v20;
          v107 = 2114;
          v108 = v89;
          _os_log_error_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] skipping snapshot request because referenceFrameProvider == nil for sbRequest %{public}@", buf, 0x20u);
        }

LABEL_93:

        ++v11;
      }

      while (v11 != v82);
      v78 = [obj countByEnumeratingWithState:&v99 objects:v118 count:16];
      v82 = v78;
    }

    while (v78);
  }
}

- (id)_debugName
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained debugNameForSceneSnapshotRequestor:self];

  return v4;
}

- (id)_sceneSnapshotRequestContext
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained sceneSnapshotRequestContextForSceneSnapshotRequestor:self];

  return v4;
}

- (id)_sceneSnapshotRequestStrategy
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained sceneSnapshotRequestStrategyForSceneSnapshotRequestor:self];

  return v4;
}

- (id)_displayItemLayoutAttributesProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  switcherController = [WeakRetained switcherController];

  displayItemLayoutAttributesProvider = [switcherController displayItemLayoutAttributesProvider];

  return displayItemLayoutAttributesProvider;
}

- (SBSceneSnapshotRequestorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)requestSnapshotsForSceneHandle:updatingToNewSettings:withUpdateContext:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sceneHandle" object:? file:? lineNumber:? description:?];
}

- (void)requestSnapshotsForSceneHandle:updatingToNewSettings:withUpdateContext:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"newSettings" object:? file:? lineNumber:? description:?];
}

- (void)requestSnapshotsForSceneHandle:updatingToNewSettings:withUpdateContext:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"updateContext" object:? file:? lineNumber:? description:?];
}

- (void)requestSnapshotsForSceneHandle:(void *)a3 updatingToNewSettings:(NSObject *)a4 withUpdateContext:.cold.4(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 succinctDescription];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_debug_impl(&dword_21ED4E000, a4, OS_LOG_TYPE_DEBUG, " - %{public}@", a1, 0xCu);
}

- (void)requestSnapshotsForSceneHandle:(void *)a1 updatingToNewSettings:(void *)a2 withUpdateContext:(NSObject *)a3 .cold.5(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 succinctDescription];
  v6 = [a2 identifier];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "%{public}@ ERROR: No transition context exists for update to scene %{public}@; unable to include snapshot actions.", &v7, 0x16u);
}

- (void)handleSnapshotRequestAction:forSceneHandle:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"snapshotRequestAction" object:? file:? lineNumber:? description:?];
}

- (void)handleSnapshotRequestAction:forSceneHandle:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sceneHandle" object:? file:? lineNumber:? description:?];
}

- (void)handleSnapshotRequestAction:forSceneHandle:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  *v2 = 138543618;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2114;
  *(v2 + 14) = v4;
  _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ [%{public}@] Ignoring snapshot request, because scene is foreground", v5, 0x16u);
}

- (void)_sbSceneSnapshotRequestsForSceneHandle:settings:snapshotRequestContext:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sceneHandle" object:? file:? lineNumber:? description:?];
}

- (void)_sbSceneSnapshotRequestsForSceneHandle:settings:snapshotRequestContext:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"settings" object:? file:? lineNumber:? description:?];
}

- (void)_sbSceneSnapshotRequestsForSceneHandle:settings:snapshotRequestContext:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"snapshotRequestContext" object:? file:? lineNumber:? description:?];
}

- (void)_sbSceneSnapshotRequestsForSceneHandle:(void *)a1 settings:(void *)a2 snapshotRequestContext:(NSObject *)a3 .cold.4(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 succinctDescription];
  v6 = [a2 sceneIdentifier];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ [%{public}@] Preventing supplemental snapshot requests because locked", &v7, 0x16u);
}

- (void)_fbsSceneSnapshotRequestsFromSBSceneSnapshotRequests:forSceneHandle:settings:snapshotRequestContext:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sbRequests" object:? file:? lineNumber:? description:?];
}

- (void)_fbsSceneSnapshotRequestsFromSBSceneSnapshotRequests:forSceneHandle:settings:snapshotRequestContext:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sceneHandle" object:? file:? lineNumber:? description:?];
}

- (void)_fbsSceneSnapshotRequestsFromSBSceneSnapshotRequests:forSceneHandle:settings:snapshotRequestContext:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"settings" object:? file:? lineNumber:? description:?];
}

- (void)_fbsSceneSnapshotRequestsFromSBSceneSnapshotRequests:forSceneHandle:settings:snapshotRequestContext:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"snapshotRequestContext" object:? file:? lineNumber:? description:?];
}

@end