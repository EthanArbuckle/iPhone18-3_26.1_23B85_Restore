@interface TVRUIMediaControlsViewController
- (BOOL)_shouldShowOverflowButton;
- (BOOL)isChannelButtonExpanded;
- (CGRect)tipSourceRect;
- (UIView)tipSourceView;
- (_TVRUIEventDelegate)buttonActionsDelegate;
- (id)_channelUpButtonView;
- (id)_overflowButtonMenu;
- (unint64_t)_enabledButtonCount;
- (void)_buttonPressed:(id)a3;
- (void)_buttonReleased:(id)a3;
- (void)_captionsTapped:(id)a3;
- (void)_createButtons;
- (void)_infoButtonTapped:(id)a3;
- (void)_sendButtonPressed:(int64_t)a3;
- (void)_sendButtonReleased:(int64_t)a3;
- (void)_sendButtonTapped:(int64_t)a3;
- (void)_setupTipsControllerIfNeeded;
- (void)_skipBackwardLongPress:(id)a3;
- (void)_skipBackwardTapped:(id)a3;
- (void)_skipForwardLongPress:(id)a3;
- (void)_skipForwardTapped:(id)a3;
- (void)_updateButtonAvailability;
- (void)_updateButtonVisibilityWithCompletionHandler:(id)a3;
- (void)_updateInfoTipVisibility;
- (void)collapseChannelButton;
- (void)setAvailableButtons:(unint64_t)a3 enabledButtons:(unint64_t)a4;
- (void)setEnabled:(BOOL)a3;
- (void)updateButton:(unint64_t)a3 enabled:(BOOL)a4;
- (void)updateCaptionState:(BOOL)a3 buttonDisabled:(BOOL)a4;
- (void)updatePlaybackRate:(id)a3;
- (void)viewDidLoad;
@end

@implementation TVRUIMediaControlsViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TVRUIMediaControlsViewController;
  [(TVRUIMediaControlsViewController *)&v5 viewDidLoad];
  [(TVRUIMediaControlsViewController *)self _createButtons];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(TVRUIMediaControlsViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(TVRUIMediaControlsViewController *)self _setupTipsControllerIfNeeded];
}

