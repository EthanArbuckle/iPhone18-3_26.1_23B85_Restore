@interface SBWorkspaceTransaction
- (BOOL)isMainDisplayTransaction;
- (SBWorkspaceTransaction)init;
- (SBWorkspaceTransaction)initWithTransitionRequest:(id)request;
- (id)_childWorkspaceTransactions;
- (id)_customizedDescriptionProperties;
- (void)_didComplete;
- (void)_didInterruptForTransitionRequest:(id)request;
- (void)_performDeviceCoherencyCheck;
- (void)_willInterruptForTransitionRequest:(id)request;
- (void)interruptForTransitionRequest:(id)request;
- (void)keepAliveForAsyncBlock:(id)block;
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
  v4 = [MEMORY[0x277CF0C00] descriptionForObject:self];
  transitionRequest = [self transitionRequest];
  compactDescriptionBuilder = [transitionRequest compactDescriptionBuilder];
  build = [compactDescriptionBuilder build];
  v8 = 138543618;
  v9 = v4;
  v10 = 2114;
  v11 = build;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Re-locking because device coherency check failed for transaction %{public}@ with transition request %{public}@", &v8, 0x16u);
}

- (BOOL)isMainDisplayTransaction
{
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  isMainDisplayWindowScene = [windowScene isMainDisplayWindowScene];

  return isMainDisplayWindowScene;
}

- (SBWorkspaceTransaction)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBWorkspaceTransaction.m" lineNumber:92 description:@"use initWithTransitionRequest:"];

  return 0;
}

- (SBWorkspaceTransaction)initWithTransitionRequest:(id)request
{
  requestCopy = request;
  v17.receiver = self;
  v17.super_class = SBWorkspaceTransaction;
  v6 = [(SBTransaction *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transitionRequest, request);
    v7->_clearsCompletionAsynchronously = 1;
    windowSceneManager = [SBApp windowSceneManager];
    displayIdentity = [requestCopy displayIdentity];
    v10 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];
    windowScene = v7->_windowScene;
    v7->_windowScene = v10;

    layoutStateTransitionCoordinator = [(SBWindowScene *)v7->_windowScene layoutStateTransitionCoordinator];
    layoutStateTransitionCoordinator = v7->_layoutStateTransitionCoordinator;
    v7->_layoutStateTransitionCoordinator = layoutStateTransitionCoordinator;

    sceneManager = [(SBWindowScene *)v7->_windowScene sceneManager];
    sceneManager = v7->_sceneManager;
    v7->_sceneManager = sceneManager;

    [(SBWorkspaceTransitionRequest *)v7->_transitionRequest finalize];
  }

  return v7;
}

- (void)keepAliveForAsyncBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    [(SBWorkspaceTransaction *)self addMilestone:@"keepAliveForAsyncBlock"];
    queue = [(SBTransaction *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__SBWorkspaceTransaction_keepAliveForAsyncBlock___block_invoke;
    v6[3] = &unk_2783A9878;
    v6[4] = self;
    v7 = blockCopy;
    dispatch_async(queue, v6);
  }
}

uint64_t __49__SBWorkspaceTransaction_keepAliveForAsyncBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 removeMilestone:@"keepAliveForAsyncBlock"];
}

- (void)interruptForTransitionRequest:(id)request
{
  requestCopy = request;
  if ([(SBWorkspaceTransaction *)self isRunning]&& ([(SBWorkspaceTransaction *)self isComplete]& 1) == 0 && ([(SBWorkspaceTransaction *)self isInterrupted]& 1) == 0)
  {
    v6 = requestCopy;
    if (!requestCopy)
    {
      [(SBWorkspaceTransaction *)a2 interruptForTransitionRequest:?];
      v6 = 0;
    }

    [(SBWorkspaceTransaction *)self _willInterruptForTransitionRequest:v6];
    objc_storeStrong(&self->_transitionRequestForPendingInterruption, request);
    v7 = MEMORY[0x277CCACA8];
    succinctDescriptionBuilder = [requestCopy succinctDescriptionBuilder];
    build = [succinctDescriptionBuilder build];
    v10 = [v7 stringWithFormat:@"Interrupted for transition request: %@", build];
    [(SBWorkspaceTransaction *)self interruptWithReason:v10];

    transitionRequestForPendingInterruption = self->_transitionRequestForPendingInterruption;
    self->_transitionRequestForPendingInterruption = 0;

    [(SBWorkspaceTransaction *)self _didInterruptForTransitionRequest:requestCopy];
  }
}

- (id)_customizedDescriptionProperties
{
  if ([(SBWorkspaceTransaction *)self _isRootTransaction])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
    succinctDescription = [transitionRequest succinctDescription];

    if (succinctDescription)
    {
      [dictionary setObject:succinctDescription forKey:@"Request"];
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (id)_childWorkspaceTransactions
{
  childTransactions = [(SBWorkspaceTransaction *)self childTransactions];
  v3 = [childTransactions bs_objectsOfClass:objc_opt_class()];

  return v3;
}

- (void)_willInterruptForTransitionRequest:(id)request
{
  v17 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  self->_clearsCompletionAsynchronously = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _childWorkspaceTransactions = [(SBWorkspaceTransaction *)self _childWorkspaceTransactions];
  v7 = [_childWorkspaceTransactions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_childWorkspaceTransactions);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_storeStrong(v11 + 20, request);
        [v11 _willInterruptForTransitionRequest:requestCopy];
        ++v10;
      }

      while (v8 != v10);
      v8 = [_childWorkspaceTransactions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_didInterruptForTransitionRequest:(id)request
{
  v17 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _childWorkspaceTransactions = [(SBWorkspaceTransaction *)self _childWorkspaceTransactions];
  v6 = [_childWorkspaceTransactions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_childWorkspaceTransactions);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = v10[20];
        v10[20] = 0;

        [v10 _didInterruptForTransitionRequest:requestCopy];
        ++v9;
      }

      while (v7 != v9);
      v7 = [_childWorkspaceTransactions countByEnumeratingWithState:&v12 objects:v16 count:16];
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