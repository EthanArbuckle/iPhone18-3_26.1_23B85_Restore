@interface TVRUIUpNextViewController
- (BOOL)_currentTraitsSizeCategoryRequiresStackedLayout;
- (BOOL)isCurrentlyPlayingMedia;
- (TVRUIActionProviding)actionProvider;
- (TVRUINowPlayingProviding)nowPlayingProvider;
- (TVRUIUpNextProviding)upNextProvider;
- (id)_layout;
- (void)_configureHierarchy;
- (void)_confirmOkToPlayUpNextInfo:(id)info withHandler:(id)handler;
- (void)_refreshAsNeededIfVisible;
- (void)_refreshUIAnimated:(BOOL)animated;
- (void)_updateEmptyStateAndActivityIndicatorForCurrentState;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)markItemAsWatched:(id)watched;
- (void)openURL:(id)l;
- (void)playItem:(id)item animated:(BOOL)animated;
- (void)removeItemFromUpNext:(id)next;
- (void)requestImageForInfo:(id)info completion:(id)completion;
- (void)requestImageForURLTemplate:(id)template size:(CGSize)size identifier:(id)identifier completion:(id)completion;
- (void)resetContent;
- (void)shareEpisodeForInfo:(id)info sourceView:(id)view;
- (void)sharePrimaryForInfo:(id)info sourceView:(id)view;
- (void)shareShowForInfo:(id)info sourceView:(id)view;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TVRUIUpNextViewController

- (void)resetContent
{
  v4 = objc_alloc_init(MEMORY[0x277CFB890]);
  dataSource = [(TVRUIUpNextViewController *)self dataSource];
  [dataSource applySnapshot:v4 animatingDifferences:0];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = TVRUIUpNextViewController;
  [(TVRUIUpNextViewController *)&v16 viewDidLoad];
  v3 = objc_alloc_init(TVRUIImageFetcher);
  imageFetcher = self->_imageFetcher;
  self->_imageFetcher = v3;

  [(TVRUIUpNextViewController *)self _configureHierarchy];
  upNextProvider = [(TVRUIUpNextViewController *)self upNextProvider];
  infos = [upNextProvider infos];
  [(TVRUIUpNextViewController *)self setInfos:infos];

  [(TVRUIUpNextViewController *)self _refreshUIAnimated:0];
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__TVRUIUpNextViewController_viewDidLoad__block_invoke;
  v13[3] = &unk_279D87E10;
  objc_copyWeak(&v14, &location);
  v8 = [defaultCenter addObserverForName:@"TVRUIUpNextInfosRequestedNotification" object:0 queue:0 usingBlock:v13];
  [(TVRUIUpNextViewController *)self setInfosRequestedNotificationObserver:v8];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__TVRUIUpNextViewController_viewDidLoad__block_invoke_3;
  v11[3] = &unk_279D87E10;
  objc_copyWeak(&v12, &location);
  v10 = [defaultCenter2 addObserverForName:@"TVRUIUpNextInfosDidChangeNotification" object:0 queue:0 usingBlock:v11];
  [(TVRUIUpNextViewController *)self setInfosDidChangeNotificationObserver:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __40__TVRUIUpNextViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__TVRUIUpNextViewController_viewDidLoad__block_invoke_2;
    block[3] = &unk_279D87C20;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __40__TVRUIUpNextViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _isHorizontalMode])
  {
    v2 = [*(a1 + 32) infos];
    v3 = [v2 count];

    if (!v3)
    {
      v4 = [*(a1 + 32) loadingView];
      [v4 reset];

      v5 = [*(a1 + 32) loadingView];
      [v5 didStartLoadingWithTimeout:10.0];
    }
  }
}

