@interface TVRUIMediaControlsViewController
- (BOOL)_shouldShowOverflowButton;
- (BOOL)isChannelButtonExpanded;
- (CGRect)tipSourceRect;
- (UIView)tipSourceView;
- (_TVRUIEventDelegate)buttonActionsDelegate;
- (id)_channelUpButtonView;
- (id)_overflowButtonMenu;
- (unint64_t)_enabledButtonCount;
- (void)_buttonPressed:(id)pressed;
- (void)_buttonReleased:(id)released;
- (void)_captionsTapped:(id)tapped;
- (void)_createButtons;
- (void)_infoButtonTapped:(id)tapped;
- (void)_sendButtonPressed:(int64_t)pressed;
- (void)_sendButtonReleased:(int64_t)released;
- (void)_sendButtonTapped:(int64_t)tapped;
- (void)_setupTipsControllerIfNeeded;
- (void)_skipBackwardLongPress:(id)press;
- (void)_skipBackwardTapped:(id)tapped;
- (void)_skipForwardLongPress:(id)press;
- (void)_skipForwardTapped:(id)tapped;
- (void)_updateButtonAvailability;
- (void)_updateButtonVisibilityWithCompletionHandler:(id)handler;
- (void)_updateInfoTipVisibility;
- (void)collapseChannelButton;
- (void)setAvailableButtons:(unint64_t)buttons enabledButtons:(unint64_t)enabledButtons;
- (void)setEnabled:(BOOL)enabled;
- (void)updateButton:(unint64_t)button enabled:(BOOL)enabled;
- (void)updateCaptionState:(BOOL)state buttonDisabled:(BOOL)disabled;
- (void)updatePlaybackRate:(id)rate;
- (void)viewDidLoad;
@end

@implementation TVRUIMediaControlsViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TVRUIMediaControlsViewController;
  [(TVRUIMediaControlsViewController *)&v5 viewDidLoad];
  [(TVRUIMediaControlsViewController *)self _createButtons];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(TVRUIMediaControlsViewController *)self view];
  [view setBackgroundColor:clearColor];

  [(TVRUIMediaControlsViewController *)self _setupTipsControllerIfNeeded];
}

