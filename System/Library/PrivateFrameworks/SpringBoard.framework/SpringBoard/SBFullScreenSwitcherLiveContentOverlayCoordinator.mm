@interface SBFullScreenSwitcherLiveContentOverlayCoordinator
- (BOOL)_layoutStateContainsElementBlockedForScreenTimeExpiration:(id)a3;
- (BOOL)_shouldAnimateAddingLiveContentOverlayForTransitionContext:(id)a3 leafAppLayout:(id)a4;
- (BOOL)_shouldCreateAssertionForType:(int64_t)a3 withSceneRelevancyResult:(id)a4;
- (BOOL)_shouldShowMultipleWindowsNotSupportedMessageForLayoutStateTransitionContext:(id)a3 medusaViewController:(id)a4;
- (BOOL)_shouldShowSplitViewNotSupportedMessageForLayoutStateTransitionContext:(id)a3 medusaViewController:(id)a4;
- (BOOL)wantsEdgeProtectForHomeGestureForAppLayout:(id)a3;
- (BOOL)wantsHomeAffordanceAutoHideForAppLayout:(id)a3;
- (SBFullScreenSwitcherLiveContentOverlayCoordinator)initWithSwitcherController:(id)a3;
- (SBSceneManager)_sceneManager;
- (SBSwitcherController)switcherController;
- (SBSwitcherLiveContentOverlayCoordinatorDelegate)delegate;
- (SBWindowScene)_sbWindowScene;
- (id)_itemToZOrderIndexDictionaryForAppLayout:(id)a3 layoutAttributesMap:(id)a4;
- (id)_newLiveContentOverlayForApplicationContext:(id)a3 layoutRole:(int64_t)a4 sbsDisplayLayoutRole:(int64_t)a5 zOrderIndex:(int64_t)a6;
- (id)_sceneDeactivationPredicateMatchingAppLayouts:(id)a3;
- (id)_updateSceneRelevancyAssertionsForAppLayout:(id)a3 assertionTypesToCurrentAssertions:(id)a4 applicationSceneHandle:(id)a5 sceneRelevancyResult:(id)a6 reason:(id)a7;
- (id)appLayoutForKeyboardFocusedScene;
- (id)appLayoutForSceneIdentifier:(id)a3;
- (int64_t)_calculateSBSDisplayLayoutElementRoleForDisplayItem:(id)a3 inAppLayout:(id)a4 zOrderIndex:(int64_t)a5 layoutAttributesMap:(id)a6;
- (int64_t)_existingOverlayTypeForAppLayout:(id)a3;
- (void)_addOverlay:(id)a3 forAppLayout:(id)a4 animated:(BOOL)a5;
- (void)_configureLiveContentOverlayView:(id)a3 forTransitionContext:(id)a4 layoutRole:(int64_t)a5 sbsDisplayLayoutRole:(int64_t)a6 zOrderIndex:(int64_t)a7;
- (void)_invalidateAssertions:(id)a3;
- (void)_moveExistingOverlayForAppLayout:(id)a3 toAppLayout:(id)a4;
- (void)_presentTransientErrorMessageIfNeededForLayoutStateTransitionContext:(id)a3 medusaViewController:(id)a4;
- (void)_removeOverlayForAppLayout:(id)a3 animated:(BOOL)a4;
- (void)_updateAlwaysLiveSceneContentOverlays;
- (void)_updateFullScreenDisplayLayoutElementsForActiveAppLayouts:(id)a3 inAppLayout:(id)a4 layoutAttributesMap:(id)a5;
- (void)_updatePortaledSceneLiveContentOverlays;
- (void)_updateSceneRelevancyWithZOrderedDisplayItems:(id)a3 inAppLayout:(id)a4 toLayoutState:(id)a5;
- (void)appLayoutDidBecomeHidden:(id)a3;
- (void)appLayoutWillBecomeVisible:(id)a3;
- (void)cleanUpAfterCoordinatedLayoutStateTransitionWithContext:(id)a3;
- (void)delegate;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4;
- (void)fullScreenSwitcherSceneLiveContentOverlay:(id)a3 doubleTappedStatusBar:(id)a4;
- (void)fullScreenSwitcherSceneLiveContentOverlay:(id)a3 tappedStatusBar:(id)a4 tapActionType:(int64_t)a5;
- (void)invalidate;
- (void)itemContainerForAppLayout:(id)a3 willBeReusedForAppLayout:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionWillEndWithTransitionContext:(id)a4;
- (void)noteKeyboardFocusDidChangeToSceneID:(id)a3;
- (void)prepareForCoordinatedLayoutStateTransitionWithContext:(id)a3;
- (void)setContainerOrientation:(int64_t)a3;
- (void)setLiveContentOverlayUpdatesSuspended:(BOOL)a3;
- (void)willPerformNonAnimatedTransitionToInterfaceOrientation:(int64_t)a3;
- (void)willRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 alongsideContainerView:(id)a5 animated:(BOOL)a6;
@end

@implementation SBFullScreenSwitcherLiveContentOverlayCoordinator

- (SBSwitcherController)switcherController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);

  return WeakRetained;
}

