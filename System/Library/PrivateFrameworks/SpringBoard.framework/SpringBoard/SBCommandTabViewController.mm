@interface SBCommandTabViewController
+ (BOOL)canActivateWithRecentDisplayItems:(id)items;
- (BOOL)iconViewDisplaysAccessories:(id)accessories;
- (SBCommandTabViewController)initWithRecentDisplayItems:(id)items iconController:(id)controller;
- (SBCommandTabViewControllerDelegate)delegate;
- (id)selectedApplicationDisplayItem;
- (void)_configureGridLayoutConfiguration:(id)configuration;
- (void)_handleTapDismissGesture:(id)gesture;
- (void)_handleUIGesture:(id)gesture;
- (void)_moveSelectionSquareToIconAtIndex:(unint64_t)index;
- (void)_updateForUserInterfaceStyle;
- (void)_updateIconSelectionPositionAndLabelText;
- (void)dealloc;
- (void)icon:(id)icon touchEnded:(BOOL)ended;
- (void)iconModelDidChange:(id)change;
- (void)iconTapped:(id)tapped;
- (void)iconTouchBegan:(id)began;
- (void)next;
- (void)previous;
- (void)removeDisplayItem:(id)item;
- (void)showCommandTabBar;
- (void)viewDidLoad;
@end

@implementation SBCommandTabViewController

+ (BOOL)canActivateWithRecentDisplayItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count] == 1)
  {
    firstObject = [itemsCopy firstObject];
    bundleIdentifier = [firstObject bundleIdentifier];
    v6 = FBSystemAppBundleID();
    v7 = [bundleIdentifier isEqualToString:v6];

    v8 = [itemsCopy count];
    IsActive = v8 == 0;
    if (v8 && v7)
    {
      IsActive = SBWorkspaceSpringBoardIsActive();
    }
  }

  else
  {
    IsActive = [itemsCopy count] == 0;
  }

  return IsActive ^ 1;
}

- (SBCommandTabViewController)initWithRecentDisplayItems:(id)items iconController:(id)controller
{
  v37[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  controllerCopy = controller;
  v36.receiver = self;
  v36.super_class = SBCommandTabViewController;
  v9 = [(SBCommandTabViewController *)&v36 init];
  if (v9)
  {
    v10 = [itemsCopy mutableCopy];
    recentDisplayItems = v9->_recentDisplayItems;
    v9->_recentDisplayItems = v10;

    v9->_selectedIndex = 0;
    objc_storeStrong(&v9->_iconController, controller);
    iconModel = [(SBIconController *)v9->_iconController iconModel];
    iconModel = v9->_iconModel;
    v9->_iconModel = iconModel;

    currentDevice = ([SBApp activeInterfaceOrientation] - 1);
    v15 = __sb__runningInSpringBoard();
    v16 = v15;
    if (currentDevice <= 1)
    {
      if (v15)
      {
        if (SBFEffectiveDeviceClass() != 2)
        {
          v17 = &SBLogSceneResize_onceToken;
          v18 = 6;
LABEL_9:
          v17[89] = v18;
LABEL_29:
          v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
          iconViews = v9->_iconViews;
          v9->_iconViews = v29;

          v9->_isTouchDown = 0;
          v9->_isIconSelected = 1;
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter addObserver:v9 selector:sel_iconModelDidChange_ name:SBIconControllerIconModelDidChangeNotification object:v9->_iconController];

          v32 = objc_opt_self();
          v37[0] = v32;
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
          v34 = [(SBCommandTabViewController *)v9 registerForTraitChanges:v33 withTarget:v9 action:sel__updateForUserInterfaceStyle];

          goto LABEL_30;
        }

        goto LABEL_11;
      }

      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] == 1)
      {
LABEL_11:
        v19 = __sb__runningInSpringBoard();
        v20 = v19;
        if (v19)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen _referenceBounds];
        }

        BSSizeRoundForScale();
        v25 = v24 < *(MEMORY[0x277D66E30] + 280);
        v26 = 6;
        v27 = 7;
        goto LABEL_23;
      }

      v22 = &SBLogSceneResize_onceToken;
      v23 = 6;
