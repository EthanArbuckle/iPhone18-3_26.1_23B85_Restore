@interface SBOrientationLockManager
+ (SBOrientationLockManager)sharedInstance;
- (SBOrientationLockManager)init;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)deviceOrientationAsFarAsAppsAreConcerned;
- (int64_t)effectiveLockedOrientation;
- (void)_addLockOverrideReason:(id)reason orientation:(int64_t)orientation force:(BOOL)force;
- (void)_beginShimmingForReason:(id)reason;
- (void)_endShimmingForReason:(id)reason;
- (void)_handler_runLoopObserverDispose;
- (void)_removeLockOverrideReason:(id)reason;
- (void)_setupRunLoopObserverIfNecessaryForOrientation:(int64_t)orientation andInitialLockState:(BOOL)state;
- (void)_updateLockStateWithOrientation:(int64_t)orientation forceUpdateHID:(BOOL)d changes:(id)changes;
- (void)dealloc;
- (void)enableLockOverrideForReason:(id)reason forceOrientation:(int64_t)orientation;
- (void)enableLockOverrideForReason:(id)reason suggestOrientation:(int64_t)orientation;
- (void)lock;
- (void)lock:(int64_t)lock;
- (void)restoreStateFromPrefs;
- (void)setLockOverrideEnabled:(BOOL)enabled forReason:(id)reason;
- (void)unlock;
- (void)updateLockOverrideForCurrentDeviceOrientation;
@end

@implementation SBOrientationLockManager

+ (SBOrientationLockManager)sharedInstance
{
  v2 = sharedInstance___instance_4;
  if (!sharedInstance___instance_4)
  {
    kdebug_trace();
    v3 = objc_alloc_init(SBOrientationLockManager);
    v4 = sharedInstance___instance_4;
    sharedInstance___instance_4 = v3;

    kdebug_trace();
    BKSHIDServicesUnlockOrientation();
    v2 = sharedInstance___instance_4;
  }

  return v2;
}

- (void)restoreStateFromPrefs
{
  v3 = +[SBDefaults localDefaults];
  rotationDefaults = [v3 rotationDefaults];
  lastLockedOrientation = [rotationDefaults lastLockedOrientation];

  if (lastLockedOrientation && lastLockedOrientation != self->_userLockedOrientation)
  {

    [(SBOrientationLockManager *)self lock:lastLockedOrientation];
  }
}

- (SBOrientationLockManager)init
{
  v8.receiver = self;
  v8.super_class = SBOrientationLockManager;
  v2 = [(SBOrientationLockManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    lockOverrideReasons = v2->_lockOverrideReasons;
    v2->_lockOverrideReasons = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    shimmedDeviceOrientationAssertions = v2->_shimmedDeviceOrientationAssertions;
    v2->_shimmedDeviceOrientationAssertions = dictionary;
  }

  return v2;
}

- (void)dealloc
{
  if ([(SBOrientationLockManager *)self isEffectivelyLocked])
  {
    BKSHIDServicesUnlockOrientation();
  }

  self->_runLoopObserver = 0;
  v3.receiver = self;
  v3.super_class = SBOrientationLockManager;
  [(SBOrientationLockManager *)&v3 dealloc];
}

- (void)lock
{
  activeInterfaceOrientation = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  if (__sb__runningInSpringBoard())
  {
    v4 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v4 = [currentDevice userInterfaceIdiom] == 1;
  }

  if (v4)
  {
    v6 = activeInterfaceOrientation;
  }

  else
  {
    v6 = 1;
  }

  [(SBOrientationLockManager *)self lock:v6];
}

- (void)lock:(int64_t)lock
{
  [(SBOrientationLockManager *)self _updateLockStateWithOrientation:MEMORY[0x277D85DD0] forceUpdateHID:3221225472 changes:__33__SBOrientationLockManager_lock___block_invoke, &unk_2783A8BC8, self, lock];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D67A98] object:self];

  v6 = +[SBDefaults localDefaults];
  rotationDefaults = [v6 rotationDefaults];

  if ([rotationDefaults lastLockedOrientation] != lock)
  {
    [rotationDefaults setLastLockedOrientation:self->_userLockedOrientation];
  }
}

