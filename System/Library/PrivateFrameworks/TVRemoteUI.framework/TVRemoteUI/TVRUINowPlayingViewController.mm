@interface TVRUINowPlayingViewController
- (BOOL)_canDisplayInsightsTabForNowPlayingInfo:(id)info;
- (BOOL)_viewControllerIdentifierIsAvailable:(id)available;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (NSArray)allPossibleChildViewControllerIdentifiers;
- (NSArray)childViewControllerIdentifiers;
- (NSDictionary)childViewControllerDict;
- (TVRUIActionProviding)actionProvider;
- (TVRUIUpNextProviding)upNextProvider;
- (id)_availableTabToDisplayForNowPlayingInfo:(id)info;
- (id)_upNextIdentifier;
- (id)commandHandler;
- (id)makeTimedMetadataPlaybackInfo;
- (id)viewControllerForIdentifier:(id)identifier;
- (id)viewControllerForIndex:(unint64_t)index;
- (id)viewControllerIdentifierForIndex:(unint64_t)index;
- (unint64_t)indexForViewControllerIdentifier:(id)identifier;
- (void)_applyTransform:(CGAffineTransform *)transform toChildViewControllerAtIndex:(unint64_t)index;
- (void)_callChildViewControllerAppearanceForIdentifier:(id)identifier appearing:(BOOL)appearing;
- (void)_callChildViewControllerDisappearingForAllExceptIdentifier:(id)identifier;
- (void)_performTabAnimationFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex isInteractive:(BOOL)interactive interactivePercentage:(double)percentage;
- (void)_performTabAnimationFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex isInteractive:(BOOL)interactive interactivePercentage:(double)percentage animator:(id)animator;
- (void)_reconfigureTabsIfNeeded;
- (void)_tabAnimationDidCompleteWithFinalPosition:(int64_t)position viewControllerIndex:(unint64_t)index;
- (void)_updateSelectorControlHeight;
- (void)_updateViewControllerVisibilityForSelectedIdentifier:(id)identifier;
- (void)configureHierarchy;
- (void)configureSegControlOrDividerViewVisibility;
- (void)configureTimedMetadata;
- (void)configureTimedMetadataView;
- (void)forceTabSelectionToInfoTab;
- (void)panRecognizerDidFire:(id)fire;
- (void)setCommandHandler:(id)handler;
- (void)setNowPlayingInfo:(id)info;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation TVRUINowPlayingViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = TVRUINowPlayingViewController;
  [(TVRUINowPlayingViewController *)&v7 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TVRemoteUIInfoTabTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  [(TVRUINowPlayingViewController *)self setCurrentViewControllerIdentifier:v4];

  [(TVRUINowPlayingViewController *)self configureTimedMetadata];
  [(TVRUINowPlayingViewController *)self configureHierarchy];
  view = [(TVRUINowPlayingViewController *)self view];
  [view setNeedsLayout];

  view2 = [(TVRUINowPlayingViewController *)self view];
  [view2 layoutIfNeeded];

  [(TVRUINowPlayingViewController *)self _updateSelectorControlHeight];
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = TVRUINowPlayingViewController;
  [(TVRUINowPlayingViewController *)&v12 viewWillAppear:appear];
  overrideSelectedViewControllerIdentifier = [(TVRUINowPlayingViewController *)self overrideSelectedViewControllerIdentifier];

  if (overrideSelectedViewControllerIdentifier)
  {
    overrideSelectedViewControllerIdentifier2 = [(TVRUINowPlayingViewController *)self overrideSelectedViewControllerIdentifier];
    [(TVRUINowPlayingViewController *)self _updateViewControllerVisibilityForSelectedIdentifier:overrideSelectedViewControllerIdentifier2];

    [(TVRUINowPlayingViewController *)self setOverrideSelectedViewControllerIdentifier:0];
  }

  else
  {
    lastExplicitUserSelectedViewControllerIdentifier = [(TVRUINowPlayingViewController *)self lastExplicitUserSelectedViewControllerIdentifier];

    lastExplicitUserSelectedViewControllerIdentifier2 = [(TVRUINowPlayingViewController *)self lastExplicitUserSelectedViewControllerIdentifier];
    v8 = [(TVRUINowPlayingViewController *)self _viewControllerIdentifierIsAvailable:lastExplicitUserSelectedViewControllerIdentifier2];

    if (!lastExplicitUserSelectedViewControllerIdentifier || (v8 & 1) == 0)
    {
      nowPlayingInfo = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
      v10 = [(TVRUINowPlayingViewController *)self _availableTabToDisplayForNowPlayingInfo:nowPlayingInfo];
      [(TVRUINowPlayingViewController *)self setCurrentViewControllerIdentifier:v10];

      currentViewControllerIdentifier = [(TVRUINowPlayingViewController *)self currentViewControllerIdentifier];
      [(TVRUINowPlayingViewController *)self _updateViewControllerVisibilityForSelectedIdentifier:currentViewControllerIdentifier];
    }
  }
}

- (void)forceTabSelectionToInfoTab
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"TVRemoteUIInfoTabTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  [(TVRUINowPlayingViewController *)self setOverrideSelectedViewControllerIdentifier:v3];
}

- (void)setNowPlayingInfo:(id)info
{
  infoCopy = info;
  objc_storeStrong(&self->_nowPlayingInfo, info);
  metadata = [infoCopy metadata];
  tvrui_mediaIsStopped = [infoCopy tvrui_mediaIsStopped];
  tvrui_mediaIsIsPlaying = [infoCopy tvrui_mediaIsIsPlaying];
  mediaControlsViewController = [(TVRUINowPlayingViewController *)self mediaControlsViewController];
  [mediaControlsViewController setIsPlaying:tvrui_mediaIsIsPlaying];

  nowPlayingMiniPlayerViewController = [(TVRUINowPlayingViewController *)self nowPlayingMiniPlayerViewController];
  [nowPlayingMiniPlayerViewController setNowPlayingInfo:infoCopy];

  mediaControlsViewController2 = [(TVRUINowPlayingViewController *)self mediaControlsViewController];
  [mediaControlsViewController2 setIsPlaying:tvrui_mediaIsIsPlaying];

  mediaControlsViewController3 = [(TVRUINowPlayingViewController *)self mediaControlsViewController];
  [mediaControlsViewController3 setIsMediaActive:tvrui_mediaIsStopped ^ 1u];

  playbackRate = [infoCopy playbackRate];
  mediaControlsViewController4 = [(TVRUINowPlayingViewController *)self mediaControlsViewController];
  [mediaControlsViewController4 setPlaybackRate:playbackRate];

  nowPlayingInfoViewController = [(TVRUINowPlayingViewController *)self nowPlayingInfoViewController];
  [nowPlayingInfoViewController setNowPlayingInfo:infoCopy];

  castViewController = [(TVRUINowPlayingViewController *)self castViewController];
  [castViewController setMetadata:metadata];

  v17 = _TVRUINowPlayingLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (metadata)
  {
    if (v18)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v17, OS_LOG_TYPE_DEFAULT, "NowPlayingInfo update: metadata is not nil, try updating playback info", buf, 2u);
    }

    timedMetadataViewController = [(TVRUINowPlayingViewController *)self timedMetadataViewController];
    makeTimedMetadataPlaybackInfo = [(TVRUINowPlayingViewController *)self makeTimedMetadataPlaybackInfo];
    [timedMetadataViewController updatePlaybackInfo:makeTimedMetadataPlaybackInfo];

    [(TVRUINowPlayingViewController *)self configureSegControlOrDividerViewVisibility];
    [(TVRUINowPlayingViewController *)self _reconfigureTabsIfNeeded];
  }

  else
  {
    if (v18)
    {
      *v21 = 0;
      _os_log_impl(&dword_26CFEB000, v17, OS_LOG_TYPE_DEFAULT, "NowPlayingInfo update: metadata is nil, retain the last known content", v21, 2u);
    }

    [(TVRUINowPlayingViewController *)self configureSegControlOrDividerViewVisibility];
  }
}

