@interface HKRPOnboardingSettingsViewController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (HKRPOnboardingDelegate)onboardingDelegate;
- (HKRPOnboardingSettingsViewController)initWithStyle:(int64_t)a3 settings:(id)a4 onboardingManager:(id)a5 onboardingDelegate:(id)a6;
- (UIEdgeInsets)initialInsets;
- (id)_headerTitleFont;
- (id)_localizedStringForKey:(id)a3;
- (id)backgroundColor;
- (id)labelColor;
- (id)pillBackgroundColor;
- (id)pillBackgroundSelectedColor;
- (id)pillTitleColor;
- (id)pillTitleSelectedColor;
- (void)_askUserToInstallWatchAppWithCompletion:(id)a3;
- (void)_installWatchAppIfNeededWithCompletion:(id)a3;
- (void)_onboardWithCompletion:(id)a3;
- (void)_presentOnboardingError:(id)a3 completion:(id)a4;
- (void)createUI;
- (void)layoutUI;
- (void)registerForTraitChanges;
- (void)scrollViewDidScroll:(id)a3;
- (void)setInsetsIfNeeded;
- (void)setupLaterButtonPressed:(id)a3;
- (void)suggestedChoiceButtonPressed:(id)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation HKRPOnboardingSettingsViewController

- (HKRPOnboardingSettingsViewController)initWithStyle:(int64_t)a3 settings:(id)a4 onboardingManager:(id)a5 onboardingDelegate:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HKRPOnboardingSettingsViewController;
  v14 = [(HKRPOnboardingSettingsViewController *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_style = a3;
    objc_storeStrong(&v14->_settings, a4);
    objc_storeStrong(&v15->_onboardingManager, a5);
    objc_storeWeak(&v15->_onboardingDelegate, v13);
    v15->_didLayoutSubviews = 0;
  }

  return v15;
}

- (void)registerForTraitChanges
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [(HKRPOnboardingSettingsViewController *)self registerForTraitChanges:v3 withHandler:&__block_literal_global];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = HKRPOnboardingSettingsViewController;
  [(HKRPOnboardingSettingsViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(HKRPOnboardingSettingsViewController *)self layoutUI];
}

