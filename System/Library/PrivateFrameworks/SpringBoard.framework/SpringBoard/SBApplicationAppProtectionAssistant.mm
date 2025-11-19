@interface SBApplicationAppProtectionAssistant
+ (BOOL)areAnyApplicationsHidden;
+ (BOOL)areAnyApplicationsLocked;
+ (BOOL)shouldHideApplicationWithBundleIdentifier:(id)a3;
+ (BOOL)shouldShieldApplicationWithBundleIdentifier:(id)a3;
+ (id)_assistantForBundleIdentifier:(id)a3;
+ (id)assistantForApplication:(id)a3;
- (BOOL)isHidden;
- (SBAppProtectionCoordinator)owningCoordinator;
- (SBApplicationAppProtectionAssistant)initWithApplication:(id)a3;
- (id)acquireVisibilityAssertionForReason:(id)a3;
- (id)createShieldUIView;
- (id)createShieldUIViewController;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_updateShouldHide;
- (void)addObserver:(id)a3;
- (void)invalidate;
- (void)removeObserver:(id)a3;
- (void)requestUnshielding;
- (void)setShouldHide:(BOOL)a3;
- (void)setShouldShield:(BOOL)a3;
@end

@implementation SBApplicationAppProtectionAssistant

+ (BOOL)areAnyApplicationsHidden
{
  v2 = +[SBAppProtectionCoordinator isEnabled];
  if (v2)
  {
    v3 = [MEMORY[0x277CEBEB8] hiddenMetaSubject];
    v4 = [v3 isHidden];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (SBAppProtectionCoordinator)owningCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_owningCoordinator);

  return WeakRetained;
}

- (void)_updateShouldHide
{
  v3 = [(SBApplicationAppProtectionAssistant *)self shouldHideDebounceTimer];
  v4 = [v3 isValid];

  if ((v4 & 1) == 0 && [(SBApplicationAppProtectionAssistant *)self isHidden]&& [(SBApplicationAppProtectionAssistant *)self shouldShield])
  {
    if (self->_shouldHide)
    {
      v5 = 1;
    }

    else
    {
      v6 = [(SBApplicationAppProtectionAssistant *)self owningCoordinator];
      v7 = [v6 shouldSuppressHiding];

      v5 = v7 ^ 1;
    }
  }

  else
  {
    v5 = 0;
  }

  [(SBApplicationAppProtectionAssistant *)self setShouldHide:v5 & 1];
}

- (BOOL)isHidden
{
  v2 = [(SBApplicationAppProtectionAssistant *)self appProtectionApplication];
  v3 = [v2 isHidden];

  return v3;
}

+ (id)assistantForApplication:(id)a3
{
  v3 = a3;
  v4 = +[SBApplicationController sharedInstanceIfExists];
  v5 = [v4 _appProtectionCoordinator];
  v6 = [v5 assistantForApplication:v3];

  return v6;
}

+ (id)_assistantForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[SBApplicationController sharedInstanceIfExists];
  v6 = [v5 applicationWithBundleIdentifier:v4];

  v7 = [a1 assistantForApplication:v6];

  return v7;
}

+ (BOOL)areAnyApplicationsLocked
{
  v2 = +[SBAppProtectionCoordinator isEnabled];
  if (v2)
  {
    v3 = [MEMORY[0x277CEBEB8] lockedMetaSubject];
    v4 = [v3 isLocked];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)shouldHideApplicationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  if (+[SBAppProtectionCoordinator isEnabled])
  {
    v5 = [a1 _assistantForBundleIdentifier:v4];
    v6 = [v5 shouldHide];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)shouldShieldApplicationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  if (+[SBAppProtectionCoordinator isEnabled])
  {
    v5 = [a1 _assistantForBundleIdentifier:v4];
    v6 = [v5 shouldShield];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SBApplicationAppProtectionAssistant)initWithApplication:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBApplicationAppProtectionAssistant *)a2 initWithApplication:?];
  }

  v27.receiver = self;
  v27.super_class = SBApplicationAppProtectionAssistant;
  v6 = [(SBApplicationAppProtectionAssistant *)&v27 init];
  if (v6)
  {
    v7 = MEMORY[0x277CEBE80];
    v8 = [v5 bundleIdentifier];
    v9 = [v7 applicationWithBundleIdentifier:v8];
    appProtectionApplication = v6->_appProtectionApplication;
    v6->_appProtectionApplication = v9;

    v11 = [v5 displayName];
    displayName = v6->_displayName;
    v6->_displayName = v11;

    objc_initWeak(&location, v6);
    v13 = MEMORY[0x277CF0BD0];
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v5 bundleIdentifier];
    v18 = [v14 stringWithFormat:@"%@: %p - %@", v16, v6, v17];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __59__SBApplicationAppProtectionAssistant_initWithApplication___block_invoke;
    v24[3] = &unk_2783AD688;
    objc_copyWeak(&v25, &location);
    v19 = [v13 assertionWithIdentifier:v18 stateDidChangeHandler:v24];
    visibilityAssertions = v6->_visibilityAssertions;
    v6->_visibilityAssertions = v19;

    v21 = v6->_visibilityAssertions;
    v22 = SBLogAppProtection();
    [(BSCompoundAssertion *)v21 setLog:v22];

    v6->_shouldHide = [(APApplication *)v6->_appProtectionApplication isHidden];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __59__SBApplicationAppProtectionAssistant_initWithApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained owningCoordinator];
  v5 = [v3 isActive];

  if (v5)
  {
    [v4 noteSceneWillBecomeForegroundVisibleForAssistant:WeakRetained];
  }

  else
  {
    [v4 noteAllScenesDismissedForAssistant:WeakRetained];
  }
}

