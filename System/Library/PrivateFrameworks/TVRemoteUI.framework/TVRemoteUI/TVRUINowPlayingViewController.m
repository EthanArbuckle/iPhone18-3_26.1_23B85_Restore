@interface TVRUINowPlayingViewController
- (BOOL)_canDisplayInsightsTabForNowPlayingInfo:(id)a3;
- (BOOL)_viewControllerIdentifierIsAvailable:(id)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (NSArray)allPossibleChildViewControllerIdentifiers;
- (NSArray)childViewControllerIdentifiers;
- (NSDictionary)childViewControllerDict;
- (TVRUIActionProviding)actionProvider;
- (TVRUIUpNextProviding)upNextProvider;
- (id)_availableTabToDisplayForNowPlayingInfo:(id)a3;
- (id)_upNextIdentifier;
- (id)commandHandler;
- (id)makeTimedMetadataPlaybackInfo;
- (id)viewControllerForIdentifier:(id)a3;
- (id)viewControllerForIndex:(unint64_t)a3;
- (id)viewControllerIdentifierForIndex:(unint64_t)a3;
- (unint64_t)indexForViewControllerIdentifier:(id)a3;
- (void)_applyTransform:(CGAffineTransform *)a3 toChildViewControllerAtIndex:(unint64_t)a4;
- (void)_callChildViewControllerAppearanceForIdentifier:(id)a3 appearing:(BOOL)a4;
- (void)_callChildViewControllerDisappearingForAllExceptIdentifier:(id)a3;
- (void)_performTabAnimationFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4 isInteractive:(BOOL)a5 interactivePercentage:(double)a6;
- (void)_performTabAnimationFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4 isInteractive:(BOOL)a5 interactivePercentage:(double)a6 animator:(id)a7;
- (void)_reconfigureTabsIfNeeded;
- (void)_tabAnimationDidCompleteWithFinalPosition:(int64_t)a3 viewControllerIndex:(unint64_t)a4;
- (void)_updateSelectorControlHeight;
- (void)_updateViewControllerVisibilityForSelectedIdentifier:(id)a3;
- (void)configureHierarchy;
- (void)configureSegControlOrDividerViewVisibility;
- (void)configureTimedMetadata;
- (void)configureTimedMetadataView;
- (void)forceTabSelectionToInfoTab;
- (void)panRecognizerDidFire:(id)a3;
- (void)setCommandHandler:(id)a3;
- (void)setNowPlayingInfo:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v5 = [(TVRUINowPlayingViewController *)self view];
  [v5 setNeedsLayout];

  v6 = [(TVRUINowPlayingViewController *)self view];
  [v6 layoutIfNeeded];

  [(TVRUINowPlayingViewController *)self _updateSelectorControlHeight];
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = TVRUINowPlayingViewController;
  [(TVRUINowPlayingViewController *)&v12 viewWillAppear:a3];
  v4 = [(TVRUINowPlayingViewController *)self overrideSelectedViewControllerIdentifier];

  if (v4)
  {
    v5 = [(TVRUINowPlayingViewController *)self overrideSelectedViewControllerIdentifier];
    [(TVRUINowPlayingViewController *)self _updateViewControllerVisibilityForSelectedIdentifier:v5];

    [(TVRUINowPlayingViewController *)self setOverrideSelectedViewControllerIdentifier:0];
  }

  else
  {
    v6 = [(TVRUINowPlayingViewController *)self lastExplicitUserSelectedViewControllerIdentifier];

    v7 = [(TVRUINowPlayingViewController *)self lastExplicitUserSelectedViewControllerIdentifier];
    v8 = [(TVRUINowPlayingViewController *)self _viewControllerIdentifierIsAvailable:v7];

    if (!v6 || (v8 & 1) == 0)
    {
      v9 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
      v10 = [(TVRUINowPlayingViewController *)self _availableTabToDisplayForNowPlayingInfo:v9];
      [(TVRUINowPlayingViewController *)self setCurrentViewControllerIdentifier:v10];

      v11 = [(TVRUINowPlayingViewController *)self currentViewControllerIdentifier];
      [(TVRUINowPlayingViewController *)self _updateViewControllerVisibilityForSelectedIdentifier:v11];
    }
  }
}

- (void)forceTabSelectionToInfoTab
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"TVRemoteUIInfoTabTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  [(TVRUINowPlayingViewController *)self setOverrideSelectedViewControllerIdentifier:v3];
}

