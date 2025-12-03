@interface SBSystemApertureStatusBarPillElementProvider
- (BOOL)_managesDedicatedElementForBackgroundActivityIdentifier:(id)identifier;
- (BOOL)_managesDedicatedElementForBackgroundActivityIdentifiers:(id)identifiers;
- (SBDeviceApplicationSceneHandle)observedSceneHandle;
- (SBSystemApertureController)elementRegistrar;
- (SBSystemApertureStatusBarPillElement)_activeElement;
- (SBSystemApertureStatusBarPillElementProvider)init;
- (SBWindowScene)sbWindowScene;
- (SBWindowSceneStatusBarAssertionManager)statusBarAssertionManager;
- (id)acquireActiveElementAssertionForApplication:(id)application reason:(id)reason;
- (id)acquireSuppressionAssertionForBackgroundActivities:(id)activities reason:(id)reason;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)_invalidateElement:(id)element withReason:(id)reason;
- (void)_registerElement:(id)element;
- (void)_updateActiveElementIfNeededForReason:(id)reason notifyingObserversIfNecessary:(BOOL)necessary;
- (void)_updateActiveElementIfNeededWithLayoutState:(id)state reason:(id)reason notifyingObserversIfNecessary:(BOOL)necessary;
- (void)_updateCurrentBackgroundActivityIdentifiersWithStatusBarOverrides:(unint64_t)overrides;
- (void)_updateNowLocatingElementWithReason:(id)reason;
- (void)_updateNowRecordingAndNowLocatingElementsWithReason:(id)reason;
- (void)_updateNowRecordingElementWithReason:(id)reason;
- (void)activateWithRegistrar:(id)registrar;
- (void)activeBackgroundActivitiesDidUpdate:(id)update;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)init;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionWillEndWithTransitionContext:(id)context;
- (void)removeObserver:(id)observer;
- (void)sceneWithIdentifier:(id)identifier didChangeBackgroundActivitiesToSuppressTo:(id)to;
- (void)setCurrentBackgroundActivityIdentifiers:(id)identifiers;
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

    windowSceneManager = [SBApp windowSceneManager];
    embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
    objc_storeWeak(&v3->_sbWindowScene, embeddedDisplayWindowScene);

    sbWindowScene = [(SBSystemApertureStatusBarPillElementProvider *)v3 sbWindowScene];
    statusBarManager = [sbWindowScene statusBarManager];
    assertionManager = [statusBarManager assertionManager];
    objc_storeWeak(&v3->_statusBarAssertionManager, assertionManager);

    v11 = +[SBSystemApertureDomain rootSettings];
    settings = v3->_settings;
    v3->_settings = v11;

    v13 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v3->_observers;
    v3->_observers = v13;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__nowLocatingAppsDidChange name:@"SBNowLocatingAppsDidChangeNotification" object:SBApp];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__nowRecordingAppDidChange name:@"SBNowRecordingAppDidChangeNotification" object:0];

    v17 = [MEMORY[0x277CBEB58] set];
    applicationsWithActiveElements = v3->_applicationsWithActiveElements;
    v3->_applicationsWithActiveElements = v17;
  }

  return v3;
}

