@interface SBFullScreenSwitcherLiveContentOverlayCoordinator
- (BOOL)_layoutStateContainsElementBlockedForScreenTimeExpiration:(id)expiration;
- (BOOL)_shouldAnimateAddingLiveContentOverlayForTransitionContext:(id)context leafAppLayout:(id)layout;
- (BOOL)_shouldCreateAssertionForType:(int64_t)type withSceneRelevancyResult:(id)result;
- (BOOL)_shouldShowMultipleWindowsNotSupportedMessageForLayoutStateTransitionContext:(id)context medusaViewController:(id)controller;
- (BOOL)_shouldShowSplitViewNotSupportedMessageForLayoutStateTransitionContext:(id)context medusaViewController:(id)controller;
- (BOOL)wantsEdgeProtectForHomeGestureForAppLayout:(id)layout;
- (BOOL)wantsHomeAffordanceAutoHideForAppLayout:(id)layout;
- (SBFullScreenSwitcherLiveContentOverlayCoordinator)initWithSwitcherController:(id)controller;
- (SBSceneManager)_sceneManager;
- (SBSwitcherController)switcherController;
- (SBSwitcherLiveContentOverlayCoordinatorDelegate)delegate;
- (SBWindowScene)_sbWindowScene;
- (id)_itemToZOrderIndexDictionaryForAppLayout:(id)layout layoutAttributesMap:(id)map;
- (id)_newLiveContentOverlayForApplicationContext:(id)context layoutRole:(int64_t)role sbsDisplayLayoutRole:(int64_t)layoutRole zOrderIndex:(int64_t)index;
- (id)_sceneDeactivationPredicateMatchingAppLayouts:(id)layouts;
- (id)_updateSceneRelevancyAssertionsForAppLayout:(id)layout assertionTypesToCurrentAssertions:(id)assertions applicationSceneHandle:(id)handle sceneRelevancyResult:(id)result reason:(id)reason;
- (id)appLayoutForKeyboardFocusedScene;
- (id)appLayoutForSceneIdentifier:(id)identifier;
- (int64_t)_calculateSBSDisplayLayoutElementRoleForDisplayItem:(id)item inAppLayout:(id)layout zOrderIndex:(int64_t)index layoutAttributesMap:(id)map;
- (int64_t)_existingOverlayTypeForAppLayout:(id)layout;
- (void)_addOverlay:(id)overlay forAppLayout:(id)layout animated:(BOOL)animated;
- (void)_configureLiveContentOverlayView:(id)view forTransitionContext:(id)context layoutRole:(int64_t)role sbsDisplayLayoutRole:(int64_t)layoutRole zOrderIndex:(int64_t)index;
- (void)_invalidateAssertions:(id)assertions;
- (void)_moveExistingOverlayForAppLayout:(id)layout toAppLayout:(id)appLayout;
- (void)_presentTransientErrorMessageIfNeededForLayoutStateTransitionContext:(id)context medusaViewController:(id)controller;
- (void)_removeOverlayForAppLayout:(id)layout animated:(BOOL)animated;
- (void)_updateAlwaysLiveSceneContentOverlays;
- (void)_updateFullScreenDisplayLayoutElementsForActiveAppLayouts:(id)layouts inAppLayout:(id)layout layoutAttributesMap:(id)map;
- (void)_updatePortaledSceneLiveContentOverlays;
- (void)_updateSceneRelevancyWithZOrderedDisplayItems:(id)items inAppLayout:(id)layout toLayoutState:(id)state;
- (void)appLayoutDidBecomeHidden:(id)hidden;
- (void)appLayoutWillBecomeVisible:(id)visible;
- (void)cleanUpAfterCoordinatedLayoutStateTransitionWithContext:(id)context;
- (void)delegate;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation;
- (void)fullScreenSwitcherSceneLiveContentOverlay:(id)overlay doubleTappedStatusBar:(id)bar;
- (void)fullScreenSwitcherSceneLiveContentOverlay:(id)overlay tappedStatusBar:(id)bar tapActionType:(int64_t)type;
- (void)invalidate;
- (void)itemContainerForAppLayout:(id)layout willBeReusedForAppLayout:(id)appLayout;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionWillEndWithTransitionContext:(id)context;
- (void)noteKeyboardFocusDidChangeToSceneID:(id)d;
- (void)prepareForCoordinatedLayoutStateTransitionWithContext:(id)context;
- (void)setContainerOrientation:(int64_t)orientation;
- (void)setLiveContentOverlayUpdatesSuspended:(BOOL)suspended;
- (void)willPerformNonAnimatedTransitionToInterfaceOrientation:(int64_t)orientation;
- (void)willRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation alongsideContainerView:(id)view animated:(BOOL)animated;
@end

@implementation SBFullScreenSwitcherLiveContentOverlayCoordinator

- (SBSwitcherController)switcherController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);

  return WeakRetained;
}

- (SBSceneManager)_sceneManager
{
  _sbWindowScene = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sbWindowScene];
  sceneManager = [_sbWindowScene sceneManager];

  return sceneManager;
}

- (SBSwitcherLiveContentOverlayCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)a2 delegate];
  }

  return WeakRetained;
}

- (void)_updateAlwaysLiveSceneContentOverlays
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = self->_visibleAlwaysLiveAppLayouts;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    v27 = *v31;
    v28 = v3;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        if ([(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _canTransitionToOverlayType:3 forAppLayout:v8])
        {
          v9 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _existingOverlayTypeForAppLayout:v8];
          if (v9 != 3)
          {
            v10 = v9;
            allItems = [v8 allItems];
            firstObject = [allItems firstObject];

            v13 = MEMORY[0x277D0ADC0];
            uniqueIdentifier = [firstObject uniqueIdentifier];
            v15 = [v13 identityForIdentifier:uniqueIdentifier];

            v16 = objc_opt_class();
            _sceneManager = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sceneManager];
            v18 = [_sceneManager existingSceneHandleForSceneIdentity:v15];
            v19 = SBSafeCast(v16, v18);

            if (v19)
            {
              if (v10)
              {
                [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _removeOverlayForAppLayout:v8 animated:0];
              }

              v20 = [SBFullScreenAlwaysLiveLiveContentOverlay alloc];
              _sbWindowScene = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sbWindowScene];
              screen = [_sbWindowScene screen];
              [screen _referenceBounds];
              v25 = [(SBFullScreenAlwaysLiveLiveContentOverlay *)v20 initWithSceneHandle:v19 referenceSize:self->_containerOrientation containerOrientation:v23, v24];

              [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _addOverlay:v25 forAppLayout:v8 animated:0];
            }

            v6 = v27;
            v3 = v28;
          }
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v5);
  }

  v26 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext copy];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __90__SBFullScreenSwitcherLiveContentOverlayCoordinator__updateAlwaysLiveSceneContentOverlays__block_invoke;
  v29[3] = &unk_2783B0A48;
  v29[4] = self;
  [v26 enumerateKeysAndObjectsUsingBlock:v29];
}

void __92__SBFullScreenSwitcherLiveContentOverlayCoordinator__updatePortaledSceneLiveContentOverlays__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 overlayType] == 4 && (objc_msgSend(*(a1 + 32), "containsObject:", v5) & 1) == 0)
  {
    [*(a1 + 40) _removeOverlayForAppLayout:v5 animated:0];
  }
}

void __90__SBFullScreenSwitcherLiveContentOverlayCoordinator__updateAlwaysLiveSceneContentOverlays__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 overlayType] == 3 && (objc_msgSend(*(*(a1 + 32) + 72), "containsObject:", v5) & 1) == 0)
  {
    [*(a1 + 32) _removeOverlayForAppLayout:v5 animated:0];
  }
}

- (void)_updatePortaledSceneLiveContentOverlays
{
  v97 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  switcherCoordinator = [WeakRetained switcherCoordinator];
  contentViewController = [WeakRetained contentViewController];
  v3 = objc_opt_class();
  v4 = contentViewController;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v63 = v6;
  layoutContext = [v6 layoutContext];
  activeGesture = [layoutContext activeGesture];
  gestureEvent = [activeGesture gestureEvent];

  v65 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([gestureEvent isWindowDragGestureEvent])
  {
    selectedAppLayout = [gestureEvent selectedAppLayout];
    v10 = [selectedAppLayout itemForLayoutRole:1];
    v89 = 0;
    v90 = &v89;
    v91 = 0x3032000000;
    v92 = __Block_byref_object_copy__29;
    v93 = __Block_byref_object_dispose__29;
    v94 = 0;
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __92__SBFullScreenSwitcherLiveContentOverlayCoordinator__updatePortaledSceneLiveContentOverlays__block_invoke;
    v86[3] = &unk_2783B0A70;
    v11 = v10;
    v87 = v11;
    v88 = &v89;
    [switcherCoordinator enumerateSwitcherControllersWithBlock:v86];
    v12 = v90[5];
    if (!v12)
    {
      v13 = [switcherCoordinator switcherControllerForDisplayItem:v11];
      v14 = v90[5];
      v90[5] = v13;

      v12 = v90[5];
    }

    fromSwitcherController = v12;
    layoutState = [fromSwitcherController layoutState];
    displayItems = [selectedAppLayout appLayoutByModifyingPreferredDisplayOrdinal:{objc_msgSend(layoutState, "displayOrdinal")}];

    [v65 addObject:displayItems];
    _Block_object_dispose(&v89, 8);

LABEL_10:
    goto LABEL_22;
  }

  currentCoordinatedLayoutStateTransitionContext = self->_currentCoordinatedLayoutStateTransitionContext;
  if (currentCoordinatedLayoutStateTransitionContext)
  {
    toSwitcherController = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)currentCoordinatedLayoutStateTransitionContext toSwitcherController];
    v19 = [WeakRetained isEqual:toSwitcherController];

    if (v19)
    {
      fromSwitcherController = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self->_currentCoordinatedLayoutStateTransitionContext fromSwitcherController];
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      displayItems = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self->_currentCoordinatedLayoutStateTransitionContext displayItems];
      v20 = [displayItems countByEnumeratingWithState:&v82 objects:v96 count:16];
      if (v20)
      {
        v21 = *v83;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v83 != v21)
            {
              objc_enumerationMutation(displayItems);
            }

            v23 = *(*(&v82 + 1) + 8 * i);
            toAppLayout = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self->_currentCoordinatedLayoutStateTransitionContext toAppLayout];
            v25 = [toAppLayout leafAppLayoutForItem:v23];

            [v65 addObject:v25];
          }

          v20 = [displayItems countByEnumeratingWithState:&v82 objects:v96 count:16];
        }

        while (v20);
      }

      goto LABEL_10;
    }
  }

  fromSwitcherController = 0;
