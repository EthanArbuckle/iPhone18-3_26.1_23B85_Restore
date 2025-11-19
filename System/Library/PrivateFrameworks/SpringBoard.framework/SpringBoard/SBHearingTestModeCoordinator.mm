@interface SBHearingTestModeCoordinator
- (SBHearingTestModeCoordinator)init;
- (void)_noteHearingTestModeActiveForProviderWithIdentifier:(id)a3;
- (void)_noteHearingTestModeInactiveForProviderWithIdentifier:(id)a3;
- (void)_recalculateHearingTestMode;
- (void)_setDNDHearingTestModeActive:(BOOL)a3;
- (void)addObserver:(id)a3;
- (void)addSceneExtensionIfNeeded:(id)a3;
- (void)hearingTestModeHostComponentDidChangeActiveState:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setHearingTestMode:(int64_t)a3;
@end

@implementation SBHearingTestModeCoordinator

- (SBHearingTestModeCoordinator)init
{
  v5.receiver = self;
  v5.super_class = SBHearingTestModeCoordinator;
  v2 = [(SBHearingTestModeCoordinator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SBHearingTestModeCoordinator *)v2 _invalidateDNDModeAssertion];
  }

  return v3;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(NSHashTable *)self->_observers containsObject:v4];
    v4 = v9;
    if (!v5)
    {
      observers = self->_observers;
      if (!observers)
      {
        v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v8 = self->_observers;
        self->_observers = v7;

        observers = self->_observers;
      }

      [(NSHashTable *)observers addObject:v9];
      v4 = v9;
    }
  }
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  if (v5)
  {
    [(NSHashTable *)self->_observers removeObject:v5];
  }

  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)setHearingTestMode:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_hearingTestMode != a3)
  {
    self->_hearingTestMode = a3;
    if (a3 == 1)
    {
      [(SBHearingTestModeCoordinator *)self _acquireDNDModeAssertion];
    }

    else if (!a3)
    {
      [(SBHearingTestModeCoordinator *)self _invalidateDNDModeAssertion];
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(NSHashTable *)self->_observers copy];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 hearingTestModeCoordinatorDidChangeActiveState:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)_noteHearingTestModeActiveForProviderWithIdentifier:(id)a3
{
  v4 = a3;
  identifiersForHearingTestModeActiveProviders = self->_identifiersForHearingTestModeActiveProviders;
  v8 = v4;
  if (!identifiersForHearingTestModeActiveProviders)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_identifiersForHearingTestModeActiveProviders;
    self->_identifiersForHearingTestModeActiveProviders = v6;

    v4 = v8;
    identifiersForHearingTestModeActiveProviders = self->_identifiersForHearingTestModeActiveProviders;
  }

  [(NSMutableSet *)identifiersForHearingTestModeActiveProviders addObject:v4];
  [(SBHearingTestModeCoordinator *)self _recalculateHearingTestMode];
}

- (void)_noteHearingTestModeInactiveForProviderWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_identifiersForHearingTestModeActiveProviders containsObject:?])
  {
    [(NSMutableSet *)self->_identifiersForHearingTestModeActiveProviders removeObject:v4];
    [(SBHearingTestModeCoordinator *)self _recalculateHearingTestMode];
  }
}

- (void)_recalculateHearingTestMode
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_identifiersForHearingTestModeActiveProviders count])
  {
    [(SBHearingTestModeCoordinator *)self setHearingTestMode:1];
  }

  else
  {
    [(SBHearingTestModeCoordinator *)self setHearingTestMode:0];
    identifiersForHearingTestModeActiveProviders = self->_identifiersForHearingTestModeActiveProviders;
    self->_identifiersForHearingTestModeActiveProviders = 0;
  }

  v4 = SBLogHearingTestMode();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = SBSHearingTestModeDescription();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Updating coordinator hearing test mode to: %{public}@", &v6, 0xCu);
  }
}

- (void)_setDNDHearingTestModeActive:(BOOL)a3
{
  v5 = dispatch_get_global_queue(-32768, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SBHearingTestModeCoordinator__setDNDHearingTestModeActive___block_invoke;
  v6[3] = &unk_2783A9F58;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __61__SBHearingTestModeCoordinator__setDNDHearingTestModeActive___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D05918];
  v3 = [objc_opt_class() dndHearingTestModeClientIdentifier];
  v4 = [v2 serviceForClientIdentifier:v3];

  v5 = *(a1 + 40);
  v11 = 0;
  v6 = [v4 setHearingTestIsActive:v5 error:&v11];
  v7 = v11;
  v8 = SBLogHearingTestMode();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = SBSHearingTestModeDescription();
      *buf = 138543362;
      v13 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Coordinator successfully set hearing test mode to: %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __61__SBHearingTestModeCoordinator__setDNDHearingTestModeActive___block_invoke_cold_1(v7, v9);
  }
}

- (void)addSceneExtensionIfNeeded:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 clientProcess];
  if ([v5 hasEntitlement:@"com.apple.springboard.hearing-test-mode"])
  {
    [v4 addExtension:objc_opt_class()];
    v6 = SBLogHearingTestMode();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 identifier];
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Successfully added scene extension to scene with hearing test mode entitlement: %{public}@", &v11, 0xCu);
    }

    v8 = objc_opt_class();
    v9 = [v4 componentForExtension:v8 ofClass:objc_opt_class()];
    hearingTestModeHostComponent = self->_hearingTestModeHostComponent;
    self->_hearingTestModeHostComponent = v9;

    [(SBSUIHearingTestModeHostComponent *)self->_hearingTestModeHostComponent setDelegate:self];
  }
}

- (void)hearingTestModeHostComponentDidChangeActiveState:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogHearingTestMode();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [v4 hearingTestMode];
    v6 = SBSHearingTestModeDescription();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Coordinator did receive %{public}@ for hearing test mode via delegate", &v9, 0xCu);
  }

  v7 = [v4 hearingTestMode];
  v8 = [v4 identifier];
  if (v7 == 1)
  {
    [(SBHearingTestModeCoordinator *)self _noteHearingTestModeActiveForProviderWithIdentifier:v8];
  }

  else
  {
    [(SBHearingTestModeCoordinator *)self _noteHearingTestModeInactiveForProviderWithIdentifier:v8];
  }
}

void __61__SBHearingTestModeCoordinator__setDNDHearingTestModeActive___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Error setting hearing test mode %{public}@", &v2, 0xCu);
}

@end