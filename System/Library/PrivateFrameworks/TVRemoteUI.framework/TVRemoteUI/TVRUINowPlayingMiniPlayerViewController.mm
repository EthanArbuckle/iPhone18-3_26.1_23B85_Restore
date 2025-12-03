@interface TVRUINowPlayingMiniPlayerViewController
- (BOOL)_currentTraitsSizeCategoryRequiresStackedLayout;
- (BOOL)_effectiveImageFromNowPlayingInfoIsFallbackImage:(id)image;
- (BOOL)_isCurrentlyStackedLayout;
- (NSURLSession)urlSession;
- (TVRUIActionProviding)actionProvider;
- (TVRUINowPlayingMiniPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIImage)fallbackImage;
- (id)_effectiveImageFromNowPlayingInfo:(id)info;
- (id)actionButtonMenu;
- (id)urlForProductPageKind:(int64_t)kind;
- (void)_didTapNowPlayingInfo:(id)info;
- (void)_requestImageIfNeededForNowPlayingInfo:(id)info;
- (void)_setupSystemMonitor;
- (void)_updateContraintsForStackedLayout:(BOOL)layout;
- (void)configureHierarchy;
- (void)dealloc;
- (void)onScreenLockChanged;
- (void)openProductPageForKind:(int64_t)kind;
- (void)openURL:(id)l;
- (void)resetContent;
- (void)setNowPlayingInfo:(id)info;
- (void)shareEpisode;
- (void)sharePrimary;
- (void)shareShow;
- (void)updateFromNowPlayingInfo:(id)info;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVRUINowPlayingMiniPlayerViewController

- (TVRUINowPlayingMiniPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = TVRUINowPlayingMiniPlayerViewController;
  v4 = [(TVRUINowPlayingMiniPlayerViewController *)&v10 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"TVRUINowPlaying" value:&stru_287E6AEF8 table:@"Localizable"];
    [(TVRUINowPlayingMiniPlayerViewController *)v4 setTitle:v6];

    v7 = objc_alloc_init(TVRUIDarkStyleProvider);
    styleProvider = v4->_styleProvider;
    v4->_styleProvider = v7;

    [(TVRUINowPlayingMiniPlayerViewController *)v4 _setupSystemMonitor];
  }

  return v4;
}

- (void)_setupSystemMonitor
{
  v3 = objc_alloc_init(MEMORY[0x277D02938]);
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = v3;

  objc_initWeak(&location, self);
  v5 = self->_systemMonitor;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__TVRUINowPlayingMiniPlayerViewController__setupSystemMonitor__block_invoke;
  v9[3] = &unk_279D87F18;
  objc_copyWeak(&v10, &location);
  [(CUSystemMonitor *)v5 setScreenLockedChangedHandler:v9];
  v6 = self->_systemMonitor;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__TVRUINowPlayingMiniPlayerViewController__setupSystemMonitor__block_invoke_2;
  v7[3] = &unk_279D87F18;
  objc_copyWeak(&v8, &location);
  [(CUSystemMonitor *)v6 activateWithCompletion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __62__TVRUINowPlayingMiniPlayerViewController__setupSystemMonitor__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained onScreenLockChanged];
    WeakRetained = v2;
  }
}

void __62__TVRUINowPlayingMiniPlayerViewController__setupSystemMonitor__block_invoke_2(uint64_t a1)
{
  v2 = _TVRUINowPlayingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Screen lock monitor activated", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained onScreenLockChanged];
  }
}

- (void)onScreenLockChanged
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _TVRUINowPlayingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    systemMonitor = [(TVRUINowPlayingMiniPlayerViewController *)self systemMonitor];
    screenLocked = [systemMonitor screenLocked];
    v6 = @"unlocked";
    if (screenLocked)
    {
      v6 = @"locked";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Updating actionButton menu because screen is now %@", &v9, 0xCu);
  }

  actionButtonMenu = [(TVRUINowPlayingMiniPlayerViewController *)self actionButtonMenu];
  actionButton = [(TVRUINowPlayingMiniPlayerViewController *)self actionButton];
  [actionButton setMenu:actionButtonMenu];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TVRUINowPlayingMiniPlayerViewController;
  [(TVRUINowPlayingMiniPlayerViewController *)&v3 viewDidLoad];
  [(TVRUINowPlayingMiniPlayerViewController *)self configureHierarchy];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = TVRUINowPlayingMiniPlayerViewController;
  [(TVRUINowPlayingMiniPlayerViewController *)&v6 viewWillAppear:appear];
  nowPlayingInfo = [(TVRUINowPlayingMiniPlayerViewController *)self nowPlayingInfo];
  [(TVRUINowPlayingMiniPlayerViewController *)self updateFromNowPlayingInfo:nowPlayingInfo];

  navigationController = [(TVRUINowPlayingMiniPlayerViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1];
}

