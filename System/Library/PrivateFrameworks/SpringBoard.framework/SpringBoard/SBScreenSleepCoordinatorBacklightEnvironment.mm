@interface SBScreenSleepCoordinatorBacklightEnvironment
- (BLSBacklightSceneVisualState)visualState;
- (BOOL)hasUnrestrictedFramerateUpdates;
- (BOOL)isAlwaysOnEnabledForEnvironment;
- (BOOL)isLiveUpdating;
- (NSDate)presentationDate;
- (NSString)identifier;
- (SBScreenSleepCoordinatorBacklightEnvironment)initWithCoordinator:(id)coordinator;
- (void)addObserver:(id)observer;
- (void)clearPresentationDate;
- (void)invalidateContentForReason:(id)reason;
- (void)removeObserver:(id)observer;
- (void)requestDateSpecifiersForDateInterval:(id)interval previousPresentationDate:(id)date shouldReset:(BOOL)reset completion:(id)completion;
- (void)setAlwaysOnEnabledForEnvironment:(BOOL)environment;
- (void)setLiveUpdating:(BOOL)updating;
- (void)setUnrestrictedFramerateUpdates:(BOOL)updates;
- (void)updateToDateSpecifier:(id)specifier sceneContentsUpdated:(id)updated;
- (void)updateToVisualState:(id)state presentationDateSpecifier:(id)specifier animated:(BOOL)animated triggerEvent:(id)event touchTargetable:(BOOL)targetable sceneContentsUpdated:(id)updated performBacklightRamp:(id)ramp animationComplete:(id)self0;
@end

@implementation SBScreenSleepCoordinatorBacklightEnvironment

- (NSString)identifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v7 = [v3 stringWithFormat:@"%@-%@", v5, uUIDString];

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

- (SBScreenSleepCoordinatorBacklightEnvironment)initWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v14.receiver = self;
  v14.super_class = SBScreenSleepCoordinatorBacklightEnvironment;
  v5 = [(SBScreenSleepCoordinatorBacklightEnvironment *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_screenSleepCoordinator, coordinatorCopy);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v6->_uuid;
    v6->_uuid = uUID;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lock_observers = v6->_lock_observers;
    v6->_lock_observers = weakObjectsHashTable;

    v11 = [objc_alloc(MEMORY[0x277CF08C8]) initWithActiveAppearance:1 updateFidelity:3 adjustedLuminance:2];
    lock_visualState = v6->_lock_visualState;
    v6->_lock_visualState = v11;
  }

  return v6;
}

- (void)setAlwaysOnEnabledForEnvironment:(BOOL)environment
{
  environmentCopy = environment;
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_alwaysOnEnabledForEnvironment != environmentCopy)
  {
    self->_lock_alwaysOnEnabledForEnvironment = environmentCopy;
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
          [v11 hostEnvironment:self hostDidSetAlwaysOnEnabledForEnvironment:{environmentCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)setLiveUpdating:(BOOL)updating
{
  updatingCopy = updating;
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_liveUpdating != updatingCopy)
  {
    self->_lock_liveUpdating = updatingCopy;
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
          [v11 hostEnvironment:self hostDidSetLiveUpdating:{updatingCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)setUnrestrictedFramerateUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_unrestrictedFramerateUpdates != updatesCopy)
  {
    self->_lock_unrestrictedFramerateUpdates = updatesCopy;
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
          [v11 hostEnvironment:self hostDidSetUnrestrictedFramerateUpdates:{updatesCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateToVisualState:(id)state presentationDateSpecifier:(id)specifier animated:(BOOL)animated triggerEvent:(id)event touchTargetable:(BOOL)targetable sceneContentsUpdated:(id)updated performBacklightRamp:(id)ramp animationComplete:(id)self0
{
  animatedCopy = animated;
  stateCopy = state;
  specifierCopy = specifier;
  eventCopy = event;
  updatedCopy = updated;
  rampCopy = ramp;
  completeCopy = complete;
  if (rampCopy)
  {
    v22.n128_u64[0] = 0x3FE999999999999ALL;
    if (!animatedCopy)
    {
      v22.n128_f64[0] = 0.0;
    }

    rampCopy[2](rampCopy, v22);
  }

  os_unfair_lock_lock(&self->_lock);
  v23 = self->_lock_visualState;
  objc_storeStrong(&self->_lock_visualState, state);
  date = [specifierCopy date];
  lock_presentationDate = self->_lock_presentationDate;
  self->_lock_presentationDate = date;

  os_unfair_lock_unlock(&self->_lock);
  updatedCopy[2](updatedCopy);
  changeRequest = [eventCopy changeRequest];
  sourceEvent = [changeRequest sourceEvent];

  if (sourceEvent == 15)
  {
    if (completeCopy)
    {
      completeCopy[2](completeCopy);
    }
  }

  else
  {
    v28 = stateCopy;
    v29 = v23;
    v30 = completeCopy;
    BSDispatchMain();
  }
}

void __192__SBScreenSleepCoordinatorBacklightEnvironment_updateToVisualState_presentationDateSpecifier_animated_triggerEvent_touchTargetable_sceneContentsUpdated_performBacklightRamp_animationComplete___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained transitionToVisualState:*(a1 + 40) fromVisualState:*(a1 + 48) animated:*(a1 + 64) completion:*(a1 + 56)];
}

- (void)requestDateSpecifiersForDateInterval:(id)interval previousPresentationDate:(id)date shouldReset:(BOOL)reset completion:(id)completion
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CF0848];
  completionCopy = completion;
  intervalCopy = interval;
  v11 = [v8 alloc];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v13 = [v11 initWithDate:distantPast fidelity:0];
  v15[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  (*(completion + 2))(completionCopy, intervalCopy, v14);
}

- (void)updateToDateSpecifier:(id)specifier sceneContentsUpdated:(id)updated
{
  updatedCopy = updated;
  specifierCopy = specifier;
  os_unfair_lock_lock(&self->_lock);
  date = [specifierCopy date];
  lock_presentationDate = self->_lock_presentationDate;
  self->_lock_presentationDate = date;

  lock_visualState = self->_lock_visualState;
  fidelity = [specifierCopy fidelity];

  v11 = [(BLSBacklightSceneVisualState *)lock_visualState newVisualStateWithUpdateFidelity:fidelity];
  v12 = self->_lock_visualState;
  self->_lock_visualState = v11;

  os_unfair_lock_unlock(&self->_lock);
  v13 = updatedCopy;
  if (updatedCopy)
  {
    (*(updatedCopy + 2))(updatedCopy);
    v13 = updatedCopy;
  }
}

- (void)invalidateContentForReason:(id)reason
{
  v17 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
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
          [v11 hostEnvironment:self invalidateContentForReason:{reasonCopy, v12}];
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