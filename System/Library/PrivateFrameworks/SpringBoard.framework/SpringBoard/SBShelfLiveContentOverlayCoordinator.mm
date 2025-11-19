@interface SBShelfLiveContentOverlayCoordinator
- (SBShelfLiveContentOverlayCoordinator)initWithShelfDelegate:(id)a3;
- (SBShelfLiveContentOverlayCoordinatorDelegate)shelfDelegate;
- (SBSwitcherLiveContentOverlayCoordinatorDelegate)delegate;
- (void)_addOverlaysIfNeededForTransitionContext:(id)a3;
- (void)dealloc;
- (void)didUpdateCacheEntry:(id)a3;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionWillEndWithTransitionContext:(id)a4;
@end

@implementation SBShelfLiveContentOverlayCoordinator

- (SBShelfLiveContentOverlayCoordinator)initWithShelfDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBShelfLiveContentOverlayCoordinator;
  v5 = [(SBShelfLiveContentOverlayCoordinator *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_shelfDelegate, v4);
    v7 = objc_opt_new();
    leafAppLayoutsToOverlays = v6->_leafAppLayoutsToOverlays;
    v6->_leafAppLayoutsToOverlays = v7;
  }

  return v6;
}

- (void)dealloc
{
  if (self->_isSnapshotCacheObserver)
  {
    WeakRetained = objc_loadWeakRetained(&self->_shelfDelegate);
    v4 = [WeakRetained shelfLiveContentOverlayCoordinatorSnapshotCache:self];

    [v4 removeSnapshotObserver:self];
    v5 = SBLogShelfLiveContent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Removed live content coordinator as snapshot observer", buf, 2u);
    }
  }

  v6.receiver = self;
  v6.super_class = SBShelfLiveContentOverlayCoordinator;
  [(SBShelfLiveContentOverlayCoordinator *)&v6 dealloc];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 fromLayoutState];
  v7 = [v5 toLayoutState];
  v8 = [v6 appLayout];
  v9 = [v8 leafAppLayouts];
  v47 = v6;
  v10 = [v6 floatingAppLayout];
  v11 = [v10 leafAppLayouts];
  v12 = [v9 arrayByAddingObjectsFromArray:v11];

  v13 = [v7 appLayout];
  v14 = [v13 leafAppLayouts];
  v46 = v7;
  v15 = [v7 floatingAppLayout];
  v16 = [v15 leafAppLayouts];
  v17 = [v14 arrayByAddingObjectsFromArray:v16];

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __113__SBShelfLiveContentOverlayCoordinator_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke;
  v59[3] = &unk_2783A8CB8;
  v18 = v17;
  v60 = v18;
  v42 = [v12 bs_filter:v59];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __113__SBShelfLiveContentOverlayCoordinator_layoutStateTransitionCoordinator_transitionDidBeginWithTransitionContext___block_invoke_2;
  v57[3] = &unk_2783A8CB8;
  v44 = v12;
  v45 = v18;
  v58 = v44;
  v19 = [v18 bs_filter:v57];
  v48 = v5;
  [(SBShelfLiveContentOverlayCoordinator *)self _addOverlaysIfNeededForTransitionContext:v5];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v54;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v54 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v53 + 1) + 8 * i);
        v26 = [(NSMutableDictionary *)self->_leafAppLayoutsToOverlays objectForKey:v25];
        v27 = v26;
        if (v26)
        {
          [v26 setDisplayMode:0];
          [v27 setPendingSwitcherSnapshotCacheUpdate:0];
          v28 = SBLogShelfLiveContent();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v25 itemForLayoutRole:1];
            v30 = [v29 uniqueIdentifier];
            *buf = 138412290;
            v63 = v30;
            _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "Set displayMode to Snapshot and pendingSnapshotCacheUpdate to NO for %@ because it's going live", buf, 0xCu);
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v22);
  }

  v43 = v20;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v31 = v42;
  v32 = [v31 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v50;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v49 + 1) + 8 * j);
        v37 = [(NSMutableDictionary *)self->_leafAppLayoutsToOverlays objectForKey:v36];
        v38 = v37;
        if (v37)
        {
          [v37 setDisplayMode:1];
          v39 = SBLogShelfLiveContent();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [v36 itemForLayoutRole:1];
            v41 = [v40 uniqueIdentifier];
            *buf = 138412290;
            v63 = v41;
            _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "Set displayMode to LivePortal for %@ because it's going background", buf, 0xCu);
          }
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v33);
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionWillEndWithTransitionContext:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_shelfDelegate);
  v6 = [v5 fromLayoutState];
  v33 = v5;
  v7 = [v5 toLayoutState];
  v8 = [v6 appLayout];
  v9 = [v8 leafAppLayouts];
  v32 = v6;
  v10 = [v6 floatingAppLayout];
  v11 = [v10 leafAppLayouts];
  v12 = [v9 arrayByAddingObjectsFromArray:v11];

  v13 = [v7 appLayout];
  v14 = [v13 leafAppLayouts];
  v31 = v7;
  v15 = [v7 floatingAppLayout];
  v16 = [v15 leafAppLayouts];
  v17 = [v14 arrayByAddingObjectsFromArray:v16];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __112__SBShelfLiveContentOverlayCoordinator_layoutStateTransitionCoordinator_transitionWillEndWithTransitionContext___block_invoke;
  v40[3] = &unk_2783A8CB8;
  v29 = v17;
  v30 = v12;
  v41 = v29;
  [v12 bs_filter:v40];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v18 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v36 + 1) + 8 * i);
        v23 = [(NSMutableDictionary *)self->_leafAppLayoutsToOverlays objectForKey:v22];
        if (v23)
        {
          v24 = [WeakRetained shelfLiveContentOverlayCoordinatorSnapshotCache:self];
          v25 = [v22 itemForLayoutRole:1];
          [v24 addSnapshotUpdateObserver:self forDisplayItem:v25 inAppLayout:v22];

          self->_isSnapshotCacheObserver = 1;
          [v23 setPendingSwitcherSnapshotCacheUpdate:1];
          v26 = SBLogShelfLiveContent();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v22 itemForLayoutRole:1];
            v28 = [v27 uniqueIdentifier];
            *buf = 138412290;
            v43 = v28;
            _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Set pendingSnapshotCacheUpdate for %@ because it is about to be backgrounded", buf, 0xCu);
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v19);
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 fromLayoutState];
  v7 = [v5 toLayoutState];
  v8 = [v6 appLayout];
  v9 = [v8 leafAppLayouts];
  v45 = v6;
  v10 = [v6 floatingAppLayout];
  v11 = [v10 leafAppLayouts];
  v12 = [v9 arrayByAddingObjectsFromArray:v11];

  v13 = [v7 appLayout];
  v14 = [v13 leafAppLayouts];
  v44 = v7;
  v15 = [v7 floatingAppLayout];
  v16 = [v15 leafAppLayouts];
  v17 = [v14 arrayByAddingObjectsFromArray:v16];

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __111__SBShelfLiveContentOverlayCoordinator_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke;
  v58[3] = &unk_2783A8CB8;
  v18 = v17;
  v59 = v18;
  v41 = [v12 bs_filter:v58];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __111__SBShelfLiveContentOverlayCoordinator_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke_2;
  v56[3] = &unk_2783A8CB8;
  v42 = v12;
  v43 = v18;
  v57 = v42;
  v19 = [v18 bs_filter:v56];
  v46 = v5;
  [(SBShelfLiveContentOverlayCoordinator *)self _addOverlaysIfNeededForTransitionContext:v5];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v19;
  v20 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v53;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v53 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v52 + 1) + 8 * i);
        v25 = [(NSMutableDictionary *)self->_leafAppLayoutsToOverlays objectForKey:v24, v41];
        v26 = v25;
        if (v25)
        {
          [v25 setDisplayMode:1];
          v27 = SBLogShelfLiveContent();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v24 itemForLayoutRole:1];
            v29 = [v28 uniqueIdentifier];
            *buf = 138412290;
            v62 = v29;
            _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "Set displayMode to LivePortal for %@ because it is live", buf, 0xCu);
          }
        }
      }

      v21 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v21);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v30 = v41;
  v31 = [v30 countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v49;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v49 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v48 + 1) + 8 * j);
        v36 = [(NSMutableDictionary *)self->_leafAppLayoutsToOverlays objectForKey:v35, v41];
        v37 = v36;
        if (v36)
        {
          [v36 setDisplayMode:0];
          v38 = SBLogShelfLiveContent();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [v35 itemForLayoutRole:1];
            v40 = [v39 uniqueIdentifier];
            *buf = 138412290;
            v62 = v40;
            _os_log_impl(&dword_21ED4E000, v38, OS_LOG_TYPE_DEFAULT, "Set displayMode to Snapshot for %@ because it is backgrounded", buf, 0xCu);
          }
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v32);
  }
}