- (SBSceneManager)_sceneManager
{
  v2 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sbWindowScene];
  v3 = [v2 sceneManager];

  return v3;
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
            v11 = [v8 allItems];
            v12 = [v11 firstObject];

            v13 = MEMORY[0x277D0ADC0];
            v14 = [v12 uniqueIdentifier];
            v15 = [v13 identityForIdentifier:v14];

            v16 = objc_opt_class();
            v17 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sceneManager];
            v18 = [v17 existingSceneHandleForSceneIdentity:v15];
            v19 = SBSafeCast(v16, v18);

            if (v19)
            {
              if (v10)
              {
                [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _removeOverlayForAppLayout:v8 animated:0];
              }

              v20 = [SBFullScreenAlwaysLiveLiveContentOverlay alloc];
              v21 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sbWindowScene];
              v22 = [v21 screen];
              [v22 _referenceBounds];
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
  v70 = [WeakRetained switcherCoordinator];
  v2 = [WeakRetained contentViewController];
  v3 = objc_opt_class();
  v4 = v2;
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
  v7 = [v6 layoutContext];
  v8 = [v7 activeGesture];
  v64 = [v8 gestureEvent];

  v65 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([v64 isWindowDragGestureEvent])
  {
    v9 = [v64 selectedAppLayout];
    v10 = [v9 itemForLayoutRole:1];
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
    [v70 enumerateSwitcherControllersWithBlock:v86];
    v12 = v90[5];
    if (!v12)
    {
      v13 = [v70 switcherControllerForDisplayItem:v11];
      v14 = v90[5];
      v90[5] = v13;

      v12 = v90[5];
    }

    v74 = v12;
    v15 = [v74 layoutState];
    v16 = [v9 appLayoutByModifyingPreferredDisplayOrdinal:{objc_msgSend(v15, "displayOrdinal")}];

    [v65 addObject:v16];
    _Block_object_dispose(&v89, 8);

LABEL_10:
    goto LABEL_22;
  }

  currentCoordinatedLayoutStateTransitionContext = self->_currentCoordinatedLayoutStateTransitionContext;
  if (currentCoordinatedLayoutStateTransitionContext)
  {
    v18 = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)currentCoordinatedLayoutStateTransitionContext toSwitcherController];
    v19 = [WeakRetained isEqual:v18];

    if (v19)
    {
      v74 = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self->_currentCoordinatedLayoutStateTransitionContext fromSwitcherController];
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v16 = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self->_currentCoordinatedLayoutStateTransitionContext displayItems];
      v20 = [v16 countByEnumeratingWithState:&v82 objects:v96 count:16];
      if (v20)
      {
        v21 = *v83;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v83 != v21)
            {
              objc_enumerationMutation(v16);
            }

            v23 = *(*(&v82 + 1) + 8 * i);
            v24 = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self->_currentCoordinatedLayoutStateTransitionContext toAppLayout];
            v25 = [v24 leafAppLayoutForItem:v23];

            [v65 addObject:v25];
          }

          v20 = [v16 countByEnumeratingWithState:&v82 objects:v96 count:16];
        }

        while (v20);
      }

      goto LABEL_10;
    }
  }

  v74 = 0;
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
          v28 = [v70 convertAppLayout:v27 fromSwitcherController:v74 toSwitcherController:WeakRetained];
          [v69 addObject:v28];
          v29 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _existingOverlayTypeForAppLayout:v28];
          v30 = v29;
          if (v29 != 1 && v29 != 4)
          {
            v67 = [v28 itemForLayoutRole:1];
            v32 = [v74 windowScene];
            v33 = [v32 sceneManager];

            v34 = MEMORY[0x277D0ADC0];
            v35 = [v67 uniqueIdentifier];
            v36 = [v34 identityForIdentifier:v35];
            v37 = [v33 existingSceneHandleForSceneIdentity:v36];
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

            v42 = [v74 contentViewController];
            v43 = [v42 liveContentOverlayForAppLayout:v27];

            if (objc_opt_respondsToSelector())
            {
              v44 = [v43 newPortaledLiveContentOverlayView];
              v45 = [v44 layer];
              v46 = objc_opt_class();
              v47 = v45;
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
              if (v41 && v43 && v44)
              {
                if (v30)
                {
                  [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _removeOverlayForAppLayout:v28 animated:0];
                }

                v50 = [v43 contentOverlayView];
                [v50 frame];
                v52 = v51;
                v54 = v53;

                v55 = [v74 layoutState];
                v56 = [v41 sceneIdentifier];
                v57 = [v55 interfaceOrientationForElementIdentifier:v56];

                v58 = [WeakRetained layoutState];
                v59 = [v58 interfaceOrientation];

                v60 = [[SBFluidSwitcherPortaledSceneLiveContentOverlay alloc] initWithSceneHandle:v41 referenceSize:v57 contentOrientation:v59 containerOrientation:v44 livePortalView:v52, v54];
                [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _addOverlay:v60 forAppLayout:v28 animated:0];
              }
            }

            else
            {
              v44 = 0;
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
  v77 = self;
  v62 = v69;
  [v61 enumerateKeysAndObjectsUsingBlock:v75];
}

- (SBWindowScene)_sbWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v3 = [WeakRetained windowScene];

  return v3;
}

- (SBFullScreenSwitcherLiveContentOverlayCoordinator)initWithSwitcherController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBFullScreenSwitcherLiveContentOverlayCoordinator;
  v5 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_switcherController, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appLayoutToLiveContentOverlayContext = v6->_appLayoutToLiveContentOverlayContext;
    v6->_appLayoutToLiveContentOverlayContext = v7;

    v9 = +[SBAppSwitcherDomain rootSettings];
    switcherSettings = v6->_switcherSettings;
    v6->_switcherSettings = v9;
  }

  return v6;
}

- (void)setLiveContentOverlayUpdatesSuspended:(BOOL)a3
{
  if (self->_liveContentOverlayUpdatesSuspended != a3)
  {
    self->_liveContentOverlayUpdatesSuspended = a3;
  }
}

- (void)setContainerOrientation:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  self->_containerOrientation = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
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

        v9 = [*(*(&v10 + 1) + 8 * v8) overlay];
        if (objc_opt_respondsToSelector())
        {
          [v9 setContainerOrientation:a3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)willRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 alongsideContainerView:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v22 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v17 + 1) + 8 * v15) overlay];
        if (objc_opt_respondsToSelector())
        {
          [v16 willRotateFromInterfaceOrientation:a3 toInterfaceOrientation:a4 alongsideContainerView:v10 animated:v6];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) overlay];
        if (objc_opt_respondsToSelector())
        {
          [v11 didRotateFromInterfaceOrientation:a3 toInterfaceOrientation:a4];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)willPerformNonAnimatedTransitionToInterfaceOrientation:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
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

        v9 = [*(*(&v10 + 1) + 8 * v8) overlay];
        if (objc_opt_respondsToSelector())
        {
          [v9 willPerformNonAnimatedTransitionToInterfaceOrientation:a3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)_itemToZOrderIndexDictionaryForAppLayout:(id)a3 layoutAttributesMap:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = SBDisplayItemDescendingInteractionTimeComparator(v6);
  v22 = v5;
  v9 = [v5 allItems];
  v21 = v8;
  v10 = [v9 sortedArrayUsingComparator:v8];

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
        v18 = [v6 objectForKey:v17];
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

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  v135 = *MEMORY[0x277D85DE8];
  v97 = a3;
  v98 = a4;
  if ([(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self areLiveContentOverlayUpdatesSuspended])
  {
    goto LABEL_87;
  }

  v6 = [v98 applicationTransitionContext];
  v88 = [v6 request];
  v7 = [v6 previousLayoutState];
  v105 = v6;
  v89 = [v6 layoutState];
  v8 = [v7 appLayout];
  v90 = v7;
  v9 = [v7 floatingAppLayout];
  v87 = v8;
  v10 = [v8 leafAppLayouts];
  v11 = v10;
  if (v9)
  {
    v12 = [v9 leafAppLayouts];
    v13 = v12;
    if (v11)
    {
      v14 = [v11 arrayByAddingObjectsFromArray:v12];

      v84 = v14;
    }

    else
    {
      v84 = v12;
    }
  }

  else
  {
    v84 = v10;
  }

  [v89 invalidateAppLayout];
  [v89 invalidateFloatingAppLayout];
  v15 = [v89 appLayout];
  v107 = [v89 layoutAttributesMap];
  v16 = [v89 floatingAppLayout];
  v108 = v15;
  v17 = [v15 leafAppLayouts];
  v86 = v9;
  if (v16)
  {
    v18 = [v16 leafAppLayouts];
    v19 = v18;
    if (v17)
    {
      v20 = [v17 arrayByAddingObjectsFromArray:v18];

      v17 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  v21 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self switcherController];
  v22 = [v21 windowManagementContext];
  v23 = [v22 isChamoisOrFlexibleWindowing];

  if (v23)
  {
    v95 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _itemToZOrderIndexDictionaryForAppLayout:v108 layoutAttributesMap:v107];
  }

  else
  {
    v95 = 0;
  }

  v24 = self;
  v92 = [v88 source];
  v109 = self;
  v94 = v17;
  v96 = v16;
  if (![v105 animationDisabled])
  {
    v124 = 0uLL;
    v125 = 0uLL;
    v122 = 0uLL;
    v123 = 0uLL;
    v91 = v17;
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
          v41 = [v39 allItems];
          v42 = [v41 firstObject];
          v40 = [v108 layoutRoleForItem:v42];
        }

        v43 = [(NSMutableDictionary *)v24->_appLayoutToLiveContentOverlayContext objectForKey:v39];
        v44 = [v43 overlay];
        v45 = [v39 itemForLayoutRole:1];
        if (v40 == 3)
        {
          v46 = 0;
          v47 = v96;
        }

        else
        {
          v48 = [v95 objectForKey:v45];
          v46 = [v48 integerValue];

          v47 = v108;
        }

        v49 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)v24 _calculateSBSDisplayLayoutElementRoleForDisplayItem:v45 inAppLayout:v47 zOrderIndex:v46 layoutAttributesMap:v107];
        v102 = v49;
        v104 = v46;
        if (v44)
        {
          v50 = v49;
          if ([v43 overlayType] != 3)
          {
            if ([v43 overlayType] == 2)
            {
              v63 = [v89 elementWithRole:v40];
              v64 = [v63 workspaceEntity];
              v65 = [v64 isAppClipPlaceholderEntity];

              v46 = v104;
              v50 = v102;
              if (v65)
              {
                goto LABEL_67;
              }
            }

            else if ([v43 overlayType] != 4)
            {
              goto LABEL_67;
            }
          }

          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)v24 _removeOverlayForAppLayout:v39 animated:0];
        }

        obja = v40;
        v51 = [v39 itemForLayoutRole:1];
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v52 = [(NSMutableDictionary *)v24->_appLayoutToLiveContentOverlayContext allKeys];
        v53 = [v52 countByEnumeratingWithState:&v118 objects:v132 count:16];
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
              objc_enumerationMutation(v52);
            }

            v57 = *(*(&v118 + 1) + 8 * v56);
            if ([v57 containsItem:v51])
            {
              break;
            }

            if (v54 == ++v56)
            {
              v54 = [v52 countByEnumeratingWithState:&v118 objects:v132 count:16];
              if (v54)
              {
                goto LABEL_46;
              }

              goto LABEL_52;
            }
          }

          v58 = v57;
          v24 = v109;
          v59 = [(NSMutableDictionary *)v109->_appLayoutToLiveContentOverlayContext objectForKey:v58];
          v44 = [v59 overlay];

          if (!v44)
          {
            goto LABEL_55;
          }

          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)v109 _moveExistingOverlayForAppLayout:v58 toAppLayout:v39];

          v40 = obja;
          v50 = v102;
          v46 = v104;