void __40__TVRUIUpNextViewController_viewDidLoad__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__TVRUIUpNextViewController_viewDidLoad__block_invoke_4;
    v6[3] = &unk_279D88230;
    v6[4] = WeakRetained;
    v7 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __40__TVRUIUpNextViewController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) upNextProvider];
  v3 = [v2 infos];
  [*(a1 + 32) setInfos:v3];

  [*(a1 + 32) _refreshUIAnimated:1];
  if ([*(a1 + 32) _isHorizontalMode])
  {
    v4 = [*(a1 + 40) userInfo];
    v5 = [v4 objectForKeyedSubscript:@"TVRUIUpNextInfosDidChangeFromRequestKey"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v8 = [*(a1 + 32) loadingView];
      v7 = [*(a1 + 32) infos];
      [v8 loadingCompleteWithContent:{objc_msgSend(v7, "count") != 0}];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = TVRUIUpNextViewController;
  [(TVRUIUpNextViewController *)&v9 viewWillAppear:appear];
  v4 = [MEMORY[0x277CBEAA8] now];
  [(TVRUIUpNextViewController *)self setDidAppearTimestamp:v4];

  [(TVRUIUpNextViewController *)self _updateEmptyStateAndActivityIndicatorForCurrentState];
  upNextProvider = [(TVRUIUpNextViewController *)self upNextProvider];
  hasFetchedInfos = [upNextProvider hasFetchedInfos];

  if ((hasFetchedInfos & 1) == 0)
  {
    v7 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__TVRUIUpNextViewController_viewWillAppear___block_invoke;
    block[3] = &unk_279D87C20;
    block[4] = self;
    dispatch_after(v7, MEMORY[0x277D85CD0], block);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = TVRUIUpNextViewController;
  [(TVRUIUpNextViewController *)&v18 viewWillDisappear:disappear];
  if ([(TVRUIUpNextViewController *)self _isHorizontalMode])
  {
    collectionView = [(TVRUIUpNextViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = visibleCells;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            actionButton = [v11 actionButton];
            contextMenuInteraction = [actionButton contextMenuInteraction];

            [contextMenuInteraction dismissMenu];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

- (void)dealloc
{
  infosDidChangeNotificationObserver = [(TVRUIUpNextViewController *)self infosDidChangeNotificationObserver];

  if (infosDidChangeNotificationObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    infosDidChangeNotificationObserver2 = [(TVRUIUpNextViewController *)self infosDidChangeNotificationObserver];
    [defaultCenter removeObserver:infosDidChangeNotificationObserver2];
  }

  infosRequestedNotificationObserver = [(TVRUIUpNextViewController *)self infosRequestedNotificationObserver];

  if (infosRequestedNotificationObserver)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    infosRequestedNotificationObserver2 = [(TVRUIUpNextViewController *)self infosRequestedNotificationObserver];
    [defaultCenter2 removeObserver:infosRequestedNotificationObserver2];
  }

  refreshTimer = [(TVRUIUpNextViewController *)self refreshTimer];
  [refreshTimer invalidate];

  v10.receiver = self;
  v10.super_class = TVRUIUpNextViewController;
  [(TVRUIUpNextViewController *)&v10 dealloc];
}

- (void)_configureHierarchy
{
  v191 = *MEMORY[0x277D85DE8];
  v92 = +[TVRUIFeatures isSolariumEnabled];
  v3 = objc_alloc(MEMORY[0x277D752A0]);
  val = self;
  _layout = [(TVRUIUpNextViewController *)self _layout];
  v5 = [v3 initWithFrame:_layout collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  obj = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:clearColor];

  [v5 setPrefetchingEnabled:0];
  [v5 setDelegate:val];
  if ([(TVRUIUpNextViewController *)val _isHorizontalMode])
  {
    [v5 setBouncesVertically:0];
  }

  objc_initWeak(&location, val);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__TVRUIUpNextViewController__configureHierarchy__block_invoke;
  aBlock[3] = &unk_279D88400;
  objc_copyWeak(&v184, &location);
  v7 = _Block_copy(aBlock);
  v8 = MEMORY[0x277D752B0];
  v9 = objc_opt_class();
  v181[0] = MEMORY[0x277D85DD0];
  v181[1] = 3221225472;
  v181[2] = __48__TVRUIUpNextViewController__configureHierarchy__block_invoke_2;
  v181[3] = &unk_279D88428;
  v10 = v7;
  v182 = v10;
  v11 = [v8 registrationWithCellClass:v9 configurationHandler:v181];
  v12 = MEMORY[0x277D752B0];
  v13 = objc_opt_class();
  v179[0] = MEMORY[0x277D85DD0];
  v179[1] = 3221225472;
  v179[2] = __48__TVRUIUpNextViewController__configureHierarchy__block_invoke_3;
  v179[3] = &unk_279D88428;
  v91 = v10;
  v180 = v91;
  v14 = [v12 registrationWithCellClass:v13 configurationHandler:v179];
  v15 = MEMORY[0x277D752B0];
  v16 = objc_opt_class();
  v177[0] = MEMORY[0x277D85DD0];
  v177[1] = 3221225472;
  v177[2] = __48__TVRUIUpNextViewController__configureHierarchy__block_invoke_4;
  v177[3] = &unk_279D88450;
  objc_copyWeak(&v178, &location);
  v17 = [v15 registrationWithCellClass:v16 configurationHandler:v177];
  v18 = MEMORY[0x277D752B0];
  v19 = objc_opt_class();
  v175[0] = MEMORY[0x277D85DD0];
  v175[1] = 3221225472;
  v175[2] = __48__TVRUIUpNextViewController__configureHierarchy__block_invoke_5;
  v175[3] = &unk_279D88478;
  objc_copyWeak(&v176, &location);
  v20 = [v18 registrationWithCellClass:v19 configurationHandler:v175];
  v21 = MEMORY[0x277D752B0];
  v22 = objc_opt_class();
  v173[0] = MEMORY[0x277D85DD0];
  v173[1] = 3221225472;
  v173[2] = __48__TVRUIUpNextViewController__configureHierarchy__block_invoke_6;
  v173[3] = &unk_279D884A0;
  objc_copyWeak(&v174, &location);
  v23 = [v21 registrationWithCellClass:v22 configurationHandler:v173];
  _isHorizontalMode = [(TVRUIUpNextViewController *)val _isHorizontalMode];
  v24 = objc_alloc(MEMORY[0x277D752D0]);
  v166[0] = MEMORY[0x277D85DD0];
  v166[1] = 3221225472;
  v166[2] = __48__TVRUIUpNextViewController__configureHierarchy__block_invoke_7;
  v166[3] = &unk_279D884C8;
  v172 = _isHorizontalMode;
  v90 = v23;
  v167 = v90;
  v89 = v20;
  v168 = v89;
  v88 = v17;
  v169 = v88;
  v87 = v14;
  v170 = v87;
  v86 = v11;
  v171 = v86;
  v25 = [v24 initWithCollectionView:obj cellProvider:v166];
  dataSource = val->_dataSource;
  val->_dataSource = v25;

  view = [(TVRUIUpNextViewController *)val view];
  [view addSubview:obj];
  v156 = view;
  v28 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v28 setHidden:1];
  [v156 addSubview:v28];
  v149 = v28;
  v29 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v29 setHidden:1];
  v153 = v29;
  v30 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v29 addSubview:v30];
  v151 = objc_alloc_init(MEMORY[0x277D756B8]);
  v31 = *MEMORY[0x277D743C8];
  v32 = *MEMORY[0x277D76808];
  v33 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A20] design:*MEMORY[0x277D743C8] variant:1024 maximumContentSizeCategory:*MEMORY[0x277D76808] compatibleWithTraitCollection:0];
  [v151 setFont:v33];

  [v151 setTextAlignment:1];
  v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v35 = [v34 localizedStringForKey:@"TVRUIUpNextEmptyTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  [v151 setText:v35];

  labelColor = [MEMORY[0x277D75348] labelColor];
  [v151 setTextColor:labelColor];

  v154 = objc_alloc_init(MEMORY[0x277D756B8]);
  v37 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769C0] design:v31 variant:0 maximumContentSizeCategory:v32 compatibleWithTraitCollection:0];
  [v154 setFont:v37];

  [v154 setTextAlignment:1];
  [v154 setNumberOfLines:2];
  v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v39 = [v38 localizedStringForKey:@"TVRUIUpNextEmptySubheading" value:&stru_287E6AEF8 table:@"Localizable"];
  [v154 setText:v39];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v154 setTextColor:secondaryLabelColor];

  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v189[0] = v151;
  v189[1] = v154;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:2];
  v42 = [v41 countByEnumeratingWithState:&v162 objects:v190 count:16];
  if (v42)
  {
    v43 = *v163;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v163 != v43)
        {
          objc_enumerationMutation(v41);
        }

        v45 = *(*(&v162 + 1) + 8 * i);
        [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v45 setAdjustsFontForContentSizeCategory:1];
        [v30 addSubview:v45];
      }

      v42 = [v41 countByEnumeratingWithState:&v162 objects:v190 count:16];
    }

    while (v42);
  }

  mode = [(TVRUIUpNextViewController *)val mode];
  if (mode)
  {
    v47 = 10.0;
  }

  else
  {
    v47 = 2.0;
  }

  if (mode)
  {
    v48 = -80.0;
  }

  else
  {
    v48 = -17.0;
  }

  v102 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v30 centerXAnchor];
  centerXAnchor2 = [v153 centerXAnchor];
  v142 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v188[0] = v142;
  centerYAnchor = [v30 centerYAnchor];
  centerYAnchor2 = [v153 centerYAnchor];
  v136 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:v48];
  v188[1] = v136;
  widthAnchor = [v30 widthAnchor];
  widthAnchor2 = [v153 widthAnchor];
  v130 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-40.0];
  v188[2] = v130;
  topAnchor = [v151 topAnchor];
  topAnchor2 = [v30 topAnchor];
  v124 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v188[3] = v124;
  leadingAnchor = [v151 leadingAnchor];
  leadingAnchor2 = [v30 leadingAnchor];
  v118 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v188[4] = v118;
  trailingAnchor = [v151 trailingAnchor];
  trailingAnchor2 = [v30 trailingAnchor];
  v112 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v188[5] = v112;
  topAnchor3 = [v154 topAnchor];
  bottomAnchor = [v151 bottomAnchor];
  v106 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:v47];
  v188[6] = v106;
  leadingAnchor3 = [v154 leadingAnchor];
  leadingAnchor4 = [v30 leadingAnchor];
  v50 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v188[7] = v50;
  trailingAnchor3 = [v154 trailingAnchor];
  trailingAnchor4 = [v30 trailingAnchor];
  v53 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v188[8] = v53;
  bottomAnchor2 = [v154 bottomAnchor];
  bottomAnchor3 = [v30 bottomAnchor];
  v56 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v188[9] = v56;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:10];
  [v102 activateConstraints:v57];

  [v156 addSubview:v153];
  v155 = objc_alloc_init(TVRUILoadingView);
  [(TVRUILoadingView *)v155 setTranslatesAutoresizingMaskIntoConstraints:0];
  v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v59 = [v58 localizedStringForKey:@"TVRUIUpNextEmptyTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  [(TVRUILoadingView *)v155 setNoContentText:v59];

  [v156 addSubview:v155];
  v85 = MEMORY[0x277CCAAD0];
  centerYAnchor3 = [v149 centerYAnchor];
  centerYAnchor4 = [v156 centerYAnchor];
  v145 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:-80.0];
  v187[0] = v145;
  centerXAnchor3 = [v149 centerXAnchor];
  centerXAnchor4 = [v156 centerXAnchor];
  v139 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v187[1] = v139;
  topAnchor4 = [v153 topAnchor];
  topAnchor5 = [v156 topAnchor];
  v133 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v187[2] = v133;
  leadingAnchor5 = [v153 leadingAnchor];
  leadingAnchor6 = [v156 leadingAnchor];
  v127 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v187[3] = v127;
  trailingAnchor5 = [v153 trailingAnchor];
  trailingAnchor6 = [v156 trailingAnchor];
  v121 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v187[4] = v121;
  bottomAnchor4 = [v153 bottomAnchor];
  bottomAnchor5 = [v156 bottomAnchor];
  v115 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v187[5] = v115;
  topAnchor6 = [(TVRUILoadingView *)v155 topAnchor];
  topAnchor7 = [v156 topAnchor];
  v109 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v187[6] = v109;
  leadingAnchor7 = [(TVRUILoadingView *)v155 leadingAnchor];
  leadingAnchor8 = [v156 leadingAnchor];
  v103 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v187[7] = v103;
  trailingAnchor7 = [(TVRUILoadingView *)v155 trailingAnchor];
  trailingAnchor8 = [v156 trailingAnchor];
  v99 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v187[8] = v99;
  bottomAnchor6 = [(TVRUILoadingView *)v155 bottomAnchor];
  bottomAnchor7 = [v156 bottomAnchor];
  v96 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v187[9] = v96;
  topAnchor8 = [obj topAnchor];
  topAnchor9 = [v156 topAnchor];
  v93 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  v187[10] = v93;
  bottomAnchor8 = [obj bottomAnchor];
  bottomAnchor9 = [v156 bottomAnchor];
  v62 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
  v187[11] = v62;
  leadingAnchor9 = [obj leadingAnchor];
  leadingAnchor10 = [v156 leadingAnchor];
  v65 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v187[12] = v65;
  trailingAnchor9 = [obj trailingAnchor];
  trailingAnchor10 = [v156 trailingAnchor];
  v68 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v187[13] = v68;
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:14];
  [v85 activateConstraints:v69];

  objc_storeStrong(&val->_collectionView, obj);
  objc_storeStrong(&val->_activityIndicatorView, v149);
  objc_storeStrong(&val->_emptyStateView, v153);
  objc_storeStrong(&val->_loadingView, v155);
  [(TVRUILoadingView *)val->_loadingView setHidden:!_isHorizontalMode];
  v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v71 = [v70 localizedStringForKey:@"TVRemoteUIUpNextTab" value:&stru_287E6AEF8 table:@"Localizable"];

  if ([(TVRUIUpNextViewController *)val _isStandaloneMode])
  {
    [(TVRUIUpNextViewController *)val setIsVisibleInParentUI:1];
    blackColor = [MEMORY[0x277D75348] blackColor];
    view2 = [(TVRUIUpNextViewController *)val view];
    [view2 setBackgroundColor:blackColor];

    navigationItem = [(TVRUIUpNextViewController *)val navigationItem];
    [navigationItem setTitle:v71];

    v75 = objc_alloc(MEMORY[0x277D751E0]);
    v76 = MEMORY[0x277D750C8];
    v160[0] = MEMORY[0x277D85DD0];
    v160[1] = 3221225472;
    v160[2] = __48__TVRUIUpNextViewController__configureHierarchy__block_invoke_8;
    v160[3] = &unk_279D87C68;
    objc_copyWeak(&v161, &location);
    v77 = [v76 actionWithHandler:v160];
    v78 = [v75 initWithBarButtonSystemItem:0 primaryAction:v77];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v78 setTintColor:whiteColor];

    navigationItem2 = [(TVRUIUpNextViewController *)val navigationItem];
    [navigationItem2 setRightBarButtonItem:v78];

    objc_destroyWeak(&v161);
  }

  else
  {
    [(TVRUIUpNextViewController *)val setTitle:v71];
  }

  [_TVRUIUpNextCell setIsStackedLayout:[(TVRUIUpNextViewController *)val _currentTraitsSizeCategoryRequiresStackedLayout]];
  [_TVRUIUpNextCell setIsSolariumLayout:v92];
  v186 = objc_opt_class();
  v81 = [MEMORY[0x277CBEA60] arrayWithObjects:&v186 count:1];
  v158[0] = MEMORY[0x277D85DD0];
  v158[1] = 3221225472;
  v158[2] = __48__TVRUIUpNextViewController__configureHierarchy__block_invoke_9;
  v158[3] = &unk_279D87BF8;
  objc_copyWeak(&v159, &location);
  v82 = [(TVRUIUpNextViewController *)val registerForTraitChanges:v81 withHandler:v158];

  v83 = objc_alloc_init(TVREventHaptic);
  eventHaptic = val->_eventHaptic;
  val->_eventHaptic = v83;

  objc_destroyWeak(&v159);
  objc_destroyWeak(&v174);

  objc_destroyWeak(&v176);
  objc_destroyWeak(&v178);

  objc_destroyWeak(&v184);
  objc_destroyWeak(&location);
}