- (void)configureHierarchy
{
  v373 = *MEMORY[0x277D85DE8];
  v336 = +[TVRUIFeatures isSolariumEnabled];
  selfCopy = self;
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D755D0];
  v4 = MEMORY[0x277D76918];
  if (v336)
  {
    v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] variant:1024];
    v6 = [v3 configurationWithFont:v5];
    v7 = @"ellipsis";
  }

  else
  {
    v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1024];
    v6 = [v3 configurationWithFont:v5];
    v7 = @"ellipsis.circle";
  }

  v8 = [MEMORY[0x277D755B8] systemImageNamed:v7 withConfiguration:v6];
  if (v336)
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
    v10 = [v8 imageWithTintColor:v9];

    v8 = v10;
  }

  v11 = [MEMORY[0x277D750C8] actionWithTitle:&stru_287E6AEF8 image:v8 identifier:0 handler:&__block_literal_global_24];
  if (v336)
  {
    clearGlassButtonConfiguration = [MEMORY[0x277D75230] clearGlassButtonConfiguration];
    [clearGlassButtonConfiguration setCornerStyle:4];
  }

  else
  {
    clearGlassButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  }

  v345 = [MEMORY[0x277D75220] buttonWithConfiguration:clearGlassButtonConfiguration primaryAction:v11];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v345 setTintColor:whiteColor];

  [v345 setOverrideUserInterfaceStyle:2];
  actionButtonMenu = [(TVRUINowPlayingMiniPlayerViewController *)selfCopy actionButtonMenu];
  [v345 setMenu:actionButtonMenu];
  [v345 setShowsMenuAsPrimaryAction:1];

  v15 = MEMORY[0x277D755D0];
  v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*v4 variant:1024];
  v17 = [v15 configurationWithFont:v16];

  v18 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v17];
  clearGlassButtonConfiguration2 = [MEMORY[0x277D75230] clearGlassButtonConfiguration];
  [clearGlassButtonConfiguration2 setCornerStyle:4];
  v20 = MEMORY[0x277D750C8];
  v361[0] = MEMORY[0x277D85DD0];
  v361[1] = 3221225472;
  v361[2] = __61__TVRUINowPlayingMiniPlayerViewController_configureHierarchy__block_invoke_2;
  v361[3] = &unk_279D87C68;
  objc_copyWeak(&v362, &location);
  v21 = [v20 actionWithTitle:&stru_287E6AEF8 image:v18 identifier:0 handler:v361];
  v344 = [MEMORY[0x277D75220] buttonWithConfiguration:clearGlassButtonConfiguration2 primaryAction:v21];
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [v344 setTintColor:whiteColor2];

  [v344 setHidden:{-[TVRUINowPlayingMiniPlayerViewController compactSolariumMode](selfCopy, "compactSolariumMode") ^ 1}];
  objc_destroyWeak(&v362);

  if ([(TVRUINowPlayingMiniPlayerViewController *)selfCopy horizontalMode]|| v336)
  {
    v23 = 12.0;
  }

  else
  {
    v23 = 8.0;
  }

  v24 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v24 setContentMode:1];
  [v24 _setContinuousCornerRadius:v23];
  [v24 setClipsToBounds:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v24 setBackgroundColor:clearColor];
  v349 = v24;

  v334 = [MEMORY[0x277D75210] effectWithStyle:2];
  v26 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v334];
  [v26 _setContinuousCornerRadius:v23];
  [v26 setClipsToBounds:1];
  v342 = v26;
  v27 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v27 setContentMode:2];
  [v27 _setContinuousCornerRadius:v23];
  [v27 setClipsToBounds:1];
  v343 = v27;
  v350 = objc_alloc_init(MEMORY[0x277D75D18]);
  v347 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v347 setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:1024];
  [v347 setFont:v28];

  whiteColor3 = [MEMORY[0x277D75348] whiteColor];
  [v347 setTextColor:whiteColor3];

  [v347 setNumberOfLines:2];
  [v347 setAdjustsFontForContentSizeCategory:1];
  [v347 setAdjustsFontSizeToFitWidth:1];
  LODWORD(v30) = 1148846080;
  [v347 setContentHuggingPriority:1 forAxis:v30];
  if ([(TVRUINowPlayingMiniPlayerViewController *)selfCopy compactSolariumMode])
  {
    [v347 setTextAlignment:1];
  }

  [v350 addSubview:v347];
  v348 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v348 setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76988] variant:1280];
  [v348 setFont:v31];

  whiteColor4 = [MEMORY[0x277D75348] whiteColor];
  [v348 setTextColor:whiteColor4];

  [v348 setNumberOfLines:2];
  [v348 setAdjustsFontForContentSizeCategory:1];
  [v348 setAdjustsFontSizeToFitWidth:1];
  LODWORD(v33) = 1148846080;
  [v348 setContentHuggingPriority:1 forAxis:v33];
  if ([(TVRUINowPlayingMiniPlayerViewController *)selfCopy compactSolariumMode])
  {
    [v348 setTextAlignment:1];
  }

  [v350 addSubview:v348];
  v341 = objc_alloc_init(MEMORY[0x277D756B8]);
  v34 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  [v341 setFont:v34];

  [v341 setAdjustsFontForContentSizeCategory:1];
  lightTextColor = [MEMORY[0x277D75348] lightTextColor];
  [v341 setTextColor:lightTextColor];

  v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v37 = [v36 localizedStringForKey:@"TVRUINotPlaying" value:&stru_287E6AEF8 table:@"Localizable"];
  [v341 setText:v37];

  [v341 setHidden:{-[TVRUINowPlayingMiniPlayerViewController horizontalMode](selfCopy, "horizontalMode") ^ 1}];
  view = [(TVRUINowPlayingMiniPlayerViewController *)selfCopy view];
  v359 = 0u;
  v360 = 0u;
  v357 = 0u;
  v358 = 0u;
  v371[0] = v343;
  v371[1] = v342;
  v371[2] = v24;
  v371[3] = v350;
  v371[4] = v345;
  v371[5] = v341;
  v371[6] = v344;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v371 count:7];
  v40 = [v39 countByEnumeratingWithState:&v357 objects:v372 count:16];
  if (v40)
  {
    v41 = *v358;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v358 != v41)
        {
          objc_enumerationMutation(v39);
        }

        v43 = *(*(&v357 + 1) + 8 * i);
        [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
        [view addSubview:v43];
      }

      v40 = [v39 countByEnumeratingWithState:&v357 objects:v372 count:16];
    }

    while (v40);
  }

  heightAnchor = [view heightAnchor];
  v335 = [heightAnchor constraintEqualToConstant:0.0];

  LODWORD(v45) = 1132068864;
  [v335 setPriority:v45];
  if (v336)
  {
    v46 = 5.0;
  }

  else
  {
    v46 = 2.0;
  }

  leadingAnchor = [v349 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v326 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v370[0] = v326;
  topAnchor = [v349 topAnchor];
  topAnchor2 = [view topAnchor];
  v314 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v370[1] = v314;
  bottomAnchor = [v349 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v302 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v370[2] = v302;
  widthAnchor = [v349 widthAnchor];
  heightAnchor2 = [v349 heightAnchor];
  v290 = [widthAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.77777778];
  v370[3] = v290;
  leadingAnchor3 = [v343 leadingAnchor];
  leadingAnchor4 = [v349 leadingAnchor];
  v278 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v370[4] = v278;
  trailingAnchor = [v343 trailingAnchor];
  trailingAnchor2 = [v349 trailingAnchor];
  v266 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v370[5] = v266;
  topAnchor3 = [v343 topAnchor];
  topAnchor4 = [v349 topAnchor];
  v254 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v370[6] = v254;
  bottomAnchor3 = [v343 bottomAnchor];
  bottomAnchor4 = [v349 bottomAnchor];
  v242 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v370[7] = v242;
  leadingAnchor5 = [v342 leadingAnchor];
  leadingAnchor6 = [v349 leadingAnchor];
  v230 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v370[8] = v230;
  trailingAnchor3 = [v342 trailingAnchor];
  trailingAnchor4 = [v349 trailingAnchor];
  v218 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v370[9] = v218;
  topAnchor5 = [v342 topAnchor];
  topAnchor6 = [v349 topAnchor];
  v206 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v370[10] = v206;
  bottomAnchor5 = [v342 bottomAnchor];
  bottomAnchor6 = [v349 bottomAnchor];
  v194 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v370[11] = v194;
  leadingAnchor7 = [v350 leadingAnchor];
  trailingAnchor5 = [v349 trailingAnchor];
  v182 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor5 constant:12.0];
  v370[12] = v182;
  trailingAnchor6 = [v350 trailingAnchor];
  trailingAnchor7 = [view trailingAnchor];
  v170 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-10.0];
  v370[13] = v170;
  centerYAnchor = [v350 centerYAnchor];
  centerYAnchor2 = [view centerYAnchor];
  v158 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v370[14] = v158;
  topAnchor7 = [v348 topAnchor];
  topAnchor8 = [v350 topAnchor];
  v147 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v370[15] = v147;
  leadingAnchor8 = [v348 leadingAnchor];
  leadingAnchor9 = [v350 leadingAnchor];
  v138 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  v370[16] = v138;
  trailingAnchor8 = [v348 trailingAnchor];
  trailingAnchor9 = [v350 trailingAnchor];
  v129 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v370[17] = v129;
  topAnchor9 = [v347 topAnchor];
  bottomAnchor7 = [v348 bottomAnchor];
  v123 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:v46];
  v370[18] = v123;
  leadingAnchor10 = [v347 leadingAnchor];
  leadingAnchor11 = [v350 leadingAnchor];
  v117 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
  v370[19] = v117;
  trailingAnchor10 = [v347 trailingAnchor];
  trailingAnchor11 = [v350 trailingAnchor];
  v111 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
  v370[20] = v111;
  bottomAnchor8 = [v347 bottomAnchor];
  bottomAnchor9 = [v350 bottomAnchor];
  v48 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
  v370[21] = v48;
  centerXAnchor = [v341 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v51 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v370[22] = v51;
  centerYAnchor3 = [v341 centerYAnchor];
  centerYAnchor4 = [view centerYAnchor];
  v54 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v370[23] = v54;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v370 count:24];
  [(TVRUINowPlayingMiniPlayerViewController *)selfCopy setHorizontalModeConstraints:v55];

  leadingAnchor12 = [v343 leadingAnchor];
  leadingAnchor13 = [v349 leadingAnchor];
  v327 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13];
  v369[0] = v327;
  trailingAnchor12 = [v343 trailingAnchor];
  trailingAnchor13 = [v349 trailingAnchor];
  v315 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
  v369[1] = v315;
  topAnchor10 = [v343 topAnchor];
  topAnchor11 = [v349 topAnchor];
  v303 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
  v369[2] = v303;
  bottomAnchor10 = [v343 bottomAnchor];
  bottomAnchor11 = [v349 bottomAnchor];
  v291 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
  v369[3] = v291;
  leadingAnchor14 = [v342 leadingAnchor];
  leadingAnchor15 = [v349 leadingAnchor];
  v279 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15];
  v369[4] = v279;
  trailingAnchor14 = [v342 trailingAnchor];
  trailingAnchor15 = [v349 trailingAnchor];
  v267 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15];
  v369[5] = v267;
  topAnchor12 = [v342 topAnchor];
  topAnchor13 = [v349 topAnchor];
  v255 = [topAnchor12 constraintEqualToAnchor:topAnchor13];
  v369[6] = v255;
  bottomAnchor12 = [v342 bottomAnchor];
  bottomAnchor13 = [v349 bottomAnchor];
  v243 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13];
  v369[7] = v243;
  leadingAnchor16 = [v349 leadingAnchor];
  leadingAnchor17 = [view leadingAnchor];
  v231 = [leadingAnchor16 constraintEqualToAnchor:leadingAnchor17 constant:20.0];
  v369[8] = v231;
  centerYAnchor5 = [v349 centerYAnchor];
  centerYAnchor6 = [view centerYAnchor];
  v219 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v369[9] = v219;
  heightAnchor3 = [v349 heightAnchor];
  v211 = [heightAnchor3 constraintEqualToConstant:66.0];
  v369[10] = v211;
  widthAnchor2 = [v349 widthAnchor];
  heightAnchor4 = [v349 heightAnchor];
  v199 = [widthAnchor2 constraintEqualToAnchor:heightAnchor4 multiplier:1.77777778];
  v369[11] = v199;
  trailingAnchor16 = [v345 trailingAnchor];
  trailingAnchor17 = [view trailingAnchor];
  v187 = [trailingAnchor16 constraintEqualToAnchor:trailingAnchor17 constant:-20.0];
  v369[12] = v187;
  centerYAnchor7 = [v345 centerYAnchor];
  centerYAnchor8 = [view centerYAnchor];
  v175 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  v369[13] = v175;
  widthAnchor3 = [v345 widthAnchor];
  v167 = [widthAnchor3 constraintEqualToConstant:30.0];
  v369[14] = v167;
  heightAnchor5 = [v345 heightAnchor];
  widthAnchor4 = [v345 widthAnchor];
  v155 = [heightAnchor5 constraintEqualToAnchor:widthAnchor4];
  v369[15] = v155;
  heightAnchor6 = [view heightAnchor];
  heightAnchor7 = [v349 heightAnchor];
  v145 = [heightAnchor6 constraintGreaterThanOrEqualToAnchor:heightAnchor7 constant:16.0];
  v369[16] = v145;
  heightAnchor8 = [view heightAnchor];
  heightAnchor9 = [v350 heightAnchor];
  v136 = [heightAnchor8 constraintGreaterThanOrEqualToAnchor:heightAnchor9];
  v369[17] = v136;
  v369[18] = v335;
  topAnchor14 = [v348 topAnchor];
  topAnchor15 = [v350 topAnchor];
  v128 = [topAnchor14 constraintEqualToAnchor:topAnchor15];
  v369[19] = v128;
  leadingAnchor18 = [v348 leadingAnchor];
  leadingAnchor19 = [v350 leadingAnchor];
  v122 = [leadingAnchor18 constraintEqualToAnchor:leadingAnchor19];
  v369[20] = v122;
  trailingAnchor18 = [v348 trailingAnchor];
  trailingAnchor19 = [v350 trailingAnchor];
  v116 = [trailingAnchor18 constraintEqualToAnchor:trailingAnchor19];
  v369[21] = v116;
  topAnchor16 = [v347 topAnchor];
  bottomAnchor14 = [v348 bottomAnchor];
  v110 = [topAnchor16 constraintEqualToAnchor:bottomAnchor14 constant:v46];
  v369[22] = v110;
  leadingAnchor20 = [v347 leadingAnchor];
  leadingAnchor21 = [v350 leadingAnchor];
  v106 = [leadingAnchor20 constraintEqualToAnchor:leadingAnchor21];
  v369[23] = v106;
  trailingAnchor20 = [v347 trailingAnchor];
  trailingAnchor21 = [v350 trailingAnchor];
  v103 = [trailingAnchor20 constraintEqualToAnchor:trailingAnchor21];
  v369[24] = v103;
  bottomAnchor15 = [v347 bottomAnchor];
  bottomAnchor16 = [v350 bottomAnchor];
  v100 = [bottomAnchor15 constraintEqualToAnchor:bottomAnchor16];
  v369[25] = v100;
  leadingAnchor22 = [v350 leadingAnchor];
  trailingAnchor22 = [v349 trailingAnchor];
  v56 = [leadingAnchor22 constraintEqualToAnchor:trailingAnchor22 constant:12.0];
  v369[26] = v56;
  trailingAnchor23 = [v350 trailingAnchor];
  imageView = [v345 imageView];
  leadingAnchor23 = [imageView leadingAnchor];
  v60 = [trailingAnchor23 constraintEqualToAnchor:leadingAnchor23 constant:-10.0];
  v369[27] = v60;
  centerYAnchor9 = [v350 centerYAnchor];
  centerYAnchor10 = [view centerYAnchor];
  v63 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
  v369[28] = v63;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v369 count:29];
  [(TVRUINowPlayingMiniPlayerViewController *)selfCopy setStandardLayoutConstraints:v64];

  topAnchor17 = [v349 topAnchor];
  topAnchor18 = [view topAnchor];
  v328 = [topAnchor17 constraintEqualToAnchor:topAnchor18];
  v368[0] = v328;
  leadingAnchor24 = [v349 leadingAnchor];
  leadingAnchor25 = [view leadingAnchor];
  v316 = [leadingAnchor24 constraintEqualToAnchor:leadingAnchor25 constant:20.0];
  v368[1] = v316;
  heightAnchor10 = [v349 heightAnchor];
  v308 = [heightAnchor10 constraintEqualToConstant:66.0];
  v368[2] = v308;
  widthAnchor5 = [v349 widthAnchor];
  heightAnchor11 = [v349 heightAnchor];
  v296 = [widthAnchor5 constraintEqualToAnchor:heightAnchor11 multiplier:1.77777778];
  v368[3] = v296;
  trailingAnchor24 = [v345 trailingAnchor];
  trailingAnchor25 = [view trailingAnchor];
  v284 = [trailingAnchor24 constraintEqualToAnchor:trailingAnchor25 constant:-20.0];
  v368[4] = v284;
  centerYAnchor11 = [v345 centerYAnchor];
  centerYAnchor12 = [v349 centerYAnchor];
  v272 = [centerYAnchor11 constraintEqualToAnchor:centerYAnchor12];
  v368[5] = v272;
  widthAnchor6 = [v345 widthAnchor];
  v264 = [widthAnchor6 constraintEqualToConstant:30.0];
  v368[6] = v264;
  heightAnchor12 = [v345 heightAnchor];
  widthAnchor7 = [v345 widthAnchor];
  v252 = [heightAnchor12 constraintEqualToAnchor:widthAnchor7];
  v368[7] = v252;
  topAnchor19 = [v350 topAnchor];
  bottomAnchor17 = [v349 bottomAnchor];
  v240 = [topAnchor19 constraintEqualToAnchor:bottomAnchor17 constant:v46];
  v368[8] = v240;
  leadingAnchor26 = [v350 leadingAnchor];
  leadingAnchor27 = [view leadingAnchor];
  v228 = [leadingAnchor26 constraintEqualToAnchor:leadingAnchor27 constant:12.0];
  v368[9] = v228;
  trailingAnchor26 = [v350 trailingAnchor];
  trailingAnchor27 = [view trailingAnchor];
  v216 = [trailingAnchor26 constraintEqualToAnchor:trailingAnchor27 constant:-10.0];
  v368[10] = v216;
  bottomAnchor18 = [v350 bottomAnchor];
  bottomAnchor19 = [view bottomAnchor];
  v204 = [bottomAnchor18 constraintEqualToAnchor:bottomAnchor19];
  v368[11] = v204;
  topAnchor20 = [v348 topAnchor];
  topAnchor21 = [v350 topAnchor];
  v192 = [topAnchor20 constraintEqualToAnchor:topAnchor21];
  v368[12] = v192;
  leadingAnchor28 = [v348 leadingAnchor];
  leadingAnchor29 = [v350 leadingAnchor];
  v180 = [leadingAnchor28 constraintEqualToAnchor:leadingAnchor29];
  v368[13] = v180;
  trailingAnchor28 = [v348 trailingAnchor];
  trailingAnchor29 = [v350 trailingAnchor];
  v168 = [trailingAnchor28 constraintEqualToAnchor:trailingAnchor29];
  v368[14] = v168;
  topAnchor22 = [v347 topAnchor];
  bottomAnchor20 = [v348 bottomAnchor];
  v156 = [topAnchor22 constraintEqualToAnchor:bottomAnchor20 constant:v46];
  v368[15] = v156;
  leadingAnchor30 = [v347 leadingAnchor];
  leadingAnchor31 = [v350 leadingAnchor];
  v66 = [leadingAnchor30 constraintEqualToAnchor:leadingAnchor31];
  v368[16] = v66;
  trailingAnchor30 = [v347 trailingAnchor];
  trailingAnchor31 = [v350 trailingAnchor];
  v69 = [trailingAnchor30 constraintEqualToAnchor:trailingAnchor31];
  v368[17] = v69;
  bottomAnchor21 = [v347 bottomAnchor];
  bottomAnchor22 = [v350 bottomAnchor];
  v72 = [bottomAnchor21 constraintEqualToAnchor:bottomAnchor22];
  v368[18] = v72;
  v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v368 count:19];
  [(TVRUINowPlayingMiniPlayerViewController *)selfCopy setStackedTextLayoutConstraints:v73];

  heightAnchor13 = [view heightAnchor];
  v333 = [heightAnchor13 constraintGreaterThanOrEqualToConstant:56.0];
  v367[0] = v333;
  heightAnchor14 = [view heightAnchor];
  v325 = [heightAnchor14 constraintLessThanOrEqualToConstant:88.0];
  v367[1] = v325;
  leadingAnchor32 = [v344 leadingAnchor];
  leadingAnchor33 = [view leadingAnchor];
  v313 = [leadingAnchor32 constraintEqualToAnchor:leadingAnchor33 constant:17.0];
  v367[2] = v313;
  topAnchor23 = [v344 topAnchor];
  topAnchor24 = [view topAnchor];
  v301 = [topAnchor23 constraintEqualToAnchor:topAnchor24 constant:17.0];
  v367[3] = v301;
  widthAnchor8 = [v344 widthAnchor];
  heightAnchor15 = [v344 heightAnchor];
  v289 = [widthAnchor8 constraintEqualToAnchor:heightAnchor15];
  v367[4] = v289;
  heightAnchor16 = [v344 heightAnchor];
  v281 = [heightAnchor16 constraintEqualToConstant:44.0];
  v367[5] = v281;
  leadingAnchor34 = [v350 leadingAnchor];
  trailingAnchor32 = [v344 trailingAnchor];
  v269 = [leadingAnchor34 constraintEqualToAnchor:trailingAnchor32 constant:10.0];
  v367[6] = v269;
  topAnchor25 = [v350 topAnchor];
  topAnchor26 = [view topAnchor];
  v257 = [topAnchor25 constraintGreaterThanOrEqualToAnchor:topAnchor26 constant:15.0];
  v367[7] = v257;
  bottomAnchor23 = [v350 bottomAnchor];
  bottomAnchor24 = [view bottomAnchor];
  v245 = [bottomAnchor23 constraintLessThanOrEqualToAnchor:bottomAnchor24];
  v367[8] = v245;
  centerYAnchor13 = [v350 centerYAnchor];
  centerYAnchor14 = [v344 centerYAnchor];
  v233 = [centerYAnchor13 constraintEqualToAnchor:centerYAnchor14];
  v367[9] = v233;
  leadingAnchor35 = [v345 leadingAnchor];
  trailingAnchor33 = [v350 trailingAnchor];
  v221 = [leadingAnchor35 constraintEqualToAnchor:trailingAnchor33 constant:10.0];
  v367[10] = v221;
  topAnchor27 = [v345 topAnchor];
  topAnchor28 = [view topAnchor];
  v209 = [topAnchor27 constraintEqualToAnchor:topAnchor28 constant:17.0];
  v367[11] = v209;
  widthAnchor9 = [v345 widthAnchor];
  heightAnchor17 = [v345 heightAnchor];
  v197 = [widthAnchor9 constraintEqualToAnchor:heightAnchor17];
  v367[12] = v197;
  heightAnchor18 = [v345 heightAnchor];
  v189 = [heightAnchor18 constraintEqualToConstant:44.0];
  v367[13] = v189;
  trailingAnchor34 = [v345 trailingAnchor];
  trailingAnchor35 = [view trailingAnchor];
  v177 = [trailingAnchor34 constraintEqualToAnchor:trailingAnchor35 constant:-17.0];
  v367[14] = v177;
  topAnchor29 = [v348 topAnchor];
  topAnchor30 = [v350 topAnchor];
  v165 = [topAnchor29 constraintEqualToAnchor:topAnchor30];
  v367[15] = v165;
  leadingAnchor36 = [v348 leadingAnchor];
  leadingAnchor37 = [v350 leadingAnchor];
  v153 = [leadingAnchor36 constraintEqualToAnchor:leadingAnchor37];
  v367[16] = v153;
  trailingAnchor36 = [v348 trailingAnchor];
  trailingAnchor37 = [v350 trailingAnchor];
  v143 = [trailingAnchor36 constraintEqualToAnchor:trailingAnchor37];
  v367[17] = v143;
  topAnchor31 = [v347 topAnchor];
  bottomAnchor25 = [v348 bottomAnchor];
  v134 = [topAnchor31 constraintEqualToAnchor:bottomAnchor25 constant:2.0];
  v367[18] = v134;
  leadingAnchor38 = [v347 leadingAnchor];
  leadingAnchor39 = [v350 leadingAnchor];
  v75 = [leadingAnchor38 constraintEqualToAnchor:leadingAnchor39];
  v367[19] = v75;
  trailingAnchor38 = [v347 trailingAnchor];
  trailingAnchor39 = [v350 trailingAnchor];
  v78 = [trailingAnchor38 constraintEqualToAnchor:trailingAnchor39];
  v367[20] = v78;
  bottomAnchor26 = [v347 bottomAnchor];
  bottomAnchor27 = [v350 bottomAnchor];
  v81 = [bottomAnchor26 constraintEqualToAnchor:bottomAnchor27];
  v367[21] = v81;
  v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v367 count:22];
  [(TVRUINowPlayingMiniPlayerViewController *)selfCopy setSolariumCompactModeLayoutConstraints:v82];

  [(TVRUINowPlayingMiniPlayerViewController *)selfCopy setImageView:v349];
  [(TVRUINowPlayingMiniPlayerViewController *)selfCopy setTitleLabel:v347];
  [(TVRUINowPlayingMiniPlayerViewController *)selfCopy setSecondaryLabel:v348];
  [(TVRUINowPlayingMiniPlayerViewController *)selfCopy setDismissButton:v344];
  [(TVRUINowPlayingMiniPlayerViewController *)selfCopy setActionButton:v345];
  [(TVRUINowPlayingMiniPlayerViewController *)selfCopy setNarrowAspectImageView:v343];
  [(TVRUINowPlayingMiniPlayerViewController *)selfCopy setNarrowAspectImageVisualEffectView:v342];
  [(TVRUINowPlayingMiniPlayerViewController *)selfCopy setNotPlayingLabel:v341];
  v366 = objc_opt_class();
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v366 count:1];
  v355[0] = MEMORY[0x277D85DD0];
  v355[1] = 3221225472;
  v355[2] = __61__TVRUINowPlayingMiniPlayerViewController_configureHierarchy__block_invoke_3;
  v355[3] = &unk_279D89180;
  objc_copyWeak(&v356, &location);
  v355[4] = selfCopy;
  v84 = [(TVRUINowPlayingMiniPlayerViewController *)selfCopy registerForTraitChanges:v83 withHandler:v355];

  v85 = selfCopy;
  if ([(TVRUINowPlayingMiniPlayerViewController *)selfCopy horizontalMode])
  {
    actionButton = [(TVRUINowPlayingMiniPlayerViewController *)selfCopy actionButton];
    [actionButton setHidden:1];

    v87 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:selfCopy action:sel__didTapNowPlayingInfo_];
    view2 = [(TVRUINowPlayingMiniPlayerViewController *)selfCopy view];
    [view2 addGestureRecognizer:v87];

    v85 = selfCopy;
  }

  if ([(TVRUINowPlayingMiniPlayerViewController *)v85 compactSolariumMode])
  {
    v353 = 0u;
    v354 = 0u;
    v351 = 0u;
    v352 = 0u;
    imageView2 = [(TVRUINowPlayingMiniPlayerViewController *)v85 imageView];
    v364[0] = imageView2;
    narrowAspectImageView = [(TVRUINowPlayingMiniPlayerViewController *)selfCopy narrowAspectImageView];
    v364[1] = narrowAspectImageView;
    narrowAspectImageVisualEffectView = [(TVRUINowPlayingMiniPlayerViewController *)selfCopy narrowAspectImageVisualEffectView];
    v364[2] = narrowAspectImageVisualEffectView;
    v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v364 count:3];

    v93 = [v92 countByEnumeratingWithState:&v351 objects:v365 count:16];
    if (v93)
    {
      v94 = *v352;
      do
      {
        for (j = 0; j != v93; ++j)
        {
          if (*v352 != v94)
          {
            objc_enumerationMutation(v92);
          }

          [*(*(&v351 + 1) + 8 * j) setHidden:1];
        }

        v93 = [v92 countByEnumeratingWithState:&v351 objects:v365 count:16];
      }

      while (v93);
    }

    v96 = MEMORY[0x277CCAAD0];
    solariumCompactModeLayoutConstraints = [(TVRUINowPlayingMiniPlayerViewController *)selfCopy solariumCompactModeLayoutConstraints];
    [v96 activateConstraints:solariumCompactModeLayoutConstraints];
  }

  else
  {
    [(TVRUINowPlayingMiniPlayerViewController *)v85 _updateContraintsForStackedLayout:[(TVRUINowPlayingMiniPlayerViewController *)v85 _currentTraitsSizeCategoryRequiresStackedLayout]];
  }

  objc_destroyWeak(&v356);

  objc_destroyWeak(&location);
}