LABEL_67:
          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)v24 _configureLiveContentOverlayView:v44 forTransitionContext:v105 layoutRole:v40 sbsDisplayLayoutRole:v50 zOrderIndex:v46];
LABEL_68:

          goto LABEL_69;
        }

LABEL_52:

        v58 = 0;
        v24 = v109;
LABEL_55:

        if (![(SBSwitcherCoordinatedLayoutStateTransitionContext *)v24->_currentCoordinatedLayoutStateTransitionContext hasTransitioningDisplayItemsForAppLayout:v39])
        {
          v61 = [v90 unlockedEnvironmentMode] == 2 || v92 == 11;
          v62 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)v24 _shouldAnimateAddingLiveContentOverlayForTransitionContext:v105 leafAppLayout:v39];
          v44 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)v24 _newLiveContentOverlayForApplicationContext:v105 layoutRole:obja sbsDisplayLayoutRole:v102 zOrderIndex:v104];
          [v44 setStatusBarHidden:v61 nubViewHidden:v61 animator:0];
          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)v24 _addOverlay:v44 forAppLayout:v39 animated:v62];
          goto LABEL_68;
        }

LABEL_69:
      }

      v99 = [v91 countByEnumeratingWithState:&v122 objects:v133 count:16];
      if (!v99)
      {
LABEL_71:

        [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)v24 _updateAlwaysLiveSceneContentOverlays];
        [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)v24 _updatePortaledSceneLiveContentOverlays];
        [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)v24 _updateFullScreenDisplayLayoutElementsForActiveAppLayouts:v91 inAppLayout:v108 layoutAttributesMap:v107];
        v17 = v94;
        goto LABEL_72;
      }
    }
  }

  v128 = 0uLL;
  v129 = 0uLL;
  v126 = 0uLL;
  v127 = 0uLL;
  obj = v17;
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
          v28 = [v26 allItems];
          v29 = [v28 firstObject];
          v27 = [v108 layoutRoleForItem:v29];
        }

        v30 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v26];
        v31 = [v30 overlay];
        v32 = [v26 itemForLayoutRole:1];
        if (v27 == 3)
        {
          v33 = 0;
          v34 = v96;
        }

        else
        {
          v35 = [v95 objectForKey:v32];
          v33 = [v35 integerValue];

          v34 = v108;
        }

        v36 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _calculateSBSDisplayLayoutElementRoleForDisplayItem:v32 inAppLayout:v34 zOrderIndex:v33 layoutAttributesMap:v107];
        if (v31)
        {
          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _configureLiveContentOverlayView:v31 forTransitionContext:v105 layoutRole:v27 sbsDisplayLayoutRole:v36 zOrderIndex:v33];
        }

        else
        {
          v37 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _newLiveContentOverlayForApplicationContext:v105 layoutRole:v27 sbsDisplayLayoutRole:v36 zOrderIndex:v33];
          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _addOverlay:v37 forAppLayout:v26 animated:0];
          [v37 setStatusBarHidden:v92 == 11 nubViewHidden:v92 == 11 animator:0];
        }

        v17 = v94;
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
        if (([v17 containsObject:v71] & 1) == 0)
        {
          v72 = [(NSMutableDictionary *)v109->_appLayoutToLiveContentOverlayContext objectForKey:v71];
          v73 = v72;
          if (v72 && [v72 overlayType] == 1)
          {
            v74 = [v73 overlay];
            [v74 setAsyncRenderingDisabled:1];
            v75 = [v74 deviceApplicationSceneViewController];
            if ([v75 displayMode] == 4)
            {
              [v75 setDisplayMode:3 animationFactory:0 completion:0];
            }
          }
        }
      }

      v68 = [v66 countByEnumeratingWithState:&v114 objects:v131 count:16];
    }

    while (v68);
  }

  self = v109;