- (void)setNowPlayingInfo:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_nowPlayingInfo, a3);
  v6 = [v5 metadata];
  v7 = [v5 tvrui_mediaIsStopped];
  v8 = [v5 tvrui_mediaIsIsPlaying];
  v9 = [(TVRUINowPlayingViewController *)self mediaControlsViewController];
  [v9 setIsPlaying:v8];

  v10 = [(TVRUINowPlayingViewController *)self nowPlayingMiniPlayerViewController];
  [v10 setNowPlayingInfo:v5];

  v11 = [(TVRUINowPlayingViewController *)self mediaControlsViewController];
  [v11 setIsPlaying:v8];

  v12 = [(TVRUINowPlayingViewController *)self mediaControlsViewController];
  [v12 setIsMediaActive:v7 ^ 1u];

  v13 = [v5 playbackRate];
  v14 = [(TVRUINowPlayingViewController *)self mediaControlsViewController];
  [v14 setPlaybackRate:v13];

  v15 = [(TVRUINowPlayingViewController *)self nowPlayingInfoViewController];
  [v15 setNowPlayingInfo:v5];

  v16 = [(TVRUINowPlayingViewController *)self castViewController];
  [v16 setMetadata:v6];

  v17 = _TVRUINowPlayingLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v18)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v17, OS_LOG_TYPE_DEFAULT, "NowPlayingInfo update: metadata is not nil, try updating playback info", buf, 2u);
    }

    v19 = [(TVRUINowPlayingViewController *)self timedMetadataViewController];
    v20 = [(TVRUINowPlayingViewController *)self makeTimedMetadataPlaybackInfo];
    [v19 updatePlaybackInfo:v20];

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
  v2 = [(TVRUINowPlayingViewController *)self mediaControlsViewController];
  v3 = [v2 commandHandler];

  return v3;
}

- (void)setCommandHandler:(id)a3
{
  v4 = a3;
  if (([(TVRUINowPlayingViewController *)self isViewLoaded]& 1) == 0)
  {
    v5 = [(TVRUINowPlayingViewController *)self view];
  }

  v6 = [(TVRUINowPlayingViewController *)self mediaControlsViewController];
  [v6 setCommandHandler:v4];

  v7 = [(TVRUINowPlayingViewController *)self nowPlayingInfoViewController];
  [v7 setCommandHandler:v4];
}

