@interface SBApplicationSceneUpdateTransaction
- (SBApplicationSceneUpdateTransaction)initWithApplicationSceneEntity:(id)entity transitionRequest:(id)request delegate:(id)delegate;
- (id)_createUpdateTransactionForPreflightCompletion;
- (id)_customizedDescriptionProperties;
- (void)_didComplete;
- (void)_performSynchronizedCommit:(id)commit;
- (void)_sceneResizeLayoutDidFinish:(id)finish;
- (void)_sendActivationResultWithError:(id)error;
- (void)_willBegin;
- (void)_willFailWithReason:(id)reason;
@end

@implementation SBApplicationSceneUpdateTransaction

- (void)_willBegin
{
  v14.receiver = self;
  v14.super_class = SBApplicationSceneUpdateTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v14 _willBegin];
  if (self->_requiresPreflight)
  {
    request = [(SBWorkspaceTransitionContext *)self->_transitionContext request];
    source = [request source];

    if (source != 14 && source != 74)
    {
      if ([(SBApplicationSceneUpdateTransaction *)self isAuditHistoryEnabled])
      {
        [(SBApplicationSceneUpdateTransaction *)self _addAuditHistoryItem:@"running preflight for %@", self->_sceneIdentifier];
      }

      objc_initWeak(&location, self);
      privacyPreflightController = self->_privacyPreflightController;
      applicationIdentity = self->_applicationIdentity;
      sceneIdentifier = self->_sceneIdentifier;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __49__SBApplicationSceneUpdateTransaction__willBegin__block_invoke;
      v11[3] = &unk_2783C2068;
      v11[4] = self;
      objc_copyWeak(&v12, &location);
      [(SBPrivacyPreflightController *)privacyPreflightController preflightLaunchForApplication:applicationIdentity sceneIdentifier:sceneIdentifier withCompletionHandler:v11];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    sceneHandle = [(SBApplicationSceneEntity *)self->_applicationSceneEntity sceneHandle];
    [sceneHandle setSceneUpdateInProgress:1];

    applicationContext = [(SBWorkspaceTransitionRequest *)self->_request applicationContext];
    if ([applicationContext isInLiveResize])
    {
      v10 = SBSceneLiveResizeFinishedActionEnabled();

      if (!v10)
      {
        return;
      }

      [(SBApplicationSceneUpdateTransaction *)self addMilestone:@"SBApplicationSceneUpdateTransactionLiveResizeFinishedMilestone"];
      applicationContext = [MEMORY[0x277CCAB98] defaultCenter];
      [applicationContext addObserver:self selector:sel__sceneResizeLayoutDidFinish_ name:@"SBSceneResizeLayoutDidFinishNotification" object:0];
    }
  }
}

- (void)_didComplete
{
  v6.receiver = self;
  v6.super_class = SBApplicationSceneUpdateTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v6 _didComplete];
  sceneHandle = [(SBApplicationSceneEntity *)self->_applicationSceneEntity sceneHandle];
  [sceneHandle setSceneUpdateInProgress:0];

  v4 = SBWTErrorCreateForTransaction(self);
  [(SBApplicationSceneUpdateTransaction *)self _sendActivationResultWithError:v4];

  if (!self->_requiresPreflight)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sceneUpdateTransaction:self finishedApplyingUpdate:{-[SBApplicationSceneUpdateTransaction isFailed](self, "isFailed") ^ 1}];
  }
}