- (void)_createButtons
{
  v186[7] = *MEMORY[0x277D85DE8];
  v3 = [[TVRUIButton alloc] initWithType:6 hasTapAction:1 buttonLocation:1 options:2];
  [(TVRUIMediaControlsViewController *)self setSkipForwardButton:v3];

  v4 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  v6 = [v5 layer];
  [v6 setBorderColor:0];

  v7 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  v8 = [v7 layer];
  [v8 setBorderWidth:0.0];

  v9 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  [v9 setAlpha:0.0];

  v10 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  [v10 setHidden:1];

  v11 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__skipForwardTapped_];
  [v11 setCancelsTouchesInView:0];
  v12 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  v179 = v11;
  [v12 addGestureRecognizer:v11];

  v13 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__skipForwardLongPress_];
  v14 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  v178 = v13;
  [v14 addGestureRecognizer:v13];

  v15 = [[TVRUICaptionsButton alloc] initWithCaptionsEnabled:0 buttonLocation:1];
  [(TVRUIMediaControlsViewController *)self setCaptionsButton:v15];

  v16 = [(TVRUIMediaControlsViewController *)self captionsButton];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(TVRUIMediaControlsViewController *)self captionsButton];
  v18 = [v17 layer];
  [v18 setBorderColor:0];

  v19 = [(TVRUIMediaControlsViewController *)self captionsButton];
  v20 = [v19 layer];
  [v20 setBorderWidth:0.0];

  v21 = [(TVRUIMediaControlsViewController *)self captionsButton];
  [v21 setAlpha:0.0];

  v22 = [(TVRUIMediaControlsViewController *)self captionsButton];
  [v22 setHidden:1];

  v23 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__captionsTapped_];
  [v23 setCancelsTouchesInView:0];
  v24 = [(TVRUIMediaControlsViewController *)self captionsButton];
  v177 = v23;
  [v24 addGestureRecognizer:v23];

  v25 = [[TVRUIButton alloc] initWithType:9992 hasTapAction:1 buttonLocation:1 options:2];
  [(TVRUIMediaControlsViewController *)self setInfoButton:v25];

  v26 = [(TVRUIMediaControlsViewController *)self infoButton];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = [(TVRUIMediaControlsViewController *)self infoButton];
  v28 = [v27 layer];
  [v28 setBorderColor:0];

  v29 = [(TVRUIMediaControlsViewController *)self infoButton];
  v30 = [v29 layer];
  [v30 setBorderWidth:0.0];

  v31 = [(TVRUIMediaControlsViewController *)self infoButton];
  [v31 setHidden:1];

  v32 = [(TVRUIMediaControlsViewController *)self infoButton];
  [v32 addTarget:self action:sel__infoButtonTapped_ forControlEvents:64];

  v33 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A28] scale:3];
  v34 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis.circle" withConfiguration:v33];
  v35 = [MEMORY[0x277D75220] buttonWithType:1];
  [v35 setImage:v34 forState:0];
  v36 = [(TVRUIMediaControlsViewController *)self styleProvider];
  v37 = [v36 primaryTextAndGlyphColor];
  [v35 setTintColor:v37];

  [v35 setOverrideUserInterfaceStyle:2];
  v38 = [(TVRUIMediaControlsViewController *)self _overflowButtonMenu];
  [v35 setMenu:v38];

  [v35 setShowsMenuAsPrimaryAction:1];
  [v35 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

  [(TVRUIMediaControlsViewController *)self setOverflowButton:v35];
  v39 = [(TVRUIMediaControlsViewController *)self overflowButton];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

  v40 = [(TVRUIMediaControlsViewController *)self overflowButton];
  v41 = [v40 layer];
  [v41 setBorderColor:0];

  v42 = [(TVRUIMediaControlsViewController *)self overflowButton];
  v43 = [v42 layer];
  [v43 setBorderWidth:0.0];

  v44 = [(TVRUIMediaControlsViewController *)self overflowButton];
  [v44 setAlpha:0.0];

  v45 = [(TVRUIMediaControlsViewController *)self overflowButton];
  [v45 setHidden:1];

  v46 = [[TVRUIButton alloc] initWithType:7 hasTapAction:1 buttonLocation:1 options:2];
  [(TVRUIMediaControlsViewController *)self setSkipBackwardButton:v46];

  v47 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];

  v48 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  v49 = [v48 layer];
  [v49 setBorderColor:0];

  v50 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  v51 = [v50 layer];
  [v51 setBorderWidth:0.0];

  v52 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  [v52 setAlpha:0.0];

  v53 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  [v53 setHidden:1];

  v54 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__skipBackwardTapped_];
  [v54 setCancelsTouchesInView:0];
  v55 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  [v55 addGestureRecognizer:v54];

  v56 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__skipBackwardLongPress_];
  v57 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  [v57 addGestureRecognizer:v56];

  v58 = [[TVRUIButton alloc] initWithType:28 hasTapAction:0 buttonLocation:1 options:2];
  [(TVRUIMediaControlsViewController *)self setGuideButton:v58];

  v59 = [(TVRUIMediaControlsViewController *)self guideButton];
  [v59 setTranslatesAutoresizingMaskIntoConstraints:0];

  v60 = [(TVRUIMediaControlsViewController *)self guideButton];
  [v60 addTarget:self action:sel__buttonPressed_ forControlEvents:1];

  v61 = [(TVRUIMediaControlsViewController *)self guideButton];
  [v61 addTarget:self action:sel__buttonReleased_ forControlEvents:448];

  v62 = [(TVRUIMediaControlsViewController *)self guideButton];
  [v62 setAlpha:0.0];

  v63 = [(TVRUIMediaControlsViewController *)self guideButton];
  [v63 setHidden:1];

  v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v65 = [v64 localizedStringForKey:@"TVRemoteUIPageButtonText" value:&stru_287E6AEF8 table:@"Localizable"];

  v66 = [(TVRUIStyleProvider *)self->_styleProvider maxPagingTitleLength];
  v175 = v56;
  v176 = v54;
  if ([v65 length] > v66)
  {
    v67 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
    {
      [TVRUIButtonPanelView initPagedPanelWithPrimaryButtonType:v65 secondaryLeftButtons:v66 styleProvider:v67];
    }

    v68 = [v65 substringWithRange:{0, 4}];

    v65 = v68;
  }

  v69 = [TVRUIChannelButton alloc];
  v70 = [(TVRUIMediaControlsViewController *)self styleProvider];
  v174 = v65;
  v71 = [(TVRUIChannelButton *)v69 initWithTitle:v65 styleProvider:v70];
  channelButton = self->_channelButton;
  self->_channelButton = v71;

  v73 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
  [(TVRUIChannelButton *)self->_channelButton setButtonEventDelegate:v73];

  v74 = [(TVRUIMediaControlsViewController *)self channelButton];
  [v74 setTranslatesAutoresizingMaskIntoConstraints:0];

  v75 = [(TVRUIMediaControlsViewController *)self channelButton];
  [v75 setAlpha:0.0];

  v76 = [(TVRUIMediaControlsViewController *)self channelButton];
  [v76 setHidden:1];

  v77 = [(TVRUIMediaControlsViewController *)self guideButton];
  v186[0] = v77;
  v78 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  v186[1] = v78;
  v79 = [(TVRUIMediaControlsViewController *)self infoButton];
  v186[2] = v79;
  v80 = [(TVRUIMediaControlsViewController *)self overflowButton];
  v186[3] = v80;
  v81 = [(TVRUIMediaControlsViewController *)self captionsButton];
  v186[4] = v81;
  v82 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  v186[5] = v82;
  v83 = [(TVRUIMediaControlsViewController *)self channelButton];
  v186[6] = v83;
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:7];
  buttons = self->_buttons;
  self->_buttons = v84;

  v86 = objc_alloc(MEMORY[0x277D75A68]);
  v87 = [(TVRUIMediaControlsViewController *)self view];
  [v87 frame];
  v88 = [v86 initWithFrame:?];
  buttonStackView = self->_buttonStackView;
  self->_buttonStackView = v88;

  [(UIStackView *)self->_buttonStackView setDistribution:4];
  [(UIStackView *)self->_buttonStackView setAlignment:3];
  [(UIStackView *)self->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_buttonStackView setSemanticContentAttribute:3];
  v90 = [(TVRUIMediaControlsViewController *)self view];
  [v90 addSubview:self->_buttonStackView];

  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v91 = [(TVRUIMediaControlsViewController *)self buttons];
  v92 = [v91 countByEnumeratingWithState:&v180 objects:v185 count:16];
  if (v92)
  {
    v93 = v92;
    v94 = *v181;
    do
    {
      v95 = 0;
      do
      {
        if (*v181 != v94)
        {
          objc_enumerationMutation(v91);
        }

        v96 = *(*(&v180 + 1) + 8 * v95);
        v97 = [(TVRUIMediaControlsViewController *)self buttonStackView];
        [v97 addArrangedSubview:v96];

        ++v95;
      }

      while (v93 != v95);
      v93 = [v91 countByEnumeratingWithState:&v180 objects:v185 count:16];
    }

    while (v93);
  }

  v145 = MEMORY[0x277CCAAD0];
  v173 = [(TVRUIMediaControlsViewController *)self buttonStackView];
  v171 = [v173 leadingAnchor];
  v172 = [(TVRUIMediaControlsViewController *)self view];
  v170 = [v172 leadingAnchor];
  v169 = [v171 constraintEqualToAnchor:v170 constant:10.0];
  v184[0] = v169;
  v168 = [(TVRUIMediaControlsViewController *)self buttonStackView];
  v166 = [v168 trailingAnchor];
  v167 = [(TVRUIMediaControlsViewController *)self view];
  v165 = [v167 trailingAnchor];
  v164 = [v166 constraintEqualToAnchor:v165 constant:-10.0];
  v184[1] = v164;
  v163 = [(TVRUIMediaControlsViewController *)self buttonStackView];
  v161 = [v163 topAnchor];
  v162 = [(TVRUIMediaControlsViewController *)self view];
  v160 = [v162 topAnchor];
  v159 = [v161 constraintEqualToAnchor:v160];
  v184[2] = v159;
  v158 = [(TVRUIMediaControlsViewController *)self buttonStackView];
  v156 = [v158 bottomAnchor];
  v157 = [(TVRUIMediaControlsViewController *)self view];
  v155 = [v157 bottomAnchor];
  v154 = [v156 constraintEqualToAnchor:v155];
  v184[3] = v154;
  v153 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  v151 = [v153 widthAnchor];
  v152 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [v152 mediaControlsButtonSize];
  v150 = [v151 constraintEqualToConstant:?];
  v184[4] = v150;
  v149 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  v147 = [v149 heightAnchor];
  v148 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [v148 mediaControlsButtonSize];
  v146 = [v147 constraintEqualToConstant:v98];
  v184[5] = v146;
  v144 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  v142 = [v144 widthAnchor];
  v143 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [v143 mediaControlsButtonSize];
  v141 = [v142 constraintEqualToConstant:?];
  v184[6] = v141;
  v140 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  v138 = [v140 heightAnchor];
  v139 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [v139 mediaControlsButtonSize];
  v137 = [v138 constraintEqualToConstant:v99];
  v184[7] = v137;
  v136 = [(TVRUIMediaControlsViewController *)self captionsButton];
  v134 = [v136 widthAnchor];
  v135 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [v135 captionButtonSize];
  v133 = [v134 constraintEqualToConstant:?];
  v184[8] = v133;
  v132 = [(TVRUIMediaControlsViewController *)self captionsButton];
  v130 = [v132 heightAnchor];
  v131 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [v131 captionButtonSize];
  v129 = [v130 constraintEqualToConstant:v100];
  v184[9] = v129;
  v128 = [(TVRUIMediaControlsViewController *)self infoButton];
  v126 = [v128 widthAnchor];
  v127 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [v127 mediaControlsButtonSize];
  v125 = [v126 constraintEqualToConstant:?];
  v184[10] = v125;
  v124 = [(TVRUIMediaControlsViewController *)self infoButton];
  v122 = [v124 heightAnchor];
  v123 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [v123 mediaControlsButtonSize];
  v121 = [v122 constraintEqualToConstant:v101];
  v184[11] = v121;
  v120 = [(TVRUIMediaControlsViewController *)self guideButton];
  v118 = [v120 widthAnchor];
  v119 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [v119 mediaControlsButtonSize];
  v117 = [v118 constraintEqualToConstant:?];
  v184[12] = v117;
  v116 = [(TVRUIMediaControlsViewController *)self guideButton];
  v114 = [v116 heightAnchor];
  v115 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [v115 mediaControlsButtonSize];
  v103 = [v114 constraintEqualToConstant:v102];
  v184[13] = v103;
  v104 = [(TVRUIMediaControlsViewController *)self channelButton];
  v105 = [v104 widthAnchor];
  v106 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [v106 mediaControlsButtonSize];
  v107 = [v105 constraintEqualToConstant:?];
  v184[14] = v107;
  v108 = [(TVRUIMediaControlsViewController *)self channelButton];
  v109 = [v108 heightAnchor];
  v110 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [v110 mediaControlsButtonSize];
  v112 = [v109 constraintEqualToConstant:v111];
  v184[15] = v112;
  v113 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:16];
  [v145 activateConstraints:v113];
}