void __33__SBOrientationLockManager_lock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2 != *(a1 + 40))
  {
    v4 = BKLogOrientationGlobal();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Enabling global orientation lock for user", v5, 2u);
    }

    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  *(v1 + 8) = v2;
}

- (void)unlock
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SBOrientationLockManager_unlock__block_invoke;
  v6[3] = &unk_2783A8C18;
  v6[4] = self;
  [(SBOrientationLockManager *)self _updateLockStateWithChanges:v6];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D67A98] object:self];

  v4 = +[SBDefaults localDefaults];
  rotationDefaults = [v4 rotationDefaults];
  [rotationDefaults setLastLockedOrientation:0];
}

void __34__SBOrientationLockManager_unlock__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    v3 = BKLogOrientationGlobal();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Disabling global orientation lock for user", v4, 2u);
    }

    v1 = *(a1 + 32);
  }

  *(v1 + 8) = 0;
}

- (int64_t)effectiveLockedOrientation
{
  if ([(SBOrientationLockManager *)self isEffectivelyLocked])
  {
    return self->_previousLockedOrientation;
  }

  else
  {
    return 0;
  }
}

- (int64_t)deviceOrientationAsFarAsAppsAreConcerned
{
  result = self->_userLockedOrientation;
  if (!result)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    orientation = [currentDevice orientation];

    return orientation;
  }

  return result;
}

- (void)_addLockOverrideReason:(id)reason orientation:(int64_t)orientation force:(BOOL)force
{
  v16 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (([(NSMutableSet *)self->_lockOverrideReasons containsObject:reasonCopy]& 1) == 0)
  {
    v7 = BKLogOrientationGlobal();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = BSInterfaceOrientationDescription();
      v9 = NSStringFromBOOL();
      v10 = 138543874;
      v11 = reasonCopy;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Enabling global orientation lock override for reason: %{public}@, new orientation: %{public}@, forced %{public}@", &v10, 0x20u);
    }
  }

  [(NSMutableSet *)self->_lockOverrideReasons addObject:reasonCopy];
}

- (void)_removeLockOverrideReason:(id)reason
{
  v8 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if ([(NSMutableSet *)self->_lockOverrideReasons containsObject:reasonCopy])
  {
    v5 = BKLogOrientationGlobal();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Disabling global orientation lock override for reason: %{public}@", &v6, 0xCu);
    }
  }

  [(NSMutableSet *)self->_lockOverrideReasons removeObject:reasonCopy];
}

- (void)setLockOverrideEnabled:(BOOL)enabled forReason:(id)reason
{
  reasonCopy = reason;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__SBOrientationLockManager_setLockOverrideEnabled_forReason___block_invoke;
  v8[3] = &unk_2783A97D8;
  enabledCopy = enabled;
  v8[4] = self;
  v9 = reasonCopy;
  v7 = reasonCopy;
  [(SBOrientationLockManager *)self _updateLockStateWithChanges:v8];
}

uint64_t __61__SBOrientationLockManager_setLockOverrideEnabled_forReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 _addLockOverrideReason:v4 orientation:0 force:0];
  }

  else
  {
    return [v3 _removeLockOverrideReason:v4];
  }
}

- (void)enableLockOverrideForReason:(id)reason suggestOrientation:(int64_t)orientation
{
  reasonCopy = reason;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__SBOrientationLockManager_enableLockOverrideForReason_suggestOrientation___block_invoke;
  v8[3] = &unk_2783AB2A8;
  v8[4] = self;
  v9 = reasonCopy;
  orientationCopy = orientation;
  v7 = reasonCopy;
  [(SBOrientationLockManager *)self _updateLockStateWithOrientation:orientation forceUpdateHID:0 changes:v8];
}

- (void)enableLockOverrideForReason:(id)reason forceOrientation:(int64_t)orientation
{
  reasonCopy = reason;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SBOrientationLockManager_enableLockOverrideForReason_forceOrientation___block_invoke;
  v8[3] = &unk_2783AB2A8;
  v8[4] = self;
  v9 = reasonCopy;
  orientationCopy = orientation;
  v7 = reasonCopy;
  [(SBOrientationLockManager *)self _updateLockStateWithOrientation:orientation forceUpdateHID:1 changes:v8];
}