LABEL_87:
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v76 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
  v77 = [v76 countByEnumeratingWithState:&v110 objects:v130 count:16];
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
          objc_enumerationMutation(v76);
        }

        v81 = *(*(&v110 + 1) + 8 * m);
        if ([v81 overlayType] == 1)
        {
          v82 = [v81 overlay];
          v83 = [v82 contentViewController];

          if (objc_opt_respondsToSelector())
          {
            [v83 layoutStateTransitionCoordinator:v97 transitionDidBeginWithTransitionContext:v98];
          }
        }
      }

      v78 = [v76 countByEnumeratingWithState:&v110 objects:v130 count:16];
    }

    while (v78);
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionWillEndWithTransitionContext:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v6 = a4;
  v29 = [v6 applicationTransitionContext];
  v7 = [v29 layoutState];
  v8 = [v7 unlockedEnvironmentMode];
  v28 = v7;
  IsValid = SBPeekConfigurationIsValid([v7 peekConfiguration]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = self;
  v10 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    v31 = v8 != 1 || IsValid;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        if ([v15 overlayType] == 1)
        {
          if (!v31)
          {
            v16 = [v15 overlay];
            v17 = objc_opt_class();
            v18 = v16;
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

            v21 = [v20 deviceApplicationSceneViewController];

            if ([v21 displayMode] == 4)
            {
              [v21 setDisplayMode:0 animationFactory:0 completion:0];
            }
          }

          v22 = [v15 overlay];
          v23 = [v22 contentViewController];

          if (objc_opt_respondsToSelector())
          {
            [v23 layoutStateTransitionCoordinator:v30 transitionWillEndWithTransitionContext:v6];
          }

          v24 = [v15 overlay];
          v25 = objc_opt_class();
          v26 = [v24 deviceApplicationSceneViewController];
          v27 = SBSafeCast(v25, v26);

          [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)v32 _presentTransientErrorMessageIfNeededForLayoutStateTransitionContext:v6 medusaViewController:v27];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v12);
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v107 = *MEMORY[0x277D85DE8];
  v86 = a3;
  v87 = a4;
  if (![(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self areLiveContentOverlayUpdatesSuspended])
  {
    v6 = [v87 applicationTransitionContext];
    v7 = [v6 previousLayoutState];
    v8 = [v6 layoutState];
    v9 = [v87 error];

    if (v9)
    {
      v10 = v7;

      v8 = v10;
    }

    v11 = [v7 appLayout];
    v12 = [v7 floatingAppLayout];
    v76 = v11;
    v13 = [v11 leafAppLayouts];
    if (v12)
    {
      v14 = [v12 leafAppLayouts];
      v15 = v14;
      if (v13)
      {
        v16 = [v13 arrayByAddingObjectsFromArray:v14];

        v13 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    [v8 invalidateAppLayout];
    [v8 invalidateFloatingAppLayout];
    v17 = [v8 appLayout];
    v83 = [v8 layoutAttributesMap];
    v18 = [v8 floatingAppLayout];
    v84 = v17;
    v19 = [v17 leafAppLayouts];
    v20 = v19;
    v80 = v18;
    if (v18)
    {
      v21 = [v18 leafAppLayouts];
      v22 = v21;
      if (v20)
      {
        v23 = [v20 arrayByAddingObjectsFromArray:v21];

        v77 = v23;
      }

      else
      {
        v77 = v21;
      }
    }

    else
    {
      v77 = v19;
    }

    v73 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self switcherController];
    v24 = [v73 windowManagementContext];
    v25 = [v24 isChamoisOrFlexibleWindowing];

    v75 = v12;
    if (v25)
    {
      v79 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _itemToZOrderIndexDictionaryForAppLayout:v84 layoutAttributesMap:v83];
    }

    else
    {
      v79 = 0;
    }

    v74 = v13;
    v26 = v77;
    v82 = v6;
    if ((BSEqualObjects() & 1) == 0 && v77)
    {
      v78 = v8;
      v72 = v7;
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
            v30 = [v28 allItems];
            v31 = [v30 firstObject];
            v29 = [v84 layoutRoleForItem:v31];
          }

          v32 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v28];
          v33 = [v32 overlay];
          if (!v33)
          {
            goto LABEL_29;
          }

          v34 = v33;
          if ([v32 overlayType] != 3)
          {
            if ([v32 overlayType] == 2)
            {
              v41 = [v78 elementWithRole:v29];
              v42 = [v41 workspaceEntity];
              v43 = [v42 isAppClipPlaceholderEntity];

              if (v43)
              {
                v6 = v82;
                goto LABEL_33;
              }

              [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _removeOverlayForAppLayout:v28 animated:0];
              v6 = v82;
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
          v35 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _shouldAnimateAddingLiveContentOverlayForTransitionContext:v6 leafAppLayout:v28];
          v36 = [v28 itemForLayoutRole:1];
          if (v29 == 3)
          {
            v37 = 0;
            v38 = v80;
          }

          else
          {
            v39 = [v79 objectForKey:v36];
            v37 = [v39 integerValue];

            v6 = v82;
            v38 = v84;
          }

          v40 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _newLiveContentOverlayForApplicationContext:v6 layoutRole:v29 sbsDisplayLayoutRole:[(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _calculateSBSDisplayLayoutElementRoleForDisplayItem:v36 inAppLayout:v38 zOrderIndex:v37 layoutAttributesMap:v83] zOrderIndex:v37];
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

          v7 = v72;
          v26 = v77;
          v8 = v78;
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
    [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updateFullScreenDisplayLayoutElementsForActiveAppLayouts:v47 inAppLayout:v84 layoutAttributesMap:v83];
    v54 = [v8 appLayout];
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    v56 = [WeakRetained displayItemLayoutAttributesProvider];
    v57 = v8;
    v58 = v56;
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

    v63 = [v56 zOrderedItemsInAppLayout:v54 orientation:{v62, v72}];

    if (SBLayoutSupportsManyForegroundWindows())
    {
      [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updateSceneRelevancyWithZOrderedDisplayItems:v63 inAppLayout:v54 toLayoutState:v57];
    }
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v64 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
  v65 = [v64 countByEnumeratingWithState:&v89 objects:v104 count:16];
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
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v89 + 1) + 8 * j);
        if ([v69 overlayType] == 1)
        {
          v70 = [v69 overlay];
          v71 = [v70 contentViewController];

          if (objc_opt_respondsToSelector())
          {
            [v71 layoutStateTransitionCoordinator:v86 transitionDidEndWithTransitionContext:v87];
          }
        }
      }

      v66 = [v64 countByEnumeratingWithState:&v89 objects:v104 count:16];
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

- (void)noteKeyboardFocusDidChangeToSceneID:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self setKeyboardFocusSceneID:v4];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v5 = [SBApp systemUIScenesCoordinator];
  v6 = [v5 overlayUISceneController];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __89__SBFullScreenSwitcherLiveContentOverlayCoordinator_noteKeyboardFocusDidChangeToSceneID___block_invoke;
  v25[3] = &unk_2783B0A20;
  v7 = v4;
  v26 = v7;
  v27 = &v28;
  [v6 enumerateScenesWithBlock:v25];

  if ((v29[3] & 1) == 0)
  {
    [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self setSceneIDForTargetOfKeyboardShortcuts:v7];
    v8 = [MEMORY[0x277D0ADC0] identityForIdentifier:v7];
    v9 = objc_opt_class();
    v10 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sceneManager];
    v11 = [v10 existingSceneHandleForSceneIdentity:v8];
    v12 = SBSafeCast(v9, v11);

    v13 = [v12 application];
    v14 = [v13 bundleIdentifier];
    [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self setBundleIDForTargetOfKeyboardShortcuts:v14];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allValues];
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v32 count:16];
  if (v16)
  {
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v21 + 1) + 8 * i);
        if ([v19 overlayType] == 1)
        {
          v20 = [v19 overlay];
          [v20 noteKeyboardFocusDidChangeToSceneID:v7];
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v21 objects:v32 count:16];
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

- (void)prepareForCoordinatedLayoutStateTransitionWithContext:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v6 = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)v4 fromSwitcherController];
  v7 = [WeakRetained isEqual:v6];

  if (v7)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)v4 displayItems];
    v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = v8;
    v10 = *v36;
    v30 = v4;
    v31 = self;
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
        v13 = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)v4 fromAppLayout];
        v14 = [v13 leafAppLayoutForItem:v12];

        v15 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v14];
        if ([v15 overlayType] == 1)
        {
          v34 = [v15 overlay];
          v16 = [v34 deviceApplicationSceneViewController];
          v17 = [v16 sceneHandle];
          v18 = +[SBSceneManagerCoordinator sharedInstance];
          v19 = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)v4 toSwitcherController];
          v20 = [v19 displayIdentity];
          v21 = [v18 sceneManagerForDisplayIdentity:v20];

          v22 = [v17 sceneManager];
          v23 = [v17 sceneIfExists];
          v24 = [v23 identity];
          if (v24)
          {
            v25 = v24;
            v26 = BSEqualObjects();

            v10 = v29;
            if ((v26 & 1) == 0)
            {
              v23 = [v17 sceneIfExists];
              v27 = [v23 identity];
              [v22 transferOwnershipOfSceneWithIdentity:v27 toSceneManager:v21];

              goto LABEL_12;
            }
          }

          else
          {
            v10 = v29;
LABEL_12:
          }

          self = v31;
          if ([v16 displayMode] == 4)
          {
            [v16 setDisplayMode:3 animationFactory:0 completion:0];
          }

          v4 = v30;
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
  self->_currentCoordinatedLayoutStateTransitionContext = v4;
}

