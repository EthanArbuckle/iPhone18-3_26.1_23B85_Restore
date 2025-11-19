@interface SBIdleTimerCoordinatorHelper
- (BOOL)hasProvider:(id)a3;
- (SBIdleTimerCoordinating)targetCoordinator;
- (SBIdleTimerCoordinatorHelper)initWithSourceProvider:(id)a3;
- (SBIdleTimerProviding)sourceProvider;
- (id)_updateProvider:(id)a3 behavior:(id)a4 reason:(id)a5;
- (id)_updateProviderInfo:(id)a3 behavior:(id)a4 reason:(id)a5;
- (id)idleTimerProxyForProvider:(id)a3;
- (id)proposeIdleTimerBehavior:(id)a3 fromProvider:(id)a4 reason:(id)a5;
- (id)proposeProvider:(id)a3 byCoordinator:(id)a4 reason:(id)a5;
- (void)bindProvider:(id)a3 toSourceTimer:(id)a4 behavior:(id)a5 forReason:(id)a6;
- (void)removeProvider:(id)a3;
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

- (SBIdleTimerCoordinatorHelper)initWithSourceProvider:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBIdleTimerCoordinatorHelper;
  v5 = [(SBIdleTimerCoordinatorHelper *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sourceProvider, v4);
    v7 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    idleTimerCache = v6->_idleTimerCache;
    v6->_idleTimerCache = v7;
  }

  return v6;
}

- (BOOL)hasProvider:(id)a3
{
  v4 = a3;
  v5 = [(SBIdleTimerCoordinatorHelper *)self idleTimerCache];
  v6 = [v5 objectForKey:v4];

  return v6 != 0;
}

- (id)proposeIdleTimerBehavior:(id)a3 fromProvider:(id)a4 reason:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogIdleTimer();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138543874;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v8;
    v17 = v19;
    _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "PROPOSE BEHAVIOR: %{public}@ reason:%{public}@ %{public}@", &v18, 0x20u);
  }

  v12 = [(SBIdleTimerCoordinatorHelper *)self _updateProvider:v9 behavior:v8 reason:v10];
  v13 = [(SBIdleTimerCoordinatorHelper *)self targetCoordinator];
  v14 = [(SBIdleTimerCoordinatorHelper *)self sourceProvider];
  v15 = [v13 idleTimerProvider:v14 didProposeBehavior:v8 forReason:v10];

  [v12 setSourceTimer:v15];

  return v12;
}

- (id)proposeProvider:(id)a3 byCoordinator:(id)a4 reason:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v27 = v10;
    v21 = v25;
    _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "PROPOSE provider:%{public}@ coordinator:%{public}@ reason:%{public}@ ", &v22, 0x20u);
  }

  v12 = [v8 coordinatorRequestedIdleTimerBehavior:v9];
  v13 = [(SBIdleTimerCoordinatorHelper *)self _updateProviderInfo:v8 behavior:v12 reason:v10];
  v14 = [(SBIdleTimerCoordinatorHelper *)self targetCoordinator];
  v15 = [(SBIdleTimerCoordinatorHelper *)self sourceProvider];
  v16 = [v14 idleTimerProvider:v15 didProposeBehavior:v12 forReason:v10];

  v17 = [v13 idleTimerProxy];
  [v17 setSourceTimer:v16];

  return v17;
}

- (void)bindProvider:(id)a3 toSourceTimer:(id)a4 behavior:(id)a5 forReason:(id)a6
{
  v10 = a4;
  v11 = [(SBIdleTimerCoordinatorHelper *)self _updateProvider:a3 behavior:a5 reason:a6];
  [v11 setSourceTimer:v10];
}

- (void)removeProvider:(id)a3
{
  v4 = a3;
  v5 = SBLogIdleTimer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBIdleTimerCoordinatorHelper *)v4 removeProvider:v5];
  }

  [(NSMapTable *)self->_idleTimerCache removeObjectForKey:v4];
}

- (id)idleTimerProxyForProvider:(id)a3
{
  v3 = [(NSMapTable *)self->_idleTimerCache objectForKey:a3];
  v4 = [v3 idleTimerProxy];

  return v4;
}

- (id)_updateProvider:(id)a3 behavior:(id)a4 reason:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogIdleTimer();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138543874;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v9;
    v15 = v17;
    _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "UPDATE BEHAVIOR: %{public}@ reason:%{public}@ %{public}@", &v16, 0x20u);
  }

  v12 = [(SBIdleTimerCoordinatorHelper *)self _updateProviderInfo:v8 behavior:v9 reason:v10];
  v13 = [v12 idleTimerProxy];

  return v13;
}

- (id)_updateProviderInfo:(id)a3 behavior:(id)a4 reason:(id)a5
{
  v8 = a3;
  v9 = a4;
  idleTimerCache = self->_idleTimerCache;
  v11 = a5;
  v12 = [(NSMapTable *)idleTimerCache objectForKey:v8];
  if (v12)
  {
    v13 = v12;
    [(SBIdleTimerInfo *)v12 setBehavior:v9];
    [(SBIdleTimerInfo *)v13 setReason:v11];
  }

  else
  {
    v14 = [[SBIdleTimerProxy alloc] initWithIdleTimerSource:0];
    v13 = [[SBIdleTimerInfo alloc] initWithProvider:v8 behavior:v9 reason:v11 idleTimerProxy:v14];

    [(NSMapTable *)self->_idleTimerCache setObject:v13 forKey:v8];
    v11 = v14;
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