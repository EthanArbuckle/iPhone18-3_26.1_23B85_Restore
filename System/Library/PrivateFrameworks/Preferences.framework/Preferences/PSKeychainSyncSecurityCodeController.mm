@interface PSKeychainSyncSecurityCodeController
- (Class)textEntryCellClass;
- (PSKeychainSyncSecurityCodeController)init;
- (id)_configureTextEntryCell;
- (id)placeholderText;
- (id)specifiers;
- (void)animatePasscodeFieldLeft:(BOOL)left;
- (void)dealloc;
- (void)didFinishEnteringText:(id)text;
- (void)dismissAlerts;
- (void)forgotSecurityCode;
- (void)generateRandomCode;
- (void)keyboardWillShow:(id)show;
- (void)setFirstPasscodeEntry:(id)entry;
- (void)setMode:(int)mode;
- (void)setSecurityCodeType:(int)type;
- (void)showAdvancedOptions;
- (void)textEntryViewDidChange:(id)change;
- (void)updateNextButton;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PSKeychainSyncSecurityCodeController

- (PSKeychainSyncSecurityCodeController)init
{
  v6.receiver = self;
  v6.super_class = PSKeychainSyncSecurityCodeController;
  v2 = [(PSKeychainSyncTextEntryController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(PSKeychainSyncTextEntryController *)v2 setTextEntryType:1];
    [(PSKeychainSyncTextEntryController *)v3 setSecureTextEntry:1];
    [(PSKeychainSyncTextEntryController *)v3 setHidesNextButton:1];
    [(PSKeychainSyncSecurityCodeController *)v3 setMode:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSKeychainSyncSecurityCodeController;
  [(PSKeychainSyncTextEntryController *)&v4 dealloc];
}

- (Class)textEntryCellClass
{
  if ([(PSKeychainSyncTextEntryController *)self textEntryType]== 1)
  {
    v5.receiver = self;
    v5.super_class = PSKeychainSyncSecurityCodeController;
    textEntryCellClass = [(PSKeychainSyncTextEntryController *)&v5 textEntryCellClass];
  }

  else
  {
    textEntryCellClass = objc_opt_class();
  }

  return textEntryCellClass;
}

- (id)_configureTextEntryCell
{
  v14.receiver = self;
  v14.super_class = PSKeychainSyncSecurityCodeController;
  textEntryCell = [(PSKeychainSyncTextEntryController *)&v14 textEntryCell];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [textEntryCell setMode:{-[PSKeychainSyncSecurityCodeController mode](self, "mode")}];
    [textEntryCell setSecurityCodeType:{-[PSKeychainSyncSecurityCodeController securityCodeType](self, "securityCodeType")}];
    firstPasscodeEntry = [(PSKeychainSyncSecurityCodeController *)self firstPasscodeEntry];
    [textEntryCell setFirstPasscodeEntry:firstPasscodeEntry];

    if (self->_securityCodeType == 1)
    {
      v5 = +[PSKeychainSyncManager sharedManager];
      if ([v5 isRunningInBuddy])
      {
        v6 = PS_LocalizedStringForKeychainSync(@"SECURITY_CODE");
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    [textEntryCell setBulletText:v6];
    textField = [textEntryCell textField];
    v8 = textField;
    if (self->_securityCodeType == 2)
    {
      if (self->_firstPasscodeEntry)
      {
        v9 = 4;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 4;
    }

    [textField setTextAlignment:v9];

    textField2 = [textEntryCell textField];
    [textField2 setAdjustsFontSizeToFitWidth:1];

    textField3 = [textEntryCell textField];
    [textField3 setMinimumFontSize:8.0];

    if (self->_securityCodeType == 2)
    {
      textField4 = [textEntryCell textField];
      [textField4 setDisplaySecureTextUsingPlainText:1];
    }
  }

  return textEntryCell;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PSKeychainSyncSecurityCodeController;
  [(PSListController *)&v12 viewDidLoad];
  if (self->_securityCodeType)
  {
    v3 = objc_alloc(MEMORY[0x1E69DC708]);
    v4 = PS_LocalizedStringForKeychainSync(@"NEXT");
    v5 = [v3 initWithTitle:v4 style:2 target:self action:sel_nextPressed];
  }

  else
  {
    v5 = 0;
  }

  navigationItem = [(PSKeychainSyncSecurityCodeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  headerView = [(PSKeychainSyncViewController *)self headerView];
  v8 = headerView;
  if (self->_mode == 1)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
    if (v10 == 480.0)
    {
      v11 = +[PSKeychainSyncManager sharedManager];
      [v8 setUsesCompactLayout:{objc_msgSend(v11, "isRunningInBuddy")}];
    }

    else
    {
      [v8 setUsesCompactLayout:0];
    }
  }

  else
  {
    [headerView setUsesCompactLayout:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PSKeychainSyncSecurityCodeController;
  [(PSKeychainSyncTextEntryController *)&v4 viewWillAppear:appear];
  [(PSKeychainSyncTextEntryController *)self becomeFirstResponder];
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;

  self->_keyboardHeight = v7;
  view = [(PSKeychainSyncSecurityCodeController *)self view];
  [view setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v59.receiver = self;
  v59.super_class = PSKeychainSyncSecurityCodeController;
  [(PSListController *)&v59 viewDidLayoutSubviews];
  v58 = 25.0;
  v3 = 5.0;
  if (self->_mode == 1)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
    if (v5 == 480.0)
    {
      v6 = +[PSKeychainSyncManager sharedManager];
      if ([v6 isRunningInBuddy])
      {
        v3 = -21.0;
      }

      else
      {
        v3 = 5.0;
      }
    }

    if (self->_mode == 1)
    {
      mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen2 _referenceBounds];
      if (v8 == 480.0)
      {
        v9 = +[PSKeychainSyncManager sharedManager];
        isRunningInBuddy = [v9 isRunningInBuddy];
        v11 = 25.0;
        if (isRunningInBuddy)
        {
          v11 = 15.0;
        }

        v58 = v11;
      }

      else
      {
        v58 = 25.0;
      }
    }
  }

  table = [(PSListController *)self table];
  v13 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v14 = [table cellForRowAtIndexPath:v13];

  table2 = [(PSListController *)self table];
  [table2 bounds];
  v56 = v17;
  v57 = v16;
  v19 = v18;
  rect = v20;

  [(UILabel *)self->_footerLabel sizeThatFits:v19 + -40.0, 1.79769313e308];
  v22 = v21;
  v24 = v23;
  v54 = v21;
  *&v21 = (v19 - v21) * 0.5;
  v25 = floorf(*&v21);
  [v14 frame];
  v26 = v3 + CGRectGetMaxY(v60);
  v27 = v25;
  [(UILabel *)self->_footerLabel setFrame:v25, v26, v22, v24];
  v28 = MEMORY[0x1E695DF90];
  _systemInteractionTintColor = [MEMORY[0x1E69DC888] _systemInteractionTintColor];
  v30 = *MEMORY[0x1E69DB650];
  v31 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
  v32 = [v28 dictionaryWithObjectsAndKeys:{_systemInteractionTintColor, v30, v31, *MEMORY[0x1E69DB648], 0}];

  if (self->_mode == 2)
  {
    v33 = @"FORGOT_SECURITY_CODE";
  }

  else
  {
    v33 = @"ADVANCED_OPTIONS";
  }

  v34 = PS_LocalizedStringForKeychainSync(v33);
  v35 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v34 attributes:v32];
  [(UIButton *)self->_footerButton setAttributedTitle:v35 forState:0];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v32 setObject:blackColor forKey:v30];

  v37 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v34 attributes:v32];
  [(UIButton *)self->_footerButton setAttributedTitle:v37 forState:1];
  [(UIButton *)self->_footerButton sizeToFit];
  [(UIButton *)self->_footerButton frame];
  v39 = v38;
  v41 = v40;
  v42 = (v19 - v38) * 0.5;
  v53 = floorf(v42);
  v61.origin.y = v56;
  v61.origin.x = v57;
  v61.size.width = v19;
  v61.size.height = rect;
  v43 = CGRectGetMaxY(v61) - self->_keyboardHeight - v41 - v58;
  v62.origin.x = v27;
  v62.origin.y = v26;
  v62.size.width = v54;
  v62.size.height = v24;
  v44 = CGRectGetMaxY(v62) + 10.0;
  if (v43 >= v44)
  {
    v45 = v43;
  }

  else
  {
    v45 = v44;
  }

  [(UIButton *)self->_footerButton setFrame:v53, v45, v39, v41];
  table3 = [(PSListController *)self table];
  [table3 contentSize];
  v48 = v47;
  v50 = v49;

  v63.origin.x = v27;
  v63.origin.y = v26;
  v63.size.width = v54;
  v63.size.height = v24;
  v51 = v58 + v41 + CGRectGetMaxY(v63) + 10.0;
  if (v50 < v51)
  {
    table4 = [(PSListController *)self table];
    [table4 setContentSize:{v48, v51}];
  }
}

- (id)specifiers
{
  v62.receiver = self;
  v62.super_class = PSKeychainSyncSecurityCodeController;
  specifiers = [(PSKeychainSyncTextEntryController *)&v62 specifiers];
  if (!self->_footerButton)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:0];
    footerButton = self->_footerButton;
    self->_footerButton = v4;

    table = [(PSListController *)self table];
    [table addSubview:self->_footerButton];
  }

  if (!self->_footerLabel)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    footerLabel = self->_footerLabel;
    self->_footerLabel = v7;

    v9 = self->_footerLabel;
    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    [(UILabel *)v9 setFont:v10];

    [(UILabel *)self->_footerLabel setTextAlignment:1];
    [(UILabel *)self->_footerLabel setNumberOfLines:0];
    table2 = [(PSListController *)self table];
    [table2 addSubview:self->_footerLabel];
  }

  [(UIButton *)self->_footerButton setAlpha:0.0];
  [(UIButton *)self->_footerButton removeTarget:self action:0 forControlEvents:64];
  v12 = +[PSKeychainSyncManager sharedManager];
  isRunningInBuddy = [v12 isRunningInBuddy];

  mode = self->_mode;
  if (mode == 2)
  {
    [(UILabel *)self->_footerLabel setText:0];
    headerView = [(PSKeychainSyncViewController *)self headerView];
    [headerView setDetailText:0];

    groupSpecifier = [(PSKeychainSyncViewController *)self groupSpecifier];
    [groupSpecifier setProperty:0 forKey:@"footerText"];

    if (isRunningInBuddy)
    {
      v28 = @"ICLOUD_SECURITY_CODE";
    }

    else
    {
      v28 = @"SECURITY_CODE";
    }

    if (isRunningInBuddy)
    {
      v29 = @"ENTER_YOUR_SECURITY_CODE";
    }

    else
    {
      v29 = @"ENTER_YOUR_ICLOUD_SECURITY_CODE";
    }

    v30 = PS_LocalizedStringForKeychainSync(v28);
    [(PSKeychainSyncViewController *)self setTitle:v30];

    headerView2 = [(PSKeychainSyncViewController *)self headerView];
    v32 = PS_LocalizedStringForKeychainSync(v29);
    [headerView2 setDetailText:v32];

    [(UIButton *)self->_footerButton addTarget:self action:sel_forgotSecurityCode forControlEvents:64];
    [(UIButton *)self->_footerButton setAlpha:1.0];
    goto LABEL_78;
  }

  if (mode == 1)
  {
    v15 = +[PSKeychainSyncManager sharedManager];
    isRunningInBuddy2 = [v15 isRunningInBuddy];

    if ((isRunningInBuddy2 & 1) == 0)
    {
      navigationItem = [(PSKeychainSyncSecurityCodeController *)self navigationItem];
      v18 = PS_LocalizedStringForKeychainSync(@"KEYCHAIN_SETUP");
      [navigationItem setTitle:v18];
    }

    if (self->_showsAdvancedSettings && !self->_firstPasscodeEntry)
    {
      [(UIButton *)self->_footerButton addTarget:self action:sel_showAdvancedOptions forControlEvents:64];
      [(UIButton *)self->_footerButton setAlpha:1.0];
    }

    securityCodeType = self->_securityCodeType;
    if (securityCodeType == 2)
    {
      firstPasscodeEntry = self->_firstPasscodeEntry;
      v36 = firstPasscodeEntry == 0;
      if (firstPasscodeEntry)
      {
        v37 = @"CONFIRM_RANDOM_CODE_DESCRIPTION";
      }

      else
      {
        v37 = @"COMPLEX_CODE_DESCRIPTION";
      }

      if (v36)
      {
        v25 = @"RANDOM_CODE";
      }

      else
      {
        v25 = @"CONFIRM_CODE";
      }

      if (v36)
      {
        v21 = @"RANDOM_SECURITY_CODE_BUDDY";
      }

      else
      {
        v21 = @"CONFIRM_SECURITY_CODE_BUDDY";
      }

      if (isRunningInBuddy)
      {
        v23 = 0;
      }

      else
      {
        v37 = 0;
        v23 = @"COMPLEX_CODE_DESCRIPTION";
      }

      v24 = v37;
    }

    else if (securityCodeType == 1)
    {
      v33 = @"REENTER_YOUR_SECURITY_CODE";
      if (self->_firstPasscodeEntry)
      {
        v25 = @"CONFIRM_CODE";
      }

      else
      {
        v33 = @"COMPLEX_CODE_DESCRIPTION";
        v25 = @"COMPLEX_CODE";
      }

      if (isRunningInBuddy)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      if (isRunningInBuddy)
      {
        v23 = 0;
      }

      else
      {
        v23 = @"COMPLEX_CODE_DESCRIPTION";
      }

      v24 = v34;
      v21 = @"COMPLEX_SECURITY_CODE_BUDDY";
    }

    else
    {
      if (securityCodeType)
      {
        v24 = 0;
        v61 = 0;
        v38 = 0;
        v60 = 0;
LABEL_53:
        textEntryView = [(PSKeychainSyncTextEntryController *)self textEntryView];
        if (self->_firstPasscodeEntry || self->_securityCodeType != 2)
        {
          v40 = specifiers;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v44 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
            [textEntryView setFont:v44];
          }

          textEntryCell = [(PSKeychainSyncSecurityCodeController *)self textEntryCell];
          whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        }

        else
        {
          v40 = specifiers;
          [(PSKeychainSyncSecurityCodeController *)self generateRandomCode];
          v41 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:16.0];
          [textEntryView setFont:v41];

          textEntryCell = [(PSKeychainSyncSecurityCodeController *)self textEntryCell];
          whiteColor = [MEMORY[0x1E69DC888] clearColor];
        }

        v45 = whiteColor;
        [textEntryCell setBackgroundColor:whiteColor];

        if (isRunningInBuddy)
        {
          v46 = self->_securityCodeType;
          specifiers = v40;
          if (v46 == 1)
          {
            v48 = 1;
            v47 = v24;
          }

          else
          {
            v47 = v24;
            v48 = v46 == 2 && self->_firstPasscodeEntry != 0;
          }

          v49 = v61;
          [(PSKeychainSyncTextEntryController *)self setTextFieldHasRoundBorder:v48];
          if (((v60 != 0) & isRunningInBuddy) == 1)
          {
            headerView3 = [(PSKeychainSyncViewController *)self headerView];
            v51 = PS_LocalizedStringForKeychainSync(v60);
            [headerView3 setTitleText:v51];
          }
        }

        else
        {
          [(PSKeychainSyncTextEntryController *)self setTextFieldHasRoundBorder:0];
          specifiers = v40;
          v47 = v24;
          v49 = v61;
        }

        if (v47)
        {
          headerView4 = [(PSKeychainSyncViewController *)self headerView];
          v53 = PS_LocalizedStringForKeychainSync(v47);
          [headerView4 setDetailText:v53];
        }

        if (!((v49 == 0) | isRunningInBuddy & 1))
        {
          navigationItem2 = [(PSKeychainSyncSecurityCodeController *)self navigationItem];
          v55 = PS_LocalizedStringForKeychainSync(v49);
          [navigationItem2 setTitle:v55];
        }

        if (v38)
        {
          if (isRunningInBuddy)
          {
            v56 = self->_footerLabel;
            groupSpecifier2 = PS_LocalizedStringForKeychainSync(v38);
            [(UILabel *)v56 setText:groupSpecifier2];
          }

          else
          {
            groupSpecifier2 = [(PSKeychainSyncViewController *)self groupSpecifier];
            v58 = PS_LocalizedStringForKeychainSync(v38);
            [groupSpecifier2 setProperty:v58 forKey:@"footerText"];
          }
        }

        goto LABEL_78;
      }

      v20 = @"REENTER_YOUR_ICLOUD_SECURITY_CODE";
      v21 = @"CREATE_AN_ICLOUD_SECURITY_CODE";
      v22 = @"REENTER_YOUR_SECURITY_CODE";
      if (!self->_firstPasscodeEntry)
      {
        v20 = @"CREATE_AN_ICLOUD_SECURITY_CODE";
        v22 = @"SECURITY_CODE_DESCRIPTION";
      }

      if (isRunningInBuddy)
      {
        v20 = 0;
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v20;
      v25 = @"CREATE_SECURITY_CODE";
    }

    v60 = v21;
    v61 = v25;
    v38 = v23;
    goto LABEL_53;
  }