void __61__TVRUINowPlayingMiniPlayerViewController_configureHierarchy__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

uint64_t __61__TVRUINowPlayingMiniPlayerViewController_configureHierarchy__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    WeakRetained = [*(a1 + 32) horizontalMode];
    v3 = v6;
    if ((WeakRetained & 1) == 0)
    {
      v4 = [v6 view];
      [v4 setNeedsUpdateConstraints];

      v3 = v6;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)updateViewConstraints
{
  if (![(TVRUINowPlayingMiniPlayerViewController *)self compactSolariumMode])
  {
    _currentTraitsSizeCategoryRequiresStackedLayout = [(TVRUINowPlayingMiniPlayerViewController *)self _currentTraitsSizeCategoryRequiresStackedLayout];
    if (_currentTraitsSizeCategoryRequiresStackedLayout != [(TVRUINowPlayingMiniPlayerViewController *)self _isCurrentlyStackedLayout])
    {
      [(TVRUINowPlayingMiniPlayerViewController *)self _updateContraintsForStackedLayout:_currentTraitsSizeCategoryRequiresStackedLayout];
    }
  }

  v4.receiver = self;
  v4.super_class = TVRUINowPlayingMiniPlayerViewController;
  [(TVRUINowPlayingMiniPlayerViewController *)&v4 updateViewConstraints];
}

