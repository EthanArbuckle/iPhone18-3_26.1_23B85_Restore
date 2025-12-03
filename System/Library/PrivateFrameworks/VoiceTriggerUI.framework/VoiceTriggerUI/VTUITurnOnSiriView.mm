@interface VTUITurnOnSiriView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (VTUITurnOnSiriView)initWithFrame:(CGRect)frame;
- (VTUITurnOnSiriViewDelegate)stateViewDelegate;
- (double)imageOffsetFromTop;
- (id)footerView;
- (id)languageSelectionOfContinueButton:(id)button;
- (void)_setupContent;
- (void)_setupTurnOnSiriUI;
- (void)layoutSubviews;
- (void)prepareForLastTimeShown;
@end

@implementation VTUITurnOnSiriView

- (VTUITurnOnSiriView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VTUITurnOnSiriView;
  v3 = [(VTUIEnrollmentBaseView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VTUITurnOnSiriView *)v3 _setupTurnOnSiriUI];
    [(VTUITurnOnSiriView *)v4 _setupContent];
  }

  return v4;
}

- (void)_setupTurnOnSiriUI
{
  v120 = *MEMORY[0x277D85DE8];
  v3 = +[VTUIStyle sharedStyle];
  [v3 setIsFloatingWithReducedWidth:1];
  v117 = 0;
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v7 = [mEMORY[0x277CEF368] allSiriLanguageCodesForSystemLanguageCode:localeIdentifier isGoodFit:&v117];
  siriLanguages = self->_siriLanguages;
  self->_siriLanguages = v7;

  v9 = 0x28089A000uLL;
  if ([(NSArray *)self->_siriLanguages count]< 2)
  {
    v19 = +[VTUIButton _vtuiButtonWithPrimaryStyle];
    continueButton = self->_continueButton;
    self->_continueButton = v19;

    titleLabel = [(UIButton *)self->_continueButton titleLabel];
    turnOnSiriContinueButtonFont = [v3 turnOnSiriContinueButtonFont];
    [titleLabel setFont:turnOnSiriContinueButtonFont];

    [(UIButton *)self->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = self->_continueButton;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)v23 setTitleColor:whiteColor forState:0];

    v25 = self->_continueButton;
    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    [(UIButton *)v25 setTitleColor:lightGrayColor forState:1];

    layer = [(UIButton *)self->_continueButton layer];
    [layer setCornerRadius:10.0];

    [(UIButton *)self->_continueButton setClipsToBounds:1];
    continueButtons = [(VTUITurnOnSiriView *)self footerView];
    [continueButtons addSubview:self->_continueButton];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([(NSArray *)self->_siriLanguages count])
    {
      v11 = 0;
      do
      {
        v12 = +[VTUIButton _vtuiButtonWithPrimaryStyle];
        [v12 setTag:v11];
        titleLabel2 = [v12 titleLabel];
        turnOnSiriContinueButtonFont2 = [v3 turnOnSiriContinueButtonFont];
        [titleLabel2 setFont:turnOnSiriContinueButtonFont2];

        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
        whiteColor2 = [MEMORY[0x277D75348] whiteColor];
        [v12 setTitleColor:whiteColor2 forState:0];

        layer2 = [v12 layer];
        [layer2 setCornerRadius:10.0];

        [v12 setClipsToBounds:1];
        footerView = [(VTUITurnOnSiriView *)self footerView];
        [footerView addSubview:v12];

        [(NSArray *)v10 addObject:v12];
        ++v11;
      }

      while ([(NSArray *)self->_siriLanguages count]> v11);
    }

    continueButtons = self->_continueButtons;
    self->_continueButtons = v10;
    v9 = 0x28089A000;
  }

  v28 = +[VTUIButton _vtuiButtonWithSecondaryStyle];
  v29 = 528;
  laterButton = self->_laterButton;
  self->_laterButton = v28;

  [(UIButton *)self->_laterButton setTranslatesAutoresizingMaskIntoConstraints:0];
  footerView2 = [(VTUITurnOnSiriView *)self footerView];
  [footerView2 addSubview:self->_laterButton];

  v32 = *(v9 + 2688);
  v33 = *(&self->super.super.super.super.isa + v32);
  if (v33)
  {
    v34 = MEMORY[0x277CCAAD0];
    footerView3 = [(VTUITurnOnSiriView *)self footerView];
    [v3 continueButtonOffset];
    v37 = [v34 constraintWithItem:v33 attribute:3 relatedBy:0 toItem:footerView3 attribute:3 multiplier:1.0 constant:v36];
    [(VTUITurnOnSiriView *)self addConstraint:v37];

    v38 = MEMORY[0x277CCAAD0];
    titleLabel3 = [(UIButton *)self->_laterButton titleLabel];
    v40 = *(&self->super.super.super.super.isa + v32);
    [v3 bottomOfContinueToNotNowFirstBaseline];
    lastObject = [v38 constraintWithItem:titleLabel3 attribute:12 relatedBy:0 toItem:v40 attribute:4 multiplier:1.0 constant:v41];
    [(VTUITurnOnSiriView *)self addConstraint:lastObject];
  }

  else
  {
    if ([(NSArray *)self->_continueButtons count]< 2)
    {
      goto LABEL_15;
    }

    v43 = MEMORY[0x277CCAAD0];
    firstObject = [(NSArray *)self->_continueButtons firstObject];
    footerView4 = [(VTUITurnOnSiriView *)self footerView];
    [v3 continueButtonOffset];
    v47 = [v43 constraintWithItem:firstObject attribute:3 relatedBy:0 toItem:footerView4 attribute:3 multiplier:1.0 constant:v46];
    [(VTUITurnOnSiriView *)self addConstraint:v47];

    if ([(NSArray *)self->_continueButtons count]>= 2)
    {
      v48 = 1;
      do
      {
        v49 = MEMORY[0x277CCAAD0];
        v50 = [(NSArray *)self->_continueButtons objectAtIndex:v48];
        v51 = [(NSArray *)self->_continueButtons objectAtIndex:v48 - 1];
        [v3 continueButtonPaddingTop];
        v53 = [v49 constraintWithItem:v50 attribute:3 relatedBy:0 toItem:v51 attribute:4 multiplier:1.0 constant:v52];
        [(VTUITurnOnSiriView *)self addConstraint:v53];

        ++v48;
      }

      while ([(NSArray *)self->_continueButtons count]> v48);
    }

    v54 = MEMORY[0x277CCAAD0];
    titleLabel3 = [(UIButton *)self->_laterButton titleLabel];
    lastObject = [(NSArray *)self->_continueButtons lastObject];
    [v3 bottomOfContinueToNotNowFirstBaseline];
    v56 = [v54 constraintWithItem:titleLabel3 attribute:12 relatedBy:0 toItem:lastObject attribute:4 multiplier:1.0 constant:v55];
    [(VTUITurnOnSiriView *)self addConstraint:v56];
  }

