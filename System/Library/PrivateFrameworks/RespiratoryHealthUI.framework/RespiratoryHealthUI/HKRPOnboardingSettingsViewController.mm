@interface HKRPOnboardingSettingsViewController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (HKRPOnboardingDelegate)onboardingDelegate;
- (HKRPOnboardingSettingsViewController)initWithStyle:(int64_t)style settings:(id)settings onboardingManager:(id)manager onboardingDelegate:(id)delegate;
- (UIEdgeInsets)initialInsets;
- (id)_headerTitleFont;
- (id)_localizedStringForKey:(id)key;
- (id)backgroundColor;
- (id)labelColor;
- (id)pillBackgroundColor;
- (id)pillBackgroundSelectedColor;
- (id)pillTitleColor;
- (id)pillTitleSelectedColor;
- (void)_askUserToInstallWatchAppWithCompletion:(id)completion;
- (void)_installWatchAppIfNeededWithCompletion:(id)completion;
- (void)_onboardWithCompletion:(id)completion;
- (void)_presentOnboardingError:(id)error completion:(id)completion;
- (void)createUI;
- (void)layoutUI;
- (void)registerForTraitChanges;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setInsetsIfNeeded;
- (void)setupLaterButtonPressed:(id)pressed;
- (void)suggestedChoiceButtonPressed:(id)pressed;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation HKRPOnboardingSettingsViewController