- (void)_createButtons
{
  v186[7] = *MEMORY[0x277D85DE8];
  v3 = [[TVRUIButton alloc] initWithType:6 hasTapAction:1 buttonLocation:1 options:2];
  [(TVRUIMediaControlsViewController *)self setSkipForwardButton:v3];

  skipForwardButton = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  [skipForwardButton setTranslatesAutoresizingMaskIntoConstraints:0];

  skipForwardButton2 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  layer = [skipForwardButton2 layer];
  [layer setBorderColor:0];

  skipForwardButton3 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  layer2 = [skipForwardButton3 layer];
  [layer2 setBorderWidth:0.0];

  skipForwardButton4 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  [skipForwardButton4 setAlpha:0.0];

  skipForwardButton5 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  [skipForwardButton5 setHidden:1];

  v11 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__skipForwardTapped_];
  [v11 setCancelsTouchesInView:0];
  skipForwardButton6 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  v179 = v11;
  [skipForwardButton6 addGestureRecognizer:v11];

  v13 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__skipForwardLongPress_];
  skipForwardButton7 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  v178 = v13;
  [skipForwardButton7 addGestureRecognizer:v13];

  v15 = [[TVRUICaptionsButton alloc] initWithCaptionsEnabled:0 buttonLocation:1];
  [(TVRUIMediaControlsViewController *)self setCaptionsButton:v15];

  captionsButton = [(TVRUIMediaControlsViewController *)self captionsButton];
  [captionsButton setTranslatesAutoresizingMaskIntoConstraints:0];

  captionsButton2 = [(TVRUIMediaControlsViewController *)self captionsButton];
  layer3 = [captionsButton2 layer];
  [layer3 setBorderColor:0];

  captionsButton3 = [(TVRUIMediaControlsViewController *)self captionsButton];
  layer4 = [captionsButton3 layer];
  [layer4 setBorderWidth:0.0];

  captionsButton4 = [(TVRUIMediaControlsViewController *)self captionsButton];
  [captionsButton4 setAlpha:0.0];

  captionsButton5 = [(TVRUIMediaControlsViewController *)self captionsButton];
  [captionsButton5 setHidden:1];

  v23 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__captionsTapped_];
  [v23 setCancelsTouchesInView:0];
  captionsButton6 = [(TVRUIMediaControlsViewController *)self captionsButton];
  v177 = v23;
  [captionsButton6 addGestureRecognizer:v23];

  v25 = [[TVRUIButton alloc] initWithType:9992 hasTapAction:1 buttonLocation:1 options:2];
  [(TVRUIMediaControlsViewController *)self setInfoButton:v25];

  infoButton = [(TVRUIMediaControlsViewController *)self infoButton];
  [infoButton setTranslatesAutoresizingMaskIntoConstraints:0];

  infoButton2 = [(TVRUIMediaControlsViewController *)self infoButton];
  layer5 = [infoButton2 layer];
  [layer5 setBorderColor:0];

  infoButton3 = [(TVRUIMediaControlsViewController *)self infoButton];
  layer6 = [infoButton3 layer];
  [layer6 setBorderWidth:0.0];

  infoButton4 = [(TVRUIMediaControlsViewController *)self infoButton];
  [infoButton4 setHidden:1];

  infoButton5 = [(TVRUIMediaControlsViewController *)self infoButton];
  [infoButton5 addTarget:self action:sel__infoButtonTapped_ forControlEvents:64];

  v33 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A28] scale:3];
  v34 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis.circle" withConfiguration:v33];
  v35 = [MEMORY[0x277D75220] buttonWithType:1];
  [v35 setImage:v34 forState:0];
  styleProvider = [(TVRUIMediaControlsViewController *)self styleProvider];
  primaryTextAndGlyphColor = [styleProvider primaryTextAndGlyphColor];
  [v35 setTintColor:primaryTextAndGlyphColor];

  [v35 setOverrideUserInterfaceStyle:2];
  _overflowButtonMenu = [(TVRUIMediaControlsViewController *)self _overflowButtonMenu];
  [v35 setMenu:_overflowButtonMenu];

  [v35 setShowsMenuAsPrimaryAction:1];
  [v35 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

  [(TVRUIMediaControlsViewController *)self setOverflowButton:v35];
  overflowButton = [(TVRUIMediaControlsViewController *)self overflowButton];
  [overflowButton setTranslatesAutoresizingMaskIntoConstraints:0];

  overflowButton2 = [(TVRUIMediaControlsViewController *)self overflowButton];
  layer7 = [overflowButton2 layer];
  [layer7 setBorderColor:0];

  overflowButton3 = [(TVRUIMediaControlsViewController *)self overflowButton];
  layer8 = [overflowButton3 layer];
  [layer8 setBorderWidth:0.0];

  overflowButton4 = [(TVRUIMediaControlsViewController *)self overflowButton];
  [overflowButton4 setAlpha:0.0];

  overflowButton5 = [(TVRUIMediaControlsViewController *)self overflowButton];
  [overflowButton5 setHidden:1];

  v46 = [[TVRUIButton alloc] initWithType:7 hasTapAction:1 buttonLocation:1 options:2];
  [(TVRUIMediaControlsViewController *)self setSkipBackwardButton:v46];

  skipBackwardButton = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  [skipBackwardButton setTranslatesAutoresizingMaskIntoConstraints:0];

  skipBackwardButton2 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  layer9 = [skipBackwardButton2 layer];
  [layer9 setBorderColor:0];

  skipBackwardButton3 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  layer10 = [skipBackwardButton3 layer];
  [layer10 setBorderWidth:0.0];

  skipBackwardButton4 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  [skipBackwardButton4 setAlpha:0.0];

  skipBackwardButton5 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  [skipBackwardButton5 setHidden:1];

  v54 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__skipBackwardTapped_];
  [v54 setCancelsTouchesInView:0];
  skipBackwardButton6 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  [skipBackwardButton6 addGestureRecognizer:v54];

  v56 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__skipBackwardLongPress_];
  skipBackwardButton7 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  [skipBackwardButton7 addGestureRecognizer:v56];

  v58 = [[TVRUIButton alloc] initWithType:28 hasTapAction:0 buttonLocation:1 options:2];
  [(TVRUIMediaControlsViewController *)self setGuideButton:v58];

  guideButton = [(TVRUIMediaControlsViewController *)self guideButton];
  [guideButton setTranslatesAutoresizingMaskIntoConstraints:0];

  guideButton2 = [(TVRUIMediaControlsViewController *)self guideButton];
  [guideButton2 addTarget:self action:sel__buttonPressed_ forControlEvents:1];

  guideButton3 = [(TVRUIMediaControlsViewController *)self guideButton];
  [guideButton3 addTarget:self action:sel__buttonReleased_ forControlEvents:448];

  guideButton4 = [(TVRUIMediaControlsViewController *)self guideButton];
  [guideButton4 setAlpha:0.0];

  guideButton5 = [(TVRUIMediaControlsViewController *)self guideButton];
  [guideButton5 setHidden:1];

  v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v65 = [v64 localizedStringForKey:@"TVRemoteUIPageButtonText" value:&stru_287E6AEF8 table:@"Localizable"];

  maxPagingTitleLength = [(TVRUIStyleProvider *)self->_styleProvider maxPagingTitleLength];
  v175 = v56;
  v176 = v54;
  if ([v65 length] > maxPagingTitleLength)
  {
    v67 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
    {
      [TVRUIButtonPanelView initPagedPanelWithPrimaryButtonType:v65 secondaryLeftButtons:maxPagingTitleLength styleProvider:v67];
    }

    v68 = [v65 substringWithRange:{0, 4}];

    v65 = v68;
  }

  v69 = [TVRUIChannelButton alloc];
  styleProvider2 = [(TVRUIMediaControlsViewController *)self styleProvider];
  v174 = v65;
  v71 = [(TVRUIChannelButton *)v69 initWithTitle:v65 styleProvider:styleProvider2];
  channelButton = self->_channelButton;
  self->_channelButton = v71;

  buttonActionsDelegate = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
  [(TVRUIChannelButton *)self->_channelButton setButtonEventDelegate:buttonActionsDelegate];

  channelButton = [(TVRUIMediaControlsViewController *)self channelButton];
  [channelButton setTranslatesAutoresizingMaskIntoConstraints:0];

  channelButton2 = [(TVRUIMediaControlsViewController *)self channelButton];
  [channelButton2 setAlpha:0.0];

  channelButton3 = [(TVRUIMediaControlsViewController *)self channelButton];
  [channelButton3 setHidden:1];

  guideButton6 = [(TVRUIMediaControlsViewController *)self guideButton];
  v186[0] = guideButton6;
  skipBackwardButton8 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  v186[1] = skipBackwardButton8;
  infoButton6 = [(TVRUIMediaControlsViewController *)self infoButton];
  v186[2] = infoButton6;
  overflowButton6 = [(TVRUIMediaControlsViewController *)self overflowButton];
  v186[3] = overflowButton6;
  captionsButton7 = [(TVRUIMediaControlsViewController *)self captionsButton];
  v186[4] = captionsButton7;
  skipForwardButton8 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  v186[5] = skipForwardButton8;
  channelButton4 = [(TVRUIMediaControlsViewController *)self channelButton];
  v186[6] = channelButton4;
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:7];
  buttons = self->_buttons;
  self->_buttons = v84;

  v86 = objc_alloc(MEMORY[0x277D75A68]);
  view = [(TVRUIMediaControlsViewController *)self view];
  [view frame];
  v88 = [v86 initWithFrame:?];
  buttonStackView = self->_buttonStackView;
  self->_buttonStackView = v88;

  [(UIStackView *)self->_buttonStackView setDistribution:4];
  [(UIStackView *)self->_buttonStackView setAlignment:3];
  [(UIStackView *)self->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_buttonStackView setSemanticContentAttribute:3];
  view2 = [(TVRUIMediaControlsViewController *)self view];
  [view2 addSubview:self->_buttonStackView];

  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  buttons = [(TVRUIMediaControlsViewController *)self buttons];
  v92 = [buttons countByEnumeratingWithState:&v180 objects:v185 count:16];
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
          objc_enumerationMutation(buttons);
        }

        v96 = *(*(&v180 + 1) + 8 * v95);
        buttonStackView = [(TVRUIMediaControlsViewController *)self buttonStackView];
        [buttonStackView addArrangedSubview:v96];

        ++v95;
      }

      while (v93 != v95);
      v93 = [buttons countByEnumeratingWithState:&v180 objects:v185 count:16];
    }

    while (v93);
  }

  v145 = MEMORY[0x277CCAAD0];
  buttonStackView2 = [(TVRUIMediaControlsViewController *)self buttonStackView];
  leadingAnchor = [buttonStackView2 leadingAnchor];
  view3 = [(TVRUIMediaControlsViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v169 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v184[0] = v169;
  buttonStackView3 = [(TVRUIMediaControlsViewController *)self buttonStackView];
  trailingAnchor = [buttonStackView3 trailingAnchor];
  view4 = [(TVRUIMediaControlsViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v164 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v184[1] = v164;
  buttonStackView4 = [(TVRUIMediaControlsViewController *)self buttonStackView];
  topAnchor = [buttonStackView4 topAnchor];
  view5 = [(TVRUIMediaControlsViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v159 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v184[2] = v159;
  buttonStackView5 = [(TVRUIMediaControlsViewController *)self buttonStackView];
  bottomAnchor = [buttonStackView5 bottomAnchor];
  view6 = [(TVRUIMediaControlsViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v154 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v184[3] = v154;
  skipBackwardButton9 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  widthAnchor = [skipBackwardButton9 widthAnchor];
  styleProvider3 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [styleProvider3 mediaControlsButtonSize];
  v150 = [widthAnchor constraintEqualToConstant:?];
  v184[4] = v150;
  skipBackwardButton10 = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  heightAnchor = [skipBackwardButton10 heightAnchor];
  styleProvider4 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [styleProvider4 mediaControlsButtonSize];
  v146 = [heightAnchor constraintEqualToConstant:v98];
  v184[5] = v146;
  skipForwardButton9 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  widthAnchor2 = [skipForwardButton9 widthAnchor];
  styleProvider5 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [styleProvider5 mediaControlsButtonSize];
  v141 = [widthAnchor2 constraintEqualToConstant:?];
  v184[6] = v141;
  skipForwardButton10 = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  heightAnchor2 = [skipForwardButton10 heightAnchor];
  styleProvider6 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [styleProvider6 mediaControlsButtonSize];
  v137 = [heightAnchor2 constraintEqualToConstant:v99];
  v184[7] = v137;
  captionsButton8 = [(TVRUIMediaControlsViewController *)self captionsButton];
  widthAnchor3 = [captionsButton8 widthAnchor];
  styleProvider7 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [styleProvider7 captionButtonSize];
  v133 = [widthAnchor3 constraintEqualToConstant:?];
  v184[8] = v133;
  captionsButton9 = [(TVRUIMediaControlsViewController *)self captionsButton];
  heightAnchor3 = [captionsButton9 heightAnchor];
  styleProvider8 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [styleProvider8 captionButtonSize];
  v129 = [heightAnchor3 constraintEqualToConstant:v100];
  v184[9] = v129;
  infoButton7 = [(TVRUIMediaControlsViewController *)self infoButton];
  widthAnchor4 = [infoButton7 widthAnchor];
  styleProvider9 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [styleProvider9 mediaControlsButtonSize];
  v125 = [widthAnchor4 constraintEqualToConstant:?];
  v184[10] = v125;
  infoButton8 = [(TVRUIMediaControlsViewController *)self infoButton];
  heightAnchor4 = [infoButton8 heightAnchor];
  styleProvider10 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [styleProvider10 mediaControlsButtonSize];
  v121 = [heightAnchor4 constraintEqualToConstant:v101];
  v184[11] = v121;
  guideButton7 = [(TVRUIMediaControlsViewController *)self guideButton];
  widthAnchor5 = [guideButton7 widthAnchor];
  styleProvider11 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [styleProvider11 mediaControlsButtonSize];
  v117 = [widthAnchor5 constraintEqualToConstant:?];
  v184[12] = v117;
  guideButton8 = [(TVRUIMediaControlsViewController *)self guideButton];
  heightAnchor5 = [guideButton8 heightAnchor];
  styleProvider12 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [styleProvider12 mediaControlsButtonSize];
  v103 = [heightAnchor5 constraintEqualToConstant:v102];
  v184[13] = v103;
  channelButton5 = [(TVRUIMediaControlsViewController *)self channelButton];
  widthAnchor6 = [channelButton5 widthAnchor];
  styleProvider13 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [styleProvider13 mediaControlsButtonSize];
  v107 = [widthAnchor6 constraintEqualToConstant:?];
  v184[14] = v107;
  channelButton6 = [(TVRUIMediaControlsViewController *)self channelButton];
  heightAnchor6 = [channelButton6 heightAnchor];
  styleProvider14 = [(TVRUIMediaControlsViewController *)self styleProvider];
  [styleProvider14 mediaControlsButtonSize];
  v112 = [heightAnchor6 constraintEqualToConstant:v111];
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

- (void)setAvailableButtons:(unint64_t)buttons enabledButtons:(unint64_t)enabledButtons
{
  if ([(TVRUIMediaControlsViewController *)self availableButtons]!= buttons)
  {
    [(TVRUIMediaControlsViewController *)self setAvailableButtons:buttons];
    [(TVRUIMediaControlsViewController *)self setEnabledButtons:enabledButtons];
    availableButtons = [(TVRUIMediaControlsViewController *)self availableButtons];
    if (buttons || !availableButtons)
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
    infoTipManager = [(TVRUIMediaControlsViewController *)self infoTipManager];
    [infoTipManager activate];
  }

  else
  {
    infoTipManager = [(TVRUIMediaControlsViewController *)self infoTipManager];
    [infoTipManager invalidate:1 didPerformAction:0 completion:0];
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
  infoTipManager = [(TVRUIMediaControlsViewController *)self infoTipManager];

  if (!infoTipManager)
  {
    v4 = _TVRUITipsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v8 = 138412290;
      v9 = bundleIdentifier;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Creating Info Tip Manager for: %@", &v8, 0xCu);
    }

    v7 = [[TVRUITipManager alloc] initWithTipSourceViewProvider:self tipType:0];
    [(TVRUIMediaControlsViewController *)self setInfoTipManager:v7];
  }
}

- (void)updateButton:(unint64_t)button enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (([(TVRUIMediaControlsViewController *)self availableButtons]& button) != 0)
  {
    if (enabledCopy)
    {
      v7 = [(TVRUIMediaControlsViewController *)self enabledButtons]| button;
    }

    else
    {
      v7 = [(TVRUIMediaControlsViewController *)self enabledButtons]& ~button;
    }

    [(TVRUIMediaControlsViewController *)self setEnabledButtons:v7];

    [(TVRUIMediaControlsViewController *)self _updateButtonVisibilityWithCompletionHandler:0];
  }
}

- (BOOL)isChannelButtonExpanded
{
  channelButton = [(TVRUIMediaControlsViewController *)self channelButton];
  isExpanded = [channelButton isExpanded];

  return isExpanded;
}

- (void)updateCaptionState:(BOOL)state buttonDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  stateCopy = state;
  v12 = *MEMORY[0x277D85DE8];
  captionsButton = [(TVRUIMediaControlsViewController *)self captionsButton];
  [captionsButton setCaptionsEnabled:stateCopy];

  [(TVRUIMediaControlsViewController *)self updateButton:2 enabled:!disabledCopy];
  v8 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = stateCopy;
    v10 = 1024;
    v11 = disabledCopy;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "enableCaptions %{BOOL}d, buttonDisabled: %{BOOL}d", v9, 0xEu);
  }
}

- (void)updatePlaybackRate:(id)rate
{
  [rate doubleValue];
  if (!rate || ((v6 = fabs(v5 + -1.0), v7 = fabs(v5), v6 >= 0.00000011920929) ? (v8 = v7 < 0.00000011920929) : (v8 = 1), v8))
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
  skipForwardButton = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  [skipForwardButton _updateButtonType:v11];

  skipBackwardButton = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  [skipBackwardButton _updateButtonType:v10];
}

- (void)collapseChannelButton
{
  channelButton = [(TVRUIMediaControlsViewController *)self channelButton];
  [channelButton collapse];
}

- (void)_updateButtonAvailability
{
  v3 = ([(TVRUIMediaControlsViewController *)self availableButtons]& 1) == 0;
  skipBackwardButton = [(TVRUIMediaControlsViewController *)self skipBackwardButton];
  [skipBackwardButton setHidden:v3];

  skipForwardButton = [(TVRUIMediaControlsViewController *)self skipForwardButton];
  [skipForwardButton setHidden:v3];

  v6 = ([(TVRUIMediaControlsViewController *)self availableButtons]& 4) == 0;
  guideButton = [(TVRUIMediaControlsViewController *)self guideButton];
  [guideButton setHidden:v6];

  channelButton = [(TVRUIMediaControlsViewController *)self channelButton];
  [channelButton setHidden:v6];

  if ([(TVRUIMediaControlsViewController *)self _shouldShowOverflowButton])
  {
    infoButton = [(TVRUIMediaControlsViewController *)self infoButton];
    [infoButton setHidden:1];

    captionsButton = [(TVRUIMediaControlsViewController *)self captionsButton];
    [captionsButton setHidden:1];

    overflowButton = [(TVRUIMediaControlsViewController *)self overflowButton];
    v16 = overflowButton;
    v12 = 0;
  }

  else
  {
    overflowButton2 = [(TVRUIMediaControlsViewController *)self overflowButton];
    [overflowButton2 setHidden:1];

    LODWORD(overflowButton2) = [(TVRUIMediaControlsViewController *)self isInfoButtonAvailable];
    infoButton2 = [(TVRUIMediaControlsViewController *)self infoButton];
    [infoButton2 setHidden:overflowButton2 ^ 1];

    v15 = ([(TVRUIMediaControlsViewController *)self availableButtons]& 2) == 0;
    overflowButton = [(TVRUIMediaControlsViewController *)self captionsButton];
    v16 = overflowButton;
    v12 = v15;
  }

  [overflowButton setHidden:v12];
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

- (void)_updateButtonVisibilityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  enabled = [(TVRUIMediaControlsViewController *)self enabled];
  view = [(TVRUIMediaControlsViewController *)self view];
  [view setHidden:!enabled];

  enabled2 = [(TVRUIMediaControlsViewController *)self enabled];
  view2 = [(TVRUIMediaControlsViewController *)self view];
  [view2 setUserInteractionEnabled:enabled2];

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
  v12 = handlerCopy;
  v10 = handlerCopy;
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

- (void)_skipForwardTapped:(id)tapped
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

- (void)_skipForwardLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    [(TVRUIMediaControlsViewController *)self _sendButtonPressed:15];
  }

  else if ([pressCopy state] == 3 || objc_msgSend(pressCopy, "state") == 4)
  {
    [(TVRUIMediaControlsViewController *)self _sendButtonReleased:15];
  }
}

- (void)_infoButtonTapped:(id)tapped
{
  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Info button tapped", v6, 2u);
  }

  infoTipManager = [(TVRUIMediaControlsViewController *)self infoTipManager];
  [infoTipManager invalidate:1 didPerformAction:1 completion:0];

  [(TVRUIMediaControlsViewController *)self _sendButtonTapped:9992];
}

- (void)_skipBackwardTapped:(id)tapped
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

- (void)_skipBackwardLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    [(TVRUIMediaControlsViewController *)self _sendButtonPressed:14];
  }

  else if ([pressCopy state] == 3 || objc_msgSend(pressCopy, "state") == 4)
  {
    [(TVRUIMediaControlsViewController *)self _sendButtonReleased:14];
  }
}

