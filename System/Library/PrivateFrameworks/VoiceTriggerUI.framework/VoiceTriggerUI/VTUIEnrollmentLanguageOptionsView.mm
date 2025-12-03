@interface VTUIEnrollmentLanguageOptionsView
- (BOOL)showPrivacyTextView;
- (VTUIEnrollmentLanguageOptionsView)initWithFrame:(CGRect)frame;
- (id)footerView;
- (id)languageSelectionOfContinueButton:(id)button;
- (void)_addContinueButtonsToFooter;
- (void)_setupContent;
- (void)setContinueButtonLanguages:(id)languages;
@end

@implementation VTUIEnrollmentLanguageOptionsView

- (VTUIEnrollmentLanguageOptionsView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VTUIEnrollmentLanguageOptionsView;
  v3 = [(VTUIEnrollmentBaseView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  enrollmentMode = [v3 enrollmentMode];

  if (enrollmentMode == 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = @"TEXT_TITLE_LANGUAGE_OPTIONS";
  }

  if (enrollmentMode == 4)
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

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(VTUIEnrollmentLanguageOptionsView *)self setBackgroundColor:systemBackgroundColor];
}

- (id)languageSelectionOfContinueButton:(id)button
{
  continueButtonsLanguages = self->_continueButtonsLanguages;
  v4 = [button tag];

  return [(NSArray *)continueButtonsLanguages objectAtIndex:v4];
}

- (void)setContinueButtonLanguages:(id)languages
{
  objc_storeStrong(&self->_continueButtonsLanguages, languages);

  [(VTUIEnrollmentLanguageOptionsView *)self _addContinueButtonsToFooter];
}

- (void)_addContinueButtonsToFooter
{
  selfCopy = self;
  v60[3] = *MEMORY[0x277D85DE8];
  footerView = [(VTUIEnrollmentLanguageOptionsView *)self footerView];

  if (footerView)
  {
    v52 = +[VTUIStyle sharedStyle];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    continueButtons = selfCopy->_continueButtons;
    selfCopy->_continueButtons = v4;

    if ([(NSArray *)selfCopy->_continueButtonsLanguages count])
    {
      v6 = 0;
      do
      {
        v7 = +[VTUIButton _vtuiButtonWithPrimaryStyle];
        [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v7 setTag:v6];
        v8 = [(NSArray *)selfCopy->_continueButtonsLanguages objectAtIndexedSubscript:v6];
        mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
        languageCode = [mEMORY[0x277CEF368] languageCode];

        v11 = selfCopy;
        if (!languageCode)
        {
          currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
          languageCode = [currentLocale localeIdentifier];
        }

        v56 = languageCode;
        mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
        v14 = [mEMORY[0x277CEF2D8] localizedCompactNameForSiriLanguage:v8 inDisplayLanguage:languageCode];
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
        centerXAnchor = [v7 centerXAnchor];
        centerXAnchor2 = [(UIView *)v11->_footerView centerXAnchor];
        v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v60[0] = v25;
        widthAnchor = [v7 widthAnchor];
        [v52 footerButtonMaximumWidth];
        v27 = [widthAnchor constraintEqualToConstant:?];
        v60[1] = v27;
        [v7 heightAnchor];
        v28 = selfCopy = v11;
        [v52 primaryButtonHeight];
        v29 = [v28 constraintEqualToConstant:?];
        v60[2] = v29;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
        [v53 activateConstraints:v30];

        [(NSMutableArray *)selfCopy->_continueButtons addObject:v7];
        ++v6;
      }

      while ([(NSArray *)selfCopy->_continueButtonsLanguages count]> v6);
    }

    v31 = MEMORY[0x277CCAAD0];
    firstObject = [(NSMutableArray *)selfCopy->_continueButtons firstObject];
    topAnchor = [firstObject topAnchor];
    topAnchor2 = [(UIView *)selfCopy->_footerView topAnchor];
    [v52 continueButtonOffset];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v59 = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    [v31 activateConstraints:v36];

    firstObject2 = [(NSMutableArray *)selfCopy->_continueButtons firstObject];
    if ([(NSMutableArray *)selfCopy->_continueButtons count]< 2)
    {
      v39 = firstObject2;
    }

    else
    {
      v38 = 1;
      do
      {
        v39 = [(NSMutableArray *)selfCopy->_continueButtons objectAtIndexedSubscript:v38];
        v40 = MEMORY[0x277CCAAD0];
        topAnchor3 = [v39 topAnchor];
        bottomAnchor = [firstObject2 bottomAnchor];
        v43 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
        v58 = v43;
        v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
        [v40 activateConstraints:v44];

        if (v38 == [(NSMutableArray *)selfCopy->_continueButtons count]- 1)
        {
          v45 = MEMORY[0x277CCAAD0];
          bottomAnchor2 = [v39 bottomAnchor];
          bottomAnchor3 = [(UIView *)selfCopy->_footerView bottomAnchor];
          [v52 continueButtonOffset];
          v49 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v48];
          v57 = v49;
          v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
          [v45 activateConstraints:v50];
        }

        ++v38;
        firstObject2 = v39;
      }

      while ([(NSMutableArray *)selfCopy->_continueButtons count]> v38);
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (BOOL)showPrivacyTextView
{
  v2 = +[VTUIStyle sharedStyle];
  isBuddyOrFollowUp = [v2 isBuddyOrFollowUp];

  return isBuddyOrFollowUp;
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