- (HKRPOnboardingSettingsViewController)initWithStyle:(int64_t)style settings:(id)settings onboardingManager:(id)manager onboardingDelegate:(id)delegate
{
  settingsCopy = settings;
  managerCopy = manager;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = HKRPOnboardingSettingsViewController;
  v14 = [(HKRPOnboardingSettingsViewController *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_style = style;
    objc_storeStrong(&v14->_settings, settings);
    objc_storeStrong(&v15->_onboardingManager, manager);
    objc_storeWeak(&v15->_onboardingDelegate, delegateCopy);
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
    view = [(HKRPOnboardingSettingsViewController *)self view];
    [view safeAreaInsets];
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
  view = [(HKRPOnboardingSettingsViewController *)self view];
  subviews = [view subviews];

  v5 = [subviews countByEnumeratingWithState:&v98 objects:v102 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v98 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v98 objects:v102 count:16];
    }

    while (v6);
  }

  backgroundColor = [(HKRPOnboardingSettingsViewController *)self backgroundColor];
  view2 = [(HKRPOnboardingSettingsViewController *)self view];
  [view2 setBackgroundColor:backgroundColor];

  v11 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(HKRPOnboardingSettingsViewController *)self setScrollView:v11];

  scrollView = [(HKRPOnboardingSettingsViewController *)self scrollView];
  [scrollView setShowsVerticalScrollIndicator:0];

  scrollView2 = [(HKRPOnboardingSettingsViewController *)self scrollView];
  [scrollView2 setAlwaysBounceVertical:1];

  scrollView3 = [(HKRPOnboardingSettingsViewController *)self scrollView];
  [scrollView3 setDelegate:self];

  view3 = [(HKRPOnboardingSettingsViewController *)self view];
  scrollView4 = [(HKRPOnboardingSettingsViewController *)self scrollView];
  [view3 addSubview:scrollView4];

  v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(HKRPOnboardingSettingsViewController *)self setContentView:v17];

  scrollView5 = [(HKRPOnboardingSettingsViewController *)self scrollView];
  contentView = [(HKRPOnboardingSettingsViewController *)self contentView];
  [scrollView5 addSubview:contentView];

  v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(HKRPOnboardingSettingsViewController *)self setTitleLabel:v20];

  v21 = [(HKRPOnboardingSettingsViewController *)self _localizedStringForKey:@"RESPIRATORY_HEALTH_TITLE"];
  titleLabel = [(HKRPOnboardingSettingsViewController *)self titleLabel];
  [titleLabel setText:v21];

  titleLabel2 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
  [titleLabel2 setTextAlignment:1];

  _headerTitleFont = [(HKRPOnboardingSettingsViewController *)self _headerTitleFont];
  titleLabel3 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
  [titleLabel3 setFont:_headerTitleFont];

  labelColor = [(HKRPOnboardingSettingsViewController *)self labelColor];
  titleLabel4 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
  [titleLabel4 setTextColor:labelColor];

  titleLabel5 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
  [titleLabel5 setNumberOfLines:0];

  titleLabel6 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
  [titleLabel6 setAdjustsFontForContentSizeCategory:1];

  contentView2 = [(HKRPOnboardingSettingsViewController *)self contentView];
  titleLabel7 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
  [contentView2 addSubview:titleLabel7];

  v32 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(HKRPOnboardingSettingsViewController *)self setDescriptionLabel:v32];

  settings = [(HKRPOnboardingSettingsViewController *)self settings];
  recordingInactiveDescription = [settings recordingInactiveDescription];
  descriptionLabel = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
  [descriptionLabel setText:recordingInactiveDescription];

  descriptionLabel2 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
  [descriptionLabel2 setTextAlignment:1];

  v37 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  descriptionLabel3 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
  [descriptionLabel3 setFont:v37];

  labelColor2 = [(HKRPOnboardingSettingsViewController *)self labelColor];
  descriptionLabel4 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
  [descriptionLabel4 setTextColor:labelColor2];

  descriptionLabel5 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
  [descriptionLabel5 setNumberOfLines:0];

  descriptionLabel6 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
  [descriptionLabel6 setAdjustsFontForContentSizeCategory:1];

  contentView3 = [(HKRPOnboardingSettingsViewController *)self contentView];
  descriptionLabel7 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
  [contentView3 addSubview:descriptionLabel7];

  v45 = objc_alloc_init(RespiratoryHealthHeroView);
  [(HKRPOnboardingSettingsViewController *)self setWatchView:v45];

  view4 = [(HKRPOnboardingSettingsViewController *)self view];
  [view4 frame];
  v48 = v47;
  view5 = [(HKRPOnboardingSettingsViewController *)self view];
  [view5 frame];
  [(HKRPOnboardingSettingsViewController *)self _calculateHeroHorizontalMarginForViewFrame:?];
  v51 = v48 + v50 * -2.0;
  watchView = [(HKRPOnboardingSettingsViewController *)self watchView];
  [watchView setPreferredWidth:v51];

  contentView4 = [(HKRPOnboardingSettingsViewController *)self contentView];
  watchView2 = [(HKRPOnboardingSettingsViewController *)self watchView];
  [contentView4 addSubview:watchView2];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [(HKRPOnboardingSettingsViewController *)self setSetupLaterButton:linkButton];

  setupLaterButton = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
  [setupLaterButton setTranslatesAutoresizingMaskIntoConstraints:1];

  setupLaterButton2 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
  v58 = [(HKRPOnboardingSettingsViewController *)self _localizedStringForKey:@"RESPIRATORY_HEALTH_SET_UP_LATER"];
  [setupLaterButton2 setTitle:v58 forState:0];

  setupLaterButton3 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
  [setupLaterButton3 addTarget:self action:sel_setupLaterButtonPressed_ forControlEvents:64];

  contentView5 = [(HKRPOnboardingSettingsViewController *)self contentView];
  setupLaterButton4 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
  [contentView5 addSubview:setupLaterButton4];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [(HKRPOnboardingSettingsViewController *)self setSuggestedChoiceButton:boldButton];

  suggestedChoiceButton = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton setTranslatesAutoresizingMaskIntoConstraints:1];

  suggestedChoiceButton2 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
  v65 = [(HKRPOnboardingSettingsViewController *)self _localizedStringForKey:@"RESPIRATORY_HEALTH_ENABLE"];
  [suggestedChoiceButton2 setTitle:v65 forState:0];

  suggestedChoiceButton3 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
  [suggestedChoiceButton3 addTarget:self action:sel_suggestedChoiceButtonPressed_ forControlEvents:64];

  suggestedChoiceButton4 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
  pillBackgroundColor = [(HKRPOnboardingSettingsViewController *)self pillBackgroundColor];
  [suggestedChoiceButton4 setTintColor:pillBackgroundColor];

  suggestedChoiceButton5 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
  pillBackgroundSelectedColor = [(HKRPOnboardingSettingsViewController *)self pillBackgroundSelectedColor];
  v71 = BPSPillButtonBackground();
  [suggestedChoiceButton5 setBackgroundImage:v71 forState:4];

  suggestedChoiceButton6 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
  pillTitleColor = [(HKRPOnboardingSettingsViewController *)self pillTitleColor];
  [suggestedChoiceButton6 setTitleColor:pillTitleColor forState:2];

  contentView6 = [(HKRPOnboardingSettingsViewController *)self contentView];
  suggestedChoiceButton7 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
  [contentView6 addSubview:suggestedChoiceButton7];

  v76 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(HKRPOnboardingSettingsViewController *)self setLocationLabel:v76];

  v77 = [(HKRPOnboardingSettingsViewController *)self _localizedStringForKey:@"RESPIRATORY_HEALTH_BUTTON_CAPTION"];
  locationLabel = [(HKRPOnboardingSettingsViewController *)self locationLabel];
  [locationLabel setText:v77];

  locationLabel2 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
  [locationLabel2 setTextAlignment:1];

  locationLabel3 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
  [locationLabel3 setNumberOfLines:0];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  locationLabel4 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
  [locationLabel4 setTextColor:systemGrayColor];

  v83 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  locationLabel5 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
  [locationLabel5 setFont:v83];

  locationLabel6 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
  [locationLabel6 setAdjustsFontForContentSizeCategory:1];

  contentView7 = [(HKRPOnboardingSettingsViewController *)self contentView];
  locationLabel7 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
  [contentView7 addSubview:locationLabel7];

  v88 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(HKRPOnboardingSettingsViewController *)self setFooterView:v88];

  v89 = [MEMORY[0x277D75210] effectWithStyle:5];
  v90 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v89];
  [(HKRPOnboardingSettingsViewController *)self setBlurView:v90];

  blurView = [(HKRPOnboardingSettingsViewController *)self blurView];
  [blurView setFrame:{0.0, 0.0, 1.0, 1.0}];

  footerView = [(HKRPOnboardingSettingsViewController *)self footerView];
  blurView2 = [(HKRPOnboardingSettingsViewController *)self blurView];
  [footerView addSubview:blurView2];

  footerView2 = [(HKRPOnboardingSettingsViewController *)self footerView];
  [footerView2 setHidden:1];

  view6 = [(HKRPOnboardingSettingsViewController *)self view];
  footerView3 = [(HKRPOnboardingSettingsViewController *)self footerView];
  [view6 addSubview:footerView3];

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
    view = [(HKRPOnboardingSettingsViewController *)self view];
    [view frame];
    v11 = v10 - v6 - v8 + -48.0;

    view2 = [(HKRPOnboardingSettingsViewController *)self view];
    [view2 frame];
    v14 = v13;

    titleLabel = [(HKRPOnboardingSettingsViewController *)self titleLabel];
    [titleLabel sizeThatFits:{v11, v14}];
    v17 = v16;

    v18 = v6 + 24.0;
    titleLabel2 = [(HKRPOnboardingSettingsViewController *)self titleLabel];
    [titleLabel2 setFrame:{v6 + 24.0, 30.0, v11, v17}];

    v20 = v17 + 30.0 + 16.0;
    descriptionLabel = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
    [descriptionLabel sizeThatFits:{v11, v14}];
    v23 = v22;

    descriptionLabel2 = [(HKRPOnboardingSettingsViewController *)self descriptionLabel];
    [descriptionLabel2 setFrame:{v6 + 24.0, v20, v11, v23}];

    v25 = v20 + v23 + 24.0;
    watchView = [(HKRPOnboardingSettingsViewController *)self watchView];
    [watchView sizeThatFits:{v11, v14}];
    v28 = v27;
    v30 = v29;

    watchView2 = [(HKRPOnboardingSettingsViewController *)self watchView];
    [watchView2 setFrame:{v6 + (v11 - v28) * 0.5 + 24.0, v25, v28, v30}];

    v32 = v25 + v30;
    style = [(HKRPOnboardingSettingsViewController *)self style];
    v34 = 49.0;
    if (style != 1)
    {
      v34 = 0.0;
    }

    v35 = *&v160 + v159 - v34;
    view3 = [(HKRPOnboardingSettingsViewController *)self view];
    [view3 frame];
    v38 = v37 - v35;

    v39 = v38 + -16.0;
    setupLaterButton = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
    [setupLaterButton sizeThatFits:{v11, v14}];
    v42 = v41;

    v43 = v39 - v42;
    setupLaterButton2 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
    [setupLaterButton2 setFrame:{v18, v43, v11, v42}];

    suggestedChoiceButton = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
    [suggestedChoiceButton sizeThatFits:{v11, v14}];
    v47 = v46;

    v48 = v43 + -4.0 - v47;
    suggestedChoiceButton2 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
    [suggestedChoiceButton2 setFrame:{v18, v48, v11, v47}];

    locationLabel = [(HKRPOnboardingSettingsViewController *)self locationLabel];
    [locationLabel sizeThatFits:{v11, v14}];
    v52 = v51;

    v53 = v48 + -20.0 - v52;
    locationLabel2 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
    [locationLabel2 setFrame:{v18, v53, v11, v52}];

    v55 = v32;
    v56 = v53 - v32;
    v57 = v53 + -16.0;
    v58 = v35 + v53;
    v59 = v35;
    v60 = v58 + -16.0;
    v61 = v57;
    view4 = [(HKRPOnboardingSettingsViewController *)self view];
    [view4 frame];
    v64 = v63;
    footerView = [(HKRPOnboardingSettingsViewController *)self footerView];
    [footerView setFrame:{0.0, v60, v64, v14 - v61}];

    footerView2 = [(HKRPOnboardingSettingsViewController *)self footerView];
    [footerView2 frame];
    v68 = v67;
    footerView3 = [(HKRPOnboardingSettingsViewController *)self footerView];
    [footerView3 frame];
    v71 = v70;
    blurView = [(HKRPOnboardingSettingsViewController *)self blurView];
    [blurView setFrame:{0.0, 0.0, v68, v71}];

    view5 = [(HKRPOnboardingSettingsViewController *)self view];
    [view5 frame];
    v75 = v74;
    contentView = [(HKRPOnboardingSettingsViewController *)self contentView];
    [contentView setFrame:{0.0, 0.0, v75, v55}];

    view6 = [(HKRPOnboardingSettingsViewController *)self view];
    [view6 frame];
    v79 = v78;
    view7 = [(HKRPOnboardingSettingsViewController *)self view];
    [view7 frame];
    v82 = v81;
    scrollView = [(HKRPOnboardingSettingsViewController *)self scrollView];
    [scrollView setFrame:{0.0, 0.0, v79, v82}];

    scrollView2 = [(HKRPOnboardingSettingsViewController *)self scrollView];
    [scrollView2 setScrollEnabled:v56 < 14.0];

    if (v56 >= 14.0)
    {
      contentView2 = [(HKRPOnboardingSettingsViewController *)self contentView];
      setupLaterButton3 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
      [contentView2 addSubview:setupLaterButton3];

      contentView3 = [(HKRPOnboardingSettingsViewController *)self contentView];
      suggestedChoiceButton3 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
      [contentView3 addSubview:suggestedChoiceButton3];

      contentView4 = [(HKRPOnboardingSettingsViewController *)self contentView];
      locationLabel3 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
      [contentView4 addSubview:locationLabel3];

      scrollView3 = [(HKRPOnboardingSettingsViewController *)self scrollView];
      [scrollView3 setContentInset:{*&v160, 0.0, 0.0, 0.0}];

      contentView5 = [(HKRPOnboardingSettingsViewController *)self contentView];
      [contentView5 frame];
      v144 = v143;
      v146 = v145;
      v148 = v147;

      setupLaterButton4 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
      [setupLaterButton4 frame];
      v151 = v150;
      setupLaterButton5 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
      [setupLaterButton5 bounds];
      v154 = v151 + v153;

      contentView6 = [(HKRPOnboardingSettingsViewController *)self contentView];
      [contentView6 setFrame:{v144, v146, v148, v154}];

      footerView4 = [(HKRPOnboardingSettingsViewController *)self footerView];
      [footerView4 setHidden:1];
    }

    else
    {
      footerView5 = [(HKRPOnboardingSettingsViewController *)self footerView];
      setupLaterButton6 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
      [footerView5 addSubview:setupLaterButton6];

      setupLaterButton7 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
      [setupLaterButton7 frame];
      v89 = v88;
      v91 = v90;
      v93 = v92;
      v95 = v94;

      setupLaterButton8 = [(HKRPOnboardingSettingsViewController *)self setupLaterButton];
      [setupLaterButton8 setFrame:{v89, v91 - v61, v93, v95}];

      footerView6 = [(HKRPOnboardingSettingsViewController *)self footerView];
      suggestedChoiceButton4 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
      [footerView6 addSubview:suggestedChoiceButton4];

      suggestedChoiceButton5 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
      [suggestedChoiceButton5 frame];
      v101 = v100;
      v103 = v102;
      v105 = v104;
      v107 = v106;

      suggestedChoiceButton6 = [(HKRPOnboardingSettingsViewController *)self suggestedChoiceButton];
      [suggestedChoiceButton6 setFrame:{v101, v103 - v61, v105, v107}];

      footerView7 = [(HKRPOnboardingSettingsViewController *)self footerView];
      locationLabel4 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
      [footerView7 addSubview:locationLabel4];

      locationLabel5 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
      [locationLabel5 frame];
      v113 = v112;
      v115 = v114;
      v117 = v116;
      v119 = v118;

      locationLabel6 = [(HKRPOnboardingSettingsViewController *)self locationLabel];
      [locationLabel6 setFrame:{v113, v115 - v61, v117, v119}];

      footerView8 = [(HKRPOnboardingSettingsViewController *)self footerView];
      [footerView8 setHidden:0];

      contentView7 = [(HKRPOnboardingSettingsViewController *)self contentView];
      [contentView7 frame];
      v124 = v123;
      v126 = v125;
      v128 = v127;
      v130 = v129;

      footerView9 = [(HKRPOnboardingSettingsViewController *)self footerView];
      [footerView9 frame];
      v133 = v130 + v132 - v59;

      footerView4 = [(HKRPOnboardingSettingsViewController *)self contentView];
      [footerView4 setFrame:{v124, v126, v128, v133}];
    }

    scrollView4 = [(HKRPOnboardingSettingsViewController *)self scrollView];
    contentView8 = [(HKRPOnboardingSettingsViewController *)self contentView];
    [contentView8 frame];
    [scrollView4 setContentSize:{v157, v158}];
  }
}

