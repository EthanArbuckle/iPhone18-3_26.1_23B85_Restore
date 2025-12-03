@interface SBSuspendedWorkspaceTransaction
- (void)_addSceneEntityToAppRecency:(id)recency;
- (void)_begin;
- (void)_childTransactionDidComplete:(id)complete;
- (void)_didComplete;
- (void)_sendActivationResultWithError:(id)error;
- (void)transaction:(id)transaction willLaunchProcess:(id)process;
@end

@implementation SBSuspendedWorkspaceTransaction

- (void)_begin
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSuspendedWorkspaceTransaction.m" lineNumber:58 description:@"must have a scene handle"];
}

- (void)_didComplete
{
  v4.receiver = self;
  v4.super_class = SBSuspendedWorkspaceTransaction;
  [(SBMainWorkspaceTransaction *)&v4 _didComplete];
  v3 = SBWTErrorCreateForTransaction(self);
  [(SBSuspendedWorkspaceTransaction *)self _sendActivationResultWithError:v3];
}

- (void)_sendActivationResultWithError:(id)error
{
  errorCopy = error;
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  applicationContext = [transitionRequest applicationContext];

  if ([applicationContext needsToSendActivationResult])
  {
    [applicationContext sendActivationResultError:errorCopy];
    if ([(SBSuspendedWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      localizedFailureReason = [errorCopy localizedFailureReason];
      [(SBSuspendedWorkspaceTransaction *)self _addAuditHistoryItem:@"Sent activation result; error = %@", localizedFailureReason];
    }
  }
}

- (void)_childTransactionDidComplete:(id)complete
{
  v83 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  v6 = objc_opt_class();
  v7 = completeCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9 && [(NSMutableSet *)self->_incompleteProcessLaunchTransactions containsObject:v9])
  {
    [(NSMutableSet *)self->_incompleteProcessLaunchTransactions removeObject:v9];
    process = [v9 process];
    v11 = [process pid];
    if (v11 < 1)
    {
      anyLaunchError = self->_anyLaunchError;
      if (anyLaunchError)
      {
        objc_storeStrong(&self->_anyLaunchError, anyLaunchError);
      }

      else
      {
        exitContext = [process exitContext];
        createError = [exitContext createError];
        v55 = self->_anyLaunchError;
        self->_anyLaunchError = createError;
      }
    }

    else
    {
      v69 = v11;
      v12 = [(NSMapTable *)self->_launchTransactionToSceneEntityMap objectForKey:v9];
      sceneHandle = [v12 sceneHandle];
      if (!sceneHandle)
      {
        [(SBSuspendedWorkspaceTransaction *)a2 _childTransactionDidComplete:?];
      }

      transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
      applicationContext = [transitionRequest applicationContext];
      v73 = [sceneHandle _createApplicationSceneTransitionContextFromContext:applicationContext entity:v12];
      animationFence = [v73 animationFence];

      if (animationFence)
      {
        [(SBSuspendedWorkspaceTransaction *)a2 _childTransactionDidComplete:?];
      }

      v70 = sceneHandle;
      v71 = applicationContext;
      if ([applicationContext isSceneless])
      {
        v63 = process;
        v64 = v9;
        if ([(SBSuspendedWorkspaceTransaction *)self isAuditHistoryEnabled])
        {
          [(SBSuspendedWorkspaceTransaction *)self _addAuditHistoryItem:@"launched scene-less"];
        }

        selfCopy = self;
        v67 = v12;
        v65 = v7;
        actions = [v73 actions];
        v17 = [actions mutableCopy];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v18 = actions;
        v19 = [v18 countByEnumeratingWithState:&v77 objects:v82 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v78;
          v22 = 0x277D75000uLL;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v78 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v24 = *(*(&v77 + 1) + 8 * i);
              if ([v24 UIActionType] == 1 && (objc_opt_respondsToSelector() & 1) != 0)
              {
                v25 = objc_alloc(*(v22 + 2000));
                v26 = [v24 url];
                workspaceOriginatingProcess = [v24 workspaceOriginatingProcess];
                if (workspaceOriginatingProcess)
                {
                  v28 = [v25 initWithURL:v26 workspaceOriginatingProcess:workspaceOriginatingProcess];
                }

                else
                {
                  [v73 originatingProcess];
                  v29 = v18;
                  v31 = v30 = v17;
                  v28 = [v25 initWithURL:v26 workspaceOriginatingProcess:v31];

                  v17 = v30;
                  v18 = v29;
                  v22 = 0x277D75000;
                }

                [v17 removeObject:v24];
                [v17 addObject:v28];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v77 objects:v82 count:16];
          }

          while (v20);
        }

        v32 = [MEMORY[0x277D47008] targetWithPid:v69];
        v33 = [MEMORY[0x277D46D78] attributeWithCompletionPolicy:1];
        v81[0] = v33;
        grantWithUserInteractivity = [MEMORY[0x277D46DF0] grantWithUserInteractivity];
        v81[1] = grantWithUserInteractivity;
        grantWithForegroundPriority = [MEMORY[0x277D46EA8] grantWithForegroundPriority];
        v81[2] = grantWithForegroundPriority;
        v36 = [MEMORY[0x277D46FC0] grantWithResistance:40];
        v81[3] = v36;
        [MEMORY[0x277D46E30] grant];
        v38 = v37 = v17;
        v81[4] = v38;
        v39 = [MEMORY[0x277D46FD0] withReason:9];
        v81[5] = v39;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:6];

        v41 = v32;
        v42 = [objc_alloc(MEMORY[0x277D46DB8]) initWithExplanation:@"SBHandleScenelessWorkspaceAction" target:v32 attributes:v40];
        [v42 acquireWithError:0];
        v43 = dispatch_time(0, 2000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __64__SBSuspendedWorkspaceTransaction__childTransactionDidComplete___block_invoke;
        block[3] = &unk_2783A8C18;
        v76 = v42;
        v44 = v42;
        dispatch_after(v43, MEMORY[0x277D85CD0], block);
        process = v63;
        workspace = [v63 workspace];
        [workspace sendActions:v37];

        application = [v67 application];
        _dataStore = [application _dataStore];
        uniqueIdentifier = [v67 uniqueIdentifier];
        [_dataStore removeSceneStoreForIdentifier:uniqueIdentifier];

        v12 = v67;
        v7 = v65;
        self = selfCopy;
        v9 = v64;
      }

      else
      {
        sceneIdentifier = [sceneHandle sceneIdentifier];
        sceneIfExists = [sceneHandle sceneIfExists];
        if (sceneIfExists)
        {
          if ([(SBSuspendedWorkspaceTransaction *)self isAuditHistoryEnabled])
          {
            [(SBSuspendedWorkspaceTransaction *)self _addAuditHistoryItem:@"sent transition to scene %@", sceneIdentifier];
          }

          settings = [sceneIfExists settings];
          [sceneIfExists updateSettings:settings withTransitionContext:v73];
        }

        else
        {
          applicationContext2 = [transitionRequest applicationContext];
          v68 = v12;
          settings = [sceneHandle _createParametersFromTransitionContext:applicationContext2 entity:v12];

          if ([(SBSuspendedWorkspaceTransaction *)self isAuditHistoryEnabled])
          {
            [(SBSuspendedWorkspaceTransaction *)self _addAuditHistoryItem:@"created scene %@", sceneIdentifier, v73];
          }

          mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
          workspace2 = [process workspace];
          v59 = [mEMORY[0x277D0AAD8] createSceneWithIdentifier:sceneIdentifier parameters:settings clientProvider:workspace2 transitionContext:v73];

          v60 = [v71 applicationSceneEntityForLayoutRole:4];
          v61 = v60;
          if (v60)
          {
            activationSettings = [v60 activationSettings];
            if ([activationSettings _settingsAreValidToMoveContentToNewScene])
            {
              [(SBSuspendedWorkspaceTransaction *)self _addSceneEntityToAppRecency:v61];
            }
          }

          v12 = v68;
        }
      }
    }

    if (![(NSMutableSet *)self->_incompleteProcessLaunchTransactions count])
    {
      [(SBSuspendedWorkspaceTransaction *)self _sendActivationResultWithError:self->_anyLaunchError];
      [(SBSuspendedWorkspaceTransaction *)self removeMilestone:@"waitForLaunches"];
    }
  }

  v74.receiver = self;
  v74.super_class = SBSuspendedWorkspaceTransaction;
  [(SBSuspendedWorkspaceTransaction *)&v74 _childTransactionDidComplete:v7];
}

