@interface VTUIEnrollmentLanguageOptionsView
- (BOOL)showPrivacyTextView;
- (VTUIEnrollmentLanguageOptionsView)initWithFrame:(CGRect)a3;
- (id)footerView;
- (id)languageSelectionOfContinueButton:(id)a3;
- (void)_addContinueButtonsToFooter;
- (void)_setupContent;
- (void)setContinueButtonLanguages:(id)a3;
@end

@implementation VTUIEnrollmentLanguageOptionsView

- (VTUIEnrollmentLanguageOptionsView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VTUIEnrollmentLanguageOptionsView;
  v3 = [(VTUIEnrollmentBaseView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VTUIEnrollmentLanguageOptionsView *)v3 _setupContent];
  }

  return v4;
}

- (void)_setupContent
{
  v3 = +[VTUIStyle sharedStyle];
  v4 = [v3 enrollmentMode];

  if (v4 == 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = @"TEXT_TITLE_LANGUAGE_OPTIONS";
  }

  if (v4 == 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = @"ASSISTANT_LANGUAGE_OPTIONS_DESCRIPTION";
  }

  v7 = +[VTUIStringsHelper sharedStringsHelper];
  v8 = [v7 uiLocalizedStringForKey:v5];
  [(VTUIEnrollmentBaseView *)self setTitle:v8];

  v9 = +[VTUIStyle sharedStyle];
  v10 = [v9 VTUIDeviceSpecificString:v6];
  [(VTUIEnrollmentBaseView *)self setSubtitle:v10];

  v11 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(VTUIEnrollmentLanguageOptionsView *)self setBackgroundColor:v11];
}

- (id)languageSelectionOfContinueButton:(id)a3
{
  continueButtonsLanguages = self->_continueButtonsLanguages;
  v4 = [a3 tag];

  return [(NSArray *)continueButtonsLanguages objectAtIndex:v4];
}

- (void)setContinueButtonLanguages:(id)a3
{
  objc_storeStrong(&self->_continueButtonsLanguages, a3);

  [(VTUIEnrollmentLanguageOptionsView *)self _addContinueButtonsToFooter];
}

- (void)_addContinueButtonsToFooter
{
  v2 = self;
  v60[3] = *MEMORY[0x277D85DE8];
  v3 = [(VTUIEnrollmentLanguageOptionsView *)self footerView];

  if (v3)
  {
    v52 = +[VTUIStyle sharedStyle];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    continueButtons = v2->_continueButtons;
    v2->_continueButtons = v4;

    if ([(NSArray *)v2->_continueButtonsLanguages count])
    {
      v6 = 0;
      do
      {
        v7 = +[VTUIButton _vtuiButtonWithPrimaryStyle];
        [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v7 setTag:v6];
        v8 = [(NSArray *)v2->_continueButtonsLanguages objectAtIndexedSubscript:v6];
        v9 = [MEMORY[0x277CEF368] sharedPreferences];
        v10 = [v9 languageCode];

        v11 = v2;
        if (!v10)
        {
          v12 = [MEMORY[0x277CBEAF8] currentLocale];
          v10 = [v12 localeIdentifier];
        }

        v56 = v10;
        v13 = [MEMORY[0x277CEF2D8] sharedInstance];
        v14 = [v13 localizedCompactNameForSiriLanguage:v8 inDisplayLanguage:v10];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v8;
        }

        v17 = v16;

        v18 = MEMORY[0x277CCACA8];
        v55 = v8;
        v19 = +[VTUIStringsHelper sharedStringsHelper];
        v20 = [v19 uiLocalizedStringForKey:@"BUTTON_LANG_OPTION"];
        v21 = +[VTUIStringsHelper sharedStringsHelper];
        v22 = [v21 uiLocalizedStringForKey:v17];

        v23 = [v18 stringWithFormat:v20, v22];
        [v7 setTitle:v23 forState:0];

        [(UIView *)v11->_footerView addSubview:v7];
        v53 = MEMORY[0x277CCAAD0];
        v54 = [v7 centerXAnchor];
        v24 = [(UIView *)v11->_footerView centerXAnchor];
        v25 = [v54 constraintEqualToAnchor:v24];
        v60[0] = v25;
        v26 = [v7 widthAnchor];
        [v52 footerButtonMaximumWidth];
        v27 = [v26 constraintEqualToConstant:?];
        v60[1] = v27;
        [v7 heightAnchor];
        v28 = v2 = v11;
        [v52 primaryButtonHeight];
        v29 = [v28 constraintEqualToConstant:?];
        v60[2] = v29;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
        [v53 activateConstraints:v30];

        [(NSMutableArray *)v2->_continueButtons addObject:v7];
        ++v6;
      }

      while ([(NSArray *)v2->_continueButtonsLanguages count]> v6);
    }

    v31 = MEMORY[0x277CCAAD0];
    v32 = [(NSMutableArray *)v2->_continueButtons firstObject];
    v33 = [v32 topAnchor];
    v34 = [(UIView *)v2->_footerView topAnchor];
    [v52 continueButtonOffset];
    v35 = [v33 constraintEqualToAnchor:v34 constant:?];
    v59 = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    [v31 activateConstraints:v36];

    v37 = [(NSMutableArray *)v2->_continueButtons firstObject];
    if ([(NSMutableArray *)v2->_continueButtons count]< 2)
    {
      v39 = v37;
    }

    else
    {
      v38 = 1;
      do
      {
        v39 = [(NSMutableArray *)v2->_continueButtons objectAtIndexedSubscript:v38];
        v40 = MEMORY[0x277CCAAD0];
        v41 = [v39 topAnchor];
        v42 = [v37 bottomAnchor];
        v43 = [v41 constraintEqualToSystemSpacingBelowAnchor:v42 multiplier:1.0];
        v58 = v43;
        v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
        [v40 activateConstraints:v44];

        if (v38 == [(NSMutableArray *)v2->_continueButtons count]- 1)
        {
          v45 = MEMORY[0x277CCAAD0];
          v46 = [v39 bottomAnchor];
          v47 = [(UIView *)v2->_footerView bottomAnchor];
          [v52 continueButtonOffset];
          v49 = [v46 constraintEqualToAnchor:v47 constant:-v48];
          v57 = v49;
          v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
          [v45 activateConstraints:v50];
        }

        ++v38;
        v37 = v39;
      }

      while ([(NSMutableArray *)v2->_continueButtons count]> v38);
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (BOOL)showPrivacyTextView
{
  v2 = +[VTUIStyle sharedStyle];
  v3 = [v2 isBuddyOrFollowUp];

  return v3;
}

- (id)footerView
{
  v3 = +[VTUIStyle sharedStyle];
  if ([v3 isBuddyOrFollowUp])
  {
    footerView = self->_footerView;

    if (!footerView)
    {
      v5 = objc_alloc_init(MEMORY[0x277D75D18]);
      v6 = self->_footerView;
      self->_footerView = v5;

      [(UIView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    }
  }

  else
  {
  }

  v7 = self->_footerView;

  return v7;
}

@end