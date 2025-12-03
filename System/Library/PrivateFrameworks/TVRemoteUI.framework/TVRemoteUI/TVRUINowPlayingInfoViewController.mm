@interface TVRUINowPlayingInfoViewController
- (BOOL)_currentTraitsSizeCategoryRequiresStackedLayout;
- (BOOL)_infoLineRequiresDoubleLayout;
- (BOOL)_isCurrentlyDoubleInfoLineLayout;
- (BOOL)_isCurrentlyStackedLayout;
- (TVRUIActionProviding)actionProvider;
- (TVRUINowPlayingInfoViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_animateButtonFromHighlightState:(id)state;
- (void)_animateButtonToHighlightState:(id)state;
- (void)_playHaptic;
- (void)_updateConstraintsForInfoLineUsingDoubleLineLayout:(BOOL)layout;
- (void)_updateContraintsForStackedLayout:(BOOL)layout;
- (void)configureHierarchy;
- (void)openProductPage;
- (void)setNowPlayingInfo:(id)info;
- (void)updateFromNowPlayingInfo:(id)info;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation TVRUINowPlayingInfoViewController

- (TVRUINowPlayingInfoViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = TVRUINowPlayingInfoViewController;
  v4 = [(TVRUINowPlayingInfoViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(TVREventHaptic);
    eventHaptic = v4->_eventHaptic;
    v4->_eventHaptic = v5;
  }

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TVRUINowPlayingInfoViewController;
  [(TVRUINowPlayingInfoViewController *)&v3 viewDidLoad];
  [(TVRUINowPlayingInfoViewController *)self configureHierarchy];
}

- (void)configureHierarchy
{
  v236 = *MEMORY[0x277D85DE8];
  v3 = +[TVRUIFeatures isSolariumEnabled];
  val = self;
  view = [(TVRUINowPlayingInfoViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x277D759D8]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v202 = v4;
  [view addSubview:v4];
  if (v3)
  {
    [MEMORY[0x277D75230] clearGlassButtonConfiguration];
  }

  else
  {
    [MEMORY[0x277D75230] grayButtonConfiguration];
  }
  v199 = ;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TVRUIFromBeginning" value:&stru_287E6AEF8 table:@"Localizable"];
  [v199 setTitle:v6];

  [v199 setTitleAlignment:2];
  [v199 setTitleTextAttributesTransformer:&__block_literal_global_0];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"play.fill"];
  v8 = v199;
  [v199 setImage:v7];

  [v199 setImagePadding:6.0];
  if (v3)
  {
    [v199 setCornerStyle:4];
  }

  else
  {
    background = [v199 background];
    [background setCornerRadius:8.0];

    v8 = v199;
  }

  [v8 setButtonSize:1];
  if (v3)
  {
    [MEMORY[0x277D75230] clearGlassButtonConfiguration];
  }

  else
  {
    [MEMORY[0x277D75230] grayButtonConfiguration];
  }
  v198 = ;
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"TVRUIDetails" value:&stru_287E6AEF8 table:@"Localizable"];
  [v198 setTitle:v11];

  [v198 setTitleAlignment:2];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.forward.app.fill"];
  v13 = v198;
  [v198 setImage:v12];

  [v198 setImagePadding:6.0];
  [v198 setTitleTextAttributesTransformer:&__block_literal_global_26];
  if (v3)
  {
    [v198 setCornerStyle:4];
  }

  else
  {
    background2 = [v198 background];
    [background2 setCornerRadius:8.0];

    v13 = v198;
  }

  [v13 setButtonSize:1];
  objc_initWeak(&location, val);
  v15 = MEMORY[0x277D750C8];
  v223[0] = MEMORY[0x277D85DD0];
  v223[1] = 3221225472;
  v223[2] = __55__TVRUINowPlayingInfoViewController_configureHierarchy__block_invoke_3;
  v223[3] = &unk_279D87C68;
  objc_copyWeak(&v224, &location);
  v195 = [v15 actionWithHandler:v223];
  v16 = MEMORY[0x277D750C8];
  v221[0] = MEMORY[0x277D85DD0];
  v221[1] = 3221225472;
  v221[2] = __55__TVRUINowPlayingInfoViewController_configureHierarchy__block_invoke_4;
  v221[3] = &unk_279D87C68;
  objc_copyWeak(&v222, &location);
  v194 = [v16 actionWithHandler:v221];
  v209 = objc_alloc_init(MEMORY[0x277D75D18]);
  v203 = objc_alloc_init(MEMORY[0x277D756B8]);
  v207 = objc_alloc_init(MEMORY[0x277D75C40]);
  v204 = objc_alloc_init(MEMORY[0x277D756B8]);
  v201 = objc_alloc_init(MEMORY[0x277D756B8]);
  v208 = objc_alloc_init(MEMORY[0x277D75D18]);
  v206 = [MEMORY[0x277D75220] buttonWithConfiguration:v199 primaryAction:v195];
  v205 = [MEMORY[0x277D75220] buttonWithConfiguration:v198 primaryAction:v194];
  [v208 addSubview:v201];
  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  v234[0] = v206;
  v234[1] = v205;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v234 count:2];
  v18 = [v17 countByEnumeratingWithState:&v217 objects:v235 count:16];
  if (v18)
  {
    v19 = *v218;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v218 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v217 + 1) + 8 * i);
        whiteColor = [MEMORY[0x277D75348] whiteColor];
        [v21 setTintColor:whiteColor];

        [v21 addTarget:val action:sel__animateButtonToHighlightState_ forControlEvents:1];
        [v21 addTarget:val action:sel__animateButtonFromHighlightState_ forControlEvents:448];
      }

      v18 = [v17 countByEnumeratingWithState:&v217 objects:v235 count:16];
    }

    while (v18);
  }

  v23 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76988] variant:1024];
  [v203 setFont:v23];

  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [v203 setTextColor:whiteColor2];

  [v207 setEditable:0];
  textContainer = [v207 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v207 setFont:v26];

  whiteColor3 = [MEMORY[0x277D75348] whiteColor];
  [v207 setTextColor:whiteColor3];

  [v207 setAdjustsFontForContentSizeCategory:1];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v207 setBackgroundColor:clearColor];

  [v207 textContainerInset];
  [v207 setTextContainerInset:0.0];
  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  v196 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] variant:1024];
  [v204 setFont:v196];
  [v204 setTextColor:lightGrayColor];
  [v204 setNumberOfLines:0];
  [v201 setFont:v196];
  [v201 setTextColor:lightGrayColor];
  [v201 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = lightGrayColor;
  cGColor = [lightGrayColor CGColor];
  layer = [v208 layer];
  [layer setBorderColor:cGColor];

  layer2 = [v208 layer];
  [layer2 setBorderWidth:1.0];

  layer3 = [v208 layer];
  [layer3 setCornerRadius:4.0];

  [v209 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v202 addSubview:v209];
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v232[0] = v203;
  v232[1] = v207;
  v232[2] = v204;
  v232[3] = v208;
  v232[4] = v206;
  v232[5] = v205;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v232 count:6];
  v36 = [v35 countByEnumeratingWithState:&v213 objects:v233 count:16];
  if (v36)
  {
    v37 = *v214;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v214 != v37)
        {
          objc_enumerationMutation(v35);
        }

        v39 = *(*(&v213 + 1) + 8 * j);
        [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v209 addSubview:v39];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = v39;
          [v40 setAdjustsFontForContentSizeCategory:1];
        }
      }

      v36 = [v35 countByEnumeratingWithState:&v213 objects:v233 count:16];
    }

    while (v36);
  }

  styleProvider = [(TVRUINowPlayingInfoViewController *)val styleProvider];
  [styleProvider solariumDefaultButtonHeight];
  v43 = v42;

  heightAnchor = [v207 heightAnchor];
  v197 = [heightAnchor constraintEqualToConstant:40.0];

  LODWORD(v45) = 1132068864;
  [v197 setPriority:v45];
  v89 = MEMORY[0x277CCAAD0];
  topAnchor = [view topAnchor];
  topAnchor2 = [v202 topAnchor];
  v184 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v231[0] = v184;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [v202 bottomAnchor];
  v172 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v231[1] = v172;
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [v202 leadingAnchor];
  v163 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v231[2] = v163;
  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [v202 trailingAnchor];
  v154 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v231[3] = v154;
  topAnchor3 = [v202 topAnchor];
  topAnchor4 = [v209 topAnchor];
  v145 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v231[4] = v145;
  bottomAnchor3 = [v202 bottomAnchor];
  bottomAnchor4 = [v209 bottomAnchor];
  v136 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v231[5] = v136;
  leadingAnchor3 = [v202 leadingAnchor];
  leadingAnchor4 = [v209 leadingAnchor];
  v129 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v231[6] = v129;
  trailingAnchor3 = [v202 trailingAnchor];
  trailingAnchor4 = [v209 trailingAnchor];
  v123 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v231[7] = v123;
  widthAnchor = [v209 widthAnchor];
  widthAnchor2 = [view widthAnchor];
  v119 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-40.0];
  v231[8] = v119;
  centerXAnchor = [v209 centerXAnchor];
  centerXAnchor2 = [view centerXAnchor];
  v116 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v231[9] = v116;
  topAnchor5 = [v203 topAnchor];
  topAnchor6 = [v209 topAnchor];
  v113 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:10.0];
  v231[10] = v113;
  leadingAnchor5 = [v203 leadingAnchor];
  leadingAnchor6 = [v209 leadingAnchor];
  v110 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:10.0];
  v231[11] = v110;
  trailingAnchor5 = [v203 trailingAnchor];
  trailingAnchor6 = [v209 trailingAnchor];
  v107 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-10.0];
  v231[12] = v107;
  topAnchor7 = [v207 topAnchor];
  bottomAnchor5 = [v203 bottomAnchor];
  v104 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:10.0];
  v231[13] = v104;
  leadingAnchor7 = [v207 leadingAnchor];
  leadingAnchor8 = [v203 leadingAnchor];
  v101 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v231[14] = v101;
  trailingAnchor7 = [v207 trailingAnchor];
  trailingAnchor8 = [v203 trailingAnchor];
  v98 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v231[15] = v98;
  v231[16] = v197;
  topAnchor8 = [v204 topAnchor];
  bottomAnchor6 = [v207 bottomAnchor];
  v95 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6 constant:10.0];
  v231[17] = v95;
  leadingAnchor9 = [v201 leadingAnchor];
  leadingAnchor10 = [v208 leadingAnchor];
  v92 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:3.0];
  v231[18] = v92;
  trailingAnchor9 = [v201 trailingAnchor];
  trailingAnchor10 = [v208 trailingAnchor];
  v47 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-3.0];
  v231[19] = v47;
  topAnchor9 = [v201 topAnchor];
  topAnchor10 = [v208 topAnchor];
  v50 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  v231[20] = v50;
  bottomAnchor7 = [v201 bottomAnchor];
  bottomAnchor8 = [v208 bottomAnchor];
  v53 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v231[21] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v231 count:22];
  [v89 activateConstraints:v54];

  topAnchor11 = [v206 topAnchor];
  bottomAnchor9 = [v208 bottomAnchor];
  v181 = [topAnchor11 constraintEqualToAnchor:bottomAnchor9 constant:20.0];
  v230[0] = v181;
  leadingAnchor11 = [v206 leadingAnchor];
  leadingAnchor12 = [v209 leadingAnchor];
  v170 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:10.0];
  v230[1] = v170;
  trailingAnchor11 = [v206 trailingAnchor];
  leadingAnchor13 = [v205 leadingAnchor];
  v161 = [trailingAnchor11 constraintEqualToAnchor:leadingAnchor13 constant:-10.0];
  v230[2] = v161;
  heightAnchor2 = [v206 heightAnchor];
  v155 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:v43];
  v230[3] = v155;
  bottomAnchor10 = [v206 bottomAnchor];
  bottomAnchor11 = [v209 bottomAnchor];
  v146 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11 constant:-30.0];
  v230[4] = v146;
  topAnchor12 = [v205 topAnchor];
  bottomAnchor12 = [v208 bottomAnchor];
  v137 = [topAnchor12 constraintEqualToAnchor:bottomAnchor12 constant:20.0];
  v230[5] = v137;
  trailingAnchor12 = [v205 trailingAnchor];
  trailingAnchor13 = [v209 trailingAnchor];
  v130 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13 constant:-10.0];
  v230[6] = v130;
  heightAnchor3 = [v205 heightAnchor];
  v126 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:v43];
  v230[7] = v126;
  widthAnchor3 = [v205 widthAnchor];
  widthAnchor4 = [v206 widthAnchor];
  v55 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v230[8] = v55;
  bottomAnchor13 = [v205 bottomAnchor];
  bottomAnchor14 = [v209 bottomAnchor];
  v58 = [bottomAnchor13 constraintEqualToAnchor:bottomAnchor14 constant:-30.0];
  v230[9] = v58;
  bottomAnchor15 = [v209 bottomAnchor];
  bottomAnchor16 = [view bottomAnchor];
  v61 = [bottomAnchor15 constraintLessThanOrEqualToAnchor:bottomAnchor16];
  v230[10] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v230 count:11];
  [(TVRUINowPlayingInfoViewController *)val setStandardLayoutConstraints:v62];

  topAnchor13 = [v206 topAnchor];
  bottomAnchor17 = [v208 bottomAnchor];
  v182 = [topAnchor13 constraintEqualToAnchor:bottomAnchor17 constant:20.0];
  v229[0] = v182;
  leadingAnchor14 = [v206 leadingAnchor];
  leadingAnchor15 = [v209 leadingAnchor];
  v171 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15 constant:10.0];
  v229[1] = v171;
  trailingAnchor14 = [v206 trailingAnchor];
  trailingAnchor15 = [v209 trailingAnchor];
  v162 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15 constant:-10.0];
  v229[2] = v162;
  heightAnchor4 = [v206 heightAnchor];
  v156 = [heightAnchor4 constraintGreaterThanOrEqualToConstant:v43];
  v229[3] = v156;
  topAnchor14 = [v205 topAnchor];
  bottomAnchor18 = [v206 bottomAnchor];
  v147 = [topAnchor14 constraintEqualToAnchor:bottomAnchor18 constant:20.0];
  v229[4] = v147;
  leadingAnchor16 = [v205 leadingAnchor];
  leadingAnchor17 = [v209 leadingAnchor];
  v138 = [leadingAnchor16 constraintEqualToAnchor:leadingAnchor17 constant:10.0];
  v229[5] = v138;
  trailingAnchor16 = [v205 trailingAnchor];
  trailingAnchor17 = [v209 trailingAnchor];
  v64 = [trailingAnchor16 constraintEqualToAnchor:trailingAnchor17 constant:-10.0];
  v229[6] = v64;
  heightAnchor5 = [v205 heightAnchor];
  v66 = [heightAnchor5 constraintGreaterThanOrEqualToConstant:v43];
  v229[7] = v66;
  bottomAnchor19 = [v205 bottomAnchor];
  bottomAnchor20 = [v209 bottomAnchor];
  v69 = [bottomAnchor19 constraintEqualToAnchor:bottomAnchor20 constant:-30.0];
  v229[8] = v69;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v229 count:9];
  [(TVRUINowPlayingInfoViewController *)val setStackedLayoutConstraints:v70];

  leadingAnchor18 = [v204 leadingAnchor];
  leadingAnchor19 = [v209 leadingAnchor];
  v71 = [leadingAnchor18 constraintEqualToAnchor:leadingAnchor19 constant:10.0];
  v228[0] = v71;
  topAnchor15 = [v208 topAnchor];
  topAnchor16 = [v204 topAnchor];
  v74 = [topAnchor15 constraintEqualToAnchor:topAnchor16];
  v228[1] = v74;
  leadingAnchor20 = [v208 leadingAnchor];
  trailingAnchor18 = [v204 trailingAnchor];
  v77 = [leadingAnchor20 constraintEqualToAnchor:trailingAnchor18 constant:10.0];
  v228[2] = v77;
  v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v228 count:3];
  [(TVRUINowPlayingInfoViewController *)val setSingleLineInfoLayoutConstraints:v78];

  leadingAnchor21 = [v204 leadingAnchor];
  leadingAnchor22 = [v209 leadingAnchor];
  v183 = [leadingAnchor21 constraintEqualToAnchor:leadingAnchor22 constant:10.0];
  v227[0] = v183;
  trailingAnchor19 = [v204 trailingAnchor];
  trailingAnchor20 = [v209 trailingAnchor];
  v79 = [trailingAnchor19 constraintEqualToAnchor:trailingAnchor20 constant:-10.0];
  v227[1] = v79;
  topAnchor17 = [v208 topAnchor];
  bottomAnchor21 = [v204 bottomAnchor];
  v82 = [topAnchor17 constraintEqualToAnchor:bottomAnchor21 constant:10.0];
  v227[2] = v82;
  leadingAnchor23 = [v208 leadingAnchor];
  leadingAnchor24 = [v204 leadingAnchor];
  v85 = [leadingAnchor23 constraintEqualToAnchor:leadingAnchor24];
  v227[3] = v85;
  v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v227 count:4];
  [(TVRUINowPlayingInfoViewController *)val setDoubleLineInfoLayoutConstraints:v86];

  [(TVRUINowPlayingInfoViewController *)val setTitleLabel:v203];
  [(TVRUINowPlayingInfoViewController *)val setDetailsTextView:v207];
  [(TVRUINowPlayingInfoViewController *)val setInfoLabel:v204];
  [(TVRUINowPlayingInfoViewController *)val setRatingsContainer:v208];
  [(TVRUINowPlayingInfoViewController *)val setRatingsLabel:v201];
  [(TVRUINowPlayingInfoViewController *)val setPlayFromStartButton:v206];
  [(TVRUINowPlayingInfoViewController *)val setDetailsButton:v205];
  [(TVRUINowPlayingInfoViewController *)val setScrollView:v202];
  [(TVRUINowPlayingInfoViewController *)val setDetailsTextHeightConstraint:v197];
  v226 = objc_opt_class();
  v87 = [MEMORY[0x277CBEA60] arrayWithObjects:&v226 count:1];
  v211[0] = MEMORY[0x277D85DD0];
  v211[1] = 3221225472;
  v211[2] = __55__TVRUINowPlayingInfoViewController_configureHierarchy__block_invoke_5;
  v211[3] = &unk_279D87BF8;
  objc_copyWeak(&v212, &location);
  v88 = [(TVRUINowPlayingInfoViewController *)val registerForTraitChanges:v87 withHandler:v211];

  [(TVRUINowPlayingInfoViewController *)val _updateContraintsForStackedLayout:[(TVRUINowPlayingInfoViewController *)val _currentTraitsSizeCategoryRequiresStackedLayout]];
  [(TVRUINowPlayingInfoViewController *)val _updateConstraintsForInfoLineUsingDoubleLineLayout:[(TVRUINowPlayingInfoViewController *)val _infoLineRequiresDoubleLayout]];
  objc_destroyWeak(&v212);

  objc_destroyWeak(&v222);
  objc_destroyWeak(&v224);
  objc_destroyWeak(&location);
}

