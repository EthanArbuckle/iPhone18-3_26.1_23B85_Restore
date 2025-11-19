@interface SBWorkspaceTransaction
- (BOOL)isMainDisplayTransaction;
- (SBWorkspaceTransaction)init;
- (SBWorkspaceTransaction)initWithTransitionRequest:(id)a3;
- (id)_childWorkspaceTransactions;
- (id)_customizedDescriptionProperties;
- (void)_didComplete;
- (void)_didInterruptForTransitionRequest:(id)a3;
- (void)_performDeviceCoherencyCheck;
- (void)_willInterruptForTransitionRequest:(id)a3;
- (void)interruptForTransitionRequest:(id)a3;
- (void)keepAliveForAsyncBlock:(id)a3;
@end

@implementation SBWorkspaceTransaction

- (void)_didComplete
{
  [(SBWorkspaceTransaction *)self _performDeviceCoherencyCheck];
  v3.receiver = self;
  v3.super_class = SBWorkspaceTransaction;
  [(SBWorkspaceTransaction *)&v3 _didComplete];
}

- (void)_performDeviceCoherencyCheck
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CF0C00] descriptionForObject:a1];
  v5 = [a1 transitionRequest];
  v6 = [v5 compactDescriptionBuilder];
  v7 = [v6 build];
  v8 = 138543618;
  v9 = v4;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Re-locking because device coherency check failed for transaction %{public}@ with transition request %{public}@", &v8, 0x16u);
}

- (BOOL)isMainDisplayTransaction
{
  v2 = [(SBWorkspaceTransaction *)self windowScene];
  v3 = [v2 isMainDisplayWindowScene];

  return v3;
}

- (SBWorkspaceTransaction)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBWorkspaceTransaction.m" lineNumber:92 description:@"use initWithTransitionRequest:"];

  return 0;
}

- (SBWorkspaceTransaction)initWithTransitionRequest:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = SBWorkspaceTransaction;
  v6 = [(SBTransaction *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transitionRequest, a3);
    v7->_clearsCompletionAsynchronously = 1;
    v8 = [SBApp windowSceneManager];
    v9 = [v5 displayIdentity];
    v10 = [v8 windowSceneForDisplayIdentity:v9];
    windowScene = v7->_windowScene;
    v7->_windowScene = v10;

    v12 = [(SBWindowScene *)v7->_windowScene layoutStateTransitionCoordinator];
    layoutStateTransitionCoordinator = v7->_layoutStateTransitionCoordinator;
    v7->_layoutStateTransitionCoordinator = v12;

    v14 = [(SBWindowScene *)v7->_windowScene sceneManager];
    sceneManager = v7->_sceneManager;
    v7->_sceneManager = v14;

    [(SBWorkspaceTransitionRequest *)v7->_transitionRequest finalize];
  }

  return v7;
}

- (void)keepAliveForAsyncBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(SBWorkspaceTransaction *)self addMilestone:@"keepAliveForAsyncBlock"];
    v5 = [(SBTransaction *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__SBWorkspaceTransaction_keepAliveForAsyncBlock___block_invoke;
    v6[3] = &unk_2783A9878;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

uint64_t __49__SBWorkspaceTransaction_keepAliveForAsyncBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 removeMilestone:@"keepAliveForAsyncBlock"];
}

- (void)interruptForTransitionRequest:(id)a3
{
  v12 = a3;
  if ([(SBWorkspaceTransaction *)self isRunning]&& ([(SBWorkspaceTransaction *)self isComplete]& 1) == 0 && ([(SBWorkspaceTransaction *)self isInterrupted]& 1) == 0)
  {
    v6 = v12;
    if (!v12)
    {
      [(SBWorkspaceTransaction *)a2 interruptForTransitionRequest:?];
      v6 = 0;
    }

    [(SBWorkspaceTransaction *)self _willInterruptForTransitionRequest:v6];
    objc_storeStrong(&self->_transitionRequestForPendingInterruption, a3);
    v7 = MEMORY[0x277CCACA8];
    v8 = [v12 succinctDescriptionBuilder];
    v9 = [v8 build];
    v10 = [v7 stringWithFormat:@"Interrupted for transition request: %@", v9];
    [(SBWorkspaceTransaction *)self interruptWithReason:v10];

    transitionRequestForPendingInterruption = self->_transitionRequestForPendingInterruption;
    self->_transitionRequestForPendingInterruption = 0;

    [(SBWorkspaceTransaction *)self _didInterruptForTransitionRequest:v12];
  }
}

- (id)_customizedDescriptionProperties
{
  if ([(SBWorkspaceTransaction *)self _isRootTransaction])
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [(SBWorkspaceTransaction *)self transitionRequest];
    v5 = [v4 succinctDescription];

    if (v5)
    {
      [v3 setObject:v5 forKey:@"Request"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_childWorkspaceTransactions
{
  v2 = [(SBWorkspaceTransaction *)self childTransactions];
  v3 = [v2 bs_objectsOfClass:objc_opt_class()];

  return v3;
}

- (void)_willInterruptForTransitionRequest:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  self->_clearsCompletionAsynchronously = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(SBWorkspaceTransaction *)self _childWorkspaceTransactions];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_storeStrong(v11 + 20, a3);
        [v11 _willInterruptForTransitionRequest:v5];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_didInterruptForTransitionRequest:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(SBWorkspaceTransaction *)self _childWorkspaceTransactions];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = v10[20];
        v10[20] = 0;

        [v10 _didInterruptForTransitionRequest:v4];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)interruptForTransitionRequest:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWorkspaceTransaction.m" lineNumber:145 description:@"Transition request cannot be nil when interrupting."];
}

@end