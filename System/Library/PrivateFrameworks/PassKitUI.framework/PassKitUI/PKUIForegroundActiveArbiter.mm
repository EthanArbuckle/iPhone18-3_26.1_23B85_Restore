@interface PKUIForegroundActiveArbiter
+ (BOOL)isDeactivedForReasons:(unsigned int)reasons;
+ (id)sharedInstance;
- ($96EE1C12479E9B303E9C2794B92A11A2)registerObserver:(id)observer;
- (id)_init;
- (unsigned)registerDeactivationObserver:(id)observer;
- (void)_beginEnteringForegroundTimer;
- (void)_didRemoveDeactivationReasonNotification:(id)notification;
- (void)_updateForegroundActiveWithEnteringForegroundPolicy:(int64_t)policy;
- (void)_willAddDeactivationReasonNotification:(id)notification;
- (void)dealloc;
- (void)didBecomeActive;
- (void)didEnterBackground;
- (void)unregisterDeactivationObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
- (void)willEnterForegroundPostlude;
- (void)willEnterForegroundPrelude;
- (void)willResignActive;
- (void)willTerminate;
@end

@implementation PKUIForegroundActiveArbiter

+ (id)sharedInstance
{
  if (_MergedGlobals_606 != -1)
  {
    dispatch_once(&_MergedGlobals_606, &__block_literal_global_199);
  }

  v3 = qword_1EBD6AD50;

  return v3;
}

void __45__PKUIForegroundActiveArbiter_sharedInstance__block_invoke()
{
  if (PKRunningInRemoteContext())
  {
    v0 = 0;
  }

  else
  {
    v0 = [[PKUIForegroundActiveArbiter alloc] _init];
  }

  v1 = qword_1EBD6AD50;
  qword_1EBD6AD50 = v0;
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = PKUIForegroundActiveArbiter;
  v2 = [(PKUIForegroundActiveArbiter *)&v9 init];
  if (v2)
  {
    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v2->_observers;
    v2->_observers = pk_weakObjectsHashTableUsingPointerPersonality;

    pk_weakObjectsHashTableUsingPointerPersonality2 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    deactivationObservers = v2->_deactivationObservers;
    v2->_deactivationObservers = pk_weakObjectsHashTableUsingPointerPersonality2;

    v2->_backgroundTaskIdentifier = *MEMORY[0x1E69DDBE8];
    v2->_lock._os_unfair_lock_opaque = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__willAddDeactivationReasonNotification_ name:*MEMORY[0x1E69DE878] object:0];
    [defaultCenter addObserver:v2 selector:sel__didRemoveDeactivationReasonNotification_ name:*MEMORY[0x1E69DE840] object:0];
  }

  return v2;
}

- (void)willEnterForegroundPrelude
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKUIForegroundActiveArbiter: willEnterForegroundPrelude.", v7, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_active)
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    self->_enteringForegroundExpired = 0;
    v4 = 1;
    v5 = 1;
  }

  self->_foreground = v6;
  self->_enteringForeground = v4;
  [(PKUIForegroundActiveArbiter *)self _updateForegroundActiveWithEnteringForegroundPolicy:v5];
}

- (void)willEnterForegroundPostlude
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKUIForegroundActiveArbiter: willEnterForegroundPostlude.", v4, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_enteringForeground)
  {
    [(PKUIForegroundActiveArbiter *)self _beginEnteringForegroundTimer];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_beginEnteringForegroundTimer
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PKUIForegroundActiveArbiter__beginEnteringForegroundTimer__block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  enteringForegroundTimeout = self->_enteringForegroundTimeout;
  if (enteringForegroundTimeout)
  {
    dispatch_source_cancel(enteringForegroundTimeout);
    v5 = self->_enteringForegroundTimeout;
    self->_enteringForegroundTimeout = 0;
  }

  backgroundTaskIdentifier = self->_backgroundTaskIdentifier;
  v7 = *MEMORY[0x1E69DDBE8];
  if (backgroundTaskIdentifier == *MEMORY[0x1E69DDBE8])
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    self->_backgroundTaskIdentifier = [mEMORY[0x1E69DC668] beginBackgroundTaskWithName:@"Entering Foreground" expirationHandler:v3];

    backgroundTaskIdentifier = self->_backgroundTaskIdentifier;
  }

  if (backgroundTaskIdentifier == v7)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKUIForegroundActiveArbiter: expiring entering foreground state (failed to acquire background task).", v14, 2u);
    }

    self->_enteringForegroundExpired = 1;
    [(PKUIForegroundActiveArbiter *)self _updateForegroundActiveWithEnteringForegroundPolicy:2];
  }

  else
  {
    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v11 = self->_enteringForegroundTimeout;
    self->_enteringForegroundTimeout = v10;

    v12 = self->_enteringForegroundTimeout;
    v13 = dispatch_time(0, 2500000000);
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    dispatch_source_set_event_handler(self->_enteringForegroundTimeout, v3);
    dispatch_resume(self->_enteringForegroundTimeout);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)didBecomeActive
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKUIForegroundActiveArbiter: didBecomeActive.", v4, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_active = 1;
  *&self->_foreground = 1;
  [(PKUIForegroundActiveArbiter *)self _updateForegroundActiveWithEnteringForegroundPolicy:0];
}