LABEL_78:
  [(PSKeychainSyncSecurityCodeController *)self updateNextButton];

  return specifiers;
}

- (id)placeholderText
{
  securityCodeType = self->_securityCodeType;
  if (securityCodeType == 2)
  {
    v6 = @"RANDOM_SECURITY_CODE_PLACEHOLDER";
  }

  else
  {
    if (securityCodeType != 1)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v4 = +[PSKeychainSyncManager sharedManager];
    isRunningInBuddy = [v4 isRunningInBuddy];

    if (isRunningInBuddy)
    {
      v6 = @"REQUIRED_LOWERCASE";
    }

    else if (self->_firstPasscodeEntry)
    {
      v6 = @"CONFIRM_SECURITY_CODE_LOWERCASE";
    }

    else
    {
      v6 = @"SECURITY_CODE_LOWERCASE";
    }
  }

  v7 = PS_LocalizedStringForKeychainSync(v6);
LABEL_11:

  return v7;
}

- (void)animatePasscodeFieldLeft:(BOOL)left
{
  leftCopy = left;
  table = [(PSListController *)self table];
  [table bounds];
  v7 = v6;
  UIKeyboardDisableAutomaticAppearance();
  v8 = objc_alloc_init(MEMORY[0x1E69DCF70]);
  [table frame];
  [v8 setFrame:?];
  [v8 captureSnapshotOfView:table withSnapshotType:1];
  superview = [table superview];
  [superview addSubview:v8];

  if (leftCopy || self->_securityCodeType != 2)
  {
    generatedCode = &stru_1EFE45030;
  }

  else
  {
    generatedCode = self->_generatedCode;
  }

  [(PSKeychainSyncTextEntryController *)self setTextEntryText:generatedCode];
  if (leftCopy)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = -1.0;
  }

  [(PSListController *)self reloadSpecifiers];
  [table frame];
  [table setFrame:v12 + v11 * v7];
  v13 = MEMORY[0x1E69DD250];
  [MEMORY[0x1E69DD228] defaultDurationForTransition:1];
  v15 = v14;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__PSKeychainSyncSecurityCodeController_animatePasscodeFieldLeft___block_invoke;
  v21[3] = &unk_1E71DC210;
  v22 = table;
  v24 = v11;
  v25 = v7;
  v23 = v8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__PSKeychainSyncSecurityCodeController_animatePasscodeFieldLeft___block_invoke_2;
  v18[3] = &unk_1E71DD758;
  v19 = v23;
  selfCopy = self;
  v16 = v23;
  v17 = table;
  [v13 animateWithDuration:v21 animations:v18 completion:v15];
}