- (void)setInsetsIfNeeded
{
  if (![(HKRPOnboardingSettingsViewController *)self isInitialInsetsSet]|| [(HKRPOnboardingSettingsViewController *)self style]!= 1)
  {
    [(HKRPOnboardingSettingsViewController *)self setIsInitialInsetsSet:1];
    v3 = [(HKRPOnboardingSettingsViewController *)self view];
    [v3 safeAreaInsets];
    [(HKRPOnboardingSettingsViewController *)self setInitialInsets:?];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HKRPOnboardingSettingsViewController;
  [(HKRPOnboardingSettingsViewController *)&v3 viewDidLoad];
  [(HKRPOnboardingSettingsViewController *)self registerForTraitChanges];
}

- (void)createUI
{
  v103 = *MEMORY[0x277D85DE8];
  [(HKRPOnboardingSettingsViewController *)self setInsetsIfNeeded];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v3 = [(HKRPOnboardingSettingsViewController *)self view];
  v4 = [v3 subviews];

  v5 = [v4 countByEnumeratingWithState:&v98 objects:v102 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v99;
    do
    {
      v8 = 0;
      do
      {
        if (*v99 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v98 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v98 objects:v102 count:16];
    }

    while (v6);
  }

  v9 = [(HKRPOnboardingSettingsViewController *)self backgroundColor];
  v10 = [(HKRPOnboardingSettingsViewController *)self view];
  [v10 setBackgroundColor:v9];

  v11 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(HKRPOnboardingSettingsViewController *)self setScrollView:v11];

  v12 = [(HKRPOnboardingSettingsViewController *)self scrollView];
  [v12 setShowsVerticalScrollIndicator:0];

  v13 = [(HKRPOnboardingSettingsViewController *)self scrollView];
  [v13 setAlwaysBounceVertical:1];

  v14 = [(HKRPOnboardingSettingsViewController *)self scrollView];
  [v14 setDelegate:self];

  v15 = [(HKRPOnboardingSettingsViewController *)self view];
  v16 = [(HKRPOnboardingSettingsViewController *)self scrollView];
  [v15 addSubview:v16];

  v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(HKRPOnboardingSettingsViewController *)self setContentView:v17];

  v18 = [(HKRPOnboardingSettingsViewController *)self scrollView];
  v19 = [(HKRPOnboardingSettingsViewController *)self contentView];
  [v18 addSubview:v19];

  v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(HKRPOnboardingSettingsViewController *)self setTitleLabel:v20];

  v21 = [(HKRPOnboardingSettingsViewController *)self _localizedStringForKey:@"RESPIRATORY_HEALTH_TITLE"];
  v22 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
  [v22 setText:v21];

  v23 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
  [v23 setTextAlignment:1];

  v24 = [(HKRPOnboardingSettingsViewController *)self _headerTitleFont];
  v25 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
  [v25 setFont:v24];

  v26 = [(HKRPOnboardingSettingsViewController *)self labelColor];
  v27 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
  [v27 setTextColor:v26];

  v28 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
  [v28 setNumberOfLines:0];

  v29 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
  [v29 setAdjustsFontForContentSizeCategory:1];

  v30 = [(HKRPOnboardingSettingsViewController *)self contentView];
  v31 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
  [v30 addSubview:v31];

  v32 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(HKRPOnboardingSettingsViewController *)self setDescriptionLabel:v32];

  v33 = [(HKRPOnboardingSettingsViewController *)self settings];
  v34 = [v33 recordingInactiveDescription];
  v35 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
  [v35 setText:v34];

  v36 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
  [v36 setTextAlignment:1];

  v37 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  v38 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
  [v38 setFont:v37];

  v39 = [(HKRPOnboardingSettingsViewController *)self labelColor];
  v40 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
  [v40 setTextColor:v39];

  v41 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
  [v41 setNumberOfLines:0];

  v42 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
  [v42 setAdjustsFontForContentSizeCategory:1];

  v43 = [(HKRPOnboardingSettingsViewController *)self contentView];
  v44 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
  [v43 addSubview:v44];

  v45 = objc_alloc_init(RespiratoryHealthHeroView);
  [(HKRPOnboardingSettingsViewController *)self setWatchView:v45];

  v46 = [(HKRPOnboardingSettingsViewController *)self view];
  [v46 frame];
  v48 = v47;
  v49 = [(HKRPOnboardingSettingsViewController *)self view];
  [v49 frame];
  [(HKRPOnboardingSettingsViewController *)self _calculateHeroHorizontalMarginForViewFrame:?];
  v51 = v48 + v50 * -2.0;
  v52 = [(HKRPOnboardingSettingsViewController *)self watchView];
  [v52 setPreferredWidth:v51];

  v53 = [(HKRPOnboardingSettingsViewController *)self contentView];
  v54 = [(HKRPOnboardingSettingsViewController *)self watchView];
  [v53 addSubview:v54];

  v55 = [MEMORY[0x277D37650] linkButton];
  [(HKRPOnboardingSettingsViewController *)self setSetupLaterButton:v55];

  v56 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
  [v56 setTranslatesAutoresizingMaskIntoConstraints:1];

  v57 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
  v58 = [(HKRPOnboardingSettingsViewController *)self _localizedStringForKey:@"RESPIRATORY_HEALTH_SET_UP_LATER"];
  [v57 setTitle:v58 forState:0];

  v59 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
  [v59 addTarget:self action:sel_setupLaterButtonPressed_ forControlEvents:64];

  v60 = [(HKRPOnboardingSettingsViewController *)self contentView];
  v61 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
  [v60 addSubview:v61];

  v62 = [MEMORY[0x277D37618] boldButton];
  [(HKRPOnboardingSettingsViewController *)self setSuggestedChoiceButton:v62];

  v63 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
  [v63 setTranslatesAutoresizingMaskIntoConstraints:1];

  v64 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
  v65 = [(HKRPOnboardingSettingsViewController *)self _localizedStringForKey:@"RESPIRATORY_HEALTH_ENABLE"];
  [v64 setTitle:v65 forState:0];

  v66 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
  [v66 addTarget:self action:sel_suggestedChoiceButtonPressed_ forControlEvents:64];

  v67 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
  v68 = [(HKRPOnboardingSettingsViewController *)self pillBackgroundColor];
  [v67 setTintColor:v68];

  v69 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
  v70 = [(HKRPOnboardingSettingsViewController *)self pillBackgroundSelectedColor];
  v71 = BPSPillButtonBackground();
  [v69 setBackgroundImage:v71 forState:4];

  v72 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
  v73 = [(HKRPOnboardingSettingsViewController *)self pillTitleColor];
  [v72 setTitleColor:v73 forState:2];

  v74 = [(HKRPOnboardingSettingsViewController *)self contentView];
  v75 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
  [v74 addSubview:v75];

  v76 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(HKRPOnboardingSettingsViewController *)self setLocationLabel:v76];

  v77 = [(HKRPOnboardingSettingsViewController *)self _localizedStringForKey:@"RESPIRATORY_HEALTH_BUTTON_CAPTION"];
  v78 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
  [v78 setText:v77];

  v79 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
  [v79 setTextAlignment:1];

  v80 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
  [v80 setNumberOfLines:0];

  v81 = [MEMORY[0x277D75348] systemGrayColor];
  v82 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
  [v82 setTextColor:v81];

  v83 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  v84 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
  [v84 setFont:v83];

  v85 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
  [v85 setAdjustsFontForContentSizeCategory:1];

  v86 = [(HKRPOnboardingSettingsViewController *)self contentView];
  v87 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
  [v86 addSubview:v87];

  v88 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(HKRPOnboardingSettingsViewController *)self setFooterView:v88];

  v89 = [MEMORY[0x277D75210] effectWithStyle:5];
  v90 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v89];
  [(HKRPOnboardingSettingsViewController *)self setBlurView:v90];

  v91 = [(HKRPOnboardingSettingsViewController *)self blurView];
  [v91 setFrame:{0.0, 0.0, 1.0, 1.0}];

  v92 = [(HKRPOnboardingSettingsViewController *)self footerView];
  v93 = [(HKRPOnboardingSettingsViewController *)self blurView];
  [v92 addSubview:v93];

  v94 = [(HKRPOnboardingSettingsViewController *)self footerView];
  [v94 setHidden:1];

  v95 = [(HKRPOnboardingSettingsViewController *)self view];
  v96 = [(HKRPOnboardingSettingsViewController *)self footerView];
  [v95 addSubview:v96];

  v97 = *MEMORY[0x277D85DE8];
}

