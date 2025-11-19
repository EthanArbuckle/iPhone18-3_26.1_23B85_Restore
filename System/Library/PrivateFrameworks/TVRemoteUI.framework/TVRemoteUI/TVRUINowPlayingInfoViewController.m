@interface TVRUINowPlayingInfoViewController
- (BOOL)_currentTraitsSizeCategoryRequiresStackedLayout;
- (BOOL)_infoLineRequiresDoubleLayout;
- (BOOL)_isCurrentlyDoubleInfoLineLayout;
- (BOOL)_isCurrentlyStackedLayout;
- (TVRUIActionProviding)actionProvider;
- (TVRUINowPlayingInfoViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_animateButtonFromHighlightState:(id)a3;
- (void)_animateButtonToHighlightState:(id)a3;
- (void)_playHaptic;
- (void)_updateConstraintsForInfoLineUsingDoubleLineLayout:(BOOL)a3;
- (void)_updateContraintsForStackedLayout:(BOOL)a3;
- (void)configureHierarchy;
- (void)openProductPage;
- (void)setNowPlayingInfo:(id)a3;
- (void)updateFromNowPlayingInfo:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation TVRUINowPlayingInfoViewController

- (TVRUINowPlayingInfoViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = TVRUINowPlayingInfoViewController;
  v4 = [(TVRUINowPlayingInfoViewController *)&v8 initWithNibName:a3 bundle:a4];
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
  v200 = [(TVRUINowPlayingInfoViewController *)self view];
  v4 = objc_alloc_init(MEMORY[0x277D759D8]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v202 = v4;
  [v200 addSubview:v4];
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
    v9 = [v199 background];
    [v9 setCornerRadius:8.0];

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
    v14 = [v198 background];
    [v14 setCornerRadius:8.0];

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
        v22 = [MEMORY[0x277D75348] whiteColor];
        [v21 setTintColor:v22];

        [v21 addTarget:val action:sel__animateButtonToHighlightState_ forControlEvents:1];
        [v21 addTarget:val action:sel__animateButtonFromHighlightState_ forControlEvents:448];
      }

      v18 = [v17 countByEnumeratingWithState:&v217 objects:v235 count:16];
    }

    while (v18);
  }

  v23 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76988] variant:1024];
  [v203 setFont:v23];

  v24 = [MEMORY[0x277D75348] whiteColor];
  [v203 setTextColor:v24];

  [v207 setEditable:0];
  v25 = [v207 textContainer];
  [v25 setLineFragmentPadding:0.0];

  v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v207 setFont:v26];

  v27 = [MEMORY[0x277D75348] whiteColor];
  [v207 setTextColor:v27];

  [v207 setAdjustsFontForContentSizeCategory:1];
  v28 = [MEMORY[0x277D75348] clearColor];
  [v207 setBackgroundColor:v28];

  [v207 textContainerInset];
  [v207 setTextContainerInset:0.0];
  v29 = [MEMORY[0x277D75348] lightGrayColor];
  v196 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] variant:1024];
  [v204 setFont:v196];
  [v204 setTextColor:v29];
  [v204 setNumberOfLines:0];
  [v201 setFont:v196];
  [v201 setTextColor:v29];
  [v201 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = v29;
  v31 = [v29 CGColor];
  v32 = [v208 layer];
  [v32 setBorderColor:v31];

  v33 = [v208 layer];
  [v33 setBorderWidth:1.0];

  v34 = [v208 layer];
  [v34 setCornerRadius:4.0];

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

  v41 = [(TVRUINowPlayingInfoViewController *)val styleProvider];
  [v41 solariumDefaultButtonHeight];
  v43 = v42;

  v44 = [v207 heightAnchor];
  v197 = [v44 constraintEqualToConstant:40.0];

  LODWORD(v45) = 1132068864;
  [v197 setPriority:v45];
  v89 = MEMORY[0x277CCAAD0];
  v46 = [v200 topAnchor];
  v189 = [v202 topAnchor];
  v184 = [v46 constraintEqualToAnchor:v189];
  v231[0] = v184;
  v180 = [v200 bottomAnchor];
  v176 = [v202 bottomAnchor];
  v172 = [v180 constraintEqualToAnchor:v176];
  v231[1] = v172;
  v169 = [v200 leadingAnchor];
  v166 = [v202 leadingAnchor];
  v163 = [v169 constraintEqualToAnchor:v166];
  v231[2] = v163;
  v160 = [v200 trailingAnchor];
  v157 = [v202 trailingAnchor];
  v154 = [v160 constraintEqualToAnchor:v157];
  v231[3] = v154;
  v151 = [v202 topAnchor];
  v148 = [v209 topAnchor];
  v145 = [v151 constraintEqualToAnchor:v148];
  v231[4] = v145;
  v142 = [v202 bottomAnchor];
  v139 = [v209 bottomAnchor];
  v136 = [v142 constraintEqualToAnchor:v139];
  v231[5] = v136;
  v133 = [v202 leadingAnchor];
  v131 = [v209 leadingAnchor];
  v129 = [v133 constraintEqualToAnchor:v131];
  v231[6] = v129;
  v127 = [v202 trailingAnchor];
  v125 = [v209 trailingAnchor];
  v123 = [v127 constraintEqualToAnchor:v125];
  v231[7] = v123;
  v121 = [v209 widthAnchor];
  v120 = [v200 widthAnchor];
  v119 = [v121 constraintEqualToAnchor:v120 constant:-40.0];
  v231[8] = v119;
  v118 = [v209 centerXAnchor];
  v117 = [v200 centerXAnchor];
  v116 = [v118 constraintEqualToAnchor:v117];
  v231[9] = v116;
  v115 = [v203 topAnchor];
  v114 = [v209 topAnchor];
  v113 = [v115 constraintEqualToAnchor:v114 constant:10.0];
  v231[10] = v113;
  v112 = [v203 leadingAnchor];
  v111 = [v209 leadingAnchor];
  v110 = [v112 constraintEqualToAnchor:v111 constant:10.0];
  v231[11] = v110;
  v109 = [v203 trailingAnchor];
  v108 = [v209 trailingAnchor];
  v107 = [v109 constraintEqualToAnchor:v108 constant:-10.0];
  v231[12] = v107;
  v106 = [v207 topAnchor];
  v105 = [v203 bottomAnchor];
  v104 = [v106 constraintEqualToAnchor:v105 constant:10.0];
  v231[13] = v104;
  v103 = [v207 leadingAnchor];
  v102 = [v203 leadingAnchor];
  v101 = [v103 constraintEqualToAnchor:v102];
  v231[14] = v101;
  v100 = [v207 trailingAnchor];
  v99 = [v203 trailingAnchor];
  v98 = [v100 constraintEqualToAnchor:v99];
  v231[15] = v98;
  v231[16] = v197;
  v97 = [v204 topAnchor];
  v96 = [v207 bottomAnchor];
  v95 = [v97 constraintEqualToAnchor:v96 constant:10.0];
  v231[17] = v95;
  v94 = [v201 leadingAnchor];
  v93 = [v208 leadingAnchor];
  v92 = [v94 constraintEqualToAnchor:v93 constant:3.0];
  v231[18] = v92;
  v91 = [v201 trailingAnchor];
  v90 = [v208 trailingAnchor];
  v47 = [v91 constraintEqualToAnchor:v90 constant:-3.0];
  v231[19] = v47;
  v48 = [v201 topAnchor];
  v49 = [v208 topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];
  v231[20] = v50;
  v51 = [v201 bottomAnchor];
  v52 = [v208 bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];
  v231[21] = v53;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v231 count:22];
  [v89 activateConstraints:v54];

  v190 = [v206 topAnchor];
  v185 = [v208 bottomAnchor];
  v181 = [v190 constraintEqualToAnchor:v185 constant:20.0];
  v230[0] = v181;
  v177 = [v206 leadingAnchor];
  v173 = [v209 leadingAnchor];
  v170 = [v177 constraintEqualToAnchor:v173 constant:10.0];
  v230[1] = v170;
  v167 = [v206 trailingAnchor];
  v164 = [v205 leadingAnchor];
  v161 = [v167 constraintEqualToAnchor:v164 constant:-10.0];
  v230[2] = v161;
  v158 = [v206 heightAnchor];
  v155 = [v158 constraintGreaterThanOrEqualToConstant:v43];
  v230[3] = v155;
  v152 = [v206 bottomAnchor];
  v149 = [v209 bottomAnchor];
  v146 = [v152 constraintEqualToAnchor:v149 constant:-30.0];
  v230[4] = v146;
  v143 = [v205 topAnchor];
  v140 = [v208 bottomAnchor];
  v137 = [v143 constraintEqualToAnchor:v140 constant:20.0];
  v230[5] = v137;
  v134 = [v205 trailingAnchor];
  v132 = [v209 trailingAnchor];
  v130 = [v134 constraintEqualToAnchor:v132 constant:-10.0];
  v230[6] = v130;
  v128 = [v205 heightAnchor];
  v126 = [v128 constraintGreaterThanOrEqualToConstant:v43];
  v230[7] = v126;
  v124 = [v205 widthAnchor];
  v122 = [v206 widthAnchor];
  v55 = [v124 constraintEqualToAnchor:v122];
  v230[8] = v55;
  v56 = [v205 bottomAnchor];
  v57 = [v209 bottomAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:-30.0];
  v230[9] = v58;
  v59 = [v209 bottomAnchor];
  v60 = [v200 bottomAnchor];
  v61 = [v59 constraintLessThanOrEqualToAnchor:v60];
  v230[10] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v230 count:11];
  [(TVRUINowPlayingInfoViewController *)val setStandardLayoutConstraints:v62];

  v191 = [v206 topAnchor];
  v186 = [v208 bottomAnchor];
  v182 = [v191 constraintEqualToAnchor:v186 constant:20.0];
  v229[0] = v182;
  v178 = [v206 leadingAnchor];
  v174 = [v209 leadingAnchor];
  v171 = [v178 constraintEqualToAnchor:v174 constant:10.0];
  v229[1] = v171;
  v168 = [v206 trailingAnchor];
  v165 = [v209 trailingAnchor];
  v162 = [v168 constraintEqualToAnchor:v165 constant:-10.0];
  v229[2] = v162;
  v159 = [v206 heightAnchor];
  v156 = [v159 constraintGreaterThanOrEqualToConstant:v43];
  v229[3] = v156;
  v153 = [v205 topAnchor];
  v150 = [v206 bottomAnchor];
  v147 = [v153 constraintEqualToAnchor:v150 constant:20.0];
  v229[4] = v147;
  v144 = [v205 leadingAnchor];
  v141 = [v209 leadingAnchor];
  v138 = [v144 constraintEqualToAnchor:v141 constant:10.0];
  v229[5] = v138;
  v135 = [v205 trailingAnchor];
  v63 = [v209 trailingAnchor];
  v64 = [v135 constraintEqualToAnchor:v63 constant:-10.0];
  v229[6] = v64;
  v65 = [v205 heightAnchor];
  v66 = [v65 constraintGreaterThanOrEqualToConstant:v43];
  v229[7] = v66;
  v67 = [v205 bottomAnchor];
  v68 = [v209 bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:-30.0];
  v229[8] = v69;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v229 count:9];
  [(TVRUINowPlayingInfoViewController *)val setStackedLayoutConstraints:v70];

  v192 = [v204 leadingAnchor];
  v187 = [v209 leadingAnchor];
  v71 = [v192 constraintEqualToAnchor:v187 constant:10.0];
  v228[0] = v71;
  v72 = [v208 topAnchor];
  v73 = [v204 topAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];
  v228[1] = v74;
  v75 = [v208 leadingAnchor];
  v76 = [v204 trailingAnchor];
  v77 = [v75 constraintEqualToAnchor:v76 constant:10.0];
  v228[2] = v77;
  v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v228 count:3];
  [(TVRUINowPlayingInfoViewController *)val setSingleLineInfoLayoutConstraints:v78];

  v193 = [v204 leadingAnchor];
  v188 = [v209 leadingAnchor];
  v183 = [v193 constraintEqualToAnchor:v188 constant:10.0];
  v227[0] = v183;
  v179 = [v204 trailingAnchor];
  v175 = [v209 trailingAnchor];
  v79 = [v179 constraintEqualToAnchor:v175 constant:-10.0];
  v227[1] = v79;
  v80 = [v208 topAnchor];
  v81 = [v204 bottomAnchor];
  v82 = [v80 constraintEqualToAnchor:v81 constant:10.0];
  v227[2] = v82;
  v83 = [v208 leadingAnchor];
  v84 = [v204 leadingAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];
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
  v3 = [(TVRUINowPlayingInfoViewController *)self _currentTraitsSizeCategoryRequiresStackedLayout];
  if (v3 != [(TVRUINowPlayingInfoViewController *)self _isCurrentlyStackedLayout])
  {
    [(TVRUINowPlayingInfoViewController *)self _updateContraintsForStackedLayout:v3];
  }

  v4 = [(TVRUINowPlayingInfoViewController *)self detailsTextView];
  [v4 infoview_computedHeight];
  v6 = v5;

  if (v6 > 0.0)
  {
    if (v3 && v6 > 250.0)
    {
      v6 = 250.0;
    }

    v7 = [(TVRUINowPlayingInfoViewController *)self detailsTextHeightConstraint];
    [v7 setConstant:v6];
  }

  v8 = [(TVRUINowPlayingInfoViewController *)self _isCurrentlyDoubleInfoLineLayout];
  v9 = [(TVRUINowPlayingInfoViewController *)self _infoLineRequiresDoubleLayout];
  if (v8 != v9)
  {
    [(TVRUINowPlayingInfoViewController *)self _updateConstraintsForInfoLineUsingDoubleLineLayout:v9];
  }

  v10.receiver = self;
  v10.super_class = TVRUINowPlayingInfoViewController;
  [(TVRUINowPlayingInfoViewController *)&v10 updateViewConstraints];
}

