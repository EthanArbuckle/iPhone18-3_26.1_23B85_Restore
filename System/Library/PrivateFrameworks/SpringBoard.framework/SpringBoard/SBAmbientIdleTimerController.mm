@interface SBAmbientIdleTimerController
- (SBAmbientIdleTimerController)initWithWindowScene:(id)scene;
- (SBWindowScene)_windowScene;
- (int64_t)idleTimerDuration;
- (int64_t)idleTimerMode;
- (int64_t)idleWarnMode;
- (unint64_t)_sourcesForMonitoredEvents;
- (void)_notifyObserversIdleTimerBehaviorDidChange;
- (void)_notifyObserversSuppressionDidEnd;
- (void)_notifyObserversUserSleepPredictedDidChange;
- (void)_setActiveSuppressionReasons:(unint64_t)reasons;
- (void)_setAmbientSuppressed:(BOOL)suppressed;
- (void)_setIdleTimerAllowedForAssertions:(BOOL)assertions;
- (void)_setIdleTimerAllowedForAssertions:(BOOL)assertions forSleepFocus:(BOOL)focus;
- (void)_setIdleTimerAllowedForAssertionsForSleepFocus:(BOOL)focus;
- (void)_setIdleTimerAllowedForSuppression:(BOOL)suppression;
- (void)_setSuppressionEnabled:(BOOL)enabled;
- (void)_setUserSleepPredicted:(BOOL)predicted;
- (void)_updateAmbientSuppressed;
- (void)_updateSuppressionManager;
- (void)dealloc;
- (void)setSuppressForSleep:(BOOL)sleep;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation SBAmbientIdleTimerController

- (SBAmbientIdleTimerController)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v18.receiver = self;
  v18.super_class = SBAmbientIdleTimerController;
  v5 = [(SBAmbientIdleTimerController *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, sceneCopy);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = weakObjectsHashTable;

    v9 = +[SBAmbientDomain rootSettings];
    ambientSettings = v6->_ambientSettings;
    v6->_ambientSettings = v9;

    v11 = _allAmbientIdleTimerControllers;
    if (!_allAmbientIdleTimerControllers)
    {
      weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v13 = _allAmbientIdleTimerControllers;
      _allAmbientIdleTimerControllers = weakObjectsHashTable2;

      blshService = [SBApp blshService];
      localAssertionService = [blshService localAssertionService];

      v16 = [(BLSHLocalAssertionAttributeHandler *)SBAllowAmbientIdleTimerAttributeHandler registerHandlerForService:localAssertionService];
      v11 = _allAmbientIdleTimerControllers;
    }

    [v11 addObject:v6];
    v6->_suppressForSleep = 0;
    v6->_monitoredSuppressionReasons = 2;
    v6->_suppressionEnabled = [(SBAmbientSettings *)v6->_ambientSettings enableSuppression];
    [(SBAmbientIdleTimerController *)v6 _updateSuppressionManager];
  }

  return v6;
}

- (void)dealloc
{
  [_allAmbientIdleTimerControllers removeObject:self];
  v3.receiver = self;
  v3.super_class = SBAmbientIdleTimerController;
  [(SBAmbientIdleTimerController *)&v3 dealloc];
}

- (void)setSuppressForSleep:(BOOL)sleep
{
  if (self->_suppressForSleep != sleep)
  {
    self->_suppressForSleep = sleep;
    [(SBAmbientIdleTimerController *)self _updateSuppressionManager];

    [(SBAmbientIdleTimerController *)self _updateAmbientSuppressed];
  }
}