uint64_t __65__PSKeychainSyncSecurityCodeController_animatePasscodeFieldLeft___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 frame];
  v7 = CGRectOffset(v6, -(*(a1 + 48) * *(a1 + 56)), 0.0);
  [v2 setFrame:{v7.origin.x, v7.origin.y, v7.size.width, v7.size.height}];
  v3 = *(a1 + 40);
  [v3 frame];
  v9 = CGRectOffset(v8, -(*(a1 + 48) * *(a1 + 56)), 0.0);

  return [v3 setFrame:{v9.origin.x, v9.origin.y, v9.size.width, v9.size.height}];
}

uint64_t __65__PSKeychainSyncSecurityCodeController_animatePasscodeFieldLeft___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  UIKeyboardEnableAutomaticAppearance();
  v2 = *(a1 + 40);

  return [v2 becomeFirstResponder];
}

- (void)didFinishEnteringText:(id)text
{
  v39[2] = *MEMORY[0x1E69E9840];
  textCopy = text;
  securityCodeType = self->_securityCodeType;
  if (!securityCodeType)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    sf_isiPad = [currentDevice sf_isiPad];

    if (sf_isiPad)
    {
      v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789"];
      invertedSet = [v8 invertedSet];
      v10 = [textCopy rangeOfCharacterFromSet:invertedSet];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        self->_securityCodeType = 1;
      }
    }
  }

  v39[0] = textCopy;
  v38[0] = @"securityCode";
  v38[1] = @"securityCodeType";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_securityCodeType];
  v39[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];

  if (self->_mode == 2)
  {
    delegate = [(PSKeychainSyncViewController *)self delegate];
    [(NSString *)delegate keychainSyncController:self didFinishWithResult:v12 error:0];
  }

  else
  {
    firstPasscodeEntry = self->_firstPasscodeEntry;
    if (firstPasscodeEntry)
    {
      delegate = firstPasscodeEntry;
      if (securityCodeType == 2)
      {
        uppercaseString = [textCopy uppercaseString];

        uppercaseString2 = [(NSString *)delegate uppercaseString];

        delegate = uppercaseString2;
        textCopy = uppercaseString;
      }

      v17 = [textCopy isEqualToString:delegate];
      [(PSKeychainSyncSecurityCodeController *)self setFirstPasscodeEntry:0];
      if (v17)
      {
        delegate2 = [(PSKeychainSyncViewController *)self delegate];
        [delegate2 keychainSyncController:self didFinishWithResult:v12 error:0];
      }

      else
      {
        if (securityCodeType == 2)
        {
          v28 = @"INCORRECT_SECURITY_CODE";
        }

        else
        {
          v28 = @"SECURITY_CODES_DID_NOT_MATCH";
        }

        delegate2 = PS_LocalizedStringForKeychainSync(v28);
        v29 = MEMORY[0x1E69DC650];
        v30 = PS_LocalizedStringForKeychainSync(@"ENTER_SECURITY_CODE_AGAIN");
        v31 = [v29 alertControllerWithTitle:delegate2 message:v30 preferredStyle:1];

        v32 = MEMORY[0x1E69DC648];
        v33 = PS_LocalizedStringForKeychainSync(@"OK");
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __62__PSKeychainSyncSecurityCodeController_didFinishEnteringText___block_invoke_3;
        v35[3] = &unk_1E71DC288;
        v35[4] = self;
        v34 = [v32 actionWithTitle:v33 style:0 handler:v35];
        [v31 addAction:v34];

        [(PSKeychainSyncSecurityCodeController *)self presentViewController:v31 animated:1 completion:0];
      }
    }

    else
    {
      [(PSKeychainSyncSecurityCodeController *)self setFirstPasscodeEntry:textCopy];
      if ([textCopy length] >= 6 && (securityCodeType == 2 || !SecPasswordIsPasswordWeak2()))
      {
        [(PSKeychainSyncSecurityCodeController *)self animatePasscodeFieldLeft:1];
        goto LABEL_20;
      }

      v19 = MEMORY[0x1E69DC650];
      v20 = PS_LocalizedStringForKeychainSync(@"WEAK_SECURITY_CODE");
      v21 = PS_LocalizedStringForKeychainSync(@"WEAK_SECURITY_CODE_DETAILS");
      delegate = [v19 alertControllerWithTitle:v20 message:v21 preferredStyle:1];

      v22 = MEMORY[0x1E69DC648];
      v23 = PS_LocalizedStringForKeychainSync(@"CHANGE");
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __62__PSKeychainSyncSecurityCodeController_didFinishEnteringText___block_invoke;
      v37[3] = &unk_1E71DC288;
      v37[4] = self;
      v24 = [v22 actionWithTitle:v23 style:0 handler:v37];
      [(NSString *)delegate addAction:v24];

      v25 = MEMORY[0x1E69DC648];
      v26 = PS_LocalizedStringForKeychainSync(@"USE_CODE");
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __62__PSKeychainSyncSecurityCodeController_didFinishEnteringText___block_invoke_2;
      v36[3] = &unk_1E71DC288;
      v36[4] = self;
      v27 = [v25 actionWithTitle:v26 style:0 handler:v36];
      [(NSString *)delegate addAction:v27];

      [(PSKeychainSyncSecurityCodeController *)self presentViewController:delegate animated:1 completion:0];
    }
  }