- (id)_overflowButtonMenu
{
  v12[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D753F0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__TVRUIMediaControlsViewController__overflowButtonMenu__block_invoke;
  v9[3] = &unk_279D88B40;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  v4 = [v3 elementWithUncachedProvider:v9];
  v5 = MEMORY[0x277D75710];
  v12[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [v5 menuWithChildren:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __55__TVRUIMediaControlsViewController__overflowButtonMenu__block_invoke(uint64_t a1, void *a2)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v23 = [WeakRetained _captionsButtonIsVisible];
    v6 = [v5 captionsButton];
    v7 = [v6 captionsEnabled];

    v8 = [v5 infoButton];
    v9 = [v8 isEnabled];

    v10 = [v5 styleProvider];
    v24 = [v10 iconForButtonType:9992];

    v11 = [v5 styleProvider];
    v12 = [v11 captionsButtonIcon:v7];

    v13 = MEMORY[0x277D750C8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"TVRUIViewInfo" value:&stru_287E6AEF8 table:@"Localizable"];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __55__TVRUIMediaControlsViewController__overflowButtonMenu__block_invoke_2;
    v27[3] = &unk_279D87C68;
    objc_copyWeak(&v28, (a1 + 40));
    v16 = [v13 actionWithTitle:v15 image:v24 identifier:0 handler:v27];

    if ((v9 & 1) == 0)
    {
      [v16 setAttributes:1];
    }

    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v7)
    {
      [v17 localizedStringForKey:@"TVRUIDisableCaptions" value:&stru_287E6AEF8 table:@"Localizable"];
    }

    else
    {
      [v17 localizedStringForKey:@"TVRUIEnableCaptions" value:&stru_287E6AEF8 table:@"Localizable"];
    }
    v18 = ;

    v19 = MEMORY[0x277D750C8];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __55__TVRUIMediaControlsViewController__overflowButtonMenu__block_invoke_3;
    v25[3] = &unk_279D87C68;
    objc_copyWeak(&v26, (a1 + 40));
    v20 = [v19 actionWithTitle:v18 image:v12 identifier:0 handler:v25];
    v21 = v20;
    if ((v23 & 1) == 0)
    {
      [v20 setAttributes:1];
    }

    v29[0] = v21;
    v29[1] = v16;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v3[2](v3, v22);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
  }

  else
  {
    v3[2](v3, MEMORY[0x277CBEBF8]);
  }
}

void __55__TVRUIMediaControlsViewController__overflowButtonMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _infoButtonTapped:0];
}

