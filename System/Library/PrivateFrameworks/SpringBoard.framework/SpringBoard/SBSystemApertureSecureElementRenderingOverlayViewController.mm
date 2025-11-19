@interface SBSystemApertureSecureElementRenderingOverlayViewController
- (SBSystemApertureSecureElementRenderingOverlayDelegate)delegate;
- (SBSystemApertureSecureElementRenderingOverlayViewController)initWithDelegate:(id)a3;
- (id)_componentNamesToSecureStateMap;
- (id)_compositeStateNameForComponentStateAndLayoutMode:(id)a3 layoutMode:(int64_t)a4;
- (id)currentSecureFlipBookRenderingContext;
- (void)_applyFlipBookComponentStatesForSecureElementPreferences:(id)a3;
- (void)_decrementActiveTransitionCount;
- (void)_ensureFlipBooksAreLoadedForSecureElementPreferences:(id)a3;
- (void)_notifyRegisteredElementsOfActiveStatesAndConfigurations;
- (void)_updateActiveComponent:(id)a3 withState:(id)a4;
- (void)_updateAppliedComponent:(id)a3 withState:(id)a4;
- (void)handleUpdatesForSecureElementPreferences:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBSystemApertureSecureElementRenderingOverlayViewController

- (SBSystemApertureSecureElementRenderingOverlayViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBSystemApertureSecureElementRenderingOverlayViewController;
  v5 = [(SBSystemApertureSecureElementRenderingOverlayViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)handleUpdatesForSecureElementPreferences:(id)a3
{
  v4 = a3;
  [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _ensureFlipBooksAreLoadedForSecureElementPreferences:v4];
  [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _applyFlipBookComponentStatesForSecureElementPreferences:v4];

  [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _notifyRegisteredElementsOfActiveStatesAndConfigurations];
}

- (id)currentSecureFlipBookRenderingContext
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __100__SBSystemApertureSecureElementRenderingOverlayViewController_currentSecureFlipBookRenderingContext__block_invoke;
  v4[3] = &unk_2783BC570;
  v4[4] = self;
  v2 = [(SBSAAbstractDictionaryBackedContext *)SBSASecureFlipBookRenderingContext instanceWithBlock:v4];

  return v2;
}

void __100__SBSystemApertureSecureElementRenderingOverlayViewController_currentSecureFlipBookRenderingContext__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 992);
  v5 = a2;
  [v5 setActiveSecureElementIdentity:v3];
  [v5 setActiveConfigurationName:*(*(a1 + 32) + 1016)];
  v4 = [*(a1 + 32) _componentNamesToSecureStateMap];
  [v5 setComponentToSecureTransitionMapping:v4];

  [v5 setRequestedComponentsToStates:*(*(a1 + 32) + 1024)];
  [v5 setAppliedComponentsToStates:*(*(a1 + 32) + 1032)];
  [v5 setActiveComponentsToStates:*(*(a1 + 32) + 1040)];
  [v5 setTransitionInProgress:{objc_msgSend(*(a1 + 32), "_transitionInProgress")}];
}

- (void)viewDidLoad
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  installedFlipBooksByName = self->_installedFlipBooksByName;
  self->_installedFlipBooksByName = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  componentNameToFlipBookName = self->_componentNameToFlipBookName;
  self->_componentNameToFlipBookName = v5;

  v7 = [(SBSystemApertureSecureElementRenderingOverlayViewController *)self view];
  [v7 setUserInteractionEnabled:0];
}

- (void)viewWillLayoutSubviews
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [(NSMutableDictionary *)self->_installedFlipBooksByName allValues];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        [v8 nominalFrame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v17 = [(SBSystemApertureSecureElementRenderingOverlayViewController *)self view];
        [v17 convertRect:0 fromView:{v10, v12, v14, v16}];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        [v8 setFrame:{v19, v21, v23, v25}];
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }
}