LABEL_15:
  v57 = *(&self->super.super.super.super.isa + v32);
  if (v57)
  {
    v58 = MEMORY[0x277CCAAD0];
    footerView5 = [(VTUITurnOnSiriView *)self footerView];
    v60 = [v58 constraintWithItem:v57 attribute:9 relatedBy:0 toItem:footerView5 attribute:9 multiplier:1.0 constant:0.0];
    [(VTUITurnOnSiriView *)self addConstraint:v60];
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    footerView5 = self->_continueButtons;
    v61 = [(NSArray *)footerView5 countByEnumeratingWithState:&v113 objects:v119 count:16];
    if (v61)
    {
      v62 = v61;
      v107 = 528;
      v108 = v32;
      v63 = *v114;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v114 != v63)
          {
            objc_enumerationMutation(footerView5);
          }

          v65 = *(*(&v113 + 1) + 8 * i);
          v66 = MEMORY[0x277CCAAD0];
          v67 = [(VTUITurnOnSiriView *)self footerView:v107];
          v68 = [v66 constraintWithItem:v65 attribute:9 relatedBy:0 toItem:v67 attribute:9 multiplier:1.0 constant:0.0];
          [(VTUITurnOnSiriView *)self addConstraint:v68];
        }

        v62 = [(NSArray *)footerView5 countByEnumeratingWithState:&v113 objects:v119 count:16];
      }

      while (v62);
      v29 = v107;
      v32 = v108;
    }
  }

  v69 = MEMORY[0x277CCAAD0];
  v70 = *(&self->super.super.super.super.isa + v29);
  footerView6 = [(VTUITurnOnSiriView *)self footerView];
  v72 = [v69 constraintWithItem:v70 attribute:9 relatedBy:0 toItem:footerView6 attribute:9 multiplier:1.0 constant:0.0];
  [(VTUITurnOnSiriView *)self addConstraint:v72];

  v73 = MEMORY[0x277CCAAD0];
  v74 = *(&self->super.super.super.super.isa + v29);
  footerView7 = [(VTUITurnOnSiriView *)self footerView];
  [v3 skipButtonBaselineBottomMarginPortrait];
  v77 = [v73 constraintWithItem:v74 attribute:4 relatedBy:0 toItem:footerView7 attribute:4 multiplier:1.0 constant:-v76];
  [(VTUITurnOnSiriView *)self addConstraint:v77];

  v78 = *(&self->super.super.super.super.isa + v32);
  if (v78)
  {
    firstObject3 = [MEMORY[0x277CCAAD0] constraintWithItem:*(&self->super.super.super.super.isa + v29) attribute:7 relatedBy:0 toItem:v78 attribute:7 multiplier:1.0 constant:0.0];
    [(VTUITurnOnSiriView *)self addConstraint:firstObject3];
  }

  else
  {
    firstObject2 = [(NSArray *)self->_continueButtons firstObject];

    if (!firstObject2)
    {
      goto LABEL_30;
    }

    v81 = MEMORY[0x277CCAAD0];
    v82 = *(&self->super.super.super.super.isa + v29);
    firstObject3 = [(NSArray *)self->_continueButtons firstObject];
    v83 = [v81 constraintWithItem:v82 attribute:7 relatedBy:0 toItem:firstObject3 attribute:7 multiplier:1.0 constant:0.0];
    [(VTUITurnOnSiriView *)self addConstraint:v83];
  }