- (void)viewWillLayoutSubviews
{
  v55[5] = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = TVRUINowPlayingViewController;
  [(TVRUINowPlayingViewController *)&v53 viewWillLayoutSubviews];
  v3 = [(TVRUINowPlayingViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v5 = [(TVRUINowPlayingViewController *)self view];
    [v5 bounds];
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
      v15 = [(TVRUINowPlayingViewController *)self lastLayoutWidth];
      [(TVRUINowPlayingViewController *)self setLastLayoutWidth:Width];
      if (v15 != Width)
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

  v16 = [(TVRUINowPlayingViewController *)self nowPlayingInfoViewController];
  v55[0] = v16;
  v17 = [(TVRUINowPlayingViewController *)self upNextViewController];
  v55[1] = v17;
  v18 = [(TVRUINowPlayingViewController *)self nowPlayingInfoViewController];
  v55[2] = v18;
  v19 = [(TVRUINowPlayingViewController *)self castViewController];
  v55[3] = v19;
  v20 = [(TVRUINowPlayingViewController *)self timedMetadataViewController];
  v55[4] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:5];

  v22 = [(TVRUINowPlayingViewController *)self view];
  v23 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
  [v22 convertRect:v32 fromView:{v25, v27, v29, v31}];
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
  v135 = [(TVRUINowPlayingBackgroundEffectViewController *)v134 view];
  v4 = [(TVRUINowPlayingBackgroundEffectViewController *)v134 contentView];
  v137 = objc_alloc_init(TVRUINowPlayingMiniPlayerViewController);
  [(TVRUINowPlayingMiniPlayerViewController *)v137 setCompactSolariumMode:v3];
  v5 = [(TVRUINowPlayingViewController *)self actionProvider];
  [(TVRUINowPlayingMiniPlayerViewController *)v137 setActionProvider:v5];

  v139 = [(TVRUINowPlayingMiniPlayerViewController *)v137 view];
  v155[0] = MEMORY[0x277D85DD0];
  v155[1] = 3221225472;
  v155[2] = __51__TVRUINowPlayingViewController_configureHierarchy__block_invoke;
  v155[3] = &unk_279D87C20;
  v155[4] = self;
  [(TVRUINowPlayingMiniPlayerViewController *)v137 setUpdateTabsHandler:v155];
  v133 = objc_alloc_init(TVRUIMiniPlayerMediaControlsViewController);
  v138 = [(TVRUIMiniPlayerMediaControlsViewController *)v133 view];
  v140 = objc_alloc_init(TVRUINowPlayingInfoViewController);
  v6 = [(TVRUINowPlayingViewController *)self actionProvider];
  [(TVRUINowPlayingInfoViewController *)v140 setActionProvider:v6];

  v7 = [(TVRUINowPlayingViewController *)self styleProvider];
  [(TVRUINowPlayingInfoViewController *)v140 setStyleProvider:v7];

  v143 = [(TVRUINowPlayingInfoViewController *)v140 view];
  [v143 setHidden:1];
  v144 = objc_alloc_init(TVRUIUpNextViewController);
  v8 = [(TVRUINowPlayingViewController *)self upNextProvider];
  [(TVRUIUpNextViewController *)v144 setUpNextProvider:v8];

  v9 = [(TVRUINowPlayingViewController *)self actionProvider];
  [(TVRUIUpNextViewController *)v144 setActionProvider:v9];

  [(TVRUIUpNextViewController *)v144 setNowPlayingProvider:self];
  v142 = [(TVRUIUpNextViewController *)v144 view];
  [v142 setHidden:1];
  v136 = objc_alloc_init(TVRUICastViewController);
  v10 = [(TVRUINowPlayingViewController *)self actionProvider];
  [(TVRUICastViewController *)v136 setActionProvider:v10];

  v141 = [(TVRUICastViewController *)v136 view];
  [v141 setHidden:1];
  v147 = [(TVRUINowPlayingViewController *)self view];
  [v147 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [MEMORY[0x277D75348] colorWithWhite:0.1 alpha:1.0];
  [v147 setBackgroundColor:v19];

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
        v25 = [v24 view];
        [v4 addSubview:v25];
      }

      v21 = [v20 countByEnumeratingWithState:&v151 objects:v159 count:16];
    }

    while (v21);
  }

  v131 = [(TVRUINowPlayingViewController *)self childViewControllerIdentifiers];
  v130 = objc_alloc_init(TVRUIDarkStyleProvider);
  v146 = [[TVRUITabSelectorControl alloc] initWithItems:v131 styleProvider:v130];
  [(TVRUITabSelectorControl *)v146 setDelegate:self];
  [(TVRUITabSelectorControl *)v146 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:v146];
  +[TVRUITabSelectorControl defaultHeight];
  v27 = v26;
  v28 = [(TVRUITabSelectorControl *)v146 heightAnchor];
  v132 = [v28 constraintEqualToConstant:v27];

  v29 = objc_alloc(MEMORY[0x277D75D18]);
  v145 = [v29 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v145 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [MEMORY[0x277D75348] colorWithWhite:0.4 alpha:0.9];
  [v145 setBackgroundColor:v30];

  [v4 addSubview:v145];
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

  [v135 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v139 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v138 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v143 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v142 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v141 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = [(TVRUINowPlayingViewController *)self traitCollection];
  v37 = [v36 userInterfaceIdiom] == 1;

  LODWORD(v38) = 1144750080;
  [v138 setContentHuggingPriority:1 forAxis:v38];
  v52 = MEMORY[0x277CCAAD0];
  v128 = [v135 topAnchor];
  v127 = [v147 topAnchor];
  v126 = [v128 constraintEqualToAnchor:v127];
  v157[0] = v126;
  v125 = [v135 leadingAnchor];
  v124 = [v147 leadingAnchor];
  v123 = [v125 constraintEqualToAnchor:v124];
  v157[1] = v123;
  v122 = [v135 trailingAnchor];
  v121 = [v147 trailingAnchor];
  v120 = [v122 constraintEqualToAnchor:v121];
  v157[2] = v120;
  v119 = [v139 topAnchor];
  v118 = [v4 topAnchor];
  v117 = [v119 constraintEqualToAnchor:v118 constant:v32];
  v157[3] = v117;
  v116 = [v139 leadingAnchor];
  v115 = [v4 leadingAnchor];
  v114 = [v116 constraintEqualToAnchor:v115];
  v157[4] = v114;
  v113 = [v139 trailingAnchor];
  v112 = [v4 trailingAnchor];
  v111 = [v113 constraintEqualToAnchor:v112];
  v157[5] = v111;
  v110 = [v138 topAnchor];
  v109 = [v139 bottomAnchor];
  v108 = [v110 constraintEqualToAnchor:v109 constant:v34];
  v157[6] = v108;
  v107 = [v138 centerXAnchor];
  v106 = [v4 centerXAnchor];
  v105 = [v107 constraintEqualToAnchor:v106];
  v157[7] = v105;
  v104 = [(TVRUITabSelectorControl *)v146 topAnchor];
  v103 = [v138 bottomAnchor];
  v102 = [v104 constraintEqualToAnchor:v103 constant:v35];
  v157[8] = v102;
  v101 = [(TVRUITabSelectorControl *)v146 leadingAnchor];
  v100 = [v4 leadingAnchor];
  v99 = [v101 constraintEqualToAnchor:v100];
  v157[9] = v99;
  v98 = [(TVRUITabSelectorControl *)v146 trailingAnchor];
  v97 = [v4 trailingAnchor];
  v96 = [v98 constraintEqualToAnchor:v97];
  v157[10] = v96;
  v95 = [(TVRUITabSelectorControl *)v146 bottomAnchor];
  v94 = [v4 bottomAnchor];
  v93 = [v95 constraintEqualToAnchor:v94 constant:-20.0];
  v157[11] = v93;
  v157[12] = v132;
  v92 = [v145 heightAnchor];
  v91 = [v92 constraintEqualToConstant:1.0];
  v157[13] = v91;
  v90 = [v145 widthAnchor];
  v89 = [v4 widthAnchor];
  v88 = [v90 constraintEqualToAnchor:v89 constant:-80.0];
  v157[14] = v88;
  v87 = [v145 centerXAnchor];
  v86 = [(TVRUITabSelectorControl *)v146 centerXAnchor];
  v85 = [v87 constraintEqualToAnchor:v86];
  v157[15] = v85;
  v84 = [v145 centerYAnchor];
  v83 = [(TVRUITabSelectorControl *)v146 centerYAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v157[16] = v82;
  v81 = [v143 topAnchor];
  v80 = [v147 topAnchor];
  v79 = [v81 constraintEqualToAnchor:v80];
  v157[17] = v79;
  v78 = [v143 leadingAnchor];
  v77 = [v147 leadingAnchor];
  v76 = [v78 constraintEqualToAnchor:v77];
  v157[18] = v76;
  v75 = [v143 trailingAnchor];
  v74 = [v147 trailingAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v157[19] = v73;
  v72 = [v143 bottomAnchor];
  v71 = [v147 bottomAnchor];
  if (v37)
  {
    v39 = -10.0;
  }

  else
  {
    v39 = -0.0;
  }

  v70 = [v72 constraintEqualToAnchor:v71 constant:v39];
  v157[20] = v70;
  v69 = [v142 topAnchor];
  v68 = [v147 topAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v157[21] = v67;
  v66 = [v142 leadingAnchor];
  v65 = [v147 leadingAnchor];
  v64 = [v66 constraintEqualToAnchor:v65];
  v157[22] = v64;
  v63 = [v142 trailingAnchor];
  v62 = [v147 trailingAnchor];
  v61 = [v63 constraintEqualToAnchor:v62];
  v157[23] = v61;
  v60 = [v142 bottomAnchor];
  v59 = [v147 bottomAnchor];
  v58 = [v60 constraintEqualToAnchor:v59 constant:v39];
  v157[24] = v58;
  v57 = [v141 topAnchor];
  v56 = [v147 topAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v157[25] = v55;
  v54 = [v141 leadingAnchor];
  v53 = [v147 leadingAnchor];
  v40 = [v54 constraintEqualToAnchor:v53 constant:20.0];
  v157[26] = v40;
  v41 = [v141 trailingAnchor];
  v42 = [v147 trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:-20.0];
  v157[27] = v43;
  v44 = [v141 bottomAnchor];
  v45 = [v147 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:v39];
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
  v51 = [(TVRUINowPlayingViewController *)self view];
  [v51 addGestureRecognizer:v50];

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
  v3 = [(TVRUINowPlayingViewController *)self childViewControllerIdentifiers];
  v4 = [v3 count];

  v5 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
  [v5 setHidden:v4 < 2];

  v6 = [(TVRUINowPlayingViewController *)self dividerView];
  [v6 setHidden:v4 > 1];
}

- (void)panRecognizerDidFire:(id)a3
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 state];
  v6 = [(TVRUINowPlayingViewController *)self view];
  [v4 translationInView:v6];
  v8 = v7;

  v9 = [(TVRUINowPlayingViewController *)self view];
  [v9 bounds];
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

  v13 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
  v14 = [v13 selectedIndex];

  v15 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
  v16 = [v15 items];
  v17 = [v16 count];

  if (v8 > 0.0 && v14)
  {
    v18 = v14 - 1;
  }

  else
  {
    if (v14 + 1 < v17)
    {
      v19 = v14 + 1;
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

  v20 = v14 == 0;
  v21 = v14 + 1 == v17;
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
  if (v5 != 2)
  {
    if (v5 == 1)
    {
      [(TVRUINowPlayingViewController *)self setInteractiveSwipeGestureIsApplyingRubberbandingTransform:0];
      goto LABEL_70;
    }

    if ((v5 - 3) > 2)
    {
      goto LABEL_70;
    }

    v33 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];

    v34 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
    v35 = [v34 isRunning];

    if (!v33)
    {
      if ([(TVRUINowPlayingViewController *)self interactiveSwipeGestureIsApplyingRubberbandingTransform])
      {
        v49 = objc_alloc(MEMORY[0x277D75D40]);
        v50 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:2];
        v51 = [v49 initWithDuration:v50 timingParameters:0.3];

        v52 = [(TVRUINowPlayingViewController *)self viewControllerForIndex:v14];
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
        v76[5] = v14;
        [v51 addCompletion:v76];
        v54 = [_TVRUIAnimationState animationStateWithIndex:v14 previousIndex:0x7FFFFFFFFFFFFFFFLL toViewController:v53 fromViewController:0 isInteractive:0];
        [(TVRUINowPlayingViewController *)self setCurrentAnimationState:v54];

        [(TVRUINowPlayingViewController *)self setCurrentTabSelectionAnimator:v51];
        [v51 startAnimation];
      }

      goto LABEL_70;
    }

    if (v35)
    {
      if (v5 == 3)
      {
        v36 = v26;
      }

      else
      {
        v36 = 1;
      }

      if ((v36 & 1) == 0)
      {
        v37 = [(TVRUINowPlayingViewController *)self currentAnimationState];
        if ([v37 index] == v18)
        {
          v38 = [(TVRUINowPlayingViewController *)self currentAnimationState];
          v39 = [v38 previousIndex];

          if (v39 == v14)
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
          v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
          v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
          LODWORD(buf.a) = 138412546;
          *(&buf.a + 4) = v73;
          WORD2(buf.b) = 2112;
          *(&buf.b + 6) = v74;
          _os_log_impl(&dword_26CFEB000, v72, OS_LOG_TYPE_INFO, "ANIM: pan gesture ended with animation in flight: performing interruption from: %@ -> %@", &buf, 0x16u);
        }

        v75 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
        [v75 setSelectedIndex:v18];

        v48 = 0.0;
        v44 = self;
        v45 = v14;
        v46 = v18;
        v47 = 0;
        goto LABEL_69;
      }

      goto LABEL_70;
    }

    v55 = [(TVRUINowPlayingViewController *)self view];
    [v4 velocityInView:v55];
    v57 = v56;

    if (v57 != 0.0)
    {
      v58 = [(TVRUINowPlayingViewController *)self currentAnimationState];
      v59 = [v58 index];
      v60 = [(TVRUINowPlayingViewController *)self currentAnimationState];
      LODWORD(v59) = v59 < [v60 previousIndex];

      if (v57 > 0.0 != v59)
      {
        v61 = _TVRUINowPlayingLog();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf.a) = 0;
          _os_log_impl(&dword_26CFEB000, v61, OS_LOG_TYPE_INFO, "ANIM: pan gesture ended with interactive animator, but user changed directions midway through so reverting in-progress interactive tab selection.", &buf, 2u);
        }

        v62 = [(TVRUINowPlayingViewController *)self currentAnimationState];
        v63 = [v62 previousIndex];

        v64 = [(TVRUINowPlayingViewController *)self currentAnimationState];
        v65 = [v64 index];

        v66 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
        [v66 setSelectedIndex:v63];

        v67 = objc_alloc(MEMORY[0x277D75D40]);
        v68 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:2];
        v69 = [v67 initWithDuration:v68 timingParameters:0.3];

        [(TVRUINowPlayingViewController *)self _performTabAnimationFromIndex:v65 toIndex:v63 isInteractive:0 interactivePercentage:v69 animator:0.0];
        goto LABEL_70;
      }
    }

    v70 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&dword_26CFEB000, v70, OS_LOG_TYPE_INFO, "ANIM: pan gesture ended with interactive animator: start animation...", &buf, 2u);
    }

    v32 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
    [v32 startAnimation];
