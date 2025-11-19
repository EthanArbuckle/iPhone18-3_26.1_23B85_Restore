@interface WFInputTextDialogViewController
- (BOOL)actingAsNumberField;
- (BOOL)allowsDecimalNumbers;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (BOOL)useNumberValidation;
- (UIButton)clearButton;
- (UILabel)hintLabel;
- (UITextField)textField;
- (UITextView)textView;
- (id)styledFontForTextStyle:(id)a3;
- (void)clearText;
- (void)finishEditing;
- (void)finishWithInputtedText;
- (void)loadView;
- (void)negateText;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidChange:(id)a3;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateClearButtonVisibility;
- (void)updateDateFormattingHint;
- (void)updateTextViewPlaceholder;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFInputTextDialogViewController

- (UILabel)hintLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_hintLabel);

  return WeakRetained;
}

- (UIButton)clearButton
{
  WeakRetained = objc_loadWeakRetained(&self->_clearButton);

  return WeakRetained;
}

- (UITextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

- (UITextField)textField
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);

  return WeakRetained;
}

- (void)textViewDidChange:(id)a3
{
  v4 = [(WFInputTextDialogViewController *)self resetIdleTimerSuppressionBlock];

  if (v4)
  {
    v5 = [(WFInputTextDialogViewController *)self resetIdleTimerSuppressionBlock];
    v5[2]();
  }
}

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = [(WFInputTextDialogViewController *)self initialInsertionIndex];
  if ((v5 & 0x8000000000000000) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__WFInputTextDialogViewController_textViewDidBeginEditing___block_invoke;
    block[3] = &unk_279EE84A0;
    v8 = self;
    v9 = v5;
    v7 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __59__WFInputTextDialogViewController_textViewDidBeginEditing___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSelectedRange:{*(a1 + 48), 0}];
  v2 = *(a1 + 40);

  return [v2 setInitialInsertionIndex:-1];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  if ([v4 returnKeyType])
  {
    [(WFInputTextDialogViewController *)self finishWithInputtedText];
  }

  [v4 resignFirstResponder];

  return 1;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if ([(WFInputTextDialogViewController *)self useNumberValidation])
  {
    v11 = [(WFCompactDialogViewController *)self request];
    v12 = [v11 textFieldConfiguration];
    v13 = [v12 allowsNegativeNumbers];

    v14 = [v9 text];
    v15 = v14;
    if (!v14)
    {
      v14 = &stru_2883A0E78;
    }

    v16 = [(__CFString *)v14 stringByReplacingCharactersInRange:location withString:length, v10];

    v17 = [MEMORY[0x277D7BDC8] shouldChangeText:v16 allowMinus:v13];
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (void)updateDateFormattingHint
{
  v5 = [(WFInputTextDialogViewController *)self dateFormatter];

  if (v5)
  {
    v6 = [(WFInputTextDialogViewController *)self textField];
    v7 = [v6 text];

    if ([v7 length])
    {
      v8 = [MEMORY[0x277CFC370] detectedDatesInString:v7 error:0];
      v9 = [v8 firstObject];

      v10 = [v9 timeIsSignificant];
      if (v10)
      {
        v2 = [(WFCompactDialogViewController *)self request];
        v3 = [v2 textFieldConfiguration];
        v11 = [v3 timeFormatStyle];
      }

      else
      {
        v11 = 0;
      }

      v12 = [(WFInputTextDialogViewController *)self dateFormatter];
      [v12 setTimeStyle:v11];

      if (v10)
      {
      }

      if (v9)
      {
        v13 = [(WFInputTextDialogViewController *)self dateFormatter];
        v14 = [v9 date];
        v18 = [v13 stringFromDate:v14];
      }

      else
      {
        v18 = [(WFInputTextDialogViewController *)self localizedIncompleteHintString];
      }
    }

    else
    {
      v18 = 0;
    }

    v15 = [(WFInputTextDialogViewController *)self hintLabel];
    [v15 setText:v18];

    if ([v18 length])
    {
      v16 = 69.0;
    }

    else
    {
      v16 = 54.0;
    }

    v17 = [(WFInputTextDialogViewController *)self contentViewHeightAnchor];
    [v17 setConstant:v16];
  }
}

- (void)textFieldDidChange:(id)a3
{
  v15 = a3;
  if ([(WFInputTextDialogViewController *)self useNumberValidation])
  {
    v4 = [(WFInputTextDialogViewController *)self allowsDecimalNumbers];
    v5 = MEMORY[0x277D7BDC8];
    v6 = [v15 text];
    v7 = [v5 stringBySanitizingNumberString:v6 allowDecimalNumbers:v4];

    v8 = [v15 text];
    LOBYTE(v6) = [v8 isEqualToString:v7];

    if ((v6 & 1) == 0)
    {
      v9 = [(WFInputTextDialogViewController *)self textField];
      v10 = [v9 beginningOfDocument];
      v11 = [v9 endOfDocument];
      v12 = [v9 textRangeFromPosition:v10 toPosition:v11];

      [v9 replaceRange:v12 withText:v7];
    }
  }

  else
  {
    [(WFInputTextDialogViewController *)self updateDateFormattingHint];
  }

  [(WFInputTextDialogViewController *)self updateClearButtonVisibility];
  v13 = [(WFInputTextDialogViewController *)self resetIdleTimerSuppressionBlock];

  if (v13)
  {
    v14 = [(WFInputTextDialogViewController *)self resetIdleTimerSuppressionBlock];
    v14[2]();
  }
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  [(WFInputTextDialogViewController *)self updateClearButtonVisibility];
  v5 = [(WFInputTextDialogViewController *)self initialInsertionIndex];
  if ((v5 & 0x8000000000000000) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__WFInputTextDialogViewController_textFieldDidBeginEditing___block_invoke;
    block[3] = &unk_279EE84A0;
    v8 = self;
    v9 = v5;
    v7 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __60__WFInputTextDialogViewController_textFieldDidBeginEditing___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 beginningOfDocument];
  v5 = [v2 positionFromPosition:v3 offset:*(a1 + 48)];

  v4 = [*(a1 + 32) textRangeFromPosition:v5 toPosition:v5];
  [*(a1 + 32) setSelectedTextRange:v4];

  [*(a1 + 40) setInitialInsertionIndex:-1];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = WFInputTextDialogViewController;
  v4 = a3;
  [(WFInputTextDialogViewController *)&v9 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(WFInputTextDialogViewController *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v5 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [(WFInputTextDialogViewController *)self updateTextViewPlaceholder];
  }
}

- (id)styledFontForTextStyle:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFCompactDialogViewController *)self request];
  v6 = [v5 attribution];
  v7 = [v6 appBundleIdentifier];
  v8 = [v7 isEqualToString:*MEMORY[0x277D7A2A0]];

  if (v8)
  {
    v20 = *MEMORY[0x277D74338];
    v9 = *MEMORY[0x277D74388];
    v17[0] = *MEMORY[0x277D74398];
    v17[1] = v9;
    v18[0] = &unk_2883C1D30;
    v18[1] = &unk_2883C1D48;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v19 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v21[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

    v13 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v4];
    v14 = [v13 fontDescriptorByAddingAttributes:v12];

    v15 = [MEMORY[0x277D74300] fontWithDescriptor:v14 size:0.0];
  }

  else
  {
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:v4];
  }

  return v15;
}

