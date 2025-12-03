@interface WFInputTextDialogViewController
- (BOOL)actingAsNumberField;
- (BOOL)allowsDecimalNumbers;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (BOOL)useNumberValidation;
- (UIButton)clearButton;
- (UILabel)hintLabel;
- (UITextField)textField;
- (UITextView)textView;
- (id)styledFontForTextStyle:(id)style;
- (void)clearText;
- (void)finishEditing;
- (void)finishWithInputtedText;
- (void)loadView;
- (void)negateText;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidChange:(id)change;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)traitCollectionDidChange:(id)change;
- (void)updateClearButtonVisibility;
- (void)updateDateFormattingHint;
- (void)updateTextViewPlaceholder;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)textViewDidChange:(id)change
{
  resetIdleTimerSuppressionBlock = [(WFInputTextDialogViewController *)self resetIdleTimerSuppressionBlock];

  if (resetIdleTimerSuppressionBlock)
  {
    resetIdleTimerSuppressionBlock2 = [(WFInputTextDialogViewController *)self resetIdleTimerSuppressionBlock];
    resetIdleTimerSuppressionBlock2[2]();
  }
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  initialInsertionIndex = [(WFInputTextDialogViewController *)self initialInsertionIndex];
  if ((initialInsertionIndex & 0x8000000000000000) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__WFInputTextDialogViewController_textViewDidBeginEditing___block_invoke;
    block[3] = &unk_279EE84A0;
    selfCopy = self;
    v9 = initialInsertionIndex;
    v7 = editingCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __59__WFInputTextDialogViewController_textViewDidBeginEditing___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSelectedRange:{*(a1 + 48), 0}];
  v2 = *(a1 + 40);

  return [v2 setInitialInsertionIndex:-1];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  if ([returnCopy returnKeyType])
  {
    [(WFInputTextDialogViewController *)self finishWithInputtedText];
  }

  [returnCopy resignFirstResponder];

  return 1;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  if ([(WFInputTextDialogViewController *)self useNumberValidation])
  {
    request = [(WFCompactDialogViewController *)self request];
    textFieldConfiguration = [request textFieldConfiguration];
    allowsNegativeNumbers = [textFieldConfiguration allowsNegativeNumbers];

    text = [fieldCopy text];
    v15 = text;
    if (!text)
    {
      text = &stru_2883A0E78;
    }

    stringCopy = [(__CFString *)text stringByReplacingCharactersInRange:location withString:length, stringCopy];

    v17 = [MEMORY[0x277D7BDC8] shouldChangeText:stringCopy allowMinus:allowsNegativeNumbers];
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (void)updateDateFormattingHint
{
  dateFormatter = [(WFInputTextDialogViewController *)self dateFormatter];

  if (dateFormatter)
  {
    textField = [(WFInputTextDialogViewController *)self textField];
    text = [textField text];

    if ([text length])
    {
      v8 = [MEMORY[0x277CFC370] detectedDatesInString:text error:0];
      firstObject = [v8 firstObject];

      timeIsSignificant = [firstObject timeIsSignificant];
      if (timeIsSignificant)
      {
        request = [(WFCompactDialogViewController *)self request];
        textFieldConfiguration = [request textFieldConfiguration];
        timeFormatStyle = [textFieldConfiguration timeFormatStyle];
      }

      else
      {
        timeFormatStyle = 0;
      }

      dateFormatter2 = [(WFInputTextDialogViewController *)self dateFormatter];
      [dateFormatter2 setTimeStyle:timeFormatStyle];

      if (timeIsSignificant)
      {
      }

      if (firstObject)
      {
        dateFormatter3 = [(WFInputTextDialogViewController *)self dateFormatter];
        date = [firstObject date];
        localizedIncompleteHintString = [dateFormatter3 stringFromDate:date];
      }

      else
      {
        localizedIncompleteHintString = [(WFInputTextDialogViewController *)self localizedIncompleteHintString];
      }
    }

    else
    {
      localizedIncompleteHintString = 0;
    }

    hintLabel = [(WFInputTextDialogViewController *)self hintLabel];
    [hintLabel setText:localizedIncompleteHintString];

    if ([localizedIncompleteHintString length])
    {
      v16 = 69.0;
    }

    else
    {
      v16 = 54.0;
    }

    contentViewHeightAnchor = [(WFInputTextDialogViewController *)self contentViewHeightAnchor];
    [contentViewHeightAnchor setConstant:v16];
  }
}

- (void)textFieldDidChange:(id)change
{
  changeCopy = change;
  if ([(WFInputTextDialogViewController *)self useNumberValidation])
  {
    allowsDecimalNumbers = [(WFInputTextDialogViewController *)self allowsDecimalNumbers];
    v5 = MEMORY[0x277D7BDC8];
    text = [changeCopy text];
    v7 = [v5 stringBySanitizingNumberString:text allowDecimalNumbers:allowsDecimalNumbers];

    text2 = [changeCopy text];
    LOBYTE(text) = [text2 isEqualToString:v7];

    if ((text & 1) == 0)
    {
      textField = [(WFInputTextDialogViewController *)self textField];
      beginningOfDocument = [textField beginningOfDocument];
      endOfDocument = [textField endOfDocument];
      v12 = [textField textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

      [textField replaceRange:v12 withText:v7];
    }
  }

  else
  {
    [(WFInputTextDialogViewController *)self updateDateFormattingHint];
  }

  [(WFInputTextDialogViewController *)self updateClearButtonVisibility];
  resetIdleTimerSuppressionBlock = [(WFInputTextDialogViewController *)self resetIdleTimerSuppressionBlock];

  if (resetIdleTimerSuppressionBlock)
  {
    resetIdleTimerSuppressionBlock2 = [(WFInputTextDialogViewController *)self resetIdleTimerSuppressionBlock];
    resetIdleTimerSuppressionBlock2[2]();
  }
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  [(WFInputTextDialogViewController *)self updateClearButtonVisibility];
  initialInsertionIndex = [(WFInputTextDialogViewController *)self initialInsertionIndex];
  if ((initialInsertionIndex & 0x8000000000000000) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__WFInputTextDialogViewController_textFieldDidBeginEditing___block_invoke;
    block[3] = &unk_279EE84A0;
    selfCopy = self;
    v9 = initialInsertionIndex;
    v7 = editingCopy;
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

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = WFInputTextDialogViewController;
  changeCopy = change;
  [(WFInputTextDialogViewController *)&v9 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(WFInputTextDialogViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v8 & 1) == 0)
  {
    [(WFInputTextDialogViewController *)self updateTextViewPlaceholder];
  }
}

- (id)styledFontForTextStyle:(id)style
{
  v21[1] = *MEMORY[0x277D85DE8];
  styleCopy = style;
  request = [(WFCompactDialogViewController *)self request];
  attribution = [request attribution];
  appBundleIdentifier = [attribution appBundleIdentifier];
  v8 = [appBundleIdentifier isEqualToString:*MEMORY[0x277D7A2A0]];

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

    v13 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:styleCopy];
    v14 = [v13 fontDescriptorByAddingAttributes:v12];

    v15 = [MEMORY[0x277D74300] fontWithDescriptor:v14 size:0.0];
  }

  else
  {
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:styleCopy];
  }

  return v15;
}

- (void)updateTextViewPlaceholder
{
  v15[2] = *MEMORY[0x277D85DE8];
  universalPreviewsEnabled = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
  v7 = MEMORY[0x277D76A28];
  if (!universalPreviewsEnabled)
  {
    v7 = MEMORY[0x277D76918];
  }

  v8 = [(WFInputTextDialogViewController *)self styledFontForTextStyle:*v7];
  placeholder = [(WFInputTextDialogViewController *)self placeholder];
  if (placeholder)
  {
    v10 = objc_alloc(MEMORY[0x277CCA898]);
    v11 = *MEMORY[0x277D740C0];
    v14[0] = *MEMORY[0x277D740A8];
    v14[1] = v11;
    v15[0] = v8;
    labelColor = [MEMORY[0x277D75348] labelColor];
    v3 = [labelColor colorWithAlphaComponent:0.3];
    v15[1] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v12 = [v10 initWithString:placeholder attributes:v4];
  }

  else
  {
    v12 = 0;
  }

  textView = [(WFInputTextDialogViewController *)self textView];
  [textView setAttributedPlaceholder:v12];

  if (placeholder)
  {
  }
}

- (void)updateClearButtonVisibility
{
  clearButton = [(WFInputTextDialogViewController *)self clearButton];

  if (clearButton)
  {
    textField = [(WFInputTextDialogViewController *)self textField];
    request = [(WFCompactDialogViewController *)self request];
    textFieldConfiguration = [request textFieldConfiguration];
    clearButtonMode = [textFieldConfiguration clearButtonMode];
    v8 = WFClearButtonModeFromString();

    isFirstResponder = [textField isFirstResponder];
    text = [textField text];
    v11 = [text length];

    v12 = isFirstResponder ^ 1;
    if (v11)
    {
      v13 = isFirstResponder;
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
  textField = [(WFInputTextDialogViewController *)self textField];
  beginningOfDocument = [textField beginningOfDocument];
  endOfDocument = [textField endOfDocument];
  v4 = [textField textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  [textField replaceRange:v4 withText:&stru_2883A0E78];
}

- (void)negateText
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [currentDevice playInputClick];

  v4 = MEMORY[0x277D7BDC8];
  textField = [(WFInputTextDialogViewController *)self textField];
  [v4 negateTextInput:textField];
}

- (BOOL)allowsDecimalNumbers
{
  request = [(WFCompactDialogViewController *)self request];
  textFieldConfiguration = [request textFieldConfiguration];
  keyboardType = [textFieldConfiguration keyboardType];
  v5 = WFKeyboardTypeFromString();

  return v5 == 8;
}

- (BOOL)useNumberValidation
{
  request = [(WFCompactDialogViewController *)self request];
  textFieldConfiguration = [request textFieldConfiguration];
  keyboardType = [textFieldConfiguration keyboardType];
  v5 = WFKeyboardTypeFromString();

  return v5 == 4 || v5 == 8;
}

- (BOOL)actingAsNumberField
{
  request = [(WFCompactDialogViewController *)self request];
  textFieldConfiguration = [request textFieldConfiguration];
  keyboardType = [textFieldConfiguration keyboardType];
  v5 = WFKeyboardTypeFromString();

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  LOBYTE(textFieldConfiguration) = [&unk_2883C21B0 containsObject:v6];

  return textFieldConfiguration;
}

- (void)finishEditing
{
  textField = [(WFInputTextDialogViewController *)self textField];

  if (textField)
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

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = WFInputTextDialogViewController;
  [(WFInputTextDialogViewController *)&v6 viewWillAppear:appear];
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
  textView = [(WFInputTextDialogViewController *)self textView];
  if (textView)
  {
    [(WFInputTextDialogViewController *)self textView];
  }

  else
  {
    [(WFInputTextDialogViewController *)self textField];
  }
  v4 = ;
  text = [v4 text];
  v6 = [v3 initWithInputtedText:text cancelled:0];
  [(WFCompactDialogViewController *)self finishWithResponse:v6];
}

- (void)loadView
{
  v187[4] = *MEMORY[0x277D85DE8];
  v180.receiver = self;
  v180.super_class = WFInputTextDialogViewController;
  [(WFCompactDialogViewController *)&v180 loadView];
  platterView = [(WFCompactPlatterViewController *)self platterView];
  request = [(WFCompactDialogViewController *)self request];
  message = [request message];
  [platterView setSecondaryText:message];

  [platterView setHidesContentViewTopSeparator:1];
  textFieldConfiguration = [request textFieldConfiguration];
  prefix = [textFieldConfiguration prefix];
  text = [textFieldConfiguration text];
  placeholder = [textFieldConfiguration placeholder];
  isSecureTextEntry = [textFieldConfiguration isSecureTextEntry];
  allowsNegativeNumbers = [textFieldConfiguration allowsNegativeNumbers];
  smartQuotesDisabled = [textFieldConfiguration smartQuotesDisabled];
  smartDashesDisabled = [textFieldConfiguration smartDashesDisabled];
  keyboardType = [textFieldConfiguration keyboardType];
  v151 = WFKeyboardTypeFromString();

  clearButtonMode = [textFieldConfiguration clearButtonMode];
  v137 = WFClearButtonModeFromString();

  autocapitalizationType = [textFieldConfiguration autocapitalizationType];
  v139 = WFAutocapitalizationTypeFromString();

  autocorrectionType = [textFieldConfiguration autocorrectionType];
  v138 = WFAutocorrectionTypeFromString();

  returnKeyType = [textFieldConfiguration returnKeyType];
  v136 = WFReturnKeyTypeFromString();

  textContentType = [textFieldConfiguration textContentType];
  v156 = WFTextContentTypeFromString();

  textAlignment = [textFieldConfiguration textAlignment];
  v147 = WFTextAlignmentFromString();

  if ([(__CFString *)placeholder length])
  {
    v11 = placeholder;
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

  self->_focusImmediatelyOnAppear = [textFieldConfiguration focusImmediatelyWhenPresented];
  self->_initialInsertionIndex = [textFieldConfiguration initialInsertionIndex];
  localizedIncompleteHintString = [textFieldConfiguration localizedIncompleteHintString];
  v17 = [localizedIncompleteHintString copy];
  localizedIncompleteHintString = self->_localizedIncompleteHintString;
  self->_localizedIncompleteHintString = v17;

  v165 = objc_opt_new();
  view = [v165 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [view layer];
  [layer setAllowsGroupBlending:0];

  v171 = objc_alloc_init(MEMORY[0x277D75D18]);
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v21 = [whiteColor colorWithAlphaComponent:0.07];
  v22 = v21;
  cGColor = [v21 CGColor];
  layer2 = [v171 layer];
  [layer2 setBackgroundColor:cGColor];

  v25 = 26.0;
  if (([textFieldConfiguration isMultiline] & 1) == 0)
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

  layer3 = [v171 layer];
  [layer3 setCornerRadius:v25];

  layer4 = [v171 layer];
  [layer4 setCornerCurve:*MEMORY[0x277CDA138]];

  v28 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
  layer5 = [v171 layer];
  [layer5 setCompositingFilter:v28];

  [view addSubview:v171];
  [v171 setTranslatesAutoresizingMaskIntoConstraints:0];
  v135 = MEMORY[0x277CCAAD0];
  topAnchor = [v171 topAnchor];
  topAnchor2 = [view topAnchor];
  v158 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v187[0] = v158;
  bottomAnchor = [v171 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v187[1] = v32;
  leadingAnchor = [v171 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
  v187[2] = v35;
  trailingAnchor = [v171 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];
  v187[3] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:4];
  [v135 activateConstraints:v39];

  if ([textFieldConfiguration isMultiline])
  {
    v40 = objc_alloc(MEMORY[0x277D75C40]);
    v41 = [v40 initWithFrame:0 textContainer:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v41 setText:text];
    [v41 setDelegate:self];
    [v41 setSmartQuotesType:smartQuotesDisabled];
    [v41 setSmartDashesType:smartDashesDisabled];
    [v41 setKeyboardType:v151];
    [v41 setKeyboardAppearance:0];
    [v41 setAutocapitalizationType:v139];
    [v41 setAutocorrectionType:v138];
    [v41 setReturnKeyType:v136];
    [v41 setTextContentType:v156];
    [v41 setTextAlignment:v147];
    universalPreviewsEnabled = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
    v43 = MEMORY[0x277D76A28];
    if (!universalPreviewsEnabled)
    {
      v43 = MEMORY[0x277D76918];
    }

    v44 = [(WFInputTextDialogViewController *)self styledFontForTextStyle:*v43];
    [v41 setFont:v44];

    [v41 setAdjustsFontForContentSizeCategory:1];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v41 setBackgroundColor:clearColor];

    textContainer = [v41 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [v41 setTextContainerInset:{15.0, 18.0, 15.0, 18.0}];
    [v41 setScrollIndicatorInsets:{16.0, 0.0, 16.0, 0.0}];
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
    [view addSubview:v41];
    objc_storeWeak(&self->_textView, v41);
    [(WFInputTextDialogViewController *)self updateTextViewPlaceholder];
    v142 = MEMORY[0x277CCAAD0];
    leadingAnchor3 = [v41 leadingAnchor];
    leadingAnchor4 = [view leadingAnchor];
    v159 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:15.0];
    v186[0] = v159;
    trailingAnchor3 = [v41 trailingAnchor];
    trailingAnchor4 = [view trailingAnchor];
    v145 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-15.0];
    v186[1] = v145;
    heightAnchor = [v41 heightAnchor];
    v48 = [heightAnchor constraintGreaterThanOrEqualToConstant:114.0];
    v186[2] = v48;
    topAnchor3 = [v41 topAnchor];
    topAnchor4 = [view topAnchor];
    v51 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v186[3] = v51;
    bottomAnchor3 = [v41 bottomAnchor];
    bottomAnchor4 = [view bottomAnchor];
    v54 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v186[4] = v54;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:5];
    [v142 activateConstraints:v55];
  }

  else
  {
    v41 = objc_opt_new();
    [v41 setDelegate:self];
    [v41 setText:text];
    [v41 setPlaceholder:v155];
    [v41 setSecureTextEntry:isSecureTextEntry];
    [v41 setSmartQuotesType:smartQuotesDisabled];
    [v41 setSmartDashesType:smartDashesDisabled];
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
    universalPreviewsEnabled2 = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
    v58 = *MEMORY[0x277D76A28];
    if (universalPreviewsEnabled2)
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
    [view addSubview:v41];
    objc_storeWeak(&self->_textField, v41);
    if (v137)
    {
      v61 = MEMORY[0x277D755B8];
      v62 = MEMORY[0x277D755D0];
      v63 = [MEMORY[0x277D74300] preferredFontForTextStyle:v58];
      v64 = [v62 configurationWithFont:v63 scale:2];
      v169 = [v61 systemImageNamed:@"xmark.circle.fill" withConfiguration:v64];

      v65 = [MEMORY[0x277D75220] systemButtonWithImage:v169 target:self action:sel_clearText];
      tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
      [v65 setTintColor:tertiaryLabelColor];

      [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v65 setContentEdgeInsets:{30.0, 0.0, 30.0, 0.0}];
      [view addSubview:v65];
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
      centerYAnchor = [v65 centerYAnchor];
      centerYAnchor2 = [view centerYAnchor];
      v73 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v185[0] = v73;
      trailingAnchor5 = [v65 trailingAnchor];
      trailingAnchor6 = [view trailingAnchor];
      v76 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-28.0];
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

      leadingAnchor3 = [v81 fontDescriptorWithDesign:*MEMORY[0x277D74368]];

      v82 = [MEMORY[0x277D74300] fontWithDescriptor:leadingAnchor3 size:0.0];
      [v41 setFont:v82];

      [v41 setAdjustsFontSizeToFitWidth:1];
      [v41 setTextAlignment:1];
      v83 = MEMORY[0x277D74310];
      v84 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76830]];
      leadingAnchor4 = [v83 preferredFontDescriptorWithTextStyle:v79 compatibleWithTraitCollection:v84];

      [leadingAnchor4 pointSize];
      [v41 setMinimumFontSize:?];
      if (allowsNegativeNumbers)
      {
        if ([(WFInputTextDialogViewController *)self useNumberValidation])
        {
          currentDevice = [MEMORY[0x277D75418] currentDevice];
          v86 = [currentDevice userInterfaceIdiom] == 0;

          if (v86)
          {
            v87 = [MEMORY[0x277D755D0] configurationWithWeight:7];
            v88 = [MEMORY[0x277D755D0] configurationWithScale:3];
            v89 = [v87 configurationByApplyingConfiguration:v88];

            v90 = [MEMORY[0x277D75220] buttonWithType:1];
            labelColor = [MEMORY[0x277D75348] labelColor];
            [v90 setTintColor:labelColor];

            [v90 setContentEdgeInsets:{0.0, 50.0, 0.0, 50.0}];
            [v90 setAdjustsImageWhenHighlighted:0];
            v92 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.forwardslash.minus" withConfiguration:v89];
            [v90 setImage:v92 forState:0];

            [v90 addTarget:self action:sel_negateText forControlEvents:64];
            v93 = objc_alloc_init(WFKeyboardToolbarAccessoryView);
            [v41 setInputAccessoryView:v93];
            flexibleSpaceItem = [(WFKeyboardToolbarAccessoryView *)v93 flexibleSpaceItem];
            [(WFKeyboardToolbarAccessoryView *)v93 appendBarItem:flexibleSpaceItem];

            v95 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v90];
            [(WFKeyboardToolbarAccessoryView *)v93 appendBarItem:v95];

            flexibleSpaceItem2 = [(WFKeyboardToolbarAccessoryView *)v93 flexibleSpaceItem];
            [(WFKeyboardToolbarAccessoryView *)v93 appendBarItem:flexibleSpaceItem2];
          }
        }
      }

      v140 = MEMORY[0x277CCAAD0];
      leadingAnchor5 = [v41 leadingAnchor];
      leadingAnchor6 = [view leadingAnchor];
      v149 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6 constant:15.0];
      v184[0] = v149;
      leadingAnchor7 = [v41 leadingAnchor];
      leadingAnchor8 = [view leadingAnchor];
      v97 = [leadingAnchor7 constraintLessThanOrEqualToAnchor:leadingAnchor8 constant:v78];
      v184[1] = v97;
      trailingAnchor7 = [v41 trailingAnchor];
      trailingAnchor8 = [view trailingAnchor];
      v100 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-v78];
      v184[2] = v100;
      heightAnchor2 = [v41 heightAnchor];
      v102 = [heightAnchor2 constraintEqualToConstant:87.0];
      v184[3] = v102;
      heightAnchor3 = [view heightAnchor];
      v104 = [heightAnchor3 constraintEqualToConstant:87.0];
      v184[4] = v104;
      v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:5];
      [v140 activateConstraints:v105];
    }

    else
    {
      [v41 _setPrefix:prefix];
      if ([textFieldConfiguration showsDateFormattingHint])
      {
        [(WFCompactPlatterViewController *)self setPlatterHeightAnimationsDisabled:1];
        v106 = objc_opt_new();
        [v106 setDateStyle:{objc_msgSend(textFieldConfiguration, "dateFormatStyle")}];
        [v106 setTimeStyle:{objc_msgSend(textFieldConfiguration, "timeFormatStyle")}];
        [v106 setDoesRelativeDateFormatting:{objc_msgSend(textFieldConfiguration, "doesRelativeDateFormatting")}];
        [(WFInputTextDialogViewController *)self setDateFormatter:v106];
        leadingAnchor3 = objc_alloc_init(MEMORY[0x277D756B8]);
        v107 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
        [leadingAnchor3 setFont:v107];

        [leadingAnchor3 setAdjustsFontForContentSizeCategory:1];
        [leadingAnchor3 setMaximumContentSizeCategory:*MEMORY[0x277D76820]];
        secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
        [leadingAnchor3 setTextColor:secondaryLabelColor];

        [leadingAnchor3 setNumberOfLines:1];
        [leadingAnchor3 setTextAlignment:v147];
        [leadingAnchor3 setTranslatesAutoresizingMaskIntoConstraints:0];
        [leadingAnchor3 sizeToFit];
        [view addSubview:leadingAnchor3];
        [view sendSubviewToBack:leadingAnchor3];
        [(WFInputTextDialogViewController *)self setHintLabel:leadingAnchor3];
      }

      else
      {
        leadingAnchor3 = 0;
      }

      heightAnchor4 = [view heightAnchor];
      leadingAnchor4 = [heightAnchor4 constraintEqualToConstant:54.0];

      v161 = MEMORY[0x277CCAAD0];
      leadingAnchor9 = [v41 leadingAnchor];
      leadingAnchor10 = [view leadingAnchor];
      v112 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:34.0];
      v183[0] = v112;
      trailingAnchor9 = [v41 trailingAnchor];
      trailingAnchor10 = [view trailingAnchor];
      v115 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-v78];
      v183[1] = v115;
      heightAnchor5 = [v41 heightAnchor];
      v117 = [heightAnchor5 constraintEqualToConstant:54.0];
      v183[2] = v117;
      v183[3] = leadingAnchor4;
      v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:4];
      [v161 activateConstraints:v118];

      if (leadingAnchor3)
      {
        [(WFInputTextDialogViewController *)self setContentViewHeightAnchor:leadingAnchor4];
        v154 = MEMORY[0x277CCAAD0];
        topAnchor5 = [leadingAnchor3 topAnchor];
        bottomAnchor5 = [v41 bottomAnchor];
        v120 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5 constant:-10.0];
        v182[0] = v120;
        v168LeadingAnchor = [leadingAnchor3 leadingAnchor];
        leadingAnchor11 = [v41 leadingAnchor];
        v123 = [v168LeadingAnchor constraintEqualToAnchor:leadingAnchor11];
        v182[1] = v123;
        trailingAnchor11 = [leadingAnchor3 trailingAnchor];
        trailingAnchor12 = [v41 trailingAnchor];
        v126 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
        v182[2] = v126;
        v127 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:3];
        [v154 activateConstraints:v127];

        [(WFInputTextDialogViewController *)self updateDateFormattingHint];
      }

      else
      {
        leadingAnchor3 = 0;
      }
    }
  }

  [(WFCompactPlatterViewController *)self setContentViewController:v165];
  objc_initWeak(&location, self);
  cancelButton = [request cancelButton];
  v177[0] = MEMORY[0x277D85DD0];
  v177[1] = 3221225472;
  v177[2] = __43__WFInputTextDialogViewController_loadView__block_invoke;
  v177[3] = &unk_279EE8908;
  objc_copyWeak(&v178, &location);
  v129 = [WFCompactDialogAction actionForButton:cancelButton handler:v177];

  doneButton = [request doneButton];
  v175[0] = MEMORY[0x277D85DD0];
  v175[1] = 3221225472;
  v175[2] = __43__WFInputTextDialogViewController_loadView__block_invoke_2;
  v175[3] = &unk_279EE8908;
  objc_copyWeak(&v176, &location);
  v131 = [WFCompactDialogAction actionForButton:doneButton handler:v175];

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