LABEL_60:

    goto LABEL_70;
  }

  v27 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];

  if (v27)
  {
    v28 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
    v29 = [v28 isRunning];

    if (v29)
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

    v32 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
    [v32 setFractionComplete:v12];
    goto LABEL_60;
  }

  if ((v26 & 1) == 0)
  {
    v41 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
      LODWORD(buf.a) = 138412546;
      *(&buf.a + 4) = v42;
      WORD2(buf.b) = 2112;
      *(&buf.b + 6) = v43;
      _os_log_impl(&dword_26CFEB000, v41, OS_LOG_TYPE_INFO, "ANIM: pan fired and no animator present -- calling performTabAnimationFrom: %@ to: %@", &buf, 0x16u);
    }

    v44 = self;
    v45 = v14;
    v46 = v18;
    v47 = 1;
    v48 = v12;
LABEL_69:
    [(TVRUINowPlayingViewController *)v44 _performTabAnimationFromIndex:v45 toIndex:v46 isInteractive:v47 interactivePercentage:v48];
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
      [(TVRUINowPlayingViewController *)self _applyTransform:&v79 toChildViewControllerAtIndex:v14];
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

- (void)_tabAnimationDidCompleteWithFinalPosition:(int64_t)a3 viewControllerIndex:(unint64_t)a4
{
  if (!a3)
  {
    [(TVRUINowPlayingViewController *)self setCurrentAnimationState:?];
    [(TVRUINowPlayingViewController *)self setCurrentTabSelectionAnimator:0];
    v7 = [(TVRUINowPlayingViewController *)self viewControllerIdentifierForIndex:a4];
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

- (void)_applyTransform:(CGAffineTransform *)a3 toChildViewControllerAtIndex:(unint64_t)a4
{
  v5 = [(TVRUINowPlayingViewController *)self viewControllerForIndex:a4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 view];
    [v7 setTransform:&v8];
  }
}

- (void)_updateSelectorControlHeight
{
  v3 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
  [v3 layoutHeight];
  v5 = v4;

  if (v5 > 0.0)
  {
    v6 = [(TVRUINowPlayingViewController *)self tabSelectorControlHeightConstraint];
    [v6 setConstant:v5];
  }
}

- (BOOL)_canDisplayInsightsTabForNowPlayingInfo:(id)a3
{
  v3 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v4 = [v3 rawTimedMetadata];
  v5 = [v4 length] != 0;

  return v5;
}

- (id)_availableTabToDisplayForNowPlayingInfo:(id)a3
{
  v4 = a3;
  if ([(TVRUINowPlayingViewController *)self _canDisplayInsightsTabForNowPlayingInfo:v4])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"TVRemoteUIInSightTabTitle";
LABEL_5:
    v8 = [v5 localizedStringForKey:v7 value:&stru_287E6AEF8 table:@"Localizable"];

    goto LABEL_6;
  }

  if ([(TVRUINowPlayingViewController *)self _canDisplayInfoForNowPlayingInfo:v4])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"TVRemoteUIInfoTabTitle";
    goto LABEL_5;
  }

  if ([(TVRUINowPlayingViewController *)self _canDisplayUpNextTabForNowPlayingInfo:v4])
  {
    v8 = [(TVRUINowPlayingViewController *)self _upNextIdentifier];
  }

  else
  {
    v8 = 0;
  }