LABEL_20:
      v22[89] = v23;
LABEL_28:

      goto LABEL_29;
    }

    if (v15)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v17 = &SBLogSceneResize_onceToken;
        v18 = 8;
        goto LABEL_9;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] != 1)
      {
        v22 = &SBLogSceneResize_onceToken;
        v23 = 8;
        goto LABEL_20;
      }
    }

    v21 = __sb__runningInSpringBoard();
    v20 = v21;
    if (v21)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    BSSizeRoundForScale();
    v25 = v28 < *(MEMORY[0x277D66E30] + 280);
    v26 = 8;
    v27 = 10;
LABEL_23:
    if (!v25)
    {
      v26 = v27;
    }

    __max_number_of_apps = v26;
    if ((v20 & 1) == 0)
    {
    }

    if (v16)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_30:

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:SBIconControllerIconModelDidChangeNotification object:self->_iconController];

  v4.receiver = self;
  v4.super_class = SBCommandTabViewController;
  [(SBCommandTabViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v145[1] = *MEMORY[0x277D85DE8];
  v143.receiver = self;
  v143.super_class = SBCommandTabViewController;
  [(SBCommandTabViewController *)&v143 viewDidLoad];
  view = [(SBCommandTabViewController *)self view];
  layer = [view layer];
  [layer setHitTestsAsOpaque:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [view setBackgroundColor:clearColor];

  v8 = MEMORY[0x277D75C80];
  traitCollection = [(SBCommandTabViewController *)self traitCollection];
  v10 = [v8 sbh_dockGlassUserInterfaceStyleFromTraitCollection:traitCollection];

  [(SBCommandTabViewController *)self setOverrideUserInterfaceStyle:v10];
  v11 = objc_alloc_init(MEMORY[0x277D763B8]);
  [view _setBackground:v11];

  [view setAlpha:0.0];
  v12 = objc_alloc_init(MEMORY[0x277D75D18]);
  blurredBackgroundView = self->_blurredBackgroundView;
  self->_blurredBackgroundView = v12;

  [(UIView *)self->_blurredBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:2];
  [v14 setExcludingShadow:1];
  [(UIView *)self->_blurredBackgroundView _setBackground:v14];
  [view addSubview:self->_blurredBackgroundView];
  v15 = objc_alloc_init(MEMORY[0x277D663B0]);
  [(SBCommandTabViewController *)self _configureGridLayoutConfiguration:v15];
  v16 = [objc_alloc(MEMORY[0x277D663A8]) initWithLayoutConfiguration:v15];
  v17 = objc_alloc(MEMORY[0x277D66158]);
  v144 = @"SBIconLocationCommandTab";
  v145[0] = v16;
  v136 = v16;
  currentDevice = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:&v144 count:1];
  v140 = [v17 initWithListLayouts:currentDevice];

  v137 = v15;
  [v15 iconImageInfo];
  v21 = v20 / v19;
  v22 = __sb__runningInSpringBoard();
  v23 = v22;
  if (v22)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v24 = v21 * 71.0;
      goto LABEL_15;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      v24 = v21 * 71.0;
LABEL_14:

      goto LABEL_15;
    }
  }

  v25 = __sb__runningInSpringBoard();
  v26 = v25;
  if (v25)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  v27 = 71.0;
  if (v28 >= *(MEMORY[0x277D66E30] + 280))
  {
    v27 = 80.0;
  }

  v24 = v21 * v27;
  if ((v26 & 1) == 0)
  {
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  [(UIView *)self->_blurredBackgroundView _setContinuousCornerRadius:37.0];
  layer2 = [(UIView *)self->_blurredBackgroundView layer];
  [layer2 setAllowsGroupBlending:0];

  layer3 = [(UIView *)self->_blurredBackgroundView layer];
  [layer3 setBorderWidth:0.3];

  v31 = objc_alloc_init(MEMORY[0x277D75A68]);
  currentDevice2 = 1088;
  stackView = self->_stackView;
  self->_stackView = v31;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = self->_stackView;
  v35 = __sb__runningInSpringBoard();
  v36 = v35;
  if (v35)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      [(UIStackView *)v34 setSpacing:16.5];
      goto LABEL_29;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] != 1)
    {
      [(UIStackView *)v34 setSpacing:16.5];
LABEL_28:

      goto LABEL_29;
    }
  }

  v37 = __sb__runningInSpringBoard();
  v38 = v37;
  if (v37)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 _referenceBounds];
  }

  BSSizeRoundForScale();
  v39 = 16.5;
  if (v40 >= *(MEMORY[0x277D66E30] + 280))
  {
    v39 = 20.0;
  }

  [(UIStackView *)v34 setSpacing:v39];
  if ((v38 & 1) == 0)
  {
  }

  if ((v36 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_29:
  [(UIStackView *)self->_stackView setOverrideUserInterfaceStyle:0];
  [(UIView *)self->_blurredBackgroundView addSubview:self->_stackView];
  centerXAnchor = [(UIStackView *)self->_stackView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_blurredBackgroundView centerXAnchor];
  v43 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v43 setActive:1];

  centerYAnchor = [(UIStackView *)self->_stackView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_blurredBackgroundView centerYAnchor];
  currentDevice3 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [currentDevice3 setActive:1];

  v47 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__handleUIGesture_];
  panGestureRecognizer = self->_panGestureRecognizer;
  self->_panGestureRecognizer = v47;

  [(UIStackView *)self->_stackView addGestureRecognizer:self->_panGestureRecognizer];
  v49 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:self action:sel__handleUIGesture_];
  hoverGestureRecognizer = self->_hoverGestureRecognizer;
  self->_hoverGestureRecognizer = v49;

  [(UIStackView *)self->_stackView addGestureRecognizer:self->_hoverGestureRecognizer];
  v51 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapDismissGesture_];
  tapDismissGestureRecognizer = self->_tapDismissGestureRecognizer;
  self->_tapDismissGestureRecognizer = v51;

  [view addGestureRecognizer:self->_tapDismissGestureRecognizer];
  heightAnchor = [(UIView *)self->_blurredBackgroundView heightAnchor];
  mainScreen3 = __sb__runningInSpringBoard();
  v138 = v14;
  if (mainScreen3)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v55 = 0;
      v56 = 0;
      v57 = 111.5;
      goto LABEL_38;
    }
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom] != 1)
    {
      v55 = 0;
      v56 = 1;
      v57 = 111.5;
      goto LABEL_38;
    }
  }

  v56 = mainScreen3 ^ 1;
  v58 = __sb__runningInSpringBoard();
  if (v58)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen3 _referenceBounds];
  }

  v55 = v58 ^ 1;
  BSSizeRoundForScale();
  v57 = dbl_21F8A8320[v59 >= *(MEMORY[0x277D66E30] + 280)];