void __55__TVRUIMediaControlsViewController__overflowButtonMenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _captionsTapped:0];
}

- (void)setAvailableButtons:(unint64_t)a3 enabledButtons:(unint64_t)a4
{
  if ([(TVRUIMediaControlsViewController *)self availableButtons]!= a3)
  {
    [(TVRUIMediaControlsViewController *)self setAvailableButtons:a3];
    [(TVRUIMediaControlsViewController *)self setEnabledButtons:a4];
    v7 = [(TVRUIMediaControlsViewController *)self availableButtons];
    if (a3 || !v7)
    {
      [(TVRUIMediaControlsViewController *)self _updateButtonAvailability];

      [(TVRUIMediaControlsViewController *)self _updateButtonVisibilityWithCompletionHandler:0];
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __71__TVRUIMediaControlsViewController_setAvailableButtons_enabledButtons___block_invoke;
      v8[3] = &unk_279D87C20;
      v8[4] = self;
      [(TVRUIMediaControlsViewController *)self _updateButtonVisibilityWithCompletionHandler:v8];
    }
  }
}

- (void)_updateInfoTipVisibility
{
  if ([(TVRUIMediaControlsViewController *)self enabled]&& [(TVRUIMediaControlsViewController *)self isInfoButtonAvailable]&& ([(TVRUIMediaControlsViewController *)self enabledButtons]& 8) != 0)
  {
    v3 = [(TVRUIMediaControlsViewController *)self infoTipManager];
    [v3 activate];
  }

  else
  {
    v3 = [(TVRUIMediaControlsViewController *)self infoTipManager];
    [v3 invalidate:1 didPerformAction:0 completion:0];
  }
}