void __48__TVRUIUpNextViewController__configureHierarchy__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a3;
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained infos];
    v12 = [v11 count];

    v13 = [v15 item] != v12 - 1;
  }

  else
  {
    v13 = 1;
  }

  [v8 setShowsSeparator:{v13 & (objc_msgSend(v10, "_isHorizontalMode") ^ 1)}];
  v14 = objc_loadWeakRetained((a1 + 32));
  [v8 setDelegate:v14];

  [v8 setUpNextInfo:v7];
}

void __48__TVRUIUpNextViewController__configureHierarchy__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v8 setDelegate:WeakRetained];
    [v8 setUpNextInfo:v6];
  }
}

void __48__TVRUIUpNextViewController__configureHierarchy__block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained upNextProvider];
  [v4 requestMore];

  [v5 animate];
}

void __48__TVRUIUpNextViewController__configureHierarchy__block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained upNextProvider];
  [v4 requestMore];

  [v5 animate];
}

id __48__TVRUIUpNextViewController__configureHierarchy__block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [v7 isMoreItem];
  v11 = *(a1 + 72);
  if (v10)
  {
    v12 = v11 == 0;
    v13 = 40;
    v14 = 32;
  }

  else
  {
    if (v11)
    {
      v13 = 48;
      goto LABEL_8;
    }

    v12 = !+[_TVRUIUpNextCell isStackedLayout];
    v13 = 64;
    v14 = 56;
  }

  if (!v12)
  {
    v13 = v14;
  }

