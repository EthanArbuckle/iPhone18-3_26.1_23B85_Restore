@interface SBSwitcherShelfViewController
- (BOOL)_dismissShelfIfNeededWithLocation:(CGPoint)a3 window:(id)a4;
- (BOOL)switcherContentController:(id)a3 supportsTitleItemsForAppLayout:(id)a4;
- (BOOL)transientUIHandledTouch:(id)a3 withSystemGestureRecognizer:(id)a4;
- (CGRect)_frameForCenterItemWithConfiguration:(int64_t)a3 interfaceOrientation:(int64_t)a4;
- (CGRect)_frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)a3 floatingConfiguration:(int64_t)a4;
- (CGRect)_frameForItemWithRole:(int64_t)a3 inMainAppLayout:(id)a4 interfaceOrientation:(int64_t)a5;
- (CGRect)itemFrameForAppLayout:(id)a3;
- (CGRect)presentationTargetFrame;
- (CGRect)switcherContentController:(id)a3 frameForCenterItemWithConfiguration:(int64_t)a4 interfaceOrientation:(int64_t)a5;
- (CGRect)switcherContentController:(id)a3 frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)a4 floatingConfiguration:(int64_t)a5;
- (CGRect)switcherContentController:(id)a3 frameForItemWithRole:(int64_t)a4 inMainAppLayout:(id)a5 interfaceOrientation:(int64_t)a6;
- (SBSwitcherShelfViewController)initWithShelf:(id)a3 dataSource:(id)a4 delegate:(id)a5;
- (SBSwitcherShelfViewControllerDataSource)dataSource;
- (SBSwitcherShelfViewControllerDelegate)delegate;
- (id)_appLayouts;
- (id)_transitionEventForContext:(id)a3 identifier:(id)a4 phase:(unint64_t)a5 animated:(BOOL)a6;
- (id)_windowScene;
- (id)shelfLiveContentOverlayCoordinator:(id)a3 liveViewForAppLayout:(id)a4;
- (id)windowManagementContextForSwitcherContentController:(id)a3;
- (int64_t)nextDisplayItemInteractionTimeForSwitcherContentController:(id)a3;
- (void)_dockHeightWillChange:(id)a3;
- (void)_performNewWindowRequestForBundleIdentifier:(id)a3;
- (void)_performSwitcherTransitionRequest:(id)a3;
- (void)_rebuildCachedAppLayouts;
- (void)assistantWillAppear:(id)a3 windowScene:(id)a4;
- (void)clientDidResetForUserAttention:(id)a3 withEvent:(id)a4;
- (void)dealloc;
- (void)dismissShelfWithTransitionSource:(int64_t)a3;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionWillEndWithTransitionContext:(id)a4;
- (void)loadView;
- (void)performKeyboardShortcutAction:(int64_t)a3;
- (void)performTransitionWithContext:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setContentOptions:(unint64_t)a3;
- (void)setContentOrientation:(int64_t)a3;
- (void)setHomeAffordancePortalView:(id)a3;
- (void)setIgnoredDisplayItems:(id)a3;
- (void)setPresented:(BOOL)a3 withTargetFrame:(CGRect)a4 style:(unint64_t)a5 completion:(id)a6;
- (void)switcherContentController:(id)a3 deletedDisplayItem:(id)a4 inAppLayout:(id)a5 forReason:(int64_t)a6;
- (void)transientUI:(id)a3 wasIndirectPannedToDismissFromGestureRecognizer:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SBSwitcherShelfViewController

- (SBSwitcherShelfViewController)initWithShelf:(id)a3 dataSource:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v30.receiver = self;
  v30.super_class = SBSwitcherShelfViewController;
  v12 = [(SBSwitcherShelfViewController *)&v30 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_shelf, a3);
    objc_storeWeak(&v13->_dataSource, v10);
    objc_storeWeak(&v13->_delegate, v11);
    v14 = SBAppLayoutGenericAppLayoutWithConfiguration(3);
    [v10 switcherShelfViewController:v13 frameForItemWithRole:1 inMainAppLayout:v14 interfaceOrientation:3];
    v13->_halfHalfSize.width = v15;
    v13->_halfHalfSize.height = v16;

    v17 = objc_alloc_init(SBShelfRootSwitcherModifier);
    rootModifier = v13->_rootModifier;
    v13->_rootModifier = v17;

    [(SBShelfRootSwitcherModifier *)v13->_rootModifier setDisplayMode:[(SBSwitcherShelf *)v13->_shelf displayMode]];
    v19 = [[SBFluidSwitcherPersonality alloc] initWithRootModifier:v13->_rootModifier];
    personality = v13->_personality;
    v13->_personality = v19;

    v21 = [[SBShelfLiveContentOverlayCoordinator alloc] initWithShelfDelegate:v13];
    liveContentOverlayCoordinator = v13->_liveContentOverlayCoordinator;
    v13->_liveContentOverlayCoordinator = v21;

    v23 = [[SBFluidSwitcherViewController alloc] initWithPersonality:v13->_personality liveContentOverlayCoordinator:v13->_liveContentOverlayCoordinator dataSource:v13 delegate:v13 debugName:@"Shelf"];
    contentViewController = v13->_contentViewController;
    v13->_contentViewController = v23;

    v25 = +[SBAssistantController sharedInstance];
    [v25 addObserver:v13];

    v26 = objc_alloc_init(MEMORY[0x277CEF768]);
    [v26 setIdentifier:@"com.apple.SpringBoard.SwitcherShelfViewController"];
    [v26 setEventMask:4];
    [v26 setAttentionLostTimeout:0.0];
    v27 = objc_alloc_init(SBAttentionAwarenessClient);
    idleTouchAwarenessClient = v13->_idleTouchAwarenessClient;
    v13->_idleTouchAwarenessClient = v27;

    [(SBAttentionAwarenessClient *)v13->_idleTouchAwarenessClient setConfiguration:v26];
    [(SBAttentionAwarenessClient *)v13->_idleTouchAwarenessClient setDelegate:v13];
  }

  return v13;
}