- (void)invalidate
{
  [(BSCompoundAssertion *)self->_visibilityAssertions invalidate];
  shouldHideDebounceTimer = self->_shouldHideDebounceTimer;

  [(NSTimer *)shouldHideDebounceTimer invalidate];
}

- (void)setShouldShield:(BOOL)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_shouldShield != a3)
  {
    v3 = a3;
    self->_shouldShield = a3;
    v5 = SBLogAppProtection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SBApplicationAppProtectionAssistant *)self succinctDescription];
      LODWORD(buf) = 67109378;
      HIDWORD(buf) = v3;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Setting shouldShield: %{BOOL}u for %{public}@", &buf, 0x12u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(NSHashTable *)self->_observers allObjects];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 appProtectionAssistantShouldShieldDidChange:self];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    if (v3 && [(SBApplicationAppProtectionAssistant *)self isHidden])
    {
      v12 = [(SBApplicationAppProtectionAssistant *)self shouldHideDebounceTimer];
      if (v12)
      {
      }

      else if ([(SBApplicationAppProtectionAssistant *)self isHidden])
      {
        objc_initWeak(&buf, self);
        v14 = MEMORY[0x277CBEBB8];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __55__SBApplicationAppProtectionAssistant_setShouldShield___block_invoke;
        v16[3] = &unk_2783AA438;
        objc_copyWeak(&v17, &buf);
        v15 = [v14 scheduledTimerWithTimeInterval:0 repeats:v16 block:3.0];
        [(SBApplicationAppProtectionAssistant *)self setShouldHideDebounceTimer:v15];

        objc_destroyWeak(&v17);
        objc_destroyWeak(&buf);
      }
    }

    else
    {
      v13 = [(SBApplicationAppProtectionAssistant *)self shouldHideDebounceTimer];
      [v13 invalidate];

      [(SBApplicationAppProtectionAssistant *)self setShouldHideDebounceTimer:0];
      [(SBApplicationAppProtectionAssistant *)self setShouldHide:0];
    }
  }
}

void __55__SBApplicationAppProtectionAssistant_setShouldShield___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldHideDebounceTimer:0];
  [WeakRetained _updateShouldHide];
}

- (void)setShouldHide:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_shouldHide != a3)
  {
    self->_shouldHide = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers allObjects];
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
            [v9 appProtectionAssistantShouldHideDidChange:self];
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

- (id)createShieldUIViewController
{
  v3 = [SBAppProtectionShieldViewController alloc];
  v4 = [(SBApplicationAppProtectionAssistant *)self owningCoordinator];
  v5 = [v4 systemAppOutlet];
  v6 = [(SBAppProtectionShieldViewController *)v3 initWithAssistant:self systemAppOutlet:v5];

  return v6;
}

- (id)createShieldUIView
{
  v3 = [SBAppProtectionShieldView alloc];
  v4 = [(SBApplicationAppProtectionAssistant *)self owningCoordinator];
  v5 = [v4 systemAppOutlet];
  v6 = [(SBAppProtectionShieldView *)v3 initWithAssistant:self systemAppOutlet:v5];

  return v6;
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    [(SBApplicationAppProtectionAssistant *)a2 addObserver:?];
    v5 = 0;
  }

  observers = self->_observers;
  if (!observers)
  {
    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v8 = self->_observers;
    self->_observers = v7;

    v5 = v9;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v5];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    [(NSHashTable *)self->_observers removeObject:v4];
    v5 = [(NSHashTable *)self->_observers count];
    v4 = v7;
    if (!v5)
    {
      observers = self->_observers;
      self->_observers = 0;

      v4 = v7;
    }
  }
}

- (id)acquireVisibilityAssertionForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBApplicationAppProtectionAssistant *)self visibilityAssertions];
  v6 = [v5 acquireForReason:v4];

  return v6;
}

- (void)requestUnshielding
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = SBLogAppProtection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SBApplicationAppProtectionAssistant *)self succinctDescription];
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will request unshielding", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CEBE98] sharedGuard];
  v6 = [(SBApplicationAppProtectionAssistant *)self appProtectionApplication];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SBApplicationAppProtectionAssistant_requestUnshielding__block_invoke;
  v7[3] = &unk_2783ACC28;
  v7[4] = self;
  [v5 authenticateForShieldDismissalForSubject:v6 completion:v7];
}

void __57__SBApplicationAppProtectionAssistant_requestUnshielding__block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogAppProtection();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) succinctDescription];
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "authenticateForSubject: %@ with success: %{BOOL}u error: %{public}@", &v8, 0x1Cu);
  }
}

- (id)succinctDescription
{
  v3 = [(SBApplicationAppProtectionAssistant *)self succinctDescriptionBuilder];
  v4 = [(SBApplicationAppProtectionAssistant *)self appProtectionApplication];
  v5 = [v4 bundleIdentifier];
  [v3 appendString:v5 withName:@"app"];

  v6 = [v3 build];

  return v6;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBApplicationAppProtectionAssistant *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBApplicationAppProtectionAssistant *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SBApplicationAppProtectionAssistant_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __77__SBApplicationAppProtectionAssistant_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"shouldShield") ifEqualTo:{@"shouldShield", 1}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"shouldHide") ifEqualTo:{@"shouldHide", 1}];
  v4 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"isHidden") ifEqualTo:{@"isHidden", 1}];
  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) visibilityAssertions];
  v6 = [v5 appendBool:objc_msgSend(v7 withName:"isActive") ifEqualTo:{@"visibilityAssertions.isActive", 1}];
}

- (void)initWithApplication:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplicationAppProtectionAssistant.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"application"}];
}

- (void)addObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplicationAppProtectionAssistant.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

@end