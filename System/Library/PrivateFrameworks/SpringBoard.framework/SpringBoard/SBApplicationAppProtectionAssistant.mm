@interface SBApplicationAppProtectionAssistant
+ (BOOL)areAnyApplicationsHidden;
+ (BOOL)areAnyApplicationsLocked;
+ (BOOL)shouldHideApplicationWithBundleIdentifier:(id)identifier;
+ (BOOL)shouldShieldApplicationWithBundleIdentifier:(id)identifier;
+ (id)_assistantForBundleIdentifier:(id)identifier;
+ (id)assistantForApplication:(id)application;
- (BOOL)isHidden;
- (SBAppProtectionCoordinator)owningCoordinator;
- (SBApplicationAppProtectionAssistant)initWithApplication:(id)application;
- (id)acquireVisibilityAssertionForReason:(id)reason;
- (id)createShieldUIView;
- (id)createShieldUIViewController;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_updateShouldHide;
- (void)addObserver:(id)observer;
- (void)invalidate;
- (void)removeObserver:(id)observer;
- (void)requestUnshielding;
- (void)setShouldHide:(BOOL)hide;
- (void)setShouldShield:(BOOL)shield;
@end

@implementation SBApplicationAppProtectionAssistant

+ (BOOL)areAnyApplicationsHidden
{
  v2 = +[SBAppProtectionCoordinator isEnabled];
  if (v2)
  {
    hiddenMetaSubject = [MEMORY[0x277CEBEB8] hiddenMetaSubject];
    isHidden = [hiddenMetaSubject isHidden];

    LOBYTE(v2) = isHidden;
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
  shouldHideDebounceTimer = [(SBApplicationAppProtectionAssistant *)self shouldHideDebounceTimer];
  isValid = [shouldHideDebounceTimer isValid];

  if ((isValid & 1) == 0 && [(SBApplicationAppProtectionAssistant *)self isHidden]&& [(SBApplicationAppProtectionAssistant *)self shouldShield])
  {
    if (self->_shouldHide)
    {
      v5 = 1;
    }

    else
    {
      owningCoordinator = [(SBApplicationAppProtectionAssistant *)self owningCoordinator];
      shouldSuppressHiding = [owningCoordinator shouldSuppressHiding];

      v5 = shouldSuppressHiding ^ 1;
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
  appProtectionApplication = [(SBApplicationAppProtectionAssistant *)self appProtectionApplication];
  isHidden = [appProtectionApplication isHidden];

  return isHidden;
}

+ (id)assistantForApplication:(id)application
{
  applicationCopy = application;
  v4 = +[SBApplicationController sharedInstanceIfExists];
  _appProtectionCoordinator = [v4 _appProtectionCoordinator];
  v6 = [_appProtectionCoordinator assistantForApplication:applicationCopy];

  return v6;
}

+ (id)_assistantForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SBApplicationController sharedInstanceIfExists];
  v6 = [v5 applicationWithBundleIdentifier:identifierCopy];

  v7 = [self assistantForApplication:v6];

  return v7;
}

+ (BOOL)areAnyApplicationsLocked
{
  v2 = +[SBAppProtectionCoordinator isEnabled];
  if (v2)
  {
    lockedMetaSubject = [MEMORY[0x277CEBEB8] lockedMetaSubject];
    isLocked = [lockedMetaSubject isLocked];

    LOBYTE(v2) = isLocked;
  }

  return v2;
}

+ (BOOL)shouldHideApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (+[SBAppProtectionCoordinator isEnabled])
  {
    v5 = [self _assistantForBundleIdentifier:identifierCopy];
    shouldHide = [v5 shouldHide];
  }

  else
  {
    shouldHide = 0;
  }

  return shouldHide;
}

+ (BOOL)shouldShieldApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (+[SBAppProtectionCoordinator isEnabled])
  {
    v5 = [self _assistantForBundleIdentifier:identifierCopy];
    shouldShield = [v5 shouldShield];
  }

  else
  {
    shouldShield = 0;
  }

  return shouldShield;
}