- (id)commandHandler
{
  mediaControlsViewController = [(TVRUINowPlayingViewController *)self mediaControlsViewController];
  commandHandler = [mediaControlsViewController commandHandler];

  return commandHandler;
}

- (void)setCommandHandler:(id)handler
{
  handlerCopy = handler;
  if (([(TVRUINowPlayingViewController *)self isViewLoaded]& 1) == 0)
  {
    view = [(TVRUINowPlayingViewController *)self view];
  }

  mediaControlsViewController = [(TVRUINowPlayingViewController *)self mediaControlsViewController];
  [mediaControlsViewController setCommandHandler:handlerCopy];

  nowPlayingInfoViewController = [(TVRUINowPlayingViewController *)self nowPlayingInfoViewController];
  [nowPlayingInfoViewController setCommandHandler:handlerCopy];
}

- (void)viewWillLayoutSubviews
{
  v55[5] = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = TVRUINowPlayingViewController;
  [(TVRUINowPlayingViewController *)&v53 viewWillLayoutSubviews];
  traitCollection = [(TVRUINowPlayingViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    view = [(TVRUINowPlayingViewController *)self view];
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v56.origin.x = v7;
    v56.origin.y = v9;
    v56.size.width = v11;
    v56.size.height = v13;
    Width = CGRectGetWidth(v56);
    if ([(TVRUINowPlayingViewController *)self lastLayoutWidth])
    {
      lastLayoutWidth = [(TVRUINowPlayingViewController *)self lastLayoutWidth];
      [(TVRUINowPlayingViewController *)self setLastLayoutWidth:Width];
      if (lastLayoutWidth != Width)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__TVRUINowPlayingViewController_viewWillLayoutSubviews__block_invoke;
        block[3] = &unk_279D87C20;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }

    else
    {
      [(TVRUINowPlayingViewController *)self setLastLayoutWidth:Width];
    }
  }

  nowPlayingInfoViewController = [(TVRUINowPlayingViewController *)self nowPlayingInfoViewController];
  v55[0] = nowPlayingInfoViewController;
  upNextViewController = [(TVRUINowPlayingViewController *)self upNextViewController];
  v55[1] = upNextViewController;
  nowPlayingInfoViewController2 = [(TVRUINowPlayingViewController *)self nowPlayingInfoViewController];
  v55[2] = nowPlayingInfoViewController2;
  castViewController = [(TVRUINowPlayingViewController *)self castViewController];
  v55[3] = castViewController;
  timedMetadataViewController = [(TVRUINowPlayingViewController *)self timedMetadataViewController];
  v55[4] = timedMetadataViewController;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:5];

  view2 = [(TVRUINowPlayingViewController *)self view];
  tabSelectorControl = [(TVRUINowPlayingViewController *)self tabSelectorControl];
  [tabSelectorControl bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  tabSelectorControl2 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
  [view2 convertRect:tabSelectorControl2 fromView:{v25, v27, v29, v31}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v57.origin.x = v34;
  v57.origin.y = v36;
  v57.size.width = v38;
  v57.size.height = v40;
  MaxY = CGRectGetMaxY(v57);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v42 = v21;
  v43 = [v42 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = MaxY + 20.0;
    v46 = *v49;
    do
    {
      v47 = 0;
      do
      {
        if (*v49 != v46)
        {
          objc_enumerationMutation(v42);
        }

        [*(*(&v48 + 1) + 8 * v47++) tvrui_adjustTopMostChildScrollViewContentInset:{v45, 0.0, 0.0, 0.0, v48}];
      }

      while (v44 != v47);
      v44 = [v42 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v44);
  }
}

void __55__TVRUINowPlayingViewController_viewWillLayoutSubviews__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) allPossibleChildViewControllerIdentifiers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 32) viewControllerForIdentifier:*(*(&v10 + 1) + 8 * v6)];
        v8 = v7;
        if (v7)
        {
          v9 = [v7 view];
          [v9 setNeedsLayout];
          [v9 layoutIfNeeded];
          [v9 setNeedsUpdateConstraints];
          [v9 updateConstraintsIfNeeded];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)configureHierarchy
{
  v160 = *MEMORY[0x277D85DE8];
  v3 = +[TVRUIFeatures isSolariumEnabled];
  [(TVRUINowPlayingViewController *)self setOverrideUserInterfaceStyle:2];
  v134 = objc_alloc_init(TVRUINowPlayingBackgroundEffectViewController);
  view = [(TVRUINowPlayingBackgroundEffectViewController *)v134 view];
  contentView = [(TVRUINowPlayingBackgroundEffectViewController *)v134 contentView];
  v137 = objc_alloc_init(TVRUINowPlayingMiniPlayerViewController);
  [(TVRUINowPlayingMiniPlayerViewController *)v137 setCompactSolariumMode:v3];
  actionProvider = [(TVRUINowPlayingViewController *)self actionProvider];
  [(TVRUINowPlayingMiniPlayerViewController *)v137 setActionProvider:actionProvider];

  view2 = [(TVRUINowPlayingMiniPlayerViewController *)v137 view];
  v155[0] = MEMORY[0x277D85DD0];
  v155[1] = 3221225472;
  v155[2] = __51__TVRUINowPlayingViewController_configureHierarchy__block_invoke;
  v155[3] = &unk_279D87C20;
  v155[4] = self;
  [(TVRUINowPlayingMiniPlayerViewController *)v137 setUpdateTabsHandler:v155];
  v133 = objc_alloc_init(TVRUIMiniPlayerMediaControlsViewController);
  view3 = [(TVRUIMiniPlayerMediaControlsViewController *)v133 view];
  v140 = objc_alloc_init(TVRUINowPlayingInfoViewController);
  actionProvider2 = [(TVRUINowPlayingViewController *)self actionProvider];
  [(TVRUINowPlayingInfoViewController *)v140 setActionProvider:actionProvider2];

  styleProvider = [(TVRUINowPlayingViewController *)self styleProvider];
  [(TVRUINowPlayingInfoViewController *)v140 setStyleProvider:styleProvider];

  view4 = [(TVRUINowPlayingInfoViewController *)v140 view];
  [view4 setHidden:1];
  v144 = objc_alloc_init(TVRUIUpNextViewController);
  upNextProvider = [(TVRUINowPlayingViewController *)self upNextProvider];
  [(TVRUIUpNextViewController *)v144 setUpNextProvider:upNextProvider];

  actionProvider3 = [(TVRUINowPlayingViewController *)self actionProvider];
  [(TVRUIUpNextViewController *)v144 setActionProvider:actionProvider3];

  [(TVRUIUpNextViewController *)v144 setNowPlayingProvider:self];
  view5 = [(TVRUIUpNextViewController *)v144 view];
  [view5 setHidden:1];
  v136 = objc_alloc_init(TVRUICastViewController);
  actionProvider4 = [(TVRUINowPlayingViewController *)self actionProvider];
  [(TVRUICastViewController *)v136 setActionProvider:actionProvider4];

  view6 = [(TVRUICastViewController *)v136 view];
  [view6 setHidden:1];
  view7 = [(TVRUINowPlayingViewController *)self view];
  [view7 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [MEMORY[0x277D75348] colorWithWhite:0.1 alpha:1.0];
  [view7 setBackgroundColor:v19];

  [(TVRUINowPlayingViewController *)self bs_addChildViewController:v140];
  [(TVRUINowPlayingViewController *)self bs_addChildViewController:v144];
  [(TVRUINowPlayingViewController *)self bs_addChildViewController:v136];
  [(TVRUINowPlayingViewController *)self bs_addChildViewController:v134];
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v158[0] = v137;
  v158[1] = v133;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:2];
  v21 = [v20 countByEnumeratingWithState:&v151 objects:v159 count:16];
  if (v21)
  {
    v22 = *v152;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v152 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v151 + 1) + 8 * i);
        [(TVRUINowPlayingViewController *)self bs_addChildViewController:v24];
        view8 = [v24 view];
        [contentView addSubview:view8];
      }

      v21 = [v20 countByEnumeratingWithState:&v151 objects:v159 count:16];
    }

    while (v21);
  }

  childViewControllerIdentifiers = [(TVRUINowPlayingViewController *)self childViewControllerIdentifiers];
  v130 = objc_alloc_init(TVRUIDarkStyleProvider);
  v146 = [[TVRUITabSelectorControl alloc] initWithItems:childViewControllerIdentifiers styleProvider:v130];
  [(TVRUITabSelectorControl *)v146 setDelegate:self];
  [(TVRUITabSelectorControl *)v146 setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:v146];
  +[TVRUITabSelectorControl defaultHeight];
  v27 = v26;
  heightAnchor = [(TVRUITabSelectorControl *)v146 heightAnchor];
  v132 = [heightAnchor constraintEqualToConstant:v27];

  v29 = objc_alloc(MEMORY[0x277D75D18]);
  v145 = [v29 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v145 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [MEMORY[0x277D75348] colorWithWhite:0.4 alpha:0.9];
  [v145 setBackgroundColor:v30];

  [contentView addSubview:v145];
  v129 = objc_alloc_init(MEMORY[0x277D75FC0]);
  [v129 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  if (v3)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v31 + *MEMORY[0x277D77580] * 2.0 + 18.0;
  }

  if (v3)
  {
    v161.origin.x = v12;
    v161.origin.y = v14;
    v161.size.width = v16;
    v161.size.height = v18;
    Height = CGRectGetHeight(v161);
    v162.origin.x = v12;
    v162.origin.y = v14;
    v162.size.width = v16;
    v162.size.height = v18;
    v34 = Height * 0.1;
    v35 = CGRectGetHeight(v162) * 0.1;
  }

  else
  {
    v35 = 46.0;
    v34 = 37.0;
  }

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view6 setTranslatesAutoresizingMaskIntoConstraints:0];
  traitCollection = [(TVRUINowPlayingViewController *)self traitCollection];
  v37 = [traitCollection userInterfaceIdiom] == 1;

  LODWORD(v38) = 1144750080;
  [view3 setContentHuggingPriority:1 forAxis:v38];
  v52 = MEMORY[0x277CCAAD0];
  topAnchor = [view topAnchor];
  topAnchor2 = [view7 topAnchor];
  v126 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v157[0] = v126;
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [view7 leadingAnchor];
  v123 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v157[1] = v123;
  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [view7 trailingAnchor];
  v120 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v157[2] = v120;
  topAnchor3 = [view2 topAnchor];
  topAnchor4 = [contentView topAnchor];
  v117 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v32];
  v157[3] = v117;
  leadingAnchor3 = [view2 leadingAnchor];
  leadingAnchor4 = [contentView leadingAnchor];
  v114 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v157[4] = v114;
  trailingAnchor3 = [view2 trailingAnchor];
  trailingAnchor4 = [contentView trailingAnchor];
  v111 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v157[5] = v111;
  topAnchor5 = [view3 topAnchor];
  bottomAnchor = [view2 bottomAnchor];
  v108 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:v34];
  v157[6] = v108;
  centerXAnchor = [view3 centerXAnchor];
  centerXAnchor2 = [contentView centerXAnchor];
  v105 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v157[7] = v105;
  topAnchor6 = [(TVRUITabSelectorControl *)v146 topAnchor];
  bottomAnchor2 = [view3 bottomAnchor];
  v102 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2 constant:v35];
  v157[8] = v102;
  leadingAnchor5 = [(TVRUITabSelectorControl *)v146 leadingAnchor];
  leadingAnchor6 = [contentView leadingAnchor];
  v99 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v157[9] = v99;
  trailingAnchor5 = [(TVRUITabSelectorControl *)v146 trailingAnchor];
  trailingAnchor6 = [contentView trailingAnchor];
  v96 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v157[10] = v96;
  bottomAnchor3 = [(TVRUITabSelectorControl *)v146 bottomAnchor];
  bottomAnchor4 = [contentView bottomAnchor];
  v93 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-20.0];
  v157[11] = v93;
  v157[12] = v132;
  heightAnchor2 = [v145 heightAnchor];
  v91 = [heightAnchor2 constraintEqualToConstant:1.0];
  v157[13] = v91;
  widthAnchor = [v145 widthAnchor];
  widthAnchor2 = [contentView widthAnchor];
  v88 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-80.0];
  v157[14] = v88;
  centerXAnchor3 = [v145 centerXAnchor];
  centerXAnchor4 = [(TVRUITabSelectorControl *)v146 centerXAnchor];
  v85 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v157[15] = v85;
  centerYAnchor = [v145 centerYAnchor];
  centerYAnchor2 = [(TVRUITabSelectorControl *)v146 centerYAnchor];
  v82 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v157[16] = v82;
  topAnchor7 = [view4 topAnchor];
  topAnchor8 = [view7 topAnchor];
  v79 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v157[17] = v79;
  leadingAnchor7 = [view4 leadingAnchor];
  leadingAnchor8 = [view7 leadingAnchor];
  v76 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v157[18] = v76;
  trailingAnchor7 = [view4 trailingAnchor];
  trailingAnchor8 = [view7 trailingAnchor];
  v73 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v157[19] = v73;
  bottomAnchor5 = [view4 bottomAnchor];
  bottomAnchor6 = [view7 bottomAnchor];
  if (v37)
  {
    v39 = -10.0;
  }

  else
  {
    v39 = -0.0;
  }

  v70 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:v39];
  v157[20] = v70;
  topAnchor9 = [view5 topAnchor];
  topAnchor10 = [view7 topAnchor];
  v67 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  v157[21] = v67;
  leadingAnchor9 = [view5 leadingAnchor];
  leadingAnchor10 = [view7 leadingAnchor];
  v64 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v157[22] = v64;
  trailingAnchor9 = [view5 trailingAnchor];
  trailingAnchor10 = [view7 trailingAnchor];
  v61 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v157[23] = v61;
  bottomAnchor7 = [view5 bottomAnchor];
  bottomAnchor8 = [view7 bottomAnchor];
  v58 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:v39];
  v157[24] = v58;
  topAnchor11 = [view6 topAnchor];
  topAnchor12 = [view7 topAnchor];
  v55 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
  v157[25] = v55;
  leadingAnchor11 = [view6 leadingAnchor];
  leadingAnchor12 = [view7 leadingAnchor];
  v40 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:20.0];
  v157[26] = v40;
  trailingAnchor11 = [view6 trailingAnchor];
  trailingAnchor12 = [view7 trailingAnchor];
  v43 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:-20.0];
  v157[27] = v43;
  bottomAnchor9 = [view6 bottomAnchor];
  bottomAnchor10 = [view7 bottomAnchor];
  v46 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:v39];
  v157[28] = v46;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v157 count:29];
  [v52 activateConstraints:v47];

  [(TVRUINowPlayingViewController *)self setBackgroundEffectViewController:v134];
  [(TVRUINowPlayingViewController *)self setNowPlayingMiniPlayerViewController:v137];
  [(TVRUINowPlayingViewController *)self setMediaControlsViewController:v133];
  [(TVRUINowPlayingViewController *)self setNowPlayingInfoViewController:v140];
  [(TVRUINowPlayingViewController *)self setUpNextViewController:v144];
  [(TVRUINowPlayingViewController *)self setCastViewController:v136];
  [(TVRUINowPlayingViewController *)self setTabSelectorControl:v146];
  [(TVRUINowPlayingViewController *)self setTabSelectorControlHeightConstraint:v132];
  [(TVRUINowPlayingViewController *)self setDividerView:v145];
  [(TVRUINowPlayingViewController *)self configureSegControlOrDividerViewVisibility];
  objc_initWeak(&location, self);
  v156 = objc_opt_class();
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v156 count:1];
  v148[0] = MEMORY[0x277D85DD0];
  v148[1] = 3221225472;
  v148[2] = __51__TVRUINowPlayingViewController_configureHierarchy__block_invoke_2;
  v148[3] = &unk_279D87BF8;
  objc_copyWeak(&v149, &location);
  v49 = [(TVRUINowPlayingViewController *)self registerForTraitChanges:v48 withHandler:v148];

  [(TVRUINowPlayingViewController *)self setOverrideUserInterfaceStyle:2];
  v50 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_panRecognizerDidFire_];
  [v50 setDelegate:self];
  view9 = [(TVRUINowPlayingViewController *)self view];
  [view9 addGestureRecognizer:v50];

  objc_destroyWeak(&v149);
  objc_destroyWeak(&location);
}

