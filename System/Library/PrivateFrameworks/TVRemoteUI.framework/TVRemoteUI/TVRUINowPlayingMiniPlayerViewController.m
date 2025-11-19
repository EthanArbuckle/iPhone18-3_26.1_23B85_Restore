@interface TVRUINowPlayingMiniPlayerViewController
- (BOOL)_currentTraitsSizeCategoryRequiresStackedLayout;
- (BOOL)_effectiveImageFromNowPlayingInfoIsFallbackImage:(id)a3;
- (BOOL)_isCurrentlyStackedLayout;
- (NSURLSession)urlSession;
- (TVRUIActionProviding)actionProvider;
- (TVRUINowPlayingMiniPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIImage)fallbackImage;
- (id)_effectiveImageFromNowPlayingInfo:(id)a3;
- (id)actionButtonMenu;
- (id)urlForProductPageKind:(int64_t)a3;
- (void)_didTapNowPlayingInfo:(id)a3;
- (void)_requestImageIfNeededForNowPlayingInfo:(id)a3;
- (void)_setupSystemMonitor;
- (void)_updateContraintsForStackedLayout:(BOOL)a3;
- (void)configureHierarchy;
- (void)dealloc;
- (void)onScreenLockChanged;
- (void)openProductPageForKind:(int64_t)a3;
- (void)openURL:(id)a3;
- (void)resetContent;
- (void)setNowPlayingInfo:(id)a3;
- (void)shareEpisode;
- (void)sharePrimary;
- (void)shareShow;
- (void)updateFromNowPlayingInfo:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TVRUINowPlayingMiniPlayerViewController

- (TVRUINowPlayingMiniPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = TVRUINowPlayingMiniPlayerViewController;
  v4 = [(TVRUINowPlayingMiniPlayerViewController *)&v10 initWithNibName:a3 bundle:a4];
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
    v4 = [(TVRUINowPlayingMiniPlayerViewController *)self systemMonitor];
    v5 = [v4 screenLocked];
    v6 = @"unlocked";
    if (v5)
    {
      v6 = @"locked";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Updating actionButton menu because screen is now %@", &v9, 0xCu);
  }

  v7 = [(TVRUINowPlayingMiniPlayerViewController *)self actionButtonMenu];
  v8 = [(TVRUINowPlayingMiniPlayerViewController *)self actionButton];
  [v8 setMenu:v7];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TVRUINowPlayingMiniPlayerViewController;
  [(TVRUINowPlayingMiniPlayerViewController *)&v3 viewDidLoad];
  [(TVRUINowPlayingMiniPlayerViewController *)self configureHierarchy];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = TVRUINowPlayingMiniPlayerViewController;
  [(TVRUINowPlayingMiniPlayerViewController *)&v6 viewWillAppear:a3];
  v4 = [(TVRUINowPlayingMiniPlayerViewController *)self nowPlayingInfo];
  [(TVRUINowPlayingMiniPlayerViewController *)self updateFromNowPlayingInfo:v4];

  v5 = [(TVRUINowPlayingMiniPlayerViewController *)self navigationController];
  [v5 setNavigationBarHidden:1];
}