- (id)actionButtonMenu
{
  v12[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D753F0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke;
  v9[3] = &unk_279D88540;
  v9[4] = self;
  objc_copyWeak(&v10, &location);
  v4 = [v3 elementWithProvider:v9];
  v5 = MEMORY[0x277D75710];
  v12[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [v5 menuWithChildren:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke(uint64_t a1, void *a2)
{
  v82[1] = *MEMORY[0x277D85DE8];
  v54 = a2;
  v56 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.right.square"];
  v55 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
  v3 = [*(a1 + 32) urlForProductPageKind:3];
  v4 = [*(a1 + 32) urlForProductPageKind:2];
  v5 = [*(a1 + 32) urlForProductPageKind:1];
  v6 = MEMORY[0x277D750C8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"TVRUIGotoEpisode" value:&stru_287E6AEF8 table:@"Localizable"];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_2;
  v74[3] = &unk_279D87E38;
  objc_copyWeak(&v76, (a1 + 40));
  v48 = v3;
  v75 = v48;
  v53 = [v6 actionWithTitle:v8 image:v56 identifier:0 handler:v74];

  v9 = MEMORY[0x277D750C8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"TVRUIGotoShow" value:&stru_287E6AEF8 table:@"Localizable"];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_3;
  v71[3] = &unk_279D87E38;
  objc_copyWeak(&v73, (a1 + 40));
  v47 = v4;
  v72 = v47;
  v52 = [v9 actionWithTitle:v11 image:v56 identifier:0 handler:v71];

  v12 = MEMORY[0x277D750C8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"TVRUIGotoMovie" value:&stru_287E6AEF8 table:@"Localizable"];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_4;
  v68[3] = &unk_279D87E38;
  objc_copyWeak(&v70, (a1 + 40));
  v15 = v5;
  v69 = v15;
  v51 = [v12 actionWithTitle:v14 image:v56 identifier:0 handler:v68];

  v16 = MEMORY[0x277D750C8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"TVRUIGotoSportingEvent" value:&stru_287E6AEF8 table:@"Localizable"];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_5;
  v65[3] = &unk_279D87E38;
  objc_copyWeak(&v67, (a1 + 40));
  v46 = v15;
  v66 = v46;
  v50 = [v16 actionWithTitle:v18 image:v56 identifier:0 handler:v65];

  v19 = MEMORY[0x277D750C8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"TVRUIShareEpisode" value:&stru_287E6AEF8 table:@"Localizable"];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_6;
  v63[3] = &unk_279D87C68;
  objc_copyWeak(&v64, (a1 + 40));
  v49 = [v19 actionWithTitle:v21 image:v55 identifier:0 handler:v63];

  v22 = MEMORY[0x277D750C8];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"TVRUIShareShow" value:&stru_287E6AEF8 table:@"Localizable"];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_7;
  v61[3] = &unk_279D87C68;
  objc_copyWeak(&v62, (a1 + 40));
  v25 = [v22 actionWithTitle:v24 image:v55 identifier:0 handler:v61];

  v26 = MEMORY[0x277D750C8];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"TVRUIShareMovie" value:&stru_287E6AEF8 table:@"Localizable"];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_8;
  v59[3] = &unk_279D87C68;
  objc_copyWeak(&v60, (a1 + 40));
  v29 = [v26 actionWithTitle:v28 image:v55 identifier:0 handler:v59];

  v30 = MEMORY[0x277D750C8];
  v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v31 localizedStringForKey:@"TVRUIShareSportingEvent" value:&stru_287E6AEF8 table:@"Localizable"];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_9;
  v57[3] = &unk_279D87C68;
  objc_copyWeak(&v58, (a1 + 40));
  v33 = [v30 actionWithTitle:v32 image:v55 identifier:0 handler:v57];

  v34 = [*(a1 + 32) nowPlayingInfo];
  v35 = [v34 metadata];

  v36 = [v35 kind];
  switch(v36)
  {
    case 1:
      v42 = [*(a1 + 32) systemMonitor];
      v43 = [v42 screenLocked];

      if (v43)
      {
        v82[0] = v51;
        v39 = v82;
        goto LABEL_10;
      }

      v81[0] = v51;
      v81[1] = v29;
      v39 = v81;
LABEL_15:
      v44 = 2;
      goto LABEL_16;
    case 2:
      v40 = [*(a1 + 32) systemMonitor];
      v41 = [v40 screenLocked];

      if (!v41)
      {
        v77[0] = v53;
        v77[1] = v52;
        v39 = v77;
        v44 = 4;
        v77[2] = v49;
        v77[3] = v25;
        goto LABEL_16;
      }

      v78[0] = v53;
      v78[1] = v52;
      v39 = v78;
      goto LABEL_15;
    case 4:
      v37 = [*(a1 + 32) systemMonitor];
      v38 = [v37 screenLocked];

      if (v38)
      {
        v80 = v50;
        v39 = &v80;
LABEL_10:
        v44 = 1;
LABEL_16:
        v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:v44];
        goto LABEL_17;
      }

      v79[0] = v50;
      v79[1] = v33;
      v39 = v79;
      goto LABEL_15;
  }

  v45 = MEMORY[0x277CBEBF8];
LABEL_17:
  v54[2](v54, v45);

  objc_destroyWeak(&v58);
  objc_destroyWeak(&v60);

  objc_destroyWeak(&v62);
  objc_destroyWeak(&v64);

  objc_destroyWeak(&v67);
  objc_destroyWeak(&v70);

  objc_destroyWeak(&v73);
  objc_destroyWeak(&v76);
}