- (void)updateTextViewPlaceholder
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
  v7 = MEMORY[0x277D76A28];
  if (!v6)
  {
    v7 = MEMORY[0x277D76918];
  }

  v8 = [(WFInputTextDialogViewController *)self styledFontForTextStyle:*v7];
  v9 = [(WFInputTextDialogViewController *)self placeholder];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CCA898]);
    v11 = *MEMORY[0x277D740C0];
    v14[0] = *MEMORY[0x277D740A8];
    v14[1] = v11;
    v15[0] = v8;
    v2 = [MEMORY[0x277D75348] labelColor];
    v3 = [v2 colorWithAlphaComponent:0.3];
    v15[1] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v12 = [v10 initWithString:v9 attributes:v4];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(WFInputTextDialogViewController *)self textView];
  [v13 setAttributedPlaceholder:v12];

  if (v9)
  {
  }
}

- (void)updateClearButtonVisibility
{
  v3 = [(WFInputTextDialogViewController *)self clearButton];

  if (v3)
  {
    v4 = [(WFInputTextDialogViewController *)self textField];
    v5 = [(WFCompactDialogViewController *)self request];
    v6 = [v5 textFieldConfiguration];
    v7 = [v6 clearButtonMode];
    v8 = WFClearButtonModeFromString();

    v9 = [v4 isFirstResponder];
    v10 = [v4 text];
    v11 = [v10 length];

    v12 = v9 ^ 1;
    if (v11)
    {
      v13 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    if (v8 != 1)
    {
      v13 = v11 != 0;
    }

    if (v8 == 2)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    WeakRetained = objc_loadWeakRetained(&self->_clearButton);
    [WeakRetained alpha];
    v17 = v14 ^ (v16 != 1.0);

    if ((v17 & 1) == 0)
    {
      v18 = objc_loadWeakRetained(&self->_clearButton);
      if (v14)
      {
        CGAffineTransformMakeScale(&v23, 0.8, 0.8);
        v19 = 0.25;
      }

      else
      {
        v20 = *(MEMORY[0x277CBF2C0] + 16);
        *&v23.a = *MEMORY[0x277CBF2C0];
        *&v23.c = v20;
        *&v23.tx = *(MEMORY[0x277CBF2C0] + 32);
        v19 = 0.15;
      }

      [v18 setTransform:&v23];

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __62__WFInputTextDialogViewController_updateClearButtonVisibility__block_invoke;
      v21[3] = &unk_279EE8AA0;
      v21[4] = self;
      v22 = v14;
      [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:1 response:v21 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:v19 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    }
  }
}

void __62__WFInputTextDialogViewController_updateClearButtonVisibility__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1152));
  v3 = WeakRetained;
  v4 = 0.0;
  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  [WeakRetained setAlpha:v4];

  v5 = objc_loadWeakRetained((*(a1 + 32) + 1152));
  if (*(a1 + 40) == 1)
  {
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v7.a = *MEMORY[0x277CBF2C0];
    *&v7.c = v6;
    *&v7.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v7, 0.87, 0.87);
  }

  [v5 setTransform:&v7];
}