- (void)_beginShimmingForReason:(id)reason
{
  reasonCopy = reason;
  v4 = [(NSMutableDictionary *)self->_shimmedDeviceOrientationAssertions objectForKey:?];
  if (!v4)
  {
    shimmedDeviceOrientationAssertions = self->_shimmedDeviceOrientationAssertions;
    v6 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:reasonCopy];
    [(NSMutableDictionary *)shimmedDeviceOrientationAssertions setObject:v6 forKey:reasonCopy];
  }
}

- (void)_endShimmingForReason:(id)reason
{
  reasonCopy = reason;
  v4 = [(NSMutableDictionary *)self->_shimmedDeviceOrientationAssertions objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMutableDictionary *)self->_shimmedDeviceOrientationAssertions removeObjectForKey:reasonCopy];
  }
}

- (void)updateLockOverrideForCurrentDeviceOrientation
{
  if ([(SBOrientationLockManager *)self lockOverrideEnabled])
  {
    BKSHIDServicesUnlockOrientation();
    NonFlatDeviceOrientation = BKHIDServicesGetNonFlatDeviceOrientation();

    [(SBOrientationLockManager *)self _updateLockStateWithOrientation:NonFlatDeviceOrientation forceUpdateHID:1 changes:0];
  }
}

- (void)_updateLockStateWithOrientation:(int64_t)orientation forceUpdateHID:(BOOL)d changes:(id)changes
{
  dCopy = d;
  v39 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  isEffectivelyLocked = [(SBOrientationLockManager *)self isEffectivelyLocked];
  lockOverrideEnabled = [(SBOrientationLockManager *)self lockOverrideEnabled];
  if (changesCopy)
  {
    changesCopy[2](changesCopy);
  }

  isEffectivelyLocked2 = [(SBOrientationLockManager *)self isEffectivelyLocked];
  isUserLocked = [(SBOrientationLockManager *)self isUserLocked];
  lockOverrideEnabled2 = [(SBOrientationLockManager *)self lockOverrideEnabled];
  v13 = 0;
  v14 = isEffectivelyLocked ^ isEffectivelyLocked2;
  v27 = isEffectivelyLocked;
  if (isUserLocked && !lockOverrideEnabled2)
  {
    previousLockedOrientation = self->_previousLockedOrientation;
    userLockedOrientation = self->_userLockedOrientation;
    v17 = !orientation && lockOverrideEnabled;
    v13 = previousLockedOrientation != userLockedOrientation;
    if (previousLockedOrientation != userLockedOrientation && v17)
    {
      v18 = BKLogOrientationDevice();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [SBOrientationLockManager _updateLockStateWithOrientation:&self->_previousLockedOrientation forceUpdateHID:v18 changes:?];
      }

      orientation = self->_userLockedOrientation;
      v13 = 1;
    }
  }

  v19 = (isEffectivelyLocked2 && dCopy) | v14 | v13;
  v20 = BKLogOrientationDevice();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = NSStringFromBOOL();
    [(SBOrientationLockManager *)self isUserLocked];
    v22 = NSStringFromBOOL();
    v23 = NSStringFromBOOL();
    v24 = BSDeviceOrientationDescription();
    lockOverrideEnabled3 = [(SBOrientationLockManager *)self lockOverrideEnabled];
    if (lockOverrideEnabled3)
    {
      v26 = [(NSMutableSet *)self->_lockOverrideReasons description];
    }

    else
    {
      v26 = @"NO";
    }

    *buf = 138544386;
    v30 = v21;
    v31 = 2114;
    v32 = v22;
    v33 = 2114;
    v34 = v23;
    v35 = 2114;
    v36 = v24;
    v37 = 2114;
    v38 = v26;
    _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "SB orientation locked: %{public}@; user lock: %{public}@, was stale: %{public}@, orientation: %{public}@ overrides: %{public}@, ", buf, 0x34u);
    if (lockOverrideEnabled3)
    {
    }
  }

  if (v19)
  {
    [(SBOrientationLockManager *)self _setupRunLoopObserverIfNecessaryForOrientation:orientation andInitialLockState:v27];
  }
}