- (void)_addOverlaysIfNeededForTransitionContext:(id)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v64 = [(SBShelfLiveContentOverlayCoordinator *)self delegate];
  WeakRetained = objc_loadWeakRetained(&self->_shelfDelegate);
  v6 = [v4 toLayoutState];
  v61 = v4;
  v59 = [v4 applicationTransitionContext];
  v60 = WeakRetained;
  v7 = [WeakRetained shelfLiveContentOverlayCoordinatorAppLayouts:self];
  v8 = MEMORY[0x277CBEB98];
  v58 = v7;
  v9 = [v7 bs_map:&__block_literal_global_445];
  v10 = [v9 bs_flatten];
  v11 = [v8 setWithArray:v10];

  v12 = [v6 appLayout];
  v13 = [v12 leafAppLayouts];
  v65 = v6;
  v14 = [v6 floatingAppLayout];
  v15 = [v14 leafAppLayouts];
  v16 = [v13 arrayByAddingObjectsFromArray:v15];

  v17 = self;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v16;
  v18 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v73;
    v55 = *MEMORY[0x277CDA278];
    *&v19 = 138412290;
    v54 = v19;
    v63 = v17;
    v56 = *v73;
    v57 = v11;
    do
    {
      v22 = 0;
      v62 = v20;
      do
      {
        if (*v73 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v72 + 1) + 8 * v22);
        if ([v23 containsAnyItemFromSet:{v11, v54}])
        {
          v24 = [(NSMutableDictionary *)v17->_leafAppLayoutsToOverlays objectForKey:v23];
          if (!v24)
          {
            goto LABEL_12;
          }

          v25 = v24;
          if ([v24 isPendingSwitcherSnapshotCacheUpdate])
          {
            [(NSMutableDictionary *)v17->_leafAppLayoutsToOverlays removeObjectForKey:v23];
            [v64 removeLiveContentOverlayForAppLayout:v23 animated:1];
            v26 = SBLogShelfLiveContent();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [v23 itemForLayoutRole:1];
              v28 = [v27 uniqueIdentifier];
              *buf = v54;
              v77 = v28;
              _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Removing live content overlay for %@ because it's waiting for a snapshot and we're going to re-add it with live content", buf, 0xCu);

              v17 = v63;
            }

LABEL_12:
            v29 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
            v30 = [v23 itemForLayoutRole:1];
            v31 = +[SBApplicationController sharedInstance];
            v32 = [v30 bundleIdentifier];
            v33 = [v31 applicationWithBundleIdentifier:v32];

            v34 = [v30 uniqueIdentifier];
            v69 = v33;
            v35 = [v29 sceneIdentityForApplication:v33 uniqueIdentifier:v34];

            v70 = v29;
            v68 = v35;
            v36 = [v29 existingSceneHandleForSceneIdentity:v35];
            v71[0] = MEMORY[0x277D85DD0];
            v71[1] = 3221225472;
            v71[2] = __81__SBShelfLiveContentOverlayCoordinator__addOverlaysIfNeededForTransitionContext___block_invoke_7;
            v71[3] = &unk_2783A8CB8;
            v71[4] = v23;
            v67 = [v58 bs_firstObjectPassingTest:v71];
            v37 = 3;
            if ([v67 environment] != 2)
            {
              v38 = [v65 appLayout];
              v39 = [v23 itemForLayoutRole:1];
              v37 = [v38 layoutRoleForItem:v39];
            }

            v40 = [v59 entityForLayoutRole:v37];
            [v59 frameForApplicationSceneEntity:v40];
            v42 = v41;
            v44 = v43;
            v45 = [v36 sceneIdentifier];
            v46 = [v65 interfaceOrientationForElementIdentifier:v45];

            v47 = [v65 interfaceOrientation];
            v48 = [v60 shelfLiveContentOverlayCoordinator:v17 liveViewForAppLayout:v23];
            v49 = [v48 layer];
            [v49 setShouldRasterize:1];
            [v64 displayScaleForContentOverlay];
            [v49 setRasterizationScale:v50 * 0.5];
            [v49 setMinificationFilter:v55];
            v51 = [[SBShelfLiveContentOverlay alloc] initWithSceneHandle:v36 referenceSize:v46 contentOrientation:v47 containerOrientation:v48 livePortalView:v42, v44];
            v17 = v63;
            [v64 addLiveContentOverlay:v51 forAppLayout:v23 animated:{objc_msgSend(v61, "animationsDisabled") ^ 1}];
            [(NSMutableDictionary *)v63->_leafAppLayoutsToOverlays setObject:v51 forKey:v23];
            v52 = SBLogShelfLiveContent();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = [v30 uniqueIdentifier];
              *buf = v54;
              v77 = v53;
              _os_log_impl(&dword_21ED4E000, v52, OS_LOG_TYPE_DEFAULT, "Creating and adding live content overlay for %@", buf, 0xCu);
            }

            v25 = 0;
            v21 = v56;
            v11 = v57;
            v20 = v62;
          }
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
    }

    while (v20);
  }
}