- (void)clearText
{
  v5 = [(WFInputTextDialogViewController *)self textField];
  v2 = [v5 beginningOfDocument];
  v3 = [v5 endOfDocument];
  v4 = [v5 textRangeFromPosition:v2 toPosition:v3];

  [v5 replaceRange:v4 withText:&stru_2883A0E78];
}

- (void)negateText
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  [v3 playInputClick];

  v4 = MEMORY[0x277D7BDC8];
  v5 = [(WFInputTextDialogViewController *)self textField];
  [v4 negateTextInput:v5];
}

- (BOOL)allowsDecimalNumbers
{
  v2 = [(WFCompactDialogViewController *)self request];
  v3 = [v2 textFieldConfiguration];
  v4 = [v3 keyboardType];
  v5 = WFKeyboardTypeFromString();

  return v5 == 8;
}

- (BOOL)useNumberValidation
{
  v2 = [(WFCompactDialogViewController *)self request];
  v3 = [v2 textFieldConfiguration];
  v4 = [v3 keyboardType];
  v5 = WFKeyboardTypeFromString();

  return v5 == 4 || v5 == 8;
}

- (BOOL)actingAsNumberField
{
  v2 = [(WFCompactDialogViewController *)self request];
  v3 = [v2 textFieldConfiguration];
  v4 = [v3 keyboardType];
  v5 = WFKeyboardTypeFromString();

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  LOBYTE(v3) = [&unk_2883C21B0 containsObject:v6];

  return v3;
}