- (void)cleanUpAfterCoordinatedLayoutStateTransitionWithContext:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v6 = [v4 fromSwitcherController];
  v7 = [WeakRetained isEqual:v6];

  if (v7)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v4 displayItems];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          v14 = [v4 fromAppLayout];
          v15 = [v14 leafAppLayoutForItem:v13];

          v16 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v15];
          if ([v16 overlayType])
          {
            [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _removeOverlayForAppLayout:v15 animated:0];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v3 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self sceneIDForTargetOfKeyboardShortcuts];
  v4 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self appLayoutForSceneIdentifier:v3];

  return v4;
}

- (id)appLayoutForSceneIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a3;
  if (v17)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allKeys];
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v9];
          if ([v10 overlayType] == 1)
          {
            v11 = [v9 allItems];
            v12 = [v11 firstObject];

            v13 = [v12 uniqueIdentifier];
            v14 = [v13 isEqualToString:v17];

            if (v14)
            {
              v15 = v9;

              goto LABEL_15;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)appLayoutWillBecomeVisible:(id)a3
{
  v16 = a3;
  v4 = [v16 allItems];
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    if ([v5 type])
    {
    }

    else
    {
      v6 = MEMORY[0x277D0ADC0];
      v7 = [v5 uniqueIdentifier];
      v8 = [v6 identityForIdentifier:v7];

      v9 = objc_opt_class();
      v10 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sceneManager];
      v11 = [v10 existingSceneHandleForSceneIdentity:v8];
      v12 = SBSafeCast(v9, v11);

      LODWORD(v10) = [v12 shouldAlwaysDisplayLiveContent];
      if (v10 && ([(NSMutableArray *)self->_visibleAlwaysLiveAppLayouts containsObject:v16]& 1) == 0)
      {
        visibleAlwaysLiveAppLayouts = self->_visibleAlwaysLiveAppLayouts;
        if (!visibleAlwaysLiveAppLayouts)
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v15 = self->_visibleAlwaysLiveAppLayouts;
          self->_visibleAlwaysLiveAppLayouts = v14;

          visibleAlwaysLiveAppLayouts = self->_visibleAlwaysLiveAppLayouts;
        }

        [(NSMutableArray *)visibleAlwaysLiveAppLayouts addObject:v16];
        [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updateAlwaysLiveSceneContentOverlays];
      }
    }
  }

  [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updatePortaledSceneLiveContentOverlays];
}

- (void)appLayoutDidBecomeHidden:(id)a3
{
  v5 = a3;
  if ([(NSMutableArray *)self->_visibleAlwaysLiveAppLayouts containsObject:?])
  {
    [(NSMutableArray *)self->_visibleAlwaysLiveAppLayouts removeObject:v5];
    if (![(NSMutableArray *)self->_visibleAlwaysLiveAppLayouts count])
    {
      visibleAlwaysLiveAppLayouts = self->_visibleAlwaysLiveAppLayouts;
      self->_visibleAlwaysLiveAppLayouts = 0;
    }

    [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updateAlwaysLiveSceneContentOverlays];
  }

  [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updatePortaledSceneLiveContentOverlays];
}

- (void)itemContainerForAppLayout:(id)a3 willBeReusedForAppLayout:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 itemForLayoutRole:1];
  v8 = [v6 itemForLayoutRole:1];
  if ([v7 isEqual:v8])
  {
    [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _moveExistingOverlayForAppLayout:v9 toAppLayout:v6];
  }
}

- (BOOL)wantsEdgeProtectForHomeGestureForAppLayout:(id)a3
{
  v4 = [a3 itemForLayoutRole:1];
  if ([v4 type])
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x277D0ADC0];
    v7 = [v4 uniqueIdentifier];
    v8 = [v6 identityForIdentifier:v7];

    v9 = objc_opt_class();
    v10 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sceneManager];
    v11 = [v10 existingSceneHandleForSceneIdentity:v8];
    v12 = SBSafeCast(v9, v11);

    v5 = [v12 isEdgeProtectEnabledForHomeGesture];
  }

  return v5;
}

- (BOOL)wantsHomeAffordanceAutoHideForAppLayout:(id)a3
{
  v4 = [a3 itemForLayoutRole:1];
  if ([v4 type])
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x277D0ADC0];
    v7 = [v4 uniqueIdentifier];
    v8 = [v6 identityForIdentifier:v7];

    v9 = objc_opt_class();
    v10 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sceneManager];
    v11 = [v10 existingSceneHandleForSceneIdentity:v8];
    v12 = SBSafeCast(v9, v11);

    v5 = [v12 isAutoHideEnabledForHomeAffordance];
  }

  return v5;
}