- (void)_addSceneEntityToAppRecency:(id)recency
{
  sceneHandle = [recency sceneHandle];
  scene = [sceneHandle scene];
  parameters = [scene parameters];
  v6 = [parameters mutableCopy];

  [v6 updateSettingsWithBlock:&__block_literal_global_192];
  settings = [v6 settings];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__SBSuspendedWorkspaceTransaction__addSceneEntityToAppRecency___block_invoke_2;
  v20[3] = &unk_2783A9398;
  v21 = scene;
  v8 = scene;
  [v8 updateSettings:settings withTransitionContext:0 completion:v20];

  application = [sceneHandle application];
  bundleIdentifier = [application bundleIdentifier];

  sceneIdentifier = [sceneHandle sceneIdentifier];
  v12 = [SBDisplayItem applicationDisplayItemWithBundleIdentifier:bundleIdentifier sceneIdentifier:sceneIdentifier];
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [sceneHandle displayIdentity];
  v15 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  switcherController = [v15 switcherController];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__SBSuspendedWorkspaceTransaction__addSceneEntityToAppRecency___block_invoke_4;
  v18[3] = &unk_2783AE4B8;
  v19 = sceneIdentifier;
  v17 = sceneIdentifier;
  [switcherController addCenterRoleAppLayoutForDisplayItem:v12 completion:v18];
}