- (void)configureHierarchy
{
  v373 = *MEMORY[0x277D85DE8];
  v336 = +[TVRUIFeatures isSolariumEnabled];
  v346 = self;
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
    v12 = [MEMORY[0x277D75230] clearGlassButtonConfiguration];
    [v12 setCornerStyle:4];
  }

  else
  {
    v12 = [MEMORY[0x277D75230] plainButtonConfiguration];
  }

  v345 = [MEMORY[0x277D75220] buttonWithConfiguration:v12 primaryAction:v11];
  v13 = [MEMORY[0x277D75348] whiteColor];
  [v345 setTintColor:v13];

  [v345 setOverrideUserInterfaceStyle:2];
  v14 = [(TVRUINowPlayingMiniPlayerViewController *)v346 actionButtonMenu];
  [v345 setMenu:v14];
  [v345 setShowsMenuAsPrimaryAction:1];

  v15 = MEMORY[0x277D755D0];
  v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*v4 variant:1024];
  v17 = [v15 configurationWithFont:v16];

  v18 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v17];
  v19 = [MEMORY[0x277D75230] clearGlassButtonConfiguration];
  [v19 setCornerStyle:4];
  v20 = MEMORY[0x277D750C8];
  v361[0] = MEMORY[0x277D85DD0];
  v361[1] = 3221225472;
  v361[2] = __61__TVRUINowPlayingMiniPlayerViewController_configureHierarchy__block_invoke_2;
  v361[3] = &unk_279D87C68;
  objc_copyWeak(&v362, &location);
  v21 = [v20 actionWithTitle:&stru_287E6AEF8 image:v18 identifier:0 handler:v361];
  v344 = [MEMORY[0x277D75220] buttonWithConfiguration:v19 primaryAction:v21];
  v22 = [MEMORY[0x277D75348] whiteColor];
  [v344 setTintColor:v22];

  [v344 setHidden:{-[TVRUINowPlayingMiniPlayerViewController compactSolariumMode](v346, "compactSolariumMode") ^ 1}];
  objc_destroyWeak(&v362);

  if ([(TVRUINowPlayingMiniPlayerViewController *)v346 horizontalMode]|| v336)
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
  v25 = [MEMORY[0x277D75348] clearColor];
  [v24 setBackgroundColor:v25];
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

  v29 = [MEMORY[0x277D75348] whiteColor];
  [v347 setTextColor:v29];

  [v347 setNumberOfLines:2];
  [v347 setAdjustsFontForContentSizeCategory:1];
  [v347 setAdjustsFontSizeToFitWidth:1];
  LODWORD(v30) = 1148846080;
  [v347 setContentHuggingPriority:1 forAxis:v30];
  if ([(TVRUINowPlayingMiniPlayerViewController *)v346 compactSolariumMode])
  {
    [v347 setTextAlignment:1];
  }

  [v350 addSubview:v347];
  v348 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v348 setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76988] variant:1280];
  [v348 setFont:v31];

  v32 = [MEMORY[0x277D75348] whiteColor];
  [v348 setTextColor:v32];

  [v348 setNumberOfLines:2];
  [v348 setAdjustsFontForContentSizeCategory:1];
  [v348 setAdjustsFontSizeToFitWidth:1];
  LODWORD(v33) = 1148846080;
  [v348 setContentHuggingPriority:1 forAxis:v33];
  if ([(TVRUINowPlayingMiniPlayerViewController *)v346 compactSolariumMode])
  {
    [v348 setTextAlignment:1];
  }

  [v350 addSubview:v348];
  v341 = objc_alloc_init(MEMORY[0x277D756B8]);
  v34 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  [v341 setFont:v34];

  [v341 setAdjustsFontForContentSizeCategory:1];
  v35 = [MEMORY[0x277D75348] lightTextColor];
  [v341 setTextColor:v35];

  v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v37 = [v36 localizedStringForKey:@"TVRUINotPlaying" value:&stru_287E6AEF8 table:@"Localizable"];
  [v341 setText:v37];

  [v341 setHidden:{-[TVRUINowPlayingMiniPlayerViewController horizontalMode](v346, "horizontalMode") ^ 1}];
  v38 = [(TVRUINowPlayingMiniPlayerViewController *)v346 view];
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
        [v38 addSubview:v43];
      }

      v40 = [v39 countByEnumeratingWithState:&v357 objects:v372 count:16];
    }

    while (v40);
  }

  v44 = [v38 heightAnchor];
  v335 = [v44 constraintEqualToConstant:0.0];

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

  v337 = [v349 leadingAnchor];
  v330 = [v38 leadingAnchor];
  v326 = [v337 constraintEqualToAnchor:v330 constant:10.0];
  v370[0] = v326;
  v322 = [v349 topAnchor];
  v318 = [v38 topAnchor];
  v314 = [v322 constraintEqualToAnchor:v318 constant:10.0];
  v370[1] = v314;
  v310 = [v349 bottomAnchor];
  v306 = [v38 bottomAnchor];
  v302 = [v310 constraintEqualToAnchor:v306 constant:-10.0];
  v370[2] = v302;
  v298 = [v349 widthAnchor];
  v294 = [v349 heightAnchor];
  v290 = [v298 constraintEqualToAnchor:v294 multiplier:1.77777778];
  v370[3] = v290;
  v286 = [v343 leadingAnchor];
  v282 = [v349 leadingAnchor];
  v278 = [v286 constraintEqualToAnchor:v282];
  v370[4] = v278;
  v274 = [v343 trailingAnchor];
  v270 = [v349 trailingAnchor];
  v266 = [v274 constraintEqualToAnchor:v270];
  v370[5] = v266;
  v262 = [v343 topAnchor];
  v258 = [v349 topAnchor];
  v254 = [v262 constraintEqualToAnchor:v258];
  v370[6] = v254;
  v250 = [v343 bottomAnchor];
  v246 = [v349 bottomAnchor];
  v242 = [v250 constraintEqualToAnchor:v246];
  v370[7] = v242;
  v238 = [v342 leadingAnchor];
  v234 = [v349 leadingAnchor];
  v230 = [v238 constraintEqualToAnchor:v234];
  v370[8] = v230;
  v226 = [v342 trailingAnchor];
  v222 = [v349 trailingAnchor];
  v218 = [v226 constraintEqualToAnchor:v222];
  v370[9] = v218;
  v214 = [v342 topAnchor];
  v210 = [v349 topAnchor];
  v206 = [v214 constraintEqualToAnchor:v210];
  v370[10] = v206;
  v202 = [v342 bottomAnchor];
  v198 = [v349 bottomAnchor];
  v194 = [v202 constraintEqualToAnchor:v198];
  v370[11] = v194;
  v190 = [v350 leadingAnchor];
  v186 = [v349 trailingAnchor];
  v182 = [v190 constraintEqualToAnchor:v186 constant:12.0];
  v370[12] = v182;
  v178 = [v350 trailingAnchor];
  v174 = [v38 trailingAnchor];
  v170 = [v178 constraintEqualToAnchor:v174 constant:-10.0];
  v370[13] = v170;
  v166 = [v350 centerYAnchor];
  v162 = [v38 centerYAnchor];
  v158 = [v166 constraintEqualToAnchor:v162];
  v370[14] = v158;
  v154 = [v348 topAnchor];
  v150 = [v350 topAnchor];
  v147 = [v154 constraintEqualToAnchor:v150];
  v370[15] = v147;
  v144 = [v348 leadingAnchor];
  v141 = [v350 leadingAnchor];
  v138 = [v144 constraintEqualToAnchor:v141];
  v370[16] = v138;
  v135 = [v348 trailingAnchor];
  v132 = [v350 trailingAnchor];
  v129 = [v135 constraintEqualToAnchor:v132];
  v370[17] = v129;
  v127 = [v347 topAnchor];
  v125 = [v348 bottomAnchor];
  v123 = [v127 constraintEqualToAnchor:v125 constant:v46];
  v370[18] = v123;
  v121 = [v347 leadingAnchor];
  v119 = [v350 leadingAnchor];
  v117 = [v121 constraintEqualToAnchor:v119];
  v370[19] = v117;
  v115 = [v347 trailingAnchor];
  v113 = [v350 trailingAnchor];
  v111 = [v115 constraintEqualToAnchor:v113];
  v370[20] = v111;
  v109 = [v347 bottomAnchor];
  v47 = [v350 bottomAnchor];
  v48 = [v109 constraintEqualToAnchor:v47];
  v370[21] = v48;
  v49 = [v341 centerXAnchor];
  v50 = [v38 centerXAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  v370[22] = v51;
  v52 = [v341 centerYAnchor];
  v53 = [v38 centerYAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  v370[23] = v54;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v370 count:24];
  [(TVRUINowPlayingMiniPlayerViewController *)v346 setHorizontalModeConstraints:v55];

  v338 = [v343 leadingAnchor];
  v331 = [v349 leadingAnchor];
  v327 = [v338 constraintEqualToAnchor:v331];
  v369[0] = v327;
  v323 = [v343 trailingAnchor];
  v319 = [v349 trailingAnchor];
  v315 = [v323 constraintEqualToAnchor:v319];
  v369[1] = v315;
  v311 = [v343 topAnchor];
  v307 = [v349 topAnchor];
  v303 = [v311 constraintEqualToAnchor:v307];
  v369[2] = v303;
  v299 = [v343 bottomAnchor];
  v295 = [v349 bottomAnchor];
  v291 = [v299 constraintEqualToAnchor:v295];
  v369[3] = v291;
  v287 = [v342 leadingAnchor];
  v283 = [v349 leadingAnchor];
  v279 = [v287 constraintEqualToAnchor:v283];
  v369[4] = v279;
  v275 = [v342 trailingAnchor];
  v271 = [v349 trailingAnchor];
  v267 = [v275 constraintEqualToAnchor:v271];
  v369[5] = v267;
  v263 = [v342 topAnchor];
  v259 = [v349 topAnchor];
  v255 = [v263 constraintEqualToAnchor:v259];
  v369[6] = v255;
  v251 = [v342 bottomAnchor];
  v247 = [v349 bottomAnchor];
  v243 = [v251 constraintEqualToAnchor:v247];
  v369[7] = v243;
  v239 = [v349 leadingAnchor];
  v235 = [v38 leadingAnchor];
  v231 = [v239 constraintEqualToAnchor:v235 constant:20.0];
  v369[8] = v231;
  v227 = [v349 centerYAnchor];
  v223 = [v38 centerYAnchor];
  v219 = [v227 constraintEqualToAnchor:v223];
  v369[9] = v219;
  v215 = [v349 heightAnchor];
  v211 = [v215 constraintEqualToConstant:66.0];
  v369[10] = v211;
  v207 = [v349 widthAnchor];
  v203 = [v349 heightAnchor];
  v199 = [v207 constraintEqualToAnchor:v203 multiplier:1.77777778];
  v369[11] = v199;
  v195 = [v345 trailingAnchor];
  v191 = [v38 trailingAnchor];
  v187 = [v195 constraintEqualToAnchor:v191 constant:-20.0];
  v369[12] = v187;
  v183 = [v345 centerYAnchor];
  v179 = [v38 centerYAnchor];
  v175 = [v183 constraintEqualToAnchor:v179];
  v369[13] = v175;
  v171 = [v345 widthAnchor];
  v167 = [v171 constraintEqualToConstant:30.0];
  v369[14] = v167;
  v163 = [v345 heightAnchor];
  v159 = [v345 widthAnchor];
  v155 = [v163 constraintEqualToAnchor:v159];
  v369[15] = v155;
  v151 = [v38 heightAnchor];
  v148 = [v349 heightAnchor];
  v145 = [v151 constraintGreaterThanOrEqualToAnchor:v148 constant:16.0];
  v369[16] = v145;
  v142 = [v38 heightAnchor];
  v139 = [v350 heightAnchor];
  v136 = [v142 constraintGreaterThanOrEqualToAnchor:v139];
  v369[17] = v136;
  v369[18] = v335;
  v133 = [v348 topAnchor];
  v130 = [v350 topAnchor];
  v128 = [v133 constraintEqualToAnchor:v130];
  v369[19] = v128;
  v126 = [v348 leadingAnchor];
  v124 = [v350 leadingAnchor];
  v122 = [v126 constraintEqualToAnchor:v124];
  v369[20] = v122;
  v120 = [v348 trailingAnchor];
  v118 = [v350 trailingAnchor];
  v116 = [v120 constraintEqualToAnchor:v118];
  v369[21] = v116;
  v114 = [v347 topAnchor];
  v112 = [v348 bottomAnchor];
  v110 = [v114 constraintEqualToAnchor:v112 constant:v46];
  v369[22] = v110;
  v108 = [v347 leadingAnchor];
  v107 = [v350 leadingAnchor];
  v106 = [v108 constraintEqualToAnchor:v107];
  v369[23] = v106;
  v105 = [v347 trailingAnchor];
  v104 = [v350 trailingAnchor];
  v103 = [v105 constraintEqualToAnchor:v104];
  v369[24] = v103;
  v102 = [v347 bottomAnchor];
  v101 = [v350 bottomAnchor];
  v100 = [v102 constraintEqualToAnchor:v101];
  v369[25] = v100;
  v99 = [v350 leadingAnchor];
  v98 = [v349 trailingAnchor];
  v56 = [v99 constraintEqualToAnchor:v98 constant:12.0];
  v369[26] = v56;
  v57 = [v350 trailingAnchor];
  v58 = [v345 imageView];
  v59 = [v58 leadingAnchor];
  v60 = [v57 constraintEqualToAnchor:v59 constant:-10.0];
  v369[27] = v60;
  v61 = [v350 centerYAnchor];
  v62 = [v38 centerYAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];
  v369[28] = v63;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v369 count:29];
  [(TVRUINowPlayingMiniPlayerViewController *)v346 setStandardLayoutConstraints:v64];

  v339 = [v349 topAnchor];
  v332 = [v38 topAnchor];
  v328 = [v339 constraintEqualToAnchor:v332];
  v368[0] = v328;
  v324 = [v349 leadingAnchor];
  v320 = [v38 leadingAnchor];
  v316 = [v324 constraintEqualToAnchor:v320 constant:20.0];
  v368[1] = v316;
  v312 = [v349 heightAnchor];
  v308 = [v312 constraintEqualToConstant:66.0];
  v368[2] = v308;
  v304 = [v349 widthAnchor];
  v300 = [v349 heightAnchor];
  v296 = [v304 constraintEqualToAnchor:v300 multiplier:1.77777778];
  v368[3] = v296;
  v292 = [v345 trailingAnchor];
  v288 = [v38 trailingAnchor];
  v284 = [v292 constraintEqualToAnchor:v288 constant:-20.0];
  v368[4] = v284;
  v280 = [v345 centerYAnchor];
  v276 = [v349 centerYAnchor];
  v272 = [v280 constraintEqualToAnchor:v276];
  v368[5] = v272;
  v268 = [v345 widthAnchor];
  v264 = [v268 constraintEqualToConstant:30.0];
  v368[6] = v264;
  v260 = [v345 heightAnchor];
  v256 = [v345 widthAnchor];
  v252 = [v260 constraintEqualToAnchor:v256];
  v368[7] = v252;
  v248 = [v350 topAnchor];
  v244 = [v349 bottomAnchor];
  v240 = [v248 constraintEqualToAnchor:v244 constant:v46];
  v368[8] = v240;
  v236 = [v350 leadingAnchor];
  v232 = [v38 leadingAnchor];
  v228 = [v236 constraintEqualToAnchor:v232 constant:12.0];
  v368[9] = v228;
  v224 = [v350 trailingAnchor];
  v220 = [v38 trailingAnchor];
  v216 = [v224 constraintEqualToAnchor:v220 constant:-10.0];
  v368[10] = v216;
  v212 = [v350 bottomAnchor];
  v208 = [v38 bottomAnchor];
  v204 = [v212 constraintEqualToAnchor:v208];
  v368[11] = v204;
  v200 = [v348 topAnchor];
  v196 = [v350 topAnchor];
  v192 = [v200 constraintEqualToAnchor:v196];
  v368[12] = v192;
  v188 = [v348 leadingAnchor];
  v184 = [v350 leadingAnchor];
  v180 = [v188 constraintEqualToAnchor:v184];
  v368[13] = v180;
  v176 = [v348 trailingAnchor];
  v172 = [v350 trailingAnchor];
  v168 = [v176 constraintEqualToAnchor:v172];
  v368[14] = v168;
  v164 = [v347 topAnchor];
  v160 = [v348 bottomAnchor];
  v156 = [v164 constraintEqualToAnchor:v160 constant:v46];
  v368[15] = v156;
  v152 = [v347 leadingAnchor];
  v65 = [v350 leadingAnchor];
  v66 = [v152 constraintEqualToAnchor:v65];
  v368[16] = v66;
  v67 = [v347 trailingAnchor];
  v68 = [v350 trailingAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];
  v368[17] = v69;
  v70 = [v347 bottomAnchor];
  v71 = [v350 bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];
  v368[18] = v72;
  v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v368 count:19];
  [(TVRUINowPlayingMiniPlayerViewController *)v346 setStackedTextLayoutConstraints:v73];

  v340 = [v38 heightAnchor];
  v333 = [v340 constraintGreaterThanOrEqualToConstant:56.0];
  v367[0] = v333;
  v329 = [v38 heightAnchor];
  v325 = [v329 constraintLessThanOrEqualToConstant:88.0];
  v367[1] = v325;
  v321 = [v344 leadingAnchor];
  v317 = [v38 leadingAnchor];
  v313 = [v321 constraintEqualToAnchor:v317 constant:17.0];
  v367[2] = v313;
  v309 = [v344 topAnchor];
  v305 = [v38 topAnchor];
  v301 = [v309 constraintEqualToAnchor:v305 constant:17.0];
  v367[3] = v301;
  v297 = [v344 widthAnchor];
  v293 = [v344 heightAnchor];
  v289 = [v297 constraintEqualToAnchor:v293];
  v367[4] = v289;
  v285 = [v344 heightAnchor];
  v281 = [v285 constraintEqualToConstant:44.0];
  v367[5] = v281;
  v277 = [v350 leadingAnchor];
  v273 = [v344 trailingAnchor];
  v269 = [v277 constraintEqualToAnchor:v273 constant:10.0];
  v367[6] = v269;
  v265 = [v350 topAnchor];
  v261 = [v38 topAnchor];
  v257 = [v265 constraintGreaterThanOrEqualToAnchor:v261 constant:15.0];
  v367[7] = v257;
  v253 = [v350 bottomAnchor];
  v249 = [v38 bottomAnchor];
  v245 = [v253 constraintLessThanOrEqualToAnchor:v249];
  v367[8] = v245;
  v241 = [v350 centerYAnchor];
  v237 = [v344 centerYAnchor];
  v233 = [v241 constraintEqualToAnchor:v237];
  v367[9] = v233;
  v229 = [v345 leadingAnchor];
  v225 = [v350 trailingAnchor];
  v221 = [v229 constraintEqualToAnchor:v225 constant:10.0];
  v367[10] = v221;
  v217 = [v345 topAnchor];
  v213 = [v38 topAnchor];
  v209 = [v217 constraintEqualToAnchor:v213 constant:17.0];
  v367[11] = v209;
  v205 = [v345 widthAnchor];
  v201 = [v345 heightAnchor];
  v197 = [v205 constraintEqualToAnchor:v201];
  v367[12] = v197;
  v193 = [v345 heightAnchor];
  v189 = [v193 constraintEqualToConstant:44.0];
  v367[13] = v189;
  v185 = [v345 trailingAnchor];
  v181 = [v38 trailingAnchor];
  v177 = [v185 constraintEqualToAnchor:v181 constant:-17.0];
  v367[14] = v177;
  v173 = [v348 topAnchor];
  v169 = [v350 topAnchor];
  v165 = [v173 constraintEqualToAnchor:v169];
  v367[15] = v165;
  v161 = [v348 leadingAnchor];
  v157 = [v350 leadingAnchor];
  v153 = [v161 constraintEqualToAnchor:v157];
  v367[16] = v153;
  v149 = [v348 trailingAnchor];
  v146 = [v350 trailingAnchor];
  v143 = [v149 constraintEqualToAnchor:v146];
  v367[17] = v143;
  v140 = [v347 topAnchor];
  v137 = [v348 bottomAnchor];
  v134 = [v140 constraintEqualToAnchor:v137 constant:2.0];
  v367[18] = v134;
  v131 = [v347 leadingAnchor];
  v74 = [v350 leadingAnchor];
  v75 = [v131 constraintEqualToAnchor:v74];
  v367[19] = v75;
  v76 = [v347 trailingAnchor];
  v77 = [v350 trailingAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];
  v367[20] = v78;
  v79 = [v347 bottomAnchor];
  v80 = [v350 bottomAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];
  v367[21] = v81;
  v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v367 count:22];
  [(TVRUINowPlayingMiniPlayerViewController *)v346 setSolariumCompactModeLayoutConstraints:v82];

  [(TVRUINowPlayingMiniPlayerViewController *)v346 setImageView:v349];
  [(TVRUINowPlayingMiniPlayerViewController *)v346 setTitleLabel:v347];
  [(TVRUINowPlayingMiniPlayerViewController *)v346 setSecondaryLabel:v348];
  [(TVRUINowPlayingMiniPlayerViewController *)v346 setDismissButton:v344];
  [(TVRUINowPlayingMiniPlayerViewController *)v346 setActionButton:v345];
  [(TVRUINowPlayingMiniPlayerViewController *)v346 setNarrowAspectImageView:v343];
  [(TVRUINowPlayingMiniPlayerViewController *)v346 setNarrowAspectImageVisualEffectView:v342];
  [(TVRUINowPlayingMiniPlayerViewController *)v346 setNotPlayingLabel:v341];
  v366 = objc_opt_class();
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v366 count:1];
  v355[0] = MEMORY[0x277D85DD0];
  v355[1] = 3221225472;
  v355[2] = __61__TVRUINowPlayingMiniPlayerViewController_configureHierarchy__block_invoke_3;
  v355[3] = &unk_279D89180;
  objc_copyWeak(&v356, &location);
  v355[4] = v346;
  v84 = [(TVRUINowPlayingMiniPlayerViewController *)v346 registerForTraitChanges:v83 withHandler:v355];

  v85 = v346;
  if ([(TVRUINowPlayingMiniPlayerViewController *)v346 horizontalMode])
  {
    v86 = [(TVRUINowPlayingMiniPlayerViewController *)v346 actionButton];
    [v86 setHidden:1];

    v87 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v346 action:sel__didTapNowPlayingInfo_];
    v88 = [(TVRUINowPlayingMiniPlayerViewController *)v346 view];
    [v88 addGestureRecognizer:v87];

    v85 = v346;
  }

  if ([(TVRUINowPlayingMiniPlayerViewController *)v85 compactSolariumMode])
  {
    v353 = 0u;
    v354 = 0u;
    v351 = 0u;
    v352 = 0u;
    v89 = [(TVRUINowPlayingMiniPlayerViewController *)v85 imageView];
    v364[0] = v89;
    v90 = [(TVRUINowPlayingMiniPlayerViewController *)v346 narrowAspectImageView];
    v364[1] = v90;
    v91 = [(TVRUINowPlayingMiniPlayerViewController *)v346 narrowAspectImageVisualEffectView];
    v364[2] = v91;
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
    v97 = [(TVRUINowPlayingMiniPlayerViewController *)v346 solariumCompactModeLayoutConstraints];
    [v96 activateConstraints:v97];
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
    v3 = [(TVRUINowPlayingMiniPlayerViewController *)self _currentTraitsSizeCategoryRequiresStackedLayout];
    if (v3 != [(TVRUINowPlayingMiniPlayerViewController *)self _isCurrentlyStackedLayout])
    {
      [(TVRUINowPlayingMiniPlayerViewController *)self _updateContraintsForStackedLayout:v3];
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

- (void)setNowPlayingInfo:(id)a3
{
  objc_storeStrong(&self->_nowPlayingInfo, a3);
  v5 = a3;
  [(TVRUINowPlayingMiniPlayerViewController *)self updateFromNowPlayingInfo:v5];
}

- (void)resetContent
{
  v3 = [(TVRUINowPlayingMiniPlayerViewController *)self titleLabel];
  [v3 setText:0];

  v4 = [(TVRUINowPlayingMiniPlayerViewController *)self secondaryLabel];
  [v4 setText:0];

  v5 = [(TVRUINowPlayingMiniPlayerViewController *)self imageView];
  [v5 setImage:0];

  v6 = [(TVRUINowPlayingMiniPlayerViewController *)self notPlayingLabel];
  [v6 setHidden:0];

  nowPlayingInfo = self->_nowPlayingInfo;
  self->_nowPlayingInfo = 0;
}

- (void)updateFromNowPlayingInfo:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 metadata];
  if (v5)
  {
    if ([(TVRUINowPlayingMiniPlayerViewController *)self horizontalMode])
    {
      v6 = [(TVRUINowPlayingMiniPlayerViewController *)self notPlayingLabel];
      [v6 setHidden:1];
    }

    v7 = [v4 tvrui_hasUnknownCanonicalID];
    if ([v5 kind] == 2)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"TVRUISeasonEpisodeTitleBrief" value:&stru_287E6AEF8 table:@"Localizable"];
      v10 = [v5 tvrui_localizedTitleWithFormatString:v9];
      v11 = [(TVRUINowPlayingMiniPlayerViewController *)self titleLabel];
      [v11 setText:v10];

      [v5 tvrui_secondaryTitle];
    }

    else
    {
      v12 = [(TVRUINowPlayingMiniPlayerViewController *)self titleLabel];
      [v12 setText:0];

      [v5 title];
    }
    v13 = ;
    v14 = [(TVRUINowPlayingMiniPlayerViewController *)self secondaryLabel];
    [v14 setText:v13];

    v15 = [(TVRUINowPlayingMiniPlayerViewController *)self _effectiveImageFromNowPlayingInfo:v4];
    v16 = [(TVRUINowPlayingMiniPlayerViewController *)self _effectiveImageFromNowPlayingInfoIsFallbackImage:v4];
    v17 = [(TVRUINowPlayingMiniPlayerViewController *)self imageView];
    [v17 setImage:v15];

    if (v16)
    {
      v18 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:1.0];
    }

    else
    {
      v18 = 0;
    }

    v19 = [(TVRUINowPlayingMiniPlayerViewController *)self imageView];
    [v19 setBackgroundColor:v18];

    if (v16)
    {
    }

    [v15 size];
    v22 = v20 * v21 <= 0.0 || v20 >= v21;
    v23 = [(TVRUINowPlayingMiniPlayerViewController *)self narrowAspectImageVisualEffectView];
    [v23 setHidden:v22];

    if (v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = v15;
    }

    v25 = [(TVRUINowPlayingMiniPlayerViewController *)self narrowAspectImageView];
    [v25 setImage:v24];

    if ([(TVRUINowPlayingMiniPlayerViewController *)self horizontalMode])
    {
      v26 = [(TVRUINowPlayingMiniPlayerViewController *)self actionButton];
      [v26 setHidden:1];
    }

    else
    {
      v26 = [(TVRUINowPlayingMiniPlayerViewController *)self actionButton];
      [v26 setEnabled:v7 ^ 1u];
    }

    v27 = [v4 tvrui_mediaIsStopped];
    v48 = v5;
    v49 = v4;
    v47 = v15;
    if (v27)
    {
      v28 = [(TVRUINowPlayingMiniPlayerViewController *)self styleProvider];
      v29 = [v28 inactiveMediaTextColor];
    }

    else
    {
      v29 = [MEMORY[0x277D75348] whiteColor];
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v30 = [(TVRUINowPlayingMiniPlayerViewController *)self titleLabel];
    v54[0] = v30;
    v31 = self;
    v32 = [(TVRUINowPlayingMiniPlayerViewController *)self secondaryLabel];
    v54[1] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];

    v34 = [v33 countByEnumeratingWithState:&v50 objects:v55 count:16];
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
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v50 + 1) + 8 * i);
          v39 = v29;
          if ((v27 & 1) == 0)
          {
            v40 = [(TVRUINowPlayingMiniPlayerViewController *)v31 titleLabel];

            if (v38 == v40)
            {
              v41 = [MEMORY[0x277D75348] grayColor];

              v39 = v41;
            }
          }

          [v38 setTextColor:v39];
        }

        v35 = [v33 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v35);
    }

    if (v27)
    {
      v33 = [(TVRUINowPlayingMiniPlayerViewController *)v31 styleProvider];
      [v33 inactiveMediaImageViewAlpha];
      v43 = v42;
    }

    else
    {
      v43 = 1.0;
    }

    v5 = v48;
    v4 = v49;
    v44 = [(TVRUINowPlayingMiniPlayerViewController *)v31 imageView];
    [v44 setAlpha:v43];

    if (v27)
    {
    }

    v45 = [v49 imageDataIsPlaceholder];
    if ([v45 BOOLValue])
    {
    }

    else
    {
      v46 = [v49 tvrui_hasArtworkImage];

      if (v46)
      {
LABEL_43:

        goto LABEL_44;
      }
    }

    [(TVRUINowPlayingMiniPlayerViewController *)v31 _requestImageIfNeededForNowPlayingInfo:v49];
    goto LABEL_43;
  }