LABEL_22:
  v69 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ((BSEqualObjects() & 1) == 0)
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v65;
    v71 = [obj countByEnumeratingWithState:&v78 objects:v95 count:16];
    if (v71)
    {
      v68 = *v79;
      do
      {
        for (j = 0; j != v71; ++j)
        {
          if (*v79 != v68)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v78 + 1) + 8 * j);
          v28 = [switcherCoordinator convertAppLayout:v27 fromSwitcherController:fromSwitcherController toSwitcherController:WeakRetained];
          [v69 addObject:v28];
          v29 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _existingOverlayTypeForAppLayout:v28];
          v30 = v29;
          if (v29 != 1 && v29 != 4)
          {
            v67 = [v28 itemForLayoutRole:1];
            windowScene = [fromSwitcherController windowScene];
            sceneManager = [windowScene sceneManager];

            v34 = MEMORY[0x277D0ADC0];
            uniqueIdentifier = [v67 uniqueIdentifier];
            v36 = [v34 identityForIdentifier:uniqueIdentifier];
            v37 = [sceneManager existingSceneHandleForSceneIdentity:v36];
            v38 = objc_opt_class();
            v39 = v37;
            if (v38)
            {
              if (objc_opt_isKindOfClass())
              {
                v40 = v39;
              }

              else
              {
                v40 = 0;
              }
            }

            else
            {
              v40 = 0;
            }

            v41 = v40;

            contentViewController2 = [fromSwitcherController contentViewController];
            v43 = [contentViewController2 liveContentOverlayForAppLayout:v27];

            if (objc_opt_respondsToSelector())
            {
              newPortaledLiveContentOverlayView = [v43 newPortaledLiveContentOverlayView];
              layer = [newPortaledLiveContentOverlayView layer];
              v46 = objc_opt_class();
              v47 = layer;
              if (v46)
              {
                if (objc_opt_isKindOfClass())
                {
                  v48 = v47;
                }

                else
                {
                  v48 = 0;
                }
              }

              else
              {
                v48 = 0;
              }

              v49 = v48;

              [v49 setCrossDisplay:1];
              if (v41 && v43 && newPortaledLiveContentOverlayView)
              {
                if (v30)
                {
                  [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _removeOverlayForAppLayout:v28 animated:0];
                }

                contentOverlayView = [v43 contentOverlayView];
                [contentOverlayView frame];
                v52 = v51;
                v54 = v53;

                layoutState2 = [fromSwitcherController layoutState];
                sceneIdentifier = [v41 sceneIdentifier];
                v57 = [layoutState2 interfaceOrientationForElementIdentifier:sceneIdentifier];

                layoutState3 = [WeakRetained layoutState];
                interfaceOrientation = [layoutState3 interfaceOrientation];

                v60 = [[SBFluidSwitcherPortaledSceneLiveContentOverlay alloc] initWithSceneHandle:v41 referenceSize:v57 contentOrientation:interfaceOrientation containerOrientation:newPortaledLiveContentOverlayView livePortalView:v52, v54];
                [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _addOverlay:v60 forAppLayout:v28 animated:0];
              }
            }

            else
            {
              newPortaledLiveContentOverlayView = 0;
            }
          }
        }

        v71 = [obj countByEnumeratingWithState:&v78 objects:v95 count:16];
      }

      while (v71);
    }
  }

  v61 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext copy];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __92__SBFullScreenSwitcherLiveContentOverlayCoordinator__updatePortaledSceneLiveContentOverlays__block_invoke_2;
  v75[3] = &unk_2783B0A98;
  v76 = v69;
  selfCopy = self;
  v62 = v69;
  [v61 enumerateKeysAndObjectsUsingBlock:v75];
}

- (SBWindowScene)_sbWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];

  return windowScene;
}

- (SBFullScreenSwitcherLiveContentOverlayCoordinator)initWithSwitcherController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = SBFullScreenSwitcherLiveContentOverlayCoordinator;
  v5 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_switcherController, controllerCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appLayoutToLiveContentOverlayContext = v6->_appLayoutToLiveContentOverlayContext;
    v6->_appLayoutToLiveContentOverlayContext = v7;

    v9 = +[SBAppSwitcherDomain rootSettings];
    switcherSettings = v6->_switcherSettings;
    v6->_switcherSettings = v9;
  }

  return v6;
}

- (void)setLiveContentOverlayUpdatesSuspended:(BOOL)suspended
{
  if (self->_liveContentOverlayUpdatesSuspended != suspended)
  {
    self->_liveContentOverlayUpdatesSuspended = suspended;
  }
}

- (void)setContainerOrientation:(int64_t)orientation
{
  v15 = *MEMORY[0x277D85DE8];
  self->_containerOrientation = orientation;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
        }

        overlay = [*(*(&v10 + 1) + 8 * v8) overlay];
        if (objc_opt_respondsToSelector())
        {
          [overlay setContainerOrientation:orientation];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)willRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation alongsideContainerView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  v22 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
  v12 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        overlay = [*(*(&v17 + 1) + 8 * v15) overlay];
        if (objc_opt_respondsToSelector())
        {
          [overlay willRotateFromInterfaceOrientation:orientation toInterfaceOrientation:interfaceOrientation alongsideContainerView:viewCopy animated:animatedCopy];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
  v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allValues);
        }

        overlay = [*(*(&v12 + 1) + 8 * v10) overlay];
        if (objc_opt_respondsToSelector())
        {
          [overlay didRotateFromInterfaceOrientation:orientation toInterfaceOrientation:interfaceOrientation];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)willPerformNonAnimatedTransitionToInterfaceOrientation:(int64_t)orientation
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
        }

        overlay = [*(*(&v10 + 1) + 8 * v8) overlay];
        if (objc_opt_respondsToSelector())
        {
          [overlay willPerformNonAnimatedTransitionToInterfaceOrientation:orientation];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)_itemToZOrderIndexDictionaryForAppLayout:(id)layout layoutAttributesMap:(id)map
{
  v33 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  mapCopy = map;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = SBDisplayItemDescendingInteractionTimeComparator(mapCopy);
  v22 = layoutCopy;
  allItems = [layoutCopy allItems];
  v21 = v8;
  v10 = [allItems sortedArrayUsingComparator:v8];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [mapCopy objectForKey:v17];
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        [(SBDisplayItemLayoutAttributes *)v18 slideOverConfiguration];
        v23[0] = v25;
        v23[1] = v26;
        v24 = v27;
        if (SBDisplayItemSlideOverConfigurationIsValid(v23))
        {
          [v7 setObject:&unk_2833707C0 forKey:v17];
        }

        else
        {
          v19 = [MEMORY[0x277CCABB0] numberWithInteger:++v14];
          [v7 setObject:v19 forKey:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  return v7;
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  v135 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  contextCopy = context;
  if ([(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self areLiveContentOverlayUpdatesSuspended])
  {
    goto LABEL_87;
  }

  applicationTransitionContext = [contextCopy applicationTransitionContext];
  request = [applicationTransitionContext request];
  previousLayoutState = [applicationTransitionContext previousLayoutState];
  v105 = applicationTransitionContext;
  layoutState = [applicationTransitionContext layoutState];
  appLayout = [previousLayoutState appLayout];
  v90 = previousLayoutState;
  floatingAppLayout = [previousLayoutState floatingAppLayout];
  v87 = appLayout;
  leafAppLayouts = [appLayout leafAppLayouts];
  v11 = leafAppLayouts;
  if (floatingAppLayout)
  {
    leafAppLayouts2 = [floatingAppLayout leafAppLayouts];
    v13 = leafAppLayouts2;
    if (v11)
    {
      v14 = [v11 arrayByAddingObjectsFromArray:leafAppLayouts2];

      v84 = v14;
    }

    else
    {
      v84 = leafAppLayouts2;
    }
  }

  else
  {
    v84 = leafAppLayouts;
  }

  [layoutState invalidateAppLayout];
  [layoutState invalidateFloatingAppLayout];
  appLayout2 = [layoutState appLayout];
  layoutAttributesMap = [layoutState layoutAttributesMap];
  floatingAppLayout2 = [layoutState floatingAppLayout];
  v108 = appLayout2;
  leafAppLayouts3 = [appLayout2 leafAppLayouts];
  v86 = floatingAppLayout;
  if (floatingAppLayout2)
  {
    leafAppLayouts4 = [floatingAppLayout2 leafAppLayouts];
    v19 = leafAppLayouts4;
    if (leafAppLayouts3)
    {
      v20 = [leafAppLayouts3 arrayByAddingObjectsFromArray:leafAppLayouts4];

      leafAppLayouts3 = v20;
    }

    else
    {
      leafAppLayouts3 = leafAppLayouts4;
    }
  }

  switcherController = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    v95 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _itemToZOrderIndexDictionaryForAppLayout:v108 layoutAttributesMap:layoutAttributesMap];
  }

  else
  {
    v95 = 0;
  }

  selfCopy = self;
  source = [request source];
  selfCopy2 = self;
  v94 = leafAppLayouts3;
  v96 = floatingAppLayout2;
  if (![v105 animationDisabled])
  {
    v124 = 0uLL;
    v125 = 0uLL;
    v122 = 0uLL;
    v123 = 0uLL;
    v91 = leafAppLayouts3;
    v99 = [v91 countByEnumeratingWithState:&v122 objects:v133 count:16];
    if (!v99)
    {
      goto LABEL_71;
    }

    v93 = *v123;
    while (1)
    {
      for (i = 0; i != v99; ++i)
      {
        if (*v123 != v93)
        {
          objc_enumerationMutation(v91);
        }

        v39 = *(*(&v122 + 1) + 8 * i);
        v40 = 3;
        if ([v39 environment] != 2)
        {
          allItems = [v39 allItems];
          firstObject = [allItems firstObject];
          v40 = [v108 layoutRoleForItem:firstObject];
        }

        v43 = [(NSMutableDictionary *)selfCopy->_appLayoutToLiveContentOverlayContext objectForKey:v39];
        overlay = [v43 overlay];
        v45 = [v39 itemForLayoutRole:1];
        if (v40 == 3)
        {
          integerValue = 0;
          v47 = v96;
        }

        else
        {
          v48 = [v95 objectForKey:v45];
          integerValue = [v48 integerValue];

          v47 = v108;
        }

        v49 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)selfCopy _calculateSBSDisplayLayoutElementRoleForDisplayItem:v45 inAppLayout:v47 zOrderIndex:integerValue layoutAttributesMap:layoutAttributesMap];
        v102 = v49;
        v104 = integerValue;
        if (overlay)
        {
          v50 = v49;
          if ([v43 overlayType] != 3)
          {
            if ([v43 overlayType] == 2)
            {
              v63 = [layoutState elementWithRole:v40];
              workspaceEntity = [v63 workspaceEntity];
              isAppClipPlaceholderEntity = [workspaceEntity isAppClipPlaceholderEntity];

              integerValue = v104;
              v50 = v102;
              if (isAppClipPlaceholderEntity)
              {
                goto LABEL_67;
              }
            }

            else if ([v43 overlayType] != 4)
            {
              goto LABEL_67;
            }
          }

          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)selfCopy _removeOverlayForAppLayout:v39 animated:0];
        }

        obja = v40;
        v51 = [v39 itemForLayoutRole:1];
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        allKeys = [(NSMutableDictionary *)selfCopy->_appLayoutToLiveContentOverlayContext allKeys];
        v53 = [allKeys countByEnumeratingWithState:&v118 objects:v132 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v119;
LABEL_46:
          v56 = 0;
          while (1)
          {
            if (*v119 != v55)
            {
              objc_enumerationMutation(allKeys);
            }

            v57 = *(*(&v118 + 1) + 8 * v56);
            if ([v57 containsItem:v51])
            {
              break;
            }

            if (v54 == ++v56)
            {
              v54 = [allKeys countByEnumeratingWithState:&v118 objects:v132 count:16];
              if (v54)
              {
                goto LABEL_46;
              }

              goto LABEL_52;
            }
          }

          v58 = v57;
          selfCopy = selfCopy2;
          v59 = [(NSMutableDictionary *)selfCopy2->_appLayoutToLiveContentOverlayContext objectForKey:v58];
          overlay = [v59 overlay];

          if (!overlay)
          {
            goto LABEL_55;
          }

          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)selfCopy2 _moveExistingOverlayForAppLayout:v58 toAppLayout:v39];

          v40 = obja;
          v50 = v102;
          integerValue = v104;