LABEL_38:
  currentDevice4 = [heightAnchor constraintEqualToConstant:v57];
  [currentDevice4 setActive:1];

  if (v55)
  {
  }

  if (v56)
  {
  }

  centerYAnchor3 = [(UIView *)self->_blurredBackgroundView centerYAnchor];
  centerYAnchor4 = [view centerYAnchor];
  v63 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v63 setActive:1];

  leadingAnchor = [(UIView *)self->_blurredBackgroundView leadingAnchor];
  leadingAnchor2 = [(UIStackView *)self->_stackView leadingAnchor];
  mainScreen4 = __sb__runningInSpringBoard();
  v139 = view;
  if (mainScreen4)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v67 = 0;
      v68 = 0;
      v69 = -27.0;
      goto LABEL_52;
    }
  }

  else
  {
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      v68 = 0;
      v69 = -27.0;
      v67 = 1;
      goto LABEL_52;
    }
  }

  v67 = mainScreen4 ^ 1;
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 _referenceBounds];
  }

  v68 = v70 ^ 1;
  BSSizeRoundForScale();
  v69 = -27.0;
  if (v71 >= *(MEMORY[0x277D66E30] + 280))
  {
    v69 = -31.0;
  }

LABEL_52:
  v72 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v69];
  [v72 setActive:1];

  if (v68)
  {
  }

  if (v67)
  {
  }

  trailingAnchor = [(UIView *)self->_blurredBackgroundView trailingAnchor];
  trailingAnchor2 = [(UIStackView *)self->_stackView trailingAnchor];
  mainScreen5 = __sb__runningInSpringBoard();
  if (!mainScreen5)
  {
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice4 userInterfaceIdiom] != 1)
    {
      v77 = 0;
      v78 = 27.0;
      v76 = 1;
      goto LABEL_66;
    }