uint64_t __63__SBSuspendedWorkspaceTransaction__addSceneEntityToAppRecency___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) updateSettingsWithBlock:&__block_literal_global_51_2];
  }

  return result;
}

void __63__SBSuspendedWorkspaceTransaction__addSceneEntityToAppRecency___block_invoke_4(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = SBLogAppSwitcher();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Finished adding new scene identifier: %{public}@ to recent apps.", &v4, 0xCu);
  }
}

- (void)transaction:(id)transaction willLaunchProcess:(id)process
{
  transactionCopy = transaction;
  processCopy = process;
  if ([(NSMutableSet *)self->_outstandingProcessLaunchTransactions containsObject:transactionCopy])
  {
    [(NSMutableSet *)self->_outstandingProcessLaunchTransactions removeObject:transactionCopy];
    if (([processCopy isRunning] & 1) == 0)
    {
      anyLaunchError = self->_anyLaunchError;
      if (anyLaunchError)
      {
        v8 = anyLaunchError;
        exitContext = self->_anyLaunchError;
        self->_anyLaunchError = v8;
      }

      else
      {
        exitContext = [processCopy exitContext];
        createError = [exitContext createError];
        v11 = self->_anyLaunchError;
        self->_anyLaunchError = createError;
      }
    }

    if (![(NSMutableSet *)self->_outstandingProcessLaunchTransactions count])
    {
      [(SBSuspendedWorkspaceTransaction *)self _sendActivationResultWithError:self->_anyLaunchError];
    }
  }
}

- (void)_childTransactionDidComplete:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSuspendedWorkspaceTransaction.m" lineNumber:90 description:@"should have stored a scene handle"];
}

- (void)_childTransactionDidComplete:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSuspendedWorkspaceTransaction.m" lineNumber:101 description:@"suspended launches cannot contain animation fences"];
}

@end