void __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained openURL:*(a1 + 32)];
}

void __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained openURL:*(a1 + 32)];
}

void __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained openURL:*(a1 + 32)];
}

void __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained openURL:*(a1 + 32)];
}

void __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained shareEpisode];
}

void __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained shareShow];
}

void __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sharePrimary];
}

void __59__TVRUINowPlayingMiniPlayerViewController_actionButtonMenu__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sharePrimary];
}

- (void)setNowPlayingInfo:(id)info
{
  objc_storeStrong(&self->_nowPlayingInfo, info);
  infoCopy = info;
  [(TVRUINowPlayingMiniPlayerViewController *)self updateFromNowPlayingInfo:infoCopy];
}

- (void)resetContent
{
  titleLabel = [(TVRUINowPlayingMiniPlayerViewController *)self titleLabel];
  [titleLabel setText:0];

  secondaryLabel = [(TVRUINowPlayingMiniPlayerViewController *)self secondaryLabel];
  [secondaryLabel setText:0];

  imageView = [(TVRUINowPlayingMiniPlayerViewController *)self imageView];
  [imageView setImage:0];

  notPlayingLabel = [(TVRUINowPlayingMiniPlayerViewController *)self notPlayingLabel];
  [notPlayingLabel setHidden:0];

  nowPlayingInfo = self->_nowPlayingInfo;
  self->_nowPlayingInfo = 0;
}