- (void)dealloc
{
  v3 = +[SBAssistantController sharedInstance];
  [v3 removeObserver:self];

  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setDelegate:0];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient invalidate];
  [(SBFluidSwitcherViewController *)self->_contentViewController invalidate];
  v4.receiver = self;
  v4.super_class = SBSwitcherShelfViewController;
  [(SBSwitcherShelfViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = [SBSwitcherShelfView alloc];
  v4 = [(SBSwitcherShelfView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SBSwitcherShelfViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SBSwitcherShelfViewController;
  [(SBSwitcherShelfViewController *)&v4 viewDidLoad];
  [(SBSwitcherShelfViewController *)self bs_addChildViewController:self->_contentViewController];
  [(SBSwitcherShelfViewController *)self _rebuildCachedAppLayouts];
  if (!self->_activePresentationAndDismissalAnimations && !self->_presented)
  {
    v3 = [(SBFluidSwitcherViewController *)self->_contentViewController view];
    [v3 setHidden:1];
  }
}

- (void)viewWillLayoutSubviews
{
  v39.receiver = self;
  v39.super_class = SBSwitcherShelfViewController;
  [(SBSwitcherShelfViewController *)&v39 viewWillLayoutSubviews];
  v3 = [(SBSwitcherShelfViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  UIRectGetCenter();
  v13 = v12;
  v15 = v14;
  v16 = [(SBFluidSwitcherViewController *)self->_contentViewController view];
  [v16 setBounds:{v5, v7, v9, v11}];

  v17 = [(SBFluidSwitcherViewController *)self->_contentViewController view];
  [v17 setCenter:{v13, v15}];

  homeAffordancePortalView = self->_homeAffordancePortalView;
  if (homeAffordancePortalView)
  {
    v19 = [(SBPortalView *)homeAffordancePortalView sourceView];
    v20 = v19;
    if (v19)
    {
      [v19 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [v20 center];
      v30 = v29;
      v32 = v31;
      v33 = [(SBSwitcherShelfViewController *)self view];
      [v20 convertPoint:v33 toView:{v30, v32}];
      v35 = v34;
      v37 = v36;

      [(SBPortalView *)self->_homeAffordancePortalView setBounds:v22, v24, v26, v28];
      [(SBPortalView *)self->_homeAffordancePortalView setCenter:v35, v37];
    }

    v38 = [(SBSwitcherShelfViewController *)self view];
    [v38 bringSubviewToFront:self->_homeAffordancePortalView];
  }
}

- (void)viewDidLayoutSubviews
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SBSwitcherShelfViewController;
  [(SBSwitcherShelfViewController *)&v9 viewDidLayoutSubviews];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = @"SBSwitcherShelfHeight";
  v4 = MEMORY[0x277CCABB0];
  v5 = [(SBSwitcherShelfViewController *)self view];
  [v5 bounds];
  v7 = [v4 numberWithDouble:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v3 postNotificationName:@"SBSwitcherShelfHeightDidChangeNotification" object:self userInfo:v8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SBSwitcherShelfViewController;
  [(SBSwitcherShelfViewController *)&v7 viewWillAppear:a3];
  v4 = [(SBSwitcherShelfViewController *)self _windowScene];
  v5 = [v4 transientUIInteractionManager];

  [v5 registerParticipantForTapToDismiss:self];
  [v5 registerParticipantForIndirectPanToDismiss:self];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:1];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__dockHeightWillChange_ name:@"SBFloatingDockControllerHeightWillChangeNotification" object:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SBSwitcherShelfViewController;
  [(SBSwitcherShelfViewController *)&v9 viewWillDisappear:a3];
  v4 = [(SBSwitcherShelfViewController *)self _windowScene];
  v5 = [v4 transientUIInteractionManager];

  [v5 unregisterParticipantForTapToDismiss:self];
  [v5 unregisterParticipantForIndirectPanToDismiss:self];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = @"SBSwitcherShelfHeight";
  v11[0] = &unk_283372458;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v6 postNotificationName:@"SBSwitcherShelfHeightDidChangeNotification" object:self userInfo:v7];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self];
}

- (void)setContentOptions:(unint64_t)a3
{
  if (self->_contentOptions != a3)
  {
    self->_contentOptions = a3;
    [(SBSwitcherShelfViewController *)self _rebuildCachedAppLayouts];
  }
}

- (void)setIgnoredDisplayItems:(id)a3
{
  v6 = a3;
  if ((BSEqualSets() & 1) == 0)
  {
    v4 = [v6 copy];
    ignoredDisplayItems = self->_ignoredDisplayItems;
    self->_ignoredDisplayItems = v4;

    [(SBSwitcherShelfViewController *)self _rebuildCachedAppLayouts];
  }
}

- (void)setContentOrientation:(int64_t)a3
{
  v3 = a3;
  if ((a3 - 1) <= 1 && [(SBSwitcherShelf *)self->_shelf displayMode]== 1)
  {
    v3 = 3;
  }

  if (v3 != self->_contentOrientation)
  {
    self->_contentOrientation = v3;
    [(SBFluidSwitcherViewController *)self->_contentViewController setContentOrientation:v3];
    v5 = [(SBSwitcherShelfViewController *)self view];
    [v5 setNeedsLayout];
  }
}

- (void)_rebuildCachedAppLayouts
{
  v131 = *MEMORY[0x277D85DE8];
  if (!self->_shelf)
  {
    return;
  }

  v2 = self;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(SBSwitcherShelfViewController *)v2 _appLayouts];
  v5 = objc_opt_new();
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v117 objects:v130 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v118;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v118 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v117 + 1) + 8 * i);
        if (([v11 containsAnyItemFromSet:v5] & 1) == 0)
        {
          [v3 addObject:v11];
          v12 = [v11 allItems];
          [v5 addObjectsFromArray:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v117 objects:v130 count:16];
    }

    while (v8);
  }

  v87 = objc_opt_new();
  v13 = [(SBSwitcherShelf *)v2->_shelf displayMode];
  v88 = v2;
  if (v13 == 1)
  {
    contentOptions = v2->_contentOptions;
    v84 = v6;
    v76 = v3;
    v77 = v5;
    if ((contentOptions & 2) != 0)
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      obj = v3;
      v82 = [obj countByEnumeratingWithState:&v101 objects:v126 count:16];
      if (v82)
      {
        v80 = *v102;
        do
        {
          for (j = 0; j != v82; j = j + 1)
          {
            if (*v102 != v80)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v101 + 1) + 8 * j);
            if ([v17 environment] == 1 || objc_msgSend(v17, "environment") == 2)
            {
              v85 = j;
              v99 = 0u;
              v100 = 0u;
              v97 = 0u;
              v98 = 0u;
              v18 = [v17 leafAppLayouts];
              v19 = [v18 countByEnumeratingWithState:&v97 objects:v125 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v98;
                do
                {
                  for (k = 0; k != v20; ++k)
                  {
                    if (*v98 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v97 + 1) + 8 * k);
                    v24 = [v23 allItems];
                    v25 = [v24 firstObject];
                    v26 = [v25 bundleIdentifier];
                    v27 = [(SBSwitcherShelf *)v2->_shelf bundleIdentifier];
                    v28 = [v26 isEqual:v27];

                    v2 = v88;
                    if (v28 && ([v23 containsAnyItemFromSet:v88->_ignoredDisplayItems] & 1) == 0)
                    {
                      [v87 addObject:v23];
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v97 objects:v125 count:16];
                }

                while (v20);
              }

              v6 = v84;
              j = v85;
            }
          }

          v82 = [obj countByEnumeratingWithState:&v101 objects:v126 count:16];
        }

        while (v82);
      }

      v3 = v76;
      contentOptions = v2->_contentOptions;
      v5 = v77;
    }

    if ((contentOptions & 1) == 0)
    {
      goto LABEL_93;
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v83 = v3;
    v29 = [v83 countByEnumeratingWithState:&v93 objects:v124 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v94;
      obja = *v94;
      do
      {
        v32 = 0;
        v81 = v30;
        do
        {
          if (*v94 != v31)
          {
            objc_enumerationMutation(v83);
          }

          v33 = *(*(&v93 + 1) + 8 * v32);
          if ([v33 environment] == 3)
          {
            v86 = v32;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v34 = [v33 leafAppLayouts];
            v35 = [v34 countByEnumeratingWithState:&v89 objects:v123 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v90;
              do
              {
                for (m = 0; m != v36; ++m)
                {
                  if (*v90 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v89 + 1) + 8 * m);
                  v40 = [v39 allItems];
                  v41 = [v40 firstObject];
                  v42 = [v41 bundleIdentifier];
                  v43 = [(SBSwitcherShelf *)v88->_shelf bundleIdentifier];
                  v44 = [v42 isEqual:v43];

                  if (v44 && ([v39 containsAnyItemFromSet:v88->_ignoredDisplayItems] & 1) == 0)
                  {
                    [v87 addObject:v39];
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v89 objects:v123 count:16];
              }

              while (v36);
            }

            v6 = v84;
            v32 = v86;
            v31 = obja;
            v30 = v81;
          }

          ++v32;
        }

        while (v32 != v30);
        v30 = [v83 countByEnumeratingWithState:&v93 objects:v124 count:16];
      }

      while (v30);
    }

    goto LABEL_92;
  }

  if (!v13)
  {
    v14 = v2->_contentOptions;
    v77 = v5;
    if ((v14 & 2) != 0)
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v45 = v3;
      v46 = [v45 countByEnumeratingWithState:&v113 objects:v129 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v114;
        do
        {
          for (n = 0; n != v47; ++n)
          {
            if (*v114 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v113 + 1) + 8 * n);
            if ([v50 environment] == 1 && (objc_msgSend(v50, "containsAnyItemFromSet:", v88->_ignoredDisplayItems) & 1) == 0)
            {
              [v87 addObject:v50];
            }
          }

          v47 = [v45 countByEnumeratingWithState:&v113 objects:v129 count:16];
        }

        while (v47);
      }

      v2 = v88;
      v14 = v88->_contentOptions;
      v5 = v77;
      if ((v14 & 1) == 0)
      {
LABEL_15:
        if ((v14 & 2) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_82;
      }
    }

    else if ((v14 & 1) == 0)
    {
      goto LABEL_15;
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v51 = v3;
    v52 = [v51 countByEnumeratingWithState:&v109 objects:v128 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v110;
      do
      {
        for (ii = 0; ii != v53; ++ii)
        {
          if (*v110 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v109 + 1) + 8 * ii);
          if ([v56 environment] == 3 && (objc_msgSend(v56, "containsAnyItemFromSet:", v88->_ignoredDisplayItems) & 1) == 0)
          {
            [v87 addObject:v56];
          }
        }

        v53 = [v51 countByEnumeratingWithState:&v109 objects:v128 count:16];
      }

      while (v53);
    }

    v2 = v88;
    v5 = v77;
    if ((v88->_contentOptions & 2) == 0)
    {
      goto LABEL_93;
    }