- (void)layoutUI
{
  if ([(HKRPOnboardingSettingsViewController *)self style]!= 1 || ![(HKRPOnboardingSettingsViewController *)self didLayoutSubviews]|| [(HKRPOnboardingSettingsViewController *)self isVisible])
  {
    [(HKRPOnboardingSettingsViewController *)self setDidLayoutSubviews:1];
    [(HKRPOnboardingSettingsViewController *)self createUI];
    [(HKRPOnboardingSettingsViewController *)self initialInsets];
    v159 = v4;
    v160 = v3;
    v6 = v5;
    v8 = v7;
    v9 = [(HKRPOnboardingSettingsViewController *)self view];
    [v9 frame];
    v11 = v10 - v6 - v8 + -48.0;

    v12 = [(HKRPOnboardingSettingsViewController *)self view];
    [v12 frame];
    v14 = v13;

    v15 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
    [v15 sizeThatFits:{v11, v14}];
    v17 = v16;

    v18 = v6 + 24.0;
    v19 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
    [v19 setFrame:{v6 + 24.0, 30.0, v11, v17}];

    v20 = v17 + 30.0 + 16.0;
    v21 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
    [v21 sizeThatFits:{v11, v14}];
    v23 = v22;

    v24 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
    [v24 setFrame:{v6 + 24.0, v20, v11, v23}];

    v25 = v20 + v23 + 24.0;
    v26 = [(HKRPOnboardingSettingsViewController *)self watchView];
    [v26 sizeThatFits:{v11, v14}];
    v28 = v27;
    v30 = v29;

    v31 = [(HKRPOnboardingSettingsViewController *)self watchView];
    [v31 setFrame:{v6 + (v11 - v28) * 0.5 + 24.0, v25, v28, v30}];

    v32 = v25 + v30;
    v33 = [(HKRPOnboardingSettingsViewController *)self style];
    v34 = 49.0;
    if (v33 != 1)
    {
      v34 = 0.0;
    }

    v35 = *&v160 + v159 - v34;
    v36 = [(HKRPOnboardingSettingsViewController *)self view];
    [v36 frame];
    v38 = v37 - v35;

    v39 = v38 + -16.0;
    v40 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
    [v40 sizeThatFits:{v11, v14}];
    v42 = v41;

    v43 = v39 - v42;
    v44 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
    [v44 setFrame:{v18, v43, v11, v42}];

    v45 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
    [v45 sizeThatFits:{v11, v14}];
    v47 = v46;

    v48 = v43 + -4.0 - v47;
    v49 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
    [v49 setFrame:{v18, v48, v11, v47}];

    v50 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
    [v50 sizeThatFits:{v11, v14}];
    v52 = v51;

    v53 = v48 + -20.0 - v52;
    v54 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
    [v54 setFrame:{v18, v53, v11, v52}];

    v55 = v32;
    v56 = v53 - v32;
    v57 = v53 + -16.0;
    v58 = v35 + v53;
    v59 = v35;
    v60 = v58 + -16.0;
    v61 = v57;
    v62 = [(HKRPOnboardingSettingsViewController *)self view];
    [v62 frame];
    v64 = v63;
    v65 = [(HKRPOnboardingSettingsViewController *)self footerView];
    [v65 setFrame:{0.0, v60, v64, v14 - v61}];

    v66 = [(HKRPOnboardingSettingsViewController *)self footerView];
    [v66 frame];
    v68 = v67;
    v69 = [(HKRPOnboardingSettingsViewController *)self footerView];
    [v69 frame];
    v71 = v70;
    v72 = [(HKRPOnboardingSettingsViewController *)self blurView];
    [v72 setFrame:{0.0, 0.0, v68, v71}];

    v73 = [(HKRPOnboardingSettingsViewController *)self view];
    [v73 frame];
    v75 = v74;
    v76 = [(HKRPOnboardingSettingsViewController *)self contentView];
    [v76 setFrame:{0.0, 0.0, v75, v55}];

    v77 = [(HKRPOnboardingSettingsViewController *)self view];
    [v77 frame];
    v79 = v78;
    v80 = [(HKRPOnboardingSettingsViewController *)self view];
    [v80 frame];
    v82 = v81;
    v83 = [(HKRPOnboardingSettingsViewController *)self scrollView];
    [v83 setFrame:{0.0, 0.0, v79, v82}];

    v84 = [(HKRPOnboardingSettingsViewController *)self scrollView];
    [v84 setScrollEnabled:v56 < 14.0];

    if (v56 >= 14.0)
    {
      v135 = [(HKRPOnboardingSettingsViewController *)self contentView];
      v136 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
      [v135 addSubview:v136];

      v137 = [(HKRPOnboardingSettingsViewController *)self contentView];
      v138 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
      [v137 addSubview:v138];

      v139 = [(HKRPOnboardingSettingsViewController *)self contentView];
      v140 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
      [v139 addSubview:v140];

      v141 = [(HKRPOnboardingSettingsViewController *)self scrollView];
      [v141 setContentInset:{*&v160, 0.0, 0.0, 0.0}];

      v142 = [(HKRPOnboardingSettingsViewController *)self contentView];
      [v142 frame];
      v144 = v143;
      v146 = v145;
      v148 = v147;

      v149 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
      [v149 frame];
      v151 = v150;
      v152 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
      [v152 bounds];
      v154 = v151 + v153;

      v155 = [(HKRPOnboardingSettingsViewController *)self contentView];
      [v155 setFrame:{v144, v146, v148, v154}];

      v134 = [(HKRPOnboardingSettingsViewController *)self footerView];
      [v134 setHidden:1];
    }

    else
    {
      v85 = [(HKRPOnboardingSettingsViewController *)self footerView];
      v86 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
      [v85 addSubview:v86];

      v87 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
      [v87 frame];
      v89 = v88;
      v91 = v90;
      v93 = v92;
      v95 = v94;

      v96 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
      [v96 setFrame:{v89, v91 - v61, v93, v95}];

      v97 = [(HKRPOnboardingSettingsViewController *)self footerView];
      v98 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
      [v97 addSubview:v98];

      v99 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
      [v99 frame];
      v101 = v100;
      v103 = v102;
      v105 = v104;
      v107 = v106;

      v108 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
      [v108 setFrame:{v101, v103 - v61, v105, v107}];

      v109 = [(HKRPOnboardingSettingsViewController *)self footerView];
      v110 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
      [v109 addSubview:v110];

      v111 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
      [v111 frame];
      v113 = v112;
      v115 = v114;
      v117 = v116;
      v119 = v118;

      v120 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
      [v120 setFrame:{v113, v115 - v61, v117, v119}];

      v121 = [(HKRPOnboardingSettingsViewController *)self footerView];
      [v121 setHidden:0];

      v122 = [(HKRPOnboardingSettingsViewController *)self contentView];
      [v122 frame];
      v124 = v123;
      v126 = v125;
      v128 = v127;
      v130 = v129;

      v131 = [(HKRPOnboardingSettingsViewController *)self footerView];
      [v131 frame];
      v133 = v130 + v132 - v59;

      v134 = [(HKRPOnboardingSettingsViewController *)self contentView];
      [v134 setFrame:{v124, v126, v128, v133}];
    }

    v161 = [(HKRPOnboardingSettingsViewController *)self scrollView];
    v156 = [(HKRPOnboardingSettingsViewController *)self contentView];
    [v156 frame];
    [v161 setContentSize:{v157, v158}];
  }
}