- (void)_updateContraintsForStackedLayout:(BOOL)a3
{
  v4 = MEMORY[0x277CCAAD0];
  if (a3)
  {
    v5 = [(TVRUINowPlayingInfoViewController *)self stackedLayoutConstraints];
    [v4 activateConstraints:v5];

    v6 = MEMORY[0x277CCAAD0];
    [(TVRUINowPlayingInfoViewController *)self standardLayoutConstraints];
  }

  else
  {
    v7 = [(TVRUINowPlayingInfoViewController *)self standardLayoutConstraints];
    [v4 activateConstraints:v7];

    v6 = MEMORY[0x277CCAAD0];
    [(TVRUINowPlayingInfoViewController *)self stackedLayoutConstraints];
  }
  v8 = ;
  [v6 deactivateConstraints:?];
}

- (void)_updateConstraintsForInfoLineUsingDoubleLineLayout:(BOOL)a3
{
  v4 = MEMORY[0x277CCAAD0];
  if (a3)
  {
    v5 = [(TVRUINowPlayingInfoViewController *)self doubleLineInfoLayoutConstraints];
    [v4 activateConstraints:v5];

    v6 = MEMORY[0x277CCAAD0];
    [(TVRUINowPlayingInfoViewController *)self singleLineInfoLayoutConstraints];
  }

  else
  {
    v7 = [(TVRUINowPlayingInfoViewController *)self singleLineInfoLayoutConstraints];
    [v4 activateConstraints:v7];

    v6 = MEMORY[0x277CCAAD0];
    [(TVRUINowPlayingInfoViewController *)self doubleLineInfoLayoutConstraints];
  }
  v8 = ;
  [v6 deactivateConstraints:?];
}