- (int64_t)idleTimerMode
{
  if ([(SBAmbientIdleTimerController *)self idleTimerDuration]== 18)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (int64_t)idleTimerDuration
{
  isAmbientSuppressed = [(SBAmbientIdleTimerController *)self isAmbientSuppressed];
  ambientSettings = self->_ambientSettings;
  if (isAmbientSuppressed)
  {
    suppressedIdleTimerDuration = [(SBAmbientSettings *)ambientSettings suppressedIdleTimerDuration];
  }

  else
  {
    suppressedIdleTimerDuration = [(SBAmbientSettings *)ambientSettings idleTimerDuration];
  }

  v6 = suppressedIdleTimerDuration;
  if (([MEMORY[0x277D75128] isRunningInStoreDemoMode] & (suppressedIdleTimerDuration != 18)) != 0)
  {
    return 11;
  }

  else
  {
    return v6;
  }
}

- (int64_t)idleWarnMode
{
  isAmbientSuppressed = [(SBAmbientIdleTimerController *)self isAmbientSuppressed];
  ambientSettings = self->_ambientSettings;
  if (isAmbientSuppressed)
  {

    return [(SBAmbientSettings *)ambientSettings suppressedIdleTimerWarnMode];
  }

  else
  {

    return [(SBAmbientSettings *)ambientSettings idleTimerWarnMode];
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_ambientSettings == settings)
  {
    keyCopy = key;
    [(SBAmbientIdleTimerController *)self _notifyObserversIdleTimerBehaviorDidChange];
    v6 = [keyCopy isEqualToString:@"enableSuppression"];

    if (v6)
    {
      enableSuppression = [(SBAmbientSettings *)self->_ambientSettings enableSuppression];

      [(SBAmbientIdleTimerController *)self _setSuppressionEnabled:enableSuppression];
    }
  }
}

- (void)_setSuppressionEnabled:(BOOL)enabled
{
  if (enabled)
  {
    isAvailable = [MEMORY[0x277CC1D50] isAvailable];
  }

  else
  {
    isAvailable = 0;
  }

  if (self->_suppressionEnabled != isAvailable)
  {
    self->_suppressionEnabled = isAvailable;
    [(SBAmbientIdleTimerController *)self _updateSuppressionManager];

    [(SBAmbientIdleTimerController *)self _updateUserSleepPredicted];
  }
}

- (void)_updateSuppressionManager
{
  if (self->_suppressionEnabled && !self->_suppressionManager)
  {
    v3 = [objc_alloc(MEMORY[0x277CC1D50]) initWithClientType:2];
    suppressionManager = self->_suppressionManager;
    self->_suppressionManager = v3;
  }

  if (self->_suppressionManager)
  {
    if (self->_suppressForSleep)
    {
      if (!self->_suppressionServiceStarted)
      {
        objc_initWeak(location, self);
        v5 = SBLogAmbientIdleTimer();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Starting suppression monitoring", buf, 2u);
        }

        _sourcesForMonitoredEvents = [(SBAmbientIdleTimerController *)self _sourcesForMonitoredEvents];
        [(CMSuppressionManager *)self->_suppressionManager startService];
        v7 = self->_suppressionManager;
        mainQueue = [MEMORY[0x277CCABD8] mainQueue];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __57__SBAmbientIdleTimerController__updateSuppressionManager__block_invoke;
        v11[3] = &unk_2783C1908;
        objc_copyWeak(&v12, location);
        [(CMSuppressionManager *)v7 startSuppressionUpdatesToQueue:mainQueue withOptions:_sourcesForMonitoredEvents withHandler:v11];

        self->_suppressionServiceStarted = 1;
        objc_destroyWeak(&v12);
        objc_destroyWeak(location);
      }
    }

    else if (self->_suppressionServiceStarted)
    {
      v9 = SBLogAmbientIdleTimer();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Stopping suppression monitoring", location, 2u);
      }

      [(SBAmbientIdleTimerController *)self _setActiveSuppressionReasons:0];
      [(CMSuppressionManager *)self->_suppressionManager stopSuppressionUpdates];
      [(CMSuppressionManager *)self->_suppressionManager stopService];
      self->_suppressionServiceStarted = 0;
    }
  }

  if (!self->_suppressionEnabled)
  {
    if (self->_suppressionManager)
    {
      [(SBAmbientIdleTimerController *)self _setActiveSuppressionReasons:0];
      [(CMSuppressionManager *)self->_suppressionManager stopSuppressionUpdates];
      [(CMSuppressionManager *)self->_suppressionManager stopService];
      v10 = self->_suppressionManager;
      self->_suppressionManager = 0;

      self->_suppressionServiceStarted = 0;
    }
  }
}