- (void)suggestedChoiceButtonPressed:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__HKRPOnboardingSettingsViewController_suggestedChoiceButtonPressed___block_invoke;
  v3[3] = &unk_279B0F020;
  v3[4] = self;
  [(HKRPOnboardingSettingsViewController *)self _onboardWithCompletion:v3];
}

void __69__HKRPOnboardingSettingsViewController_suggestedChoiceButtonPressed___block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __69__HKRPOnboardingSettingsViewController_suggestedChoiceButtonPressed___block_invoke_2;
  v2[3] = &unk_279B0EFF8;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __69__HKRPOnboardingSettingsViewController_suggestedChoiceButtonPressed___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) onboardingDelegate];
  [v2 enablePressedWithAppropriateRegion:*(a1 + 40)];
}

- (void)_onboardWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKRPOnboardingSettingsViewController *)self onboardingManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HKRPOnboardingSettingsViewController__onboardWithCompletion___block_invoke;
  v7[3] = &unk_279B0F158;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 onboardWithCompletion:v7];
}

void __63__HKRPOnboardingSettingsViewController__onboardWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__HKRPOnboardingSettingsViewController__onboardWithCompletion___block_invoke_2;
    v12[3] = &unk_279B0F048;
    v7 = *(a1 + 32);
    v13 = *(a1 + 40);
    [v7 _installWatchAppIfNeededWithCompletion:v12];
    v8 = v13;
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__HKRPOnboardingSettingsViewController__onboardWithCompletion___block_invoke_3;
    v9[3] = &unk_279B0F070;
    v9[4] = *(a1 + 32);
    v10 = v5;
    v11 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v9);

    v8 = v10;
  }
}