LABEL_82:
    v76 = v3;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v57 = v3;
    v58 = [v57 countByEnumeratingWithState:&v105 objects:v127 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v106;
      do
      {
        for (jj = 0; jj != v59; ++jj)
        {
          if (*v106 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = *(*(&v105 + 1) + 8 * jj);
          if ([v62 environment] == 2 && (objc_msgSend(v62, "containsAnyItemFromSet:", v88->_ignoredDisplayItems) & 1) == 0)
          {
            [v87 addObject:v62];
          }
        }

        v59 = [v57 countByEnumeratingWithState:&v105 objects:v127 count:16];
      }

      while (v59);
    }

LABEL_92:
    v3 = v76;

    v2 = v88;
    v5 = v77;
  }

LABEL_93:
  if ((v2->_contentOptions & 4) != 0)
  {
    v63 = [SBDisplayItem alloc];
    v64 = [(SBSwitcherShelf *)v2->_shelf bundleIdentifier];
    v65 = [(SBDisplayItem *)v63 initWithType:6 bundleIdentifier:v64 uniqueIdentifier:&stru_283094718];

    v66 = [(UIViewController *)v2 _sbWindowScene];
    v67 = [v66 layoutStateProvider];
    v68 = [v67 layoutState];
    v69 = [v68 displayOrdinal];

    v70 = [SBAppLayout alloc];
    v71 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v121 = v71;
    v122 = v65;
    v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
    v73 = v69;
    v2 = v88;
    v74 = [(SBAppLayout *)v70 initWithItemsForLayoutRoles:v72 configuration:1 environment:1 preferredDisplayOrdinal:v73];

    [v87 insertObject:v74 atIndex:0];
  }

  objc_storeStrong(&v2->_appLayouts, v87);
  v75 = [(SBFluidSwitcherViewController *)v2->_contentViewController viewIfLoaded];

  if (v75)
  {
    [(SBFluidSwitcherViewController *)v2->_contentViewController noteAppLayoutsDidChange];
  }
}