LABEL_20:
}

uint64_t __62__PSKeychainSyncSecurityCodeController_didFinishEnteringText___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTextEntryText:&stru_1EFE45030];
  v2 = *(a1 + 32);

  return [v2 setFirstPasscodeEntry:0];
}

- (void)updateNextButton
{
  navigationItem = [(PSKeychainSyncSecurityCodeController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  securityCodeType = self->_securityCodeType;
  if (securityCodeType == 2)
  {
    if (self->_mode == 1 && !self->_firstPasscodeEntry)
    {
      [rightBarButtonItem setEnabled:1];
    }

    else
    {
      generatedCode = self->_generatedCode;
      if (generatedCode)
      {
        v10 = [(NSString *)generatedCode length];
        textEntryText = [(PSKeychainSyncTextEntryController *)self textEntryText];
        v12 = [textEntryText length] == v10;
      }

      else
      {
        textEntryText = [(PSKeychainSyncTextEntryController *)self textEntryText];
        v12 = [textEntryText length] != 0;
      }

      [rightBarButtonItem setEnabled:v12];
    }
  }

  else
  {
    v5 = rightBarButtonItem;
    if (securityCodeType != 1)
    {
      goto LABEL_13;
    }

    textEntryText2 = [(PSKeychainSyncTextEntryController *)self textEntryText];
    v7 = [textEntryText2 length];
    v8 = 6;
    if (self->_mode != 1)
    {
      v8 = 1;
    }

    [rightBarButtonItem setEnabled:v7 >= v8];
  }

  v5 = rightBarButtonItem;
LABEL_13:
}

- (void)setFirstPasscodeEntry:(id)entry
{
  entryCopy = entry;
  if (self->_firstPasscodeEntry != entryCopy)
  {
    v7 = entryCopy;
    objc_storeStrong(&self->_firstPasscodeEntry, entry);
    textEntryCell = [(PSKeychainSyncSecurityCodeController *)self textEntryCell];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [textEntryCell setFirstPasscodeEntry:v7];
    }

    entryCopy = v7;
  }
}

- (void)setMode:(int)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    _configureTextEntryCell = [(PSKeychainSyncSecurityCodeController *)self _configureTextEntryCell];
    if (self->_mode == 1)
    {

      [(PSKeychainSyncTextEntryController *)self setNumberOfPasscodeFields:6];
    }
  }
}