void __63__HKRPOnboardingSettingsViewController__onboardWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__HKRPOnboardingSettingsViewController__onboardWithCompletion___block_invoke_4;
  v3[3] = &unk_279B0F048;
  v4 = *(a1 + 48);
  [v1 _presentOnboardingError:v2 completion:v3];
}

- (void)_installWatchAppIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HKRPWatchAppInstaller);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HKRPOnboardingSettingsViewController__installWatchAppIfNeededWithCompletion___block_invoke;
  v8[3] = &unk_279B0F1F8;
  v9 = v5;
  v10 = v4;
  v8[4] = self;
  v6 = v5;
  v7 = v4;
  [(HKRPWatchAppInstaller *)v6 checkIfAppCanBeInstalledWithCompletion:v8];
}

void __79__HKRPOnboardingSettingsViewController__installWatchAppIfNeededWithCompletion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HKRPOnboardingSettingsViewController__installWatchAppIfNeededWithCompletion___block_invoke_2;
    block[3] = &unk_279B0F1D0;
    block[4] = *(a1 + 32);
    v7 = *(a1 + 48);
    v6 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

void __79__HKRPOnboardingSettingsViewController__installWatchAppIfNeededWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__HKRPOnboardingSettingsViewController__installWatchAppIfNeededWithCompletion___block_invoke_3;
  v3[3] = &unk_279B0F1A8;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _askUserToInstallWatchAppWithCompletion:v3];
}