LABEL_8:
  v15 = *(a1 + v13);
  v16 = [v7 upNextInfo];
  v17 = [v9 dequeueConfiguredReusableCellWithRegistration:v15 forIndexPath:v8 item:v16];

  return v17;
}

void __48__TVRUIUpNextViewController__configureHierarchy__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __48__TVRUIUpNextViewController__configureHierarchy__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    +[_TVRUIUpNextCell setIsStackedLayout:](_TVRUIUpNextCell, "setIsStackedLayout:", [WeakRetained _currentTraitsSizeCategoryRequiresStackedLayout]);
    v2 = [v5 dataSource];
    v3 = [v2 snapshot];

    v4 = [v5 dataSource];
    [v4 applySnapshotUsingReloadData:v3];

    WeakRetained = v5;
  }
}

- (id)_layout
{
  if ([(TVRUIUpNextViewController *)self _isHorizontalMode])
  {
    v3 = [objc_alloc(MEMORY[0x277D752B8]) initWithSectionProvider:&__block_literal_global_10];
  }

  else
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277D752B8]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__TVRUIUpNextViewController__layout__block_invoke_2;
    v6[3] = &unk_279D88388;
    objc_copyWeak(&v7, &location);
    v3 = [v4 initWithSectionProvider:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __36__TVRUIUpNextViewController__layout__block_invoke()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CFB870];
  v1 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v2 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
  v3 = [v0 sizeWithWidthDimension:v1 heightDimension:v2];

  v4 = [MEMORY[0x277CFB860] itemWithLayoutSize:v3];
  v5 = MEMORY[0x277CFB870];
  v6 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.77777778];
  v7 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
  v8 = [v5 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = MEMORY[0x277CFB850];
  v14[0] = v4;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v9 horizontalGroupWithLayoutSize:v8 subitems:v10];

  v12 = [MEMORY[0x277CFB868] sectionWithGroup:v11];
  [v12 setOrthogonalScrollingBehavior:2];
  [v12 setInterGroupSpacing:10.0];
  [v12 setContentInsets:{10.0, 10.0, 10.0, 10.0}];

  return v12;
}