LABEL_44:
}

- (id)_effectiveImageFromNowPlayingInfo:(id)a3
{
  v4 = [a3 tvrui_artworkImage];
  if (!v4)
  {
    v5 = [(TVRUINowPlayingMiniPlayerViewController *)self fetchedImage];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(TVRUINowPlayingMiniPlayerViewController *)self fallbackImage];
    }

    v4 = v7;
  }

  return v4;
}

- (BOOL)_effectiveImageFromNowPlayingInfoIsFallbackImage:(id)a3
{
  v4 = [a3 tvrui_artworkImage];
  v5 = [(TVRUINowPlayingMiniPlayerViewController *)self fetchedImage];
  LOBYTE(self) = (v5 | v4) == 0;

  return self;
}

- (void)openProductPageForKind:(int64_t)a3
{
  v4 = [(TVRUINowPlayingMiniPlayerViewController *)self urlForProductPageKind:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(TVRUINowPlayingMiniPlayerViewController *)self openURL:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)urlForProductPageKind:(int64_t)a3
{
  v4 = [(TVRUINowPlayingMiniPlayerViewController *)self nowPlayingInfo];
  v5 = [v4 metadata];

  if (!v5)
  {
    goto LABEL_6;
  }

  if (a3 == 1 || a3 == 3)
  {
    v6 = [v5 productPageURL];
    goto LABEL_8;
  }

  if (a3 != 2)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_9;
  }

  v6 = [v5 showProductPageURL];
LABEL_8:
  v7 = v6;
LABEL_9:

  return v7;
}