- (BOOL)_shouldShowOverflowButton
{
  if ([(TVRUIMediaControlsViewController *)self _enabledButtonCount]< 5)
  {
    return 0;
  }

  return [(TVRUIMediaControlsViewController *)self isInfoButtonAvailable];
}

- (void)_setupTipsControllerIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(TVRUIMediaControlsViewController *)self infoTipManager];

  if (!v3)
  {
    v4 = _TVRUITipsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = [v5 bundleIdentifier];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Creating Info Tip Manager for: %@", &v8, 0xCu);
    }

    v7 = [[TVRUITipManager alloc] initWithTipSourceViewProvider:self tipType:0];
    [(TVRUIMediaControlsViewController *)self setInfoTipManager:v7];
  }
}

- (void)updateButton:(unint64_t)a3 enabled:(BOOL)a4
{
  v4 = a4;
  if (([(TVRUIMediaControlsViewController *)self availableButtons]& a3) != 0)
  {
    if (v4)
    {
      v7 = [(TVRUIMediaControlsViewController *)self enabledButtons]| a3;
    }

    else
    {
      v7 = [(TVRUIMediaControlsViewController *)self enabledButtons]& ~a3;
    }

    [(TVRUIMediaControlsViewController *)self setEnabledButtons:v7];

    [(TVRUIMediaControlsViewController *)self _updateButtonVisibilityWithCompletionHandler:0];
  }
}

- (BOOL)isChannelButtonExpanded
{
  v2 = [(TVRUIMediaControlsViewController *)self channelButton];
  v3 = [v2 isExpanded];

  return v3;
}

- (void)updateCaptionState:(BOOL)a3 buttonDisabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v7 = [(TVRUIMediaControlsViewController *)self captionsButton];
  [v7 setCaptionsEnabled:v5];

  [(TVRUIMediaControlsViewController *)self updateButton:2 enabled:!v4];
  v8 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = v5;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "enableCaptions %{BOOL}d, buttonDisabled: %{BOOL}d", v9, 0xEu);
  }
}

- (void)updatePlaybackRate:(id)a3
{
  [a3 doubleValue];
  if (!a3 || ((v6 = fabs(v5 + -1.0), v7 = fabs(v5), v6 >= 0.00000011920929) ? (v8 = v7 < 0.00000011920929) : (v8 = 1), v8))
  {
    v9 = 0;
    v10 = 7;
    v11 = 6;
  }

  else
  {
    v9 = 1;
    v10 = 9996;
    v11 = 9995;
  }

  [(TVRUIMediaControlsViewController *)self setWantsFastForwardButton:v9];
  v12 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  [v12 _updateButtonType:v11];

  v13 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  [v13 _updateButtonType:v10];
}