- (void)setPresented:(BOOL)a3 withTargetFrame:(CGRect)a4 style:(unint64_t)a5 completion:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v32[1] = *MEMORY[0x277D85DE8];
  v13 = a6;
  v14 = v13;
  if (self->_presented == v11)
  {
    if (v13)
    {
      (*(v13 + 2))(v13, 1, 0);
    }
  }

  else
  {
    self->_presented = v11;
    self->_presentationTargetFrame.origin.x = x;
    self->_presentationTargetFrame.origin.y = y;
    self->_presentationTargetFrame.size.width = width;
    self->_presentationTargetFrame.size.height = height;
    self->_animationStyle = a5;
    if (v11)
    {
      v15 = [(SBFluidSwitcherViewController *)self->_contentViewController view];
      [v15 setHidden:0];

      v16 = 1;
    }

    else
    {
      v17 = [MEMORY[0x277CCAB98] defaultCenter];
      v31 = @"SBSwitcherShelfHeight";
      v32[0] = &unk_283372458;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      [v17 postNotificationName:@"SBSwitcherShelfHeightDidChangeNotification" object:self userInfo:v18];

      v16 = 2;
    }

    [(SBShelfRootSwitcherModifier *)self->_rootModifier setAppearanceState:v16];
    [(SBShelfRootSwitcherModifier *)self->_rootModifier setTargetFrame:self->_presentationTargetFrame.origin.x, self->_presentationTargetFrame.origin.y, self->_presentationTargetFrame.size.width, self->_presentationTargetFrame.size.height];
    [(SBShelfRootSwitcherModifier *)self->_rootModifier setAnimationStyle:self->_animationStyle];
    v19 = +[SBWorkspace mainWorkspace];
    v20 = [v19 createRequestWithOptions:0];

    [v20 finalize];
    ++self->_activePresentationAndDismissalAnimations;
    objc_initWeak(&location, self);
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __79__SBSwitcherShelfViewController_setPresented_withTargetFrame_style_completion___block_invoke;
    v27 = &unk_2783AB758;
    objc_copyWeak(&v29, &location);
    v28 = v14;
    v21 = MEMORY[0x223D6F7F0](&v24);
    contentViewController = self->_contentViewController;
    v23 = [v20 applicationContext];
    [(SBFluidSwitcherViewController *)contentViewController performTransitionWithContext:v23 animated:1 completion:v21];

    [(SBShelfRootSwitcherModifier *)self->_rootModifier setAppearanceState:0];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }
}