- (void)setSecurityCodeType:(int)type
{
  self->_securityCodeType = type;
  if (type <= 2)
  {
    [(PSKeychainSyncTextEntryController *)self setTextEntryType:dword_18B103D38[type]];
  }

  if ([(PSKeychainSyncSecurityCodeController *)self isViewLoaded])
  {
    view = [(PSKeychainSyncSecurityCodeController *)self view];
    [view setNeedsLayout];

    [(PSKeychainSyncTextEntryController *)self becomeFirstResponder];
  }

  _configureTextEntryCell = [(PSKeychainSyncSecurityCodeController *)self _configureTextEntryCell];
}

- (void)generateRandomCode
{
  generatedCode = self->_generatedCode;
  if (!generatedCode)
  {
    v4 = SecPasswordGenerate();
    objc_storeStrong(&self->_generatedCode, v4);
    navigationItem = [(PSKeychainSyncSecurityCodeController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:1];

    generatedCode = self->_generatedCode;
  }

  [(PSKeychainSyncTextEntryController *)self setTextEntryText:generatedCode];
}

- (void)textEntryViewDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PSKeychainSyncSecurityCodeController;
  [(PSKeychainSyncTextEntryController *)&v4 textEntryViewDidChange:change];
  [(PSKeychainSyncSecurityCodeController *)self updateNextButton];
}