id __36__TVRUIUpNextViewController__layout__block_invoke_2(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rowHeight];
  if (v2 == 0.0)
  {
    v3 = 88.0;
  }

  else
  {
    v3 = v2;
  }

  v4 = MEMORY[0x277CFB870];
  v5 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v6 = [MEMORY[0x277CFB840] estimatedDimension:v3];
  v7 = [v4 sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = [MEMORY[0x277CFB860] itemWithLayoutSize:v7];
  v9 = MEMORY[0x277CFB870];
  v10 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v11 = [MEMORY[0x277CFB840] estimatedDimension:v3];
  v12 = [v9 sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = MEMORY[0x277CFB850];
  v18[0] = v8;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v15 = [v13 verticalGroupWithLayoutSize:v12 subitems:v14];

  v16 = [MEMORY[0x277CFB868] sectionWithGroup:v15];
  [v16 setInterGroupSpacing:2.0];

  return v16;
}

- (void)_refreshAsNeededIfVisible
{
  if ([(TVRUIUpNextViewController *)self isVisibleInParentUI])
  {
    upNextProvider = [(TVRUIUpNextViewController *)self upNextProvider];
    [upNextProvider refreshIfNeeded];
  }
}

- (void)_refreshUIAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v86 = *MEMORY[0x277D85DE8];
  [(TVRUIUpNextViewController *)self _updateEmptyStateAndActivityIndicatorForCurrentState];
  dataSource = [(TVRUIUpNextViewController *)self dataSource];
  snapshot = [dataSource snapshot];

  numberOfItems = [snapshot numberOfItems];
  v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  selfCopy = self;
  infos = [(TVRUIUpNextViewController *)self infos];
  v8 = [infos countByEnumeratingWithState:&v78 objects:v85 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v79;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v79 != v10)
        {
          objc_enumerationMutation(infos);
        }

        v12 = [_TVRUIUpNextItem itemWithUpNextInfo:*(*(&v78 + 1) + 8 * i)];
        [v6 addObject:v12];
      }

      v9 = [infos countByEnumeratingWithState:&v78 objects:v85 count:16];
    }

    while (v9);
  }

  array = [v6 array];

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v67 = snapshot;
  itemIdentifiers = [snapshot itemIdentifiers];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v16 = [itemIdentifiers countByEnumeratingWithState:&v74 objects:v84 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v75;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v75 != v18)
        {
          objc_enumerationMutation(itemIdentifiers);
        }

        v20 = *(*(&v74 + 1) + 8 * j);
        if (([v20 isMoreItem] & 1) == 0)
        {
          upNextInfo = [v20 upNextInfo];
          mediaInfo = [upNextInfo mediaInfo];
          identifier = [mediaInfo identifier];
          [v14 setObject:v20 forKeyedSubscript:identifier];
        }
      }

      v17 = [itemIdentifiers countByEnumeratingWithState:&v74 objects:v84 count:16];
    }

    while (v17);
  }

  v65 = itemIdentifiers;
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = array;
  v24 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v71;
    do
    {
      v27 = 0;
      do
      {
        if (*v71 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v70 + 1) + 8 * v27);
        upNextInfo2 = [v28 upNextInfo];
        mediaInfo2 = [upNextInfo2 mediaInfo];
        identifier2 = [mediaInfo2 identifier];
        v32 = [v14 objectForKeyedSubscript:identifier2];

        if (v32)
        {
          upNextInfo3 = [v28 upNextInfo];
          timestamp = [upNextInfo3 timestamp];

          upNextInfo4 = [v32 upNextInfo];
          timestamp2 = [upNextInfo4 timestamp];
          v37 = timestamp2;
          if (timestamp)
          {
            v38 = [timestamp2 isEqualToNumber:timestamp];

            if ((v38 & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else
          {

            if (v37)
            {
LABEL_25:
              [v68 addObject:v28];
            }
          }
        }

        ++v27;
      }

      while (v25 != v27);
      v39 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
      v25 = v39;
    }

    while (v39);
  }

  v40 = objc_alloc_init(MEMORY[0x277CFB890]);
  [v40 appendSectionsWithIdentifiers:&unk_287E84AF8];
  [v40 appendItemsWithIdentifiers:obj];
  dataSource2 = [(TVRUIUpNextViewController *)selfCopy dataSource];
  snapshot2 = [dataSource2 snapshot];
  v43 = [v40 isEqual:snapshot2];

  [v40 reconfigureItemsWithIdentifiers:v68];
  v44 = [v68 count];
  if ([obj count])
  {
    upNextProvider = [(TVRUIUpNextViewController *)selfCopy upNextProvider];
    hasMoreInfo = [upNextProvider hasMoreInfo];

    if (hasMoreInfo)
    {
      v47 = +[_TVRUIUpNextItem moreItem];
      v82 = v47;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
      [v40 appendItemsWithIdentifiers:v48];
    }
  }

  numberOfItems2 = [v40 numberOfItems];
  if (v44)
  {
    v50 = 0;
  }

  else
  {
    v50 = v43;
  }

  if ((v50 & 1) == 0)
  {
    v51 = numberOfItems <= numberOfItems2;
    isVisibleInParentUI = [(TVRUIUpNextViewController *)selfCopy isVisibleInParentUI];
    v53 = isVisibleInParentUI;
    v54 = isVisibleInParentUI && animatedCopy;
    dataSource3 = [(TVRUIUpNextViewController *)selfCopy dataSource];
    [dataSource3 applySnapshot:v40 animatingDifferences:v54 & v51];

    if (!v53)
    {
      collectionView = [(TVRUIUpNextViewController *)selfCopy collectionView];
      [collectionView contentInset];
      v58 = v57;

      if (fabs(v58) > 0.1)
      {
        collectionView2 = [(TVRUIUpNextViewController *)selfCopy collectionView];
        [collectionView2 contentInset];
        v61 = -v60;

        collectionView3 = [(TVRUIUpNextViewController *)selfCopy collectionView];
        [collectionView3 setContentOffset:{0.0, v61}];
      }
    }
  }
}