LABEL_67:
          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)selfCopy _configureLiveContentOverlayView:overlay forTransitionContext:v105 layoutRole:v40 sbsDisplayLayoutRole:v50 zOrderIndex:integerValue];
LABEL_68:

          goto LABEL_69;
        }

LABEL_52:

        v58 = 0;
        selfCopy = selfCopy2;
LABEL_55:

        if (![(SBSwitcherCoordinatedLayoutStateTransitionContext *)selfCopy->_currentCoordinatedLayoutStateTransitionContext hasTransitioningDisplayItemsForAppLayout:v39])
        {
          v61 = [v90 unlockedEnvironmentMode] == 2 || source == 11;
          v62 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)selfCopy _shouldAnimateAddingLiveContentOverlayForTransitionContext:v105 leafAppLayout:v39];
          overlay = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)selfCopy _newLiveContentOverlayForApplicationContext:v105 layoutRole:obja sbsDisplayLayoutRole:v102 zOrderIndex:v104];
          [overlay setStatusBarHidden:v61 nubViewHidden:v61 animator:0];
          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)selfCopy _addOverlay:overlay forAppLayout:v39 animated:v62];
          goto LABEL_68;
        }

LABEL_69:
      }

      v99 = [v91 countByEnumeratingWithState:&v122 objects:v133 count:16];
      if (!v99)
      {
LABEL_71:

        [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)selfCopy _updateAlwaysLiveSceneContentOverlays];
        [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)selfCopy _updatePortaledSceneLiveContentOverlays];
        [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)selfCopy _updateFullScreenDisplayLayoutElementsForActiveAppLayouts:v91 inAppLayout:v108 layoutAttributesMap:layoutAttributesMap];
        leafAppLayouts3 = v94;
        goto LABEL_72;
      }
    }
  }

  v128 = 0uLL;
  v129 = 0uLL;
  v126 = 0uLL;
  v127 = 0uLL;
  obj = leafAppLayouts3;
  v106 = [obj countByEnumeratingWithState:&v126 objects:v134 count:16];
  if (v106)
  {
    v103 = *v127;
    do
    {
      for (j = 0; j != v106; ++j)
      {
        if (*v127 != v103)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v126 + 1) + 8 * j);
        v27 = 3;
        if ([v26 environment] != 2)
        {
          allItems2 = [v26 allItems];
          firstObject2 = [allItems2 firstObject];
          v27 = [v108 layoutRoleForItem:firstObject2];
        }

        v30 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v26];
        overlay2 = [v30 overlay];
        v32 = [v26 itemForLayoutRole:1];
        if (v27 == 3)
        {
          integerValue2 = 0;
          v34 = v96;
        }

        else
        {
          v35 = [v95 objectForKey:v32];
          integerValue2 = [v35 integerValue];

          v34 = v108;
        }

        v36 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _calculateSBSDisplayLayoutElementRoleForDisplayItem:v32 inAppLayout:v34 zOrderIndex:integerValue2 layoutAttributesMap:layoutAttributesMap];
        if (overlay2)
        {
          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _configureLiveContentOverlayView:overlay2 forTransitionContext:v105 layoutRole:v27 sbsDisplayLayoutRole:v36 zOrderIndex:integerValue2];
        }

        else
        {
          v37 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _newLiveContentOverlayForApplicationContext:v105 layoutRole:v27 sbsDisplayLayoutRole:v36 zOrderIndex:integerValue2];
          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _addOverlay:v37 forAppLayout:v26 animated:0];
          [v37 setStatusBarHidden:source == 11 nubViewHidden:source == 11 animator:0];
        }

        leafAppLayouts3 = v94;
      }

      v106 = [obj countByEnumeratingWithState:&v126 objects:v134 count:16];
    }

    while (v106);
  }

LABEL_72:
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v66 = v85;
  v67 = [v66 countByEnumeratingWithState:&v114 objects:v131 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v115;
    do
    {
      for (k = 0; k != v68; ++k)
      {
        if (*v115 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = *(*(&v114 + 1) + 8 * k);
        if (([leafAppLayouts3 containsObject:v71] & 1) == 0)
        {
          v72 = [(NSMutableDictionary *)selfCopy2->_appLayoutToLiveContentOverlayContext objectForKey:v71];
          v73 = v72;
          if (v72 && [v72 overlayType] == 1)
          {
            overlay3 = [v73 overlay];
            [overlay3 setAsyncRenderingDisabled:1];
            deviceApplicationSceneViewController = [overlay3 deviceApplicationSceneViewController];
            if ([deviceApplicationSceneViewController displayMode] == 4)
            {
              [deviceApplicationSceneViewController setDisplayMode:3 animationFactory:0 completion:0];
            }
          }
        }
      }

      v68 = [v66 countByEnumeratingWithState:&v114 objects:v131 count:16];
    }

    while (v68);
  }

  self = selfCopy2;
LABEL_87:
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  allValues = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
  v77 = [allValues countByEnumeratingWithState:&v110 objects:v130 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v111;
    do
    {
      for (m = 0; m != v78; ++m)
      {
        if (*v111 != v79)
        {
          objc_enumerationMutation(allValues);
        }

        v81 = *(*(&v110 + 1) + 8 * m);
        if ([v81 overlayType] == 1)
        {
          overlay4 = [v81 overlay];
          contentViewController = [overlay4 contentViewController];

          if (objc_opt_respondsToSelector())
          {
            [contentViewController layoutStateTransitionCoordinator:coordinatorCopy transitionDidBeginWithTransitionContext:contextCopy];
          }
        }
      }

      v78 = [allValues countByEnumeratingWithState:&v110 objects:v130 count:16];
    }

    while (v78);
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionWillEndWithTransitionContext:(id)context
{
  v38 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  contextCopy = context;
  applicationTransitionContext = [contextCopy applicationTransitionContext];
  layoutState = [applicationTransitionContext layoutState];
  unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];
  v28 = layoutState;
  IsValid = SBPeekConfigurationIsValid([layoutState peekConfiguration]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  selfCopy = self;
  allValues = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
  v11 = [allValues countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    v31 = unlockedEnvironmentMode != 1 || IsValid;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        if ([v15 overlayType] == 1)
        {
          if (!v31)
          {
            overlay = [v15 overlay];
            v17 = objc_opt_class();
            v18 = overlay;
            if (v17)
            {
              if (objc_opt_isKindOfClass())
              {
                v19 = v18;
              }

              else
              {
                v19 = 0;
              }
            }

            else
            {
              v19 = 0;
            }

            v20 = v19;

            deviceApplicationSceneViewController = [v20 deviceApplicationSceneViewController];

            if ([deviceApplicationSceneViewController displayMode] == 4)
            {
              [deviceApplicationSceneViewController setDisplayMode:0 animationFactory:0 completion:0];
            }
          }

          overlay2 = [v15 overlay];
          contentViewController = [overlay2 contentViewController];

          if (objc_opt_respondsToSelector())
          {
            [contentViewController layoutStateTransitionCoordinator:coordinatorCopy transitionWillEndWithTransitionContext:contextCopy];
          }

          overlay3 = [v15 overlay];
          v25 = objc_opt_class();
          deviceApplicationSceneViewController2 = [overlay3 deviceApplicationSceneViewController];
          v27 = SBSafeCast(v25, deviceApplicationSceneViewController2);

          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)selfCopy _presentTransientErrorMessageIfNeededForLayoutStateTransitionContext:contextCopy medusaViewController:v27];
        }
      }

      v12 = [allValues countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v12);
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  v107 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  contextCopy = context;
  if (![(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self areLiveContentOverlayUpdatesSuspended])
  {
    applicationTransitionContext = [contextCopy applicationTransitionContext];
    previousLayoutState = [applicationTransitionContext previousLayoutState];
    layoutState = [applicationTransitionContext layoutState];
    error = [contextCopy error];

    if (error)
    {
      v10 = previousLayoutState;

      layoutState = v10;
    }

    appLayout = [previousLayoutState appLayout];
    floatingAppLayout = [previousLayoutState floatingAppLayout];
    v76 = appLayout;
    leafAppLayouts = [appLayout leafAppLayouts];
    if (floatingAppLayout)
    {
      leafAppLayouts2 = [floatingAppLayout leafAppLayouts];
      v15 = leafAppLayouts2;
      if (leafAppLayouts)
      {
        v16 = [leafAppLayouts arrayByAddingObjectsFromArray:leafAppLayouts2];

        leafAppLayouts = v16;
      }

      else
      {
        leafAppLayouts = leafAppLayouts2;
      }
    }

    [layoutState invalidateAppLayout];
    [layoutState invalidateFloatingAppLayout];
    appLayout2 = [layoutState appLayout];
    layoutAttributesMap = [layoutState layoutAttributesMap];
    floatingAppLayout2 = [layoutState floatingAppLayout];
    v84 = appLayout2;
    leafAppLayouts3 = [appLayout2 leafAppLayouts];
    v20 = leafAppLayouts3;
    v80 = floatingAppLayout2;
    if (floatingAppLayout2)
    {
      leafAppLayouts4 = [floatingAppLayout2 leafAppLayouts];
      v22 = leafAppLayouts4;
      if (v20)
      {
        v23 = [v20 arrayByAddingObjectsFromArray:leafAppLayouts4];

        v77 = v23;
      }

      else
      {
        v77 = leafAppLayouts4;
      }
    }

    else
    {
      v77 = leafAppLayouts3;
    }

    switcherController = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self switcherController];
    windowManagementContext = [switcherController windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    v75 = floatingAppLayout;
    if (isChamoisOrFlexibleWindowing)
    {
      v79 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _itemToZOrderIndexDictionaryForAppLayout:v84 layoutAttributesMap:layoutAttributesMap];
    }

    else
    {
      v79 = 0;
    }

    v74 = leafAppLayouts;
    v26 = v77;
    v82 = applicationTransitionContext;
    if ((BSEqualObjects() & 1) == 0 && v77)
    {
      v78 = layoutState;
      v72 = previousLayoutState;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      obj = v77;
      v88 = [obj countByEnumeratingWithState:&v100 objects:v106 count:16];
      if (!v88)
      {
        goto LABEL_43;
      }

      v85 = *v101;
      while (1)
      {
        v27 = 0;
        do
        {
          if (*v101 != v85)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v100 + 1) + 8 * v27);
          v29 = 3;
          if ([v28 environment] != 2)
          {
            allItems = [v28 allItems];
            firstObject = [allItems firstObject];
            v29 = [v84 layoutRoleForItem:firstObject];
          }

          v32 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v28];
          overlay = [v32 overlay];
          if (!overlay)
          {
            goto LABEL_29;
          }

          v34 = overlay;
          if ([v32 overlayType] != 3)
          {
            if ([v32 overlayType] == 2)
            {
              v41 = [v78 elementWithRole:v29];
              workspaceEntity = [v41 workspaceEntity];
              isAppClipPlaceholderEntity = [workspaceEntity isAppClipPlaceholderEntity];

              if (isAppClipPlaceholderEntity)
              {
                applicationTransitionContext = v82;
                goto LABEL_33;
              }

              [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _removeOverlayForAppLayout:v28 animated:0];
              applicationTransitionContext = v82;
              goto LABEL_28;
            }

            if ([v32 overlayType] != 4 || !-[SBSwitcherCoordinatedLayoutStateTransitionContext hasTransitioningDisplayItemsForAppLayout:](self->_currentCoordinatedLayoutStateTransitionContext, "hasTransitioningDisplayItemsForAppLayout:", v28))
            {
              goto LABEL_33;
            }
          }

          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _removeOverlayForAppLayout:v28 animated:0];
LABEL_28:

LABEL_29:
          v35 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _shouldAnimateAddingLiveContentOverlayForTransitionContext:applicationTransitionContext leafAppLayout:v28];
          v36 = [v28 itemForLayoutRole:1];
          if (v29 == 3)
          {
            integerValue = 0;
            v38 = v80;
          }

          else
          {
            v39 = [v79 objectForKey:v36];
            integerValue = [v39 integerValue];

            applicationTransitionContext = v82;
            v38 = v84;
          }

          v40 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _newLiveContentOverlayForApplicationContext:applicationTransitionContext layoutRole:v29 sbsDisplayLayoutRole:[(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _calculateSBSDisplayLayoutElementRoleForDisplayItem:v36 inAppLayout:v38 zOrderIndex:integerValue layoutAttributesMap:layoutAttributesMap] zOrderIndex:integerValue];
          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _addOverlay:v40 forAppLayout:v28 animated:v35];

          v34 = 0;