- (void)_updateSceneRelevancyWithZOrderedDisplayItems:(id)a3 inAppLayout:(id)a4 toLayoutState:(id)a5
{
  v104 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v81 = a4;
  v78 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v9 = [WeakRetained sceneRelevancyManager];
  v10 = [v8 count];
  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v10];
  v12 = off_2783A1000;
  v79 = v9;
  v80 = v8;
  v86 = v11;
  if (v10 >= 1)
  {
    v13 = 0;
    v14 = 0;
    v84 = v10;
    do
    {
      v15 = v13;
      v16 = [v8 objectAtIndex:v14];
      v17 = [v16 uniqueIdentifier];
      v18 = [v9 scoreForSceneIdentifier:v17];

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
      v9 = v79;
      v8 = v80;
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
    v29 = [(NSMutableDictionary *)displayItemsToWindowRelevancyAssertions allKeys];
    v30 = [v11 allKeys];
    v31 = [v29 bs_differenceWithArray:v30];

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
    v40 = [v11 allKeys];
    v41 = [v39 dictionaryWithCapacity:{objc_msgSend(v40, "count")}];
    v42 = self->_displayItemsToWindowRelevancyAssertions;
    self->_displayItemsToWindowRelevancyAssertions = v41;
  }

  v85 = [(__objc2_class *)v12[372] defaultResult];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = [v8 bs_reverse];
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
        v49 = [v47 uniqueIdentifier];
        v50 = [v48 identityForIdentifier:v49];

        v51 = objc_opt_class();
        v52 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sceneManager];
        v53 = [v52 existingSceneHandleForSceneIdentity:v50];
        v54 = SBSafeCast(v51, v53);

        v55 = [(NSMutableDictionary *)self->_displayItemsToWindowRelevancyAssertions objectForKey:v47];
        v56 = [v11 objectForKey:v47];
        v57 = v56;
        if (v56 && ([v56 hasSameAssertions:v85] & 1) == 0 && v54)
        {
          if (v55)
          {
            [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _updateSceneRelevancyAssertionsForAppLayout:v81 assertionTypesToCurrentAssertions:v55 applicationSceneHandle:v54 sceneRelevancyResult:v57 reason:@"set relevancy result"];
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
  v59 = [v81 leafAppLayouts];
  v60 = [v59 countByEnumeratingWithState:&v89 objects:v101 count:16];
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
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v89 + 1) + 8 * k);
        v65 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v64];
        v66 = [v65 overlay];
        v67 = [v64 allItems];
        v68 = [v67 firstObject];

        v11 = v86;
        v69 = [v86 objectForKey:v68];
        [v66 setDisableFlattening:{objc_msgSend(v69, "disableFlattening")}];
        if ([v69 resignActive])
        {
          v70 = [v68 uniqueIdentifier];
          [obja addObject:v70];

          v11 = v86;
        }
      }

      v61 = [v59 countByEnumeratingWithState:&v89 objects:v101 count:16];
    }

    while (v61);
  }

  if ((BSEqualSets() & 1) == 0)
  {
    if ([obja count])
    {
      if (SBPeekConfigurationIsValid([v78 peekConfiguration]))
      {
        v71 = 0;
      }

      else
      {
        v71 = 19;
      }

      v72 = +[SBSceneManagerCoordinator sharedInstance];
      v73 = [v72 sceneDeactivationManager];
      v74 = [v73 newAssertionWithReason:v71];

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

- (id)_sceneDeactivationPredicateMatchingAppLayouts:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __99__SBFullScreenSwitcherLiveContentOverlayCoordinator__sceneDeactivationPredicateMatchingAppLayouts___block_invoke;
  v7[3] = &unk_2783ADD00;
  v8 = v3;
  v4 = v3;
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

- (void)_presentTransientErrorMessageIfNeededForLayoutStateTransitionContext:(id)a3 medusaViewController:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v6 _sbWindowScene];
  v8 = [v7 switcherController];

  v9 = [v8 windowManagementContext];
  v10 = [v9 baseStyle];

  if (v10)
  {
    if ([(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _shouldShowSplitViewNotSupportedMessageForLayoutStateTransitionContext:v12 medusaViewController:v6])
    {
      v11 = 2;
    }

    else
    {
      if (![(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _shouldShowMultipleWindowsNotSupportedMessageForLayoutStateTransitionContext:v12 medusaViewController:v6])
      {
        goto LABEL_7;
      }

      v11 = 3;
    }

    [v8 _presentMedusaBanner:v11 fireInterval:0.0 dismissInterval:1.5];
  }

LABEL_7:
}

- (BOOL)_shouldShowSplitViewNotSupportedMessageForLayoutStateTransitionContext:(id)a3 medusaViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 sceneHandle];
  v8 = [v7 application];
  v9 = [v6 _sbWindowScene];

  v10 = [v9 switcherController];

  v11 = [v10 windowManagementContext];
  v12 = [v10 displayIdentity];
  v13 = [v8 supportsMultiWindowLayoutsForSwitcherWindowManagementContext:v11 displayIdentity:v12];

  if ((v13 & 1) == 0)
  {
    v15 = [v5 fromLayoutState];
    v16 = objc_opt_class();
    v17 = v15;
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

    v20 = [v5 toLayoutState];
    v21 = objc_opt_class();
    v22 = v20;
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

    v25 = [v7 lastActivationSource];
    if (SBPeekConfigurationIsValid([v19 peekConfiguration]) && !SBPeekConfigurationIsValid(objc_msgSend(v24, "peekConfiguration")))
    {
      v26 = [v19 appLayout];
      v27 = [v19 floatingAppLayout];
      v29 = [v24 appLayout];
      v14 = [v24 spaceConfiguration] == 1 && v27 == 0 && v29 != v26;
    }

    else
    {
      if (v25 != 27)
      {
        v14 = 0;
LABEL_32:

        goto LABEL_33;
      }

      v26 = [v19 appLayout];
      v27 = [v24 appLayout];
      if ([v27 isCenterOverFull])
      {
        v28 = 0;
      }

      else
      {
        v32 = [v24 floatingAppLayout];
        v28 = v32 == 0;
      }

      v14 = v27 != v26 && v28;
    }

    goto LABEL_32;
  }

  v14 = 0;
LABEL_33:

  return v14;
}

- (BOOL)_shouldShowMultipleWindowsNotSupportedMessageForLayoutStateTransitionContext:(id)a3 medusaViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self switcherController];
  v9 = [v8 windowManagementContext];
  v10 = [v9 isFlexibleWindowingEnabled];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = [v7 sceneHandle];
    v13 = [v12 application];
    v14 = [v13 info];
    v15 = [v14 supportsMultiwindow];

    if (v15)
    {
      v11 = 0;
    }

    else
    {
      v16 = [v6 fromLayoutState];
      v17 = objc_opt_class();
      v18 = v16;
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

      v21 = [v6 toLayoutState];
      v22 = objc_opt_class();
      v23 = v21;
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
        v36 = [v12 lastActivationSource];
        v37 = [v20 appLayout];
        v26 = [v20 floatingAppLayout];
        v27 = [v25 appLayout];
        v28 = [v25 floatingAppLayout];
        v35 = v26;
        if (v26)
        {
          v34 = v28;
          v33 = [v27 leafAppLayoutForRole:{objc_msgSend(v7, "layoutRole")}];
          v32 = [v26 leafAppLayoutForRole:1];
          v29 = [v32 appLayoutByModifyingEnvironment:{objc_msgSend(v27, "environment")}];
          LOBYTE(v26) = v33 == v29 && v34 == 0;

          v28 = v34;
        }

        v11 = (v36 != 3) & ((v27 == v37) | v26);
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
  v3 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allKeys];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _removeOverlayForAppLayout:*(*(&v17 + 1) + 8 * v7++) animated:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(NSMutableDictionary *)self->_displayItemsToWindowRelevancyAssertions allValues];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _invalidateAssertions:*(*(&v13 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }

  [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext removeAllObjects];
  [(NSMutableArray *)self->_visibleAlwaysLiveAppLayouts removeAllObjects];
}

- (void)fullScreenSwitcherSceneLiveContentOverlay:(id)a3 tappedStatusBar:(id)a4 tapActionType:(int64_t)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v9 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allKeys];
  v10 = [v9 countByEnumeratingWithState:&v54 objects:v59 count:16];
  v49 = v8;
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v54 + 1) + 8 * i);
        if ([v14 environment] == 3)
        {
          v15 = v14;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v54 objects:v59 count:16];
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
  v16 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allKeys];
  v17 = [v16 countByEnumeratingWithState:&v50 objects:v58 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v50 + 1) + 8 * j);
        v22 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v21];
        v23 = [v22 overlay];

        if (v23 == v7)
        {
          v17 = v7;
          v24 = v21;

          goto LABEL_21;
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v50 objects:v58 count:16];
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
    v26 = [v27 uniqueIdentifier];
  }

  else
  {
    v25 = [v15 itemForLayoutRole:1];
    v26 = [v25 uniqueIdentifier];

    v27 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v15];
    v28 = [v27 overlay];

    v17 = v28;
  }

  v29 = [MEMORY[0x277D0ADC0] identityForIdentifier:v26];
  v30 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sceneManager];
  v31 = [v30 existingSceneHandleForSceneIdentity:v29];
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

  v36 = [v35 sceneIfExists];

  if (v36)
  {
    v47 = [v17 contentViewController];
    v37 = [v47 view];
    [v49 locationInView:v37];
    v39 = v38;

    v40 = [objc_alloc(MEMORY[0x277D75AB0]) initWithType:a5 xPosition:v39];
    [MEMORY[0x277CBEB98] setWithObject:v40];
    v41 = v29;
    v42 = v26;
    v43 = v17;
    v44 = v24;
    v46 = v45 = v15;
    [v36 sendActions:v46];

    v15 = v45;
    v24 = v44;
    v17 = v43;
    v26 = v42;
    v29 = v41;
  }
}