- (BOOL)_currentTraitsSizeCategoryRequiresStackedLayout
{
  traitCollection = [(TVRUIUpNextViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  LOBYTE(traitCollection) = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D767F8]) == NSOrderedDescending;
  return traitCollection;
}

- (void)_updateEmptyStateAndActivityIndicatorForCurrentState
{
  if (![(TVRUIUpNextViewController *)self _isHorizontalMode])
  {
    upNextProvider = [(TVRUIUpNextViewController *)self upNextProvider];
    hasFetchedInfos = [upNextProvider hasFetchedInfos];

    upNextProvider2 = [(TVRUIUpNextViewController *)self upNextProvider];
    infos = [upNextProvider2 infos];
    v7 = [infos count];

    didAppearTimestamp = [(TVRUIUpNextViewController *)self didAppearTimestamp];
    [didAppearTimestamp timeIntervalSinceNow];
    v10 = fabs(v9);

    if (v10 < 1.75)
    {
      v11 = 1;
    }

    else
    {
      v11 = hasFetchedInfos;
    }

    if (v7)
    {
      v12 = 1;
    }

    else
    {
      v12 = hasFetchedInfos ^ 1;
    }

    activityIndicatorView = [(TVRUIUpNextViewController *)self activityIndicatorView];
    v14 = activityIndicatorView;
    if (v11)
    {
      [activityIndicatorView stopAnimating];
    }

    else
    {
      [activityIndicatorView startAnimating];
    }

    activityIndicatorView2 = [(TVRUIUpNextViewController *)self activityIndicatorView];
    [activityIndicatorView2 setHidden:v11];

    emptyStateView = [(TVRUIUpNextViewController *)self emptyStateView];
    [emptyStateView setHidden:v12];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __69__TVRUIUpNextViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
  v17 = &unk_279D88230;
  v18 = viewCopy;
  v8 = pathCopy;
  v19 = v8;
  v9 = viewCopy;
  dispatch_async(MEMORY[0x277D85CD0], &v14);
  v10 = [(TVRUIUpNextViewController *)self dataSource:v14];
  v11 = [v10 itemIdentifierForIndexPath:v8];

  upNextInfo = [v11 upNextInfo];
  mediaInfo = [upNextInfo mediaInfo];

  if (mediaInfo)
  {
    [(TVRUIUpNextViewController *)self playItem:upNextInfo animated:1];
  }
}

- (void)_confirmOkToPlayUpNextInfo:(id)info withHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  if ([(TVRUIUpNextViewController *)self isCurrentlyPlayingMedia])
  {
    nowPlayingProvider = [(TVRUIUpNextViewController *)self nowPlayingProvider];
    nowPlayingInfo = [nowPlayingProvider nowPlayingInfo];
    metadata = [nowPlayingInfo metadata];

    mediaInfo = [infoCopy mediaInfo];
    showID = [metadata showID];
    showIdentifier = [mediaInfo showIdentifier];
    v53 = showID;
    v54 = infoCopy;
    v55 = metadata;
    if ([showID isEqualToString:?])
    {
      seasonNumber = [metadata seasonNumber];
      if (seasonNumber && (v14 = seasonNumber, [metadata episodeNumber], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"TVRUINowPlayingTitleSeasonEpisode" value:&stru_287E6AEF8 table:@"Localizable"];
        title = [metadata title];
        seasonNumber2 = [metadata seasonNumber];
        episodeNumber = [v55 episodeNumber];
        v22 = [v16 stringWithFormat:v18, title, seasonNumber2, episodeNumber];
      }

      else
      {
        v30 = MEMORY[0x277CCACA8];
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"TVRUINowPlayingFormatted" value:&stru_287E6AEF8 table:@"Localizable"];
        title = [metadata title];
        v22 = [v30 stringWithFormat:v18, title];
      }

      seasonNumber3 = [mediaInfo seasonNumber];
      if (seasonNumber3)
      {
        v32 = seasonNumber3;
        episodeNumber2 = [mediaInfo episodeNumber];

        if (episodeNumber2)
        {
          v34 = MEMORY[0x277CCACA8];
          v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v35 = [v29 localizedStringForKey:@"TVRUIReplaceNowPlayingTitleSeasonEpisode" value:&stru_287E6AEF8 table:@"Localizable"];
          primaryTitle = [mediaInfo primaryTitle];
          seasonNumber4 = [mediaInfo seasonNumber];
          episodeNumber3 = [mediaInfo episodeNumber];
          v39 = [v34 stringWithFormat:v35, primaryTitle, seasonNumber4, episodeNumber3];

          v40 = v39;
LABEL_14:
          v51 = v40;

          v41 = v22;
          v42 = [MEMORY[0x277D75110] alertControllerWithTitle:v22 message:v40 preferredStyle:1];
          v43 = MEMORY[0x277D750F8];
          v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v45 = [v44 localizedStringForKey:@"TVRUICancel" value:&stru_287E6AEF8 table:@"Localizable"];
          v46 = [v43 actionWithTitle:v45 style:1 handler:&__block_literal_global_86];
          [v42 addAction:v46];

          v47 = MEMORY[0x277D750F8];
          v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v49 = [v48 localizedStringForKey:@"TVRUIReplace" value:&stru_287E6AEF8 table:@"Localizable"];
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __68__TVRUIUpNextViewController__confirmOkToPlayUpNextInfo_withHandler___block_invoke_2;
          v56[3] = &unk_279D88098;
          v57 = handlerCopy;
          v50 = [v47 actionWithTitle:v49 style:0 handler:v56];
          [v42 addAction:v50];

          [(TVRUIUpNextViewController *)self presentViewController:v42 animated:1 completion:0];
          infoCopy = v54;
          goto LABEL_15;
        }
      }

      v27 = MEMORY[0x277CCACA8];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = v28;
    }

    else
    {
      v23 = MEMORY[0x277CCACA8];
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"TVRUINowPlayingFormatted" value:&stru_287E6AEF8 table:@"Localizable"];
      title2 = [metadata title];
      v22 = [v23 stringWithFormat:v25, title2];

      v27 = MEMORY[0x277CCACA8];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = v28;
    }

    v35 = [v28 localizedStringForKey:@"TVRUIReplaceNowPlayingTitle" value:&stru_287E6AEF8 table:@"Localizable"];
    primaryTitle = [mediaInfo primaryTitle];
    v40 = [v27 stringWithFormat:v35, primaryTitle];
    goto LABEL_14;
  }

  handlerCopy[2](handlerCopy);