LABEL_33:

          ++v27;
        }

        while (v88 != v27);
        v44 = [obj countByEnumeratingWithState:&v100 objects:v106 count:16];
        v88 = v44;
        if (!v44)
        {
LABEL_43:

          previousLayoutState = v72;
          v26 = v77;
          layoutState = v78;
          break;
        }
      }
    }

    v45 = objc_opt_new();
    appLayoutToLiveContentOverlayContext = self->_appLayoutToLiveContentOverlayContext;
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __124__SBFullScreenSwitcherLiveContentOverlayCoordinator_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke;
    v97[3] = &unk_2783B09D8;
    v97[4] = self;
    v47 = v26;
    v98 = v47;
    v48 = v45;
    v99 = v48;
    [(NSMutableDictionary *)appLayoutToLiveContentOverlayContext enumerateKeysAndObjectsUsingBlock:v97];
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v49 = v48;
    v50 = [v49 countByEnumeratingWithState:&v93 objects:v105 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v94;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v94 != v52)
          {
            objc_enumerationMutation(v49);
          }

          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _removeOverlayForAppLayout:*(*(&v93 + 1) + 8 * i) animated:0, v72];
        }

        v51 = [v49 countByEnumeratingWithState:&v93 objects:v105 count:16];
      }

      while (v51);
    }

    [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext bs_each:&__block_literal_global_84];
    [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updateAlwaysLiveSceneContentOverlays];
    [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updatePortaledSceneLiveContentOverlays];
    [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updateFullScreenDisplayLayoutElementsForActiveAppLayouts:v47 inAppLayout:v84 layoutAttributesMap:layoutAttributesMap];
    appLayout3 = [layoutState appLayout];
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    displayItemLayoutAttributesProvider = [WeakRetained displayItemLayoutAttributesProvider];
    v57 = layoutState;
    v58 = displayItemLayoutAttributesProvider;
    containerOrientation = self->_containerOrientation;
    v60 = containerOrientation - 1;
    v61 = 2 * ((containerOrientation - 3) < 2);
    if (v60 < 2)
    {
      v62 = 1;
    }

    else
    {
      v62 = v61;
    }

    v63 = [displayItemLayoutAttributesProvider zOrderedItemsInAppLayout:appLayout3 orientation:{v62, v72}];

    if (SBLayoutSupportsManyForegroundWindows())
    {
      [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updateSceneRelevancyWithZOrderedDisplayItems:v63 inAppLayout:appLayout3 toLayoutState:v57];
    }
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  allValues = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
  v65 = [allValues countByEnumeratingWithState:&v89 objects:v104 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v90;
    do
    {
      for (j = 0; j != v66; ++j)
      {
        if (*v90 != v67)
        {
          objc_enumerationMutation(allValues);
        }

        v69 = *(*(&v89 + 1) + 8 * j);
        if ([v69 overlayType] == 1)
        {
          overlay2 = [v69 overlay];
          contentViewController = [overlay2 contentViewController];

          if (objc_opt_respondsToSelector())
          {
            [contentViewController layoutStateTransitionCoordinator:coordinatorCopy transitionDidEndWithTransitionContext:contextCopy];
          }
        }
      }

      v66 = [allValues countByEnumeratingWithState:&v89 objects:v104 count:16];
    }

    while (v66);
  }
}

void __124__SBFullScreenSwitcherLiveContentOverlayCoordinator_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] _existingOverlayTypeForAppLayout:?] == 1 && (objc_msgSend(a1[5], "containsObject:", v3) & 1) == 0 && (objc_msgSend(*(a1[4] + 10), "hasTransitioningDisplayItemsForAppLayout:", v3) & 1) == 0)
  {
    [a1[6] addObject:v3];
  }
}

void __124__SBFullScreenSwitcherLiveContentOverlayCoordinator_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 overlayType] == 1)
  {
    v3 = [v4 overlay];
    [v3 setAsyncRenderingDisabled:0];
  }
}

- (void)noteKeyboardFocusDidChangeToSceneID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self setKeyboardFocusSceneID:dCopy];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  systemUIScenesCoordinator = [SBApp systemUIScenesCoordinator];
  overlayUISceneController = [systemUIScenesCoordinator overlayUISceneController];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __89__SBFullScreenSwitcherLiveContentOverlayCoordinator_noteKeyboardFocusDidChangeToSceneID___block_invoke;
  v25[3] = &unk_2783B0A20;
  v7 = dCopy;
  v26 = v7;
  v27 = &v28;
  [overlayUISceneController enumerateScenesWithBlock:v25];

  if ((v29[3] & 1) == 0)
  {
    [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self setSceneIDForTargetOfKeyboardShortcuts:v7];
    v8 = [MEMORY[0x277D0ADC0] identityForIdentifier:v7];
    v9 = objc_opt_class();
    _sceneManager = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sceneManager];
    v11 = [_sceneManager existingSceneHandleForSceneIdentity:v8];
    v12 = SBSafeCast(v9, v11);

    application = [v12 application];
    bundleIdentifier = [application bundleIdentifier];
    [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self setBundleIDForTargetOfKeyboardShortcuts:bundleIdentifier];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allValues = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
  v16 = [allValues countByEnumeratingWithState:&v21 objects:v32 count:16];
  if (v16)
  {
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(allValues);
        }

        v19 = *(*(&v21 + 1) + 8 * i);
        if ([v19 overlayType] == 1)
        {
          overlay = [v19 overlay];
          [overlay noteKeyboardFocusDidChangeToSceneID:v7];
        }
      }

      v16 = [allValues countByEnumeratingWithState:&v21 objects:v32 count:16];
    }

    while (v16);
  }

  _Block_object_dispose(&v28, 8);
}

void __89__SBFullScreenSwitcherLiveContentOverlayCoordinator_noteKeyboardFocusDidChangeToSceneID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 identifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)prepareForCoordinatedLayoutStateTransitionWithContext:(id)context
{
  v40 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  fromSwitcherController = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)contextCopy fromSwitcherController];
  v7 = [WeakRetained isEqual:fromSwitcherController];

  if (v7)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)contextCopy displayItems];
    v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = v8;
    v10 = *v36;
    v30 = contextCopy;
    selfCopy = self;
    v29 = *v36;
    while (1)
    {
      v11 = 0;
      v32 = v9;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        fromAppLayout = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)contextCopy fromAppLayout];
        v14 = [fromAppLayout leafAppLayoutForItem:v12];

        v15 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v14];
        if ([v15 overlayType] == 1)
        {
          overlay = [v15 overlay];
          deviceApplicationSceneViewController = [overlay deviceApplicationSceneViewController];
          sceneHandle = [deviceApplicationSceneViewController sceneHandle];
          v18 = +[SBSceneManagerCoordinator sharedInstance];
          toSwitcherController = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)contextCopy toSwitcherController];
          displayIdentity = [toSwitcherController displayIdentity];
          v21 = [v18 sceneManagerForDisplayIdentity:displayIdentity];

          sceneManager = [sceneHandle sceneManager];
          sceneIfExists = [sceneHandle sceneIfExists];
          identity = [sceneIfExists identity];
          if (identity)
          {
            v25 = identity;
            v26 = BSEqualObjects();

            v10 = v29;
            if ((v26 & 1) == 0)
            {
              sceneIfExists = [sceneHandle sceneIfExists];
              identity2 = [sceneIfExists identity];
              [sceneManager transferOwnershipOfSceneWithIdentity:identity2 toSceneManager:v21];

              goto LABEL_12;
            }
          }

          else
          {
            v10 = v29;
LABEL_12:
          }

          self = selfCopy;
          if ([deviceApplicationSceneViewController displayMode] == 4)
          {
            [deviceApplicationSceneViewController setDisplayMode:3 animationFactory:0 completion:0];
          }

          contextCopy = v30;
          v9 = v32;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (!v9)
      {
LABEL_18:

        break;
      }
    }
  }

  currentCoordinatedLayoutStateTransitionContext = self->_currentCoordinatedLayoutStateTransitionContext;
  self->_currentCoordinatedLayoutStateTransitionContext = contextCopy;
}