id __55__TVRUINowPlayingInfoViewController_configureHierarchy__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] variant:1024];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D740A8]];

  return v2;
}

id __55__TVRUINowPlayingInfoViewController_configureHierarchy__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] variant:1024];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D740A8]];

  return v2;
}

void __55__TVRUINowPlayingInfoViewController_configureHierarchy__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained commandHandler];

    WeakRetained = v4;
    if (v2)
    {
      [v4 _playHaptic];
      v3 = [v4 commandHandler];
      v3[2](v3, 9, MEMORY[0x277CBEC10]);

      WeakRetained = v4;
    }
  }
}

void __55__TVRUINowPlayingInfoViewController_configureHierarchy__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained openProductPage];
    WeakRetained = v2;
  }
}

void __55__TVRUINowPlayingInfoViewController_configureHierarchy__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained view];
    [v2 setNeedsUpdateConstraints];

    WeakRetained = v3;
  }
}

- (void)updateViewConstraints
{
  _currentTraitsSizeCategoryRequiresStackedLayout = [(TVRUINowPlayingInfoViewController *)self _currentTraitsSizeCategoryRequiresStackedLayout];
  if (_currentTraitsSizeCategoryRequiresStackedLayout != [(TVRUINowPlayingInfoViewController *)self _isCurrentlyStackedLayout])
  {
    [(TVRUINowPlayingInfoViewController *)self _updateContraintsForStackedLayout:_currentTraitsSizeCategoryRequiresStackedLayout];
  }

  detailsTextView = [(TVRUINowPlayingInfoViewController *)self detailsTextView];
  [detailsTextView infoview_computedHeight];
  v6 = v5;

  if (v6 > 0.0)
  {
    if (_currentTraitsSizeCategoryRequiresStackedLayout && v6 > 250.0)
    {
      v6 = 250.0;
    }

    detailsTextHeightConstraint = [(TVRUINowPlayingInfoViewController *)self detailsTextHeightConstraint];
    [detailsTextHeightConstraint setConstant:v6];
  }

  _isCurrentlyDoubleInfoLineLayout = [(TVRUINowPlayingInfoViewController *)self _isCurrentlyDoubleInfoLineLayout];
  _infoLineRequiresDoubleLayout = [(TVRUINowPlayingInfoViewController *)self _infoLineRequiresDoubleLayout];
  if (_isCurrentlyDoubleInfoLineLayout != _infoLineRequiresDoubleLayout)
  {
    [(TVRUINowPlayingInfoViewController *)self _updateConstraintsForInfoLineUsingDoubleLineLayout:_infoLineRequiresDoubleLayout];
  }

  v10.receiver = self;
  v10.super_class = TVRUINowPlayingInfoViewController;
  [(TVRUINowPlayingInfoViewController *)&v10 updateViewConstraints];
}