- (void)collapseChannelButton
{
  v2 = [(TVRUIMediaControlsViewController *)self channelButton];
  [v2 collapse];
}

- (void)_updateButtonAvailability
{
  v3 = ([(TVRUIMediaControlsViewController *)self availableButtons]& 1) == 0;
  v4 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  [v4 setHidden:v3];

  v5 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  [v5 setHidden:v3];

  v6 = ([(TVRUIMediaControlsViewController *)self availableButtons]& 4) == 0;
  v7 = [(TVRUIMediaControlsViewController *)self guideButton];
  [v7 setHidden:v6];

  v8 = [(TVRUIMediaControlsViewController *)self channelButton];
  [v8 setHidden:v6];

  if ([(TVRUIMediaControlsViewController *)self _shouldShowOverflowButton])
  {
    v9 = [(TVRUIMediaControlsViewController *)self infoButton];
    [v9 setHidden:1];

    v10 = [(TVRUIMediaControlsViewController *)self captionsButton];
    [v10 setHidden:1];

    v11 = [(TVRUIMediaControlsViewController *)self overflowButton];
    v16 = v11;
    v12 = 0;
  }

  else
  {
    v13 = [(TVRUIMediaControlsViewController *)self overflowButton];
    [v13 setHidden:1];

    LODWORD(v13) = [(TVRUIMediaControlsViewController *)self isInfoButtonAvailable];
    v14 = [(TVRUIMediaControlsViewController *)self infoButton];
    [v14 setHidden:v13 ^ 1];

    v15 = ([(TVRUIMediaControlsViewController *)self availableButtons]& 2) == 0;
    v11 = [(TVRUIMediaControlsViewController *)self captionsButton];
    v16 = v11;
    v12 = v15;
  }

  [v11 setHidden:v12];
}

- (unint64_t)_enabledButtonCount
{
  v3 = 0;
  for (i = 0; i != 32; ++i)
  {
    v3 += ([(TVRUIMediaControlsViewController *)self availableButtons]>> i) & 1;
  }

  return ([(TVRUIMediaControlsViewController *)self availableButtons]& 1) + v3;
}

- (void)_updateButtonVisibilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(TVRUIMediaControlsViewController *)self enabled];
  v6 = [(TVRUIMediaControlsViewController *)self view];
  [v6 setHidden:!v5];

  v7 = [(TVRUIMediaControlsViewController *)self enabled];
  v8 = [(TVRUIMediaControlsViewController *)self view];
  [v8 setUserInteractionEnabled:v7];

  v9 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__TVRUIMediaControlsViewController__updateButtonVisibilityWithCompletionHandler___block_invoke;
  v13[3] = &unk_279D87C20;
  v13[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__TVRUIMediaControlsViewController__updateButtonVisibilityWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_279D88B68;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v9 animateWithDuration:v13 animations:v11 completion:0.2];
}