- (void)fullScreenSwitcherSceneLiveContentOverlay:(id)a3 doubleTappedStatusBar:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v7 = [WeakRetained contentViewController];
  v8 = objc_opt_class();
  v9 = v7;
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
  v12 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext allKeys];
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v17];
        v19 = [v18 overlay];

        if (v19 == v5)
        {
          v20 = v17;

          goto LABEL_16;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (BOOL)_shouldAnimateAddingLiveContentOverlayForTransitionContext:(id)a3 leafAppLayout:(id)a4
{
  v6 = a3;
  if (([(NSMutableArray *)self->_visibleAlwaysLiveAppLayouts containsObject:a4]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v6 previousLayoutState];
    v9 = [v6 layoutState];
    v10 = [v8 unlockedEnvironmentMode];
    if (((v10 & 0xFFFFFFFFFFFFFFFELL) == 2 || SBPeekConfigurationIsValid([v8 peekConfiguration])) && -[SBFullScreenSwitcherLiveContentOverlayCoordinator _layoutStateContainsElementBlockedForScreenTimeExpiration:](self, "_layoutStateContainsElementBlockedForScreenTimeExpiration:", v9) || (v11 = objc_msgSend(v8, "interfaceOrientation"), v11 != objc_msgSend(v9, "interfaceOrientation")))
    {
      v7 = 1;
    }

    else
    {
      v12 = [v6 request];
      v13 = [v12 source];

      v7 = 1;
      if (v10 != 2 && v13 != 11)
      {
        v14 = [v9 unlockedEnvironmentMode];
        v7 = v10 == 3 && v14 == 3;
      }
    }
  }

  return v7;
}

- (BOOL)_layoutStateContainsElementBlockedForScreenTimeExpiration:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a3 elements];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if (SBLayoutRoleIsValid([v7 layoutRole]))
        {
          v8 = [v7 workspaceEntity];
          v9 = [v8 applicationSceneEntity];
          v10 = [v9 application];

          v11 = [v10 info];
          LOBYTE(v9) = [v11 isBlockedForScreenTimeExpiration];

          if (v9)
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_updateFullScreenDisplayLayoutElementsForActiveAppLayouts:(id)a3 inAppLayout:(id)a4 layoutAttributesMap:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v38 = self;
  v11 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self switcherController];
  v12 = [v11 windowManagementContext];
  v13 = [v12 isFlexibleWindowingEnabled];

  v32 = v10;
  v33 = v9;
  if (v13)
  {
    v14 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)v38 _itemToZOrderIndexDictionaryForAppLayout:v9 layoutAttributesMap:v10];
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v31 = v11;
  v35 = [v11 sceneRelevancyManager];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(NSMutableDictionary *)v38->_appLayoutToLiveContentOverlayContext allKeys];
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
        v21 = [(NSMutableDictionary *)v38->_appLayoutToLiveContentOverlayContext objectForKey:v20];
        v22 = [v21 overlay];
        v23 = [v8 containsObject:v20];
        if (v15)
        {
          v24 = [v20 itemForLayoutRole:1];
          [v14 objectForKey:v24];
          v25 = v18;
          v26 = v15;
          v28 = v27 = v8;
          v29 = [v28 integerValue];

          v8 = v27;
          v15 = v26;
          v18 = v25;
          v17 = v36;

          v30 = v29 > [v35 maximumNumberOfVisibleScenesOnStage];
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

        [v22 setDisplayLayoutElementActive:v23];

        ++v19;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v17);
  }
}

- (int64_t)_calculateSBSDisplayLayoutElementRoleForDisplayItem:(id)a3 inAppLayout:(id)a4 zOrderIndex:(int64_t)a5 layoutAttributesMap:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a3;
  v12 = [v9 layoutRoleForItem:v11];
  v13 = [v10 objectForKey:v11];

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

  if (a5 < 1)
  {
    if ([v9 environment] != 2)
    {
      v14 = SBSDisplayLayoutRoleForLayoutRole(v12);
      goto LABEL_9;
    }

    goto LABEL_2;
  }

  if (a5 >= 5)
  {
    v14 = 11;
  }

  else
  {
    v14 = qword_21F8A62F0[a5 - 1];
  }

LABEL_9:

  return v14;
}

- (id)_newLiveContentOverlayForApplicationContext:(id)a3 layoutRole:(int64_t)a4 sbsDisplayLayoutRole:(int64_t)a5 zOrderIndex:(int64_t)a6
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [v10 layoutState];
  v13 = [v12 elementWithRole:a4];
  v14 = [v13 workspaceEntity];

  if ([v14 isAppClipPlaceholderEntity])
  {
    v15 = v14;
    v16 = [SBFluidSwitcherAppClipLiveContentOverlay alloc];
    v17 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _sbWindowScene];
    v18 = [(SBFluidSwitcherAppClipLiveContentOverlay *)v16 initWithPlaceholderEntity:v15 windowScene:v17];

    v19 = [WeakRetained parentViewControllerForContentOverlay];
    v20 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)v18 contentViewController];
    [v19 addChildViewController:v20];
    [v20 bs_beginAppearanceTransition:1 animated:0];
    [v20 didMoveToParentViewController:v19];
    [v20 bs_endAppearanceTransition];
  }

  else
  {
    v18 = objc_alloc_init(SBFullScreenSwitcherSceneLiveContentOverlay);
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)v18 setStatusBarActionDelegate:self];
  }

  [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _configureLiveContentOverlayView:v18 forTransitionContext:v10 layoutRole:a4 sbsDisplayLayoutRole:a5 zOrderIndex:a6];
  if ([(SBFullScreenSwitcherSceneLiveContentOverlay *)v18 overlayType]== 1)
  {
    v21 = [WeakRetained parentViewControllerForContentOverlay];
    v22 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)v18 contentViewController];
    v23 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)v18 orientationWrapperView];
    [v21 addChildViewController:v22];
    [v22 bs_beginAppearanceTransition:1 animated:0];
    v24 = [v22 view];
    [v23 addContentView:v24];

    [v22 didMoveToParentViewController:v21];
    [v22 bs_endAppearanceTransition];
  }

  return v18;
}

- (void)_configureLiveContentOverlayView:(id)a3 forTransitionContext:(id)a4 layoutRole:(int64_t)a5 sbsDisplayLayoutRole:(int64_t)a6 zOrderIndex:(int64_t)a7
{
  v51 = a3;
  v11 = a4;
  v12 = [v11 entityForLayoutRole:a5];
  v13 = [v12 deviceApplicationSceneEntity];
  v14 = [v13 sceneHandle];
  [v11 frameForApplicationSceneEntity:v12];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v11 layoutState];

  v24 = objc_opt_class();
  v25 = v23;
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

  v48 = [v27 spaceConfiguration];
  v47 = [v27 floatingConfiguration];
  v28 = [v27 interfaceOrientationForLayoutRole:a5];
  if (objc_opt_respondsToSelector())
  {
    [v51 setContentReferenceSize:v28 interfaceOrientation:{v20, v22}];
  }

  v29 = [v14 application];
  v50 = v14;
  if ([v29 classicAppPhoneAppRunningOnPad] && objc_msgSend(v14, "_supportsMixedOrientation"))
  {
    v30 = (v28 - 3) >= 2;
    v31 = v28;
    v32 = v13;
    v33 = !v30;
    v46 = v33 ^ (([v27 interfaceOrientation] - 3) < 2);
    v13 = v32;
    v28 = v31;
  }

  else
  {
    v46 = 0;
  }

  v34 = [v27 elementWithRole:a5];
  v35 = [v27 layoutAttributesForElement:v34];
  v36 = a5;
  v37 = [(SBHomeScreenConfigurationServer *)v35 connections];
  if ([v51 overlayType] == 1)
  {
    v45 = v13;
    containerOrientation = self->_containerOrientation;
    v39 = v51;
    v40 = v28;
    v41 = v39;
    LOBYTE(v44) = v46;
    [v39 configureWithWorkspaceEntity:v12 referenceFrame:v40 contentOrientation:containerOrientation containerOrientation:v36 layoutRole:a6 sbsDisplayLayoutRole:a7 zOrderIndex:v16 spaceConfiguration:v18 floatingConfiguration:v20 hasClassicAppOrientationMismatch:v22 sizingPolicy:{v48, v47, v44, v37}];
    v42 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self keyboardFocusSceneID];
    [v41 noteKeyboardFocusDidChangeToSceneID:v42];

    v43 = [(SBAppSwitcherSettings *)self->_switcherSettings windowingSettings];
    [v41 setShouldPreventFlatteningUnoccludedScenes:{objc_msgSend(v43, "preventFlatteningUnoccludedScenes")}];

    v13 = v45;
  }
}