- (void)activateWithRegistrar:(id)registrar
{
  v4 = MEMORY[0x277CCACC8];
  registrarCopy = registrar;
  if (([v4 isMainThread] & 1) == 0)
  {
    [SBSystemApertureStatusBarPillElementProvider activateWithRegistrar:];
  }

  if ([(SBSystemApertureStatusBarPillElementProvider *)self isActivated])
  {
    [SBSystemApertureStatusBarPillElementProvider activateWithRegistrar:];
  }

  [(SBSystemApertureStatusBarPillElementProvider *)self setActivated:1];
  [(SBSystemApertureStatusBarPillElementProvider *)self setElementRegistrar:registrarCopy];

  [(UIStatusBarServer *)self->__statusBarServer setStatusBar:self];
  WeakRetained = objc_loadWeakRetained(&self->_statusBarAssertionManager);
  [WeakRetained addObserver:self];

  if (SBStatusBarIsSpeakeasy())
  {
    mEMORY[0x277D6B920] = [MEMORY[0x277D6B920] sharedInstance];
    [mEMORY[0x277D6B920] addBackgroundActivityClient:self];
  }

  else
  {
    -[SBSystemApertureStatusBarPillElementProvider _updateCurrentBackgroundActivityIdentifiersWithStatusBarOverrides:](self, "_updateCurrentBackgroundActivityIdentifiersWithStatusBarOverrides:", [MEMORY[0x277D75A98] getStyleOverrides]);
  }

  sbWindowScene = [(SBSystemApertureStatusBarPillElementProvider *)self sbWindowScene];
  layoutStateTransitionCoordinator = [sbWindowScene layoutStateTransitionCoordinator];

  [layoutStateTransitionCoordinator addObserver:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__lockStateChanged name:*MEMORY[0x277D67A48] object:0];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers addObject:v6];
    objc_sync_exit(v5);

    observerCopy = v6;
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    v5 = self->_observers;
    objc_sync_enter(v5);
    [(NSHashTable *)self->_observers removeObject:v6];
    objc_sync_exit(v5);

    observerCopy = v6;
  }
}