void __57__SBAmbientIdleTimerController__updateSuppressionManager__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (!v5 || v6)
  {
    v13 = SBLogAmbientIdleTimer();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __57__SBAmbientIdleTimerController__updateSuppressionManager__block_invoke_cold_1(v5, v6, v13);
    }
  }

  else if (WeakRetained)
  {
    v9 = SBLogAmbientIdleTimer();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Received suppression event %@", &v14, 0xCu);
    }

    v10 = [v5 type];
    if (v10 == 2)
    {
      v12 = v8;
      v11 = 0;
      goto LABEL_13;
    }

    if (v10 == 1)
    {
      v11 = [v5 reason];
      v12 = v8;
LABEL_13:
      [v12 _setActiveSuppressionReasons:v11];
    }
  }
}

- (void)_notifyObserversIdleTimerBehaviorDidChange
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 ambientIdleTimerController:self didChangeIdleTimerBehavior:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversSuppressionDidEnd
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 ambientIdleTimerControllerSuppressionDidEnd:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversUserSleepPredictedDidChange
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 ambientIdleTimerController:self didUpdateUserSleepPredicted:self->_userSleepPredicted];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_setAmbientSuppressed:(BOOL)suppressed
{
  if (self->_ambientSuppressed != suppressed)
  {
    self->_ambientSuppressed = suppressed;
    [(SBAmbientIdleTimerController *)self _notifyObserversIdleTimerBehaviorDidChange];
  }
}

- (void)_updateAmbientSuppressed
{
  v23 = *MEMORY[0x277D85DE8];
  isAmbientSuppressed = [(SBAmbientIdleTimerController *)self isAmbientSuppressed];
  v4 = self->_idleTimerAllowedForAssertions || self->_idleTimerAllowedForAssertionsForSleepFocus && self->_suppressForSleep || self->_idleTimerAllowedForSuppression;
  [(SBAmbientIdleTimerController *)self _setAmbientSuppressed:v4];
  v5 = SBLogAmbientIdleTimer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    idleTimerAllowedForAssertions = self->_idleTimerAllowedForAssertions;
    idleTimerAllowedForAssertionsForSleepFocus = self->_idleTimerAllowedForAssertionsForSleepFocus;
    suppressForSleep = self->_suppressForSleep;
    idleTimerAllowedForSuppression = self->_idleTimerAllowedForSuppression;
    v12[0] = 67110400;
    v12[1] = isAmbientSuppressed;
    v13 = 1024;
    v14 = v4;
    v15 = 1024;
    v16 = idleTimerAllowedForAssertions;
    v17 = 1024;
    v18 = idleTimerAllowedForAssertionsForSleepFocus;
    v19 = 1024;
    v20 = suppressForSleep;
    v21 = 1024;
    v22 = idleTimerAllowedForSuppression;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Ambient supression state updated. wasAmbientSuppressed = %{BOOL}u  isAmbientSuppressed = %{BOOL}u  [ _idleTimerAllowedForAssertions = %{BOOL}u _idleTimerAllowedForAssertionsForSleepFocus = %{BOOL}u _suppressForSleep = %{BOOL}u _idleTimerAllowedForSuppression = %{BOOL}u ]", v12, 0x26u);
  }

  if (isAmbientSuppressed || !v4)
  {
    if (!v4 && isAmbientSuppressed)
    {
      v10 = SBLogAmbientIdleTimer();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Suppression ended", v12, 2u);
      }

      [(SBAmbientIdleTimerController *)self _notifyObserversSuppressionDidEnd];
    }
  }

  else
  {
    v11 = SBLogAmbientIdleTimer();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Suppression began", v12, 2u);
    }
  }
}