uint64_t __79__SBSwitcherShelfViewController_setPresented_withTargetFrame_style_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[132] - 1;
    WeakRetained[132] = v6;
    if (!v6)
    {
      v7 = *(WeakRetained + 1064);
      v12 = WeakRetained;
      if (!*(WeakRetained + 1064))
      {
        v8 = [WeakRetained[124] view];
        [v8 setHidden:1];

        v5 = v12;
      }

      v9 = objc_loadWeakRetained(v5 + 136);
      [v9 switcherShelfViewController:v12 didFinishPresentation:v7];
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = (*(v10 + 16))(v10, a2, 0);
  }

  return MEMORY[0x2821F9730](v10);
}

- (void)performTransitionWithContext:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v42[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [a3 request];
  v9 = [v8 applicationContext];
  v10 = [v9 layoutState];

  if ([(SBSwitcherShelf *)self->_shelf displayMode])
  {
    if ([(SBSwitcherShelf *)self->_shelf displayMode]!= 1 || [(SBSwitcherShelf *)self->_shelf layoutRole]!= 3)
    {
      v12 = [v10 appLayout];
      v13 = [v12 leafAppLayoutForRole:{-[SBSwitcherShelf layoutRole](self->_shelf, "layoutRole")}];

      if (!v13)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v11 = [v10 floatingAppLayout];
  }

  else
  {
    v11 = [v10 appLayout];
  }

  v13 = v11;
  if (!v11)
  {
LABEL_10:
    if (v7)
    {
      v7[2](v7, 1, 0);
    }

    v14 = 0;
    goto LABEL_20;
  }

LABEL_9:
  if ([(NSArray *)self->_appLayouts containsObject:v13])
  {
    goto LABEL_10;
  }

  v34 = v8;
  v14 = v13;
  v15 = (self->_contentOptions >> 2) & 1;
  contentViewController = self->_contentViewController;
  v42[0] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  v41 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  v20 = [(SBFluidSwitcherViewController *)contentViewController shouldAnimateInsertionOfAppLayouts:v17 atIndexes:v19];

  if (v20)
  {
    v32 = self->_contentViewController;
    v40 = v14;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
    v39 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    [(SBFluidSwitcherViewController *)v32 prepareAnimatedInsertionOfAppLayouts:v21 atIndexes:v23];
  }

  [(SBSwitcherShelfViewController *)self _rebuildCachedAppLayouts];
  v24 = self->_contentViewController;
  v38 = v14;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v33 = v15;
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  v37 = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  [(SBFluidSwitcherViewController *)v24 noteModelDidMutateForInsertionOfAppLayouts:v25 atIndexes:v27 willAnimate:v20];

  if (v20)
  {
    v28 = self->_contentViewController;
    v36 = v14;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
    v35 = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    [(SBFluidSwitcherViewController *)v28 performAnimatedInsertionOfAppLayouts:v29 atIndexes:v31 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7, 1, 0);
  }

  v8 = v34;
LABEL_20:
}

- (void)performKeyboardShortcutAction:(int64_t)a3
{
  if (a3 == 3)
  {
    [(SBSwitcherShelfViewController *)self dismissShelfForShelfTransition];
  }
}

- (CGRect)itemFrameForAppLayout:(id)a3
{
  [(SBFluidSwitcherViewController *)self->_contentViewController completedTransitionFrameForAppLayout:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setHomeAffordancePortalView:(id)a3
{
  v5 = a3;
  homeAffordancePortalView = self->_homeAffordancePortalView;
  v11 = v5;
  if (homeAffordancePortalView != v5)
  {
    if (homeAffordancePortalView)
    {
      [(SBPortalView *)homeAffordancePortalView removeFromSuperview];
      v7 = self->_homeAffordancePortalView;
      self->_homeAffordancePortalView = 0;
    }

    objc_storeStrong(&self->_homeAffordancePortalView, a3);
    v8 = self->_homeAffordancePortalView;
    if (v8)
    {
      [(SBPortalView *)v8 setPassesTouchesThrough:1];
      v9 = [(SBSwitcherShelfViewController *)self view];
      [v9 addSubview:self->_homeAffordancePortalView];

      v10 = [(SBSwitcherShelfViewController *)self view];
      [v10 setNeedsLayout];
    }
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(SBFluidSwitcherViewController *)self->_contentViewController layoutStateTransitionCoordinator:v7 transitionDidBeginWithTransitionContext:v6];
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionWillEndWithTransitionContext:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(SBFluidSwitcherViewController *)self->_contentViewController layoutStateTransitionCoordinator:v7 transitionWillEndWithTransitionContext:v6];
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(SBFluidSwitcherViewController *)self->_contentViewController layoutStateTransitionCoordinator:v7 transitionDidEndWithTransitionContext:v6];
  }
}

- (int64_t)nextDisplayItemInteractionTimeForSwitcherContentController:(id)a3
{
  v4 = [(SBSwitcherShelfViewController *)self dataSource];
  v5 = [v4 nextDisplayItemInteractionTimeForSwitcherShelfViewController:self];

  return v5;
}