- (id)acquireSuppressionAssertionForBackgroundActivities:(id)activities reason:(id)reason
{
  activitiesCopy = activities;
  reasonCopy = reason;
  objc_initWeak(&location, self);
  v8 = [_SBSystemApertureBackgroundActivitySuppressionAssertion alloc];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __106__SBSystemApertureStatusBarPillElementProvider_acquireSuppressionAssertionForBackgroundActivities_reason___block_invoke;
  v19 = &unk_2783AEA48;
  objc_copyWeak(&v21, &location);
  v9 = reasonCopy;
  v20 = v9;
  v10 = [(_SBSystemApertureBackgroundActivitySuppressionAssertion *)v8 initWithIdentifier:@"_SBSystemApertureStatusBarPillSuppressionAssertion" forReason:v9 backgroundActivitiesToSuppress:activitiesCopy invalidationBlock:&v16];
  if (!self->_suppressionAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    suppressionAssertions = self->_suppressionAssertions;
    self->_suppressionAssertions = weakObjectsHashTable;
  }

  suppressionAssertions = [(SBSystemApertureStatusBarPillElementProvider *)self suppressionAssertions];
  [suppressionAssertions addObject:v10];

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

- (id)acquireActiveElementAssertionForApplication:(id)application reason:(id)reason
{
  applicationCopy = application;
  reasonCopy = reason;
  if (applicationCopy)
  {
    [(NSMutableSet *)self->_applicationsWithActiveElements addObject:applicationCopy];
    if (!self->_assertionsForApplicationsWithActiveElements)
    {
      v8 = [MEMORY[0x277CBEB58] set];
      assertionsForApplicationsWithActiveElements = self->_assertionsForApplicationsWithActiveElements;
      self->_assertionsForApplicationsWithActiveElements = v8;
    }

    objc_initWeak(&location, self);
    v10 = [_SBSystemApertureBackgroundActivitySuppressionActiveApplicationAssertion alloc];
    bundleIdentifier = [applicationCopy bundleIdentifier];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __99__SBSystemApertureStatusBarPillElementProvider_acquireActiveElementAssertionForApplication_reason___block_invoke;
    v15[3] = &unk_2783AEA48;
    objc_copyWeak(&v17, &location);
    v12 = reasonCopy;
    v16 = v12;
    v13 = [(BSSimpleAssertion *)v10 initWithIdentifier:bundleIdentifier forReason:@"client request" invalidationBlock:v15];

    [(_SBSystemApertureBackgroundActivitySuppressionActiveApplicationAssertion *)v13 setApplication:applicationCopy];
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_updateNowRecordingAndNowLocatingElementsWithReason:(id)reason
{
  reasonCopy = reason;
  [(SBSystemApertureStatusBarPillElementProvider *)self _updateNowRecordingElementWithReason:reasonCopy];
  [(SBSystemApertureStatusBarPillElementProvider *)self _updateNowLocatingElementWithReason:reasonCopy];
}

- (void)_updateNowRecordingElementWithReason:(id)reason
{
  audioRecordingManager = [SBApp audioRecordingManager];
  nowRecordingApplication = [audioRecordingManager nowRecordingApplication];
  v5 = *MEMORY[0x277D6BCA8];
  resolvedBackgroundActivityIdentifier = [(SBSystemApertureStatusBarPillElementProvider *)self resolvedBackgroundActivityIdentifier];
  v7 = [v5 isEqualToString:resolvedBackgroundActivityIdentifier];

  if (!v7 || [(NSMutableSet *)self->_applicationsWithActiveElements containsObject:nowRecordingApplication])
  {

    nowRecordingApplication = 0;
  }

  _nowRecordingElement = [(SBSystemApertureStatusBarPillElementProvider *)self _nowRecordingElement];
  v9 = _nowRecordingElement;
  if (nowRecordingApplication)
  {
    if (_nowRecordingElement)
    {
      v10 = [MEMORY[0x277CBEB98] setWithObject:nowRecordingApplication];
      [(SBSystemApertureStatusBarPillElement *)v9 setAssociatedApplications:v10];
    }

    else
    {
      v9 = [[SBSystemApertureStatusBarPillElement alloc] initWithBackgroundActivityIdentifier:v5];
      v11 = [MEMORY[0x277CBEB98] setWithObject:nowRecordingApplication];
      [(SBSystemApertureStatusBarPillElement *)v9 setAssociatedApplications:v11];

      [(SBSystemApertureStatusBarPillElementProvider *)self _registerElement:v9];
    }
  }

  else
  {
    [(SBSystemApertureStatusBarPillElementProvider *)self _invalidateElement:_nowRecordingElement withReason:@"now recording app did change"];
  }
}

- (void)_updateNowLocatingElementWithReason:(id)reason
{
  reasonCopy = reason;
  nowLocatingApps = [SBApp nowLocatingApps];
  if ([nowLocatingApps count])
  {
    v5 = MEMORY[0x277CBEB58];
    nowLocatingApps2 = [SBApp nowLocatingApps];
    v7 = [v5 setWithArray:nowLocatingApps2];
  }

  else
  {
    v7 = 0;
  }

  [v7 minusSet:self->_applicationsWithActiveElements];
  _nowLocatingElement = [(SBSystemApertureStatusBarPillElementProvider *)self _nowLocatingElement];
  if ([v7 count])
  {
    if (_nowLocatingElement)
    {
      [(SBSystemApertureStatusBarPillElement *)_nowLocatingElement setAssociatedApplications:v7];
    }

    else
    {
      v9 = [SBSystemApertureStatusBarPillElement alloc];
      _nowLocatingElement = [(SBSystemApertureStatusBarPillElement *)v9 initWithBackgroundActivityIdentifier:*MEMORY[0x277D6BC00]];
      [(SBSystemApertureStatusBarPillElement *)_nowLocatingElement setAssociatedApplications:v7];
      [(SBSystemApertureStatusBarPillElementProvider *)self _registerElement:_nowLocatingElement];
    }
  }

  else
  {
    [(SBSystemApertureStatusBarPillElementProvider *)self _invalidateElement:_nowLocatingElement withReason:reasonCopy];
  }
}

- (void)_registerElement:(id)element
{
  elementCopy = element;
  if (elementCopy)
  {
    v11 = elementCopy;
    clientStorage = [elementCopy clientStorage];

    elementCopy = v11;
    if (!clientStorage)
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

      elementCopy = v11;
    }
  }
}

- (void)_invalidateElement:(id)element withReason:(id)reason
{
  elementCopy = element;
  reasonCopy = reason;
  if (elementCopy)
  {
    clientStorage = [elementCopy clientStorage];
    [clientStorage invalidateWithReason:reasonCopy];

    [(NSMutableSet *)self->__registeredElements removeObject:elementCopy];
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

- (void)_updateCurrentBackgroundActivityIdentifiersWithStatusBarOverrides:(unint64_t)overrides
{
  if ((SBStatusBarIsSpeakeasy() & 1) == 0)
  {
    v4 = STUIBackgroundActivityIdentifiersForStyleOverrides();
    [(SBSystemApertureStatusBarPillElementProvider *)self setCurrentBackgroundActivityIdentifiers:v4];
  }
}

- (void)setCurrentBackgroundActivityIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSystemApertureStatusBarPillElementProvider setCurrentBackgroundActivityIdentifiers:];
  }

  if ((BSEqualSets() & 1) == 0)
  {
    v4 = [identifiersCopy copy];
    currentBackgroundActivityIdentifiers = self->_currentBackgroundActivityIdentifiers;
    self->_currentBackgroundActivityIdentifiers = v4;

    [(SBSystemApertureStatusBarPillElementProvider *)self _updateActiveElementIfNeededForReason:@"setCurrentStyleOverrides" notifyingObserversIfNecessary:1];
  }
}

- (void)_updateActiveElementIfNeededForReason:(id)reason notifyingObserversIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  reasonCopy = reason;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSystemApertureStatusBarPillElementProvider _updateActiveElementIfNeededForReason:notifyingObserversIfNecessary:];
  }

  sbWindowScene = [(SBSystemApertureStatusBarPillElementProvider *)self sbWindowScene];
  layoutStateProvider = [sbWindowScene layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  layoutStateTransitionCoordinator = [sbWindowScene layoutStateTransitionCoordinator];
  isTransitioning = [layoutStateTransitionCoordinator isTransitioning];

  if (isTransitioning)
  {
    v11 = objc_opt_class();
    layoutStateTransitionCoordinator2 = [sbWindowScene layoutStateTransitionCoordinator];
    transitionContext = [layoutStateTransitionCoordinator2 transitionContext];
    toLayoutState = [transitionContext toLayoutState];
    v15 = SBSafeCast(v11, toLayoutState);

    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = layoutState;
    }

    v17 = v16;

    layoutState = v17;
  }

  [(SBSystemApertureStatusBarPillElementProvider *)self _updateActiveElementIfNeededWithLayoutState:layoutState reason:reasonCopy notifyingObserversIfNecessary:necessaryCopy];
}