- (void)showAdvancedOptions
{
  [(PSKeychainSyncSecurityCodeController *)self setFirstPasscodeEntry:0];
  delegate = [(PSKeychainSyncViewController *)self delegate];
  [delegate keychainSyncController:self didFinishWithResult:@"advancedOptions" error:0];
}

- (void)forgotSecurityCode
{
  v22 = 0;
  PSKeychainSyncGetCircleMembershipStatus(&v22, 0);
  v3 = MEMORY[0x1E69DC650];
  v4 = PS_LocalizedStringForKeychainSync(@"SECURITY_CODE_REQUIRED");
  if (v22)
  {
    v5 = @"FORGOT_SECURITY_CODE_DETAILS_WITH_CIRCLE";
  }

  else
  {
    v5 = @"FORGOT_SECURITY_CODE_DETAILS";
  }

  v6 = PS_LocalizedStringForKeychainSync(v5);
  v7 = [v3 alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = MEMORY[0x1E69DC648];
  if (v22)
  {
    v9 = @"APPROVE_FROM_OTHER_DEVICE";
  }

  else
  {
    v9 = @"SET_UP_LATER";
  }

  v10 = PS_LocalizedStringForKeychainSync(v9);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58__PSKeychainSyncSecurityCodeController_forgotSecurityCode__block_invoke;
  v20[3] = &unk_1E71DD780;
  v21 = v22;
  v20[4] = self;
  v11 = [v8 actionWithTitle:v10 style:0 handler:v20];
  [v7 addAction:v11];

  v12 = MEMORY[0x1E69DC648];
  v13 = PS_LocalizedStringForKeychainSync(@"RESET_ICLOUD_KEYCHAIN");
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__PSKeychainSyncSecurityCodeController_forgotSecurityCode__block_invoke_2;
  v19[3] = &unk_1E71DC288;
  v19[4] = self;
  v14 = [v12 actionWithTitle:v13 style:0 handler:v19];
  [v7 addAction:v14];

  v15 = MEMORY[0x1E69DC648];
  v16 = PS_LocalizedStringForKeychainSync(@"CANCEL");
  v17 = [v15 actionWithTitle:v16 style:1 handler:0];
  [v7 addAction:v17];

  [(PSKeychainSyncSecurityCodeController *)self presentViewController:v7 animated:1 completion:0];
  v18 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v18, &__block_literal_global_18);
}