void __79__HKRPOnboardingSettingsViewController__installWatchAppIfNeededWithCompletion___block_invoke_3(uint64_t a1, char a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __79__HKRPOnboardingSettingsViewController__installWatchAppIfNeededWithCompletion___block_invoke_4;
    v5[3] = &unk_279B0F180;
    v3 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v3 installAppWithCompletion:v5];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (void)_askUserToInstallWatchAppWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75110];
  v6 = [(HKRPOnboardingSettingsViewController *)self _localizedStringForKey:@"RESPIRATORY_HEALTH_APP_INSTALL_PROMPT_TITLE"];
  v7 = [(HKRPOnboardingSettingsViewController *)self _localizedStringForKey:@"RESPIRATORY_HEALTH_APP_INSTALL_PROMPT_BODY"];
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = [(HKRPOnboardingSettingsViewController *)self _localizedStringForKey:@"RESPIRATORY_HEALTH_APP_INSTALL_PROMPT_CANCEL_BUTTON_TITLE"];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __80__HKRPOnboardingSettingsViewController__askUserToInstallWatchAppWithCompletion___block_invoke;
  v22[3] = &unk_279B0F0C0;
  v11 = v4;
  v23 = v11;
  v12 = [v9 actionWithTitle:v10 style:1 handler:v22];

  v13 = MEMORY[0x277D750F8];
  v14 = [(HKRPOnboardingSettingsViewController *)self _localizedStringForKey:@"RESPIRATORY_HEALTH_APP_INSTALL_PROMPT_INSTALL_BUTTON_TITLE"];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __80__HKRPOnboardingSettingsViewController__askUserToInstallWatchAppWithCompletion___block_invoke_2;
  v20 = &unk_279B0F0C0;
  v21 = v11;
  v15 = v11;
  v16 = [v13 actionWithTitle:v14 style:0 handler:&v17];

  [v8 addAction:{v12, v17, v18, v19, v20}];
  [v8 addAction:v16];
  [(HKRPOnboardingSettingsViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_presentOnboardingError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v7;
  v10 = [v8 domain];
  v11 = *MEMORY[0x277CCBDB0];
  if (([v10 isEqualToString:*MEMORY[0x277CCBDB0]] & 1) == 0)
  {

LABEL_5:
    v16 = v8;
    v17 = [v16 domain];
    if ([v17 isEqualToString:v11])
    {
      v18 = [v16 code];

      if (v18 == 110)
      {
        v14 = 0;
        v15 = @"RESPIRATORY_HEALTH_ONBOARDING_ALERT_LOCATION_UNAPPROVED_ERROR";
        goto LABEL_10;
      }
    }

    else
    {
    }

    v14 = 0;
    v15 = @"RESPIRATORY_HEALTH_ONBOARDING_ALERT_COMPLETION_UNKNOWN_ERROR";
    goto LABEL_10;
  }

  v12 = [v8 code];

  if (v12 != 109)
  {
    goto LABEL_5;
  }

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"RESPIRATORY_HEALTH_ONBOARDING_ALERT_LOCATION_NOT_FOUND_ERROR_TITLE" value:&stru_28749E498 table:@"RespiratoryHealthUI"];

  v15 = @"RESPIRATORY_HEALTH_ONBOARDING_ALERT_LOCATION_NOT_FOUND_ERROR_BODY";
LABEL_10:
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:v15 value:&stru_28749E498 table:@"RespiratoryHealthUI"];

  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"OK" value:&stru_28749E498 table:@"RespiratoryHealthUI"];

  v23 = [MEMORY[0x277D75110] alertControllerWithTitle:v14 message:v20 preferredStyle:1];
  v24 = MEMORY[0x277D750F8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __alertControllerForOnboardingError_block_invoke_0;
  v27[3] = &unk_279B0F0C0;
  v28 = v9;
  v25 = v9;
  v26 = [v24 actionWithTitle:v22 style:0 handler:v27];
  [v23 addAction:v26];

  [(HKRPOnboardingSettingsViewController *)self presentViewController:v23 animated:1 completion:0];
}