- (void)updateFromNowPlayingInfo:(id)info
{
  v56 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  metadata = [infoCopy metadata];
  if (metadata)
  {
    if ([(TVRUINowPlayingMiniPlayerViewController *)self horizontalMode])
    {
      notPlayingLabel = [(TVRUINowPlayingMiniPlayerViewController *)self notPlayingLabel];
      [notPlayingLabel setHidden:1];
    }

    tvrui_hasUnknownCanonicalID = [infoCopy tvrui_hasUnknownCanonicalID];
    if ([metadata kind] == 2)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"TVRUISeasonEpisodeTitleBrief" value:&stru_287E6AEF8 table:@"Localizable"];
      v10 = [metadata tvrui_localizedTitleWithFormatString:v9];
      titleLabel = [(TVRUINowPlayingMiniPlayerViewController *)self titleLabel];
      [titleLabel setText:v10];

      [metadata tvrui_secondaryTitle];
    }

    else
    {
      titleLabel2 = [(TVRUINowPlayingMiniPlayerViewController *)self titleLabel];
      [titleLabel2 setText:0];

      [metadata title];
    }
    v13 = ;
    secondaryLabel = [(TVRUINowPlayingMiniPlayerViewController *)self secondaryLabel];
    [secondaryLabel setText:v13];

    v15 = [(TVRUINowPlayingMiniPlayerViewController *)self _effectiveImageFromNowPlayingInfo:infoCopy];
    v16 = [(TVRUINowPlayingMiniPlayerViewController *)self _effectiveImageFromNowPlayingInfoIsFallbackImage:infoCopy];
    imageView = [(TVRUINowPlayingMiniPlayerViewController *)self imageView];
    [imageView setImage:v15];

    if (v16)
    {
      v18 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:1.0];
    }

    else
    {
      v18 = 0;
    }

    imageView2 = [(TVRUINowPlayingMiniPlayerViewController *)self imageView];
    [imageView2 setBackgroundColor:v18];

    if (v16)
    {
    }

    [v15 size];
    v22 = v20 * v21 <= 0.0 || v20 >= v21;
    narrowAspectImageVisualEffectView = [(TVRUINowPlayingMiniPlayerViewController *)self narrowAspectImageVisualEffectView];
    [narrowAspectImageVisualEffectView setHidden:v22];

    if (v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = v15;
    }

    narrowAspectImageView = [(TVRUINowPlayingMiniPlayerViewController *)self narrowAspectImageView];
    [narrowAspectImageView setImage:v24];

    if ([(TVRUINowPlayingMiniPlayerViewController *)self horizontalMode])
    {
      actionButton = [(TVRUINowPlayingMiniPlayerViewController *)self actionButton];
      [actionButton setHidden:1];
    }

    else
    {
      actionButton = [(TVRUINowPlayingMiniPlayerViewController *)self actionButton];
      [actionButton setEnabled:tvrui_hasUnknownCanonicalID ^ 1u];
    }

    tvrui_mediaIsStopped = [infoCopy tvrui_mediaIsStopped];
    v48 = metadata;
    v49 = infoCopy;
    v47 = v15;
    if (tvrui_mediaIsStopped)
    {
      styleProvider = [(TVRUINowPlayingMiniPlayerViewController *)self styleProvider];
      inactiveMediaTextColor = [styleProvider inactiveMediaTextColor];
    }

    else
    {
      inactiveMediaTextColor = [MEMORY[0x277D75348] whiteColor];
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    titleLabel3 = [(TVRUINowPlayingMiniPlayerViewController *)self titleLabel];
    v54[0] = titleLabel3;
    selfCopy = self;
    secondaryLabel2 = [(TVRUINowPlayingMiniPlayerViewController *)self secondaryLabel];
    v54[1] = secondaryLabel2;
    styleProvider2 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];

    v34 = [styleProvider2 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v51;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v51 != v36)
          {
            objc_enumerationMutation(styleProvider2);
          }

          v38 = *(*(&v50 + 1) + 8 * i);
          v39 = inactiveMediaTextColor;
          if ((tvrui_mediaIsStopped & 1) == 0)
          {
            titleLabel4 = [(TVRUINowPlayingMiniPlayerViewController *)selfCopy titleLabel];

            if (v38 == titleLabel4)
            {
              grayColor = [MEMORY[0x277D75348] grayColor];

              v39 = grayColor;
            }
          }

          [v38 setTextColor:v39];
        }

        v35 = [styleProvider2 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v35);
    }

    if (tvrui_mediaIsStopped)
    {
      styleProvider2 = [(TVRUINowPlayingMiniPlayerViewController *)selfCopy styleProvider];
      [styleProvider2 inactiveMediaImageViewAlpha];
      v43 = v42;
    }

    else
    {
      v43 = 1.0;
    }

    metadata = v48;
    infoCopy = v49;
    imageView3 = [(TVRUINowPlayingMiniPlayerViewController *)selfCopy imageView];
    [imageView3 setAlpha:v43];

    if (tvrui_mediaIsStopped)
    {
    }

    imageDataIsPlaceholder = [v49 imageDataIsPlaceholder];
    if ([imageDataIsPlaceholder BOOLValue])
    {
    }

    else
    {
      tvrui_hasArtworkImage = [v49 tvrui_hasArtworkImage];

      if (tvrui_hasArtworkImage)
      {
LABEL_43:

        goto LABEL_44;
      }
    }

    [(TVRUINowPlayingMiniPlayerViewController *)selfCopy _requestImageIfNeededForNowPlayingInfo:v49];
    goto LABEL_43;
  }