- (void)openURL:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(TVRUINowPlayingMiniPlayerViewController *)self actionProvider];
    [v5 openURL:v4];
  }
}

- (void)shareEpisode
{
  v3 = [TVRUINowPlayingInfoActivityItem alloc];
  v4 = [(TVRUINowPlayingMiniPlayerViewController *)self nowPlayingInfo];
  v7 = [(TVRUINowPlayingInfoActivityItem *)v3 initWithNowPlayingInfo:v4 shareShow:0];

  v5 = [(TVRUINowPlayingMiniPlayerViewController *)self actionProvider];
  v6 = [(TVRUINowPlayingMiniPlayerViewController *)self actionButton];
  [v5 shareItem:v7 presentingViewController:self sourceView:v6];
}

- (void)shareShow
{
  v3 = [TVRUINowPlayingInfoActivityItem alloc];
  v4 = [(TVRUINowPlayingMiniPlayerViewController *)self nowPlayingInfo];
  v7 = [(TVRUINowPlayingInfoActivityItem *)v3 initWithNowPlayingInfo:v4 shareShow:1];

  v5 = [(TVRUINowPlayingMiniPlayerViewController *)self actionProvider];
  v6 = [(TVRUINowPlayingMiniPlayerViewController *)self actionButton];
  [v5 shareItem:v7 presentingViewController:self sourceView:v6];
}

