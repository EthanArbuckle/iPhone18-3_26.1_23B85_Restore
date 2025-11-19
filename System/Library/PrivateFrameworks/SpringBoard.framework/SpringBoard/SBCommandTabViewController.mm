@interface SBCommandTabViewController
+ (BOOL)canActivateWithRecentDisplayItems:(id)a3;
- (BOOL)iconViewDisplaysAccessories:(id)a3;
- (SBCommandTabViewController)initWithRecentDisplayItems:(id)a3 iconController:(id)a4;
- (SBCommandTabViewControllerDelegate)delegate;
- (id)selectedApplicationDisplayItem;
- (void)_configureGridLayoutConfiguration:(id)a3;
- (void)_handleTapDismissGesture:(id)a3;
- (void)_handleUIGesture:(id)a3;
- (void)_moveSelectionSquareToIconAtIndex:(unint64_t)a3;
- (void)_updateForUserInterfaceStyle;
- (void)_updateIconSelectionPositionAndLabelText;
- (void)dealloc;
- (void)icon:(id)a3 touchEnded:(BOOL)a4;
- (void)iconModelDidChange:(id)a3;
- (void)iconTapped:(id)a3;
- (void)iconTouchBegan:(id)a3;
- (void)next;
- (void)previous;
- (void)removeDisplayItem:(id)a3;
- (void)showCommandTabBar;
- (void)viewDidLoad;
@end

@implementation SBCommandTabViewController

+ (BOOL)canActivateWithRecentDisplayItems:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = [v4 bundleIdentifier];
    v6 = FBSystemAppBundleID();
    v7 = [v5 isEqualToString:v6];

    v8 = [v3 count];
    IsActive = v8 == 0;
    if (v8 && v7)
    {
      IsActive = SBWorkspaceSpringBoardIsActive();
    }
  }

  else
  {
    IsActive = [v3 count] == 0;
  }

  return IsActive ^ 1;
}

- (SBCommandTabViewController)initWithRecentDisplayItems:(id)a3 iconController:(id)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v36.receiver = self;
  v36.super_class = SBCommandTabViewController;
  v9 = [(SBCommandTabViewController *)&v36 init];
  if (v9)
  {
    v10 = [v7 mutableCopy];
    recentDisplayItems = v9->_recentDisplayItems;
    v9->_recentDisplayItems = v10;

    v9->_selectedIndex = 0;
    objc_storeStrong(&v9->_iconController, a4);
    v12 = [(SBIconController *)v9->_iconController iconModel];
    iconModel = v9->_iconModel;
    v9->_iconModel = v12;

    v14 = ([SBApp activeInterfaceOrientation] - 1);
    v15 = __sb__runningInSpringBoard();
    v16 = v15;
    if (v14 <= 1)
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
          v31 = [MEMORY[0x277CCAB98] defaultCenter];
          [v31 addObserver:v9 selector:sel_iconModelDidChange_ name:SBIconControllerIconModelDidChangeNotification object:v9->_iconController];

          v32 = objc_opt_self();
          v37[0] = v32;
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
          v34 = [(SBCommandTabViewController *)v9 registerForTraitChanges:v33 withTarget:v9 action:sel__updateForUserInterfaceStyle];

          goto LABEL_30;
        }

        goto LABEL_11;
      }

      v14 = [MEMORY[0x277D75418] currentDevice];
      if ([v14 userInterfaceIdiom] == 1)
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
          v4 = [MEMORY[0x277D759A0] mainScreen];
          [v4 _referenceBounds];
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
      v14 = [MEMORY[0x277D75418] currentDevice];
      if ([v14 userInterfaceIdiom] != 1)
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
      v4 = [MEMORY[0x277D759A0] mainScreen];
      [v4 _referenceBounds];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:SBIconControllerIconModelDidChangeNotification object:self->_iconController];

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
  v5 = [(SBCommandTabViewController *)self view];
  v6 = [v5 layer];
  [v6 setHitTestsAsOpaque:1];

  v7 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v7];

  v8 = MEMORY[0x277D75C80];
  v9 = [(SBCommandTabViewController *)self traitCollection];
  v10 = [v8 sbh_dockGlassUserInterfaceStyleFromTraitCollection:v9];

  [(SBCommandTabViewController *)self setOverrideUserInterfaceStyle:v10];
  v11 = objc_alloc_init(MEMORY[0x277D763B8]);
  [v5 _setBackground:v11];

  [v5 setAlpha:0.0];
  v12 = objc_alloc_init(MEMORY[0x277D75D18]);
  blurredBackgroundView = self->_blurredBackgroundView;
  self->_blurredBackgroundView = v12;

  [(UIView *)self->_blurredBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:2];
  [v14 setExcludingShadow:1];
  [(UIView *)self->_blurredBackgroundView _setBackground:v14];
  [v5 addSubview:self->_blurredBackgroundView];
  v15 = objc_alloc_init(MEMORY[0x277D663B0]);
  [(SBCommandTabViewController *)self _configureGridLayoutConfiguration:v15];
  v16 = [objc_alloc(MEMORY[0x277D663A8]) initWithLayoutConfiguration:v15];
  v17 = objc_alloc(MEMORY[0x277D66158]);
  v144 = @"SBIconLocationCommandTab";
  v145[0] = v16;
  v136 = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:&v144 count:1];
  v140 = [v17 initWithListLayouts:v18];

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
    v18 = [MEMORY[0x277D75418] currentDevice];
    if ([v18 userInterfaceIdiom] != 1)
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
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
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
  v29 = [(UIView *)self->_blurredBackgroundView layer];
  [v29 setAllowsGroupBlending:0];

  v30 = [(UIView *)self->_blurredBackgroundView layer];
  [v30 setBorderWidth:0.3];

  v31 = objc_alloc_init(MEMORY[0x277D75A68]);
  v32 = 1088;
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
    v32 = [MEMORY[0x277D75418] currentDevice];
    if ([v32 userInterfaceIdiom] != 1)
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
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 _referenceBounds];
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
  v41 = [(UIStackView *)self->_stackView centerXAnchor];
  v42 = [(UIView *)self->_blurredBackgroundView centerXAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  [v43 setActive:1];

  v44 = [(UIStackView *)self->_stackView centerYAnchor];
  v45 = [(UIView *)self->_blurredBackgroundView centerYAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  [v46 setActive:1];

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

  [v5 addGestureRecognizer:self->_tapDismissGestureRecognizer];
  v53 = [(UIView *)self->_blurredBackgroundView heightAnchor];
  v54 = __sb__runningInSpringBoard();
  v138 = v14;
  if (v54)
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
    v46 = [MEMORY[0x277D75418] currentDevice];
    if ([v46 userInterfaceIdiom] != 1)
    {
      v55 = 0;
      v56 = 1;
      v57 = 111.5;
      goto LABEL_38;
    }
  }

  v56 = v54 ^ 1;
  v58 = __sb__runningInSpringBoard();
  if (v58)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v54 = [MEMORY[0x277D759A0] mainScreen];
    [v54 _referenceBounds];
  }

  v55 = v58 ^ 1;
  BSSizeRoundForScale();
  v57 = dbl_21F8A8320[v59 >= *(MEMORY[0x277D66E30] + 280)];