LABEL_60:
    v76 = mainScreen5 ^ 1;
    v79 = __sb__runningInSpringBoard();
    if (v79)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen5 _referenceBounds];
    }

    v77 = v79 ^ 1;
    BSSizeRoundForScale();
    v78 = 27.0;
    if (v80 >= *(MEMORY[0x277D66E30] + 280))
    {
      v78 = 31.0;
    }

    goto LABEL_66;
  }

  if (SBFEffectiveDeviceClass() == 2)
  {
    goto LABEL_60;
  }

  v76 = 0;
  v77 = 0;
  v78 = 27.0;
LABEL_66:
  v81 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v78];
  [v81 setActive:1];

  if (v77)
  {
  }

  if (v76)
  {
  }

  centerXAnchor3 = [(UIView *)self->_blurredBackgroundView centerXAnchor];
  centerXAnchor4 = [v139 centerXAnchor];
  v84 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v84 setActive:1];

  v85 = objc_opt_new();
  selectionSquareView = self->_selectionSquareView;
  self->_selectionSquareView = v85;

  [(UIView *)self->_selectionSquareView _setContinuousCornerRadius:v24];
  [(UIView *)self->_selectionSquareView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView addSubview:self->_selectionSquareView];
  v87 = __max_number_of_apps;
  v88 = [(NSMutableOrderedSet *)self->_recentDisplayItems count];
  if (v87 >= v88)
  {
    v89 = v88;
  }

  else
  {
    v89 = v87;
  }

  v90 = [(NSMutableOrderedSet *)self->_recentDisplayItems indexOfObjectPassingTest:&__block_literal_global_351];
  if (v90 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v91 = v140;
  }

  else
  {
    v92 = [(NSMutableOrderedSet *)self->_recentDisplayItems objectAtIndex:v90];
    [(NSMutableOrderedSet *)self->_recentDisplayItems removeObject:v92];
    v91 = v140;
    if (SBWorkspaceSpringBoardIsActive())
    {
      --v89;
    }

    else
    {
      [(NSMutableOrderedSet *)self->_recentDisplayItems insertObject:v92 atIndex:v89 - 1];
    }
  }

  iconManager = [(SBIconController *)self->_iconController iconManager];
  iconImageCache = [iconManager iconImageCache];
  if (!v89)
  {
    goto LABEL_97;
  }

  v93 = 0;
  v142 = 0;
  do
  {
    v94 = [(NSMutableOrderedSet *)self->_recentDisplayItems objectAtIndex:v93];
    bundleIdentifier = [v94 bundleIdentifier];
    v96 = FBSystemAppBundleID();
    v97 = [bundleIdentifier isEqualToString:v96];

    if (v97)
    {
      v98 = objc_alloc_init(SBSpringBoardApplicationIcon);
    }

    else
    {
      type = [v94 type];
      iconModel = self->_iconModel;
      if (type == 5)
      {
        webClipIdentifier = [v94 webClipIdentifier];
        v102 = [(SBIconModel *)iconModel bookmarkIconForWebClipIdentifier:webClipIdentifier];

        v91 = v140;
        if (v102)
        {
          goto LABEL_90;
        }

        goto LABEL_85;
      }

      v98 = [(SBIconModel *)self->_iconModel applicationIconForBundleIdentifier:bundleIdentifier];
    }

    v102 = v98;
    if (v98)
    {
LABEL_90:
      v104 = [[SBCommandTabIconView alloc] initWithConfigurationOptions:2];
      [(SBCommandTabIconView *)v104 setLocation:@"SBIconLocationCommandTab"];
      [(SBCommandTabIconView *)v104 setDelegate:self];
      [(SBCommandTabIconView *)v104 setIconImageCache:iconImageCache];
      [(SBCommandTabIconView *)v104 setListLayoutProvider:v91];
      [(SBCommandTabIconView *)v104 setIcon:v102];
      [(SBCommandTabIconView *)v104 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(NSMutableArray *)self->_iconViews addObject:v104];
      [(UIStackView *)self->_stackView addArrangedSubview:v104];
      if (v97)
      {
        objc_storeStrong(&self->_homeIconView, v104);
      }

      goto LABEL_93;
    }

LABEL_85:
    v103 = v142;
    if (!v142)
    {
      v103 = objc_alloc_init(MEMORY[0x277CCAB58]);
    }

    v142 = v103;
    [v103 addIndex:v93];
LABEL_93:

    ++v93;
  }

  while (v89 != v93);
  if (!v142)
  {
LABEL_97:
    v142 = 0;
    goto LABEL_98;
  }

  [(NSMutableOrderedSet *)self->_recentDisplayItems removeObjectsAtIndexes:?];
  if (![(NSMutableOrderedSet *)self->_recentDisplayItems count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained viewControllerWantsDismissal:self];
    v106 = v138;
    goto LABEL_127;
  }