- (SBApplicationSceneUpdateTransaction)initWithApplicationSceneEntity:(id)entity transitionRequest:(id)request delegate:(id)delegate
{
  entityCopy = entity;
  requestCopy = request;
  delegateCopy = delegate;
  applicationContext = [requestCopy applicationContext];
  if (requestCopy)
  {
    if (entityCopy)
    {
      goto LABEL_3;
    }

LABEL_21:
    [SBApplicationSceneUpdateTransaction initWithApplicationSceneEntity:a2 transitionRequest:self delegate:?];
    if (applicationContext)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  [SBApplicationSceneUpdateTransaction initWithApplicationSceneEntity:a2 transitionRequest:self delegate:?];
  if (!entityCopy)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (applicationContext)
  {
    goto LABEL_4;
  }

LABEL_22:
  [SBApplicationSceneUpdateTransaction initWithApplicationSceneEntity:a2 transitionRequest:self delegate:?];
LABEL_4:
  v51 = a2;
  [requestCopy finalize];
  sceneHandle = [entityCopy sceneHandle];
  application = [entityCopy application];
  info = [application info];
  processIdentity = [info processIdentity];

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __97__SBApplicationSceneUpdateTransaction_initWithApplicationSceneEntity_transitionRequest_delegate___block_invoke;
  v57[3] = &unk_2783B7C18;
  v17 = sceneHandle;
  v58 = v17;
  v18 = requestCopy;
  v59 = v18;
  v19 = entityCopy;
  v60 = v19;
  v56.receiver = self;
  v56.super_class = SBApplicationSceneUpdateTransaction;
  v20 = [(FBApplicationUpdateScenesTransaction *)&v56 initWithProcessIdentity:processIdentity executionContextProvider:v57];
  v21 = v20;
  if (v20)
  {
    v53 = processIdentity;
    v54 = delegateCopy;
    objc_storeWeak(&v20->_delegate, delegateCopy);
    objc_storeStrong(&v21->_request, request);
    v55 = applicationContext;
    objc_storeStrong(&v21->_transitionContext, applicationContext);
    v22 = [v19 copy];
    applicationSceneEntity = v21->_applicationSceneEntity;
    v21->_applicationSceneEntity = v22;

    activationSettings = [v19 activationSettings];
    v21->_suspendedActivation = [activationSettings BOOLForActivationSetting:3];

    sceneIdentifier = [v17 sceneIdentifier];
    sceneIdentifier = v21->_sceneIdentifier;
    v21->_sceneIdentifier = sceneIdentifier;

    sceneIfExists = [v17 sceneIfExists];
    identity = [sceneIfExists identity];

    v29 = +[SBSceneManagerCoordinator sharedInstance];
    displayIdentity = [v18 displayIdentity];
    v31 = [v29 sceneManagerForDisplayIdentity:displayIdentity];

    sceneManager = [v17 sceneManager];
    v33 = sceneManager;
    if (identity && v31 && sceneManager && (BSEqualObjects() & 1) == 0)
    {
      [v33 transferOwnershipOfSceneWithIdentity:identity toSceneManager:v31];
    }

    v52 = v33;
    applicationContext2 = [v18 applicationContext];
    v35 = [v17 _createParametersFromTransitionContext:applicationContext2 entity:v19];
    sceneParameters = v21->_sceneParameters;
    v21->_sceneParameters = v35;

    applicationContext3 = [v18 applicationContext];
    v38 = [v17 _createApplicationSceneTransitionContextFromContext:applicationContext3 entity:v19];
    sceneTransitionContext = v21->_sceneTransitionContext;
    v21->_sceneTransitionContext = v38;

    if (v21->_suspendedActivation || ([v55 waitsForSceneUpdates] & 1) == 0)
    {
      [(FBApplicationUpdateScenesTransaction *)v21 setWaitsForSceneCommits:0];
    }

    application2 = [(SBApplicationSceneEntity *)v21->_applicationSceneEntity application];
    info2 = [application2 info];
    applicationIdentity = [info2 applicationIdentity];
    applicationIdentity = v21->_applicationIdentity;
    v21->_applicationIdentity = applicationIdentity;

    if (!v21->_applicationIdentity)
    {
      [SBApplicationSceneUpdateTransaction initWithApplicationSceneEntity:v51 transitionRequest:v21 delegate:v19];
    }

    privacyPreflightController = [SBApp privacyPreflightController];
    privacyPreflightController = v21->_privacyPreflightController;
    v21->_privacyPreflightController = privacyPreflightController;

    settings = [(FBSMutableSceneParameters *)v21->_sceneParameters settings];
    isForeground = [settings isForeground];

    if (isForeground)
    {
      v48 = [(SBPrivacyPreflightController *)v21->_privacyPreflightController requiresPreflightForApplication:v21->_applicationIdentity];
    }

    else
    {
      v48 = 0;
    }

    v21->_requiresPreflight = v48;
    [(FBApplicationUpdateScenesTransaction *)v21 updateSceneWithIdentifier:v21->_sceneIdentifier parameters:v21->_sceneParameters transitionContext:v21->_sceneTransitionContext];
    animationFence = [(UIApplicationSceneTransitionContext *)v21->_sceneTransitionContext animationFence];
    [animationFence invalidate];

    delegateCopy = v54;
    applicationContext = v55;
    processIdentity = v53;
  }

  return v21;
}

id __97__SBApplicationSceneUpdateTransaction_initWithApplicationSceneEntity_transitionRequest_delegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) applicationContext];
  v4 = [v2 _createProcessExecutionContextFromContext:v3 entity:*(a1 + 48)];

  return v4;
}