- (void)_captionsTapped:(id)tapped
{
  captionsButton = [(TVRUIMediaControlsViewController *)self captionsButton];
  captionsEnabled = [captionsButton captionsEnabled];

  if (captionsEnabled)
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
  v8 = captionsEnabled;
  [MEMORY[0x277CD9FF0] bs_performAfterSynchronizedCommit:v7];
}

void __52__TVRUIMediaControlsViewController__captionsTapped___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) captionsButton];
  [v2 setCaptionsEnabled:(v1 & 1) == 0];
}

- (void)_sendButtonTapped:(int64_t)tapped
{
  v9 = [TVRUIButtonEvent createButtonEvent:0 buttonType:tapped];
  buttonActionsDelegate = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
  if (buttonActionsDelegate)
  {
    v5 = buttonActionsDelegate;
    buttonActionsDelegate2 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      buttonActionsDelegate3 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
      [buttonActionsDelegate3 generatedButtonEvent:v9];
    }
  }
}

- (void)_sendButtonPressed:(int64_t)pressed
{
  v9 = [TVRUIButtonEvent createButtonEvent:1 buttonType:pressed];
  buttonActionsDelegate = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
  if (buttonActionsDelegate)
  {
    v5 = buttonActionsDelegate;
    buttonActionsDelegate2 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      buttonActionsDelegate3 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
      [buttonActionsDelegate3 generatedButtonEvent:v9];
    }
  }
}