LABEL_98:
  v107 = MEMORY[0x277D75C80];
  traitCollection2 = [(SBCommandTabViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
  v110 = UIContentSizeCategoryClip();
  WeakRetained = [v107 traitCollectionWithPreferredContentSizeCategory:v110];

  v111 = *MEMORY[0x277D76940];
  v112 = objc_alloc_init(MEMORY[0x277D756B8]);
  selectedIconLabel = self->_selectedIconLabel;
  self->_selectedIconLabel = v112;

  v114 = self->_selectedIconLabel;
  v115 = [MEMORY[0x277D74300] preferredFontForTextStyle:v111 compatibleWithTraitCollection:WeakRetained];
  [(UILabel *)v114 setFont:v115];

  [(UILabel *)self->_selectedIconLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView addSubview:self->_selectedIconLabel];
  centerYAnchor5 = [(UIView *)self->_selectionSquareView centerYAnchor];
  centerYAnchor6 = [(UIStackView *)self->_stackView centerYAnchor];
  currentDevice5 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  [currentDevice5 setActive:1];

  heightAnchor2 = [(UIView *)self->_selectionSquareView heightAnchor];
  mainScreen6 = __sb__runningInSpringBoard();
  if (mainScreen6)
  {
    v106 = v138;
    if (SBFEffectiveDeviceClass() != 2)
    {
      v121 = 0;
      v122 = 0;
      v123 = 71.0;
      goto LABEL_108;
    }

LABEL_102:
    v121 = mainScreen6 ^ 1;
    v124 = __sb__runningInSpringBoard();
    if (v124)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 _referenceBounds];
    }

    v122 = v124 ^ 1;
    BSSizeRoundForScale();
    v123 = 71.0;
    if (v125 >= *(MEMORY[0x277D66E30] + 280))
    {
      v123 = 80.0;
    }
  }

  else
  {
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    v106 = v138;
    if ([currentDevice5 userInterfaceIdiom] == 1)
    {
      goto LABEL_102;
    }

    v122 = 0;
    v121 = 1;
    v123 = 71.0;
  }

LABEL_108:
  v126 = [heightAnchor2 constraintEqualToConstant:v123];
  [v126 setActive:1];

  if (v122)
  {
  }

  if (v121)
  {
  }

  widthAnchor = [(UIView *)self->_selectionSquareView widthAnchor];
  mainScreen7 = __sb__runningInSpringBoard();
  if (!mainScreen7)
  {
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice5 userInterfaceIdiom] != 1)
    {
      v130 = 0;
      v129 = 1;
      v131 = 71.0;
      goto LABEL_122;
    }

LABEL_116:
    v129 = mainScreen7 ^ 1;
    v132 = __sb__runningInSpringBoard();
    if (v132)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
    }

    v130 = v132 ^ 1;
    BSSizeRoundForScale();
    v131 = 71.0;
    if (v133 >= *(MEMORY[0x277D66E30] + 280))
    {
      v131 = 80.0;
    }

    goto LABEL_122;
  }

  if (SBFEffectiveDeviceClass() == 2)
  {
    goto LABEL_116;
  }

  v129 = 0;
  v130 = 0;
  v131 = 71.0;