LABEL_44:
}

- (id)_effectiveImageFromNowPlayingInfo:(id)info
{
  tvrui_artworkImage = [info tvrui_artworkImage];
  if (!tvrui_artworkImage)
  {
    fetchedImage = [(TVRUINowPlayingMiniPlayerViewController *)self fetchedImage];
    v6 = fetchedImage;
    if (fetchedImage)
    {
      fallbackImage = fetchedImage;
    }

    else
    {
      fallbackImage = [(TVRUINowPlayingMiniPlayerViewController *)self fallbackImage];
    }

    tvrui_artworkImage = fallbackImage;
  }

  return tvrui_artworkImage;
}

- (BOOL)_effectiveImageFromNowPlayingInfoIsFallbackImage:(id)image
{
  tvrui_artworkImage = [image tvrui_artworkImage];
  fetchedImage = [(TVRUINowPlayingMiniPlayerViewController *)self fetchedImage];
  LOBYTE(self) = (fetchedImage | tvrui_artworkImage) == 0;

  return self;
}

- (void)openProductPageForKind:(int64_t)kind
{
  v4 = [(TVRUINowPlayingMiniPlayerViewController *)self urlForProductPageKind:kind];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(TVRUINowPlayingMiniPlayerViewController *)self openURL:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)urlForProductPageKind:(int64_t)kind
{
  nowPlayingInfo = [(TVRUINowPlayingMiniPlayerViewController *)self nowPlayingInfo];
  metadata = [nowPlayingInfo metadata];

  if (!metadata)
  {
    goto LABEL_6;
  }

  if (kind == 1 || kind == 3)
  {
    productPageURL = [metadata productPageURL];
    goto LABEL_8;
  }

  if (kind != 2)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_9;
  }

  productPageURL = [metadata showProductPageURL];
LABEL_8:
  v7 = productPageURL;
LABEL_9:

  return v7;
}

- (void)openURL:(id)l
{
  if (l)
  {
    lCopy = l;
    actionProvider = [(TVRUINowPlayingMiniPlayerViewController *)self actionProvider];
    [actionProvider openURL:lCopy];
  }
}