- (void)_setIdleTimerAllowedForAssertions:(BOOL)assertions
{
  if (self->_idleTimerAllowedForAssertions != assertions)
  {
    self->_idleTimerAllowedForAssertions = assertions;
    [(SBAmbientIdleTimerController *)self _updateAmbientSuppressed];
  }
}

- (void)_setIdleTimerAllowedForAssertionsForSleepFocus:(BOOL)focus
{
  if (self->_idleTimerAllowedForAssertionsForSleepFocus != focus)
  {
    self->_idleTimerAllowedForAssertionsForSleepFocus = focus;
    [(SBAmbientIdleTimerController *)self _updateAmbientSuppressed];
  }
}

- (void)_setIdleTimerAllowedForAssertions:(BOOL)assertions forSleepFocus:(BOOL)focus
{
  if (focus)
  {
    [(SBAmbientIdleTimerController *)self _setIdleTimerAllowedForAssertionsForSleepFocus:assertions];
  }

  else
  {
    [(SBAmbientIdleTimerController *)self _setIdleTimerAllowedForAssertions:assertions];
  }
}

- (void)_setIdleTimerAllowedForSuppression:(BOOL)suppression
{
  if (self->_idleTimerAllowedForSuppression != suppression)
  {
    self->_idleTimerAllowedForSuppression = suppression;
    [(SBAmbientIdleTimerController *)self _updateAmbientSuppressed];

    [(SBAmbientIdleTimerController *)self _updateUserSleepPredicted];
  }
}

- (void)_setActiveSuppressionReasons:(unint64_t)reasons
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = SBLogAmbientIdleTimer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    reasonsCopy = reasons;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Active suppression reasons: 0x%lx", &v6, 0xCu);
  }

  [(SBAmbientIdleTimerController *)self _setIdleTimerAllowedForSuppression:(self->_monitoredSuppressionReasons & reasons) != 0];
}

- (void)_setUserSleepPredicted:(BOOL)predicted
{
  if (self->_userSleepPredicted != predicted)
  {
    self->_userSleepPredicted = predicted;
    [(SBAmbientIdleTimerController *)self _notifyObserversUserSleepPredictedDidChange];
  }
}

- (unint64_t)_sourcesForMonitoredEvents
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  monitoredSuppressionReasons = self->_monitoredSuppressionReasons;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __58__SBAmbientIdleTimerController__sourcesForMonitoredEvents__block_invoke;
  v11 = &unk_2783B1618;
  v12 = &v13;
  v3 = v9;
  if (monitoredSuppressionReasons)
  {
    v4 = 0;
    v17 = 0;
    v5 = vcnt_s8(monitoredSuppressionReasons);
    v5.i16[0] = vaddlv_u8(v5);
    v6 = v5.i32[0];
    do
    {
      if (((1 << v4) & monitoredSuppressionReasons) != 0)
      {
        (v10)(v3);
        if (v17)
        {
          break;
        }

        --v6;
      }

      if (v4 > 0x3E)
      {
        break;
      }

      ++v4;
    }

    while (v6 > 0);
  }

  v7 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v7;
}

uint64_t __58__SBAmbientIdleTimerController__sourcesForMonitoredEvents__block_invoke(uint64_t result, unint64_t a2)
{
  if (a2 <= 4 && ((1 << a2) & 0x16) != 0)
  {
    *(*(*(result + 32) + 8) + 24) |= a2;
  }

  return result;
}

- (SBWindowScene)_windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

void __57__SBAmbientIdleTimerController__updateSuppressionManager__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [a2 localizedDescription];
  v7 = [a2 localizedFailureReason];
  v8 = 138543874;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  _os_log_fault_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_FAULT, "Suppression event error - event:%{public}@ error:%{public}@ reason:%{public}@", &v8, 0x20u);
}

@end