@interface SBSystemApertureStatusBarPillElementProvider
- (BOOL)_managesDedicatedElementForBackgroundActivityIdentifier:(id)a3;
- (BOOL)_managesDedicatedElementForBackgroundActivityIdentifiers:(id)a3;
- (SBDeviceApplicationSceneHandle)observedSceneHandle;
- (SBSystemApertureController)elementRegistrar;
- (SBSystemApertureStatusBarPillElement)_activeElement;
- (SBSystemApertureStatusBarPillElementProvider)init;
- (SBWindowScene)sbWindowScene;
- (SBWindowSceneStatusBarAssertionManager)statusBarAssertionManager;
- (id)acquireActiveElementAssertionForApplication:(id)a3 reason:(id)a4;
- (id)acquireSuppressionAssertionForBackgroundActivities:(id)a3 reason:(id)a4;
- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4;
- (void)_invalidateElement:(id)a3 withReason:(id)a4;
- (void)_registerElement:(id)a3;
- (void)_updateActiveElementIfNeededForReason:(id)a3 notifyingObserversIfNecessary:(BOOL)a4;
- (void)_updateActiveElementIfNeededWithLayoutState:(id)a3 reason:(id)a4 notifyingObserversIfNecessary:(BOOL)a5;
- (void)_updateCurrentBackgroundActivityIdentifiersWithStatusBarOverrides:(unint64_t)a3;
- (void)_updateNowLocatingElementWithReason:(id)a3;
- (void)_updateNowRecordingAndNowLocatingElementsWithReason:(id)a3;
- (void)_updateNowRecordingElementWithReason:(id)a3;
- (void)activateWithRegistrar:(id)a3;
- (void)activeBackgroundActivitiesDidUpdate:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)init;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionWillEndWithTransitionContext:(id)a4;
- (void)removeObserver:(id)a3;
- (void)sceneWithIdentifier:(id)a3 didChangeBackgroundActivitiesToSuppressTo:(id)a4;
- (void)setCurrentBackgroundActivityIdentifiers:(id)a3;
@end

@implementation SBSystemApertureStatusBarPillElementProvider

- (SBSystemApertureStatusBarPillElementProvider)init
{
  if ((SBSIsSystemApertureAvailable() & 1) == 0)
  {
    [SBSystemApertureStatusBarPillElementProvider init];
  }

  v20.receiver = self;
  v20.super_class = SBSystemApertureStatusBarPillElementProvider;
  v3 = [(SBSystemApertureStatusBarPillElementProvider *)&v20 init];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75A98]) initWithStatusBar:0];
    statusBarServer = v3->__statusBarServer;
    v3->__statusBarServer = v4;

    v6 = [SBApp windowSceneManager];
    v7 = [v6 embeddedDisplayWindowScene];
    objc_storeWeak(&v3->_sbWindowScene, v7);

    v8 = [(SBSystemApertureStatusBarPillElementProvider *)v3 sbWindowScene];
    v9 = [v8 statusBarManager];
    v10 = [v9 assertionManager];
    objc_storeWeak(&v3->_statusBarAssertionManager, v10);

    v11 = +[SBSystemApertureDomain rootSettings];
    settings = v3->_settings;
    v3->_settings = v11;

    v13 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v3->_observers;
    v3->_observers = v13;

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v3 selector:sel__nowLocatingAppsDidChange name:@"SBNowLocatingAppsDidChangeNotification" object:SBApp];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v3 selector:sel__nowRecordingAppDidChange name:@"SBNowRecordingAppDidChangeNotification" object:0];

    v17 = [MEMORY[0x277CBEB58] set];
    applicationsWithActiveElements = v3->_applicationsWithActiveElements;
    v3->_applicationsWithActiveElements = v17;
  }

  return v3;
}