- (void)cleanUpAfterCoordinatedLayoutStateTransitionWithContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  fromSwitcherController = [contextCopy fromSwitcherController];
  v7 = [WeakRetained isEqual:fromSwitcherController];

  if (v7)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    displayItems = [contextCopy displayItems];
    v9 = [displayItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(displayItems);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          fromAppLayout = [contextCopy fromAppLayout];
          v15 = [fromAppLayout leafAppLayoutForItem:v13];

          v16 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v15];
          if ([v16 overlayType])
          {
            [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _removeOverlayForAppLayout:v15 animated:0];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [displayItems countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updatePortaledSceneLiveContentOverlays];
  currentCoordinatedLayoutStateTransitionContext = self->_currentCoordinatedLayoutStateTransitionContext;
  self->_currentCoordinatedLayoutStateTransitionContext = 0;
}

- (id)appLayoutForKeyboardFocusedScene
{
  sceneIDForTargetOfKeyboardShortcuts = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self sceneIDForTargetOfKeyboardShortcuts];
  v4 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self appLayoutForSceneIdentifier:sceneIDForTargetOfKeyboardShortcuts];

  return v4;
}

- (id)appLayoutForSceneIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allKeys = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v9];
          if ([v10 overlayType] == 1)
          {
            allItems = [v9 allItems];
            firstObject = [allItems firstObject];

            uniqueIdentifier = [firstObject uniqueIdentifier];
            v14 = [uniqueIdentifier isEqualToString:identifierCopy];

            if (v14)
            {
              v15 = v9;

              goto LABEL_15;
            }
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_15:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)appLayoutWillBecomeVisible:(id)visible
{
  visibleCopy = visible;
  allItems = [visibleCopy allItems];
  if ([allItems count] == 1)
  {
    firstObject = [allItems firstObject];
    if ([firstObject type])
    {
    }

    else
    {
      v6 = MEMORY[0x277D0ADC0];
      uniqueIdentifier = [firstObject uniqueIdentifier];
      v8 = [v6 identityForIdentifier:uniqueIdentifier];

      v9 = objc_opt_class();
      _sceneManager = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sceneManager];
      v11 = [_sceneManager existingSceneHandleForSceneIdentity:v8];
      v12 = SBSafeCast(v9, v11);

      LODWORD(_sceneManager) = [v12 shouldAlwaysDisplayLiveContent];
      if (_sceneManager && ([(NSMutableArray *)self->_visibleAlwaysLiveAppLayouts containsObject:visibleCopy]& 1) == 0)
      {
        visibleAlwaysLiveAppLayouts = self->_visibleAlwaysLiveAppLayouts;
        if (!visibleAlwaysLiveAppLayouts)
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v15 = self->_visibleAlwaysLiveAppLayouts;
          self->_visibleAlwaysLiveAppLayouts = v14;

          visibleAlwaysLiveAppLayouts = self->_visibleAlwaysLiveAppLayouts;
        }

        [(NSMutableArray *)visibleAlwaysLiveAppLayouts addObject:visibleCopy];
        [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updateAlwaysLiveSceneContentOverlays];
      }
    }
  }

  [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updatePortaledSceneLiveContentOverlays];
}

- (void)appLayoutDidBecomeHidden:(id)hidden
{
  hiddenCopy = hidden;
  if ([(NSMutableArray *)self->_visibleAlwaysLiveAppLayouts containsObject:?])
  {
    [(NSMutableArray *)self->_visibleAlwaysLiveAppLayouts removeObject:hiddenCopy];
    if (![(NSMutableArray *)self->_visibleAlwaysLiveAppLayouts count])
    {
      visibleAlwaysLiveAppLayouts = self->_visibleAlwaysLiveAppLayouts;
      self->_visibleAlwaysLiveAppLayouts = 0;
    }

    [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updateAlwaysLiveSceneContentOverlays];
  }

  [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updatePortaledSceneLiveContentOverlays];
}

- (void)itemContainerForAppLayout:(id)layout willBeReusedForAppLayout:(id)appLayout
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v7 = [layoutCopy itemForLayoutRole:1];
  v8 = [appLayoutCopy itemForLayoutRole:1];
  if ([v7 isEqual:v8])
  {
    [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _moveExistingOverlayForAppLayout:layoutCopy toAppLayout:appLayoutCopy];
  }
}

- (BOOL)wantsEdgeProtectForHomeGestureForAppLayout:(id)layout
{
  v4 = [layout itemForLayoutRole:1];
  if ([v4 type])
  {
    isEdgeProtectEnabledForHomeGesture = 0;
  }

  else
  {
    v6 = MEMORY[0x277D0ADC0];
    uniqueIdentifier = [v4 uniqueIdentifier];
    v8 = [v6 identityForIdentifier:uniqueIdentifier];

    v9 = objc_opt_class();
    _sceneManager = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sceneManager];
    v11 = [_sceneManager existingSceneHandleForSceneIdentity:v8];
    v12 = SBSafeCast(v9, v11);

    isEdgeProtectEnabledForHomeGesture = [v12 isEdgeProtectEnabledForHomeGesture];
  }

  return isEdgeProtectEnabledForHomeGesture;
}

- (BOOL)wantsHomeAffordanceAutoHideForAppLayout:(id)layout
{
  v4 = [layout itemForLayoutRole:1];
  if ([v4 type])
  {
    isAutoHideEnabledForHomeAffordance = 0;
  }

  else
  {
    v6 = MEMORY[0x277D0ADC0];
    uniqueIdentifier = [v4 uniqueIdentifier];
    v8 = [v6 identityForIdentifier:uniqueIdentifier];

    v9 = objc_opt_class();
    _sceneManager = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sceneManager];
    v11 = [_sceneManager existingSceneHandleForSceneIdentity:v8];
    v12 = SBSafeCast(v9, v11);

    isAutoHideEnabledForHomeAffordance = [v12 isAutoHideEnabledForHomeAffordance];
  }

  return isAutoHideEnabledForHomeAffordance;
}

- (void)_updateSceneRelevancyWithZOrderedDisplayItems:(id)items inAppLayout:(id)layout toLayoutState:(id)state
{
  v104 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  layoutCopy = layout;
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  sceneRelevancyManager = [WeakRetained sceneRelevancyManager];
  v10 = [itemsCopy count];
  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v10];
  v12 = off_2783A1000;
  v79 = sceneRelevancyManager;
  v80 = itemsCopy;
  v86 = v11;
  if (v10 >= 1)
  {
    v13 = 0;
    v14 = 0;
    v84 = v10;
    do
    {
      v15 = v13;
      v16 = [itemsCopy objectAtIndex:v14];
      uniqueIdentifier = [v16 uniqueIdentifier];
      v18 = [sceneRelevancyManager scoreForSceneIdentifier:uniqueIdentifier];

      v19 = [SBSceneRelevancyResolver sceneActivityModeForWindowWithRelevancyScore:v18];
      v20 = [SBSceneRelevancyResolver sceneJetsamModeForWindowWithRelevancyScore:v18];
      v21 = [SBSceneRelevancyResolver sceneResourceElevationForWindowWithRelevancyScore:v18];
      v22 = [SBSceneRelevancyResolver shouldDisableFlatteningForWindowWithRelevancyScore:v18];
      v23 = [SBSceneRelevancyResolver shouldResignActiveWindowWithRelevancyScore:v18];
      v24 = [SBSceneRelevancyResult alloc];
      v25 = v20;
      v11 = v86;
      v26 = v21;
      v27 = v23;
      sceneRelevancyManager = v79;
      itemsCopy = v80;
      v13 = [(SBSceneRelevancyResult *)v24 initWithActivityMode:v19 jetsamMode:v25 resourceElevation:v26 resignActive:v27 disableFlattening:v22];

      [v86 setObject:v13 forKey:v16];
      ++v14;
    }

    while (v84 != v14);

    v12 = off_2783A1000;
  }

  displayItemsToWindowRelevancyAssertions = self->_displayItemsToWindowRelevancyAssertions;
  if (displayItemsToWindowRelevancyAssertions)
  {
    allKeys = [(NSMutableDictionary *)displayItemsToWindowRelevancyAssertions allKeys];
    allKeys2 = [v11 allKeys];
    v31 = [allKeys bs_differenceWithArray:allKeys2];

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v32 = v31;
    v33 = [v32 countByEnumeratingWithState:&v97 objects:v103 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v98;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v98 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v97 + 1) + 8 * i);
          v38 = [(NSMutableDictionary *)self->_displayItemsToWindowRelevancyAssertions objectForKey:v37];
          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _invalidateAssertions:v38];
          [(NSMutableDictionary *)self->_displayItemsToWindowRelevancyAssertions removeObjectForKey:v37];
        }

        v34 = [v32 countByEnumeratingWithState:&v97 objects:v103 count:16];
      }

      while (v34);
    }

    v11 = v86;
  }

  else
  {
    v39 = MEMORY[0x277CBEB38];
    allKeys3 = [v11 allKeys];
    v41 = [v39 dictionaryWithCapacity:{objc_msgSend(allKeys3, "count")}];
    v42 = self->_displayItemsToWindowRelevancyAssertions;
    self->_displayItemsToWindowRelevancyAssertions = v41;
  }

  defaultResult = [(__objc2_class *)v12[372] defaultResult];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = [itemsCopy bs_reverse];
  v43 = [obj countByEnumeratingWithState:&v93 objects:v102 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v94;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v94 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v93 + 1) + 8 * j);
        v48 = MEMORY[0x277D0ADC0];
        uniqueIdentifier2 = [v47 uniqueIdentifier];
        v50 = [v48 identityForIdentifier:uniqueIdentifier2];

        v51 = objc_opt_class();
        _sceneManager = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sceneManager];
        v53 = [_sceneManager existingSceneHandleForSceneIdentity:v50];
        v54 = SBSafeCast(v51, v53);

        v55 = [(NSMutableDictionary *)self->_displayItemsToWindowRelevancyAssertions objectForKey:v47];
        v56 = [v11 objectForKey:v47];
        v57 = v56;
        if (v56 && ([v56 hasSameAssertions:defaultResult] & 1) == 0 && v54)
        {
          if (v55)
          {
            [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updateSceneRelevancyAssertionsForAppLayout:layoutCopy assertionTypesToCurrentAssertions:v55 applicationSceneHandle:v54 sceneRelevancyResult:v57 reason:@"set relevancy result"];
          }

          else
          {
            [v54 acquireAssertionsForRelevancyResult:v57 reason:@"set relevancy result"];
          }
          v58 = ;
          [(NSMutableDictionary *)self->_displayItemsToWindowRelevancyAssertions setObject:v58 forKey:v47];

          v11 = v86;
        }

        else
        {
          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _invalidateAssertions:v55];
          [(NSMutableDictionary *)self->_displayItemsToWindowRelevancyAssertions removeObjectForKey:v47];
        }
      }

      v44 = [obj countByEnumeratingWithState:&v93 objects:v102 count:16];
    }

    while (v44);
  }

  obja = [MEMORY[0x277CBEB58] set];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  leafAppLayouts = [layoutCopy leafAppLayouts];
  v60 = [leafAppLayouts countByEnumeratingWithState:&v89 objects:v101 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v90;
    do
    {
      for (k = 0; k != v61; ++k)
      {
        if (*v90 != v62)
        {
          objc_enumerationMutation(leafAppLayouts);
        }

        v64 = *(*(&v89 + 1) + 8 * k);
        v65 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v64];
        overlay = [v65 overlay];
        allItems = [v64 allItems];
        firstObject = [allItems firstObject];

        v11 = v86;
        v69 = [v86 objectForKey:firstObject];
        [overlay setDisableFlattening:{objc_msgSend(v69, "disableFlattening")}];
        if ([v69 resignActive])
        {
          uniqueIdentifier3 = [firstObject uniqueIdentifier];
          [obja addObject:uniqueIdentifier3];

          v11 = v86;
        }
      }

      v61 = [leafAppLayouts countByEnumeratingWithState:&v89 objects:v101 count:16];
    }

    while (v61);
  }

  if ((BSEqualSets() & 1) == 0)
  {
    if ([obja count])
    {
      if (SBPeekConfigurationIsValid([stateCopy peekConfiguration]))
      {
        v71 = 0;
      }

      else
      {
        v71 = 19;
      }

      v72 = +[SBSceneManagerCoordinator sharedInstance];
      sceneDeactivationManager = [v72 sceneDeactivationManager];
      v74 = [sceneDeactivationManager newAssertionWithReason:v71];

      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __125__SBFullScreenSwitcherLiveContentOverlayCoordinator__updateSceneRelevancyWithZOrderedDisplayItems_inAppLayout_toLayoutState___block_invoke;
      v87[3] = &unk_2783ADD00;
      v88 = obja;
      [v74 acquireWithPredicate:v87 transitionContext:0];
      [(UIApplicationSceneDeactivationAssertion *)self->_lowRelevancyWindowResignActiveAssertion relinquish];
      lowRelevancyWindowResignActiveAssertion = self->_lowRelevancyWindowResignActiveAssertion;
      self->_lowRelevancyWindowResignActiveAssertion = v74;
      v76 = v74;
    }

    else
    {
      [(UIApplicationSceneDeactivationAssertion *)self->_lowRelevancyWindowResignActiveAssertion relinquish];
      v76 = self->_lowRelevancyWindowResignActiveAssertion;
      self->_lowRelevancyWindowResignActiveAssertion = 0;
    }

    objc_storeStrong(&self->_lowRelevancySceneDeactivationIdentifiers, obja);
  }
}