LABEL_30:
  v84 = MEMORY[0x277CCAAD0];
  titleLabel4 = [*(&self->super.super.super.super.isa + v29) titleLabel];
  v86 = [v84 constraintWithItem:titleLabel4 attribute:7 relatedBy:0 toItem:*(&self->super.super.super.super.isa + v29) attribute:7 multiplier:1.0 constant:0.0];
  [(VTUITurnOnSiriView *)self addConstraint:v86];

  v87 = *(&self->super.super.super.super.isa + v32);
  if (v87)
  {
    v88 = MEMORY[0x277CCAAD0];
    [v3 turnOnSiriContinueButtonWidth];
    v90 = [v88 constraintWithItem:v87 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v89];
    [v87 addConstraint:v90];

    v91 = *(&self->super.super.super.super.isa + v32);
    v92 = MEMORY[0x277CCAAD0];
    [v3 turnOnSiriContinueButtonHeight];
    v94 = [v92 constraintWithItem:v91 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v93];
    [v91 addConstraint:v94];
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v94 = self->_continueButtons;
    v95 = [(NSArray *)v94 countByEnumeratingWithState:&v109 objects:v118 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = *v110;
      do
      {
        for (j = 0; j != v96; ++j)
        {
          if (*v110 != v97)
          {
            objc_enumerationMutation(v94);
          }

          v99 = *(*(&v109 + 1) + 8 * j);
          v100 = MEMORY[0x277CCAAD0];
          [v3 turnOnSiriContinueButtonWidth];
          v102 = [v100 constraintWithItem:v99 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v101];
          [v99 addConstraint:v102];

          v103 = MEMORY[0x277CCAAD0];
          [v3 turnOnSiriContinueButtonHeight];
          v105 = [v103 constraintWithItem:v99 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v104];
          [v99 addConstraint:v105];
        }

        v96 = [(NSArray *)v94 countByEnumeratingWithState:&v109 objects:v118 count:16];
      }

      while (v96);
    }
  }

  v106 = *MEMORY[0x277D85DE8];
}