- (void)activateWithRegistrar:(id)a3
{
  v4 = MEMORY[0x277CCACC8];
  v5 = a3;
  if (([v4 isMainThread] & 1) == 0)
  {
    [SBSystemApertureStatusBarPillElementProvider activateWithRegistrar:];
  }

  if ([(SBSystemApertureStatusBarPillElementProvider *)self isActivated])
  {
    [SBSystemApertureStatusBarPillElementProvider activateWithRegistrar:];
  }

  [(SBSystemApertureStatusBarPillElementProvider *)self setActivated:1];
  [(SBSystemApertureStatusBarPillElementProvider *)self setElementRegistrar:v5];

  [(UIStatusBarServer *)self->__statusBarServer setStatusBar:self];
  WeakRetained = objc_loadWeakRetained(&self->_statusBarAssertionManager);
  [WeakRetained addObserver:self];

  if (SBStatusBarIsSpeakeasy())
  {
    v7 = [MEMORY[0x277D6B920] sharedInstance];
    [v7 addBackgroundActivityClient:self];
  }

  else
  {
    -[SBSystemApertureStatusBarPillElementProvider _updateCurrentBackgroundActivityIdentifiersWithStatusBarOverrides:](self, "_updateCurrentBackgroundActivityIdentifiersWithStatusBarOverrides:", [MEMORY[0x277D75A98] getStyleOverrides]);
  }

  v8 = [(SBSystemApertureStatusBarPillElementProvider *)self sbWindowScene];
  v10 = [v8 layoutStateTransitionCoordinator];

  [v10 addObserver:self];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel__lockStateChanged name:*MEMORY[0x277D67A48] object:0];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers addObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers removeObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (id)acquireSuppressionAssertionForBackgroundActivities:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [_SBSystemApertureBackgroundActivitySuppressionAssertion alloc];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __106__SBSystemApertureStatusBarPillElementProvider_acquireSuppressionAssertionForBackgroundActivities_reason___block_invoke;
  v19 = &unk_2783AEA48;
  objc_copyWeak(&v21, &location);
  v9 = v7;
  v20 = v9;
  v10 = [(_SBSystemApertureBackgroundActivitySuppressionAssertion *)v8 initWithIdentifier:@"_SBSystemApertureStatusBarPillSuppressionAssertion" forReason:v9 backgroundActivitiesToSuppress:v6 invalidationBlock:&v16];
  if (!self->_suppressionAssertions)
  {
    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    suppressionAssertions = self->_suppressionAssertions;
    self->_suppressionAssertions = v11;
  }

  v13 = [(SBSystemApertureStatusBarPillElementProvider *)self suppressionAssertions];
  [v13 addObject:v10];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Added assertion for %@", v9, v16, v17, v18, v19];
  [(SBSystemApertureStatusBarPillElementProvider *)self _updateActiveElementIfNeededForReason:v14];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v10;
}

void __106__SBSystemApertureStatusBarPillElementProvider_acquireSuppressionAssertionForBackgroundActivities_reason___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained suppressionAssertions];
    [v5 removeObject:v10];

    v6 = [v4 suppressionAssertions];
    v7 = [v6 count];

    if (!v7)
    {
      v8 = v4[8];
      v4[8] = 0;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalidated assertion for %@", *(a1 + 32)];
    [v4 _updateActiveElementIfNeededForReason:v9];
  }
}