LABEL_6:

  return v8;
}

- (void)configureTimedMetadata
{
  v3 = _TVRUINowPlayingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Configure timed metadata", v9, 2u);
  }

  v4 = [(TVRUINowPlayingViewController *)self makeTimedMetadataPlaybackInfo];
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
  v7 = [v5 sharedInstance];
  v8 = [v7 makeViewController:v4];

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
  v6 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v7 = [v6 metadata];
  v8 = [v7 programID];
  [v5 setProgramId:v8];

  v9 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v10 = [v9 metadata];
  v11 = [v10 audioLanguage];
  [v5 setAudioLanguage:v11];

  v12 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v13 = [v12 playbackRate];
  [v13 doubleValue];
  [v5 setPlaybackRate:?];

  v14 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v15 = [v14 metadata];
  v16 = [v15 timeOffset];
  [v16 doubleValue];
  [v5 setCurrentTime:?];

  v17 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v18 = [v17 metadata];
  v19 = [v18 iTunesStoreIdentifier];
  [v5 setAdamId:v19];

  v20 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v21 = [v20 metadata];
  v22 = [v21 mainContentStartTime];
  [v22 doubleValue];
  [v5 setFeatureStartTime:?];

  v23 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v24 = [v23 rawTimedMetadata];
  [v5 setRawTimedMetadata:v24];

  v25 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v26 = [v25 metadata];
  v27 = [v26 timestamp];

  if (v27)
  {
    v28 = MEMORY[0x277CBEAA8];
    [v27 doubleValue];
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

- (void)_updateViewControllerVisibilityForSelectedIdentifier:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TVRUINowPlayingViewController *)self configureSegControlOrDividerViewVisibility];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TVRemoteUIInSightTabTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  v7 = [v4 isEqualToString:v6];

  v8 = [(TVRUINowPlayingViewController *)self _upNextIdentifier];
  v9 = [v4 isEqualToString:v8];

  if (v7)
  {
    [(TVRUINowPlayingViewController *)self configureTimedMetadataView];
  }

  v10 = [(TVRUINowPlayingViewController *)self timedMetadataViewController];
  v11 = [v10 view];
  [v11 setHidden:v7 ^ 1u];

  [(TVRUINowPlayingViewController *)self _callChildViewControllerAppearanceForAppearingIdentifier:v4];
  v12 = [(TVRUINowPlayingViewController *)self upNextViewController];
  [v12 setIsVisibleInParentUI:v9];

  if (v9)
  {
    v13 = [(TVRUINowPlayingViewController *)self upNextProvider];
    [v13 refreshIfNeeded];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = [(TVRUINowPlayingViewController *)self allPossibleChildViewControllerIdentifiers];
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        v20 = [v19 isEqualToString:v4];
        v21 = [(TVRUINowPlayingViewController *)self viewControllerForIdentifier:v19];
        v22 = v21;
        if (v21)
        {
          v23 = [v21 view];
          [v23 setHidden:v20 ^ 1u];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  if ([v4 length])
  {
    v24 = [(TVRUINowPlayingViewController *)self indexForViewControllerIdentifier:v4];
    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = v24;
      v26 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
      v27 = [v26 selectedIndex];

      if (v25 != v27)
      {
        v28 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
        [v28 setSelectedIndex:v25];
      }
    }
  }
}