- (void)_updateActiveElementIfNeededWithLayoutState:(id)state reason:(id)reason notifyingObserversIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v65 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  reasonCopy = reason;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSystemApertureStatusBarPillElementProvider _updateActiveElementIfNeededWithLayoutState:reason:notifyingObserversIfNecessary:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_observedSceneHandle);
  v11 = +[SBLockScreenManager sharedInstanceIfExists];
  v49 = v11;
  v47 = necessaryCopy;
  if ([v11 isUILocked])
  {
    v12 = [v11 isUIUnlocking] ^ 1;
  }

  else
  {
    v12 = 0;
  }

  v50 = reasonCopy;
  v51 = stateCopy;
  v52 = WeakRetained;
  if ([stateCopy unlockedEnvironmentMode] != 3 || (v12 & 1) != 0)
  {
    backgroundActivitiesToSuppress = [MEMORY[0x277CBEB98] set];
    v20 = v12;
    statusBarStateProvider = [WeakRetained statusBarStateProvider];
    [statusBarStateProvider removeStatusBarObserver:self];

    [(SBSystemApertureStatusBarPillElementProvider *)self setObservedSceneHandle:0];
  }

  else
  {
    v13 = [stateCopy elementWithRole:1];
    workspaceEntity = [v13 workspaceEntity];
    deviceApplicationSceneEntity = [workspaceEntity deviceApplicationSceneEntity];

    sceneHandle = [deviceApplicationSceneEntity sceneHandle];
    if (WeakRetained != sceneHandle)
    {
      statusBarStateProvider2 = [WeakRetained statusBarStateProvider];
      [statusBarStateProvider2 removeStatusBarObserver:self];

      statusBarStateProvider3 = [sceneHandle statusBarStateProvider];
      [statusBarStateProvider3 addStatusBarObserver:self];

      [(SBSystemApertureStatusBarPillElementProvider *)self setObservedSceneHandle:sceneHandle];
    }

    backgroundActivitiesToSuppress = [sceneHandle backgroundActivitiesToSuppress];

    v20 = 0;
  }

  v22 = objc_loadWeakRetained(&self->_statusBarAssertionManager);
  currentStatusBarSettings = [v22 currentStatusBarSettings];
  backgroundActivitiesToSuppress2 = [currentStatusBarSettings backgroundActivitiesToSuppress];
  v48 = backgroundActivitiesToSuppress;
  v25 = [backgroundActivitiesToSuppress setByAddingObjectsFromSet:backgroundActivitiesToSuppress2];

  v26 = v25;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  suppressionAssertions = [(SBSystemApertureStatusBarPillElementProvider *)self suppressionAssertions];
  allObjects = [suppressionAssertions allObjects];

  v29 = [allObjects countByEnumeratingWithState:&v60 objects:v64 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        backgroundActivitiesToSuppress3 = [*(*(&v60 + 1) + 8 * v33) backgroundActivitiesToSuppress];
        v30 = [v34 setByAddingObjectsFromSet:backgroundActivitiesToSuppress3];

        ++v33;
        v34 = v30;
      }

      while (v31 != v33);
      v31 = [allObjects countByEnumeratingWithState:&v60 objects:v64 count:16];
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
  mEMORY[0x277D6B920] = [MEMORY[0x277D6B920] sharedInstance];
  v39 = [mEMORY[0x277D6B920] resolvedBackgroundActivityFromBackgroundActivities:v37 inPrecedenceScope:v20];

  resolvedBackgroundActivityIdentifier = [(SBSystemApertureStatusBarPillElementProvider *)self resolvedBackgroundActivityIdentifier];
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

    if ([(SBSystemApertureStatusBarPillElementProvider *)self _managesDedicatedElementForBackgroundActivityIdentifier:v43]|| [(SBSystemApertureStatusBarPillElementProvider *)self _managesDedicatedElementForBackgroundActivityIdentifier:resolvedBackgroundActivityIdentifier])
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