- (BOOL)_isCurrentlyStackedLayout
{
  v2 = [(TVRUINowPlayingInfoViewController *)self stackedLayoutConstraints];
  v3 = [v2 firstObject];

  LOBYTE(v2) = [v3 isActive];
  return v2;
}

- (void)setNowPlayingInfo:(id)a3
{
  objc_storeStrong(&self->_nowPlayingInfo, a3);
  v5 = a3;
  [(TVRUINowPlayingInfoViewController *)self updateFromNowPlayingInfo:v5];
}

- (void)updateFromNowPlayingInfo:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 metadata];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 kind];
    if (v7 == 2)
    {
      [v6 tvrui_secondaryTitle];
    }

    else
    {
      [v6 title];
    }
    v8 = ;
    v9 = [(TVRUINowPlayingInfoViewController *)self titleLabel];
    [v9 setText:v8];

    v10 = [v6 extendedDescription];
    v11 = [(TVRUINowPlayingInfoViewController *)self detailsTextView];
    [v11 setText:v10];

    v12 = [v6 tvrui_formattedInfo];
    v13 = [(TVRUINowPlayingInfoViewController *)self infoLabel];
    [v13 setText:v12];

    v14 = [v6 ratingDescription];
    v15 = [v14 length];

    if (v15)
    {
      v16 = [(TVRUINowPlayingInfoViewController *)self ratingsContainer];
      [v16 setHidden:0];

      v17 = [v6 ratingDescription];
      v18 = [(TVRUINowPlayingInfoViewController *)self ratingsLabel];
      [v18 setText:v17];
    }

    else
    {
      v19 = [(TVRUINowPlayingInfoViewController *)self ratingsLabel];
      [v19 setText:0];

      v17 = [(TVRUINowPlayingInfoViewController *)self ratingsContainer];
      [v17 setHidden:1];
    }

    v20 = [(TVRUINowPlayingInfoViewController *)self view];
    [v20 setNeedsUpdateConstraints];

    if (v7 == 4)
    {
      v21 = @"TVRUIDetailsSportingEvent";
    }

    else
    {
      v21 = @"TVRUIDetails";
    }

    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:v21 value:&stru_287E6AEF8 table:@"Localizable"];

    v24 = [(TVRUINowPlayingInfoViewController *)self detailsButton];
    [v24 setTitle:v23 forState:0];
  }

  v25 = [v4 tvrui_mediaIsStopped];
  v50 = v6;
  v51 = v4;
  if (v25)
  {
    v26 = [(TVRUINowPlayingInfoViewController *)self styleProvider];
    v27 = [v26 inactiveMediaTextColor];
  }

  else
  {
    v27 = [MEMORY[0x277D75348] whiteColor];
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  [(TVRUINowPlayingInfoViewController *)self titleLabel];
  v29 = v28 = self;
  v62[0] = v29;
  v30 = [(TVRUINowPlayingInfoViewController *)v28 detailsTextView];
  v62[1] = v30;
  v31 = [(TVRUINowPlayingInfoViewController *)v28 ratingsLabel];
  v62[2] = v31;
  v32 = [(TVRUINowPlayingInfoViewController *)v28 playFromStartButton];
  v62[3] = v32;
  v49 = v28;
  v33 = [(TVRUINowPlayingInfoViewController *)v28 detailsButton];
  v62[4] = v33;
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
          [v39 setTextColor:v27];
        }

        else
        {
          [v39 setTintColor:v27];
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
  v40 = [(TVRUINowPlayingInfoViewController *)v49 infoLabel];
  v60[0] = v40;
  v41 = [(TVRUINowPlayingInfoViewController *)v49 ratingsLabel];
  v60[1] = v41;
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
        if (v25)
        {
          [*(*(&v52 + 1) + 8 * j) setTextColor:v27];
        }

        else
        {
          v48 = [MEMORY[0x277D75348] lightGrayColor];
          [v47 setTextColor:v48];
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v44);
  }
}