LABEL_38:
  v60 = [v53 constraintEqualToConstant:v57];
  [v60 setActive:1];

  if (v55)
  {
  }

  if (v56)
  {
  }

  v61 = [(UIView *)self->_blurredBackgroundView centerYAnchor];
  v62 = [v5 centerYAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];
  [v63 setActive:1];

  v64 = [(UIView *)self->_blurredBackgroundView leadingAnchor];
  v65 = [(UIStackView *)self->_stackView leadingAnchor];
  v66 = __sb__runningInSpringBoard();
  v139 = v5;
  if (v66)
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
    v60 = [MEMORY[0x277D75418] currentDevice];
    if ([v60 userInterfaceIdiom] != 1)
    {
      v68 = 0;
      v69 = -27.0;
      v67 = 1;
      goto LABEL_52;
    }
  }

  v67 = v66 ^ 1;
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v66 = [MEMORY[0x277D759A0] mainScreen];
    [v66 _referenceBounds];
  }

  v68 = v70 ^ 1;
  BSSizeRoundForScale();
  v69 = -27.0;
  if (v71 >= *(MEMORY[0x277D66E30] + 280))
  {
    v69 = -31.0;
  }

LABEL_52:
  v72 = [v64 constraintEqualToAnchor:v65 constant:v69];
  [v72 setActive:1];

  if (v68)
  {
  }

  if (v67)
  {
  }

  v73 = [(UIView *)self->_blurredBackgroundView trailingAnchor];
  v74 = [(UIStackView *)self->_stackView trailingAnchor];
  v75 = __sb__runningInSpringBoard();
  if (!v75)
  {
    v60 = [MEMORY[0x277D75418] currentDevice];
    if ([v60 userInterfaceIdiom] != 1)
    {
      v77 = 0;
      v78 = 27.0;
      v76 = 1;
      goto LABEL_66;
    }

LABEL_60:
    v76 = v75 ^ 1;
    v79 = __sb__runningInSpringBoard();
    if (v79)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v75 = [MEMORY[0x277D759A0] mainScreen];
      [v75 _referenceBounds];
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
  v81 = [v73 constraintEqualToAnchor:v74 constant:v78];
  [v81 setActive:1];

  if (v77)
  {
  }

  if (v76)
  {
  }

  v82 = [(UIView *)self->_blurredBackgroundView centerXAnchor];
  v83 = [v139 centerXAnchor];
  v84 = [v82 constraintEqualToAnchor:v83];
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

  v135 = [(SBIconController *)self->_iconController iconManager];
  v141 = [v135 iconImageCache];
  if (!v89)
  {
    goto LABEL_97;
  }

  v93 = 0;
  v142 = 0;
  do
  {
    v94 = [(NSMutableOrderedSet *)self->_recentDisplayItems objectAtIndex:v93];
    v95 = [v94 bundleIdentifier];
    v96 = FBSystemAppBundleID();
    v97 = [v95 isEqualToString:v96];

    if (v97)
    {
      v98 = objc_alloc_init(SBSpringBoardApplicationIcon);
    }

    else
    {
      v99 = [v94 type];
      iconModel = self->_iconModel;
      if (v99 == 5)
      {
        v101 = [v94 webClipIdentifier];
        v102 = [(SBIconModel *)iconModel bookmarkIconForWebClipIdentifier:v101];

        v91 = v140;
        if (v102)
        {
          goto LABEL_90;
        }

        goto LABEL_85;
      }

      v98 = [(SBIconModel *)self->_iconModel applicationIconForBundleIdentifier:v95];
    }

    v102 = v98;
    if (v98)
    {
LABEL_90:
      v104 = [[SBCommandTabIconView alloc] initWithConfigurationOptions:2];
      [(SBCommandTabIconView *)v104 setLocation:@"SBIconLocationCommandTab"];
      [(SBCommandTabIconView *)v104 setDelegate:self];
      [(SBCommandTabIconView *)v104 setIconImageCache:v141];
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
  v108 = [(SBCommandTabViewController *)self traitCollection];
  v109 = [v108 preferredContentSizeCategory];
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
  v116 = [(UIView *)self->_selectionSquareView centerYAnchor];
  v117 = [(UIStackView *)self->_stackView centerYAnchor];
  v118 = [v116 constraintEqualToAnchor:v117];
  [v118 setActive:1];

  v119 = [(UIView *)self->_selectionSquareView heightAnchor];
  v120 = __sb__runningInSpringBoard();
  if (v120)
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
    v121 = v120 ^ 1;
    v124 = __sb__runningInSpringBoard();
    if (v124)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v120 = [MEMORY[0x277D759A0] mainScreen];
      [v120 _referenceBounds];
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
    v118 = [MEMORY[0x277D75418] currentDevice];
    v106 = v138;
    if ([v118 userInterfaceIdiom] == 1)
    {
      goto LABEL_102;
    }

    v122 = 0;
    v121 = 1;
    v123 = 71.0;
  }

LABEL_108:
  v126 = [v119 constraintEqualToConstant:v123];
  [v126 setActive:1];

  if (v122)
  {
  }

  if (v121)
  {
  }

  v127 = [(UIView *)self->_selectionSquareView widthAnchor];
  v128 = __sb__runningInSpringBoard();
  if (!v128)
  {
    v118 = [MEMORY[0x277D75418] currentDevice];
    if ([v118 userInterfaceIdiom] != 1)
    {
      v130 = 0;
      v129 = 1;
      v131 = 71.0;
      goto LABEL_122;
    }

LABEL_116:
    v129 = v128 ^ 1;
    v132 = __sb__runningInSpringBoard();
    if (v132)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v128 = [MEMORY[0x277D759A0] mainScreen];
      [v128 _referenceBounds];
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
  v134 = [v127 constraintEqualToConstant:v131];
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
  v2 = [(SBCommandTabViewController *)self view];
  [v2 setAlpha:1.0];
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

- (void)removeDisplayItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    v5 = [(SBCommandTabViewController *)self indexOfDisplayItem:v4];
    v4 = v11;
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

      v4 = v11;
    }
  }
}