void __58__PSKeychainSyncSecurityCodeController_forgotSecurityCode__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) delegate];
  v5 = v3;
  if (v2)
  {
    v4 = @"usePeerApproval";
  }

  else
  {
    v4 = @"setUpLater";
  }

  [v3 keychainSyncController:*(a1 + 32) didFinishWithResult:v4 error:0];
}

void __58__PSKeychainSyncSecurityCodeController_forgotSecurityCode__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v26 = 0;
  v4 = PSSecureBackupAccountInfo(&v26, 1);
  v5 = v26;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v6 = getkSecureBackupIsEnabledKeySymbolLoc_ptr_1;
  v35 = getkSecureBackupIsEnabledKeySymbolLoc_ptr_1;
  if (!getkSecureBackupIsEnabledKeySymbolLoc_ptr_1)
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __getkSecureBackupIsEnabledKeySymbolLoc_block_invoke_1;
    v30 = &unk_1E71DBC78;
    v31 = &v32;
    __getkSecureBackupIsEnabledKeySymbolLoc_block_invoke_1(&v27);
    v6 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v6)
  {
    [PSContactsAuthorizationLevelController dealloc];
    goto LABEL_15;
  }

  v7 = [v4 objectForKey:*v6];
  v8 = [v7 BOOLValue];

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v9 = getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr;
  v35 = getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr;
  if (!getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr)
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke;
    v30 = &unk_1E71DBC78;
    v31 = &v32;
    __getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke(&v27);
    v9 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v9)
  {
LABEL_15:
    v24 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v32, 8);
    _Unwind_Resume(v24);
  }

  v10 = v9();
  v11 = @"REPLACE_ICLOUD_KEYCHAIN_DETAILS";
  if (v8)
  {
    v11 = @"REPLACE_ICLOUD_KEYCHAIN_DETAILS_WITH_RECOVERY";
  }

  v12 = @"RESET_ICLOUD_KEYCHAIN_DETAILS_WITH_RECOVERY";
  if (!v8)
  {
    v12 = @"RESET_ICLOUD_KEYCHAIN_DETAILS";
  }

  if (!v10)
  {
    v11 = v12;
  }

  v13 = v11;
  v14 = MEMORY[0x1E69DC650];
  v15 = PS_LocalizedStringForKeychainSync(@"RESET_ICLOUD_KEYCHAIN_QUESTION");
  v16 = PS_LocalizedStringForKeychainSync(v13);
  v17 = [v14 alertControllerWithTitle:v15 message:v16 preferredStyle:1];

  v18 = MEMORY[0x1E69DC648];
  v19 = PS_LocalizedStringForKeychainSync(@"CANCEL");
  v20 = [v18 actionWithTitle:v19 style:1 handler:0];
  [v17 addAction:v20];

  v21 = MEMORY[0x1E69DC648];
  v22 = PS_LocalizedStringForKeychainSync(@"RESET");
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __58__PSKeychainSyncSecurityCodeController_forgotSecurityCode__block_invoke_3;
  v25[3] = &unk_1E71DC288;
  v25[4] = *(a1 + 32);
  v23 = [v21 actionWithTitle:v22 style:0 handler:v25];
  [v17 addAction:v23];

  [*(a1 + 32) presentViewController:v17 animated:1 completion:0];
}

void __58__PSKeychainSyncSecurityCodeController_forgotSecurityCode__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 keychainSyncController:*(a1 + 32) didFinishWithResult:@"resetKeychain" error:0];
}

- (void)dismissAlerts
{
  presentedViewController = [(PSKeychainSyncSecurityCodeController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(PSKeychainSyncSecurityCodeController *)self dismissViewControllerAnimated:0 completion:0];
  }
}

@end