- (BOOL)_managesDedicatedElementForBackgroundActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([*MEMORY[0x277D6BC00] isEqualToString:identifierCopy])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*MEMORY[0x277D6BCA8] isEqualToString:identifierCopy];
  }

  return v4;
}

- (BOOL)_managesDedicatedElementForBackgroundActivityIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy containsObject:*MEMORY[0x277D6BC00]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [identifiersCopy containsObject:*MEMORY[0x277D6BCA8]];
  }

  return v4;
}

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
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
            blockCopy[2](blockCopy, v12);
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

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  contextCopy = context;
  v6 = objc_opt_class();
  toLayoutState = [contextCopy toLayoutState];

  v8 = SBSafeCast(v6, toLayoutState);

  [(SBSystemApertureStatusBarPillElementProvider *)self _updateActiveElementIfNeededWithLayoutState:v8 reason:@"layoutStateTransitionDidBegin"];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionWillEndWithTransitionContext:(id)context
{
  contextCopy = context;
  v6 = objc_opt_class();
  toLayoutState = [contextCopy toLayoutState];

  v8 = SBSafeCast(v6, toLayoutState);

  [(SBSystemApertureStatusBarPillElementProvider *)self _updateActiveElementIfNeededWithLayoutState:v8 reason:@"layoutStateTransitionWillEnd"];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  contextCopy = context;
  v6 = objc_opt_class();
  toLayoutState = [contextCopy toLayoutState];

  v8 = SBSafeCast(v6, toLayoutState);

  [(SBSystemApertureStatusBarPillElementProvider *)self _updateActiveElementIfNeededWithLayoutState:v8 reason:@"layoutStateTransitionDidEnd"];
}

- (void)sceneWithIdentifier:(id)identifier didChangeBackgroundActivitiesToSuppressTo:(id)to
{
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ updated background activities to suppress", to, identifier];
  [(SBSystemApertureStatusBarPillElementProvider *)self _updateActiveElementIfNeededForReason:identifier];
}

- (void)activeBackgroundActivitiesDidUpdate:(id)update
{
  updateCopy = update;
  v3 = updateCopy;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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