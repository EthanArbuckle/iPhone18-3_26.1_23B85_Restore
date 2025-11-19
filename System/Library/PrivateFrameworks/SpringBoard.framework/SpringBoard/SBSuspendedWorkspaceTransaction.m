@interface SBSuspendedWorkspaceTransaction
- (void)_addSceneEntityToAppRecency:(id)a3;
- (void)_begin;
- (void)_childTransactionDidComplete:(id)a3;
- (void)_didComplete;
- (void)_sendActivationResultWithError:(id)a3;
- (void)transaction:(id)a3 willLaunchProcess:(id)a4;
@end

@implementation SBSuspendedWorkspaceTransaction

- (void)_begin
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSuspendedWorkspaceTransaction.m" lineNumber:58 description:@"must have a scene handle"];
}

- (void)_didComplete
{
  v4.receiver = self;
  v4.super_class = SBSuspendedWorkspaceTransaction;
  [(SBMainWorkspaceTransaction *)&v4 _didComplete];
  v3 = SBWTErrorCreateForTransaction(self);
  [(SBSuspendedWorkspaceTransaction *)self _sendActivationResultWithError:v3];
}

- (void)_sendActivationResultWithError:(id)a3
{
  v7 = a3;
  v4 = [(SBWorkspaceTransaction *)self transitionRequest];
  v5 = [v4 applicationContext];

  if ([v5 needsToSendActivationResult])
  {
    [v5 sendActivationResultError:v7];
    if ([(SBSuspendedWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      v6 = [v7 localizedFailureReason];
      [(SBSuspendedWorkspaceTransaction *)self _addAuditHistoryItem:@"Sent activation result; error = %@", v6];
    }
  }
}

- (void)_childTransactionDidComplete:(id)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = v5;
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
    v10 = [v9 process];
    v11 = [v10 pid];
    if (v11 < 1)
    {
      anyLaunchError = self->_anyLaunchError;
      if (anyLaunchError)
      {
        objc_storeStrong(&self->_anyLaunchError, anyLaunchError);
      }

      else
      {
        v53 = [v10 exitContext];
        v54 = [v53 createError];
        v55 = self->_anyLaunchError;
        self->_anyLaunchError = v54;
      }
    }

    else
    {
      v69 = v11;
      v12 = [(NSMapTable *)self->_launchTransactionToSceneEntityMap objectForKey:v9];
      v13 = [v12 sceneHandle];
      if (!v13)
      {
        [(SBSuspendedWorkspaceTransaction *)a2 _childTransactionDidComplete:?];
      }

      v72 = [(SBWorkspaceTransaction *)self transitionRequest];
      v14 = [v72 applicationContext];
      v73 = [v13 _createApplicationSceneTransitionContextFromContext:v14 entity:v12];
      v15 = [v73 animationFence];

      if (v15)
      {
        [(SBSuspendedWorkspaceTransaction *)a2 _childTransactionDidComplete:?];
      }

      v70 = v13;
      v71 = v14;
      if ([v14 isSceneless])
      {
        v63 = v10;
        v64 = v9;
        if ([(SBSuspendedWorkspaceTransaction *)self isAuditHistoryEnabled])
        {
          [(SBSuspendedWorkspaceTransaction *)self _addAuditHistoryItem:@"launched scene-less"];
        }

        v66 = self;
        v67 = v12;
        v65 = v7;
        v16 = [v73 actions];
        v17 = [v16 mutableCopy];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v18 = v16;
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
                v27 = [v24 workspaceOriginatingProcess];
                if (v27)
                {
                  v28 = [v25 initWithURL:v26 workspaceOriginatingProcess:v27];
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
        v34 = [MEMORY[0x277D46DF0] grantWithUserInteractivity];
        v81[1] = v34;
        v35 = [MEMORY[0x277D46EA8] grantWithForegroundPriority];
        v81[2] = v35;
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
        v10 = v63;
        v45 = [v63 workspace];
        [v45 sendActions:v37];

        v46 = [v67 application];
        v47 = [v46 _dataStore];
        v48 = [v67 uniqueIdentifier];
        [v47 removeSceneStoreForIdentifier:v48];

        v12 = v67;
        v7 = v65;
        self = v66;
        v9 = v64;
      }

      else
      {
        v50 = [v13 sceneIdentifier];
        v51 = [v13 sceneIfExists];
        if (v51)
        {
          if ([(SBSuspendedWorkspaceTransaction *)self isAuditHistoryEnabled])
          {
            [(SBSuspendedWorkspaceTransaction *)self _addAuditHistoryItem:@"sent transition to scene %@", v50];
          }

          v52 = [v51 settings];
          [v51 updateSettings:v52 withTransitionContext:v73];
        }

        else
        {
          v56 = [v72 applicationContext];
          v68 = v12;
          v52 = [v13 _createParametersFromTransitionContext:v56 entity:v12];

          if ([(SBSuspendedWorkspaceTransaction *)self isAuditHistoryEnabled])
          {
            [(SBSuspendedWorkspaceTransaction *)self _addAuditHistoryItem:@"created scene %@", v50, v73];
          }

          v57 = [MEMORY[0x277D0AAD8] sharedInstance];
          v58 = [v10 workspace];
          v59 = [v57 createSceneWithIdentifier:v50 parameters:v52 clientProvider:v58 transitionContext:v73];

          v60 = [v71 applicationSceneEntityForLayoutRole:4];
          v61 = v60;
          if (v60)
          {
            v62 = [v60 activationSettings];
            if ([v62 _settingsAreValidToMoveContentToNewScene])
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

- (void)_addSceneEntityToAppRecency:(id)a3
{
  v3 = [a3 sceneHandle];
  v4 = [v3 scene];
  v5 = [v4 parameters];
  v6 = [v5 mutableCopy];

  [v6 updateSettingsWithBlock:&__block_literal_global_192];
  v7 = [v6 settings];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__SBSuspendedWorkspaceTransaction__addSceneEntityToAppRecency___block_invoke_2;
  v20[3] = &unk_2783A9398;
  v21 = v4;
  v8 = v4;
  [v8 updateSettings:v7 withTransitionContext:0 completion:v20];

  v9 = [v3 application];
  v10 = [v9 bundleIdentifier];

  v11 = [v3 sceneIdentifier];
  v12 = [SBDisplayItem applicationDisplayItemWithBundleIdentifier:v10 sceneIdentifier:v11];
  v13 = [SBApp windowSceneManager];
  v14 = [v3 displayIdentity];
  v15 = [v13 windowSceneForDisplayIdentity:v14];

  v16 = [v15 switcherController];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__SBSuspendedWorkspaceTransaction__addSceneEntityToAppRecency___block_invoke_4;
  v18[3] = &unk_2783AE4B8;
  v19 = v11;
  v17 = v11;
  [v16 addCenterRoleAppLayoutForDisplayItem:v12 completion:v18];
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

- (void)transaction:(id)a3 willLaunchProcess:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([(NSMutableSet *)self->_outstandingProcessLaunchTransactions containsObject:v12])
  {
    [(NSMutableSet *)self->_outstandingProcessLaunchTransactions removeObject:v12];
    if (([v6 isRunning] & 1) == 0)
    {
      anyLaunchError = self->_anyLaunchError;
      if (anyLaunchError)
      {
        v8 = anyLaunchError;
        v9 = self->_anyLaunchError;
        self->_anyLaunchError = v8;
      }

      else
      {
        v9 = [v6 exitContext];
        v10 = [v9 createError];
        v11 = self->_anyLaunchError;
        self->_anyLaunchError = v10;
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