- (id)languageSelectionOfContinueButton:(id)button
{
  siriLanguages = self->_siriLanguages;
  v4 = [button tag];

  return [(NSArray *)siriLanguages objectAtIndex:v4];
}

- (void)_setupContent
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = +[VTUIStyle sharedStyle];
  v4 = +[VTUIStringsHelper sharedStringsHelper];
  v5 = [v4 uiLocalizedStringForKey:@"TEXT_TITLE_CONS"];
  [(VTUIEnrollmentBaseView *)self setTitle:v5];

  v6 = +[VTUIStyle sharedStyle];
  v7 = [v6 VTUIDeviceSpecificString:@"ASSISTANT_DESCRIPTION_SHORT"];
  [(VTUIEnrollmentBaseView *)self setSubtitle:v7];

  v8 = +[VTUIStyle sharedStyle];
  v36 = v3;
  if ([v3 supportsSideButtonActivation])
  {
    v9 = @"ASSISTANT_TRIGGER_INSTRUCTION_SIDE_BUTTON";
  }

  else
  {
    v9 = @"ASSISTANT_TRIGGER_INSTRUCTION_HOME_BUTTON";
  }

  v10 = [v8 VTUIDeviceSpecificString:v9];
  [(VTUIEnrollmentBaseView *)self setInstructionText:v10];

  continueButton = self->_continueButton;
  v12 = +[VTUIStyle sharedStyle];
  v13 = [v12 VTUIDeviceSpecificString:@"BUTTON_TURN_ON_SIRI"];
  [(UIButton *)continueButton setTitle:v13 forState:0];

  laterButton = self->_laterButton;
  v15 = +[VTUIStyle sharedStyle];
  v16 = [v15 VTUIDeviceSpecificString:@"BUTTON_CONS_NOT_NOW"];
  [(UIButton *)laterButton setTitle:v16 forState:0];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  selfCopy = self;
  obj = self->_continueButtons;
  v40 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v40)
  {
    v38 = *v42;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v41 + 1) + 8 * i);
        v19 = -[NSArray objectAtIndex:](selfCopy->_siriLanguages, "objectAtIndex:", [v18 tag]);
        mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
        languageCode = [mEMORY[0x277CEF368] languageCode];

        if (!languageCode)
        {
          currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
          languageCode = [currentLocale localeIdentifier];
        }

        mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
        v24 = [mEMORY[0x277CEF2D8] localizedCompactNameForSiriLanguage:v19 inDisplayLanguage:languageCode];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = v19;
        }

        v27 = v26;

        v28 = MEMORY[0x277CCACA8];
        v29 = +[VTUIStringsHelper sharedStringsHelper];
        v30 = [v29 uiLocalizedStringForKey:@"BUTTON_LANG_OPTION"];
        v31 = +[VTUIStringsHelper sharedStringsHelper];
        v32 = [v31 uiLocalizedStringForKey:v27];

        v33 = [v28 stringWithFormat:v30, v32];
        [v18 setTitle:v33 forState:0];
      }

      v40 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v40);
  }

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(VTUITurnOnSiriView *)selfCopy setBackgroundColor:clearColor];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = VTUITurnOnSiriView;
  [(VTUIEnrollmentBaseView *)&v2 layoutSubviews];
}

- (id)footerView
{
  footerView = self->_footerView;
  if (!footerView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->_footerView;
    self->_footerView = v4;

    footerView = self->_footerView;
  }

  return footerView;
}

- (void)prepareForLastTimeShown
{
  laterButton = self->_laterButton;
  v4 = +[VTUIStyle sharedStyle];
  v3 = [v4 VTUIDeviceSpecificString:@"BUTTON_CONS_LATER"];
  [(UIButton *)laterButton setTitle:v3 forState:0];
}

- (double)imageOffsetFromTop
{
  v2 = +[VTUIStyle sharedStyle];
  [v2 turnOnSiriImageOffsetFromTop];
  v4 = v3;

  return v4;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_stateViewDelegate);
  [WeakRetained aboutSelectedInTurnOnSiriView:self];

  return 0;
}

- (VTUITurnOnSiriViewDelegate)stateViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stateViewDelegate);

  return WeakRetained;
}

@end