- (id)acquireActiveElementAssertionForApplication:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [(NSMutableSet *)self->_applicationsWithActiveElements addObject:v6];
    if (!self->_assertionsForApplicationsWithActiveElements)
    {
      v8 = [MEMORY[0x277CBEB58] set];
      assertionsForApplicationsWithActiveElements = self->_assertionsForApplicationsWithActiveElements;
      self->_assertionsForApplicationsWithActiveElements = v8;
    }

    objc_initWeak(&location, self);
    v10 = [_SBSystemApertureBackgroundActivitySuppressionActiveApplicationAssertion alloc];
    v11 = [v6 bundleIdentifier];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __99__SBSystemApertureStatusBarPillElementProvider_acquireActiveElementAssertionForApplication_reason___block_invoke;
    v15[3] = &unk_2783AEA48;
    objc_copyWeak(&v17, &location);
    v12 = v7;
    v16 = v12;
    v13 = [(BSSimpleAssertion *)v10 initWithIdentifier:v11 forReason:@"client request" invalidationBlock:v15];

    [(_SBSystemApertureBackgroundActivitySuppressionActiveApplicationAssertion *)v13 setApplication:v6];
    [(NSMutableSet *)self->_assertionsForApplicationsWithActiveElements addObject:v13];
    [(SBSystemApertureStatusBarPillElementProvider *)self _updateNowRecordingAndNowLocatingElementsWithReason:v12];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __99__SBSystemApertureStatusBarPillElementProvider_acquireActiveElementAssertionForApplication_reason___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[10] removeObject:v11];
    v5 = [v4[10] count];
    v6 = v4[10];
    if (v5)
    {
      v7 = [v6 bs_compactMap:&__block_literal_global_267];
      v8 = [v7 mutableCopy];
      v9 = v4[9];
      v4[9] = v8;
    }

    else
    {
      v4[10] = 0;

      [v4[9] removeAllObjects];
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalidated assertion %@", *(a1 + 32)];
    [v4 _updateNowRecordingAndNowLocatingElementsWithReason:v10];
  }
}

- (void)invalidate
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_updateNowRecordingAndNowLocatingElementsWithReason:(id)a3
{
  v4 = a3;
  [(SBSystemApertureStatusBarPillElementProvider *)self _updateNowRecordingElementWithReason:v4];
  [(SBSystemApertureStatusBarPillElementProvider *)self _updateNowLocatingElementWithReason:v4];
}

- (void)_updateNowRecordingElementWithReason:(id)a3
{
  v12 = [SBApp audioRecordingManager];
  v4 = [v12 nowRecordingApplication];
  v5 = *MEMORY[0x277D6BCA8];
  v6 = [(SBSystemApertureStatusBarPillElementProvider *)self resolvedBackgroundActivityIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (!v7 || [(NSMutableSet *)self->_applicationsWithActiveElements containsObject:v4])
  {

    v4 = 0;
  }

  v8 = [(SBSystemApertureStatusBarPillElementProvider *)self _nowRecordingElement];
  v9 = v8;
  if (v4)
  {
    if (v8)
    {
      v10 = [MEMORY[0x277CBEB98] setWithObject:v4];
      [(SBSystemApertureStatusBarPillElement *)v9 setAssociatedApplications:v10];
    }

    else
    {
      v9 = [[SBSystemApertureStatusBarPillElement alloc] initWithBackgroundActivityIdentifier:v5];
      v11 = [MEMORY[0x277CBEB98] setWithObject:v4];
      [(SBSystemApertureStatusBarPillElement *)v9 setAssociatedApplications:v11];

      [(SBSystemApertureStatusBarPillElementProvider *)self _registerElement:v9];
    }
  }

  else
  {
    [(SBSystemApertureStatusBarPillElementProvider *)self _invalidateElement:v8 withReason:@"now recording app did change"];
  }
}

- (void)_updateNowLocatingElementWithReason:(id)a3
{
  v10 = a3;
  v4 = [SBApp nowLocatingApps];
  if ([v4 count])
  {
    v5 = MEMORY[0x277CBEB58];
    v6 = [SBApp nowLocatingApps];
    v7 = [v5 setWithArray:v6];
  }

  else
  {
    v7 = 0;
  }

  [v7 minusSet:self->_applicationsWithActiveElements];
  v8 = [(SBSystemApertureStatusBarPillElementProvider *)self _nowLocatingElement];
  if ([v7 count])
  {
    if (v8)
    {
      [(SBSystemApertureStatusBarPillElement *)v8 setAssociatedApplications:v7];
    }

    else
    {
      v9 = [SBSystemApertureStatusBarPillElement alloc];
      v8 = [(SBSystemApertureStatusBarPillElement *)v9 initWithBackgroundActivityIdentifier:*MEMORY[0x277D6BC00]];
      [(SBSystemApertureStatusBarPillElement *)v8 setAssociatedApplications:v7];
      [(SBSystemApertureStatusBarPillElementProvider *)self _registerElement:v8];
    }
  }

  else
  {
    [(SBSystemApertureStatusBarPillElementProvider *)self _invalidateElement:v8 withReason:v10];
  }
}

- (void)_registerElement:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    v5 = [v4 clientStorage];

    v4 = v11;
    if (!v5)
    {
      registeredElements = self->__registeredElements;
      if (!registeredElements)
      {
        v7 = [MEMORY[0x277CBEB58] set];
        v8 = self->__registeredElements;
        self->__registeredElements = v7;

        registeredElements = self->__registeredElements;
      }

      [(NSMutableSet *)registeredElements addObject:v11];
      WeakRetained = objc_loadWeakRetained(&self->_elementRegistrar);
      v10 = [WeakRetained registerElement:v11];
      [v11 setClientStorage:v10];

      v4 = v11;
    }
  }
}