- (CGRect)switcherContentController:(id)a3 frameForItemWithRole:(int64_t)a4 inMainAppLayout:(id)a5 interfaceOrientation:(int64_t)a6
{
  v13 = a5;
  v14 = [(SBSwitcherShelf *)self->_shelf displayMode];
  if (v14 == 1)
  {
    SBRectWithSize();
    goto LABEL_5;
  }

  if (!v14)
  {
    [(SBSwitcherShelfViewController *)self _frameForItemWithRole:a4 inMainAppLayout:v13 interfaceOrientation:a6];
LABEL_5:
    v6 = v15;
    v7 = v16;
    v8 = v17;
    v9 = v18;
  }

  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)switcherContentController:(id)a3 frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)a4 floatingConfiguration:(int64_t)a5
{
  v8 = [(SBSwitcherShelf *)self->_shelf displayMode];
  if (v8 == 1)
  {
    SBRectWithSize();
  }

  else if (!v8)
  {
    [(SBSwitcherShelfViewController *)self _frameForFloatingAppLayoutInInterfaceOrientation:a4 floatingConfiguration:a5];
  }

  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)switcherContentController:(id)a3 frameForCenterItemWithConfiguration:(int64_t)a4 interfaceOrientation:(int64_t)a5
{
  [(SBSwitcherShelfViewController *)self _frameForCenterItemWithConfiguration:a4 interfaceOrientation:a5];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)switcherContentController:(id)a3 supportsTitleItemsForAppLayout:(id)a4
{
  v4 = a4;
  if ([v4 type])
  {
    v5 = [v4 type] == 5;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)windowManagementContextForSwitcherContentController:(id)a3
{
  v3 = [[SBSwitcherWindowManagementContext alloc] initWithBaseStyle:1 automaticStageCreationEnabled:0 restoresPreviouslyOpenWindows:0];

  return v3;
}

- (void)switcherContentController:(id)a3 deletedDisplayItem:(id)a4 inAppLayout:(id)a5 forReason:(int64_t)a6
{
  v9 = a4;
  v10 = a5;
  v11 = [v10 layoutRoleForItem:v9];
  contentViewController = self->_contentViewController;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100__SBSwitcherShelfViewController_switcherContentController_deletedDisplayItem_inAppLayout_forReason___block_invoke;
  v14[3] = &unk_2783AB2A8;
  v16 = self;
  v17 = a6;
  v15 = v9;
  v13 = v9;
  [(SBFluidSwitcherViewController *)contentViewController removeLayoutRole:v11 inSpace:v10 mutationBlock:v14 reason:a6];
}

void __100__SBSwitcherShelfViewController_switcherContentController_deletedDisplayItem_inAppLayout_forReason___block_invoke(uint64_t a1)
{
  v2 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  [v2 _removeDisplayItem:*(a1 + 32) forReason:*(a1 + 48)];
  [*(a1 + 40) _rebuildCachedAppLayouts];
}

- (BOOL)_dismissShelfIfNeededWithLocation:(CGPoint)a3 window:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(SBSwitcherShelfViewController *)self view];
  v9 = [v7 screen];
  v10 = [v9 fixedCoordinateSpace];

  [v7 convertPoint:v10 toCoordinateSpace:{x, y}];
  [v8 convertPoint:v10 fromCoordinateSpace:?];
  v11 = [v8 hitTest:0 withEvent:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained switcherShelfViewController:self hitTestedToTopAffordance:v7 window:{x, y}];

  if (v11)
  {
    v14 = [(SBSwitcherShelfViewController *)self view];
    if (v11 == v14)
    {
      v16 = 1;
    }

    else
    {
      v15 = [(SBFluidSwitcherViewController *)self->_contentViewController view];
      v16 = [v11 isDescendantOfView:v15] ^ 1;
    }
  }

  else
  {
    v16 = 1;
  }

  if (((v13 ^ 1) & v16) == 1 && self->_presented)
  {
    [(SBSwitcherShelfViewController *)self dismissShelfForShelfTransition];
  }

  return (v13 ^ 1) & v16;
}

- (BOOL)transientUIHandledTouch:(id)a3 withSystemGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [v5 view];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [v5 window];
  v12 = [v5 view];
  [v11 convertPoint:v12 fromView:{v8, v10}];
  v14 = v13;
  v16 = v15;

  v17 = [v5 window];

  LOBYTE(self) = [(SBSwitcherShelfViewController *)self _dismissShelfIfNeededWithLocation:v17 window:v14, v16];
  return self;
}

- (void)transientUI:(id)a3 wasIndirectPannedToDismissFromGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 view];
  [v6 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [v7 window];
  v14 = [v6 view];

  [v13 convertPoint:v14 fromView:{v10, v12}];
  v16 = v15;
  v18 = v17;

  v19 = [v7 window];

  [(SBSwitcherShelfViewController *)self _dismissShelfIfNeededWithLocation:v19 window:v16, v18];
}

- (id)shelfLiveContentOverlayCoordinator:(id)a3 liveViewForAppLayout:(id)a4
{
  v5 = a4;
  v6 = [(SBSwitcherShelfViewController *)self delegate];
  v7 = [v6 switcherShelfViewController:self liveViewForAppLayout:v5];

  return v7;
}

- (void)assistantWillAppear:(id)a3 windowScene:(id)a4
{
  if (self->_presented)
  {
    [(SBSwitcherShelfViewController *)self dismissShelfForShelfTransition:a3];
  }
}