void __49__SBApplicationSceneUpdateTransaction__willBegin__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if ([*(a1 + 32) isAuditHistoryEnabled])
  {
    [*(a1 + 32) _addAuditHistoryItem:@"after-preflight update completed"];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(WeakRetained + 39);
    v9 = v8;
    if (a3)
    {
      if (a2)
      {
        if (a2 != 2)
        {
          if (a2 == 1)
          {
            v10 = [*(a1 + 32) _createUpdateTransactionForPreflightCompletion];
            v13 = MEMORY[0x277D85DD0];
            v14 = 3221225472;
            v15 = __49__SBApplicationSceneUpdateTransaction__willBegin__block_invoke_2;
            v16 = &unk_2783C2040;
            v17 = v10;
            v18 = v9;
            v19 = v7;
            v20 = *(a1 + 32);
            [v10 setCompletionBlock:&v13];
            if ([*(a1 + 32) isAuditHistoryEnabled])
            {
              [*(a1 + 32) _addAuditHistoryItem:@"running after-preflight update"];
            }

            [v10 begin];
          }

          goto LABEL_15;
        }
      }

      else
      {
        SBWorkspaceDestroyApplicationEntity(*(*(a1 + 32) + 232));
      }

      v8 = v9;
      v12 = v7;
      v11 = 0;
    }

    else
    {
      v11 = a2 == 1;
      v12 = v7;
    }

    [v8 sceneUpdateTransaction:v12 finishedApplyingUpdate:v11];
LABEL_15:
  }
}

uint64_t __49__SBApplicationSceneUpdateTransaction__willBegin__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    [v3 sceneUpdateTransaction:*(a1 + 48) finishedApplyingUpdate:a2];
  }

  else if ((a2 & 1) == 0)
  {
    if ([*(a1 + 56) isAuditHistoryEnabled])
    {
      v4 = *(a1 + 56);
      v5 = [*(a1 + 32) error];
      [v4 _addAuditHistoryItem:{@"after-preflight update failed. taking our ball and going home(screen): %@", v5}];
    }

    v6 = +[SBMainWorkspace sharedInstance];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__SBApplicationSceneUpdateTransaction__willBegin__block_invoke_5;
    v8[3] = &unk_2783B0350;
    v8[4] = *(a1 + 56);
    [v6 requestTransitionWithOptions:4 builder:&__block_literal_global_402 validator:v8];
  }

  result = [*(a1 + 56) isAuditHistoryEnabled];
  if (result)
  {
    return [*(a1 + 56) _addAuditHistoryItem:@"after-preflight update completed"];
  }

  return result;
}

void __49__SBApplicationSceneUpdateTransaction__willBegin__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setRequestedUnlockedEnvironmentMode:1];
  v3 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
  [v2 setActivatingEntity:v3];
}

BOOL __49__SBApplicationSceneUpdateTransaction__willBegin__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 applicationContext];
  v4 = [v3 previousLayoutState];
  v5 = [*(*(a1 + 32) + 232) uniqueIdentifier];
  v6 = [v4 elementWithIdentifier:v5];

  if (!v6 && [*(a1 + 32) isAuditHistoryEnabled])
  {
    [*(a1 + 32) _addAuditHistoryItem:{@"our scene entity isn't in the previousLayoutState, so not bothering with going home"}];
  }

  return v6 != 0;
}

- (void)_performSynchronizedCommit:(id)commit
{
  applicationSceneEntity = self->_applicationSceneEntity;
  commitCopy = commit;
  application = [(SBApplicationSceneEntity *)applicationSceneEntity application];
  displayConfiguration = [(SBWorkspaceTransitionRequest *)self->_request displayConfiguration];
  v8 = [application _prepareInitializationContextIfNecessaryForLaunchOnDisplayConfiguration:displayConfiguration];

  v9.receiver = self;
  v9.super_class = SBApplicationSceneUpdateTransaction;
  [(FBSynchronizedTransactionGroup *)&v9 _performSynchronizedCommit:commitCopy];

  if (self->_shouldSendActivationResult)
  {
    if ([(SBWorkspaceApplicationSceneTransitionContext *)self->_transitionContext needsToSendActivationResult])
    {
      [(SBApplicationSceneUpdateTransaction *)self _sendActivationResultWithError:0];
    }
  }
}

- (void)_willFailWithReason:(id)reason
{
  v5.receiver = self;
  v5.super_class = SBApplicationSceneUpdateTransaction;
  [(FBApplicationUpdateScenesTransaction *)&v5 _willFailWithReason:reason];
  sceneHandle = [(SBApplicationSceneEntity *)self->_applicationSceneEntity sceneHandle];
  [sceneHandle setSceneUpdateInProgress:0];
}