void __51__TVRUINowPlayingViewController_configureHierarchy__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained view];
    [v2 setNeedsLayout];

    v3 = [v4 view];
    [v3 layoutIfNeeded];

    [v4 _updateSelectorControlHeight];
    WeakRetained = v4;
  }
}

- (void)configureSegControlOrDividerViewVisibility
{
  childViewControllerIdentifiers = [(TVRUINowPlayingViewController *)self childViewControllerIdentifiers];
  v4 = [childViewControllerIdentifiers count];

  tabSelectorControl = [(TVRUINowPlayingViewController *)self tabSelectorControl];
  [tabSelectorControl setHidden:v4 < 2];

  dividerView = [(TVRUINowPlayingViewController *)self dividerView];
  [dividerView setHidden:v4 > 1];
}

- (void)panRecognizerDidFire:(id)fire
{
  v81 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  state = [fireCopy state];
  view = [(TVRUINowPlayingViewController *)self view];
  [fireCopy translationInView:view];
  v8 = v7;

  view2 = [(TVRUINowPlayingViewController *)self view];
  [view2 bounds];
  Width = CGRectGetWidth(v82);

  v11 = fabs(v8) / Width;
  if (Width > 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  tabSelectorControl = [(TVRUINowPlayingViewController *)self tabSelectorControl];
  selectedIndex = [tabSelectorControl selectedIndex];

  tabSelectorControl2 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
  items = [tabSelectorControl2 items];
  v17 = [items count];

  if (v8 > 0.0 && selectedIndex)
  {
    v18 = selectedIndex - 1;
  }

  else
  {
    if (selectedIndex + 1 < v17)
    {
      v19 = selectedIndex + 1;
    }

    else
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v8 <= 0.0)
    {
      v18 = v19;
    }

    else
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v20 = selectedIndex == 0;
  v21 = selectedIndex + 1 == v17;
  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
  }

  v22 = v17 > 1;
  v23 = v17 > 1 && v21;
  v24 = v22 && v20;
  if (v22 && v20)
  {
    v25 = v18 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = v23;
  }

  v26 = v18 == 0x7FFFFFFFFFFFFFFFLL || v25;
  if (state != 2)
  {
    if (state == 1)
    {
      [(TVRUINowPlayingViewController *)self setInteractiveSwipeGestureIsApplyingRubberbandingTransform:0];
      goto LABEL_70;
    }

    if ((state - 3) > 2)
    {
      goto LABEL_70;
    }

    currentTabSelectionAnimator = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];

    currentTabSelectionAnimator2 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
    isRunning = [currentTabSelectionAnimator2 isRunning];

    if (!currentTabSelectionAnimator)
    {
      if ([(TVRUINowPlayingViewController *)self interactiveSwipeGestureIsApplyingRubberbandingTransform])
      {
        v49 = objc_alloc(MEMORY[0x277D75D40]);
        v50 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:2];
        v51 = [v49 initWithDuration:v50 timingParameters:0.3];

        v52 = [(TVRUINowPlayingViewController *)self viewControllerForIndex:selectedIndex];
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = __54__TVRUINowPlayingViewController_panRecognizerDidFire___block_invoke;
        v77[3] = &unk_279D87C20;
        v78 = v52;
        v53 = v52;
        [v51 addAnimations:v77];
        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = __54__TVRUINowPlayingViewController_panRecognizerDidFire___block_invoke_2;
        v76[3] = &unk_279D88A20;
        v76[4] = self;
        v76[5] = selectedIndex;
        [v51 addCompletion:v76];
        v54 = [_TVRUIAnimationState animationStateWithIndex:selectedIndex previousIndex:0x7FFFFFFFFFFFFFFFLL toViewController:v53 fromViewController:0 isInteractive:0];
        [(TVRUINowPlayingViewController *)self setCurrentAnimationState:v54];

        [(TVRUINowPlayingViewController *)self setCurrentTabSelectionAnimator:v51];
        [v51 startAnimation];
      }

      goto LABEL_70;
    }

    if (isRunning)
    {
      if (state == 3)
      {
        v36 = v26;
      }

      else
      {
        v36 = 1;
      }

      if ((v36 & 1) == 0)
      {
        currentAnimationState = [(TVRUINowPlayingViewController *)self currentAnimationState];
        if ([currentAnimationState index] == v18)
        {
          currentAnimationState2 = [(TVRUINowPlayingViewController *)self currentAnimationState];
          previousIndex = [currentAnimationState2 previousIndex];

          if (previousIndex == selectedIndex)
          {
            goto LABEL_70;
          }
        }

        else
        {
        }

        v72 = _TVRUINowPlayingLog();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selectedIndex];
          v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
          LODWORD(buf.a) = 138412546;
          *(&buf.a + 4) = v73;
          WORD2(buf.b) = 2112;
          *(&buf.b + 6) = v74;
          _os_log_impl(&dword_26CFEB000, v72, OS_LOG_TYPE_INFO, "ANIM: pan gesture ended with animation in flight: performing interruption from: %@ -> %@", &buf, 0x16u);
        }

        tabSelectorControl3 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
        [tabSelectorControl3 setSelectedIndex:v18];

        v48 = 0.0;
        selfCopy2 = self;
        v45 = selectedIndex;
        v46 = v18;
        v47 = 0;
        goto LABEL_69;
      }

      goto LABEL_70;
    }

    view3 = [(TVRUINowPlayingViewController *)self view];
    [fireCopy velocityInView:view3];
    v57 = v56;

    if (v57 != 0.0)
    {
      currentAnimationState3 = [(TVRUINowPlayingViewController *)self currentAnimationState];
      index = [currentAnimationState3 index];
      currentAnimationState4 = [(TVRUINowPlayingViewController *)self currentAnimationState];
      LODWORD(index) = index < [currentAnimationState4 previousIndex];

      if (v57 > 0.0 != index)
      {
        v61 = _TVRUINowPlayingLog();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf.a) = 0;
          _os_log_impl(&dword_26CFEB000, v61, OS_LOG_TYPE_INFO, "ANIM: pan gesture ended with interactive animator, but user changed directions midway through so reverting in-progress interactive tab selection.", &buf, 2u);
        }

        currentAnimationState5 = [(TVRUINowPlayingViewController *)self currentAnimationState];
        previousIndex2 = [currentAnimationState5 previousIndex];

        currentAnimationState6 = [(TVRUINowPlayingViewController *)self currentAnimationState];
        index2 = [currentAnimationState6 index];

        tabSelectorControl4 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
        [tabSelectorControl4 setSelectedIndex:previousIndex2];

        v67 = objc_alloc(MEMORY[0x277D75D40]);
        v68 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:2];
        v69 = [v67 initWithDuration:v68 timingParameters:0.3];

        [(TVRUINowPlayingViewController *)self _performTabAnimationFromIndex:index2 toIndex:previousIndex2 isInteractive:0 interactivePercentage:v69 animator:0.0];
        goto LABEL_70;
      }
    }

    v70 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&dword_26CFEB000, v70, OS_LOG_TYPE_INFO, "ANIM: pan gesture ended with interactive animator: start animation...", &buf, 2u);
    }

    currentTabSelectionAnimator3 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
    [currentTabSelectionAnimator3 startAnimation];