- (void)_ensureFlipBooksAreLoadedForSecureElementPreferences:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 activeSecureElementIdentity];
  v7 = [v5 requestedConfigurationName];
  v8 = [v5 layoutDirection];
  v9 = [v5 orientation];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __116__SBSystemApertureSecureElementRenderingOverlayViewController__ensureFlipBooksAreLoadedForSecureElementPreferences___block_invoke;
  v72[3] = &unk_2783A8C18;
  v72[4] = self;
  v10 = MEMORY[0x223D6F7F0](v72);
  v11 = v10;
  if (v6)
  {
    v57 = v10;
    v12 = SBScreenMaximumFramesPerSecond();
    v13 = [SBSystemApertureSecureElementUtilities flipBookNameAndFallbacksForElement:v6 configurationName:v7 componentIndex:0 layoutDirection:v8 orientation:v9 layoutMode:3 deviceMaxFPS:v12 artworkSubtype:SBFEffectiveArtworkSubtype()];
    v14 = [v5 requestedComponentsToStates];
    v60 = [v14 allKeys];

    v56 = [v13 firstObject];
    v15 = [v56 isEqualToString:self->_loadedBaseFlipBookName];
    if (self->_loadedBaseFlipBookIsAFallback)
    {
      v16 = [v13 containsObject:self->_loadedBaseFlipBookName];
    }

    else
    {
      v16 = 0;
    }

    if (((v15 | v16) & 1) == 0)
    {
      v59 = v7;
      v57[2]();
      v55 = v13;
      v17 = [[SBSASecureFlipBookView alloc] initWithSecureFlipBookNameAndFallbacks:v13];
      if (v17)
      {
        v53 = a2;
        v18 = [(SBSystemApertureSecureElementRenderingOverlayViewController *)self view];
        [v18 addSubview:v17];

        installedFlipBooksByName = self->_installedFlipBooksByName;
        v20 = [(SBSASecureFlipBookView *)v17 flipBookName];
        [(NSMutableDictionary *)installedFlipBooksByName setObject:v17 forKey:v20];

        v63 = v17;
        v21 = [(SBSASecureFlipBookView *)v17 componentCount];
        if (!v21)
        {
          v21 = [v60 count];
        }

        v54 = v5;
        v58 = v6;
        if (v21 >= 2)
        {
          for (i = 1; i != v21; ++i)
          {
            v23 = SBScreenMaximumFramesPerSecond();
            v24 = [SBSystemApertureSecureElementUtilities flipBookNameAndFallbacksForElement:v6 configurationName:v59 componentIndex:i layoutDirection:v8 orientation:v9 layoutMode:3 deviceMaxFPS:v23 artworkSubtype:SBFEffectiveArtworkSubtype()];
            v25 = [[SBSASecureFlipBookView alloc] initWithSecureFlipBookNameAndFallbacks:v24];
            if (v25)
            {
              v26 = [(SBSystemApertureSecureElementRenderingOverlayViewController *)self view];
              [v26 addSubview:v25];

              v27 = self->_installedFlipBooksByName;
              v28 = [(SBSASecureFlipBookView *)v25 flipBookName];
              [(NSMutableDictionary *)v27 setObject:v25 forKey:v28];

              v6 = v58;
            }
          }
        }

        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        obj = [(NSMutableDictionary *)self->_installedFlipBooksByName allValues];
        v29 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
        v17 = v63;
        if (v29)
        {
          v30 = v29;
          v62 = *v69;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v69 != v62)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v68 + 1) + 8 * j);
              v33 = [v32 componentName];
              if (!v33)
              {
                v67[0] = MEMORY[0x277D85DD0];
                v67[1] = 3221225472;
                v67[2] = __116__SBSystemApertureSecureElementRenderingOverlayViewController__ensureFlipBooksAreLoadedForSecureElementPreferences___block_invoke_9;
                v67[3] = &unk_2783B5428;
                v67[4] = self;
                v33 = [v60 bs_firstObjectPassingTest:v67];
              }

              [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _incrementActiveTransitionCount];
              v34 = [v32 initialStateName];
              v35 = [v34 componentsSeparatedByString:@"."];
              v36 = [v35 mutableCopy];

              [v36 removeObjectAtIndex:0];
              v37 = [v36 componentsJoinedByString:@"."];
              [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _updateAppliedComponent:v33 withState:v37];
              v64[0] = MEMORY[0x277D85DD0];
              v64[1] = 3221225472;
              v64[2] = __116__SBSystemApertureSecureElementRenderingOverlayViewController__ensureFlipBooksAreLoadedForSecureElementPreferences___block_invoke_2;
              v64[3] = &unk_2783A9940;
              v64[4] = self;
              v38 = v33;
              v65 = v38;
              v39 = v37;
              v66 = v39;
              [v32 transitionToState:v34 completion:v64];
              if (!v38)
              {
                [(SBSystemApertureSecureElementRenderingOverlayViewController *)v53 _ensureFlipBooksAreLoadedForSecureElementPreferences:v58];
              }

              componentNameToFlipBookName = self->_componentNameToFlipBookName;
              v41 = [v32 flipBookName];
              [(NSMutableDictionary *)componentNameToFlipBookName setObject:v41 forKey:v38];

              v17 = v63;
            }

            v30 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
          }

          while (v30);
        }

        v5 = v54;
        v6 = v58;
      }

      v42 = [SBSAElementIdentification alloc];
      v43 = [v6 clientIdentifier];
      [v6 elementIdentifier];
      v45 = v44 = v17;
      v46 = [(SBSAElementIdentification *)v42 initWithClientIdentifier:v43 elementIdentifier:v45];
      displayedElement = self->_displayedElement;
      self->_displayedElement = v46;

      v48 = [(SBSASecureFlipBookView *)v44 flipBookName];
      loadedBaseFlipBookName = self->_loadedBaseFlipBookName;
      self->_loadedBaseFlipBookName = v48;

      v50 = [v55 firstObject];
      v51 = [(SBSASecureFlipBookView *)v44 flipBookName];
      self->_loadedBaseFlipBookIsAFallback = [v50 isEqualToString:v51] ^ 1;

      v13 = v55;
      v7 = v59;
      objc_storeStrong(&self->_installedFlipBookConfigurationName, v59);
      v52 = [(SBSystemApertureSecureElementRenderingOverlayViewController *)self view];
      [v52 setNeedsLayout];
    }

    v11 = v57;
  }

  else
  {
    (*(v10 + 16))(v10);
  }
}