LABEL_122:
  v134 = [widthAnchor constraintEqualToConstant:v131];
  [v134 setActive:1];

  if (v130)
  {
  }

  if (v129)
  {
  }

  [(SBCommandTabViewController *)self _updateForUserInterfaceStyle];
  [(SBCommandTabViewController *)self _moveSelectionSquareToIconAtIndex:self->_selectedIndex];

  v91 = v140;
LABEL_127:
}

uint64_t __41__SBCommandTabViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 bundleIdentifier];
  v6 = FBSystemAppBundleID();
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

- (void)showCommandTabBar
{
  view = [(SBCommandTabViewController *)self view];
  [view setAlpha:1.0];
}

- (void)next
{
  selectedIndex = self->_selectedIndex;
  if (selectedIndex == [(NSMutableArray *)self->_iconViews count]- 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = self->_selectedIndex + 1;
  }

  self->_selectedIndex = v4;

  [(SBCommandTabViewController *)self _moveSelectionSquareToIconAtIndex:?];
}

- (void)previous
{
  v3 = [(NSMutableArray *)self->_iconViews count];
  if (v3 != 1)
  {
    selectedIndex = self->_selectedIndex;
    if (!selectedIndex)
    {
      selectedIndex = v3;
    }

    self->_selectedIndex = selectedIndex - 1;

    [(SBCommandTabViewController *)self _moveSelectionSquareToIconAtIndex:?];
  }
}

- (id)selectedApplicationDisplayItem
{
  if (self->_isIconSelected)
  {
    v4 = [(NSMutableOrderedSet *)self->_recentDisplayItems objectAtIndex:self->_selectedIndex, v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)removeDisplayItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v11 = itemCopy;
    v5 = [(SBCommandTabViewController *)self indexOfDisplayItem:itemCopy];
    itemCopy = v11;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(NSMutableArray *)self->_iconViews objectAtIndex:v5];
      [v6 removeFromSuperview];
      [(NSMutableArray *)self->_iconViews removeObject:v6];
      selectedIndex = self->_selectedIndex;
      v8 = [(NSMutableArray *)self->_iconViews count];
      if (selectedIndex >= v8 - 1)
      {
        v9 = v8 - 1;
      }

      else
      {
        v9 = selectedIndex;
      }

      self->_selectedIndex = v9;
      [(SBCommandTabViewController *)self _moveSelectionSquareToIconAtIndex:?];
      [(NSMutableOrderedSet *)self->_recentDisplayItems removeObject:v11];
      if (![(NSMutableOrderedSet *)self->_recentDisplayItems count]|| ![(NSMutableArray *)self->_iconViews count])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained viewControllerWantsDismissal:self];
      }

      itemCopy = v11;
    }
  }
}

- (void)iconModelDidChange:(id)change
{
  iconModel = [(SBIconController *)self->_iconController iconModel];
  iconModel = self->_iconModel;
  self->_iconModel = iconModel;
}

- (void)iconTouchBegan:(id)began
{
  beganCopy = began;
  if ([(NSMutableArray *)self->_iconViews count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_iconViews objectAtIndex:v4];
      if ([v5 isEqual:beganCopy])
      {
        self->_selectedIndex = v4;
        [(SBCommandTabViewController *)self _moveSelectionSquareToIconAtIndex:v4];
      }

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_iconViews count]);
  }
}

- (void)icon:(id)icon touchEnded:(BOOL)ended
{
  if (!ended)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    selectedApplicationDisplayItem = [(SBCommandTabViewController *)self selectedApplicationDisplayItem];
    [WeakRetained viewController:self selectedApplicationWithDisplayItem:selectedApplicationDisplayItem];
  }
}

- (void)iconTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([(NSMutableArray *)self->_iconViews count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_iconViews objectAtIndex:v4];
      if ([v5 isEqual:tappedCopy])
      {
        self->_selectedIndex = v4;
        [(SBCommandTabViewController *)self _moveSelectionSquareToIconAtIndex:v4];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        selectedApplicationDisplayItem = [(SBCommandTabViewController *)self selectedApplicationDisplayItem];
        [WeakRetained viewController:self selectedApplicationWithDisplayItem:selectedApplicationDisplayItem];
      }

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_iconViews count]);
  }
}