LABEL_60:

    goto LABEL_70;
  }

  currentTabSelectionAnimator4 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];

  if (currentTabSelectionAnimator4)
  {
    currentTabSelectionAnimator5 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
    isRunning2 = [currentTabSelectionAnimator5 isRunning];

    if (isRunning2)
    {
      goto LABEL_70;
    }

    v30 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
      LODWORD(buf.a) = 138412290;
      *(&buf.a + 4) = v31;
      _os_log_impl(&dword_26CFEB000, v30, OS_LOG_TYPE_INFO, "ANIM: updating interactive animator with fractionComplete: %@", &buf, 0xCu);
    }

    currentTabSelectionAnimator3 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
    [currentTabSelectionAnimator3 setFractionComplete:v12];
    goto LABEL_60;
  }

  if ((v26 & 1) == 0)
  {
    v41 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selectedIndex];
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
      LODWORD(buf.a) = 138412546;
      *(&buf.a + 4) = v42;
      WORD2(buf.b) = 2112;
      *(&buf.b + 6) = v43;
      _os_log_impl(&dword_26CFEB000, v41, OS_LOG_TYPE_INFO, "ANIM: pan fired and no animator present -- calling performTabAnimationFrom: %@ to: %@", &buf, 0x16u);
    }

    selfCopy2 = self;
    v45 = selectedIndex;
    v46 = v18;
    v47 = 1;
    v48 = v12;
