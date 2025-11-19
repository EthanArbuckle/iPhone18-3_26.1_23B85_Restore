@interface VTUITurnOnSiriView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (VTUITurnOnSiriView)initWithFrame:(CGRect)a3;
- (VTUITurnOnSiriViewDelegate)stateViewDelegate;
- (double)imageOffsetFromTop;
- (id)footerView;
- (id)languageSelectionOfContinueButton:(id)a3;
- (void)_setupContent;
- (void)_setupTurnOnSiriUI;
- (void)layoutSubviews;
- (void)prepareForLastTimeShown;
@end

@implementation VTUITurnOnSiriView

- (VTUITurnOnSiriView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VTUITurnOnSiriView;
  v3 = [(VTUIEnrollmentBaseView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v4 = [MEMORY[0x277CEF368] sharedPreferences];
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v5 localeIdentifier];
  v7 = [v4 allSiriLanguageCodesForSystemLanguageCode:v6 isGoodFit:&v117];
  siriLanguages = self->_siriLanguages;
  self->_siriLanguages = v7;

  v9 = 0x28089A000uLL;
  if ([(NSArray *)self->_siriLanguages count]< 2)
  {
    v19 = +[VTUIButton _vtuiButtonWithPrimaryStyle];
    continueButton = self->_continueButton;
    self->_continueButton = v19;

    v21 = [(UIButton *)self->_continueButton titleLabel];
    v22 = [v3 turnOnSiriContinueButtonFont];
    [v21 setFont:v22];

    [(UIButton *)self->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = self->_continueButton;
    v24 = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)v23 setTitleColor:v24 forState:0];

    v25 = self->_continueButton;
    v26 = [MEMORY[0x277D75348] lightGrayColor];
    [(UIButton *)v25 setTitleColor:v26 forState:1];

    v27 = [(UIButton *)self->_continueButton layer];
    [v27 setCornerRadius:10.0];

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
        v13 = [v12 titleLabel];
        v14 = [v3 turnOnSiriContinueButtonFont];
        [v13 setFont:v14];

        [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
        v15 = [MEMORY[0x277D75348] whiteColor];
        [v12 setTitleColor:v15 forState:0];

        v16 = [v12 layer];
        [v16 setCornerRadius:10.0];

        [v12 setClipsToBounds:1];
        v17 = [(VTUITurnOnSiriView *)self footerView];
        [v17 addSubview:v12];

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
  v31 = [(VTUITurnOnSiriView *)self footerView];
  [v31 addSubview:self->_laterButton];

  v32 = *(v9 + 2688);
  v33 = *(&self->super.super.super.super.isa + v32);
  if (v33)
  {
    v34 = MEMORY[0x277CCAAD0];
    v35 = [(VTUITurnOnSiriView *)self footerView];
    [v3 continueButtonOffset];
    v37 = [v34 constraintWithItem:v33 attribute:3 relatedBy:0 toItem:v35 attribute:3 multiplier:1.0 constant:v36];
    [(VTUITurnOnSiriView *)self addConstraint:v37];

    v38 = MEMORY[0x277CCAAD0];
    v39 = [(UIButton *)self->_laterButton titleLabel];
    v40 = *(&self->super.super.super.super.isa + v32);
    [v3 bottomOfContinueToNotNowFirstBaseline];
    v42 = [v38 constraintWithItem:v39 attribute:12 relatedBy:0 toItem:v40 attribute:4 multiplier:1.0 constant:v41];
    [(VTUITurnOnSiriView *)self addConstraint:v42];
  }

  else
  {
    if ([(NSArray *)self->_continueButtons count]< 2)
    {
      goto LABEL_15;
    }

    v43 = MEMORY[0x277CCAAD0];
    v44 = [(NSArray *)self->_continueButtons firstObject];
    v45 = [(VTUITurnOnSiriView *)self footerView];
    [v3 continueButtonOffset];
    v47 = [v43 constraintWithItem:v44 attribute:3 relatedBy:0 toItem:v45 attribute:3 multiplier:1.0 constant:v46];
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
    v39 = [(UIButton *)self->_laterButton titleLabel];
    v42 = [(NSArray *)self->_continueButtons lastObject];
    [v3 bottomOfContinueToNotNowFirstBaseline];
    v56 = [v54 constraintWithItem:v39 attribute:12 relatedBy:0 toItem:v42 attribute:4 multiplier:1.0 constant:v55];
    [(VTUITurnOnSiriView *)self addConstraint:v56];
  }

LABEL_15:
  v57 = *(&self->super.super.super.super.isa + v32);
  if (v57)
  {
    v58 = MEMORY[0x277CCAAD0];
    v59 = [(VTUITurnOnSiriView *)self footerView];
    v60 = [v58 constraintWithItem:v57 attribute:9 relatedBy:0 toItem:v59 attribute:9 multiplier:1.0 constant:0.0];
    [(VTUITurnOnSiriView *)self addConstraint:v60];
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v59 = self->_continueButtons;
    v61 = [(NSArray *)v59 countByEnumeratingWithState:&v113 objects:v119 count:16];
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
            objc_enumerationMutation(v59);
          }

          v65 = *(*(&v113 + 1) + 8 * i);
          v66 = MEMORY[0x277CCAAD0];
          v67 = [(VTUITurnOnSiriView *)self footerView:v107];
          v68 = [v66 constraintWithItem:v65 attribute:9 relatedBy:0 toItem:v67 attribute:9 multiplier:1.0 constant:0.0];
          [(VTUITurnOnSiriView *)self addConstraint:v68];
        }

        v62 = [(NSArray *)v59 countByEnumeratingWithState:&v113 objects:v119 count:16];
      }

      while (v62);
      v29 = v107;
      v32 = v108;
    }
  }

  v69 = MEMORY[0x277CCAAD0];
  v70 = *(&self->super.super.super.super.isa + v29);
  v71 = [(VTUITurnOnSiriView *)self footerView];
  v72 = [v69 constraintWithItem:v70 attribute:9 relatedBy:0 toItem:v71 attribute:9 multiplier:1.0 constant:0.0];
  [(VTUITurnOnSiriView *)self addConstraint:v72];

  v73 = MEMORY[0x277CCAAD0];
  v74 = *(&self->super.super.super.super.isa + v29);
  v75 = [(VTUITurnOnSiriView *)self footerView];
  [v3 skipButtonBaselineBottomMarginPortrait];
  v77 = [v73 constraintWithItem:v74 attribute:4 relatedBy:0 toItem:v75 attribute:4 multiplier:1.0 constant:-v76];
  [(VTUITurnOnSiriView *)self addConstraint:v77];

  v78 = *(&self->super.super.super.super.isa + v32);
  if (v78)
  {
    v79 = [MEMORY[0x277CCAAD0] constraintWithItem:*(&self->super.super.super.super.isa + v29) attribute:7 relatedBy:0 toItem:v78 attribute:7 multiplier:1.0 constant:0.0];
    [(VTUITurnOnSiriView *)self addConstraint:v79];
  }

  else
  {
    v80 = [(NSArray *)self->_continueButtons firstObject];

    if (!v80)
    {
      goto LABEL_30;
    }

    v81 = MEMORY[0x277CCAAD0];
    v82 = *(&self->super.super.super.super.isa + v29);
    v79 = [(NSArray *)self->_continueButtons firstObject];
    v83 = [v81 constraintWithItem:v82 attribute:7 relatedBy:0 toItem:v79 attribute:7 multiplier:1.0 constant:0.0];
    [(VTUITurnOnSiriView *)self addConstraint:v83];
  }

LABEL_30:
  v84 = MEMORY[0x277CCAAD0];
  v85 = [*(&self->super.super.super.super.isa + v29) titleLabel];
  v86 = [v84 constraintWithItem:v85 attribute:7 relatedBy:0 toItem:*(&self->super.super.super.super.isa + v29) attribute:7 multiplier:1.0 constant:0.0];
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

- (id)languageSelectionOfContinueButton:(id)a3
{
  siriLanguages = self->_siriLanguages;
  v4 = [a3 tag];

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
  v39 = self;
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
        v19 = -[NSArray objectAtIndex:](v39->_siriLanguages, "objectAtIndex:", [v18 tag]);
        v20 = [MEMORY[0x277CEF368] sharedPreferences];
        v21 = [v20 languageCode];

        if (!v21)
        {
          v22 = [MEMORY[0x277CBEAF8] currentLocale];
          v21 = [v22 localeIdentifier];
        }

        v23 = [MEMORY[0x277CEF2D8] sharedInstance];
        v24 = [v23 localizedCompactNameForSiriLanguage:v19 inDisplayLanguage:v21];
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

  v34 = [MEMORY[0x277D75348] clearColor];
  [(VTUITurnOnSiriView *)v39 setBackgroundColor:v34];

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

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
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