- (void)suggestedChoiceButtonPressed:(id)pressed
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

- (void)_onboardWithCompletion:(id)completion
{
  completionCopy = completion;
  onboardingManager = [(HKRPOnboardingSettingsViewController *)self onboardingManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HKRPOnboardingSettingsViewController__onboardWithCompletion___block_invoke;
  v7[3] = &unk_279B0F158;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [onboardingManager onboardWithCompletion:v7];
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

- (void)_installWatchAppIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(HKRPWatchAppInstaller);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HKRPOnboardingSettingsViewController__installWatchAppIfNeededWithCompletion___block_invoke;
  v8[3] = &unk_279B0F1F8;
  v9 = v5;
  v10 = completionCopy;
  v8[4] = self;
  v6 = v5;
  v7 = completionCopy;
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

- (void)_askUserToInstallWatchAppWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v11 = completionCopy;
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

- (void)_presentOnboardingError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v8 = errorCopy;
  v9 = completionCopy;
  domain = [v8 domain];
  v11 = *MEMORY[0x277CCBDB0];
  if (([domain isEqualToString:*MEMORY[0x277CCBDB0]] & 1) == 0)
  {

LABEL_5:
    v16 = v8;
    domain2 = [v16 domain];
    if ([domain2 isEqualToString:v11])
    {
      code = [v16 code];

      if (code == 110)
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

  code2 = [v8 code];

  if (code2 != 109)
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

- (void)setupLaterButtonPressed:(id)pressed
{
  onboardingDelegate = [(HKRPOnboardingSettingsViewController *)self onboardingDelegate];
  [onboardingDelegate setupLaterPressed];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  onboardingDelegate = [(HKRPOnboardingSettingsViewController *)self onboardingDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    onboardingDelegate2 = [(HKRPOnboardingSettingsViewController *)self onboardingDelegate];
    [onboardingDelegate2 onboardingScrollViewDidScroll:scrollCopy];
  }
}

- (id)_headerTitleFont
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769A8]];
  fontDescriptor = [v2 fontDescriptor];
  v4 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (id)backgroundColor
{
  style = self->_style;
  if (style == 1)
  {
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
  }

  else if (style == 2)
  {
    systemBlackColor = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  else
  {
    systemBlackColor = 0;
  }

  return systemBlackColor;
}

- (id)labelColor
{
  style = self->_style;
  if (style == 1)
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  }

  else if (style == 2)
  {
    systemWhiteColor = [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    systemWhiteColor = 0;
  }

  return systemWhiteColor;
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
    pillBackgroundColor = [(HKRPOnboardingSettingsViewController *)self pillBackgroundColor];
    v4 = [pillBackgroundColor colorWithAlphaComponent:0.25];
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
    systemBlueColor = BPSPillDeselectedColor();
  }

  else if (style == 2)
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  }

  else
  {
    systemBlueColor = 0;
  }

  return systemBlueColor;
}

- (id)pillTitleColor
{
  style = self->_style;
  if (style == 1)
  {
    systemWhiteColor = [MEMORY[0x277D75348] colorWithWhite:0.7 alpha:1.0];
  }

  else if (style == 2)
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    systemWhiteColor = 0;
  }

  return systemWhiteColor;
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
    pillTitleColor = [(HKRPOnboardingSettingsViewController *)self pillTitleColor];
    v4 = [pillTitleColor colorWithAlphaComponent:0.25];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_localizedStringForKey:(id)key
{
  v3 = MEMORY[0x277CCA8D8];
  keyCopy = key;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:keyCopy value:&stru_28749E498 table:@"RespiratoryHealthUI"];

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