LABEL_69:
    [(TVRUINowPlayingViewController *)selfCopy2 _performTabAnimationFromIndex:v45 toIndex:v46 isInteractive:v47 interactivePercentage:v48];
    goto LABEL_70;
  }

  if (v25)
  {
    if (v24 && v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v40 = 0.0;
      if (v8 > 0.0)
      {
        v40 = v8;
      }
    }

    else
    {
      v40 = 0.0;
      if (v23 && v8 < 0.0)
      {
        v40 = v8;
      }
    }

    v71 = v40 * 0.5;
    if (v40 * 0.5 != 0.0)
    {
      [(TVRUINowPlayingViewController *)self setInteractiveSwipeGestureIsApplyingRubberbandingTransform:1];
      memset(&buf, 0, sizeof(buf));
      CGAffineTransformMakeTranslation(&buf, v71, 0.0);
      v79 = buf;
      [(TVRUINowPlayingViewController *)self _applyTransform:&v79 toChildViewControllerAtIndex:selectedIndex];
    }
  }

LABEL_70:
}

void __54__TVRUINowPlayingViewController_panRecognizerDidFire___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v3[0] = *MEMORY[0x277CBF2C0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v1 setTransform:v3];
}

- (void)_tabAnimationDidCompleteWithFinalPosition:(int64_t)position viewControllerIndex:(unint64_t)index
{
  if (!position)
  {
    [(TVRUINowPlayingViewController *)self setCurrentAnimationState:?];
    [(TVRUINowPlayingViewController *)self setCurrentTabSelectionAnimator:0];
    v7 = [(TVRUINowPlayingViewController *)self viewControllerIdentifierForIndex:index];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      v7 = [(TVRUINowPlayingViewController *)self _callChildViewControllerDisappearingForAllExceptIdentifier:v7];
      v8 = v9;
    }

    MEMORY[0x2821F96F8](v7, v8);
  }
}

- (void)_applyTransform:(CGAffineTransform *)transform toChildViewControllerAtIndex:(unint64_t)index
{
  v5 = [(TVRUINowPlayingViewController *)self viewControllerForIndex:index];
  v6 = v5;
  if (v5)
  {
    view = [v5 view];
    [view setTransform:&v8];
  }
}

- (void)_updateSelectorControlHeight
{
  tabSelectorControl = [(TVRUINowPlayingViewController *)self tabSelectorControl];
  [tabSelectorControl layoutHeight];
  v5 = v4;

  if (v5 > 0.0)
  {
    tabSelectorControlHeightConstraint = [(TVRUINowPlayingViewController *)self tabSelectorControlHeightConstraint];
    [tabSelectorControlHeightConstraint setConstant:v5];
  }
}

- (BOOL)_canDisplayInsightsTabForNowPlayingInfo:(id)info
{
  nowPlayingInfo = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  rawTimedMetadata = [nowPlayingInfo rawTimedMetadata];
  v5 = [rawTimedMetadata length] != 0;

  return v5;
}

- (id)_availableTabToDisplayForNowPlayingInfo:(id)info
{
  infoCopy = info;
  if ([(TVRUINowPlayingViewController *)self _canDisplayInsightsTabForNowPlayingInfo:infoCopy])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"TVRemoteUIInSightTabTitle";
LABEL_5:
    _upNextIdentifier = [v5 localizedStringForKey:v7 value:&stru_287E6AEF8 table:@"Localizable"];

    goto LABEL_6;
  }

  if ([(TVRUINowPlayingViewController *)self _canDisplayInfoForNowPlayingInfo:infoCopy])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"TVRemoteUIInfoTabTitle";
    goto LABEL_5;
  }

  if ([(TVRUINowPlayingViewController *)self _canDisplayUpNextTabForNowPlayingInfo:infoCopy])
  {
    _upNextIdentifier = [(TVRUINowPlayingViewController *)self _upNextIdentifier];
  }

  else
  {
    _upNextIdentifier = 0;
  }

LABEL_6:

  return _upNextIdentifier;
}

- (void)configureTimedMetadata
{
  v3 = _TVRUINowPlayingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Configure timed metadata", v9, 2u);
  }

  makeTimedMetadataPlaybackInfo = [(TVRUINowPlayingViewController *)self makeTimedMetadataPlaybackInfo];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = getVUITimeMetadataFactoryClass_softClass;
  v13 = getVUITimeMetadataFactoryClass_softClass;
  if (!getVUITimeMetadataFactoryClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getVUITimeMetadataFactoryClass_block_invoke;
    v9[3] = &unk_279D88AE0;
    v9[4] = &v10;
    __getVUITimeMetadataFactoryClass_block_invoke(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  sharedInstance = [v5 sharedInstance];
  v8 = [sharedInstance makeViewController:makeTimedMetadataPlaybackInfo];

  [(TVRUINowPlayingViewController *)self setTimedMetadataViewController:v8];
}

- (id)makeTimedMetadataPlaybackInfo
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v3 = getVUITimedMetadataPlaybackInfoClass_softClass;
  v37 = getVUITimedMetadataPlaybackInfoClass_softClass;
  if (!getVUITimedMetadataPlaybackInfoClass_softClass)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __getVUITimedMetadataPlaybackInfoClass_block_invoke;
    v33[3] = &unk_279D88AE0;
    v33[4] = &v34;
    __getVUITimedMetadataPlaybackInfoClass_block_invoke(v33);
    v3 = v35[3];
  }

  v4 = v3;
  _Block_object_dispose(&v34, 8);
  v5 = objc_alloc_init(v3);
  nowPlayingInfo = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  metadata = [nowPlayingInfo metadata];
  programID = [metadata programID];
  [v5 setProgramId:programID];

  nowPlayingInfo2 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  metadata2 = [nowPlayingInfo2 metadata];
  audioLanguage = [metadata2 audioLanguage];
  [v5 setAudioLanguage:audioLanguage];

  nowPlayingInfo3 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  playbackRate = [nowPlayingInfo3 playbackRate];
  [playbackRate doubleValue];
  [v5 setPlaybackRate:?];

  nowPlayingInfo4 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  metadata3 = [nowPlayingInfo4 metadata];
  timeOffset = [metadata3 timeOffset];
  [timeOffset doubleValue];
  [v5 setCurrentTime:?];

  nowPlayingInfo5 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  metadata4 = [nowPlayingInfo5 metadata];
  iTunesStoreIdentifier = [metadata4 iTunesStoreIdentifier];
  [v5 setAdamId:iTunesStoreIdentifier];

  nowPlayingInfo6 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  metadata5 = [nowPlayingInfo6 metadata];
  mainContentStartTime = [metadata5 mainContentStartTime];
  [mainContentStartTime doubleValue];
  [v5 setFeatureStartTime:?];

  nowPlayingInfo7 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  rawTimedMetadata = [nowPlayingInfo7 rawTimedMetadata];
  [v5 setRawTimedMetadata:rawTimedMetadata];

  nowPlayingInfo8 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  metadata6 = [nowPlayingInfo8 metadata];
  timestamp = [metadata6 timestamp];

  if (timestamp)
  {
    v28 = MEMORY[0x277CBEAA8];
    [timestamp doubleValue];
    v29 = [v28 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v30 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33[0]) = 0;
      _os_log_impl(&dword_26CFEB000, v30, OS_LOG_TYPE_DEFAULT, "timestamp is nil, use current date", v33, 2u);
    }

    v29 = [MEMORY[0x277CBEAA8] now];
  }

  v31 = v29;
  [v5 setTimeStamp:v29];

  return v5;
}