- (BOOL)_currentTraitsSizeCategoryRequiresStackedLayout
{
  v2 = [(TVRUINowPlayingInfoViewController *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x277D76808]) == NSOrderedDescending;
  return v2;
}

- (void)_playHaptic
{
  v2 = [(TVRUINowPlayingInfoViewController *)self eventHaptic];
  [v2 playSelectionEventHaptic];
}

- (BOOL)_isCurrentlyDoubleInfoLineLayout
{
  v2 = [(TVRUINowPlayingInfoViewController *)self doubleLineInfoLayoutConstraints];
  v3 = [v2 firstObject];

  LOBYTE(v2) = [v3 isActive];
  return v2;
}

- (BOOL)_infoLineRequiresDoubleLayout
{
  v3 = [(TVRUINowPlayingInfoViewController *)self detailsTextView];
  [v3 bounds];
  v5 = v4;
  result = v5 != 0.0 && (-[TVRUINowPlayingInfoViewController infoLabel](self, "infoLabel"), v6 = ;
  return result;
}

- (void)openProductPage
{
  v3 = [(TVRUINowPlayingInfoViewController *)self nowPlayingInfo];
  v6 = [v3 metadata];

  v4 = [v6 productPageURL];
  if (v4)
  {
    v5 = [(TVRUINowPlayingInfoViewController *)self actionProvider];
    [v5 openURL:v4];
  }
}

- (void)_animateButtonToHighlightState:(id)a3
{
  v4 = a3;
  [(TVRUINowPlayingInfoViewController *)self setUserInteractionInProgress:1];
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__TVRUINowPlayingInfoViewController__animateButtonToHighlightState___block_invoke;
  v7[3] = &unk_279D87C20;
  v8 = v4;
  v6 = v4;
  [v5 animateWithDuration:v7 animations:0.2];
}

uint64_t __68__TVRUINowPlayingInfoViewController__animateButtonToHighlightState___block_invoke(uint64_t a1)
{
  memset(&v4, 0, sizeof(v4));
  CGAffineTransformMakeScale(&v4, 0.8, 0.8);
  v3 = v4;
  return [*(a1 + 32) setTransform:&v3];
}

- (void)_animateButtonFromHighlightState:(id)a3
{
  v4 = a3;
  [(TVRUINowPlayingInfoViewController *)self setUserInteractionInProgress:0];
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__TVRUINowPlayingInfoViewController__animateButtonFromHighlightState___block_invoke;
  v7[3] = &unk_279D87C20;
  v8 = v4;
  v6 = v4;
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