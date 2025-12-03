@interface SBIdleTimerCoordinatorHelper
- (BOOL)hasProvider:(id)provider;
- (SBIdleTimerCoordinating)targetCoordinator;
- (SBIdleTimerCoordinatorHelper)initWithSourceProvider:(id)provider;
- (SBIdleTimerProviding)sourceProvider;
- (id)_updateProvider:(id)provider behavior:(id)behavior reason:(id)reason;
- (id)_updateProviderInfo:(id)info behavior:(id)behavior reason:(id)reason;
- (id)idleTimerProxyForProvider:(id)provider;
- (id)proposeIdleTimerBehavior:(id)behavior fromProvider:(id)provider reason:(id)reason;
- (id)proposeProvider:(id)provider byCoordinator:(id)coordinator reason:(id)reason;
- (void)bindProvider:(id)provider toSourceTimer:(id)timer behavior:(id)behavior forReason:(id)reason;
- (void)removeProvider:(id)provider;
@end

@implementation SBIdleTimerCoordinatorHelper

- (SBIdleTimerCoordinating)targetCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_targetCoordinator);

  return WeakRetained;
}

- (SBIdleTimerProviding)sourceProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceProvider);

  return WeakRetained;
}

- (SBIdleTimerCoordinatorHelper)initWithSourceProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = SBIdleTimerCoordinatorHelper;
  v5 = [(SBIdleTimerCoordinatorHelper *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sourceProvider, providerCopy);
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    idleTimerCache = v6->_idleTimerCache;
    v6->_idleTimerCache = weakToStrongObjectsMapTable;
  }

  return v6;
}

- (BOOL)hasProvider:(id)provider
{
  providerCopy = provider;
  idleTimerCache = [(SBIdleTimerCoordinatorHelper *)self idleTimerCache];
  v6 = [idleTimerCache objectForKey:providerCopy];

  return v6 != 0;
}

- (id)proposeIdleTimerBehavior:(id)behavior fromProvider:(id)provider reason:(id)reason
{
  v24 = *MEMORY[0x277D85DE8];
  behaviorCopy = behavior;
  providerCopy = provider;
  reasonCopy = reason;
  v11 = SBLogIdleTimer();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138543874;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = reasonCopy;
    v22 = 2114;
    v23 = behaviorCopy;
    v17 = v19;
    _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "PROPOSE BEHAVIOR: %{public}@ reason:%{public}@ %{public}@", &v18, 0x20u);
  }

  v12 = [(SBIdleTimerCoordinatorHelper *)self _updateProvider:providerCopy behavior:behaviorCopy reason:reasonCopy];
  targetCoordinator = [(SBIdleTimerCoordinatorHelper *)self targetCoordinator];
  sourceProvider = [(SBIdleTimerCoordinatorHelper *)self sourceProvider];
  v15 = [targetCoordinator idleTimerProvider:sourceProvider didProposeBehavior:behaviorCopy forReason:reasonCopy];

  [v12 setSourceTimer:v15];

  return v12;
}

- (id)proposeProvider:(id)provider byCoordinator:(id)coordinator reason:(id)reason
{
  v28 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  coordinatorCopy = coordinator;
  reasonCopy = reason;
  v11 = SBLogIdleTimer();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v19 = objc_opt_class();
    v20 = v19;
    v22 = 138543874;
    v23 = v19;
    v24 = 2114;
    v25 = objc_opt_class();
    v26 = 2114;
    v27 = reasonCopy;
    v21 = v25;
    _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "PROPOSE provider:%{public}@ coordinator:%{public}@ reason:%{public}@ ", &v22, 0x20u);
  }

  v12 = [providerCopy coordinatorRequestedIdleTimerBehavior:coordinatorCopy];
  v13 = [(SBIdleTimerCoordinatorHelper *)self _updateProviderInfo:providerCopy behavior:v12 reason:reasonCopy];
  targetCoordinator = [(SBIdleTimerCoordinatorHelper *)self targetCoordinator];
  sourceProvider = [(SBIdleTimerCoordinatorHelper *)self sourceProvider];
  v16 = [targetCoordinator idleTimerProvider:sourceProvider didProposeBehavior:v12 forReason:reasonCopy];

  idleTimerProxy = [v13 idleTimerProxy];
  [idleTimerProxy setSourceTimer:v16];

  return idleTimerProxy;
}

- (void)bindProvider:(id)provider toSourceTimer:(id)timer behavior:(id)behavior forReason:(id)reason
{
  timerCopy = timer;
  v11 = [(SBIdleTimerCoordinatorHelper *)self _updateProvider:provider behavior:behavior reason:reason];
  [v11 setSourceTimer:timerCopy];
}

- (void)removeProvider:(id)provider
{
  providerCopy = provider;
  v5 = SBLogIdleTimer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBIdleTimerCoordinatorHelper *)providerCopy removeProvider:v5];
  }

  [(NSMapTable *)self->_idleTimerCache removeObjectForKey:providerCopy];
}

- (id)idleTimerProxyForProvider:(id)provider
{
  v3 = [(NSMapTable *)self->_idleTimerCache objectForKey:provider];
  idleTimerProxy = [v3 idleTimerProxy];

  return idleTimerProxy;
}

- (id)_updateProvider:(id)provider behavior:(id)behavior reason:(id)reason
{
  v22 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  behaviorCopy = behavior;
  reasonCopy = reason;
  v11 = SBLogIdleTimer();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138543874;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = reasonCopy;
    v20 = 2114;
    v21 = behaviorCopy;
    v15 = v17;
    _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "UPDATE BEHAVIOR: %{public}@ reason:%{public}@ %{public}@", &v16, 0x20u);
  }

  v12 = [(SBIdleTimerCoordinatorHelper *)self _updateProviderInfo:providerCopy behavior:behaviorCopy reason:reasonCopy];
  idleTimerProxy = [v12 idleTimerProxy];

  return idleTimerProxy;
}

- (id)_updateProviderInfo:(id)info behavior:(id)behavior reason:(id)reason
{
  infoCopy = info;
  behaviorCopy = behavior;
  idleTimerCache = self->_idleTimerCache;
  reasonCopy = reason;
  v12 = [(NSMapTable *)idleTimerCache objectForKey:infoCopy];
  if (v12)
  {
    v13 = v12;
    [(SBIdleTimerInfo *)v12 setBehavior:behaviorCopy];
    [(SBIdleTimerInfo *)v13 setReason:reasonCopy];
  }

  else
  {
    v14 = [[SBIdleTimerProxy alloc] initWithIdleTimerSource:0];
    v13 = [[SBIdleTimerInfo alloc] initWithProvider:infoCopy behavior:behaviorCopy reason:reasonCopy idleTimerProxy:v14];

    [(NSMapTable *)self->_idleTimerCache setObject:v13 forKey:infoCopy];
    reasonCopy = v14;
  }

  return v13;
}

- (void)removeProvider:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "REMOVE provider: %{public}@", &v4, 0xCu);
}

@end