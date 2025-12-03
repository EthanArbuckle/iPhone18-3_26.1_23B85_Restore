@interface SBSwitcherShelfViewController
- (BOOL)_dismissShelfIfNeededWithLocation:(CGPoint)location window:(id)window;
- (BOOL)switcherContentController:(id)controller supportsTitleItemsForAppLayout:(id)layout;
- (BOOL)transientUIHandledTouch:(id)touch withSystemGestureRecognizer:(id)recognizer;
- (CGRect)_frameForCenterItemWithConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation;
- (CGRect)_frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration;
- (CGRect)_frameForItemWithRole:(int64_t)role inMainAppLayout:(id)layout interfaceOrientation:(int64_t)orientation;
- (CGRect)itemFrameForAppLayout:(id)layout;
- (CGRect)presentationTargetFrame;
- (CGRect)switcherContentController:(id)controller frameForCenterItemWithConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation;
- (CGRect)switcherContentController:(id)controller frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration;
- (CGRect)switcherContentController:(id)controller frameForItemWithRole:(int64_t)role inMainAppLayout:(id)layout interfaceOrientation:(int64_t)orientation;
- (SBSwitcherShelfViewController)initWithShelf:(id)shelf dataSource:(id)source delegate:(id)delegate;
- (SBSwitcherShelfViewControllerDataSource)dataSource;
- (SBSwitcherShelfViewControllerDelegate)delegate;
- (id)_appLayouts;
- (id)_transitionEventForContext:(id)context identifier:(id)identifier phase:(unint64_t)phase animated:(BOOL)animated;
- (id)_windowScene;
- (id)shelfLiveContentOverlayCoordinator:(id)coordinator liveViewForAppLayout:(id)layout;
- (id)windowManagementContextForSwitcherContentController:(id)controller;
- (int64_t)nextDisplayItemInteractionTimeForSwitcherContentController:(id)controller;
- (void)_dockHeightWillChange:(id)change;
- (void)_performNewWindowRequestForBundleIdentifier:(id)identifier;
- (void)_performSwitcherTransitionRequest:(id)request;
- (void)_rebuildCachedAppLayouts;
- (void)assistantWillAppear:(id)appear windowScene:(id)scene;
- (void)clientDidResetForUserAttention:(id)attention withEvent:(id)event;
- (void)dealloc;
- (void)dismissShelfWithTransitionSource:(int64_t)source;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionWillEndWithTransitionContext:(id)context;
- (void)loadView;
- (void)performKeyboardShortcutAction:(int64_t)action;
- (void)performTransitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion;
- (void)setContentOptions:(unint64_t)options;
- (void)setContentOrientation:(int64_t)orientation;
- (void)setHomeAffordancePortalView:(id)view;
- (void)setIgnoredDisplayItems:(id)items;
- (void)setPresented:(BOOL)presented withTargetFrame:(CGRect)frame style:(unint64_t)style completion:(id)completion;
- (void)switcherContentController:(id)controller deletedDisplayItem:(id)item inAppLayout:(id)layout forReason:(int64_t)reason;
- (void)transientUI:(id)i wasIndirectPannedToDismissFromGestureRecognizer:(id)recognizer;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation SBSwitcherShelfViewController

- (SBSwitcherShelfViewController)initWithShelf:(id)shelf dataSource:(id)source delegate:(id)delegate
{
  shelfCopy = shelf;
  sourceCopy = source;
  delegateCopy = delegate;
  v30.receiver = self;
  v30.super_class = SBSwitcherShelfViewController;
  v12 = [(SBSwitcherShelfViewController *)&v30 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_shelf, shelf);
    objc_storeWeak(&v13->_dataSource, sourceCopy);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = SBAppLayoutGenericAppLayoutWithConfiguration(3);
    [sourceCopy switcherShelfViewController:v13 frameForItemWithRole:1 inMainAppLayout:v14 interfaceOrientation:3];
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
    view = [(SBFluidSwitcherViewController *)self->_contentViewController view];
    [view setHidden:1];
  }
}