- (void)clientDidResetForUserAttention:(id)a3 withEvent:(id)a4
{
  v5 = [(SBWorkspace *)SBMainWorkspace mainWorkspace:a3];
  v6 = [v5 keyboardFocusController];
  v12 = [v6 sceneWithFocusIncludingSpringBoard];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v12;
  if (isKindOfClass)
  {
    v9 = [v12 clientHandle];
    v10 = [v9 processHandle];

    v11 = [MEMORY[0x277D46F48] currentProcess];
    if (([v10 isEqual:v11] & 1) == 0 && self->_presented)
    {
      [(SBSwitcherShelfViewController *)self dismissShelfForShelfTransition];
    }

    v8 = v12;
  }
}

- (id)_windowScene
{
  v3 = [(SBSwitcherShelfViewController *)self dataSource];
  v4 = [v3 windowSceneForSwitcherShelfViewController:self];

  return v4;
}

- (id)_appLayouts
{
  v3 = [(SBSwitcherShelfViewController *)self dataSource];
  v4 = [v3 appLayoutsForSwitcherShelfViewController:self];

  return v4;
}

- (CGRect)_frameForItemWithRole:(int64_t)a3 inMainAppLayout:(id)a4 interfaceOrientation:(int64_t)a5
{
  v8 = a4;
  v9 = [(SBSwitcherShelfViewController *)self dataSource];
  [v9 switcherShelfViewController:self frameForItemWithRole:a3 inMainAppLayout:v8 interfaceOrientation:a5];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)a3 floatingConfiguration:(int64_t)a4
{
  v7 = [(SBSwitcherShelfViewController *)self dataSource];
  [v7 switcherShelfViewController:self frameForFloatingAppLayoutInInterfaceOrientation:a3 floatingConfiguration:a4];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)_frameForCenterItemWithConfiguration:(int64_t)a3 interfaceOrientation:(int64_t)a4
{
  v7 = [(SBSwitcherShelfViewController *)self dataSource];
  [v7 switcherShelfViewController:self frameForCenterItemWithConfiguration:a3 interfaceOrientation:a4];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)_transitionEventForContext:(id)a3 identifier:(id)a4 phase:(unint64_t)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [(SBSwitcherShelfViewController *)self dataSource];
  v13 = [v12 switcherShelfViewController:self transitionEventForContext:v11 identifier:v10 phase:a5 animated:v6];

  return v13;
}

- (void)_performNewWindowRequestForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 applicationWithBundleIdentifier:v4];

  v7 = +[(SBWorkspace *)SBMainWorkspace];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SBSwitcherShelfViewController__performNewWindowRequestForBundleIdentifier___block_invoke;
  v9[3] = &unk_2783AAA48;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [v7 requestTransitionWithBuilder:v9];
}

void __77__SBSwitcherShelfViewController__performNewWindowRequestForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:35];
  [v3 setEventLabel:@"NewWindowRequest"];
  v4 = [SBDeviceApplicationSceneEntity newEntityWithApplicationForMainDisplay:*(a1 + 32)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__SBSwitcherShelfViewController__performNewWindowRequestForBundleIdentifier___block_invoke_2;
  v6[3] = &unk_2783A96A0;
  v6[4] = *(a1 + 40);
  v7 = v4;
  v5 = v4;
  [v3 modifyApplicationContext:v6];
}

void __77__SBSwitcherShelfViewController__performNewWindowRequestForBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 1072) displayMode])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77__SBSwitcherShelfViewController__performNewWindowRequestForBundleIdentifier___block_invoke_3;
    v8[3] = &unk_2783B5080;
    v8[4] = *(a1 + 32);
    v4 = v3;
    v9 = v4;
    v10 = *(a1 + 40);
    SBLayoutRoleEnumerateValidRoles(v8);
    v5 = [v4 previousLayoutState];
    [v4 setRequestedWindowPickerRole:{objc_msgSend(v5, "windowPickerRole")}];
  }

  else
  {
    [v3 setActivatingEntity:*(a1 + 40)];
    v6 = [v3 previousLayoutState];
    v7 = [v6 bundleIDShowingAppExpose];
    [v3 setRequestedAppExposeBundleID:v7];
  }
}

void __77__SBSwitcherShelfViewController__performNewWindowRequestForBundleIdentifier___block_invoke_3(void *a1, uint64_t a2)
{
  v4 = [*(a1[4] + 1072) layoutRole];
  v5 = a1[5];
  if (v4 == a2)
  {
    v6 = a1[6];
    v7 = [*(a1[4] + 1072) layoutRole];

    [v5 setEntity:v6 forLayoutRole:v7];
  }

  else
  {
    v8 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    [v5 setEntity:v8 forLayoutRole:a2];
  }
}

- (void)_performSwitcherTransitionRequest:(id)a3
{
  v4 = a3;
  v5 = +[SBWorkspace mainWorkspace];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SBSwitcherShelfViewController__performSwitcherTransitionRequest___block_invoke;
  v7[3] = &unk_2783B3CF0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 requestTransitionWithOptions:0 builder:0 validator:v7];
}