- (void)_invalidateElement:(id)a3 withReason:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [v9 clientStorage];
    [v7 invalidateWithReason:v6];

    [(NSMutableSet *)self->__registeredElements removeObject:v9];
    if (![(NSMutableSet *)self->__registeredElements count])
    {
      registeredElements = self->__registeredElements;
      self->__registeredElements = 0;
    }
  }
}

- (SBSystemApertureStatusBarPillElement)_activeElement
{
  registeredElements = self->__registeredElements;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SBSystemApertureStatusBarPillElementProvider__activeElement__block_invoke;
  v5[3] = &unk_2783BD138;
  v5[4] = self;
  v3 = [(NSMutableSet *)registeredElements bs_firstObjectPassingTest:v5];

  return v3;
}

uint64_t __62__SBSystemApertureStatusBarPillElementProvider__activeElement__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 representedBackgroundActivityIdentifiers];
  LODWORD(v2) = [v2 _managesDedicatedElementForBackgroundActivityIdentifiers:v3];

  return v2 ^ 1;
}

uint64_t __67__SBSystemApertureStatusBarPillElementProvider__nowLocatingElement__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 representedBackgroundActivityIdentifiers];
  v3 = [v2 containsObject:*MEMORY[0x277D6BC00]];

  return v3;
}

uint64_t __68__SBSystemApertureStatusBarPillElementProvider__nowRecordingElement__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 representedBackgroundActivityIdentifiers];
  v3 = [v2 containsObject:*MEMORY[0x277D6BCA8]];

  return v3;
}

- (void)_updateCurrentBackgroundActivityIdentifiersWithStatusBarOverrides:(unint64_t)a3
{
  if ((SBStatusBarIsSpeakeasy() & 1) == 0)
  {
    v4 = STUIBackgroundActivityIdentifiersForStyleOverrides();
    [(SBSystemApertureStatusBarPillElementProvider *)self setCurrentBackgroundActivityIdentifiers:v4];
  }
}

- (void)setCurrentBackgroundActivityIdentifiers:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSystemApertureStatusBarPillElementProvider setCurrentBackgroundActivityIdentifiers:];
  }

  if ((BSEqualSets() & 1) == 0)
  {
    v4 = [v6 copy];
    currentBackgroundActivityIdentifiers = self->_currentBackgroundActivityIdentifiers;
    self->_currentBackgroundActivityIdentifiers = v4;

    [(SBSystemApertureStatusBarPillElementProvider *)self _updateActiveElementIfNeededForReason:@"setCurrentStyleOverrides" notifyingObserversIfNecessary:1];
  }
}