void __81__TVRUIMediaControlsViewController__updateButtonVisibilityWithCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) enabledButtons];
  if (v3)
  {
    if ([*(a1 + 32) enabled])
    {
      v4 = 0;
      v5 = 1.0;
    }

    else
    {
      v1 = [*(a1 + 32) styleProvider];
      [v1 disabledButtonAlpha];
      v5 = v6;
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0.0;
  }

  v7 = [*(a1 + 32) skipBackwardButton];
  [v7 setAlpha:v5];

  if (v4)
  {
  }

  if (v3)
  {
    if ([*(a1 + 32) enabled])
    {
      v8 = 0;
      v9 = 1.0;
    }

    else
    {
      v3 = [*(a1 + 32) styleProvider];
      [v3 disabledButtonAlpha];
      v9 = v10;
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0.0;
  }

  v11 = [*(a1 + 32) skipForwardButton];
  [v11 setAlpha:v9];

  if (v8)
  {
  }

  v12 = [*(a1 + 32) availableButtons];
  v13 = [*(a1 + 32) enabledButtons];
  if ((v13 & 2) != 0)
  {
    v14 = [*(a1 + 32) enabled];
  }

  else
  {
    v14 = 0;
  }

  v15 = [*(a1 + 32) captionsButton];
  [v15 setEnabled:v14];

  if ([*(a1 + 32) enabled])
  {
    v16 = [*(a1 + 32) captionsButton];
    v17 = [v16 isEnabled];

    if ((v17 & 1) == 0)
    {
      v18 = [*(a1 + 32) captionsButton];
      [v18 setCaptionsEnabled:0];
    }
  }

  if ((v13 & 2) != 0)
  {
    if ([*(a1 + 32) enabled])
    {
      LODWORD(v19) = 0;
      v20 = 0;
      v21 = 1.0;
      goto LABEL_27;
    }
  }

  else if ((v12 & 2) == 0)
  {
    LODWORD(v19) = 0;
    v20 = 0;
    v21 = 0.0;
    goto LABEL_27;
  }

  v12 = [*(a1 + 32) styleProvider];
  v19 = (v13 >> 1) & 1;
  v20 = (v13 & 2) == 0;
  [v12 disabledButtonAlpha];
  v21 = v22;
LABEL_27:
  v23 = [*(a1 + 32) captionsButton];
  [v23 setAlpha:v21];

  if (v20)
  {
  }

  if (v19)
  {
  }

  v24 = [*(a1 + 32) enabledButtons];
  if ((v24 & 4) != 0)
  {
    if ([*(a1 + 32) enabled])
    {
      v25 = 0;
      v26 = 1.0;
    }

    else
    {
      v12 = [*(a1 + 32) styleProvider];
      [v12 disabledButtonAlpha];
      v26 = v27;
      v25 = 1;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0.0;
  }

  v28 = [*(a1 + 32) guideButton];
  [v28 setAlpha:v26];

  if (v25)
  {
  }

  if ((v24 & 4) != 0)
  {
    if ([*(a1 + 32) enabled])
    {
      v29 = 0;
      v30 = 1.0;
    }

    else
    {
      v24 = [*(a1 + 32) styleProvider];
      [v24 disabledButtonAlpha];
      v30 = v31;
      v29 = 1;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0.0;
  }

  v32 = [*(a1 + 32) channelButton];
  [v32 setAlpha:v30];

  if (v29)
  {
  }

  v33 = [*(a1 + 32) availableButtons];
  v34 = [*(a1 + 32) enabledButtons];
  if ((v34 & 8) != 0)
  {
    v33 = [*(a1 + 32) enabled];
    v35 = [*(a1 + 32) infoButton];
    [v35 setEnabled:v33];

    if ([*(a1 + 32) enabled])
    {
      LODWORD(v36) = 0;
      v37 = 0;
      v38 = 1.0;
      goto LABEL_51;
    }
  }

  else
  {
    v39 = [*(a1 + 32) infoButton];
    [v39 setEnabled:0];

    if ((v33 & 8) == 0)
    {
      LODWORD(v36) = 0;
      v37 = 0;
      v38 = 0.0;
      goto LABEL_51;
    }
  }

  v33 = [*(a1 + 32) styleProvider];
  v36 = (v34 >> 3) & 1;
  v37 = (v34 & 8) == 0;
  [v33 disabledButtonAlpha];
  v38 = v40;
LABEL_51:
  v41 = [*(a1 + 32) infoButton];
  [v41 setAlpha:v38];

  if (v37)
  {
  }

  if (v36)
  {
  }

  v42 = [*(a1 + 32) _shouldShowOverflowButton];
  v43 = [*(a1 + 32) overflowButton];
  [v43 setEnabled:v42];

  if (v42)
  {
    if ([*(a1 + 32) enabled])
    {
      LODWORD(v42) = 0;
      v44 = 1.0;
    }

    else
    {
      v47 = [*(a1 + 32) styleProvider];
      [v47 disabledButtonAlpha];
      v44 = v45;
      LODWORD(v42) = 1;
    }
  }

  else
  {
    v44 = 0.0;
  }

  v46 = [*(a1 + 32) overflowButton];
  [v46 setAlpha:v44];

  if (v42)
  {
  }
}

uint64_t __81__TVRUIMediaControlsViewController__updateButtonVisibilityWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateInfoTipVisibility];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_skipForwardTapped:(id)a3
{
  if ([(TVRUIMediaControlsViewController *)self wantsFastForwardButton])
  {
    v4 = 15;
  }

  else
  {
    v4 = 6;
  }

  [(TVRUIMediaControlsViewController *)self _sendButtonTapped:v4];
}

- (void)_skipForwardLongPress:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    [(TVRUIMediaControlsViewController *)self _sendButtonPressed:15];
  }

  else if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4)
  {
    [(TVRUIMediaControlsViewController *)self _sendButtonReleased:15];
  }
}