void __116__SBSystemApertureSecureElementRenderingOverlayViewController__ensureFlipBooksAreLoadedForSecureElementPreferences___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 1048) count])
  {
    v2 = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[Overlay] Unloading all flipbooks", buf, 2u);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [*(*(a1 + 32) + 1048) allKeys];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(a1 + 32) + 1048) objectForKey:*(*(&v22 + 1) + 8 * v8)];
        [v9 removeFromSuperview];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 1048) removeAllObjects];
  [*(*(a1 + 32) + 1056) removeAllObjects];
  v10 = *(a1 + 32);
  v11 = *(v10 + 992);
  *(v10 + 992) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 1008);
  *(v12 + 1008) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 1016);
  *(v14 + 1016) = 0;

  v16 = *(a1 + 32);
  v17 = *(v16 + 1024);
  *(v16 + 1024) = 0;

  v18 = *(a1 + 32);
  v19 = *(v18 + 1032);
  *(v18 + 1032) = 0;

  v20 = *(a1 + 32);
  v21 = *(v20 + 1040);
  *(v20 + 1040) = 0;
}

uint64_t __116__SBSystemApertureSecureElementRenderingOverlayViewController__ensureFlipBooksAreLoadedForSecureElementPreferences___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1056);
  v3 = a2;
  v4 = [v2 allKeys];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

uint64_t __116__SBSystemApertureSecureElementRenderingOverlayViewController__ensureFlipBooksAreLoadedForSecureElementPreferences___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _decrementActiveTransitionCount];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _updateActiveComponent:v3 withState:v4];
}

- (void)_applyFlipBookComponentStatesForSecureElementPreferences:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v4 = [v21 requestedComponentsToStates];
  objc_storeStrong(&self->_lastRequestedComponentToStateNames, v4);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v27 = 0u;
  v20 = v4;
  obj = [v4 allKeys];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v19 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = [v20 objectForKeyedSubscript:v8];
        v10 = -[SBSystemApertureSecureElementRenderingOverlayViewController _compositeStateNameForComponentStateAndLayoutMode:layoutMode:](self, "_compositeStateNameForComponentStateAndLayoutMode:layoutMode:", v9, [v21 activeLayoutMode]);
        v11 = [(NSMutableDictionary *)self->_componentNameToFlipBookName objectForKeyedSubscript:v8];
        v12 = [(NSMutableDictionary *)self->_installedFlipBooksByName objectForKeyedSubscript:v11];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 state];
          v15 = [v14 isEqual:v10];

          if (v15)
          {
            goto LABEL_13;
          }

          [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _incrementActiveTransitionCount];
          [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _updateAppliedComponent:v8 withState:v9];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __120__SBSystemApertureSecureElementRenderingOverlayViewController__applyFlipBookComponentStatesForSecureElementPreferences___block_invoke;
          v25[3] = &unk_2783A9940;
          v25[4] = self;
          v25[5] = v8;
          v26 = v9;
          [v13 transitionToState:v10 completion:v25];
          v16 = &v26;
        }

        else
        {
          v17 = SBLogSystemAperturePreferencesStackSecureFlipBookElements();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[Overlay] FlipBooks failed to load. Allowing state machine forward progress.", buf, 2u);
          }

          [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _updateAppliedComponent:v8 withState:v9];
          [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _incrementActiveTransitionCount];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __120__SBSystemApertureSecureElementRenderingOverlayViewController__applyFlipBookComponentStatesForSecureElementPreferences___block_invoke_23;
          block[3] = &unk_2783A8ED8;
          block[4] = self;
          block[5] = v8;
          v23 = v9;
          dispatch_async(MEMORY[0x277D85CD0], block);
          v16 = &v23;
        }