uint64_t __67__SBSwitcherShelfViewController__performSwitcherTransitionRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  [v4 _configureRequest:v3 forSwitcherTransitionRequest:*(a1 + 32) withEventLabel:@"ShelfTransition"];
  v5 = [*(*(a1 + 40) + 1072) displayMode];
  v6 = [*(a1 + 32) appLayout];
  v7 = v6;
  if (v6)
  {
    v8 = v5 == 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if ([v6 environment] != 3)
    {
      v9 = [v7 environment];
      v10 = &SBLayoutRolePrimary;
      if (v9 != 1)
      {
        v10 = &SBLayoutRoleFloating;
      }

      v11 = *v10;
      v12 = [v3 applicationContext];
      v13 = [v12 entityForLayoutRole:v11];

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __67__SBSwitcherShelfViewController__performSwitcherTransitionRequest___block_invoke_2;
      v25[3] = &unk_2783A96A0;
      v25[4] = *(a1 + 40);
      v26 = v13;
      v14 = v13;
      [v3 modifyApplicationContext:v25];
    }
  }

  else if (v6 && !v5 && [v6 environment] != 3 && objc_msgSend(v7, "environment") != 2)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __67__SBSwitcherShelfViewController__performSwitcherTransitionRequest___block_invoke_4;
    v24[3] = &unk_2783A98C8;
    v24[4] = *(a1 + 40);
    [v3 modifyApplicationContext:v24];
  }

  v15 = [*(a1 + 32) floatingConfiguration];
  v16 = [*(a1 + 40) _windowScene];
  v17 = [v16 layoutStateProvider];
  v18 = [v17 layoutState];
  v19 = [v18 floatingConfiguration];

  if ([v7 environment] == 3 && !SBFloatingConfigurationIsStashed(v19))
  {
    if (SBFloatingConfigurationIsLeft(v19))
    {
      v20 = 3;
    }

    else
    {
      IsRight = SBFloatingConfigurationIsRight(v19);
      v20 = 4;
      if (!IsRight)
      {
        v20 = v15;
      }
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __67__SBSwitcherShelfViewController__performSwitcherTransitionRequest___block_invoke_5;
    v23[3] = &__block_descriptor_40_e54_v16__0__SBWorkspaceApplicationSceneTransitionContext_8l;
    v23[4] = v20;
    [v3 modifyApplicationContext:v23];
  }

  [v3 setSource:52];

  return 1;
}

void __67__SBSwitcherShelfViewController__performSwitcherTransitionRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__SBSwitcherShelfViewController__performSwitcherTransitionRequest___block_invoke_3;
  v6[3] = &unk_2783B5080;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  SBLayoutRoleEnumerateValidRoles(v6);
  [v5 setRequestedWindowPickerRole:{objc_msgSend(*(*(a1 + 32) + 1072), "layoutRole")}];
  [v5 setActivatingEntity:0];
}

void __67__SBSwitcherShelfViewController__performSwitcherTransitionRequest___block_invoke_3(void *a1, uint64_t a2)
{
  v4 = [*(a1[4] + 1072) layoutRole];
  v5 = a1[5];
  if (v4 == a2)
  {
    v6 = a1[6];
    v7 = [*(a1[4] + 1072) layoutRole];

    [v5 setEntity:v6 forLayoutRole:v7];
  }

  else
  {
    v8 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    [v5 setEntity:v8 forLayoutRole:a2];
  }
}

void __67__SBSwitcherShelfViewController__performSwitcherTransitionRequest___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1072);
  v3 = a2;
  v4 = [v2 bundleIdentifier];
  [v3 setRequestedAppExposeBundleID:v4];
}

- (void)dismissShelfWithTransitionSource:(int64_t)a3
{
  v5 = +[SBWorkspace mainWorkspace];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__SBSwitcherShelfViewController_dismissShelfWithTransitionSource___block_invoke;
  v6[3] = &unk_2783B3F08;
  v6[4] = self;
  v6[5] = a3;
  [v5 requestTransitionWithOptions:0 builder:v6 validator:0];
}

void __66__SBSwitcherShelfViewController_dismissShelfWithTransitionSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setSource:v3];
  [v4 setEventLabel:@"DismissShelf"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__SBSwitcherShelfViewController_dismissShelfWithTransitionSource___block_invoke_2;
  v5[3] = &unk_2783A98C8;
  v5[4] = *(a1 + 32);
  [v4 modifyApplicationContext:v5];
}

void __66__SBSwitcherShelfViewController_dismissShelfWithTransitionSource___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 1072) displayMode];
  if (v3 == 1)
  {
    [v5 setRequestedAppExposeBundleID:0];
  }

  else
  {
    v4 = v5;
    if (v3)
    {
      goto LABEL_6;
    }

    [v5 setRequestedWindowPickerRole:0];
  }

  v4 = v5;
LABEL_6:
}

- (void)_dockHeightWillChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"SBFloatingDockControllerHeight"];
  [v6 doubleValue];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKey:@"SBFloatingDockControllerHeightChangeInteractive"];
  v9 = [v8 BOOLValue];

  if ((BSFloatIsZero() & 1) == 0 && (v9 & 1) == 0 && self->_presented)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__SBSwitcherShelfViewController__dockHeightWillChange___block_invoke;
    v10[3] = &unk_2783A8C18;
    v10[4] = self;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v10];
  }
}

- (SBSwitcherShelfViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SBSwitcherShelfViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)presentationTargetFrame
{
  x = self->_presentationTargetFrame.origin.x;
  y = self->_presentationTargetFrame.origin.y;
  width = self->_presentationTargetFrame.size.width;
  height = self->_presentationTargetFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end