uint64_t __125__SBFullScreenSwitcherLiveContentOverlayCoordinator__updateSceneRelevancyWithZOrderedDisplayItems_inAppLayout_toLayoutState___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) containsObject:v3];

  return v4;
}

- (id)_sceneDeactivationPredicateMatchingAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __99__SBFullScreenSwitcherLiveContentOverlayCoordinator__sceneDeactivationPredicateMatchingAppLayouts___block_invoke;
  v7[3] = &unk_2783ADD00;
  v8 = layoutsCopy;
  v4 = layoutsCopy;
  v5 = MEMORY[0x223D6F7F0](v7);

  return v5;
}

uint64_t __99__SBFullScreenSwitcherLiveContentOverlayCoordinator__sceneDeactivationPredicateMatchingAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v3 identifier];
        LOBYTE(v8) = [v8 containsItemWithUniqueIdentifier:v9];

        if (v8)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)_presentTransientErrorMessageIfNeededForLayoutStateTransitionContext:(id)context medusaViewController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  _sbWindowScene = [controllerCopy _sbWindowScene];
  switcherController = [_sbWindowScene switcherController];

  windowManagementContext = [switcherController windowManagementContext];
  baseStyle = [windowManagementContext baseStyle];

  if (baseStyle)
  {
    if ([(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _shouldShowSplitViewNotSupportedMessageForLayoutStateTransitionContext:contextCopy medusaViewController:controllerCopy])
    {
      v11 = 2;
    }

    else
    {
      if (![(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _shouldShowMultipleWindowsNotSupportedMessageForLayoutStateTransitionContext:contextCopy medusaViewController:controllerCopy])
      {
        goto LABEL_7;
      }

      v11 = 3;
    }

    [switcherController _presentMedusaBanner:v11 fireInterval:0.0 dismissInterval:1.5];
  }

LABEL_7:
}

- (BOOL)_shouldShowSplitViewNotSupportedMessageForLayoutStateTransitionContext:(id)context medusaViewController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  sceneHandle = [controllerCopy sceneHandle];
  application = [sceneHandle application];
  _sbWindowScene = [controllerCopy _sbWindowScene];

  switcherController = [_sbWindowScene switcherController];

  windowManagementContext = [switcherController windowManagementContext];
  displayIdentity = [switcherController displayIdentity];
  v13 = [application supportsMultiWindowLayoutsForSwitcherWindowManagementContext:windowManagementContext displayIdentity:displayIdentity];

  if ((v13 & 1) == 0)
  {
    fromLayoutState = [contextCopy fromLayoutState];
    v16 = objc_opt_class();
    v17 = fromLayoutState;
    if (v16)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    toLayoutState = [contextCopy toLayoutState];
    v21 = objc_opt_class();
    v22 = toLayoutState;
    if (v21)
    {
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    lastActivationSource = [sceneHandle lastActivationSource];
    if (SBPeekConfigurationIsValid([v19 peekConfiguration]) && !SBPeekConfigurationIsValid(objc_msgSend(v24, "peekConfiguration")))
    {
      appLayout = [v19 appLayout];
      floatingAppLayout = [v19 floatingAppLayout];
      appLayout2 = [v24 appLayout];
      v14 = [v24 spaceConfiguration] == 1 && floatingAppLayout == 0 && appLayout2 != appLayout;
    }

    else
    {
      if (lastActivationSource != 27)
      {
        v14 = 0;
LABEL_32:

        goto LABEL_33;
      }

      appLayout = [v19 appLayout];
      floatingAppLayout = [v24 appLayout];
      if ([floatingAppLayout isCenterOverFull])
      {
        v28 = 0;
      }

      else
      {
        floatingAppLayout2 = [v24 floatingAppLayout];
        v28 = floatingAppLayout2 == 0;
      }

      v14 = floatingAppLayout != appLayout && v28;
    }

    goto LABEL_32;
  }

  v14 = 0;
LABEL_33:

  return v14;
}

- (BOOL)_shouldShowMultipleWindowsNotSupportedMessageForLayoutStateTransitionContext:(id)context medusaViewController:(id)controller
{
  contextCopy = context;
  controllerCopy = controller;
  switcherController = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (isFlexibleWindowingEnabled)
  {
    v11 = 0;
  }

  else
  {
    sceneHandle = [controllerCopy sceneHandle];
    application = [sceneHandle application];
    info = [application info];
    supportsMultiwindow = [info supportsMultiwindow];

    if (supportsMultiwindow)
    {
      v11 = 0;
    }

    else
    {
      fromLayoutState = [contextCopy fromLayoutState];
      v17 = objc_opt_class();
      v18 = fromLayoutState;
      if (v17)
      {
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      toLayoutState = [contextCopy toLayoutState];
      v22 = objc_opt_class();
      v23 = toLayoutState;
      if (v22)
      {
        if (objc_opt_isKindOfClass())
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      if (SBPeekConfigurationIsValid([v20 peekConfiguration]) && !SBPeekConfigurationIsValid(objc_msgSend(v25, "peekConfiguration")))
      {
        lastActivationSource = [sceneHandle lastActivationSource];
        appLayout = [v20 appLayout];
        floatingAppLayout = [v20 floatingAppLayout];
        appLayout2 = [v25 appLayout];
        floatingAppLayout2 = [v25 floatingAppLayout];
        v35 = floatingAppLayout;
        if (floatingAppLayout)
        {
          v34 = floatingAppLayout2;
          v33 = [appLayout2 leafAppLayoutForRole:{objc_msgSend(controllerCopy, "layoutRole")}];
          v32 = [floatingAppLayout leafAppLayoutForRole:1];
          v29 = [v32 appLayoutByModifyingEnvironment:{objc_msgSend(appLayout2, "environment")}];
          LOBYTE(floatingAppLayout) = v33 == v29 && v34 == 0;

          floatingAppLayout2 = v34;
        }

        v11 = (lastActivationSource != 3) & ((appLayout2 == appLayout) | floatingAppLayout);
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

- (void)invalidate
{
  v23 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allKeys];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [allKeys countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _removeOverlayForAppLayout:*(*(&v17 + 1) + 8 * v7++) animated:0];
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_displayItemsToWindowRelevancyAssertions allValues];
  v9 = [allValues countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _invalidateAssertions:*(*(&v13 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }

  [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext removeAllObjects];
  [(NSMutableArray *)self->_visibleAlwaysLiveAppLayouts removeAllObjects];
}

- (void)fullScreenSwitcherSceneLiveContentOverlay:(id)overlay tappedStatusBar:(id)bar tapActionType:(int64_t)type
{
  v60 = *MEMORY[0x277D85DE8];
  overlayCopy = overlay;
  barCopy = bar;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  allKeys = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v54 objects:v59 count:16];
  v49 = barCopy;
  if (v10)
  {
    v11 = v10;
    v12 = *v55;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v55 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v54 + 1) + 8 * i);
        if ([v14 environment] == 3)
        {
          v15 = v14;
          goto LABEL_11;
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  allKeys2 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allKeys];
  v17 = [allKeys2 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v17)
  {
    v18 = v15;
    v19 = *v51;
    while (2)
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v51 != v19)
        {
          objc_enumerationMutation(allKeys2);
        }

        v21 = *(*(&v50 + 1) + 8 * j);
        v22 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v21];
        overlay = [v22 overlay];

        if (overlay == overlayCopy)
        {
          v17 = overlayCopy;
          v24 = v21;

          goto LABEL_21;
        }
      }

      v17 = [allKeys2 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v24 = 0;
LABEL_21:
    v15 = v18;
  }

  else
  {
    v24 = 0;
  }

  if (!v15 || v24 == v15)
  {
    v27 = [v24 itemForLayoutRole:1];
    uniqueIdentifier = [v27 uniqueIdentifier];
  }

  else
  {
    v25 = [v15 itemForLayoutRole:1];
    uniqueIdentifier = [v25 uniqueIdentifier];

    v27 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v15];
    overlay2 = [v27 overlay];

    v17 = overlay2;
  }

  v29 = [MEMORY[0x277D0ADC0] identityForIdentifier:uniqueIdentifier];
  _sceneManager = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sceneManager];
  v31 = [_sceneManager existingSceneHandleForSceneIdentity:v29];
  v32 = objc_opt_class();
  v33 = v31;
  if (v32)
  {
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  sceneIfExists = [v35 sceneIfExists];

  if (sceneIfExists)
  {
    contentViewController = [v17 contentViewController];
    view = [contentViewController view];
    [v49 locationInView:view];
    v39 = v38;

    v40 = [objc_alloc(MEMORY[0x277D75AB0]) initWithType:type xPosition:v39];
    [MEMORY[0x277CBEB98] setWithObject:v40];
    v41 = v29;
    v42 = uniqueIdentifier;
    v43 = v17;
    v44 = v24;
    v46 = v45 = v15;
    [sceneIfExists sendActions:v46];

    v15 = v45;
    v24 = v44;
    v17 = v43;
    uniqueIdentifier = v42;
    v29 = v41;
  }
}

- (void)fullScreenSwitcherSceneLiveContentOverlay:(id)overlay doubleTappedStatusBar:(id)bar
{
  v28 = *MEMORY[0x277D85DE8];
  overlayCopy = overlay;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  contentViewController = [WeakRetained contentViewController];
  v8 = objc_opt_class();
  v9 = contentViewController;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allKeys];
  v13 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v22 = WeakRetained;
    v15 = *v24;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v17];
        overlay = [v18 overlay];

        if (overlay == overlayCopy)
        {
          v20 = v17;

          goto LABEL_16;
        }
      }

      v14 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v20 = 0;