- (void)finishEditing
{
  v3 = [(WFInputTextDialogViewController *)self textField];

  if (v3)
  {
    [(WFInputTextDialogViewController *)self textField];
  }

  else
  {
    [(WFInputTextDialogViewController *)self textView];
  }
  v4 = ;
  [v4 resignFirstResponder];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = WFInputTextDialogViewController;
  [(WFInputTextDialogViewController *)&v6 viewWillAppear:a3];
  if ([(WFInputTextDialogViewController *)self focusImmediatelyOnAppear])
  {
    [(WFInputTextDialogViewController *)self setFocusImmediatelyOnAppear:0];
    v4 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__WFInputTextDialogViewController_viewWillAppear___block_invoke;
    block[3] = &unk_279EE8A78;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x277D85CD0], block);
  }
}

void __50__WFInputTextDialogViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textField];

  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 textField];
  }

  else
  {
    [v3 textView];
  }
  v4 = ;
  [v4 becomeFirstResponder];
}

- (void)finishWithInputtedText
{
  v3 = objc_alloc(MEMORY[0x277D79FF0]);
  v7 = [(WFInputTextDialogViewController *)self textView];
  if (v7)
  {
    [(WFInputTextDialogViewController *)self textView];
  }

  else
  {
    [(WFInputTextDialogViewController *)self textField];
  }
  v4 = ;
  v5 = [v4 text];
  v6 = [v3 initWithInputtedText:v5 cancelled:0];
  [(WFCompactDialogViewController *)self finishWithResponse:v6];
}