- (void)iconModelDidChange:(id)a3
{
  v4 = [(SBIconController *)self->_iconController iconModel];
  iconModel = self->_iconModel;
  self->_iconModel = v4;
}

- (void)iconTouchBegan:(id)a3
{
  v6 = a3;
  if ([(NSMutableArray *)self->_iconViews count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_iconViews objectAtIndex:v4];
      if ([v5 isEqual:v6])
      {
        self->_selectedIndex = v4;
        [(SBCommandTabViewController *)self _moveSelectionSquareToIconAtIndex:v4];
      }

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_iconViews count]);
  }
}

- (void)icon:(id)a3 touchEnded:(BOOL)a4
{
  if (!a4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [(SBCommandTabViewController *)self selectedApplicationDisplayItem];
    [WeakRetained viewController:self selectedApplicationWithDisplayItem:v6];
  }
}

- (void)iconTapped:(id)a3
{
  v8 = a3;
  if ([(NSMutableArray *)self->_iconViews count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_iconViews objectAtIndex:v4];
      if ([v5 isEqual:v8])
      {
        self->_selectedIndex = v4;
        [(SBCommandTabViewController *)self _moveSelectionSquareToIconAtIndex:v4];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v7 = [(SBCommandTabViewController *)self selectedApplicationDisplayItem];
        [WeakRetained viewController:self selectedApplicationWithDisplayItem:v7];
      }

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_iconViews count]);
  }
}