- (SBApplicationAppProtectionAssistant)initWithApplication:(id)application
{
  applicationCopy = application;
  if (!applicationCopy)
  {
    [(SBApplicationAppProtectionAssistant *)a2 initWithApplication:?];
  }

  v27.receiver = self;
  v27.super_class = SBApplicationAppProtectionAssistant;
  v6 = [(SBApplicationAppProtectionAssistant *)&v27 init];
  if (v6)
  {
    v7 = MEMORY[0x277CEBE80];
    bundleIdentifier = [applicationCopy bundleIdentifier];
    v9 = [v7 applicationWithBundleIdentifier:bundleIdentifier];
    appProtectionApplication = v6->_appProtectionApplication;
    v6->_appProtectionApplication = v9;

    displayName = [applicationCopy displayName];
    displayName = v6->_displayName;
    v6->_displayName = displayName;

    objc_initWeak(&location, v6);
    v13 = MEMORY[0x277CF0BD0];
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    bundleIdentifier2 = [applicationCopy bundleIdentifier];
    v18 = [v14 stringWithFormat:@"%@: %p - %@", v16, v6, bundleIdentifier2];
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

- (void)setShouldShield:(BOOL)shield
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_shouldShield != shield)
  {
    shieldCopy = shield;
    self->_shouldShield = shield;
    v5 = SBLogAppProtection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      succinctDescription = [(SBApplicationAppProtectionAssistant *)self succinctDescription];
      LODWORD(buf) = 67109378;
      HIDWORD(buf) = shieldCopy;
      v24 = 2114;
      v25 = succinctDescription;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Setting shouldShield: %{BOOL}u for %{public}@", &buf, 0x12u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v8 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v11 = *(*(&v18 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 appProtectionAssistantShouldShieldDidChange:self];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    if (shieldCopy && [(SBApplicationAppProtectionAssistant *)self isHidden])
    {
      shouldHideDebounceTimer = [(SBApplicationAppProtectionAssistant *)self shouldHideDebounceTimer];
      if (shouldHideDebounceTimer)
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
      shouldHideDebounceTimer2 = [(SBApplicationAppProtectionAssistant *)self shouldHideDebounceTimer];
      [shouldHideDebounceTimer2 invalidate];

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

- (void)setShouldHide:(BOOL)hide
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_shouldHide != hide)
  {
    self->_shouldHide = hide;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 appProtectionAssistantShouldHideDidChange:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (id)createShieldUIViewController
{
  v3 = [SBAppProtectionShieldViewController alloc];
  owningCoordinator = [(SBApplicationAppProtectionAssistant *)self owningCoordinator];
  systemAppOutlet = [owningCoordinator systemAppOutlet];
  v6 = [(SBAppProtectionShieldViewController *)v3 initWithAssistant:self systemAppOutlet:systemAppOutlet];

  return v6;
}

- (id)createShieldUIView
{
  v3 = [SBAppProtectionShieldView alloc];
  owningCoordinator = [(SBApplicationAppProtectionAssistant *)self owningCoordinator];
  systemAppOutlet = [owningCoordinator systemAppOutlet];
  v6 = [(SBAppProtectionShieldView *)v3 initWithAssistant:self systemAppOutlet:systemAppOutlet];

  return v6;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v9 = observerCopy;
  if (!observerCopy)
  {
    [(SBApplicationAppProtectionAssistant *)a2 addObserver:?];
    observerCopy = 0;
  }

  observers = self->_observers;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v8 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v9;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v7 = observerCopy;
    [(NSHashTable *)self->_observers removeObject:observerCopy];
    v5 = [(NSHashTable *)self->_observers count];
    observerCopy = v7;
    if (!v5)
    {
      observers = self->_observers;
      self->_observers = 0;

      observerCopy = v7;
    }
  }
}

- (id)acquireVisibilityAssertionForReason:(id)reason
{
  reasonCopy = reason;
  visibilityAssertions = [(SBApplicationAppProtectionAssistant *)self visibilityAssertions];
  v6 = [visibilityAssertions acquireForReason:reasonCopy];

  return v6;
}

- (void)requestUnshielding
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = SBLogAppProtection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    succinctDescription = [(SBApplicationAppProtectionAssistant *)self succinctDescription];
    *buf = 138543362;
    v9 = succinctDescription;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will request unshielding", buf, 0xCu);
  }

  mEMORY[0x277CEBE98] = [MEMORY[0x277CEBE98] sharedGuard];
  appProtectionApplication = [(SBApplicationAppProtectionAssistant *)self appProtectionApplication];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SBApplicationAppProtectionAssistant_requestUnshielding__block_invoke;
  v7[3] = &unk_2783ACC28;
  v7[4] = self;
  [mEMORY[0x277CEBE98] authenticateForShieldDismissalForSubject:appProtectionApplication completion:v7];
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
  succinctDescriptionBuilder = [(SBApplicationAppProtectionAssistant *)self succinctDescriptionBuilder];
  appProtectionApplication = [(SBApplicationAppProtectionAssistant *)self appProtectionApplication];
  bundleIdentifier = [appProtectionApplication bundleIdentifier];
  [succinctDescriptionBuilder appendString:bundleIdentifier withName:@"app"];

  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBApplicationAppProtectionAssistant *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBApplicationAppProtectionAssistant *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SBApplicationAppProtectionAssistant_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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