- (void)loadView
{
  v187[4] = *MEMORY[0x277D85DE8];
  v180.receiver = self;
  v180.super_class = WFInputTextDialogViewController;
  [(WFCompactDialogViewController *)&v180 loadView];
  v166 = [(WFCompactPlatterViewController *)self platterView];
  v170 = [(WFCompactDialogViewController *)self request];
  v2 = [v170 message];
  [v166 setSecondaryText:v2];

  [v166 setHidesContentViewTopSeparator:1];
  v174 = [v170 textFieldConfiguration];
  v150 = [v174 prefix];
  v157 = [v174 text];
  v3 = [v174 placeholder];
  v134 = [v174 isSecureTextEntry];
  v133 = [v174 allowsNegativeNumbers];
  v144 = [v174 smartQuotesDisabled];
  v141 = [v174 smartDashesDisabled];
  v4 = [v174 keyboardType];
  v151 = WFKeyboardTypeFromString();

  v5 = [v174 clearButtonMode];
  v137 = WFClearButtonModeFromString();

  v6 = [v174 autocapitalizationType];
  v139 = WFAutocapitalizationTypeFromString();

  v7 = [v174 autocorrectionType];
  v138 = WFAutocorrectionTypeFromString();

  v8 = [v174 returnKeyType];
  v136 = WFReturnKeyTypeFromString();

  v9 = [v174 textContentType];
  v156 = WFTextContentTypeFromString();

  v10 = [v174 textAlignment];
  v147 = WFTextAlignmentFromString();

  if ([(__CFString *)v3 length])
  {
    v11 = v3;
    goto LABEL_10;
  }

  if (v151 == 3)
  {
    v12 = @"URL";
LABEL_8:
    v13 = WFLocalizedString(v12);
    goto LABEL_9;
  }

  if (![(WFInputTextDialogViewController *)self actingAsNumberField])
  {
    v12 = @"Text";
    goto LABEL_8;
  }

  v13 = @"0";
LABEL_9:

  v11 = v13;
LABEL_10:
  v155 = v11;
  v14 = [(__CFString *)v11 copy];
  placeholder = self->_placeholder;
  self->_placeholder = v14;

  self->_focusImmediatelyOnAppear = [v174 focusImmediatelyWhenPresented];
  self->_initialInsertionIndex = [v174 initialInsertionIndex];
  v16 = [v174 localizedIncompleteHintString];
  v17 = [v16 copy];
  localizedIncompleteHintString = self->_localizedIncompleteHintString;
  self->_localizedIncompleteHintString = v17;

  v165 = objc_opt_new();
  v172 = [v165 view];
  [v172 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [v172 layer];
  [v19 setAllowsGroupBlending:0];

  v171 = objc_alloc_init(MEMORY[0x277D75D18]);
  v20 = [MEMORY[0x277D75348] whiteColor];
  v21 = [v20 colorWithAlphaComponent:0.07];
  v22 = v21;
  v23 = [v21 CGColor];
  v24 = [v171 layer];
  [v24 setBackgroundColor:v23];

  v25 = 26.0;
  if (([v174 isMultiline] & 1) == 0)
  {
    if ([(WFInputTextDialogViewController *)self actingAsNumberField])
    {
      v25 = 26.0;
    }

    else
    {
      v25 = 27.0;
    }
  }

  v26 = [v171 layer];
  [v26 setCornerRadius:v25];

  v27 = [v171 layer];
  [v27 setCornerCurve:*MEMORY[0x277CDA138]];

  v28 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
  v29 = [v171 layer];
  [v29 setCompositingFilter:v28];

  [v172 addSubview:v171];
  [v171 setTranslatesAutoresizingMaskIntoConstraints:0];
  v135 = MEMORY[0x277CCAAD0];
  v167 = [v171 topAnchor];
  v163 = [v172 topAnchor];
  v158 = [v167 constraintEqualToAnchor:v163];
  v187[0] = v158;
  v30 = [v171 bottomAnchor];
  v31 = [v172 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  v187[1] = v32;
  v33 = [v171 leadingAnchor];
  v34 = [v172 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:15.0];
  v187[2] = v35;
  v36 = [v171 trailingAnchor];
  v37 = [v172 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:-15.0];
  v187[3] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:4];
  [v135 activateConstraints:v39];

  if ([v174 isMultiline])
  {
    v40 = objc_alloc(MEMORY[0x277D75C40]);
    v41 = [v40 initWithFrame:0 textContainer:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v41 setText:v157];
    [v41 setDelegate:self];
    [v41 setSmartQuotesType:v144];
    [v41 setSmartDashesType:v141];
    [v41 setKeyboardType:v151];
    [v41 setKeyboardAppearance:0];
    [v41 setAutocapitalizationType:v139];
    [v41 setAutocorrectionType:v138];
    [v41 setReturnKeyType:v136];
    [v41 setTextContentType:v156];
    [v41 setTextAlignment:v147];
    v42 = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
    v43 = MEMORY[0x277D76A28];
    if (!v42)
    {
      v43 = MEMORY[0x277D76918];
    }

    v44 = [(WFInputTextDialogViewController *)self styledFontForTextStyle:*v43];
    [v41 setFont:v44];

    [v41 setAdjustsFontForContentSizeCategory:1];
    v45 = [MEMORY[0x277D75348] clearColor];
    [v41 setBackgroundColor:v45];

    v46 = [v41 textContainer];
    [v46 setLineFragmentPadding:0.0];

    [v41 setTextContainerInset:{15.0, 18.0, 15.0, 18.0}];
    [v41 setScrollIndicatorInsets:{16.0, 0.0, 16.0, 0.0}];
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v172 addSubview:v41];
    objc_storeWeak(&self->_textView, v41);
    [(WFInputTextDialogViewController *)self updateTextViewPlaceholder];
    v142 = MEMORY[0x277CCAAD0];
    v168 = [v41 leadingAnchor];
    v164 = [v172 leadingAnchor];
    v159 = [v168 constraintEqualToAnchor:v164 constant:15.0];
    v186[0] = v159;
    v152 = [v41 trailingAnchor];
    v148 = [v172 trailingAnchor];
    v145 = [v152 constraintEqualToAnchor:v148 constant:-15.0];
    v186[1] = v145;
    v47 = [v41 heightAnchor];
    v48 = [v47 constraintGreaterThanOrEqualToConstant:114.0];
    v186[2] = v48;
    v49 = [v41 topAnchor];
    v50 = [v172 topAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    v186[3] = v51;
    v52 = [v41 bottomAnchor];
    v53 = [v172 bottomAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    v186[4] = v54;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:5];
    [v142 activateConstraints:v55];
  }

  else
  {
    v41 = objc_opt_new();
    [v41 setDelegate:self];
    [v41 setText:v157];
    [v41 setPlaceholder:v155];
    [v41 setSecureTextEntry:v134];
    [v41 setSmartQuotesType:v144];
    [v41 setSmartDashesType:v141];
    [v41 setKeyboardType:v151];
    [v41 setKeyboardAppearance:0];
    [v41 setClearButtonMode:v137];
    [v41 setAutocapitalizationType:v139];
    [v41 setAutocorrectionType:v138];
    [v41 setReturnKeyType:v136];
    [v41 setTextContentType:v156];
    [v41 setTextAlignment:v147];
    [v41 setClearButtonMode:0];
    v56 = MEMORY[0x277D74300];
    v57 = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
    v58 = *MEMORY[0x277D76A28];
    if (v57)
    {
      v59 = *MEMORY[0x277D76A28];
    }

    else
    {
      v59 = *MEMORY[0x277D76918];
    }

    v60 = [v56 preferredFontForTextStyle:v59];
    [v41 setFont:v60];

    [v41 setAdjustsFontForContentSizeCategory:1];
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v41 addTarget:self action:sel_textFieldDidChange_ forControlEvents:0x20000];
    [v172 addSubview:v41];
    objc_storeWeak(&self->_textField, v41);
    if (v137)
    {
      v61 = MEMORY[0x277D755B8];
      v62 = MEMORY[0x277D755D0];
      v63 = [MEMORY[0x277D74300] preferredFontForTextStyle:v58];
      v64 = [v62 configurationWithFont:v63 scale:2];
      v169 = [v61 systemImageNamed:@"xmark.circle.fill" withConfiguration:v64];

      v65 = [MEMORY[0x277D75220] systemButtonWithImage:v169 target:self action:sel_clearText];
      v66 = [MEMORY[0x277D75348] tertiaryLabelColor];
      [v65 setTintColor:v66];

      [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v65 setContentEdgeInsets:{30.0, 0.0, 30.0, 0.0}];
      [v172 addSubview:v65];
      objc_storeWeak(&self->_clearButton, v65);
      [(WFInputTextDialogViewController *)self updateClearButtonVisibility];
      [v169 size];
      v68 = v67;
      if ([(WFInputTextDialogViewController *)self actingAsNumberField])
      {
        v69 = 22.0;
      }

      else
      {
        v69 = 20.0;
      }

      v70 = MEMORY[0x277CCAAD0];
      v71 = [v65 centerYAnchor];
      v72 = [v172 centerYAnchor];
      v73 = [v71 constraintEqualToAnchor:v72];
      v185[0] = v73;
      v74 = [v65 trailingAnchor];
      v75 = [v172 trailingAnchor];
      v76 = [v74 constraintEqualToAnchor:v75 constant:-28.0];
      v185[1] = v76;
      v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:2];
      [v70 activateConstraints:v77];

      v78 = v68 + v69 + 15.0;
    }

    else
    {
      v78 = 15.0;
    }

    if ([(WFInputTextDialogViewController *)self actingAsNumberField])
    {
      v79 = *MEMORY[0x277D769A8];
      v80 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8]];
      v81 = [v80 fontDescriptorWithSymbolicTraits:2];

      v168 = [v81 fontDescriptorWithDesign:*MEMORY[0x277D74368]];

      v82 = [MEMORY[0x277D74300] fontWithDescriptor:v168 size:0.0];
      [v41 setFont:v82];

      [v41 setAdjustsFontSizeToFitWidth:1];
      [v41 setTextAlignment:1];
      v83 = MEMORY[0x277D74310];
      v84 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76830]];
      v164 = [v83 preferredFontDescriptorWithTextStyle:v79 compatibleWithTraitCollection:v84];

      [v164 pointSize];
      [v41 setMinimumFontSize:?];
      if (v133)
      {
        if ([(WFInputTextDialogViewController *)self useNumberValidation])
        {
          v85 = [MEMORY[0x277D75418] currentDevice];
          v86 = [v85 userInterfaceIdiom] == 0;

          if (v86)
          {
            v87 = [MEMORY[0x277D755D0] configurationWithWeight:7];
            v88 = [MEMORY[0x277D755D0] configurationWithScale:3];
            v89 = [v87 configurationByApplyingConfiguration:v88];

            v90 = [MEMORY[0x277D75220] buttonWithType:1];
            v91 = [MEMORY[0x277D75348] labelColor];
            [v90 setTintColor:v91];

            [v90 setContentEdgeInsets:{0.0, 50.0, 0.0, 50.0}];
            [v90 setAdjustsImageWhenHighlighted:0];
            v92 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.forwardslash.minus" withConfiguration:v89];
            [v90 setImage:v92 forState:0];

            [v90 addTarget:self action:sel_negateText forControlEvents:64];
            v93 = objc_alloc_init(WFKeyboardToolbarAccessoryView);
            [v41 setInputAccessoryView:v93];
            v94 = [(WFKeyboardToolbarAccessoryView *)v93 flexibleSpaceItem];
            [(WFKeyboardToolbarAccessoryView *)v93 appendBarItem:v94];

            v95 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v90];
            [(WFKeyboardToolbarAccessoryView *)v93 appendBarItem:v95];

            v96 = [(WFKeyboardToolbarAccessoryView *)v93 flexibleSpaceItem];
            [(WFKeyboardToolbarAccessoryView *)v93 appendBarItem:v96];
          }
        }
      }

      v140 = MEMORY[0x277CCAAD0];
      v160 = [v41 leadingAnchor];
      v153 = [v172 leadingAnchor];
      v149 = [v160 constraintGreaterThanOrEqualToAnchor:v153 constant:15.0];
      v184[0] = v149;
      v146 = [v41 leadingAnchor];
      v143 = [v172 leadingAnchor];
      v97 = [v146 constraintLessThanOrEqualToAnchor:v143 constant:v78];
      v184[1] = v97;
      v98 = [v41 trailingAnchor];
      v99 = [v172 trailingAnchor];
      v100 = [v98 constraintEqualToAnchor:v99 constant:-v78];
      v184[2] = v100;
      v101 = [v41 heightAnchor];
      v102 = [v101 constraintEqualToConstant:87.0];
      v184[3] = v102;
      v103 = [v172 heightAnchor];
      v104 = [v103 constraintEqualToConstant:87.0];
      v184[4] = v104;
      v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:5];
      [v140 activateConstraints:v105];
    }

    else
    {
      [v41 _setPrefix:v150];
      if ([v174 showsDateFormattingHint])
      {
        [(WFCompactPlatterViewController *)self setPlatterHeightAnimationsDisabled:1];
        v106 = objc_opt_new();
        [v106 setDateStyle:{objc_msgSend(v174, "dateFormatStyle")}];
        [v106 setTimeStyle:{objc_msgSend(v174, "timeFormatStyle")}];
        [v106 setDoesRelativeDateFormatting:{objc_msgSend(v174, "doesRelativeDateFormatting")}];
        [(WFInputTextDialogViewController *)self setDateFormatter:v106];
        v168 = objc_alloc_init(MEMORY[0x277D756B8]);
        v107 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
        [v168 setFont:v107];

        [v168 setAdjustsFontForContentSizeCategory:1];
        [v168 setMaximumContentSizeCategory:*MEMORY[0x277D76820]];
        v108 = [MEMORY[0x277D75348] secondaryLabelColor];
        [v168 setTextColor:v108];

        [v168 setNumberOfLines:1];
        [v168 setTextAlignment:v147];
        [v168 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v168 sizeToFit];
        [v172 addSubview:v168];
        [v172 sendSubviewToBack:v168];
        [(WFInputTextDialogViewController *)self setHintLabel:v168];
      }

      else
      {
        v168 = 0;
      }

      v109 = [v172 heightAnchor];
      v164 = [v109 constraintEqualToConstant:54.0];

      v161 = MEMORY[0x277CCAAD0];
      v110 = [v41 leadingAnchor];
      v111 = [v172 leadingAnchor];
      v112 = [v110 constraintEqualToAnchor:v111 constant:34.0];
      v183[0] = v112;
      v113 = [v41 trailingAnchor];
      v114 = [v172 trailingAnchor];
      v115 = [v113 constraintEqualToAnchor:v114 constant:-v78];
      v183[1] = v115;
      v116 = [v41 heightAnchor];
      v117 = [v116 constraintEqualToConstant:54.0];
      v183[2] = v117;
      v183[3] = v164;
      v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:4];
      [v161 activateConstraints:v118];

      if (v168)
      {
        [(WFInputTextDialogViewController *)self setContentViewHeightAnchor:v164];
        v154 = MEMORY[0x277CCAAD0];
        v162 = [v168 topAnchor];
        v119 = [v41 bottomAnchor];
        v120 = [v162 constraintEqualToAnchor:v119 constant:-10.0];
        v182[0] = v120;
        v121 = [v168 leadingAnchor];
        v122 = [v41 leadingAnchor];
        v123 = [v121 constraintEqualToAnchor:v122];
        v182[1] = v123;
        v124 = [v168 trailingAnchor];
        v125 = [v41 trailingAnchor];
        v126 = [v124 constraintEqualToAnchor:v125];
        v182[2] = v126;
        v127 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:3];
        [v154 activateConstraints:v127];

        [(WFInputTextDialogViewController *)self updateDateFormattingHint];
      }

      else
      {
        v168 = 0;
      }
    }
  }

  [(WFCompactPlatterViewController *)self setContentViewController:v165];
  objc_initWeak(&location, self);
  v128 = [v170 cancelButton];
  v177[0] = MEMORY[0x277D85DD0];
  v177[1] = 3221225472;
  v177[2] = __43__WFInputTextDialogViewController_loadView__block_invoke;
  v177[3] = &unk_279EE8908;
  objc_copyWeak(&v178, &location);
  v129 = [WFCompactDialogAction actionForButton:v128 handler:v177];

  v130 = [v170 doneButton];
  v175[0] = MEMORY[0x277D85DD0];
  v175[1] = 3221225472;
  v175[2] = __43__WFInputTextDialogViewController_loadView__block_invoke_2;
  v175[3] = &unk_279EE8908;
  objc_copyWeak(&v176, &location);
  v131 = [WFCompactDialogAction actionForButton:v130 handler:v175];

  v181[0] = v129;
  v181[1] = v131;
  v132 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:2];
  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v132];

  objc_destroyWeak(&v176);
  objc_destroyWeak(&v178);
  objc_destroyWeak(&location);
}

void __43__WFInputTextDialogViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishEditing];
  v1 = [objc_alloc(MEMORY[0x277D79FF0]) initWithInputtedText:0 cancelled:1];
  [WeakRetained finishWithResponse:v1];
}

void __43__WFInputTextDialogViewController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishEditing];
  [WeakRetained finishWithInputtedText];
}

@end