LABEL_16:
    WeakRetained = v22;
  }

  else
  {
    v20 = 0;
  }

  v21 = [v20 itemForLayoutRole:1];
  [v11 toggleFullScreenDisplayItem:v21];
}

- (BOOL)_shouldAnimateAddingLiveContentOverlayForTransitionContext:(id)context leafAppLayout:(id)layout
{
  contextCopy = context;
  if (([(NSMutableArray *)self->_visibleAlwaysLiveAppLayouts containsObject:layout]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    previousLayoutState = [contextCopy previousLayoutState];
    layoutState = [contextCopy layoutState];
    unlockedEnvironmentMode = [previousLayoutState unlockedEnvironmentMode];
    if (((unlockedEnvironmentMode & 0xFFFFFFFFFFFFFFFELL) == 2 || SBPeekConfigurationIsValid([previousLayoutState peekConfiguration])) && -[SBFullScreenSwitcherLiveContentOverlayCoordinator _layoutStateContainsElementBlockedForScreenTimeExpiration:](self, "_layoutStateContainsElementBlockedForScreenTimeExpiration:", layoutState) || (v11 = objc_msgSend(previousLayoutState, "interfaceOrientation"), v11 != objc_msgSend(layoutState, "interfaceOrientation")))
    {
      v7 = 1;
    }

    else
    {
      request = [contextCopy request];
      source = [request source];

      v7 = 1;
      if (unlockedEnvironmentMode != 2 && source != 11)
      {
        unlockedEnvironmentMode2 = [layoutState unlockedEnvironmentMode];
        v7 = unlockedEnvironmentMode == 3 && unlockedEnvironmentMode2 == 3;
      }
    }
  }

  return v7;
}

- (BOOL)_layoutStateContainsElementBlockedForScreenTimeExpiration:(id)expiration
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  elements = [expiration elements];
  v4 = [elements countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(elements);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if (SBLayoutRoleIsValid([v7 layoutRole]))
        {
          workspaceEntity = [v7 workspaceEntity];
          applicationSceneEntity = [workspaceEntity applicationSceneEntity];
          application = [applicationSceneEntity application];

          info = [application info];
          LOBYTE(applicationSceneEntity) = [info isBlockedForScreenTimeExpiration];

          if (applicationSceneEntity)
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [elements countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (void)_updateFullScreenDisplayLayoutElementsForActiveAppLayouts:(id)layouts inAppLayout:(id)layout layoutAttributesMap:(id)map
{
  v44 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  layoutCopy = layout;
  mapCopy = map;
  selfCopy = self;
  switcherController = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  v32 = mapCopy;
  v33 = layoutCopy;
  if (isFlexibleWindowingEnabled)
  {
    v14 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)selfCopy _itemToZOrderIndexDictionaryForAppLayout:layoutCopy layoutAttributesMap:mapCopy];
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = isFlexibleWindowingEnabled;
  }

  else
  {
    v15 = 0;
  }

  v31 = switcherController;
  sceneRelevancyManager = [switcherController sceneRelevancyManager];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(NSMutableDictionary *)selfCopy->_appLayoutToLiveContentOverlayContext allKeys];
  v16 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v40;
    v34 = v14;
    do
    {
      v19 = 0;
      v36 = v17;
      do
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v39 + 1) + 8 * v19);
        v21 = [(NSMutableDictionary *)selfCopy->_appLayoutToLiveContentOverlayContext objectForKey:v20];
        overlay = [v21 overlay];
        v23 = [layoutsCopy containsObject:v20];
        if (v15)
        {
          v24 = [v20 itemForLayoutRole:1];
          [v14 objectForKey:v24];
          v25 = v18;
          v26 = v15;
          v28 = v27 = layoutsCopy;
          integerValue = [v28 integerValue];

          layoutsCopy = v27;
          v15 = v26;
          v18 = v25;
          v17 = v36;

          v30 = integerValue > [sceneRelevancyManager maximumNumberOfVisibleScenesOnStage];
          v14 = v34;
          if (v30)
          {
            v23 = 0;
          }

          else
          {
            v23 = v23;
          }
        }

        [overlay setDisplayLayoutElementActive:v23];

        ++v19;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v17);
  }
}

- (int64_t)_calculateSBSDisplayLayoutElementRoleForDisplayItem:(id)item inAppLayout:(id)layout zOrderIndex:(int64_t)index layoutAttributesMap:(id)map
{
  layoutCopy = layout;
  mapCopy = map;
  itemCopy = item;
  v12 = [layoutCopy layoutRoleForItem:itemCopy];
  v13 = [mapCopy objectForKey:itemCopy];

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  [(SBDisplayItemLayoutAttributes *)v13 slideOverConfiguration];
  v16[0] = v18;
  v16[1] = v19;
  v17 = v20;
  if (SBDisplayItemSlideOverConfigurationIsValid(v16))
  {
LABEL_2:
    v14 = 7;
    goto LABEL_9;
  }

  if (index < 1)
  {
    if ([layoutCopy environment] != 2)
    {
      v14 = SBSDisplayLayoutRoleForLayoutRole(v12);
      goto LABEL_9;
    }

    goto LABEL_2;
  }

  if (index >= 5)
  {
    v14 = 11;
  }

  else
  {
    v14 = qword_21F8A62F0[index - 1];
  }

LABEL_9:

  return v14;
}

- (id)_newLiveContentOverlayForApplicationContext:(id)context layoutRole:(int64_t)role sbsDisplayLayoutRole:(int64_t)layoutRole zOrderIndex:(int64_t)index
{
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  layoutState = [contextCopy layoutState];
  v13 = [layoutState elementWithRole:role];
  workspaceEntity = [v13 workspaceEntity];

  if ([workspaceEntity isAppClipPlaceholderEntity])
  {
    v15 = workspaceEntity;
    v16 = [SBFluidSwitcherAppClipLiveContentOverlay alloc];
    _sbWindowScene = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sbWindowScene];
    v18 = [(SBFluidSwitcherAppClipLiveContentOverlay *)v16 initWithPlaceholderEntity:v15 windowScene:_sbWindowScene];

    parentViewControllerForContentOverlay = [WeakRetained parentViewControllerForContentOverlay];
    contentViewController = [(SBFullScreenSwitcherSceneLiveContentOverlay *)v18 contentViewController];
    [parentViewControllerForContentOverlay addChildViewController:contentViewController];
    [contentViewController bs_beginAppearanceTransition:1 animated:0];
    [contentViewController didMoveToParentViewController:parentViewControllerForContentOverlay];
    [contentViewController bs_endAppearanceTransition];
  }

  else
  {
    v18 = objc_alloc_init(SBFullScreenSwitcherSceneLiveContentOverlay);
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)v18 setStatusBarActionDelegate:self];
  }

  [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _configureLiveContentOverlayView:v18 forTransitionContext:contextCopy layoutRole:role sbsDisplayLayoutRole:layoutRole zOrderIndex:index];
  if ([(SBFullScreenSwitcherSceneLiveContentOverlay *)v18 overlayType]== 1)
  {
    parentViewControllerForContentOverlay2 = [WeakRetained parentViewControllerForContentOverlay];
    contentViewController2 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)v18 contentViewController];
    orientationWrapperView = [(SBFullScreenSwitcherSceneLiveContentOverlay *)v18 orientationWrapperView];
    [parentViewControllerForContentOverlay2 addChildViewController:contentViewController2];
    [contentViewController2 bs_beginAppearanceTransition:1 animated:0];
    view = [contentViewController2 view];
    [orientationWrapperView addContentView:view];

    [contentViewController2 didMoveToParentViewController:parentViewControllerForContentOverlay2];
    [contentViewController2 bs_endAppearanceTransition];
  }

  return v18;
}