LABEL_15:
}

- (void)markItemAsWatched:(id)watched
{
  mediaInfo = [watched mediaInfo];
  identifier = [mediaInfo identifier];

  upNextProvider = [(TVRUIUpNextViewController *)self upNextProvider];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__TVRUIUpNextViewController_markItemAsWatched___block_invoke;
  v8[3] = &unk_279D88208;
  v9 = identifier;
  v7 = identifier;
  [upNextProvider markAsWatchedWithMediaIdentifier:v7 completion:v8];
}

void __47__TVRUIUpNextViewController_markItemAsWatched___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __47__TVRUIUpNextViewController_markItemAsWatched___block_invoke_cold_1();
    }
  }
}

- (void)removeItemFromUpNext:(id)next
{
  tvruiupnextvc_favoritesIdentifier = [next tvruiupnextvc_favoritesIdentifier];
  upNextProvider = [(TVRUIUpNextViewController *)self upNextProvider];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__TVRUIUpNextViewController_removeItemFromUpNext___block_invoke;
  v7[3] = &unk_279D88208;
  v8 = tvruiupnextvc_favoritesIdentifier;
  v6 = tvruiupnextvc_favoritesIdentifier;
  [upNextProvider removeItemWithMediaIdentifier:v6 completion:v7];
}

void __50__TVRUIUpNextViewController_removeItemFromUpNext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __50__TVRUIUpNextViewController_removeItemFromUpNext___block_invoke_cold_1();
    }
  }
}

- (void)requestImageForInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  upNextProvider = [(TVRUIUpNextViewController *)self upNextProvider];
  [upNextProvider fetchImageForUpNextInfo:infoCopy completion:completionCopy];
}

- (void)requestImageForURLTemplate:(id)template size:(CGSize)size identifier:(id)identifier completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  identifierCopy = identifier;
  templateCopy = template;
  imageFetcher = [(TVRUIUpNextViewController *)self imageFetcher];
  [imageFetcher fetchImageWithTemplateString:templateCopy size:identifierCopy identifier:completionCopy completion:{width, height}];
}

- (void)shareEpisodeForInfo:(id)info sourceView:(id)view
{
  viewCopy = view;
  infoCopy = info;
  v8 = [TVRUIUpNextActivityItem alloc];
  upNextProvider = [(TVRUIUpNextViewController *)self upNextProvider];
  v11 = [(TVRUIUpNextActivityItem *)v8 initWithUpNextInfo:infoCopy upNextProvider:upNextProvider shareShow:0];

  actionProvider = [(TVRUIUpNextViewController *)self actionProvider];
  [actionProvider shareItem:v11 presentingViewController:self sourceView:viewCopy];
}