- (void)viewWillLayoutSubviews
{
  v39.receiver = self;
  v39.super_class = SBSwitcherShelfViewController;
  [(SBSwitcherShelfViewController *)&v39 viewWillLayoutSubviews];
  view = [(SBSwitcherShelfViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  UIRectGetCenter();
  v13 = v12;
  v15 = v14;
  view2 = [(SBFluidSwitcherViewController *)self->_contentViewController view];
  [view2 setBounds:{v5, v7, v9, v11}];

  view3 = [(SBFluidSwitcherViewController *)self->_contentViewController view];
  [view3 setCenter:{v13, v15}];

  homeAffordancePortalView = self->_homeAffordancePortalView;
  if (homeAffordancePortalView)
  {
    sourceView = [(SBPortalView *)homeAffordancePortalView sourceView];
    v20 = sourceView;
    if (sourceView)
    {
      [sourceView bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [v20 center];
      v30 = v29;
      v32 = v31;
      view4 = [(SBSwitcherShelfViewController *)self view];
      [v20 convertPoint:view4 toView:{v30, v32}];
      v35 = v34;
      v37 = v36;

      [(SBPortalView *)self->_homeAffordancePortalView setBounds:v22, v24, v26, v28];
      [(SBPortalView *)self->_homeAffordancePortalView setCenter:v35, v37];
    }

    view5 = [(SBSwitcherShelfViewController *)self view];
    [view5 bringSubviewToFront:self->_homeAffordancePortalView];
  }
}

- (void)viewDidLayoutSubviews
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SBSwitcherShelfViewController;
  [(SBSwitcherShelfViewController *)&v9 viewDidLayoutSubviews];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = @"SBSwitcherShelfHeight";
  v4 = MEMORY[0x277CCABB0];
  view = [(SBSwitcherShelfViewController *)self view];
  [view bounds];
  v7 = [v4 numberWithDouble:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [defaultCenter postNotificationName:@"SBSwitcherShelfHeightDidChangeNotification" object:self userInfo:v8];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SBSwitcherShelfViewController;
  [(SBSwitcherShelfViewController *)&v7 viewWillAppear:appear];
  _windowScene = [(SBSwitcherShelfViewController *)self _windowScene];
  transientUIInteractionManager = [_windowScene transientUIInteractionManager];

  [transientUIInteractionManager registerParticipantForTapToDismiss:self];
  [transientUIInteractionManager registerParticipantForIndirectPanToDismiss:self];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__dockHeightWillChange_ name:@"SBFloatingDockControllerHeightWillChangeNotification" object:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SBSwitcherShelfViewController;
  [(SBSwitcherShelfViewController *)&v9 viewWillDisappear:disappear];
  _windowScene = [(SBSwitcherShelfViewController *)self _windowScene];
  transientUIInteractionManager = [_windowScene transientUIInteractionManager];

  [transientUIInteractionManager unregisterParticipantForTapToDismiss:self];
  [transientUIInteractionManager unregisterParticipantForIndirectPanToDismiss:self];
  [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = @"SBSwitcherShelfHeight";
  v11[0] = &unk_283372458;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [defaultCenter postNotificationName:@"SBSwitcherShelfHeightDidChangeNotification" object:self userInfo:v7];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self];
}

- (void)setContentOptions:(unint64_t)options
{
  if (self->_contentOptions != options)
  {
    self->_contentOptions = options;
    [(SBSwitcherShelfViewController *)self _rebuildCachedAppLayouts];
  }
}

- (void)setIgnoredDisplayItems:(id)items
{
  itemsCopy = items;
  if ((BSEqualSets() & 1) == 0)
  {
    v4 = [itemsCopy copy];
    ignoredDisplayItems = self->_ignoredDisplayItems;
    self->_ignoredDisplayItems = v4;

    [(SBSwitcherShelfViewController *)self _rebuildCachedAppLayouts];
  }
}

- (void)setContentOrientation:(int64_t)orientation
{
  orientationCopy = orientation;
  if ((orientation - 1) <= 1 && [(SBSwitcherShelf *)self->_shelf displayMode]== 1)
  {
    orientationCopy = 3;
  }

  if (orientationCopy != self->_contentOrientation)
  {
    self->_contentOrientation = orientationCopy;
    [(SBFluidSwitcherViewController *)self->_contentViewController setContentOrientation:orientationCopy];
    view = [(SBSwitcherShelfViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_rebuildCachedAppLayouts
{
  v131 = *MEMORY[0x277D85DE8];
  if (!self->_shelf)
  {
    return;
  }

  selfCopy = self;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _appLayouts = [(SBSwitcherShelfViewController *)selfCopy _appLayouts];
  v5 = objc_opt_new();
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v6 = _appLayouts;
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
          allItems = [v11 allItems];
          [v5 addObjectsFromArray:allItems];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v117 objects:v130 count:16];
    }

    while (v8);
  }

  v87 = objc_opt_new();
  displayMode = [(SBSwitcherShelf *)selfCopy->_shelf displayMode];
  v88 = selfCopy;
  if (displayMode == 1)
  {
    contentOptions = selfCopy->_contentOptions;
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
              leafAppLayouts = [v17 leafAppLayouts];
              v19 = [leafAppLayouts countByEnumeratingWithState:&v97 objects:v125 count:16];
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
                      objc_enumerationMutation(leafAppLayouts);
                    }

                    v23 = *(*(&v97 + 1) + 8 * k);
                    allItems2 = [v23 allItems];
                    firstObject = [allItems2 firstObject];
                    bundleIdentifier = [firstObject bundleIdentifier];
                    bundleIdentifier2 = [(SBSwitcherShelf *)selfCopy->_shelf bundleIdentifier];
                    v28 = [bundleIdentifier isEqual:bundleIdentifier2];

                    selfCopy = v88;
                    if (v28 && ([v23 containsAnyItemFromSet:v88->_ignoredDisplayItems] & 1) == 0)
                    {
                      [v87 addObject:v23];
                    }
                  }

                  v20 = [leafAppLayouts countByEnumeratingWithState:&v97 objects:v125 count:16];
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
      contentOptions = selfCopy->_contentOptions;
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
            leafAppLayouts2 = [v33 leafAppLayouts];
            v35 = [leafAppLayouts2 countByEnumeratingWithState:&v89 objects:v123 count:16];
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
                    objc_enumerationMutation(leafAppLayouts2);
                  }

                  v39 = *(*(&v89 + 1) + 8 * m);
                  allItems3 = [v39 allItems];
                  firstObject2 = [allItems3 firstObject];
                  bundleIdentifier3 = [firstObject2 bundleIdentifier];
                  bundleIdentifier4 = [(SBSwitcherShelf *)v88->_shelf bundleIdentifier];
                  v44 = [bundleIdentifier3 isEqual:bundleIdentifier4];

                  if (v44 && ([v39 containsAnyItemFromSet:v88->_ignoredDisplayItems] & 1) == 0)
                  {
                    [v87 addObject:v39];
                  }
                }

                v36 = [leafAppLayouts2 countByEnumeratingWithState:&v89 objects:v123 count:16];
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

  if (!displayMode)
  {
    v14 = selfCopy->_contentOptions;
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

      selfCopy = v88;
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

    selfCopy = v88;
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

    selfCopy = v88;
    v5 = v77;
  }

LABEL_93:
  if ((selfCopy->_contentOptions & 4) != 0)
  {
    v63 = [SBDisplayItem alloc];
    bundleIdentifier5 = [(SBSwitcherShelf *)selfCopy->_shelf bundleIdentifier];
    v65 = [(SBDisplayItem *)v63 initWithType:6 bundleIdentifier:bundleIdentifier5 uniqueIdentifier:&stru_283094718];

    _sbWindowScene = [(UIViewController *)selfCopy _sbWindowScene];
    layoutStateProvider = [_sbWindowScene layoutStateProvider];
    layoutState = [layoutStateProvider layoutState];
    displayOrdinal = [layoutState displayOrdinal];

    v70 = [SBAppLayout alloc];
    v71 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    v121 = v71;
    v122 = v65;
    v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
    v73 = displayOrdinal;
    selfCopy = v88;
    v74 = [(SBAppLayout *)v70 initWithItemsForLayoutRoles:v72 configuration:1 environment:1 preferredDisplayOrdinal:v73];

    [v87 insertObject:v74 atIndex:0];
  }

  objc_storeStrong(&selfCopy->_appLayouts, v87);
  viewIfLoaded = [(SBFluidSwitcherViewController *)selfCopy->_contentViewController viewIfLoaded];

  if (viewIfLoaded)
  {
    [(SBFluidSwitcherViewController *)selfCopy->_contentViewController noteAppLayoutsDidChange];
  }
}

- (void)setPresented:(BOOL)presented withTargetFrame:(CGRect)frame style:(unint64_t)style completion:(id)completion
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  presentedCopy = presented;
  v32[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v14 = completionCopy;
  if (self->_presented == presentedCopy)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

  else
  {
    self->_presented = presentedCopy;
    self->_presentationTargetFrame.origin.x = x;
    self->_presentationTargetFrame.origin.y = y;
    self->_presentationTargetFrame.size.width = width;
    self->_presentationTargetFrame.size.height = height;
    self->_animationStyle = style;
    if (presentedCopy)
    {
      view = [(SBFluidSwitcherViewController *)self->_contentViewController view];
      [view setHidden:0];

      v16 = 1;
    }

    else
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v31 = @"SBSwitcherShelfHeight";
      v32[0] = &unk_283372458;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      [defaultCenter postNotificationName:@"SBSwitcherShelfHeightDidChangeNotification" object:self userInfo:v18];

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
    applicationContext = [v20 applicationContext];
    [(SBFluidSwitcherViewController *)contentViewController performTransitionWithContext:applicationContext animated:1 completion:v21];

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

- (void)performTransitionWithContext:(id)context animated:(BOOL)animated completion:(id)completion
{
  v42[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  request = [context request];
  applicationContext = [request applicationContext];
  layoutState = [applicationContext layoutState];

  if ([(SBSwitcherShelf *)self->_shelf displayMode])
  {
    if ([(SBSwitcherShelf *)self->_shelf displayMode]!= 1 || [(SBSwitcherShelf *)self->_shelf layoutRole]!= 3)
    {
      appLayout = [layoutState appLayout];
      v13 = [appLayout leafAppLayoutForRole:{-[SBSwitcherShelf layoutRole](self->_shelf, "layoutRole")}];

      if (!v13)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    floatingAppLayout = [layoutState floatingAppLayout];
  }

  else
  {
    floatingAppLayout = [layoutState appLayout];
  }

  v13 = floatingAppLayout;
  if (!floatingAppLayout)
  {
LABEL_10:
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    v14 = 0;
    goto LABEL_20;
  }

LABEL_9:
  if ([(NSArray *)self->_appLayouts containsObject:v13])
  {
    goto LABEL_10;
  }

  v34 = request;
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
    [(SBFluidSwitcherViewController *)v28 performAnimatedInsertionOfAppLayouts:v29 atIndexes:v31 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  request = v34;
LABEL_20:
}

- (void)performKeyboardShortcutAction:(int64_t)action
{
  if (action == 3)
  {
    [(SBSwitcherShelfViewController *)self dismissShelfForShelfTransition];
  }
}

- (CGRect)itemFrameForAppLayout:(id)layout
{
  [(SBFluidSwitcherViewController *)self->_contentViewController completedTransitionFrameForAppLayout:layout];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setHomeAffordancePortalView:(id)view
{
  viewCopy = view;
  homeAffordancePortalView = self->_homeAffordancePortalView;
  v11 = viewCopy;
  if (homeAffordancePortalView != viewCopy)
  {
    if (homeAffordancePortalView)
    {
      [(SBPortalView *)homeAffordancePortalView removeFromSuperview];
      v7 = self->_homeAffordancePortalView;
      self->_homeAffordancePortalView = 0;
    }

    objc_storeStrong(&self->_homeAffordancePortalView, view);
    v8 = self->_homeAffordancePortalView;
    if (v8)
    {
      [(SBPortalView *)v8 setPassesTouchesThrough:1];
      view = [(SBSwitcherShelfViewController *)self view];
      [view addSubview:self->_homeAffordancePortalView];

      view2 = [(SBSwitcherShelfViewController *)self view];
      [view2 setNeedsLayout];
    }
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    [(SBFluidSwitcherViewController *)self->_contentViewController layoutStateTransitionCoordinator:coordinatorCopy transitionDidBeginWithTransitionContext:contextCopy];
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionWillEndWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    [(SBFluidSwitcherViewController *)self->_contentViewController layoutStateTransitionCoordinator:coordinatorCopy transitionWillEndWithTransitionContext:contextCopy];
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    [(SBFluidSwitcherViewController *)self->_contentViewController layoutStateTransitionCoordinator:coordinatorCopy transitionDidEndWithTransitionContext:contextCopy];
  }
}

- (int64_t)nextDisplayItemInteractionTimeForSwitcherContentController:(id)controller
{
  dataSource = [(SBSwitcherShelfViewController *)self dataSource];
  v5 = [dataSource nextDisplayItemInteractionTimeForSwitcherShelfViewController:self];

  return v5;
}

- (CGRect)switcherContentController:(id)controller frameForItemWithRole:(int64_t)role inMainAppLayout:(id)layout interfaceOrientation:(int64_t)orientation
{
  layoutCopy = layout;
  displayMode = [(SBSwitcherShelf *)self->_shelf displayMode];
  if (displayMode == 1)
  {
    SBRectWithSize();
    goto LABEL_5;
  }

  if (!displayMode)
  {
    [(SBSwitcherShelfViewController *)self _frameForItemWithRole:role inMainAppLayout:layoutCopy interfaceOrientation:orientation];
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

- (CGRect)switcherContentController:(id)controller frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration
{
  displayMode = [(SBSwitcherShelf *)self->_shelf displayMode];
  if (displayMode == 1)
  {
    SBRectWithSize();
  }

  else if (!displayMode)
  {
    [(SBSwitcherShelfViewController *)self _frameForFloatingAppLayoutInInterfaceOrientation:orientation floatingConfiguration:configuration];
  }

  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)switcherContentController:(id)controller frameForCenterItemWithConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation
{
  [(SBSwitcherShelfViewController *)self _frameForCenterItemWithConfiguration:configuration interfaceOrientation:orientation];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)switcherContentController:(id)controller supportsTitleItemsForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy type])
  {
    v5 = [layoutCopy type] == 5;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)windowManagementContextForSwitcherContentController:(id)controller
{
  v3 = [[SBSwitcherWindowManagementContext alloc] initWithBaseStyle:1 automaticStageCreationEnabled:0 restoresPreviouslyOpenWindows:0];

  return v3;
}

- (void)switcherContentController:(id)controller deletedDisplayItem:(id)item inAppLayout:(id)layout forReason:(int64_t)reason
{
  itemCopy = item;
  layoutCopy = layout;
  v11 = [layoutCopy layoutRoleForItem:itemCopy];
  contentViewController = self->_contentViewController;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100__SBSwitcherShelfViewController_switcherContentController_deletedDisplayItem_inAppLayout_forReason___block_invoke;
  v14[3] = &unk_2783AB2A8;
  selfCopy = self;
  reasonCopy = reason;
  v15 = itemCopy;
  v13 = itemCopy;
  [(SBFluidSwitcherViewController *)contentViewController removeLayoutRole:v11 inSpace:layoutCopy mutationBlock:v14 reason:reason];
}

void __100__SBSwitcherShelfViewController_switcherContentController_deletedDisplayItem_inAppLayout_forReason___block_invoke(uint64_t a1)
{
  v2 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  [v2 _removeDisplayItem:*(a1 + 32) forReason:*(a1 + 48)];
  [*(a1 + 40) _rebuildCachedAppLayouts];
}

- (BOOL)_dismissShelfIfNeededWithLocation:(CGPoint)location window:(id)window
{
  y = location.y;
  x = location.x;
  windowCopy = window;
  view = [(SBSwitcherShelfViewController *)self view];
  screen = [windowCopy screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];

  [windowCopy convertPoint:fixedCoordinateSpace toCoordinateSpace:{x, y}];
  [view convertPoint:fixedCoordinateSpace fromCoordinateSpace:?];
  v11 = [view hitTest:0 withEvent:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained switcherShelfViewController:self hitTestedToTopAffordance:windowCopy window:{x, y}];

  if (v11)
  {
    view2 = [(SBSwitcherShelfViewController *)self view];
    if (v11 == view2)
    {
      v16 = 1;
    }

    else
    {
      view3 = [(SBFluidSwitcherViewController *)self->_contentViewController view];
      v16 = [v11 isDescendantOfView:view3] ^ 1;
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

- (BOOL)transientUIHandledTouch:(id)touch withSystemGestureRecognizer:(id)recognizer
{
  touchCopy = touch;
  view = [touchCopy view];
  [touchCopy locationInView:view];
  v8 = v7;
  v10 = v9;

  window = [touchCopy window];
  view2 = [touchCopy view];
  [window convertPoint:view2 fromView:{v8, v10}];
  v14 = v13;
  v16 = v15;

  window2 = [touchCopy window];

  LOBYTE(self) = [(SBSwitcherShelfViewController *)self _dismissShelfIfNeededWithLocation:window2 window:v14, v16];
  return self;
}

- (void)transientUI:(id)i wasIndirectPannedToDismissFromGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  iCopy = i;
  view = [recognizerCopy view];
  [recognizerCopy locationInView:view];
  v10 = v9;
  v12 = v11;

  window = [iCopy window];
  view2 = [recognizerCopy view];

  [window convertPoint:view2 fromView:{v10, v12}];
  v16 = v15;
  v18 = v17;

  window2 = [iCopy window];

  [(SBSwitcherShelfViewController *)self _dismissShelfIfNeededWithLocation:window2 window:v16, v18];
}

- (id)shelfLiveContentOverlayCoordinator:(id)coordinator liveViewForAppLayout:(id)layout
{
  layoutCopy = layout;
  delegate = [(SBSwitcherShelfViewController *)self delegate];
  v7 = [delegate switcherShelfViewController:self liveViewForAppLayout:layoutCopy];

  return v7;
}

- (void)assistantWillAppear:(id)appear windowScene:(id)scene
{
  if (self->_presented)
  {
    [(SBSwitcherShelfViewController *)self dismissShelfForShelfTransition:appear];
  }
}

- (void)clientDidResetForUserAttention:(id)attention withEvent:(id)event
{
  v5 = [(SBWorkspace *)SBMainWorkspace mainWorkspace:attention];
  keyboardFocusController = [v5 keyboardFocusController];
  sceneWithFocusIncludingSpringBoard = [keyboardFocusController sceneWithFocusIncludingSpringBoard];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = sceneWithFocusIncludingSpringBoard;
  if (isKindOfClass)
  {
    clientHandle = [sceneWithFocusIncludingSpringBoard clientHandle];
    processHandle = [clientHandle processHandle];

    currentProcess = [MEMORY[0x277D46F48] currentProcess];
    if (([processHandle isEqual:currentProcess] & 1) == 0 && self->_presented)
    {
      [(SBSwitcherShelfViewController *)self dismissShelfForShelfTransition];
    }

    v8 = sceneWithFocusIncludingSpringBoard;
  }
}

- (id)_windowScene
{
  dataSource = [(SBSwitcherShelfViewController *)self dataSource];
  v4 = [dataSource windowSceneForSwitcherShelfViewController:self];

  return v4;
}

- (id)_appLayouts
{
  dataSource = [(SBSwitcherShelfViewController *)self dataSource];
  v4 = [dataSource appLayoutsForSwitcherShelfViewController:self];

  return v4;
}

- (CGRect)_frameForItemWithRole:(int64_t)role inMainAppLayout:(id)layout interfaceOrientation:(int64_t)orientation
{
  layoutCopy = layout;
  dataSource = [(SBSwitcherShelfViewController *)self dataSource];
  [dataSource switcherShelfViewController:self frameForItemWithRole:role inMainAppLayout:layoutCopy interfaceOrientation:orientation];
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

- (CGRect)_frameForFloatingAppLayoutInInterfaceOrientation:(int64_t)orientation floatingConfiguration:(int64_t)configuration
{
  dataSource = [(SBSwitcherShelfViewController *)self dataSource];
  [dataSource switcherShelfViewController:self frameForFloatingAppLayoutInInterfaceOrientation:orientation floatingConfiguration:configuration];
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

- (CGRect)_frameForCenterItemWithConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation
{
  dataSource = [(SBSwitcherShelfViewController *)self dataSource];
  [dataSource switcherShelfViewController:self frameForCenterItemWithConfiguration:configuration interfaceOrientation:orientation];
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

- (id)_transitionEventForContext:(id)context identifier:(id)identifier phase:(unint64_t)phase animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  contextCopy = context;
  dataSource = [(SBSwitcherShelfViewController *)self dataSource];
  v13 = [dataSource switcherShelfViewController:self transitionEventForContext:contextCopy identifier:identifierCopy phase:phase animated:animatedCopy];

  return v13;
}

- (void)_performNewWindowRequestForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 applicationWithBundleIdentifier:identifierCopy];

  v7 = +[(SBWorkspace *)SBMainWorkspace];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SBSwitcherShelfViewController__performNewWindowRequestForBundleIdentifier___block_invoke;
  v9[3] = &unk_2783AAA48;
  v10 = v6;
  selfCopy = self;
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

- (void)_performSwitcherTransitionRequest:(id)request
{
  requestCopy = request;
  v5 = +[SBWorkspace mainWorkspace];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SBSwitcherShelfViewController__performSwitcherTransitionRequest___block_invoke;
  v7[3] = &unk_2783B3CF0;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
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

- (void)dismissShelfWithTransitionSource:(int64_t)source
{
  v5 = +[SBWorkspace mainWorkspace];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__SBSwitcherShelfViewController_dismissShelfWithTransitionSource___block_invoke;
  v6[3] = &unk_2783B3F08;
  v6[4] = self;
  v6[5] = source;
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

- (void)_dockHeightWillChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKey:@"SBFloatingDockControllerHeight"];
  [v6 doubleValue];

  userInfo2 = [changeCopy userInfo];

  v8 = [userInfo2 objectForKey:@"SBFloatingDockControllerHeightChangeInteractive"];
  bOOLValue = [v8 BOOLValue];

  if ((BSFloatIsZero() & 1) == 0 && (bOOLValue & 1) == 0 && self->_presented)
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