+ (BOOL)isDeactivedForReasons:(unsigned int)reasons
{
  if ((reasons & 0xA05F) != 0)
  {
    return 1;
  }

  else
  {
    return [self isBackgroundedForReasons:?];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKUIForegroundActiveArbiter;
  [(PKUIForegroundActiveArbiter *)&v4 dealloc];
}

- (void)didEnterBackground
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKUIForegroundActiveArbiter: didEnterBackground.", v4, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  *&self->_foreground = 0;
  [(PKUIForegroundActiveArbiter *)self _updateForegroundActiveWithEnteringForegroundPolicy:0];
}

- (void)willResignActive
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKUIForegroundActiveArbiter: willResignActive.", v4, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_active = 0;
  self->_enteringForeground = 0;
  [(PKUIForegroundActiveArbiter *)self _updateForegroundActiveWithEnteringForegroundPolicy:0];
}

- (void)willTerminate
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKUIForegroundActiveArbiter: willTerminate.", v4, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_active = 0;
  *&self->_foreground = 0;
  [(PKUIForegroundActiveArbiter *)self _updateForegroundActiveWithEnteringForegroundPolicy:0];
}

uint64_t __60__PKUIForegroundActiveArbiter__beginEnteringForegroundTimer__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 56));
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKUIForegroundActiveArbiter: expiring entering foreground state.", v4, 2u);
  }

  return [*(a1 + 32) _updateForegroundActiveWithEnteringForegroundPolicy:2];
}

- (void)_updateForegroundActiveWithEnteringForegroundPolicy:(int64_t)policy
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69DDBE8];
  if ((policy | 2) == 2)
  {
    enteringForegroundTimeout = self->_enteringForegroundTimeout;
    if (enteringForegroundTimeout)
    {
      dispatch_source_cancel(enteringForegroundTimeout);
      v7 = self->_enteringForegroundTimeout;
      self->_enteringForegroundTimeout = 0;
    }

    self->_enteringForegroundExpired = policy == 2 && self->_enteringForeground;
    backgroundTaskIdentifier = self->_backgroundTaskIdentifier;
    self->_backgroundTaskIdentifier = v4;
  }

  else
  {
    backgroundTaskIdentifier = *MEMORY[0x1E69DDBE8];
  }

  foreground = self->_foreground;
  if (foreground == 1 && self->_active || self->_enteringForeground && !self->_enteringForegroundExpired)
  {
    v10 = 1;
    v11 = 256;
    foreground = 1;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if (self->_foregroundActiveState.foregroundActive == v10 && self->_foregroundActiveState.foreground == foreground)
  {
    allObjects = 0;
  }

  else
  {
    self->_foregroundActiveState.foreground = foreground;
    self->_foregroundActiveState.foregroundActive = v10;
    allObjects = [(NSHashTable *)self->_observers allObjects];
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = objc_autoreleasePoolPush();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = allObjects;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    v18 = v11 | foreground;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        foreground = v18 | foreground & 0xFFFFFFFFFFFF0000;
        [*(*(&v23 + 1) + 8 * i) foregroundActiveArbiter:self didUpdateForegroundActiveState:foreground];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(v13);
  if (backgroundTaskIdentifier != v4)
  {
    v20 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, OS_LOG_TYPE_DEFAULT, "PKUIForegroundActiveArbiter: ending background task.", v22, 2u);
    }

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] endBackgroundTask:backgroundTaskIdentifier];
  }
}

- (void)_willAddDeactivationReasonNotification:(id)notification
{
  v22 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DE838]];
  integerValue = [v6 integerValue];

  os_unfair_lock_lock(&self->_lock);
  deactivationReasons = self->_deactivationReasons;
  v9 = deactivationReasons | (1 << integerValue);
  if (deactivationReasons == v9)
  {
    allObjects = 0;
  }

  else
  {
    self->_deactivationReasons = v9;
    allObjects = [(NSHashTable *)self->_deactivationObservers allObjects];
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = objc_autoreleasePoolPush();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = allObjects;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * i) foregroundActiveArbiter:self didUpdateDeactivationReasons:{self->_deactivationReasons, v17}];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(v11);
}

- (void)_didRemoveDeactivationReasonNotification:(id)notification
{
  v22 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DE838]];
  integerValue = [v6 integerValue];

  os_unfair_lock_lock(&self->_lock);
  deactivationReasons = self->_deactivationReasons;
  v9 = deactivationReasons & ~(1 << integerValue);
  if (deactivationReasons == v9)
  {
    allObjects = 0;
  }

  else
  {
    self->_deactivationReasons = v9;
    allObjects = [(NSHashTable *)self->_deactivationObservers allObjects];
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = objc_autoreleasePoolPush();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = allObjects;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * i) foregroundActiveArbiter:self didUpdateDeactivationReasons:{self->_deactivationReasons, v17}];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(v11);
}

- ($96EE1C12479E9B303E9C2794B92A11A2)registerObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  foregroundActiveState = self->_foregroundActiveState;
  if (observerCopy)
  {
    [(NSHashTable *)self->_observers addObject:observerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return *&foregroundActiveState;
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_observers removeObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    observerCopy = v5;
  }
}

- (unsigned)registerDeactivationObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  deactivationReasons = self->_deactivationReasons;
  if (observerCopy)
  {
    [(NSHashTable *)self->_deactivationObservers addObject:observerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return deactivationReasons;
}

- (void)unregisterDeactivationObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    os_unfair_lock_lock(&self->_lock);
    [(NSHashTable *)self->_deactivationObservers removeObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    observerCopy = v5;
  }
}

@end