- (void)shareShowForInfo:(id)info sourceView:(id)view
{
  viewCopy = view;
  infoCopy = info;
  v8 = [TVRUIUpNextActivityItem alloc];
  upNextProvider = [(TVRUIUpNextViewController *)self upNextProvider];
  v11 = [(TVRUIUpNextActivityItem *)v8 initWithUpNextInfo:infoCopy upNextProvider:upNextProvider shareShow:1];

  actionProvider = [(TVRUIUpNextViewController *)self actionProvider];
  [actionProvider shareItem:v11 presentingViewController:self sourceView:viewCopy];
}

- (void)sharePrimaryForInfo:(id)info sourceView:(id)view
{
  viewCopy = view;
  infoCopy = info;
  v8 = [TVRUIUpNextActivityItem alloc];
  upNextProvider = [(TVRUIUpNextViewController *)self upNextProvider];
  v11 = [(TVRUIUpNextActivityItem *)v8 initWithUpNextInfo:infoCopy upNextProvider:upNextProvider shareShow:0];

  actionProvider = [(TVRUIUpNextViewController *)self actionProvider];
  [actionProvider shareItem:v11 presentingViewController:self sourceView:viewCopy];
}

- (void)openURL:(id)l
{
  lCopy = l;
  actionProvider = [(TVRUIUpNextViewController *)self actionProvider];
  [actionProvider openURL:lCopy];
}

- (void)playItem:(id)item animated:(BOOL)animated
{
  itemCopy = item;
  mediaInfo = [itemCopy mediaInfo];
  identifier = [mediaInfo identifier];
  if ([identifier length])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__TVRUIUpNextViewController_playItem_animated___block_invoke;
    v8[3] = &unk_279D88050;
    v9 = mediaInfo;
    v10 = itemCopy;
    v11 = identifier;
    selfCopy = self;
    [(TVRUIUpNextViewController *)self _confirmOkToPlayUpNextInfo:v10 withHandler:v8];
  }
}

void __47__TVRUIUpNextViewController_playItem_animated___block_invoke(id *a1)
{
  v2 = [a1[4] kind];
  v3 = [a1[5] actionURL];
  v4 = MEMORY[0x277D6C518];
  if (v3)
  {
    v5 = [a1[5] actionURL];
    v6 = [v4 playItemWithURL:v5];
  }

  else
  {
    v6 = [MEMORY[0x277D6C518] playItemWithMediaIdentifier:a1[6] kind:v2];
  }

  v7 = [a1[7] eventHaptic];
  [v7 playSelectionEventHaptic];

  v8 = [a1[7] upNextProvider];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __47__TVRUIUpNextViewController_playItem_animated___block_invoke_2;
  v23[3] = &unk_279D88208;
  v24 = a1[6];
  [v8 playItem:v6 completion:v23];

  v9 = [a1[7] _isStandaloneMode];
  v10 = a1[7];
  if (v9)
  {
    [v10 dismissViewControllerAnimated:1 completion:0];
  }

  else if ([v10 _isHorizontalMode])
  {
    v11 = [_TVRUIUpNextItem itemWithUpNextInfo:a1[5]];
    v12 = [a1[7] dataSource];
    v13 = [v12 indexPathForItemIdentifier:v11];

    v14 = [a1[7] collectionView];
    v15 = [v14 cellForItemAtIndexPath:v13];

    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x277D75D40]);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __47__TVRUIUpNextViewController_playItem_animated___block_invoke_94;
      v21[3] = &unk_279D87C20;
      v17 = v15;
      v22 = v17;
      v18 = [v16 initWithDuration:1 curve:v21 animations:0.1];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __47__TVRUIUpNextViewController_playItem_animated___block_invoke_2_95;
      v19[3] = &unk_279D88028;
      v20 = v17;
      [v18 addCompletion:v19];
      [v18 startAnimation];
    }
  }
}

void __47__TVRUIUpNextViewController_playItem_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _TVRUINowPlayingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __47__TVRUIUpNextViewController_playItem_animated___block_invoke_2_cold_1();
  }
}

uint64_t __47__TVRUIUpNextViewController_playItem_animated___block_invoke_94(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.1, 1.1);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

void __47__TVRUIUpNextViewController_playItem_animated___block_invoke_2_95(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D75D40]);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__TVRUIUpNextViewController_playItem_animated___block_invoke_3;
  v4[3] = &unk_279D87C20;
  v5 = *(a1 + 32);
  v3 = [v2 initWithDuration:2 curve:v4 animations:0.1];
  [v3 startAnimation];
}

uint64_t __47__TVRUIUpNextViewController_playItem_animated___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

- (BOOL)isCurrentlyPlayingMedia
{
  nowPlayingProvider = [(TVRUIUpNextViewController *)self nowPlayingProvider];
  nowPlayingInfo = [nowPlayingProvider nowPlayingInfo];

  if (nowPlayingInfo)
  {
    playbackRate = [nowPlayingInfo playbackRate];
    [playbackRate floatValue];
    if (v5 == 0.0)
    {
      v7 = 0;
    }

    else
    {
      playbackState = [nowPlayingInfo playbackState];
      v7 = [playbackState integerValue] == 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TVRUIActionProviding)actionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_actionProvider);

  return WeakRetained;
}

- (TVRUIUpNextProviding)upNextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_upNextProvider);

  return WeakRetained;
}

- (TVRUINowPlayingProviding)nowPlayingProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_nowPlayingProvider);

  return WeakRetained;
}

@end