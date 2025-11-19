@interface SBScreenSleepCoordinatorBacklightEnvironment
- (BLSBacklightSceneVisualState)visualState;
- (BOOL)hasUnrestrictedFramerateUpdates;
- (BOOL)isAlwaysOnEnabledForEnvironment;
- (BOOL)isLiveUpdating;
- (NSDate)presentationDate;
- (NSString)identifier;
- (SBScreenSleepCoordinatorBacklightEnvironment)initWithCoordinator:(id)a3;
- (void)addObserver:(id)a3;
- (void)clearPresentationDate;
- (void)invalidateContentForReason:(id)a3;
- (void)removeObserver:(id)a3;
- (void)requestDateSpecifiersForDateInterval:(id)a3 previousPresentationDate:(id)a4 shouldReset:(BOOL)a5 completion:(id)a6;
- (void)setAlwaysOnEnabledForEnvironment:(BOOL)a3;
- (void)setLiveUpdating:(BOOL)a3;
- (void)setUnrestrictedFramerateUpdates:(BOOL)a3;
- (void)updateToDateSpecifier:(id)a3 sceneContentsUpdated:(id)a4;
- (void)updateToVisualState:(id)a3 presentationDateSpecifier:(id)a4 animated:(BOOL)a5 triggerEvent:(id)a6 touchTargetable:(BOOL)a7 sceneContentsUpdated:(id)a8 performBacklightRamp:(id)a9 animationComplete:(id)a10;
@end

@implementation SBScreenSleepCoordinatorBacklightEnvironment

- (NSString)identifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSUUID *)self->_uuid UUIDString];
  v7 = [v3 stringWithFormat:@"%@-%@", v5, v6];

  return v7;
}

- (NSDate)presentationDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_presentationDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BLSBacklightSceneVisualState)visualState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_visualState;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isAlwaysOnEnabledForEnvironment
{
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnEnabledForEnvironment = self->_lock_alwaysOnEnabledForEnvironment;
  os_unfair_lock_unlock(&self->_lock);
  return lock_alwaysOnEnabledForEnvironment;
}

- (BOOL)isLiveUpdating
{
  os_unfair_lock_lock(&self->_lock);
  lock_liveUpdating = self->_lock_liveUpdating;
  os_unfair_lock_unlock(&self->_lock);
  return lock_liveUpdating;
}

- (BOOL)hasUnrestrictedFramerateUpdates
{
  os_unfair_lock_lock(&self->_lock);
  lock_unrestrictedFramerateUpdates = self->_lock_unrestrictedFramerateUpdates;
  os_unfair_lock_unlock(&self->_lock);
  return lock_unrestrictedFramerateUpdates;
}

- (void)clearPresentationDate
{
  os_unfair_lock_lock(&self->_lock);
  lock_presentationDate = self->_lock_presentationDate;
  self->_lock_presentationDate = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (SBScreenSleepCoordinatorBacklightEnvironment)initWithCoordinator:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBScreenSleepCoordinatorBacklightEnvironment;
  v5 = [(SBScreenSleepCoordinatorBacklightEnvironment *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_screenSleepCoordinator, v4);
    v7 = [MEMORY[0x277CCAD78] UUID];
    uuid = v6->_uuid;
    v6->_uuid = v7;

    v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lock_observers = v6->_lock_observers;
    v6->_lock_observers = v9;

    v11 = [objc_alloc(MEMORY[0x277CF08C8]) initWithActiveAppearance:1 updateFidelity:3 adjustedLuminance:2];
    lock_visualState = v6->_lock_visualState;
    v6->_lock_visualState = v11;
  }

  return v6;
}

- (void)setAlwaysOnEnabledForEnvironment:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_alwaysOnEnabledForEnvironment != v3)
  {
    self->_lock_alwaysOnEnabledForEnvironment = v3;
  }

  v5 = [(NSHashTable *)self->_lock_observers copy];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
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
        if (objc_opt_respondsToSelector())
        {
          [v11 hostEnvironment:self hostDidSetAlwaysOnEnabledForEnvironment:{v3, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)setLiveUpdating:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_liveUpdating != v3)
  {
    self->_lock_liveUpdating = v3;
  }

  v5 = [(NSHashTable *)self->_lock_observers copy];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
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
        if (objc_opt_respondsToSelector())
        {
          [v11 hostEnvironment:self hostDidSetLiveUpdating:{v3, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)setUnrestrictedFramerateUpdates:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_unrestrictedFramerateUpdates != v3)
  {
    self->_lock_unrestrictedFramerateUpdates = v3;
  }

  v5 = [(NSHashTable *)self->_lock_observers copy];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
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
        if (objc_opt_respondsToSelector())
        {
          [v11 hostEnvironment:self hostDidSetUnrestrictedFramerateUpdates:{v3, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateToVisualState:(id)a3 presentationDateSpecifier:(id)a4 animated:(BOOL)a5 triggerEvent:(id)a6 touchTargetable:(BOOL)a7 sceneContentsUpdated:(id)a8 performBacklightRamp:(id)a9 animationComplete:(id)a10
{
  v12 = a5;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  if (v20)
  {
    v22.n128_u64[0] = 0x3FE999999999999ALL;
    if (!v12)
    {
      v22.n128_f64[0] = 0.0;
    }

    v20[2](v20, v22);
  }

  os_unfair_lock_lock(&self->_lock);
  v23 = self->_lock_visualState;
  objc_storeStrong(&self->_lock_visualState, a3);
  v24 = [v17 date];
  lock_presentationDate = self->_lock_presentationDate;
  self->_lock_presentationDate = v24;

  os_unfair_lock_unlock(&self->_lock);
  v19[2](v19);
  v26 = [v18 changeRequest];
  v27 = [v26 sourceEvent];

  if (v27 == 15)
  {
    if (v21)
    {
      v21[2](v21);
    }
  }

  else
  {
    v28 = v16;
    v29 = v23;
    v30 = v21;
    BSDispatchMain();
  }
}

void __192__SBScreenSleepCoordinatorBacklightEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained transitionToVisualState:*(a1 + 40) fromVisualState:*(a1 + 48) animated:*(a1 + 64) completion:*(a1 + 56)];
}

- (void)requestDateSpecifiersForDateInterval:(id)a3 previousPresentationDate:(id)a4 shouldReset:(BOOL)a5 completion:(id)a6
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CF0848];
  v9 = a6;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [MEMORY[0x277CBEAA8] distantPast];
  v13 = [v11 initWithDate:v12 fidelity:0];
  v15[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  (*(a6 + 2))(v9, v10, v14);
}

- (void)updateToDateSpecifier:(id)a3 sceneContentsUpdated:(id)a4
{
  v14 = a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [v6 date];
  lock_presentationDate = self->_lock_presentationDate;
  self->_lock_presentationDate = v7;

  lock_visualState = self->_lock_visualState;
  v10 = [v6 fidelity];

  v11 = [(BLSBacklightSceneVisualState *)lock_visualState newVisualStateWithUpdateFidelity:v10];
  v12 = self->_lock_visualState;
  self->_lock_visualState = v11;

  os_unfair_lock_unlock(&self->_lock);
  v13 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14);
    v13 = v14;
  }
}

- (void)invalidateContentForReason:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_lock_observers copy];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
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
        if (objc_opt_respondsToSelector())
        {
          [v11 hostEnvironment:self invalidateContentForReason:{v4, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end