- (void)shareEpisode
{
  v3 = [TVRUINowPlayingInfoActivityItem alloc];
  nowPlayingInfo = [(TVRUINowPlayingMiniPlayerViewController *)self nowPlayingInfo];
  v7 = [(TVRUINowPlayingInfoActivityItem *)v3 initWithNowPlayingInfo:nowPlayingInfo shareShow:0];

  actionProvider = [(TVRUINowPlayingMiniPlayerViewController *)self actionProvider];
  actionButton = [(TVRUINowPlayingMiniPlayerViewController *)self actionButton];
  [actionProvider shareItem:v7 presentingViewController:self sourceView:actionButton];
}

- (void)shareShow
{
  v3 = [TVRUINowPlayingInfoActivityItem alloc];
  nowPlayingInfo = [(TVRUINowPlayingMiniPlayerViewController *)self nowPlayingInfo];
  v7 = [(TVRUINowPlayingInfoActivityItem *)v3 initWithNowPlayingInfo:nowPlayingInfo shareShow:1];

  actionProvider = [(TVRUINowPlayingMiniPlayerViewController *)self actionProvider];
  actionButton = [(TVRUINowPlayingMiniPlayerViewController *)self actionButton];
  [actionProvider shareItem:v7 presentingViewController:self sourceView:actionButton];
}

- (void)sharePrimary
{
  v3 = [TVRUINowPlayingInfoActivityItem alloc];
  nowPlayingInfo = [(TVRUINowPlayingMiniPlayerViewController *)self nowPlayingInfo];
  v7 = [(TVRUINowPlayingInfoActivityItem *)v3 initWithNowPlayingInfo:nowPlayingInfo shareShow:0];

  actionProvider = [(TVRUINowPlayingMiniPlayerViewController *)self actionProvider];
  actionButton = [(TVRUINowPlayingMiniPlayerViewController *)self actionButton];
  [actionProvider shareItem:v7 presentingViewController:self sourceView:actionButton];
}

- (void)_didTapNowPlayingInfo:(id)info
{
  actionProvider = [(TVRUINowPlayingMiniPlayerViewController *)self actionProvider];

  if (actionProvider)
  {
    actionProvider2 = [(TVRUINowPlayingMiniPlayerViewController *)self actionProvider];
    [actionProvider2 displayUpNextInfo];
  }
}

- (BOOL)_currentTraitsSizeCategoryRequiresStackedLayout
{
  traitCollection = [(TVRUINowPlayingMiniPlayerViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  LOBYTE(traitCollection) = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D767F8]) == NSOrderedDescending;
  return traitCollection;
}

- (void)_updateContraintsForStackedLayout:(BOOL)layout
{
  layoutCopy = layout;
  horizontalMode = [(TVRUINowPlayingMiniPlayerViewController *)self horizontalMode];
  v6 = MEMORY[0x277CCAAD0];
  if (horizontalMode)
  {
    horizontalModeConstraints = [(TVRUINowPlayingMiniPlayerViewController *)self horizontalModeConstraints];
    [v6 activateConstraints:?];
  }

  else
  {
    if (layoutCopy)
    {
      stackedTextLayoutConstraints = [(TVRUINowPlayingMiniPlayerViewController *)self stackedTextLayoutConstraints];
      [v6 activateConstraints:stackedTextLayoutConstraints];

      v8 = MEMORY[0x277CCAAD0];
      [(TVRUINowPlayingMiniPlayerViewController *)self standardLayoutConstraints];
    }

    else
    {
      standardLayoutConstraints = [(TVRUINowPlayingMiniPlayerViewController *)self standardLayoutConstraints];
      [v6 activateConstraints:standardLayoutConstraints];

      v8 = MEMORY[0x277CCAAD0];
      [(TVRUINowPlayingMiniPlayerViewController *)self stackedTextLayoutConstraints];
    }
    horizontalModeConstraints = ;
    [v8 deactivateConstraints:?];
  }
}

- (BOOL)_isCurrentlyStackedLayout
{
  stackedTextLayoutConstraints = [(TVRUINowPlayingMiniPlayerViewController *)self stackedTextLayoutConstraints];
  firstObject = [stackedTextLayoutConstraints firstObject];

  LOBYTE(stackedTextLayoutConstraints) = [firstObject isActive];
  return stackedTextLayoutConstraints;
}

- (void)_requestImageIfNeededForNowPlayingInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    tvrui_effectiveCanonicalID = [infoCopy tvrui_effectiveCanonicalID];
    if (tvrui_effectiveCanonicalID)
    {
      metadata = [v5 metadata];
      imageURLTemplate = [metadata imageURLTemplate];

      if (imageURLTemplate)
      {
        v9 = [MEMORY[0x277D6C500] imageTemplateWithString:imageURLTemplate];
        v10 = [v9 urlForSize:{400.0, 225.0}];
        objc_initWeak(&location, self);
        urlSession = [(TVRUINowPlayingMiniPlayerViewController *)self urlSession];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __82__TVRUINowPlayingMiniPlayerViewController__requestImageIfNeededForNowPlayingInfo___block_invoke;
        v13[3] = &unk_279D87D00;
        objc_copyWeak(&v15, &location);
        v14 = tvrui_effectiveCanonicalID;
        v12 = [urlSession dataTaskWithURL:v10 completionHandler:v13];

        [v12 resume];
        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __82__TVRUINowPlayingMiniPlayerViewController__requestImageIfNeededForNowPlayingInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__TVRUINowPlayingMiniPlayerViewController__requestImageIfNeededForNowPlayingInfo___block_invoke_2;
  block[3] = &unk_279D891A8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __82__TVRUINowPlayingMiniPlayerViewController__requestImageIfNeededForNowPlayingInfo___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained nowPlayingInfo];
    v4 = [v3 tvrui_effectiveCanonicalID];

    if ([v4 isEqualToString:*(a1 + 32)])
    {
      if ([*(a1 + 40) length])
      {
        [MEMORY[0x277D755B8] imageWithData:*(a1 + 40)];
      }

      else
      {
        [v7 fallbackImage];
      }
      v5 = ;
      [v7 setFetchedImage:v5];
      v6 = [v7 imageView];
      [v6 setImage:v5];
    }

    WeakRetained = v7;
  }
}

- (UIImage)fallbackImage
{
  fallbackImage = self->_fallbackImage;
  if (!fallbackImage)
  {
    v4 = MEMORY[0x277D755B8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v4 imageNamed:@"misc-placeholder" inBundle:v5];
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.6 alpha:1.0];
    v8 = [v6 imageWithTintColor:v7];
    v9 = self->_fallbackImage;
    self->_fallbackImage = v8;

    fallbackImage = self->_fallbackImage;
  }

  return fallbackImage;
}

- (NSURLSession)urlSession
{
  urlSession = self->_urlSession;
  if (!urlSession)
  {
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v5 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
    v6 = self->_urlSession;
    self->_urlSession = v5;

    urlSession = self->_urlSession;
  }

  return urlSession;
}

- (void)dealloc
{
  systemMonitor = [(TVRUINowPlayingMiniPlayerViewController *)self systemMonitor];
  [systemMonitor invalidate];

  v4.receiver = self;
  v4.super_class = TVRUINowPlayingMiniPlayerViewController;
  [(TVRUINowPlayingMiniPlayerViewController *)&v4 dealloc];
}

- (TVRUIActionProviding)actionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_actionProvider);

  return WeakRetained;
}

@end