- (void)_updateActiveElementIfNeededForReason:(id)a3 notifyingObserversIfNecessary:(BOOL)a4
{
  v4 = a4;
  v18 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSystemApertureStatusBarPillElementProvider _updateActiveElementIfNeededForReason:notifyingObserversIfNecessary:];
  }

  v6 = [(SBSystemApertureStatusBarPillElementProvider *)self sbWindowScene];
  v7 = [v6 layoutStateProvider];
  v8 = [v7 layoutState];

  v9 = [v6 layoutStateTransitionCoordinator];
  v10 = [v9 isTransitioning];

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = [v6 layoutStateTransitionCoordinator];
    v13 = [v12 transitionContext];
    v14 = [v13 toLayoutState];
    v15 = SBSafeCast(v11, v14);

    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v8;
    }

    v17 = v16;

    v8 = v17;
  }

  [(SBSystemApertureStatusBarPillElementProvider *)self _updateActiveElementIfNeededWithLayoutState:v8 reason:v18 notifyingObserversIfNecessary:v4];
}

- (void)_updateActiveElementIfNeededWithLayoutState:(id)a3 reason:(id)a4 notifyingObserversIfNecessary:(BOOL)a5
{
  v5 = a5;
  v65 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSystemApertureStatusBarPillElementProvider _updateActiveElementIfNeededWithLayoutState:reason:notifyingObserversIfNecessary:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_observedSceneHandle);
  v11 = +[SBLockScreenManager sharedInstanceIfExists];
  v49 = v11;
  v47 = v5;
  if ([v11 isUILocked])
  {
    v12 = [v11 isUIUnlocking] ^ 1;
  }

  else
  {
    v12 = 0;
  }

  v50 = v9;
  v51 = v8;
  v52 = WeakRetained;
  if ([v8 unlockedEnvironmentMode] != 3 || (v12 & 1) != 0)
  {
    v19 = [MEMORY[0x277CBEB98] set];
    v20 = v12;
    v21 = [WeakRetained statusBarStateProvider];
    [v21 removeStatusBarObserver:self];

    [(SBSystemApertureStatusBarPillElementProvider *)self setObservedSceneHandle:0];
  }

  else
  {
    v13 = [v8 elementWithRole:1];
    v14 = [v13 workspaceEntity];
    v15 = [v14 deviceApplicationSceneEntity];

    v16 = [v15 sceneHandle];
    if (WeakRetained != v16)
    {
      v17 = [WeakRetained statusBarStateProvider];
      [v17 removeStatusBarObserver:self];

      v18 = [v16 statusBarStateProvider];
      [v18 addStatusBarObserver:self];

      [(SBSystemApertureStatusBarPillElementProvider *)self setObservedSceneHandle:v16];
    }

    v19 = [v16 backgroundActivitiesToSuppress];

    v20 = 0;
  }

  v22 = objc_loadWeakRetained(&self->_statusBarAssertionManager);
  v23 = [v22 currentStatusBarSettings];
  v24 = [v23 backgroundActivitiesToSuppress];
  v48 = v19;
  v25 = [v19 setByAddingObjectsFromSet:v24];

  v26 = v25;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v27 = [(SBSystemApertureStatusBarPillElementProvider *)self suppressionAssertions];
  v28 = [v27 allObjects];

  v29 = [v28 countByEnumeratingWithState:&v60 objects:v64 count:16];
  v30 = v26;
  if (v29)
  {
    v31 = v29;
    v32 = *v61;
    v30 = v26;
    do
    {
      v33 = 0;
      v34 = v30;
      do
      {
        if (*v61 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v35 = [*(*(&v60 + 1) + 8 * v33) backgroundActivitiesToSuppress];
        v30 = [v34 setByAddingObjectsFromSet:v35];

        ++v33;
        v34 = v30;
      }

      while (v31 != v33);
      v31 = [v28 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v31);
  }

  if ([(SBSystemApertureSettings *)self->_settings hideRemotePrototypingFallbackPill])
  {
    v36 = [v30 setByAddingObject:*MEMORY[0x277D6BC30]];

    v30 = v36;
  }

  v37 = [(NSSet *)self->_currentBackgroundActivityIdentifiers mutableCopy];
  [v37 minusSet:v30];
  v38 = [MEMORY[0x277D6B920] sharedInstance];
  v39 = [v38 resolvedBackgroundActivityFromBackgroundActivities:v37 inPrecedenceScope:v20];

  v40 = [(SBSystemApertureStatusBarPillElementProvider *)self resolvedBackgroundActivityIdentifier];
  v41 = v52;
  if (BSEqualStrings())
  {
    v42 = v49;
    if (v47)
    {
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __129__SBSystemApertureStatusBarPillElementProvider__updateActiveElementIfNeededWithLayoutState_reason_notifyingObserversIfNecessary___block_invoke_3;
      v53[3] = &unk_2783BD180;
      v53[4] = self;
      [(SBSystemApertureStatusBarPillElementProvider *)self _enumerateObserversRespondingToSelector:sel_statusBarBackgroundActivityDidChangeWithoutUpdateFromProvider_ usingBlock:v53];
    }
  }

  else
  {
    [(SBSystemApertureStatusBarPillElementProvider *)self setResolvedBackgroundActivityIdentifier:v39];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __129__SBSystemApertureStatusBarPillElementProvider__updateActiveElementIfNeededWithLayoutState_reason_notifyingObserversIfNecessary___block_invoke;
    v56[3] = &unk_2783A9D10;
    v56[4] = self;
    v43 = v39;
    v57 = v43;
    v58 = v50;
    v59 = v47;
    v44 = MEMORY[0x223D6F7F0](v56);
    if (v43 && ![(SBSystemApertureStatusBarPillElementProvider *)self _managesDedicatedElementForBackgroundActivityIdentifier:v43])
    {
      v45 = MEMORY[0x277CBEBB8];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __129__SBSystemApertureStatusBarPillElementProvider__updateActiveElementIfNeededWithLayoutState_reason_notifyingObserversIfNecessary___block_invoke_2;
      v54[3] = &unk_2783AB578;
      v54[4] = self;
      v55 = v44;
      v46 = [v45 scheduledTimerWithTimeInterval:0 repeats:v54 block:0.75];
      [(SBSystemApertureStatusBarPillElementProvider *)self setApplyOverridesDebounceTimer:v46];

      v41 = v52;
    }

    else
    {
      v44[2](v44);
    }

    if ([(SBSystemApertureStatusBarPillElementProvider *)self _managesDedicatedElementForBackgroundActivityIdentifier:v43]|| [(SBSystemApertureStatusBarPillElementProvider *)self _managesDedicatedElementForBackgroundActivityIdentifier:v40])
    {
      [(SBSystemApertureStatusBarPillElementProvider *)self _updateNowRecordingAndNowLocatingElementsWithReason:@"overrides changed"];
    }

    v42 = v49;
  }
}

void __129__SBSystemApertureStatusBarPillElementProvider__updateActiveElementIfNeededWithLayoutState_reason_notifyingObserversIfNecessary___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _activeElement];
  v3 = [v2 representedBackgroundActivityIdentifiers];
  if ([v3 containsObject:*(a1 + 40)])
  {
    if (*(a1 + 56) == 1)
    {
      v4 = *(a1 + 32);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __129__SBSystemApertureStatusBarPillElementProvider__updateActiveElementIfNeededWithLayoutState_reason_notifyingObserversIfNecessary___block_invoke_107;
      v15[3] = &unk_2783BD180;
      v15[4] = v4;
      [v4 _enumerateObserversRespondingToSelector:sel_statusBarBackgroundActivityDidChangeWithoutUpdateFromProvider_ usingBlock:v15];
    }
  }

  else
  {
    v5 = STBackgroundActivityIdentifiersDescription();
    v6 = STBackgroundActivityIdentifierDescription();
    v7 = SBLogSystemAperturePills();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      *buf = 138543874;
      v17 = v8;
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "updating active element for reason: %{public}@. Overrides changing from %{public}@ --> %{public}@", buf, 0x20u);
    }

    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"updating from %@ to %@", v5, v6];
    [v9 _invalidateElement:v2 withReason:v10];

    v11 = *(a1 + 40);
    if (v11 && ([v11 isEqualToString:*MEMORY[0x277D6BC00]] & 1) == 0)
    {
      v12 = *(a1 + 32);
      v13 = [[SBSystemApertureStatusBarPillElement alloc] initWithBackgroundActivityIdentifier:*(a1 + 40)];
      [v12 _registerElement:v13];
    }
  }

  v14 = [*(a1 + 32) applyOverridesDebounceTimer];
  [v14 invalidate];

  [*(a1 + 32) setApplyOverridesDebounceTimer:0];
}