- (void)_infoButtonTapped:(id)a3
{
  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Info button tapped", v6, 2u);
  }

  v5 = [(TVRUIMediaControlsViewController *)self infoTipManager];
  [v5 invalidate:1 didPerformAction:1 completion:0];

  [(TVRUIMediaControlsViewController *)self _sendButtonTapped:9992];
}

- (void)_skipBackwardTapped:(id)a3
{
  if ([(TVRUIMediaControlsViewController *)self wantsFastForwardButton])
  {
    v4 = 14;
  }

  else
  {
    v4 = 7;
  }

  [(TVRUIMediaControlsViewController *)self _sendButtonTapped:v4];
}

- (void)_skipBackwardLongPress:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    [(TVRUIMediaControlsViewController *)self _sendButtonPressed:14];
  }

  else if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4)
  {
    [(TVRUIMediaControlsViewController *)self _sendButtonReleased:14];
  }
}

- (void)_captionsTapped:(id)a3
{
  v4 = [(TVRUIMediaControlsViewController *)self captionsButton];
  v5 = [v4 captionsEnabled];

  if (v5)
  {
    v6 = 18;
  }

  else
  {
    v6 = 17;
  }

  [(TVRUIMediaControlsViewController *)self _sendButtonTapped:v6];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__TVRUIMediaControlsViewController__captionsTapped___block_invoke;
  v7[3] = &unk_279D878A8;
  v7[4] = self;
  v8 = v5;
  [MEMORY[0x277CD9FF0] bs_performAfterSynchronizedCommit:v7];
}

void __52__TVRUIMediaControlsViewController__captionsTapped___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) captionsButton];
  [v2 setCaptionsEnabled:(v1 & 1) == 0];
}

- (void)_sendButtonTapped:(int64_t)a3
{
  v9 = [TVRUIButtonEvent createButtonEvent:0 buttonType:a3];
  v4 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
      [v8 generatedButtonEvent:v9];
    }
  }
}

- (void)_sendButtonPressed:(int64_t)a3
{
  v9 = [TVRUIButtonEvent createButtonEvent:1 buttonType:a3];
  v4 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
      [v8 generatedButtonEvent:v9];
    }
  }
}

- (void)_sendButtonReleased:(int64_t)a3
{
  v9 = [TVRUIButtonEvent createButtonEvent:2 buttonType:a3];
  v4 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
      [v8 generatedButtonEvent:v9];
    }
  }
}

- (void)_buttonPressed:(id)a3
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 1, [a3 buttonType]);
  v4 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
      [v8 generatedButtonEvent:v9];
    }
  }
}

- (void)_buttonReleased:(id)a3
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 2, [a3 buttonType]);
  v4 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
      [v8 generatedButtonEvent:v9];
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"disabled";
    if (self->_enabled)
    {
      v7 = @"enabled";
    }

    else
    {
      v7 = @"disabled";
    }

    if (v3)
    {
      v6 = @"enabled";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Setting media controls from %@ to %@", &v8, 0x16u);
  }

  if (self->_enabled != v3)
  {
    self->_enabled = v3;
    [(TVRUIMediaControlsViewController *)self _updateButtonAvailability];
    [(TVRUIMediaControlsViewController *)self _updateButtonVisibilityWithCompletionHandler:0];
  }
}

- (id)_channelUpButtonView
{
  v2 = [(TVRUIMediaControlsViewController *)self channelButton];
  v3 = [v2 _channelUpButton];

  return v3;
}

- (UIView)tipSourceView
{
  v3 = [(TVRUIMediaControlsViewController *)self overflowButton];
  if ([v3 isHidden])
  {
    [(TVRUIMediaControlsViewController *)self infoButton];
  }

  else
  {
    [(TVRUIMediaControlsViewController *)self overflowButton];
  }
  v4 = ;
  v5 = [v4 imageView];

  return v5;
}

- (CGRect)tipSourceRect
{
  v3 = [(TVRUIMediaControlsViewController *)self overflowButton];
  if ([v3 isHidden])
  {
    [(TVRUIMediaControlsViewController *)self infoButton];
  }

  else
  {
    [(TVRUIMediaControlsViewController *)self overflowButton];
  }
  v4 = ;
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (_TVRUIEventDelegate)buttonActionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonActionsDelegate);

  return WeakRetained;
}

@end