- (void)_updateViewControllerVisibilityForSelectedIdentifier:(id)identifier
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(TVRUINowPlayingViewController *)self configureSegControlOrDividerViewVisibility];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TVRemoteUIInSightTabTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  v7 = [identifierCopy isEqualToString:v6];

  _upNextIdentifier = [(TVRUINowPlayingViewController *)self _upNextIdentifier];
  v9 = [identifierCopy isEqualToString:_upNextIdentifier];

  if (v7)
  {
    [(TVRUINowPlayingViewController *)self configureTimedMetadataView];
  }

  timedMetadataViewController = [(TVRUINowPlayingViewController *)self timedMetadataViewController];
  view = [timedMetadataViewController view];
  [view setHidden:v7 ^ 1u];

  [(TVRUINowPlayingViewController *)self _callChildViewControllerAppearanceForAppearingIdentifier:identifierCopy];
  upNextViewController = [(TVRUINowPlayingViewController *)self upNextViewController];
  [upNextViewController setIsVisibleInParentUI:v9];

  if (v9)
  {
    upNextProvider = [(TVRUINowPlayingViewController *)self upNextProvider];
    [upNextProvider refreshIfNeeded];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  allPossibleChildViewControllerIdentifiers = [(TVRUINowPlayingViewController *)self allPossibleChildViewControllerIdentifiers];
  v15 = [allPossibleChildViewControllerIdentifiers countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(allPossibleChildViewControllerIdentifiers);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        v20 = [v19 isEqualToString:identifierCopy];
        v21 = [(TVRUINowPlayingViewController *)self viewControllerForIdentifier:v19];
        v22 = v21;
        if (v21)
        {
          view2 = [v21 view];
          [view2 setHidden:v20 ^ 1u];
        }
      }

      v16 = [allPossibleChildViewControllerIdentifiers countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  if ([identifierCopy length])
  {
    v24 = [(TVRUINowPlayingViewController *)self indexForViewControllerIdentifier:identifierCopy];
    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = v24;
      tabSelectorControl = [(TVRUINowPlayingViewController *)self tabSelectorControl];
      selectedIndex = [tabSelectorControl selectedIndex];

      if (v25 != selectedIndex)
      {
        tabSelectorControl2 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
        [tabSelectorControl2 setSelectedIndex:v25];
      }
    }
  }
}

- (void)_callChildViewControllerDisappearingForAllExceptIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allPossibleChildViewControllerIdentifiers = [(TVRUINowPlayingViewController *)self allPossibleChildViewControllerIdentifiers];
  v6 = [allPossibleChildViewControllerIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allPossibleChildViewControllerIdentifiers);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([identifierCopy isEqualToString:v10] & 1) == 0)
        {
          [(TVRUINowPlayingViewController *)self _callChildViewControllerAppearanceForIdentifier:v10 appearing:0];
        }
      }

      v7 = [allPossibleChildViewControllerIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_callChildViewControllerAppearanceForIdentifier:(id)identifier appearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = [(TVRUINowPlayingViewController *)self viewControllerForIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    _appearState = [v7 _appearState];
    if ((_appearState - 1) > 1)
    {
      if (_appearState != 3 && _appearState || !appearingCopy)
      {
LABEL_10:
        v10 = _TVRUINowPlayingLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [MEMORY[0x277CCABB0] numberWithBool:appearingCopy];
          v13 = 138412546;
          v14 = identifierCopy;
          v15 = 2112;
          v16 = v11;
          v12 = "ANIM: Not calling childViewController appearance transitions for %@, isAppearing=%@ as VC is already in this visibility state";
          goto LABEL_12;
        }

        goto LABEL_13;
      }
    }

    else if (appearingCopy)
    {
      goto LABEL_10;
    }

    [v8 beginAppearanceTransition:appearingCopy animated:0];
    [v8 endAppearanceTransition];
    v10 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:appearingCopy];
      v13 = 138412546;
      v14 = identifierCopy;
      v15 = 2112;
      v16 = v11;
      v12 = "ANIM: Calling childViewController appearance transitions for %@, isAppearing=%@";
LABEL_12:
      _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_INFO, v12, &v13, 0x16u);
    }

LABEL_13:
  }
}

- (void)configureTimedMetadataView
{
  v29[4] = *MEMORY[0x277D85DE8];
  v3 = _TVRUINowPlayingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Configure timed metadata view", buf, 2u);
  }

  timedMetadataViewController = [(TVRUINowPlayingViewController *)self timedMetadataViewController];
  view = [timedMetadataViewController view];
  superview = [view superview];
  view2 = [(TVRUINowPlayingViewController *)self view];

  if (superview != view2)
  {
    v8 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Add timed metadata view to view hierarchy", buf, 2u);
    }

    timedMetadataViewController2 = [(TVRUINowPlayingViewController *)self timedMetadataViewController];
    view3 = [timedMetadataViewController2 view];
    view4 = [(TVRUINowPlayingViewController *)self view];
    [view3 setClipsToBounds:1];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [view3 setHidden:1];
    [(TVRUINowPlayingViewController *)self setTimedMetadataViewController:timedMetadataViewController2];
    [(TVRUINowPlayingViewController *)self bs_addChildViewController:timedMetadataViewController2];
    backgroundEffectViewController = [(TVRUINowPlayingViewController *)self backgroundEffectViewController];
    view5 = [backgroundEffectViewController view];
    [view4 bringSubviewToFront:view5];

    v21 = MEMORY[0x277CCAAD0];
    topAnchor = [view3 topAnchor];
    topAnchor2 = [view4 topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v29[0] = v24;
    leadingAnchor = [view3 leadingAnchor];
    leadingAnchor2 = [view4 leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v29[1] = v13;
    trailingAnchor = [view3 trailingAnchor];
    trailingAnchor2 = [view4 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
    v29[2] = v16;
    bottomAnchor = [view3 bottomAnchor];
    bottomAnchor2 = [view4 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v29[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [v21 activateConstraints:v20];
  }
}

- (NSArray)childViewControllerIdentifiers
{
  v23[1] = *MEMORY[0x277D85DE8];
  nowPlayingInfo = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v4 = [(TVRUINowPlayingViewController *)self _canDisplayInfoForNowPlayingInfo:nowPlayingInfo];

  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"TVRemoteUIInfoTabTitle" value:&stru_287E6AEF8 table:@"Localizable"];
    v23[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  nowPlayingInfo2 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v9 = [(TVRUINowPlayingViewController *)self _canDisplayInsightsTabForNowPlayingInfo:nowPlayingInfo2];

  if (v9)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"TVRemoteUIInSightTabTitle" value:&stru_287E6AEF8 table:@"Localizable"];
    v12 = [v7 arrayByAddingObject:v11];

    v7 = v12;
  }

  nowPlayingInfo3 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v14 = [(TVRUINowPlayingViewController *)self _canDisplayCastTabForNowPlayingInfo:nowPlayingInfo3];

  if (v14)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"TVRemoteUICastTab" value:&stru_287E6AEF8 table:@"Localizable"];
    v17 = [v7 arrayByAddingObject:v16];

    v7 = v17;
  }

  nowPlayingInfo4 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v19 = [(TVRUINowPlayingViewController *)self _canDisplayUpNextTabForNowPlayingInfo:nowPlayingInfo4];

  if (v19)
  {
    _upNextIdentifier = [(TVRUINowPlayingViewController *)self _upNextIdentifier];
    v21 = [v7 arrayByAddingObject:_upNextIdentifier];

    v7 = v21;
  }

  return v7;
}