- (void)_updateContraintsForStackedLayout:(BOOL)layout
{
  v4 = MEMORY[0x277CCAAD0];
  if (layout)
  {
    stackedLayoutConstraints = [(TVRUINowPlayingInfoViewController *)self stackedLayoutConstraints];
    [v4 activateConstraints:stackedLayoutConstraints];

    v6 = MEMORY[0x277CCAAD0];
    [(TVRUINowPlayingInfoViewController *)self standardLayoutConstraints];
  }

  else
  {
    standardLayoutConstraints = [(TVRUINowPlayingInfoViewController *)self standardLayoutConstraints];
    [v4 activateConstraints:standardLayoutConstraints];

    v6 = MEMORY[0x277CCAAD0];
    [(TVRUINowPlayingInfoViewController *)self stackedLayoutConstraints];
  }
  v8 = ;
  [v6 deactivateConstraints:?];
}

- (void)_updateConstraintsForInfoLineUsingDoubleLineLayout:(BOOL)layout
{
  v4 = MEMORY[0x277CCAAD0];
  if (layout)
  {
    doubleLineInfoLayoutConstraints = [(TVRUINowPlayingInfoViewController *)self doubleLineInfoLayoutConstraints];
    [v4 activateConstraints:doubleLineInfoLayoutConstraints];

    v6 = MEMORY[0x277CCAAD0];
    [(TVRUINowPlayingInfoViewController *)self singleLineInfoLayoutConstraints];
  }

  else
  {
    singleLineInfoLayoutConstraints = [(TVRUINowPlayingInfoViewController *)self singleLineInfoLayoutConstraints];
    [v4 activateConstraints:singleLineInfoLayoutConstraints];

    v6 = MEMORY[0x277CCAAD0];
    [(TVRUINowPlayingInfoViewController *)self doubleLineInfoLayoutConstraints];
  }
  v8 = ;
  [v6 deactivateConstraints:?];
}