- (void)_configureLiveContentOverlayView:(id)view forTransitionContext:(id)context layoutRole:(int64_t)role sbsDisplayLayoutRole:(int64_t)layoutRole zOrderIndex:(int64_t)index
{
  viewCopy = view;
  contextCopy = context;
  v12 = [contextCopy entityForLayoutRole:role];
  deviceApplicationSceneEntity = [v12 deviceApplicationSceneEntity];
  sceneHandle = [deviceApplicationSceneEntity sceneHandle];
  [contextCopy frameForApplicationSceneEntity:v12];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  layoutState = [contextCopy layoutState];

  v24 = objc_opt_class();
  v25 = layoutState;
  if (v24)
  {
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  spaceConfiguration = [v27 spaceConfiguration];
  floatingConfiguration = [v27 floatingConfiguration];
  v28 = [v27 interfaceOrientationForLayoutRole:role];
  if (objc_opt_respondsToSelector())
  {
    [viewCopy setContentReferenceSize:v28 interfaceOrientation:{v20, v22}];
  }

  application = [sceneHandle application];
  v50 = sceneHandle;
  if ([application classicAppPhoneAppRunningOnPad] && objc_msgSend(sceneHandle, "_supportsMixedOrientation"))
  {
    v30 = (v28 - 3) >= 2;
    v31 = v28;
    v32 = deviceApplicationSceneEntity;
    v33 = !v30;
    v46 = v33 ^ (([v27 interfaceOrientation] - 3) < 2);
    deviceApplicationSceneEntity = v32;
    v28 = v31;
  }

  else
  {
    v46 = 0;
  }

  v34 = [v27 elementWithRole:role];
  v35 = [v27 layoutAttributesForElement:v34];
  roleCopy = role;
  connections = [(SBHomeScreenConfigurationServer *)v35 connections];
  if ([viewCopy overlayType] == 1)
  {
    v45 = deviceApplicationSceneEntity;
    containerOrientation = self->_containerOrientation;
    v39 = viewCopy;
    v40 = v28;
    v41 = v39;
    LOBYTE(v44) = v46;
    [v39 configureWithWorkspaceEntity:v12 referenceFrame:v40 contentOrientation:containerOrientation containerOrientation:roleCopy layoutRole:layoutRole sbsDisplayLayoutRole:index zOrderIndex:v16 spaceConfiguration:v18 floatingConfiguration:v20 hasClassicAppOrientationMismatch:v22 sizingPolicy:{spaceConfiguration, floatingConfiguration, v44, connections}];
    keyboardFocusSceneID = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self keyboardFocusSceneID];
    [v41 noteKeyboardFocusDidChangeToSceneID:keyboardFocusSceneID];

    windowingSettings = [(SBAppSwitcherSettings *)self->_switcherSettings windowingSettings];
    [v41 setShouldPreventFlatteningUnoccludedScenes:{objc_msgSend(windowingSettings, "preventFlatteningUnoccludedScenes")}];

    deviceApplicationSceneEntity = v45;
  }
}

- (void)_addOverlay:(id)overlay forAppLayout:(id)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  v29 = *MEMORY[0x277D85DE8];
  overlayCopy = overlay;
  layoutCopy = layout;
  delegate = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self delegate];
  v11 = [[SBFullScreenLiveContentOverlayContext alloc] initWithOverlay:overlayCopy];
  [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext setObject:v11 forKey:layoutCopy];
  if (objc_opt_respondsToSelector())
  {
    [overlayCopy setContainerOrientation:self->_containerOrientation];
  }

  v12 = SBLogAppSwitcher();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromFullScreenLiveContentOverlayType([overlayCopy overlayType]);
    succinctDescription = [layoutCopy succinctDescription];
    NSStringFromBOOL();
    v17 = v18 = animatedCopy;
    *buf = 138544386;
    v20 = v14;
    v21 = 2048;
    selfCopy = self;
    v23 = 2114;
    v24 = v15;
    v25 = 2114;
    v26 = succinctDescription;
    v27 = 2114;
    v28 = v17;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Adding %{public}@ overlay for: %{public}@, animated: %{public}@", buf, 0x34u);

    animatedCopy = v18;
  }

  [delegate addLiveContentOverlay:overlayCopy forAppLayout:layoutCopy animated:animatedCopy];
}

- (int64_t)_existingOverlayTypeForAppLayout:(id)layout
{
  v3 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:layout];
  overlayType = [v3 overlayType];

  return overlayType;
}

- (void)_removeOverlayForAppLayout:(id)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  v29 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v7 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:layoutCopy];
  v8 = v7;
  if (v7)
  {
    if ([v7 overlayType] == 3)
    {
      overlay = [v8 overlay];
      [overlay invalidate];
LABEL_8:

      goto LABEL_9;
    }

    if ([v8 overlayType] == 2 || objc_msgSend(v8, "overlayType") == 1 || objc_msgSend(v8, "overlayType") == 4)
    {
      overlay2 = [v8 overlay];
      overlay = [overlay2 contentViewController];

      [overlay willMoveToParentViewController:0];
      [overlay bs_beginAppearanceTransition:0 animated:0];
      [overlay removeFromParentViewController];
      [overlay bs_endAppearanceTransition];
      overlay3 = [v8 overlay];
      [overlay3 invalidate];

      goto LABEL_8;
    }
  }

LABEL_9:
  [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext removeObjectForKey:layoutCopy];
  v12 = SBLogAppSwitcher();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromFullScreenLiveContentOverlayType([v8 overlayType]);
    succinctDescription = [layoutCopy succinctDescription];
    v17 = NSStringFromBOOL();
    v19 = 138544386;
    v20 = v14;
    v21 = 2048;
    selfCopy = self;
    v23 = 2114;
    v24 = v15;
    v25 = 2114;
    v26 = succinctDescription;
    v27 = 2114;
    v28 = v17;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Removing %{public}@ overlay for: %{public}@, animated: %{public}@", &v19, 0x34u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained removeLiveContentOverlayForAppLayout:layoutCopy animated:animatedCopy];
}

- (void)_moveExistingOverlayForAppLayout:(id)layout toAppLayout:(id)appLayout
{
  v28 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v8 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:layoutCopy];
  v9 = v8;
  if (v8 && -[SBFullScreenSwitcherLiveContentOverlayCoordinator _supportsMovingOverlayTypeBetweenAppLayouts:](self, "_supportsMovingOverlayTypeBetweenAppLayouts:", [v8 overlayType]))
  {
    [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext removeObjectForKey:layoutCopy];
    [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext setObject:v9 forKey:appLayoutCopy];
    v10 = SBLogAppSwitcher();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromFullScreenLiveContentOverlayType([v9 overlayType]);
      succinctDescription = [layoutCopy succinctDescription];
      succinctDescription2 = [appLayoutCopy succinctDescription];
      v18 = 138544386;
      v19 = v12;
      v20 = 2048;
      selfCopy = self;
      v22 = 2114;
      v23 = v13;
      v24 = 2114;
      v25 = succinctDescription;
      v26 = 2114;
      v27 = succinctDescription2;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Moving existing %{public}@ overlay from: %{public}@, to: %{public}@", &v18, 0x34u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    overlay = [v9 overlay];
    [WeakRetained moveExistingLiveContentOverlay:overlay forAppLayout:layoutCopy toAppLayout:appLayoutCopy];
  }
}

void __92__SBFullScreenSwitcherLiveContentOverlayCoordinator__updatePortaledSceneLiveContentOverlays__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 _currentMainAppLayout];
  v7 = [v6 containsItem:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)_updateSceneRelevancyAssertionsForAppLayout:(id)layout assertionTypesToCurrentAssertions:(id)assertions applicationSceneHandle:(id)handle sceneRelevancyResult:(id)result reason:(id)reason
{
  v43 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  handleCopy = handle;
  resultCopy = result;
  reasonCopy = reason;
  v37 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = [&unk_28336E070 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    v36 = assertionsCopy;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(&unk_28336E070);
        }

        v17 = *(*(&v38 + 1) + 8 * i);
        v18 = [assertionsCopy objectForKey:v17];
        integerValue = [v17 integerValue];
        if (![(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _shouldCreateAssertionForType:integerValue withSceneRelevancyResult:resultCopy])
        {
          [v18 invalidate];
          goto LABEL_38;
        }

        if (integerValue == 2)
        {
          resourceElevation = [resultCopy resourceElevation];
          v28 = objc_opt_class();
          v22 = v18;
          if (v28)
          {
            if (objc_opt_isKindOfClass())
            {
              v29 = v22;
            }

            else
            {
              v29 = 0;
            }
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;

          if (!v30 || [v30 resourceElevation] != resourceElevation)
          {
            v31 = [handleCopy acquireSceneResourceElevationAssertionWithReason:reasonCopy resourceElevation:resourceElevation];
            goto LABEL_36;
          }
        }

        else if (integerValue == 1)
        {
          jetsamMode = [resultCopy jetsamMode];
          v25 = objc_opt_class();
          v22 = v18;
          if (v25)
          {
            if (objc_opt_isKindOfClass())
            {
              v26 = v22;
            }

            else
            {
              v26 = 0;
            }
          }

          else
          {
            v26 = 0;
          }

          v30 = v26;

          if (!v30 || [v30 jetsamMode] != jetsamMode)
          {
            v31 = [handleCopy acquireSceneJetsamModeAssertionWithReason:reasonCopy jetsamMode:jetsamMode];
LABEL_36:
            v32 = v31;
            [v37 setObject:v31 forKey:v17];
            [v22 invalidate];

            goto LABEL_37;
          }
        }

        else
        {
          if (integerValue)
          {
            goto LABEL_38;
          }

          activityMode = [resultCopy activityMode];
          v21 = objc_opt_class();
          v22 = v18;
          if (v21)
          {
            if (objc_opt_isKindOfClass())
            {
              v23 = v22;
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }

          v30 = v23;

          if (!v30 || [v30 activityMode] != activityMode)
          {
            v31 = [handleCopy acquireSceneActivityModeAssertionWithReason:reasonCopy activityMode:activityMode];
            goto LABEL_36;
          }
        }

        [v37 setObject:v30 forKey:v17];
LABEL_37:
        assertionsCopy = v36;

LABEL_38:
      }

      v14 = [&unk_28336E070 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v14);
  }

  return v37;
}

- (void)_invalidateAssertions:(id)assertions
{
  v13 = *MEMORY[0x277D85DE8];
  if (assertions)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    allValues = [assertions allValues];
    v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v8 + 1) + 8 * v7++) invalidate];
        }

        while (v5 != v7);
        v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (BOOL)_shouldCreateAssertionForType:(int64_t)type withSceneRelevancyResult:(id)result
{
  resultCopy = result;
  v6 = resultCopy;
  if (type == 2)
  {
    resourceElevation = [resultCopy resourceElevation];
  }

  else if (type == 1)
  {
    resourceElevation = [resultCopy jetsamMode];
  }

  else
  {
    if (type)
    {
      v8 = 1;
      goto LABEL_9;
    }

    resourceElevation = [resultCopy activityMode];
  }

  v8 = resourceElevation != 0;
LABEL_9:

  return v8;
}

- (void)delegate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBFullScreenSwitcherLiveContentOverlayCoordinator.m" lineNumber:236 description:@"delegate must be set before use"];
}

@end