void __129__SBSystemApertureStatusBarPillElementProvider__updateActiveElementIfNeededWithLayoutState_reason_notifyingObserversIfNecessary___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isValid])
  {
    v3 = [*(a1 + 32) applyOverridesDebounceTimer];

    if (v3 == v4)
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (BOOL)_managesDedicatedElementForBackgroundActivityIdentifier:(id)a3
{
  v3 = a3;
  if ([*MEMORY[0x277D6BC00] isEqualToString:v3])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*MEMORY[0x277D6BCA8] isEqualToString:v3];
  }

  return v4;
}

- (BOOL)_managesDedicatedElementForBackgroundActivityIdentifiers:(id)a3
{
  v3 = a3;
  if ([v3 containsObject:*MEMORY[0x277D6BC00]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 containsObject:*MEMORY[0x277D6BCA8]];
  }

  return v4;
}

- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5)
  {
    v6 = self->_observers;
    objc_sync_enter(v6);
    v7 = [(NSHashTable *)self->_observers copy];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            v5[2](v5, v12);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    objc_sync_exit(v6);
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v7 = [v5 toLayoutState];

  v8 = SBSafeCast(v6, v7);

  [(SBSystemApertureStatusBarPillElementProvider *)self _updateActiveElementIfNeededWithLayoutState:v8 reason:@"layoutStateTransitionDidBegin"];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionWillEndWithTransitionContext:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v7 = [v5 toLayoutState];

  v8 = SBSafeCast(v6, v7);

  [(SBSystemApertureStatusBarPillElementProvider *)self _updateActiveElementIfNeededWithLayoutState:v8 reason:@"layoutStateTransitionWillEnd"];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v7 = [v5 toLayoutState];

  v8 = SBSafeCast(v6, v7);

  [(SBSystemApertureStatusBarPillElementProvider *)self _updateActiveElementIfNeededWithLayoutState:v8 reason:@"layoutStateTransitionDidEnd"];
}