- (void)_setupRunLoopObserverIfNecessaryForOrientation:(int64_t)orientation andInitialLockState:(BOOL)state
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBOrientationLockManager _setupRunLoopObserverIfNecessaryForOrientation:andInitialLockState:];
  }

  if (!self->_runLoopObserver)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__SBOrientationLockManager__setupRunLoopObserverIfNecessaryForOrientation_andInitialLockState___block_invoke;
    block[3] = &unk_2783B6B38;
    objc_copyWeak(v9, &location);
    stateCopy = state;
    v9[1] = orientation;
    block[4] = self;
    self->_runLoopObserver = CFRunLoopObserverCreateWithHandler(0, 0xA0uLL, 0, 0x7FFFFFFFLL, block);
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, self->_runLoopObserver, *MEMORY[0x277CBF048]);
    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

void __95__SBOrientationLockManager__setupRunLoopObserverIfNecessaryForOrientation_andInitialLockState___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isEffectivelyLocked];
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v6 orientation];
  }

  if (*(a1 + 56) == v3 && v4 == *(*(a1 + 32) + 16))
  {
    v7 = 0;
  }

  else
  {
    if (*(a1 + 56))
    {
      BKSHIDServicesUnlockOrientation();
      *(*(a1 + 32) + 16) = 0;
    }

    if (v3)
    {
      [WeakRetained isUserLocked];
      BKSHIDServicesLockOrientation();
      *(*(a1 + 32) + 16) = v4;
    }

    v7 = 1;
  }

  v8 = BKLogOrientationGlobal();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v3)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (v7)
    {
      v9 = @"YES";
    }

    v11 = 138543618;
    v12 = v10;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SB orientation lock change handler fired! is locked: %{public}@; performed update: %{public}@", &v11, 0x16u);
  }

  [WeakRetained _handler_runLoopObserverDispose];
}

- (void)_handler_runLoopObserverDispose
{
  CFRunLoopObserverInvalidate(self->_runLoopObserver);
  CFRelease(self->_runLoopObserver);
  self->_runLoopObserver = 0;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBOrientationLockManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[SBOrientationLockManager isEffectivelyLocked](self withName:{"isEffectivelyLocked"), @"effectivelyLocked"}];
  userLockedOrientation = self->_userLockedOrientation;
  if (userLockedOrientation != [(SBOrientationLockManager *)self effectiveLockedOrientation])
  {
    [(SBOrientationLockManager *)self effectiveLockedOrientation];
    v6 = BSInterfaceOrientationDescription();
    v7 = [v3 appendObject:v6 withName:@"effectiveLockedOrientation"];
  }

  if (self->_userLockedOrientation)
  {
    v8 = BSInterfaceOrientationDescription();
    v9 = [v3 appendObject:v8 withName:@"userLockedInterfaceOrientation"];
  }

  if ([(SBOrientationLockManager *)self lockOverrideEnabled])
  {
    allObjects = [(NSMutableSet *)self->_lockOverrideReasons allObjects];
    v11 = [allObjects componentsJoinedByString:{@", "}];
    v12 = [v3 appendObject:v11 withName:@"overrideReasons"];
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBOrientationLockManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)_updateLockStateWithOrientation:(uint64_t)a1 forceUpdateHID:(uint64_t)a2 changes:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = BSDeviceOrientationDescription();
  v5 = BSDeviceOrientationDescription();
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "Restoring user locked orientation: %{public}@, was locked to: %{public}@", &v6, 0x16u);
}

- (void)_setupRunLoopObserverIfNecessaryForOrientation:andInitialLockState:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBOrientationLockManager _setupRunLoopObserverIfNecessaryForOrientation:andInitialLockState:]"];
  [v1 handleFailureInFunction:v0 file:@"SBOrientationLockManager.m" lineNumber:271 description:@"this call must be made on the main thread"];
}

@end