- (void)_sendButtonReleased:(int64_t)released
{
  v9 = [TVRUIButtonEvent createButtonEvent:2 buttonType:released];
  buttonActionsDelegate = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
  if (buttonActionsDelegate)
  {
    v5 = buttonActionsDelegate;
    buttonActionsDelegate2 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      buttonActionsDelegate3 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
      [buttonActionsDelegate3 generatedButtonEvent:v9];
    }
  }
}

- (void)_buttonPressed:(id)pressed
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 1, [pressed buttonType]);
  buttonActionsDelegate = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
  if (buttonActionsDelegate)
  {
    v5 = buttonActionsDelegate;
    buttonActionsDelegate2 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      buttonActionsDelegate3 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
      [buttonActionsDelegate3 generatedButtonEvent:v9];
    }
  }
}

- (void)_buttonReleased:(id)released
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 2, [released buttonType]);
  buttonActionsDelegate = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
  if (buttonActionsDelegate)
  {
    v5 = buttonActionsDelegate;
    buttonActionsDelegate2 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      buttonActionsDelegate3 = [(TVRUIMediaControlsViewController *)self buttonActionsDelegate];
      [buttonActionsDelegate3 generatedButtonEvent:v9];
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
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

    if (enabledCopy)
    {
      v6 = @"enabled";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Setting media controls from %@ to %@", &v8, 0x16u);
  }

  if (self->_enabled != enabledCopy)
  {
    self->_enabled = enabledCopy;
    [(TVRUIMediaControlsViewController *)self _updateButtonAvailability];
    [(TVRUIMediaControlsViewController *)self _updateButtonVisibilityWithCompletionHandler:0];
  }
}

- (id)_channelUpButtonView
{
  channelButton = [(TVRUIMediaControlsViewController *)self channelButton];
  _channelUpButton = [channelButton _channelUpButton];

  return _channelUpButton;
}

- (UIView)tipSourceView
{
  overflowButton = [(TVRUIMediaControlsViewController *)self overflowButton];
  if ([overflowButton isHidden])
  {
    [(TVRUIMediaControlsViewController *)self infoButton];
  }

  else
  {
    [(TVRUIMediaControlsViewController *)self overflowButton];
  }
  v4 = ;
  imageView = [v4 imageView];

  return imageView;
}

- (CGRect)tipSourceRect
{
  overflowButton = [(TVRUIMediaControlsViewController *)self overflowButton];
  if ([overflowButton isHidden])
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