- (void)sceneWithIdentifier:(id)a3 didChangeBackgroundActivitiesToSuppressTo:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ updated background activities to suppress", a4, a3];
  [(SBSystemApertureStatusBarPillElementProvider *)self _updateActiveElementIfNeededForReason:v5];
}

- (void)activeBackgroundActivitiesDidUpdate:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

- (SBSystemApertureController)elementRegistrar
{
  WeakRetained = objc_loadWeakRetained(&self->_elementRegistrar);

  return WeakRetained;
}

- (SBWindowSceneStatusBarAssertionManager)statusBarAssertionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarAssertionManager);

  return WeakRetained;
}

- (SBDeviceApplicationSceneHandle)observedSceneHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_observedSceneHandle);

  return WeakRetained;
}

- (SBWindowScene)sbWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);

  return WeakRetained;
}

- (void)init
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)activateWithRegistrar:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSystemApertureStatusBarPillElementProvider activateWithRegistrar:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)activateWithRegistrar:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setCurrentBackgroundActivityIdentifiers:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSystemApertureStatusBarPillElementProvider setCurrentBackgroundActivityIdentifiers:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_updateActiveElementIfNeededForReason:notifyingObserversIfNecessary:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSystemApertureStatusBarPillElementProvider _updateActiveElementIfNeededForReason:notifyingObserversIfNecessary:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_updateActiveElementIfNeededWithLayoutState:reason:notifyingObserversIfNecessary:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSystemApertureStatusBarPillElementProvider _updateActiveElementIfNeededWithLayoutState:reason:notifyingObserversIfNecessary:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

@end