- (BOOL)_isCurrentlyStackedLayout
{
  stackedLayoutConstraints = [(TVRUINowPlayingInfoViewController *)self stackedLayoutConstraints];
  firstObject = [stackedLayoutConstraints firstObject];

  LOBYTE(stackedLayoutConstraints) = [firstObject isActive];
  return stackedLayoutConstraints;
}

- (void)setNowPlayingInfo:(id)info
{
  objc_storeStrong(&self->_nowPlayingInfo, info);
  infoCopy = info;
  [(TVRUINowPlayingInfoViewController *)self updateFromNowPlayingInfo:infoCopy];
}

- (void)updateFromNowPlayingInfo:(id)info
{
  v64 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  metadata = [infoCopy metadata];
  v6 = metadata;
  if (metadata)
  {
    kind = [metadata kind];
    if (kind == 2)
    {
      [v6 tvrui_secondaryTitle];
    }

    else
    {
      [v6 title];
    }
    v8 = ;
    titleLabel = [(TVRUINowPlayingInfoViewController *)self titleLabel];
    [titleLabel setText:v8];

    extendedDescription = [v6 extendedDescription];
    detailsTextView = [(TVRUINowPlayingInfoViewController *)self detailsTextView];
    [detailsTextView setText:extendedDescription];

    tvrui_formattedInfo = [v6 tvrui_formattedInfo];
    infoLabel = [(TVRUINowPlayingInfoViewController *)self infoLabel];
    [infoLabel setText:tvrui_formattedInfo];

    ratingDescription = [v6 ratingDescription];
    v15 = [ratingDescription length];

    if (v15)
    {
      ratingsContainer = [(TVRUINowPlayingInfoViewController *)self ratingsContainer];
      [ratingsContainer setHidden:0];

      ratingDescription2 = [v6 ratingDescription];
      ratingsLabel = [(TVRUINowPlayingInfoViewController *)self ratingsLabel];
      [ratingsLabel setText:ratingDescription2];
    }

    else
    {
      ratingsLabel2 = [(TVRUINowPlayingInfoViewController *)self ratingsLabel];
      [ratingsLabel2 setText:0];

      ratingDescription2 = [(TVRUINowPlayingInfoViewController *)self ratingsContainer];
      [ratingDescription2 setHidden:1];
    }

    view = [(TVRUINowPlayingInfoViewController *)self view];
    [view setNeedsUpdateConstraints];

    if (kind == 4)
    {
      v21 = @"TVRUIDetailsSportingEvent";
    }

    else
    {
      v21 = @"TVRUIDetails";
    }

    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:v21 value:&stru_287E6AEF8 table:@"Localizable"];

    detailsButton = [(TVRUINowPlayingInfoViewController *)self detailsButton];
    [detailsButton setTitle:v23 forState:0];
  }

  tvrui_mediaIsStopped = [infoCopy tvrui_mediaIsStopped];
  v50 = v6;
  v51 = infoCopy;
  if (tvrui_mediaIsStopped)
  {
    styleProvider = [(TVRUINowPlayingInfoViewController *)self styleProvider];
    inactiveMediaTextColor = [styleProvider inactiveMediaTextColor];
  }

  else
  {
    inactiveMediaTextColor = [MEMORY[0x277D75348] whiteColor];
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  [(TVRUINowPlayingInfoViewController *)self titleLabel];
  v29 = v28 = self;
  v62[0] = v29;
  detailsTextView2 = [(TVRUINowPlayingInfoViewController *)v28 detailsTextView];
  v62[1] = detailsTextView2;
  ratingsLabel3 = [(TVRUINowPlayingInfoViewController *)v28 ratingsLabel];
  v62[2] = ratingsLabel3;
  playFromStartButton = [(TVRUINowPlayingInfoViewController *)v28 playFromStartButton];
  v62[3] = playFromStartButton;
  v49 = v28;
  detailsButton2 = [(TVRUINowPlayingInfoViewController *)v28 detailsButton];
  v62[4] = detailsButton2;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:5];

  v35 = [v34 countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v57;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v57 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v56 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v39 setTextColor:inactiveMediaTextColor];
        }

        else
        {
          [v39 setTintColor:inactiveMediaTextColor];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v36);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  infoLabel2 = [(TVRUINowPlayingInfoViewController *)v49 infoLabel];
  v60[0] = infoLabel2;
  ratingsLabel4 = [(TVRUINowPlayingInfoViewController *)v49 ratingsLabel];
  v60[1] = ratingsLabel4;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];

  v43 = [v42 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v53;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v53 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v52 + 1) + 8 * j);
        if (tvrui_mediaIsStopped)
        {
          [*(*(&v52 + 1) + 8 * j) setTextColor:inactiveMediaTextColor];
        }

        else
        {
          lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
          [v47 setTextColor:lightGrayColor];
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v44);
  }
}