- (void)didUpdateCacheEntry:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 appLayout];
  v5 = [(NSMutableDictionary *)self->_leafAppLayoutsToOverlays objectForKey:v4];
  v6 = v5;
  if (v5 && [v5 isPendingSwitcherSnapshotCacheUpdate])
  {
    v7 = [(SBShelfLiveContentOverlayCoordinator *)self delegate];
    [v7 removeLiveContentOverlayForAppLayout:v4 animated:1];

    [(NSMutableDictionary *)self->_leafAppLayoutsToOverlays removeObjectForKey:v4];
    v8 = SBLogShelfLiveContent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 itemForLayoutRole:1];
      v10 = [v9 uniqueIdentifier];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Removing live content overlay for %@ because its cached snapshot is ready", &v11, 0xCu);
    }
  }
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(SBShelfLiveContentOverlayCoordinator *)self delegate];
  v4 = [(NSMutableDictionary *)self->_leafAppLayoutsToOverlays allKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v3 removeLiveContentOverlayForAppLayout:v9 animated:1];
        [(NSMutableDictionary *)self->_leafAppLayoutsToOverlays removeObjectForKey:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (SBSwitcherLiveContentOverlayCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (SBShelfLiveContentOverlayCoordinatorDelegate)shelfDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shelfDelegate);

  return WeakRetained;
}

@end