- (BOOL)_viewControllerIdentifierIsAvailable:(id)available
{
  if (!available)
  {
    return 0;
  }

  availableCopy = available;
  childViewControllerIdentifiers = [(TVRUINowPlayingViewController *)self childViewControllerIdentifiers];
  v6 = [childViewControllerIdentifiers indexOfObject:availableCopy];

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (NSArray)allPossibleChildViewControllerIdentifiers
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TVRemoteUIInfoTabTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  v12[0] = v4;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TVRemoteUIInSightTabTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  v12[1] = v6;
  _upNextIdentifier = [(TVRUINowPlayingViewController *)self _upNextIdentifier];
  v12[2] = _upNextIdentifier;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"TVRemoteUICastTab" value:&stru_287E6AEF8 table:@"Localizable"];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  return v10;
}

- (NSDictionary)childViewControllerDict
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  nowPlayingInfoViewController = [(TVRUINowPlayingViewController *)self nowPlayingInfoViewController];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TVRemoteUIInfoTabTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  [v3 setObject:nowPlayingInfoViewController forKeyedSubscript:v6];

  timedMetadataViewController = [(TVRUINowPlayingViewController *)self timedMetadataViewController];

  if (timedMetadataViewController)
  {
    timedMetadataViewController2 = [(TVRUINowPlayingViewController *)self timedMetadataViewController];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"TVRemoteUIInSightTabTitle" value:&stru_287E6AEF8 table:@"Localizable"];
    [v3 setObject:timedMetadataViewController2 forKeyedSubscript:v10];
  }

  upNextViewController = [(TVRUINowPlayingViewController *)self upNextViewController];
  _upNextIdentifier = [(TVRUINowPlayingViewController *)self _upNextIdentifier];
  [v3 setObject:upNextViewController forKeyedSubscript:_upNextIdentifier];

  castViewController = [(TVRUINowPlayingViewController *)self castViewController];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"TVRemoteUICastTab" value:&stru_287E6AEF8 table:@"Localizable"];
  [v3 setObject:castViewController forKeyedSubscript:v15];

  return v3;
}

- (unint64_t)indexForViewControllerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  childViewControllerIdentifiers = [(TVRUINowPlayingViewController *)self childViewControllerIdentifiers];
  v6 = [childViewControllerIdentifiers indexOfObjectIdenticalTo:identifierCopy];

  return v6;
}

- (id)viewControllerIdentifierForIndex:(unint64_t)index
{
  childViewControllerIdentifiers = [(TVRUINowPlayingViewController *)self childViewControllerIdentifiers];
  v6 = [childViewControllerIdentifiers count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    childViewControllerIdentifiers2 = [(TVRUINowPlayingViewController *)self childViewControllerIdentifiers];
    v8 = [childViewControllerIdentifiers2 objectAtIndexedSubscript:index];
  }

  return v8;
}