- (void)setupLaterButtonPressed:(id)a3
{
  v3 = [(HKRPOnboardingSettingsViewController *)self onboardingDelegate];
  [v3 setupLaterPressed];
}

- (void)scrollViewDidScroll:(id)a3
{
  v7 = a3;
  v4 = [(HKRPOnboardingSettingsViewController *)self onboardingDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HKRPOnboardingSettingsViewController *)self onboardingDelegate];
    [v6 onboardingScrollViewDidScroll:v7];
  }
}

- (id)_headerTitleFont
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769A8]];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (id)backgroundColor
{
  style = self->_style;
  if (style == 1)
  {
    v3 = [MEMORY[0x277D75348] systemBlackColor];
  }

  else if (style == 2)
  {
    v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)labelColor
{
  style = self->_style;
  if (style == 1)
  {
    v3 = [MEMORY[0x277D75348] systemWhiteColor];
  }

  else if (style == 2)
  {
    v3 = [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)pillBackgroundSelectedColor
{
  style = self->_style;
  if (style == 1)
  {
    v4 = BPSPillSelectedColor();
  }

  else if (style == 2)
  {
    v3 = [(HKRPOnboardingSettingsViewController *)self pillBackgroundColor];
    v4 = [v3 colorWithAlphaComponent:0.25];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)pillBackgroundColor
{
  style = self->_style;
  if (style == 1)
  {
    v3 = BPSPillDeselectedColor();
  }

  else if (style == 2)
  {
    v3 = [MEMORY[0x277D75348] systemBlueColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)pillTitleColor
{
  style = self->_style;
  if (style == 1)
  {
    v3 = [MEMORY[0x277D75348] colorWithWhite:0.7 alpha:1.0];
  }

  else if (style == 2)
  {
    v3 = [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)pillTitleSelectedColor
{
  style = self->_style;
  if (style == 1)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.7 alpha:1.0];
  }

  else if (style == 2)
  {
    v3 = [(HKRPOnboardingSettingsViewController *)self pillTitleColor];
    v4 = [v3 colorWithAlphaComponent:0.25];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_localizedStringForKey:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_28749E498 table:@"RespiratoryHealthUI"];

  return v6;
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

- (HKRPOnboardingDelegate)onboardingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_onboardingDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)initialInsets
{
  top = self->_initialInsets.top;
  left = self->_initialInsets.left;
  bottom = self->_initialInsets.bottom;
  right = self->_initialInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end