- (void)sharePrimary
{
  v3 = [TVRUINowPlayingInfoActivityItem alloc];
  v4 = [(TVRUINowPlayingMiniPlayerViewController *)self nowPlayingInfo];
  v7 = [(TVRUINowPlayingInfoActivityItem *)v3 initWithNowPlayingInfo:v4 shareShow:0];

  v5 = [(TVRUINowPlayingMiniPlayerViewController *)self actionProvider];
  v6 = [(TVRUINowPlayingMiniPlayerViewController *)self actionButton];
  [v5 shareItem:v7 presentingViewController:self sourceView:v6];
}

- (void)_didTapNowPlayingInfo:(id)a3
{
  v4 = [(TVRUINowPlayingMiniPlayerViewController *)self actionProvider];

  if (v4)
  {
    v5 = [(TVRUINowPlayingMiniPlayerViewController *)self actionProvider];
    [v5 displayUpNextInfo];
  }
}

- (BOOL)_currentTraitsSizeCategoryRequiresStackedLayout
{
  v2 = [(TVRUINowPlayingMiniPlayerViewController *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x277D767F8]) == NSOrderedDescending;
  return v2;
}

- (void)_updateContraintsForStackedLayout:(BOOL)a3
{
  v3 = a3;
  v5 = [(TVRUINowPlayingMiniPlayerViewController *)self horizontalMode];
  v6 = MEMORY[0x277CCAAD0];
  if (v5)
  {
    v10 = [(TVRUINowPlayingMiniPlayerViewController *)self horizontalModeConstraints];
    [v6 activateConstraints:?];
  }

  else
  {
    if (v3)
    {
      v7 = [(TVRUINowPlayingMiniPlayerViewController *)self stackedTextLayoutConstraints];
      [v6 activateConstraints:v7];

      v8 = MEMORY[0x277CCAAD0];
      [(TVRUINowPlayingMiniPlayerViewController *)self standardLayoutConstraints];
    }

    else
    {
      v9 = [(TVRUINowPlayingMiniPlayerViewController *)self standardLayoutConstraints];
      [v6 activateConstraints:v9];

      v8 = MEMORY[0x277CCAAD0];
      [(TVRUINowPlayingMiniPlayerViewController *)self stackedTextLayoutConstraints];
    }
    v10 = ;
    [v8 deactivateConstraints:?];
  }
}