- (BOOL)_currentTraitsSizeCategoryRequiresStackedLayout
{
  traitCollection = [(TVRUINowPlayingInfoViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  LOBYTE(traitCollection) = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76808]) == NSOrderedDescending;
  return traitCollection;
}

- (void)_playHaptic
{
  eventHaptic = [(TVRUINowPlayingInfoViewController *)self eventHaptic];
  [eventHaptic playSelectionEventHaptic];
}

- (BOOL)_isCurrentlyDoubleInfoLineLayout
{
  doubleLineInfoLayoutConstraints = [(TVRUINowPlayingInfoViewController *)self doubleLineInfoLayoutConstraints];
  firstObject = [doubleLineInfoLayoutConstraints firstObject];

  LOBYTE(doubleLineInfoLayoutConstraints) = [firstObject isActive];
  return doubleLineInfoLayoutConstraints;
}

- (BOOL)_infoLineRequiresDoubleLayout
{
  detailsTextView = [(TVRUINowPlayingInfoViewController *)self detailsTextView];
  [detailsTextView bounds];
  v5 = v4;
  result = v5 != 0.0 && (-[TVRUINowPlayingInfoViewController infoLabel](self, "infoLabel"), v6 = ;
  return result;
}

- (void)openProductPage
{
  nowPlayingInfo = [(TVRUINowPlayingInfoViewController *)self nowPlayingInfo];
  metadata = [nowPlayingInfo metadata];

  productPageURL = [metadata productPageURL];
  if (productPageURL)
  {
    actionProvider = [(TVRUINowPlayingInfoViewController *)self actionProvider];
    [actionProvider openURL:productPageURL];
  }
}

- (void)_animateButtonToHighlightState:(id)state
{
  stateCopy = state;
  [(TVRUINowPlayingInfoViewController *)self setUserInteractionInProgress:1];
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__TVRUINowPlayingInfoViewController__animateButtonToHighlightState___block_invoke;
  v7[3] = &unk_279D87C20;
  v8 = stateCopy;
  v6 = stateCopy;
  [v5 animateWithDuration:v7 animations:0.2];
}

uint64_t __68__TVRUINowPlayingInfoViewController__animateButtonToHighlightState___block_invoke(uint64_t a1)
{
  memset(&v4, 0, sizeof(v4));
  CGAffineTransformMakeScale(&v4, 0.8, 0.8);
  v3 = v4;
  return [*(a1 + 32) setTransform:&v3];
}

- (void)_animateButtonFromHighlightState:(id)state
{
  stateCopy = state;
  [(TVRUINowPlayingInfoViewController *)self setUserInteractionInProgress:0];
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__TVRUINowPlayingInfoViewController__animateButtonFromHighlightState___block_invoke;
  v7[3] = &unk_279D87C20;
  v8 = stateCopy;
  v6 = stateCopy;
  [v5 animateWithDuration:v7 animations:0.2];
}

uint64_t __70__TVRUINowPlayingInfoViewController__animateButtonFromHighlightState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

- (TVRUIActionProviding)actionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_actionProvider);

  return WeakRetained;
}

@end