- (BOOL)iconViewDisplaysAccessories:(id)a3
{
  iconController = self->_iconController;
  v4 = [a3 icon];
  LOBYTE(iconController) = [(SBIconController *)iconController allowsBadgingForIcon:v4];

  return iconController;
}

- (void)_moveSelectionSquareToIconAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_iconViews count]> a3)
  {
    v5 = [(NSMutableArray *)self->_iconViews objectAtIndex:a3];
    selectedIconView = self->_selectedIconView;
    self->_selectedIconView = v5;

    [(UIView *)self->_selectionSquareView setAlpha:1.0];
    [(UILabel *)self->_selectedIconLabel setAlpha:1.0];
    self->_isIconSelected = 1;
    [(SBCommandTabViewController *)self _updateIconSelectionPositionAndLabelText];
    v7 = [(SBCommandTabViewController *)self view];
    [v7 setNeedsDisplay];
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
  v6 = [(SBIconView *)self->_selectedIconView icon];
  v7 = [v6 displayName];
  [(UILabel *)selectedIconLabel setText:v7];

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

- (void)_handleUIGesture:(id)a3
{
  v18 = a3;
  self->_isTouchDown = 1;
  v4 = [(UIStackView *)self->_stackView superview];
  [(UIHoverGestureRecognizer *)v18 locationInView:v4];
  v6 = v5;
  v8 = v7;

  if (self->_hoverGestureRecognizer == v18)
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
        [(UIHoverGestureRecognizer *)v18 locationInView:self->_stackView];
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
  if ([(UIHoverGestureRecognizer *)v18 state]== 3)
  {
    self->_isTouchDown = 0;
    v16 = [(SBCommandTabViewController *)self delegate];
    [(UIStackView *)self->_stackView frame];
    v22.x = v6;
    v22.y = v8;
    if (CGRectContainsPoint(v25, v22) && self->_isIconSelected)
    {
      v17 = [(SBCommandTabViewController *)self selectedApplicationDisplayItem];
      [v16 viewController:self selectedApplicationWithDisplayItem:v17];
    }
  }
}

- (void)_handleTapDismissGesture:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(SBCommandTabViewController *)self delegate];
    [v4 viewControllerWantsDismissal:self];
  }
}

- (void)_updateForUserInterfaceStyle
{
  v14 = [(SBCommandTabViewController *)self traitCollection];
  v3 = [v14 userInterfaceStyle];
  v4 = [(UIView *)self->_blurredBackgroundView layer];
  v5 = 0.0;
  if (v3 == 2)
  {
    v5 = 1.0;
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x277D75348] colorWithWhite:v5 alpha:0.08];
  [v4 setBorderColor:{objc_msgSend(v7, "CGColor")}];

  selectionSquareView = self->_selectionSquareView;
  v9 = [MEMORY[0x277D75348] systemFillColor];
  v10 = [v9 resolvedColorWithTraitCollection:v14];
  [(UIView *)selectionSquareView setBackgroundColor:v10];

  [(UIView *)self->_selectionSquareView _setDrawsAsBackdropOverlayWithBlendMode:v6];
  selectedIconLabel = self->_selectedIconLabel;
  v12 = [MEMORY[0x277D75348] secondaryLabelColor];
  v13 = [v12 resolvedColorWithTraitCollection:v14];
  [(UILabel *)selectedIconLabel setTextColor:v13];

  [(UILabel *)self->_selectedIconLabel _setDrawsAsBackdropOverlayWithBlendMode:v6];
}

- (void)_configureGridLayoutConfiguration:(id)a3
{
  v4 = a3;
  v12 = [v4 iconAccessoryVisualConfiguration];
  v5 = [MEMORY[0x277D66160] currentDeviceScreenType];
  v6 = 16.0;
  if ((v5 - 100) > 0x12)
  {
    v8 = 11.0;
    v9 = 26.0;
    v10 = 60.0;
    v7 = 11.0;
  }

  else if (((1 << (v5 - 100)) & 0x2D7EF) != 0)
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

  [v12 setFontSize:v6];
  [v12 setSize:{v9, v9}];
  [v12 setOffset:{v8, v7}];
  v11 = [(SBCommandTabViewController *)self traitCollection];
  [v11 displayScale];

  MEMORY[0x223D6D370](v10);
  SBIconImageInfoMake();
  [v4 setIconImageInfo:?];
}

- (SBCommandTabViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end