- (BOOL)_isCurrentlyStackedLayout
{
  v2 = [(TVRUINowPlayingMiniPlayerViewController *)self stackedTextLayoutConstraints];
  v3 = [v2 firstObject];

  LOBYTE(v2) = [v3 isActive];
  return v2;
}

- (void)_requestImageIfNeededForNowPlayingInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 tvrui_effectiveCanonicalID];
    if (v6)
    {
      v7 = [v5 metadata];
      v8 = [v7 imageURLTemplate];

      if (v8)
      {
        v9 = [MEMORY[0x277D6C500] imageTemplateWithString:v8];
        v10 = [v9 urlForSize:{400.0, 225.0}];
        objc_initWeak(&location, self);
        v11 = [(TVRUINowPlayingMiniPlayerViewController *)self urlSession];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __82__TVRUINowPlayingMiniPlayerViewController__requestImageIfNeededForNowPlayingInfo___block_invoke;
        v13[3] = &unk_279D87D00;
        objc_copyWeak(&v15, &location);
        v14 = v6;
        v12 = [v11 dataTaskWithURL:v10 completionHandler:v13];

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
    v4 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v5 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v4];
    v6 = self->_urlSession;
    self->_urlSession = v5;

    urlSession = self->_urlSession;
  }

  return urlSession;
}

- (void)dealloc
{
  v3 = [(TVRUINowPlayingMiniPlayerViewController *)self systemMonitor];
  [v3 invalidate];

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