- (void)_callChildViewControllerDisappearingForAllExceptIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(TVRUINowPlayingViewController *)self allPossibleChildViewControllerIdentifiers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v4 isEqualToString:v10] & 1) == 0)
        {
          [(TVRUINowPlayingViewController *)self _callChildViewControllerAppearanceForIdentifier:v10 appearing:0];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_callChildViewControllerAppearanceForIdentifier:(id)a3 appearing:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(TVRUINowPlayingViewController *)self viewControllerForIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _appearState];
    if ((v9 - 1) > 1)
    {
      if (v9 != 3 && v9 || !v4)
      {
LABEL_10:
        v10 = _TVRUINowPlayingLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [MEMORY[0x277CCABB0] numberWithBool:v4];
          v13 = 138412546;
          v14 = v6;
          v15 = 2112;
          v16 = v11;
          v12 = "ANIM: Not calling childViewController appearance transitions for %@, isAppearing=%@ as VC is already in this visibility state";
          goto LABEL_12;
        }

        goto LABEL_13;
      }
    }

    else if (v4)
    {
      goto LABEL_10;
    }

    [v8 beginAppearanceTransition:v4 animated:0];
    [v8 endAppearanceTransition];
    v10 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v4];
      v13 = 138412546;
      v14 = v6;
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

  v4 = [(TVRUINowPlayingViewController *)self timedMetadataViewController];
  v5 = [v4 view];
  v6 = [v5 superview];
  v7 = [(TVRUINowPlayingViewController *)self view];

  if (v6 != v7)
  {
    v8 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Add timed metadata view to view hierarchy", buf, 2u);
    }

    v27 = [(TVRUINowPlayingViewController *)self timedMetadataViewController];
    v9 = [v27 view];
    v10 = [(TVRUINowPlayingViewController *)self view];
    [v9 setClipsToBounds:1];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setHidden:1];
    [(TVRUINowPlayingViewController *)self setTimedMetadataViewController:v27];
    [(TVRUINowPlayingViewController *)self bs_addChildViewController:v27];
    v11 = [(TVRUINowPlayingViewController *)self backgroundEffectViewController];
    v12 = [v11 view];
    [v10 bringSubviewToFront:v12];

    v21 = MEMORY[0x277CCAAD0];
    v26 = [v9 topAnchor];
    v25 = [v10 topAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v29[0] = v24;
    v23 = [v9 leadingAnchor];
    v22 = [v10 leadingAnchor];
    v13 = [v23 constraintEqualToAnchor:v22 constant:0.0];
    v29[1] = v13;
    v14 = [v9 trailingAnchor];
    v15 = [v10 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];
    v29[2] = v16;
    v17 = [v9 bottomAnchor];
    v18 = [v10 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v29[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [v21 activateConstraints:v20];
  }
}

- (NSArray)childViewControllerIdentifiers
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v4 = [(TVRUINowPlayingViewController *)self _canDisplayInfoForNowPlayingInfo:v3];

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

  v8 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v9 = [(TVRUINowPlayingViewController *)self _canDisplayInsightsTabForNowPlayingInfo:v8];

  if (v9)
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"TVRemoteUIInSightTabTitle" value:&stru_287E6AEF8 table:@"Localizable"];
    v12 = [v7 arrayByAddingObject:v11];

    v7 = v12;
  }

  v13 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v14 = [(TVRUINowPlayingViewController *)self _canDisplayCastTabForNowPlayingInfo:v13];

  if (v14)
  {
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"TVRemoteUICastTab" value:&stru_287E6AEF8 table:@"Localizable"];
    v17 = [v7 arrayByAddingObject:v16];

    v7 = v17;
  }

  v18 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
  v19 = [(TVRUINowPlayingViewController *)self _canDisplayUpNextTabForNowPlayingInfo:v18];

  if (v19)
  {
    v20 = [(TVRUINowPlayingViewController *)self _upNextIdentifier];
    v21 = [v7 arrayByAddingObject:v20];

    v7 = v21;
  }

  return v7;
}