- (BOOL)iconViewDisplaysAccessories:(id)accessories
{
  iconController = self->_iconController;
  icon = [accessories icon];
  LOBYTE(iconController) = [(SBIconController *)iconController allowsBadgingForIcon:icon];

  return iconController;
}

- (void)_moveSelectionSquareToIconAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_iconViews count]> index)
  {
    v5 = [(NSMutableArray *)self->_iconViews objectAtIndex:index];
    selectedIconView = self->_selectedIconView;
    self->_selectedIconView = v5;

    [(UIView *)self->_selectionSquareView setAlpha:1.0];
    [(UILabel *)self->_selectedIconLabel setAlpha:1.0];
    self->_isIconSelected = 1;
    [(SBCommandTabViewController *)self _updateIconSelectionPositionAndLabelText];
    view = [(SBCommandTabViewController *)self view];
    [view setNeedsDisplay];
  }
}

- (void)_updateIconSelectionPositionAndLabelText
{
  [(UIStackView *)self->_stackView removeConstraint:self->_selectionXLayoutConstraint];
  v3 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_selectionSquareView attribute:9 relatedBy:0 toItem:self->_selectedIconView attribute:9 multiplier:1.0 constant:0.0];
  selectionXLayoutConstraint = self->_selectionXLayoutConstraint;
  self->_selectionXLayoutConstraint = v3;

  [(UIStackView *)self->_stackView addConstraint:self->_selectionXLayoutConstraint];
  selectedIconLabel = self->_selectedIconLabel;
  icon = [(SBIconView *)self->_selectedIconView icon];
  displayName = [icon displayName];
  [(UILabel *)selectedIconLabel setText:displayName];

  [(UILabel *)self->_selectedIconLabel sizeToFit];
  [(UIStackView *)self->_stackView removeConstraint:self->_selectedLabelXConstraint];
  [(UIStackView *)self->_stackView removeConstraint:self->_selectedLabelBottomConstraint];
  v8 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_selectedIconLabel attribute:9 relatedBy:0 toItem:self->_selectionSquareView attribute:9 multiplier:1.0 constant:0.0];
  selectedLabelXConstraint = self->_selectedLabelXConstraint;
  self->_selectedLabelXConstraint = v8;

  [(UIStackView *)self->_stackView addConstraint:self->_selectedLabelXConstraint];
  v10 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_selectedIconLabel attribute:12 relatedBy:0 toItem:self->_blurredBackgroundView attribute:4 multiplier:1.0 constant:-8.0];
  selectedLabelBottomConstraint = self->_selectedLabelBottomConstraint;
  self->_selectedLabelBottomConstraint = v10;

  blurredBackgroundView = self->_blurredBackgroundView;
  v13 = self->_selectedLabelBottomConstraint;

  [(UIView *)blurredBackgroundView addConstraint:v13];
}