- (id)_customizedDescriptionProperties
{
  v27 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  succinctDescription = [(SBWorkspaceEntity *)self->_applicationSceneEntity succinctDescription];
  [dictionary setObject:succinctDescription forKey:@"Application"];

  v5 = NSStringFromBOOL();
  [dictionary setObject:v5 forKey:@"Requires Preflight"];

  [dictionary setObject:self->_sceneIdentifier forKey:@"SceneID"];
  displayIdentity = [(SBWorkspaceTransitionRequest *)self->_request displayIdentity];
  [dictionary setObject:displayIdentity forKey:@"Display"];

  v7 = NSStringFromBOOL();
  [dictionary setObject:v7 forKey:@"Launch Suspended"];

  actions = [(UIApplicationSceneTransitionContext *)self->_sceneTransitionContext actions];
  if ([actions count])
  {
    v21 = dictionary;
    array = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = actions;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ([v15 UIActionType] != 1 || (v16 = MEMORY[0x277CF0C00], objc_msgSend(v15, "url"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "descriptionForObject:withObjectsAndNames:", v15, v17, &stru_283094718, 0), v18 = objc_claimAutoreleasedReturnValue(), v17, !v18))
          {
            v18 = [MEMORY[0x277CF0C00] descriptionForObject:v15];
          }

          [array addObject:v18];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    if ([array count] < 2)
    {
      firstObject = [array firstObject];
      dictionary = v21;
      [v21 setObject:firstObject forKey:@"Action"];
    }

    else
    {
      dictionary = v21;
      [v21 setObject:array forKey:@"Actions"];
    }
  }

  return dictionary;
}

- (void)_sendActivationResultWithError:(id)error
{
  errorCopy = error;
  if (self->_shouldSendActivationResult)
  {
    v8 = errorCopy;
    needsToSendActivationResult = [(SBWorkspaceApplicationSceneTransitionContext *)self->_transitionContext needsToSendActivationResult];
    errorCopy = v8;
    if (needsToSendActivationResult)
    {
      [(SBWorkspaceApplicationSceneTransitionContext *)self->_transitionContext sendActivationResultError:v8];
      isAuditHistoryEnabled = [(SBApplicationSceneUpdateTransaction *)self isAuditHistoryEnabled];
      errorCopy = v8;
      if (isAuditHistoryEnabled)
      {
        localizedFailureReason = [v8 localizedFailureReason];
        [(SBApplicationSceneUpdateTransaction *)self _addAuditHistoryItem:@"Sent activation result; error = %@", localizedFailureReason];

        errorCopy = v8;
      }
    }
  }
}

- (void)_sceneResizeLayoutDidFinish:(id)finish
{
  userInfo = [finish userInfo];
  v6 = [userInfo objectForKey:@"SBSceneResizeLayoutDidFinishNotificationSceneIdentifierKey"];

  if ([v6 isEqualToString:self->_sceneIdentifier])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"SBSceneResizeLayoutDidFinishNotification" object:0];

    [(SBApplicationSceneUpdateTransaction *)self satisfyMilestone:@"SBApplicationSceneUpdateTransactionLiveResizeFinishedMilestone"];
  }
}

- (id)_createUpdateTransactionForPreflightCompletion
{
  workspace = [(SBWorkspaceTransitionRequest *)self->_request workspace];
  displayConfiguration = [(SBWorkspaceTransitionRequest *)self->_request displayConfiguration];
  v5 = [workspace createRequestWithOptions:0 displayConfiguration:displayConfiguration];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setSource:{-[SBWorkspaceTransitionRequest source](self->_request, "source")}];
    }
  }

  [v5 setEventLabel:@"AfterPreflightSceneUpdateTransaction"];
  [v5 setApplicationContext:self->_transitionContext];
  [v5 finalize];
  v6 = [objc_alloc(objc_opt_class()) initWithApplicationSceneEntity:self->_applicationSceneEntity transitionRequest:v5];

  return v6;
}

- (void)initWithApplicationSceneEntity:(uint64_t)a1 transitionRequest:(uint64_t)a2 delegate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplicationSceneUpdateTransaction.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"request"}];
}

- (void)initWithApplicationSceneEntity:(uint64_t)a1 transitionRequest:(uint64_t)a2 delegate:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplicationSceneUpdateTransaction.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"applicationSceneEntity"}];
}

- (void)initWithApplicationSceneEntity:(uint64_t)a1 transitionRequest:(uint64_t)a2 delegate:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplicationSceneUpdateTransaction.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"transitionContext"}];
}

- (void)initWithApplicationSceneEntity:(uint64_t)a1 transitionRequest:(uint64_t)a2 delegate:(uint64_t)a3 .cold.4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBApplicationSceneUpdateTransaction.m" lineNumber:105 description:{@"failed to find LSApplicationIDentity for scene entity: %@", a3}];
}

@end