- (void)_addOverlay:(id)a3 forAppLayout:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self delegate];
  v11 = [[SBFullScreenLiveContentOverlayContext alloc] initWithOverlay:v8];
  [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext setObject:v11 forKey:v9];
  if (objc_opt_respondsToSelector())
  {
    [v8 setContainerOrientation:self->_containerOrientation];
  }

  v12 = SBLogAppSwitcher();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromFullScreenLiveContentOverlayType([v8 overlayType]);
    v16 = [v9 succinctDescription];
    NSStringFromBOOL();
    v17 = v18 = v5;
    *buf = 138544386;
    v20 = v14;
    v21 = 2048;
    v22 = self;
    v23 = 2114;
    v24 = v15;
    v25 = 2114;
    v26 = v16;
    v27 = 2114;
    v28 = v17;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Adding %{public}@ overlay for: %{public}@, animated: %{public}@", buf, 0x34u);

    v5 = v18;
  }

  [v10 addLiveContentOverlay:v8 forAppLayout:v9 animated:v5];
}

- (int64_t)_existingOverlayTypeForAppLayout:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:a3];
  v4 = [v3 overlayType];

  return v4;
}

- (void)_removeOverlayForAppLayout:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    if ([v7 overlayType] == 3)
    {
      v9 = [v8 overlay];
      [v9 invalidate];
LABEL_8:

      goto LABEL_9;
    }

    if ([v8 overlayType] == 2 || objc_msgSend(v8, "overlayType") == 1 || objc_msgSend(v8, "overlayType") == 4)
    {
      v10 = [v8 overlay];
      v9 = [v10 contentViewController];

      [v9 willMoveToParentViewController:0];
      [v9 bs_beginAppearanceTransition:0 animated:0];
      [v9 removeFromParentViewController];
      [v9 bs_endAppearanceTransition];
      v11 = [v8 overlay];
      [v11 invalidate];

      goto LABEL_8;
    }
  }

LABEL_9:
  [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext removeObjectForKey:v6];
  v12 = SBLogAppSwitcher();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromFullScreenLiveContentOverlayType([v8 overlayType]);
    v16 = [v6 succinctDescription];
    v17 = NSStringFromBOOL();
    v19 = 138544386;
    v20 = v14;
    v21 = 2048;
    v22 = self;
    v23 = 2114;
    v24 = v15;
    v25 = 2114;
    v26 = v16;
    v27 = 2114;
    v28 = v17;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Removing %{public}@ overlay for: %{public}@, animated: %{public}@", &v19, 0x34u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained removeLiveContentOverlayForAppLayout:v6 animated:v4];
}

- (void)_moveExistingOverlayForAppLayout:(id)a3 toAppLayout:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext objectForKey:v6];
  v9 = v8;
  if (v8 && -[SBFullScreenSwitcherLiveContentOverlayCoordinator _supportsMovingOverlayTypeBetweenAppLayouts:](self, "_supportsMovingOverlayTypeBetweenAppLayouts:", [v8 overlayType]))
  {
    [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext removeObjectForKey:v6];
    [(NSMutableDictionary *)self->_appLayoutToLiveContentOverlayContext setObject:v9 forKey:v7];
    v10 = SBLogAppSwitcher();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromFullScreenLiveContentOverlayType([v9 overlayType]);
      v14 = [v6 succinctDescription];
      v15 = [v7 succinctDescription];
      v18 = 138544386;
      v19 = v12;
      v20 = 2048;
      v21 = self;
      v22 = 2114;
      v23 = v13;
      v24 = 2114;
      v25 = v14;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Moving existing %{public}@ overlay from: %{public}@, to: %{public}@", &v18, 0x34u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = [v9 overlay];
    [WeakRetained moveExistingLiveContentOverlay:v17 forAppLayout:v6 toAppLayout:v7];
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

- (id)_updateSceneRelevancyAssertionsForAppLayout:(id)a3 assertionTypesToCurrentAssertions:(id)a4 applicationSceneHandle:(id)a5 sceneRelevancyResult:(id)a6 reason:(id)a7
{
  v43 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v35 = a5;
  v12 = a6;
  v34 = a7;
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
    v36 = v11;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(&unk_28336E070);
        }

        v17 = *(*(&v38 + 1) + 8 * i);
        v18 = [v11 objectForKey:v17];
        v19 = [v17 integerValue];
        if (![(SBFullScreenSwitcherLiveContentOverlayCoordinator *)self _shouldCreateAssertionForType:v19 withSceneRelevancyResult:v12])
        {
          [v18 invalidate];
          goto LABEL_38;
        }

        if (v19 == 2)
        {
          v27 = [v12 resourceElevation];
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

          if (!v30 || [v30 resourceElevation] != v27)
          {
            v31 = [v35 acquireSceneResourceElevationAssertionWithReason:v34 resourceElevation:v27];
            goto LABEL_36;
          }
        }

        else if (v19 == 1)
        {
          v24 = [v12 jetsamMode];
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

          if (!v30 || [v30 jetsamMode] != v24)
          {
            v31 = [v35 acquireSceneJetsamModeAssertionWithReason:v34 jetsamMode:v24];
LABEL_36:
            v32 = v31;
            [v37 setObject:v31 forKey:v17];
            [v22 invalidate];

            goto LABEL_37;
          }
        }

        else
        {
          if (v19)
          {
            goto LABEL_38;
          }

          v20 = [v12 activityMode];
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

          if (!v30 || [v30 activityMode] != v20)
          {
            v31 = [v35 acquireSceneActivityModeAssertionWithReason:v34 activityMode:v20];
            goto LABEL_36;
          }
        }

        [v37 setObject:v30 forKey:v17];
LABEL_37:
        v11 = v36;

LABEL_38:
      }

      v14 = [&unk_28336E070 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v14);
  }

  return v37;
}

- (void)_invalidateAssertions:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [a3 allValues];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) invalidate];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (BOOL)_shouldCreateAssertionForType:(int64_t)a3 withSceneRelevancyResult:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 2)
  {
    v7 = [v5 resourceElevation];
  }

  else if (a3 == 1)
  {
    v7 = [v5 jetsamMode];
  }

  else
  {
    if (a3)
    {
      v8 = 1;
      goto LABEL_9;
    }

    v7 = [v5 activityMode];
  }

  v8 = v7 != 0;
LABEL_9:

  return v8;
}

- (void)delegate
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFullScreenSwitcherLiveContentOverlayCoordinator.m" lineNumber:236 description:@"delegate must be set before use"];
}

@end