- (id)viewControllerForIndex:(unint64_t)index
{
  v4 = [(TVRUINowPlayingViewController *)self viewControllerIdentifierForIndex:index];
  if (v4)
  {
    childViewControllerDict = [(TVRUINowPlayingViewController *)self childViewControllerDict];
    v6 = [childViewControllerDict objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)viewControllerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  childViewControllerDict = [(TVRUINowPlayingViewController *)self childViewControllerDict];
  v6 = [childViewControllerDict objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (void)_reconfigureTabsIfNeeded
{
  tabSelectorControl = [(TVRUINowPlayingViewController *)self tabSelectorControl];
  childViewControllerIdentifiers = [(TVRUINowPlayingViewController *)self childViewControllerIdentifiers];
  [tabSelectorControl updateItems:childViewControllerIdentifiers animated:1];

  currentViewControllerIdentifier = [(TVRUINowPlayingViewController *)self currentViewControllerIdentifier];
  v6 = [(TVRUINowPlayingViewController *)self indexForViewControllerIdentifier:currentViewControllerIdentifier];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    nowPlayingInfo = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
    v8 = [(TVRUINowPlayingViewController *)self _availableTabToDisplayForNowPlayingInfo:nowPlayingInfo];
    [(TVRUINowPlayingViewController *)self setCurrentViewControllerIdentifier:v8];
  }

  currentViewControllerIdentifier2 = [(TVRUINowPlayingViewController *)self currentViewControllerIdentifier];
  [(TVRUINowPlayingViewController *)self _updateViewControllerVisibilityForSelectedIdentifier:currentViewControllerIdentifier2];

  [(TVRUINowPlayingViewController *)self _updateSelectorControlHeight];
}

- (void)_performTabAnimationFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex isInteractive:(BOOL)interactive interactivePercentage:(double)percentage
{
  interactiveCopy = interactive;
  v11 = +[TVRUICubicSpringAnimator standardSpringAnimator];
  [(TVRUINowPlayingViewController *)self _performTabAnimationFromIndex:index toIndex:toIndex isInteractive:interactiveCopy interactivePercentage:v11 animator:percentage];
}

- (void)_performTabAnimationFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex isInteractive:(BOOL)interactive interactivePercentage:(double)percentage animator:(id)animator
{
  interactiveCopy = interactive;
  v82 = *MEMORY[0x277D85DE8];
  animatorCopy = animator;
  v12 = [(TVRUINowPlayingViewController *)self viewControllerForIndex:toIndex];
  v13 = [(TVRUINowPlayingViewController *)self viewControllerForIndex:index];
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = !v15 && toIndex != index;
  v18 = [(TVRUINowPlayingViewController *)self viewControllerIdentifierForIndex:toIndex];
  [(TVRUINowPlayingViewController *)self setCurrentViewControllerIdentifier:v18];
  currentViewControllerIdentifier = [(TVRUINowPlayingViewController *)self currentViewControllerIdentifier];
  [(TVRUINowPlayingViewController *)self setLastExplicitUserSelectedViewControllerIdentifier:currentViewControllerIdentifier];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__TVRUINowPlayingViewController__performTabAnimationFromIndex_toIndex_isInteractive_interactivePercentage_animator___block_invoke;
  aBlock[3] = &unk_279D88230;
  aBlock[4] = self;
  v20 = v18;
  v79 = v20;
  v21 = _Block_copy(aBlock);
  v60 = interactiveCopy;
  if (interactiveCopy)
  {
    tabSelectorControl = [(TVRUINowPlayingViewController *)self tabSelectorControl];
    [tabSelectorControl setSelectedIndex:toIndex];
  }

  if (v17)
  {
    v55 = v21;
    currentAnimationState = [(TVRUINowPlayingViewController *)self currentAnimationState];
    v59 = [_TVRUIAnimationState animationStateWithIndex:toIndex previousIndex:index toViewController:v12 fromViewController:v14 isInteractive:v60];
    [(TVRUINowPlayingViewController *)self _callChildViewControllerAppearanceForAppearingIdentifier:v20];
    currentTabSelectionAnimator = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
    v56 = v20;
    if ([currentTabSelectionAnimator isRunning])
    {
      currentTabSelectionAnimator2 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
      isInterruptible = [currentTabSelectionAnimator2 isInterruptible];

      if (isInterruptible)
      {
        currentTabSelectionAnimator3 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
        [currentTabSelectionAnimator3 stopAnimation:0];

        currentTabSelectionAnimator4 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
        [currentTabSelectionAnimator4 finishAnimationAtPosition:2];

        [(TVRUINowPlayingViewController *)self setCurrentTabSelectionAnimator:0];
      }
    }

    else
    {
    }

    view = [(TVRUINowPlayingViewController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v83);

    LOBYTE(view) = [currentAnimationState isParticpantViewController:v12];
    v33 = [currentAnimationState isParticpantViewController:v14];
    v58 = v12;
    v53 = toIndex < index;
    if (view)
    {
      view3 = _TVRUINowPlayingLog();
      if (os_log_type_enabled(view3, OS_LOG_TYPE_INFO))
      {
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:toIndex];
        LODWORD(buf.a) = 138412290;
        *(&buf.a + 4) = v35;
        _os_log_impl(&dword_26CFEB000, view3, OS_LOG_TYPE_INFO, "ANIM: viewController @ index=%@ is currently animating, not setting transform.", &buf, 0xCu);
      }
    }

    else
    {
      view2 = [v12 view];
      [view2 setHidden:0];

      v37 = -Width;
      if (toIndex >= index)
      {
        v37 = Width;
      }

      CGAffineTransformMakeTranslation(&v77, v37, 0.0);
      view3 = [v12 view];
      buf = v77;
      [view3 setTransform:&buf];
    }

    v38 = MEMORY[0x277CBF2C0];
    v57 = v14;
    if (v33)
    {
      view5 = _TVRUINowPlayingLog();
      if (os_log_type_enabled(view5, OS_LOG_TYPE_INFO))
      {
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
        LODWORD(buf.a) = 138412290;
        *(&buf.a + 4) = v40;
        _os_log_impl(&dword_26CFEB000, view5, OS_LOG_TYPE_INFO, "ANIM: previous VC @ index=%@ is currently animating, not resetting hidden state = NO", &buf, 0xCu);
      }
    }

    else
    {
      view4 = [v14 view];
      [view4 setHidden:0];

      view5 = [v14 view];
      v42 = v38[1];
      *&buf.a = *v38;
      *&buf.c = v42;
      *&buf.tx = v38[2];
      [view5 setTransform:&buf];
    }

    v54 = currentAnimationState;
    v43 = [currentAnimationState viewControllersNoLongerAnimatingForDestinationAnimationState:v59];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v44 = [v43 countByEnumeratingWithState:&v73 objects:v80 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v74;
      v63 = v38[1];
      v64 = *v38;
      v62 = v38[2];
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v74 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v73 + 1) + 8 * i);
          view6 = [v48 view];
          [view6 setHidden:1];

          view7 = [v48 view];
          *&buf.a = v64;
          *&buf.c = v63;
          *&buf.tx = v62;
          [view7 setTransform:&buf];

          v51 = _TVRUINowPlayingLog();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf.a) = 138412290;
            *(&buf.a + 4) = v48;
            _os_log_impl(&dword_26CFEB000, v51, OS_LOG_TYPE_INFO, "ANIM: resetting VC (which is no longering in animation) %@", &buf, 0xCu);
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v73 objects:v80 count:16];
      }

      while (v45);
    }

    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __116__TVRUINowPlayingViewController__performTabAnimationFromIndex_toIndex_isInteractive_interactivePercentage_animator___block_invoke_46;
    v68[3] = &unk_279D88A48;
    v12 = v58;
    v69 = v58;
    v14 = v57;
    v52 = v57;
    v70 = v52;
    v72 = v53;
    v71 = Width;
    v30 = animatorCopy;
    [animatorCopy addAnimations:v68];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __116__TVRUINowPlayingViewController__performTabAnimationFromIndex_toIndex_isInteractive_interactivePercentage_animator___block_invoke_47;
    v65[3] = &unk_279D88A70;
    v66 = v52;
    v21 = v55;
    v67 = v55;
    [animatorCopy addCompletion:v65];
    if (v60)
    {
      [animatorCopy setScrubsLinearly:1];
      [animatorCopy setFractionComplete:percentage];
      [animatorCopy pauseAnimation];
    }

    else
    {
      [animatorCopy startAnimation];
    }

    v20 = v56;
    [(TVRUINowPlayingViewController *)self setCurrentAnimationState:v59];
    [(TVRUINowPlayingViewController *)self setCurrentTabSelectionAnimator:animatorCopy];

    v29 = v54;
  }

  else
  {
    v21[2](v21);
    v29 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&dword_26CFEB000, v29, OS_LOG_TYPE_INFO, "ANIM: not possible to animate, commiting immediately to final state.", &buf, 2u);
    }

    v30 = animatorCopy;
  }
}

uint64_t __116__TVRUINowPlayingViewController__performTabAnimationFromIndex_toIndex_isInteractive_interactivePercentage_animator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentAnimationState:0];
  [*(a1 + 32) setCurrentTabSelectionAnimator:0];
  [*(a1 + 32) _updateViewControllerVisibilityForSelectedIdentifier:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _callChildViewControllerDisappearingForAllExceptIdentifier:v3];
}

void __116__TVRUINowPlayingViewController__performTabAnimationFromIndex_toIndex_isInteractive_interactivePercentage_animator___block_invoke_46(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  *&buf.a = *MEMORY[0x277CBF2C0];
  *&buf.c = v3;
  *&buf.tx = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:&buf];

  v4 = *(a1 + 48);
  if (!*(a1 + 56))
  {
    v4 = -v4;
  }

  CGAffineTransformMakeTranslation(&v7, v4, 0.0);
  v5 = [*(a1 + 40) view];
  buf = v7;
  [v5 setTransform:&buf];

  v6 = _TVRUINowPlayingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.a) = 0;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_INFO, "ANIM: animations firing...", &buf, 2u);
  }
}

void __116__TVRUINowPlayingViewController__performTabAnimationFromIndex_toIndex_isInteractive_interactivePercentage_animator___block_invoke_47(uint64_t a1, uint64_t a2)
{
  v4 = _TVRUINowPlayingLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_INFO, "ANIM: animation completion firing, but doing nothing as the finalPosition != .end", v9, 2u);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_INFO, "ANIM: animation completion firing.", v9, 2u);
    }

    v6 = [*(a1 + 32) view];
    [v6 setHidden:1];

    v7 = [*(a1 + 32) view];
    v8 = *(MEMORY[0x277CBF2C0] + 16);
    v9[0] = *MEMORY[0x277CBF2C0];
    v9[1] = v8;
    v9[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v7 setTransform:v9];

    (*(*(a1 + 40) + 16))();
  }
}

- (id)_upNextIdentifier
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"TVRemoteUIUpNextTab" value:&stru_287E6AEF8 table:@"Localizable"];

  return v3;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  nowPlayingInfoViewController = [(TVRUINowPlayingViewController *)self nowPlayingInfoViewController];
  userInteractionInProgress = [nowPlayingInfoViewController userInteractionInProgress];

  if (userInteractionInProgress)
  {
    v7 = 0;
  }

  else
  {
    view = [(TVRUINowPlayingViewController *)self view];
    [beginCopy locationInView:view];
    v10 = v9;

    tabSelectorControl = [(TVRUINowPlayingViewController *)self tabSelectorControl];
    [tabSelectorControl frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v21.origin.x = v13;
    v21.origin.y = v15;
    v21.size.width = v17;
    v21.size.height = v19;
    v7 = v10 > CGRectGetMaxY(v21);
  }

  return v7;
}

- (TVRUIUpNextProviding)upNextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_upNextProvider);

  return WeakRetained;
}

- (TVRUIActionProviding)actionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_actionProvider);

  return WeakRetained;
}

@end