- (BOOL)_viewControllerIdentifierIsAvailable:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(TVRUINowPlayingViewController *)self childViewControllerIdentifiers];
  v6 = [v5 indexOfObject:v4];

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
  v7 = [(TVRUINowPlayingViewController *)self _upNextIdentifier];
  v12[2] = v7;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"TVRemoteUICastTab" value:&stru_287E6AEF8 table:@"Localizable"];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  return v10;
}

- (NSDictionary)childViewControllerDict
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(TVRUINowPlayingViewController *)self nowPlayingInfoViewController];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TVRemoteUIInfoTabTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  [v3 setObject:v4 forKeyedSubscript:v6];

  v7 = [(TVRUINowPlayingViewController *)self timedMetadataViewController];

  if (v7)
  {
    v8 = [(TVRUINowPlayingViewController *)self timedMetadataViewController];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"TVRemoteUIInSightTabTitle" value:&stru_287E6AEF8 table:@"Localizable"];
    [v3 setObject:v8 forKeyedSubscript:v10];
  }

  v11 = [(TVRUINowPlayingViewController *)self upNextViewController];
  v12 = [(TVRUINowPlayingViewController *)self _upNextIdentifier];
  [v3 setObject:v11 forKeyedSubscript:v12];

  v13 = [(TVRUINowPlayingViewController *)self castViewController];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"TVRemoteUICastTab" value:&stru_287E6AEF8 table:@"Localizable"];
  [v3 setObject:v13 forKeyedSubscript:v15];

  return v3;
}

- (unint64_t)indexForViewControllerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TVRUINowPlayingViewController *)self childViewControllerIdentifiers];
  v6 = [v5 indexOfObjectIdenticalTo:v4];

  return v6;
}

- (id)viewControllerIdentifierForIndex:(unint64_t)a3
{
  v5 = [(TVRUINowPlayingViewController *)self childViewControllerIdentifiers];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(TVRUINowPlayingViewController *)self childViewControllerIdentifiers];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (id)viewControllerForIndex:(unint64_t)a3
{
  v4 = [(TVRUINowPlayingViewController *)self viewControllerIdentifierForIndex:a3];
  if (v4)
  {
    v5 = [(TVRUINowPlayingViewController *)self childViewControllerDict];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)viewControllerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TVRUINowPlayingViewController *)self childViewControllerDict];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)_reconfigureTabsIfNeeded
{
  v3 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
  v4 = [(TVRUINowPlayingViewController *)self childViewControllerIdentifiers];
  [v3 updateItems:v4 animated:1];

  v5 = [(TVRUINowPlayingViewController *)self currentViewControllerIdentifier];
  v6 = [(TVRUINowPlayingViewController *)self indexForViewControllerIdentifier:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(TVRUINowPlayingViewController *)self nowPlayingInfo];
    v8 = [(TVRUINowPlayingViewController *)self _availableTabToDisplayForNowPlayingInfo:v7];
    [(TVRUINowPlayingViewController *)self setCurrentViewControllerIdentifier:v8];
  }

  v9 = [(TVRUINowPlayingViewController *)self currentViewControllerIdentifier];
  [(TVRUINowPlayingViewController *)self _updateViewControllerVisibilityForSelectedIdentifier:v9];

  [(TVRUINowPlayingViewController *)self _updateSelectorControlHeight];
}

- (void)_performTabAnimationFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4 isInteractive:(BOOL)a5 interactivePercentage:(double)a6
{
  v7 = a5;
  v11 = +[TVRUICubicSpringAnimator standardSpringAnimator];
  [(TVRUINowPlayingViewController *)self _performTabAnimationFromIndex:a3 toIndex:a4 isInteractive:v7 interactivePercentage:v11 animator:a6];
}