LABEL_13:
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }
}

uint64_t __120__SBSystemApertureSecureElementRenderingOverlayViewController__applyFlipBookComponentStatesForSecureElementPreferences___block_invoke(uint64_t a1, int a2)
{
  result = [*(a1 + 32) _decrementActiveTransitionCount];
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);

    return [v5 _updateActiveComponent:v6 withState:v7];
  }

  return result;
}

uint64_t __120__SBSystemApertureSecureElementRenderingOverlayViewController__applyFlipBookComponentStatesForSecureElementPreferences___block_invoke_23(uint64_t a1)
{
  [*(a1 + 32) _decrementActiveTransitionCount];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _updateActiveComponent:v3 withState:v4];
}

- (void)_notifyRegisteredElementsOfActiveStatesAndConfigurations
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [(SBSystemApertureSecureElementRenderingOverlayViewController *)self currentSecureFlipBookRenderingContext];
  [WeakRetained renderingOverlay:self updatedRenderedConfiguration:v3];
}

- (void)_updateAppliedComponent:(id)a3 withState:(id)a4
{
  v10 = a3;
  v6 = a4;
  lastAppliedComponentToStateNames = self->_lastAppliedComponentToStateNames;
  if (!lastAppliedComponentToStateNames)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_lastAppliedComponentToStateNames;
    self->_lastAppliedComponentToStateNames = v8;

    lastAppliedComponentToStateNames = self->_lastAppliedComponentToStateNames;
  }

  [(NSMutableDictionary *)lastAppliedComponentToStateNames setObject:v6 forKey:v10];
  [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _notifyRegisteredElementsOfActiveStatesAndConfigurations];
}

- (void)_updateActiveComponent:(id)a3 withState:(id)a4
{
  v10 = a3;
  v6 = a4;
  lastActiveComponentToStateNames = self->_lastActiveComponentToStateNames;
  if (!lastActiveComponentToStateNames)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_lastActiveComponentToStateNames;
    self->_lastActiveComponentToStateNames = v8;

    lastActiveComponentToStateNames = self->_lastActiveComponentToStateNames;
  }

  [(NSMutableDictionary *)lastActiveComponentToStateNames setObject:v6 forKey:v10];
  [(SBSystemApertureSecureElementRenderingOverlayViewController *)self _notifyRegisteredElementsOfActiveStatesAndConfigurations];
}

- (id)_componentNamesToSecureStateMap
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(NSMutableDictionary *)self->_componentNameToFlipBookName allKeys];
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_componentNameToFlipBookName objectForKeyedSubscript:v8];
        v10 = [(NSMutableDictionary *)self->_installedFlipBooksByName objectForKeyedSubscript:v9];
        v11 = [v10 secureSequenceMap];
        [v3 setObject:v11 forKey:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)_compositeStateNameForComponentStateAndLayoutMode:(id)a3 layoutMode:(int64_t)a4
{
  v4 = @"presented";
  if (a4 < 1)
  {
    v4 = @"hidden";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v4, a3];
}

- (void)_decrementActiveTransitionCount
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureSecureElementRenderingOverlayViewController.m" lineNumber:259 description:@"Trying to decrement active transition count when no transitions are active"];

  *a4 = *a3;
}

- (SBSystemApertureSecureElementRenderingOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_ensureFlipBooksAreLoadedForSecureElementPreferences:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureSecureElementRenderingOverlayViewController.m" lineNumber:169 description:{@"Couldn't determine component names for element: %@", a3}];
}

@end