- (void)_handleUIGesture:(id)gesture
{
  gestureCopy = gesture;
  self->_isTouchDown = 1;
  superview = [(UIStackView *)self->_stackView superview];
  [(UIHoverGestureRecognizer *)gestureCopy locationInView:superview];
  v6 = v5;
  v8 = v7;

  if (self->_hoverGestureRecognizer == gestureCopy)
  {
    if (v6 == self->_lastHoverLocation.x && v8 == self->_lastHoverLocation.y)
    {
      goto LABEL_15;
    }

    self->_lastHoverLocation.x = v6;
    self->_lastHoverLocation.y = v8;
  }

  [(UIStackView *)self->_stackView frame];
  v20.x = v6;
  v20.y = v8;
  if (CGRectContainsPoint(v23, v20))
  {
    if ([(NSMutableArray *)self->_iconViews count])
    {
      v10 = 0;
      while (1)
      {
        [(UIHoverGestureRecognizer *)gestureCopy locationInView:self->_stackView];
        v12 = v11;
        v14 = v13;
        v15 = [(NSMutableArray *)self->_iconViews objectAtIndex:v10];
        [v15 frame];
        v21.x = v12;
        v21.y = v14;
        if (CGRectContainsPoint(v24, v21))
        {
          break;
        }

        if (++v10 >= [(NSMutableArray *)self->_iconViews count])
        {
          goto LABEL_15;
        }
      }

      self->_selectedIndex = v10;
      [(SBCommandTabViewController *)self _moveSelectionSquareToIconAtIndex:v10];
    }
  }

  else
  {
    [(UIView *)self->_selectionSquareView setAlpha:0.0];
    [(UILabel *)self->_selectedIconLabel setAlpha:0.0];
    self->_isIconSelected = 0;
  }

LABEL_15:
  if ([(UIHoverGestureRecognizer *)gestureCopy state]== 3)
  {
    self->_isTouchDown = 0;
    delegate = [(SBCommandTabViewController *)self delegate];
    [(UIStackView *)self->_stackView frame];
    v22.x = v6;
    v22.y = v8;
    if (CGRectContainsPoint(v25, v22) && self->_isIconSelected)
    {
      selectedApplicationDisplayItem = [(SBCommandTabViewController *)self selectedApplicationDisplayItem];
      [delegate viewController:self selectedApplicationWithDisplayItem:selectedApplicationDisplayItem];
    }
  }
}

- (void)_handleTapDismissGesture:(id)gesture
{
  if ([gesture state] == 3)
  {
    delegate = [(SBCommandTabViewController *)self delegate];
    [delegate viewControllerWantsDismissal:self];
  }
}

- (void)_updateForUserInterfaceStyle
{
  traitCollection = [(SBCommandTabViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  layer = [(UIView *)self->_blurredBackgroundView layer];
  v5 = 0.0;
  if (userInterfaceStyle == 2)
  {
    v5 = 1.0;
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x277D75348] colorWithWhite:v5 alpha:0.08];
  [layer setBorderColor:{objc_msgSend(v7, "CGColor")}];

  selectionSquareView = self->_selectionSquareView;
  systemFillColor = [MEMORY[0x277D75348] systemFillColor];
  v10 = [systemFillColor resolvedColorWithTraitCollection:traitCollection];
  [(UIView *)selectionSquareView setBackgroundColor:v10];

  [(UIView *)self->_selectionSquareView _setDrawsAsBackdropOverlayWithBlendMode:v6];
  selectedIconLabel = self->_selectedIconLabel;
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  v13 = [secondaryLabelColor resolvedColorWithTraitCollection:traitCollection];
  [(UILabel *)selectedIconLabel setTextColor:v13];

  [(UILabel *)self->_selectedIconLabel _setDrawsAsBackdropOverlayWithBlendMode:v6];
}

- (void)_configureGridLayoutConfiguration:(id)configuration
{
  configurationCopy = configuration;
  iconAccessoryVisualConfiguration = [configurationCopy iconAccessoryVisualConfiguration];
  currentDeviceScreenType = [MEMORY[0x277D66160] currentDeviceScreenType];
  v6 = 16.0;
  if ((currentDeviceScreenType - 100) > 0x12)
  {
    v8 = 11.0;
    v9 = 26.0;
    v10 = 60.0;
    v7 = 11.0;
  }

  else if (((1 << (currentDeviceScreenType - 100)) & 0x2D7EF) != 0)
  {
    v7 = 9.0;
    v8 = 10.0;
    v9 = 26.0;
    v10 = 65.6;
  }

  else
  {
    v8 = 12.0;
    v9 = 27.0;
    v10 = 72.0;
    v6 = 18.5;
    v7 = 12.0;
  }

  [iconAccessoryVisualConfiguration setFontSize:v6];
  [iconAccessoryVisualConfiguration setSize:{v9, v9}];
  [iconAccessoryVisualConfiguration setOffset:{v8, v7}];
  traitCollection = [(SBCommandTabViewController *)self traitCollection];
  [traitCollection displayScale];

  MEMORY[0x223D6D370](v10);
  SBIconImageInfoMake();
  [configurationCopy setIconImageInfo:?];
}

- (SBCommandTabViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end