- (void)_performTabAnimationFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4 isInteractive:(BOOL)a5 interactivePercentage:(double)a6 animator:(id)a7
{
  v8 = a5;
  v82 = *MEMORY[0x277D85DE8];
  v61 = a7;
  v12 = [(TVRUINowPlayingViewController *)self viewControllerForIndex:a4];
  v13 = [(TVRUINowPlayingViewController *)self viewControllerForIndex:a3];
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = !v15 && a4 != a3;
  v18 = [(TVRUINowPlayingViewController *)self viewControllerIdentifierForIndex:a4];
  [(TVRUINowPlayingViewController *)self setCurrentViewControllerIdentifier:v18];
  v19 = [(TVRUINowPlayingViewController *)self currentViewControllerIdentifier];
  [(TVRUINowPlayingViewController *)self setLastExplicitUserSelectedViewControllerIdentifier:v19];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__TVRUINowPlayingViewController__performTabAnimationFromIndex_toIndex_isInteractive_interactivePercentage_animator___block_invoke;
  aBlock[3] = &unk_279D88230;
  aBlock[4] = self;
  v20 = v18;
  v79 = v20;
  v21 = _Block_copy(aBlock);
  v60 = v8;
  if (v8)
  {
    v22 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
    [v22 setSelectedIndex:a4];
  }

  if (v17)
  {
    v55 = v21;
    v23 = [(TVRUINowPlayingViewController *)self currentAnimationState];
    v59 = [_TVRUIAnimationState animationStateWithIndex:a4 previousIndex:a3 toViewController:v12 fromViewController:v14 isInteractive:v60];
    [(TVRUINowPlayingViewController *)self _callChildViewControllerAppearanceForAppearingIdentifier:v20];
    v24 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
    v56 = v20;
    if ([v24 isRunning])
    {
      v25 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
      v26 = [v25 isInterruptible];

      if (v26)
      {
        v27 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
        [v27 stopAnimation:0];

        v28 = [(TVRUINowPlayingViewController *)self currentTabSelectionAnimator];
        [v28 finishAnimationAtPosition:2];

        [(TVRUINowPlayingViewController *)self setCurrentTabSelectionAnimator:0];
      }
    }

    else
    {
    }

    v31 = [(TVRUINowPlayingViewController *)self view];
    [v31 bounds];
    Width = CGRectGetWidth(v83);

    LOBYTE(v31) = [v23 isParticpantViewController:v12];
    v33 = [v23 isParticpantViewController:v14];
    v58 = v12;
    v53 = a4 < a3;
    if (v31)
    {
      v34 = _TVRUINowPlayingLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
        LODWORD(buf.a) = 138412290;
        *(&buf.a + 4) = v35;
        _os_log_impl(&dword_26CFEB000, v34, OS_LOG_TYPE_INFO, "ANIM: viewController @ index=%@ is currently animating, not setting transform.", &buf, 0xCu);
      }
    }

    else
    {
      v36 = [v12 view];
      [v36 setHidden:0];

      v37 = -Width;
      if (a4 >= a3)
      {
        v37 = Width;
      }

      CGAffineTransformMakeTranslation(&v77, v37, 0.0);
      v34 = [v12 view];
      buf = v77;
      [v34 setTransform:&buf];
    }

    v38 = MEMORY[0x277CBF2C0];
    v57 = v14;
    if (v33)
    {
      v39 = _TVRUINowPlayingLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
        LODWORD(buf.a) = 138412290;
        *(&buf.a + 4) = v40;
        _os_log_impl(&dword_26CFEB000, v39, OS_LOG_TYPE_INFO, "ANIM: previous VC @ index=%@ is currently animating, not resetting hidden state = NO", &buf, 0xCu);
      }
    }

    else
    {
      v41 = [v14 view];
      [v41 setHidden:0];

      v39 = [v14 view];
      v42 = v38[1];
      *&buf.a = *v38;
      *&buf.c = v42;
      *&buf.tx = v38[2];
      [v39 setTransform:&buf];
    }

    v54 = v23;
    v43 = [v23 viewControllersNoLongerAnimatingForDestinationAnimationState:v59];
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
          v49 = [v48 view];
          [v49 setHidden:1];

          v50 = [v48 view];
          *&buf.a = v64;
          *&buf.c = v63;
          *&buf.tx = v62;
          [v50 setTransform:&buf];

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
    v30 = v61;
    [v61 addAnimations:v68];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __116__TVRUINowPlayingViewController__performTabAnimationFromIndex_toIndex_isInteractive_interactivePercentage_animator___block_invoke_47;
    v65[3] = &unk_279D88A70;
    v66 = v52;
    v21 = v55;
    v67 = v55;
    [v61 addCompletion:v65];
    if (v60)
    {
      [v61 setScrubsLinearly:1];
      [v61 setFractionComplete:a6];
      [v61 pauseAnimation];
    }

    else
    {
      [v61 startAnimation];
    }

    v20 = v56;
    [(TVRUINowPlayingViewController *)self setCurrentAnimationState:v59];
    [(TVRUINowPlayingViewController *)self setCurrentTabSelectionAnimator:v61];

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

    v30 = v61;
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(TVRUINowPlayingViewController *)self nowPlayingInfoViewController];
  v6 = [v5 userInteractionInProgress];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(TVRUINowPlayingViewController *)self view];
    [v4 locationInView:v8];
    v10 = v9;

    v11 = [(TVRUINowPlayingViewController *)self tabSelectorControl];
    [v11 frame];
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