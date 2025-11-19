@interface PSAppleIDSplashViewController
- (AKAppleIDAuthenticationController)authenticationController;
- (BOOL)_runningInMail;
- (BOOL)_shouldAnchorCreateAccountButton;
- (double)_heightForCreateNewAccountFooterWithWidth:(double)a3;
- (double)_heightForCreateNewAccountSpecifierWithWidth:(double)a3;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_silhouetteMonogram;
- (id)_specifierForGroupWithiForgotLink;
- (id)_specifierForLoginPasswordForm;
- (id)_specifierForLoginUserForm;
- (id)_specifiersForCreateNewAccount;
- (id)_specifiersForSignInButton;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_beginiCloudCreationFlowWithContinuationData:(id)a3 completion:(id)a4;
- (void)_cancelButtonWasTapped:(id)a3;
- (void)_cancelPasswordDelegateIfNecessary;
- (void)_createICloudMailButtonWasTapped:(id)a3;
- (void)_createNewAppleIDButtonWasTapped:(id)a3;
- (void)_enableICloudMailButtonWasTapped:(id)a3;
- (void)_iForgotButtonWasTapped:(id)a3;
- (void)_openWebBasedCredentialRecoveryFlow;
- (void)_presentAppleIDPrivacyInformationPane;
- (void)_presentInvalidUsernameAlert;
- (void)_reloadPasswordSpecifier;
- (void)_setInteractionEnabled:(BOOL)a3;
- (void)_setUsername:(id)a3 withSpecifier:(id)a4;
- (void)_signInButtonWasTapped:(id)a3;
- (void)_signInWithUsername:(id)a3 password:(id)a4;
- (void)_textFieldValueDidChange:(id)a3;
- (void)_updateSignInButton;
- (void)context:(id)a3 needsPasswordWithCompletion:(id)a4;
- (void)createNewAppleIDWithCompletion:(id)a3;
- (void)dealloc;
- (void)didFinishAuthWithContext:(id)a3 results:(id)a4 error:(id)a5;
- (void)hideBusyUI;
- (void)remoteUIControllerDidDismiss:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)setUsername:(id)a3;
- (void)setUsernameEnabled:(BOOL)a3;
- (void)showBusyUI;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation PSAppleIDSplashViewController

- (id)_silhouetteMonogram
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = PSPreferencesFrameworkBundle();
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  v5 = [v4 traitCollection];
  v6 = [v2 imageNamed:@"PaddedSilhouetteMonogram" inBundle:v3 compatibleWithTraitCollection:v5];
  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v8 = [v6 imageWithTintColor:v7];

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(RemoteUIController *)self->_remoteUIController setDelegate:0];
  powerAssertion = self->_powerAssertion;
  if (powerAssertion)
  {
    CFRelease(powerAssertion);
    self->_powerAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = PSAppleIDSplashViewController;
  [(PSListController *)&v5 dealloc];
}

- (id)specifiers
{
  specifiers = self->super._specifiers;
  if (!specifiers)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(PSAppleIDSplashViewController *)self _specifierForGroupWithiForgotLink];
    [(NSArray *)v4 addObject:v5];

    v6 = [(PSAppleIDSplashViewController *)self _specifierForLoginUserForm];
    userSpecifier = self->_userSpecifier;
    self->_userSpecifier = v6;

    [(NSArray *)v4 addObject:self->_userSpecifier];
    v8 = [(PSAppleIDSplashViewController *)self _specifierForLoginPasswordForm];
    passwordSpecifier = self->_passwordSpecifier;
    self->_passwordSpecifier = v8;

    if (self->_passwordHandler)
    {
      [(NSArray *)v4 addObject:self->_passwordSpecifier];
    }

    if (!self->_isPresentedModally)
    {
      v10 = [(PSAppleIDSplashViewController *)self _specifiersForSignInButton];
      [(NSArray *)v4 addObjectsFromArray:v10];
    }

    v11 = [(PSAppleIDSplashViewController *)self _specifiersForCreateNewAccount];
    [(NSArray *)v4 addObjectsFromArray:v11];

    v12 = self->super._specifiers;
    self->super._specifiers = v4;

    specifiers = self->super._specifiers;
  }

  return specifiers;
}

- (id)_specifierForLoginUserForm
{
  v3 = [PSTextFieldSpecifier preferenceSpecifierNamed:&stru_1EFE45030 target:self set:sel__setUsername_withSpecifier_ get:sel__usernameForSpecifier_ detail:0 cell:8 edit:0];
  [v3 setKeyboardType:7 autoCaps:0 autoCorrection:1];
  v4 = PS_LocalizedStringForAppleID(@"EXAMPLE_APPLE_ID");
  [v3 setPlaceholder:v4];

  [v3 setProperty:@"PSSpecifierUsername" forKey:@"key"];
  v5 = [(PSAppleIDSplashViewController *)self _silhouetteMonogram];
  [v3 setProperty:v5 forKey:@"iconImage"];

  [v3 setProperty:*MEMORY[0x1E69DE588] forKey:@"textContentType"];
  [v3 setIdentifier:@"LOGIN_USER"];

  return v3;
}

- (id)_specifierForLoginPasswordForm
{
  v2 = [PSTextFieldSpecifier preferenceSpecifierNamed:&stru_1EFE45030 target:self set:sel__setPassword_withSpecifier_ get:sel__passwordForSpecifier_ detail:0 cell:8 edit:0];
  [v2 setKeyboardType:1 autoCaps:0 autoCorrection:1];
  [v2 setProperty:@"PSSpecifierPassword" forKey:@"key"];
  [v2 setCellType:12];
  v3 = PS_LocalizedStringForAppleID(@"PASSWORD_FIELD_PLACEHOLDER_REQUIRED");
  [v2 setPlaceholder:v3];

  [v2 setIdentifier:@"LOGIN_PASSWORD"];

  return v2;
}

- (void)_reloadPasswordSpecifier
{
  if (self->_passwordHandler)
  {
    if (![(PSListController *)self containsSpecifier:self->_passwordSpecifier])
    {
      [(PSListController *)self insertSpecifier:self->_passwordSpecifier afterSpecifier:self->_userSpecifier animated:1];
      [(PSSpecifier *)self->_signInButtonSpecifier setProperty:MEMORY[0x1E695E118] forKey:@"enabled"];
      [(PSListController *)self reloadSpecifier:self->_signInButtonSpecifier];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__PSAppleIDSplashViewController__reloadPasswordSpecifier__block_invoke;
      block[3] = &unk_1E71DBE20;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      return;
    }

    if (self->_passwordHandler)
    {
      return;
    }
  }

  if ([(PSListController *)self containsSpecifier:self->_passwordSpecifier])
  {
    [(PSListController *)self removeSpecifier:self->_passwordSpecifier animated:1];
    [(PSSpecifier *)self->_signInButtonSpecifier setProperty:MEMORY[0x1E695E110] forKey:@"enabled"];
    signInButtonSpecifier = self->_signInButtonSpecifier;

    [(PSListController *)self reloadSpecifier:signInButtonSpecifier];
  }
}

void __57__PSAppleIDSplashViewController__reloadPasswordSpecifier__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1528) propertyForKey:@"cellObject"];
  [v1 becomeFirstResponder];
}

- (id)_specifiersForSignInButton
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  v5 = [(PSAppleIDSplashViewController *)self serviceFooter];
  [v4 setObject:v5 forKeyedSubscript:@"footerText"];

  [v3 addObject:v4];
  v6 = PS_LocalizedStringForAppleID(@"SIGN_IN_BUTTON");
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];
  signInButtonSpecifier = self->_signInButtonSpecifier;
  self->_signInButtonSpecifier = v7;

  [(PSSpecifier *)self->_signInButtonSpecifier setProperty:MEMORY[0x1E695E110] forKey:@"enabled"];
  [(PSSpecifier *)self->_signInButtonSpecifier setButtonAction:sel__signInButtonWasTapped_];
  [v3 addObject:self->_signInButtonSpecifier];

  return v3;
}

- (id)_specifiersForCreateNewAccount
{
  if (self->_comingFromModernAddFlow)
  {
    v2 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E6959A48] defaultStore];
    v5 = [v4 aa_primaryAppleAccount];

    if (([MEMORY[0x1E69DC668] isRunningInStoreDemoMode] & 1) != 0 || -[PSAppleIDSplashViewController _runningInMail](self, "_runningInMail"))
    {
      if (([MEMORY[0x1E69DC668] isRunningInStoreDemoMode] & 1) == 0 && -[PSAppleIDSplashViewController _runningInMail](self, "_runningInMail") && objc_msgSend(v5, "aa_needsEmailConfiguration") && _os_feature_enabled_impl())
      {
        v2 = [MEMORY[0x1E695DF70] array];
        v6 = PS_RebrandedKeyForAppleID(@"CREATE_ICLOUD_MAIL_ACCOUNT_EXPLANATION_FOOTER");
        v7 = PS_LocalizedStringForAppleID(v6);

        v8 = PS_LocalizedStringForAppleID(@"CREATE_ICLOUD_MAIL_ACCOUNT_FOOTER_LEARN_MORE_BUTTON");
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v7, v8];
        v10 = [PSSpecifier groupSpecifierWithID:@"CREATE_MAIL_ACCOUNT_GROUP"];
        createNewAccountGroupSpecifier = self->_createNewAccountGroupSpecifier;
        self->_createNewAccountGroupSpecifier = v10;

        v12 = self->_createNewAccountGroupSpecifier;
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        [(PSSpecifier *)v12 setProperty:v14 forKey:@"footerCellClass"];

        [(PSSpecifier *)self->_createNewAccountGroupSpecifier setProperty:v9 forKey:@"footerText"];
        v15 = self->_createNewAccountGroupSpecifier;
        v64.location = [v9 rangeOfString:v8];
        v16 = NSStringFromRange(v64);
        [(PSSpecifier *)v15 setProperty:v16 forKey:@"footerHyperlinkRange"];

        v17 = self->_createNewAccountGroupSpecifier;
        v18 = PS_LocalizedStringForAppleID(@"CREATE_ICLOUD_MAIL_ACCOUNT_FOOTER_LEARN_MORE_KB_LINK");
        [(PSSpecifier *)v17 setProperty:v18 forKey:@"headerFooterHyperlinkButtonURL"];

        [v2 addObject:self->_createNewAccountGroupSpecifier];
        v19 = PS_LocalizedStringForAppleID(@"CREATE_ICLOUD_MAIL_ACCOUNT_BUTTON");
        v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:13 edit:0];
        createNewAccountButtonSpecifier = self->_createNewAccountButtonSpecifier;
        self->_createNewAccountButtonSpecifier = v20;

        [(PSSpecifier *)self->_createNewAccountButtonSpecifier setButtonAction:sel__createICloudMailButtonWasTapped_];
        [v2 addObject:self->_createNewAccountButtonSpecifier];
      }

      else if (([MEMORY[0x1E69DC668] isRunningInStoreDemoMode] & 1) != 0 || !-[PSAppleIDSplashViewController _runningInMail](self, "_runningInMail") || (objc_msgSend(v5, "aa_needsEmailConfiguration") & 1) != 0 || (objc_msgSend(v5, "isEnabledForDataclass:", *MEMORY[0x1E6959698]) & 1) != 0 || !_os_feature_enabled_impl())
      {
        v2 = 0;
      }

      else
      {
        v2 = [MEMORY[0x1E695DF70] array];
        v22 = [PSSpecifier groupSpecifierWithID:@"ENABLE_MAIL_ACCOUNT_GROUP"];
        v23 = self->_createNewAccountGroupSpecifier;
        self->_createNewAccountGroupSpecifier = v22;

        v24 = self->_createNewAccountGroupSpecifier;
        v25 = PS_LocalizedStringForAppleID(@"ENABLE_ICLOUD_MAIL_ACCOUNT_FOOTER");
        [(PSSpecifier *)v24 setProperty:v25 forKey:@"footerText"];

        [v2 addObject:self->_createNewAccountGroupSpecifier];
        v26 = PS_LocalizedStringForAppleID(@"ENABLE_ICLOUD_MAIL_ACCOUNT_BUTTON");
        v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:objc_opt_class() cell:13 edit:0];
        v28 = self->_createNewAccountButtonSpecifier;
        self->_createNewAccountButtonSpecifier = v27;

        [(PSSpecifier *)self->_createNewAccountButtonSpecifier setProperty:objc_opt_class() forKey:@"cellClass"];
        v29 = self->_createNewAccountButtonSpecifier;
        v30 = [v5 aa_childMailAccount];
        v31 = [v30 accountPropertyForKey:@"defaultAddress"];
        [(PSSpecifier *)v29 setProperty:v31 forKey:@"cellSubtitleText"];

        v32 = self->_createNewAccountButtonSpecifier;
        v33 = [MEMORY[0x1E69DC888] grayColor];
        [(PSSpecifier *)v32 setProperty:v33 forKey:@"cellSubtitleColor"];

        [(PSSpecifier *)self->_createNewAccountButtonSpecifier setButtonAction:sel__enableICloudMailButtonWasTapped_];
        [v2 addObject:self->_createNewAccountButtonSpecifier];
      }
    }

    else
    {
      v2 = [MEMORY[0x1E695DF70] array];
      v59 = 0;
      v60 = &v59;
      v61 = 0x2050000000;
      v34 = getOBBundleClass_softClass;
      v62 = getOBBundleClass_softClass;
      if (!getOBBundleClass_softClass)
      {
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __getOBBundleClass_block_invoke;
        v58[3] = &unk_1E71DBC78;
        v58[4] = &v59;
        __getOBBundleClass_block_invoke(v58);
        v34 = v60[3];
      }

      v35 = v34;
      _Block_object_dispose(&v59, 8);
      v36 = getOBPrivacyAppleIDIdentifier();
      v57 = [v34 bundleWithIdentifier:v36];

      v37 = [v57 privacyFlow];
      v38 = [v37 localizedButtonCaption];
      v39 = [v37 localizedButtonTitle];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v38, v39];
      v41 = [PSSpecifier groupSpecifierWithID:@"Create"];
      v42 = self->_createNewAccountGroupSpecifier;
      self->_createNewAccountGroupSpecifier = v41;

      v43 = self->_createNewAccountGroupSpecifier;
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      [(PSSpecifier *)v43 setProperty:v45 forKey:@"footerCellClass"];

      [(PSSpecifier *)self->_createNewAccountGroupSpecifier setProperty:v40 forKey:@"footerText"];
      v46 = self->_createNewAccountGroupSpecifier;
      v65.location = [v40 rangeOfString:v39];
      v47 = NSStringFromRange(v65);
      [(PSSpecifier *)v46 setProperty:v47 forKey:@"footerHyperlinkRange"];

      v48 = self->_createNewAccountGroupSpecifier;
      v49 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
      [(PSSpecifier *)v48 setProperty:v49 forKey:@"footerHyperlinkTarget"];

      v50 = self->_createNewAccountGroupSpecifier;
      v51 = NSStringFromSelector(sel__presentAppleIDPrivacyInformationPane);
      [(PSSpecifier *)v50 setProperty:v51 forKey:@"footerHyperlinkAction"];

      [v2 addObject:self->_createNewAccountGroupSpecifier];
      v52 = PS_RebrandedKeyForAppleID(@"CREATE_ACCOUNT_BUTTON");
      v53 = PS_LocalizedStringForAppleID(v52);
      v54 = [PSSpecifier preferenceSpecifierNamed:v53 target:self set:0 get:0 detail:0 cell:13 edit:0];
      v55 = self->_createNewAccountButtonSpecifier;
      self->_createNewAccountButtonSpecifier = v54;

      [(PSSpecifier *)self->_createNewAccountButtonSpecifier setButtonAction:sel__createNewAppleIDButtonWasTapped_];
      [v2 addObject:self->_createNewAccountButtonSpecifier];
    }
  }

  return v2;
}

- (id)_specifierForGroupWithiForgotLink
{
  v3 = PS_RebrandedKeyForAppleID(@"IFORGOT_BUTTON");
  v4 = PS_LocalizedStringForAppleID(v3);

  v5 = v4;
  v6 = [PSSpecifier groupSpecifierWithID:@"iForgot"];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 setProperty:v8 forKey:@"footerCellClass"];

  [v6 setProperty:v5 forKey:@"headerFooterHyperlinkButtonTitle"];
  v9 = [v5 rangeOfString:v5];
  v11 = v10;

  v17.location = v9;
  v17.length = v11;
  v12 = NSStringFromRange(v17);
  [v6 setProperty:v12 forKey:@"footerHyperlinkRange"];

  v13 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
  [v6 setProperty:v13 forKey:@"footerHyperlinkTarget"];

  v14 = NSStringFromSelector(sel__iForgotButtonWasTapped_);
  [v6 setProperty:v14 forKey:@"footerHyperlinkAction"];

  return v6;
}

- (void)_presentAppleIDPrivacyInformationPane
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getOBPrivacyPresenterClass_softClass_1;
  v11 = getOBPrivacyPresenterClass_softClass_1;
  if (!getOBPrivacyPresenterClass_softClass_1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getOBPrivacyPresenterClass_block_invoke_1;
    v7[3] = &unk_1E71DBC78;
    v7[4] = &v8;
    __getOBPrivacyPresenterClass_block_invoke_1(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = getOBPrivacyAppleIDIdentifier();
  v6 = [v3 presenterForPrivacySplashWithIdentifier:v5];

  [v6 setPresentingViewController:self];
  [v6 present];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = PSAppleIDSplashViewController;
  [(PSListController *)&v15 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v3;

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_spinner];
  spinnerBarItem = self->_spinnerBarItem;
  self->_spinnerBarItem = v5;

  if (self->_isPresentedModally)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonWasTapped_];
    cancelButtonBarItem = self->_cancelButtonBarItem;
    self->_cancelButtonBarItem = v7;

    v9 = [(PSAppleIDSplashViewController *)self navigationItem];
    [v9 setLeftBarButtonItem:self->_cancelButtonBarItem];

    v10 = objc_alloc(MEMORY[0x1E69DC708]);
    v11 = PS_LocalizedStringForAppleID(@"NEXT_BUTTON");
    v12 = [v10 initWithTitle:v11 style:2 target:self action:sel__signInButtonWasTapped_];
    nextButtonBarItem = self->_nextButtonBarItem;
    self->_nextButtonBarItem = v12;

    v14 = [(PSAppleIDSplashViewController *)self navigationItem];
    [v14 setRightBarButtonItem:self->_nextButtonBarItem];
  }

  self->_isPasswordDirty = 0;
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = PSAppleIDSplashViewController;
  [(PSListController *)&v9 viewWillAppear:a3];
  [(PSAppleIDSplashViewController *)self _updateSignInButton];
  if (!self->_isPresentedModally)
  {
    v4 = [(PSAppleIDSplashViewController *)self navigationItem];
    v5 = [v4 title];

    if (!v5)
    {
      v6 = PS_RebrandedKeyForAppleID(@"APPLE_ID_TITLE");
      v7 = PS_LocalizedStringForAppleID(v6);
      v8 = [(PSAppleIDSplashViewController *)self navigationItem];
      [v8 setTitle:v7];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  if ([PSListController instancesRespondToSelector:sel_traitCollectionDidChange_])
  {
    v5.receiver = self;
    v5.super_class = PSAppleIDSplashViewController;
    [(PSAppleIDSplashViewController *)&v5 traitCollectionDidChange:v4];
  }

  if ([(PSAppleIDSplashViewController *)self _shouldAnchorCreateAccountButton])
  {
    [(UITableView *)self->super._table reloadData];
  }
}

- (BOOL)_shouldAnchorCreateAccountButton
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = ([v3 sf_isiPad] & 1) == 0 && self->_createNewAccountButtonSpecifier != 0;

  return v4;
}

- (double)_heightForCreateNewAccountSpecifierWithWidth:(double)a3
{
  v4 = [(PSSpecifier *)self->_createNewAccountButtonSpecifier propertyForKey:@"cellObject"];
  v7 = v4;
  if (v4)
  {
    LODWORD(v5) = 1148846080;
    LODWORD(v6) = 1112014848;
    [v4 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:{v5, v6}];
    v9 = v8;
  }

  else
  {
    v9 = *MEMORY[0x1E69DE3D8];
  }

  return v9;
}

- (double)_heightForCreateNewAccountFooterWithWidth:(double)a3
{
  v4 = [[PSFooterHyperlinkView alloc] initWithSpecifier:self->_createNewAccountGroupSpecifier];
  LODWORD(v5) = 1148846080;
  LODWORD(v6) = 1112014848;
  [(PSFooterHyperlinkView *)v4 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:v5, v6];
  v8 = v7;

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v37.receiver = self;
  v37.super_class = PSAppleIDSplashViewController;
  [(PSListController *)&v37 tableView:v6 heightForHeaderInSection:a4];
  v8 = v7;
  if ([(PSAppleIDSplashViewController *)self _shouldAnchorCreateAccountButton])
  {
    v35 = 0;
    v36 = 0;
    [(PSListController *)self getGroup:&v36 row:&v35 ofSpecifier:self->_createNewAccountButtonSpecifier];
    if (a4 >= 1 && v36 == a4)
    {
      [v6 rectForSection:a4 - 1];
      MaxY = CGRectGetMaxY(v38);
      v10 = [(PSAppleIDSplashViewController *)self view];
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [(PSAppleIDSplashViewController *)self view];
      [v19 safeAreaInsets];
      v21 = v12 + v20;
      v23 = v14 + v22;
      v25 = v16 - (v20 + v24);
      v27 = v18 - (v22 + v26);

      v39.origin.x = v21;
      v39.origin.y = v23;
      v39.size.width = v25;
      v39.size.height = v27;
      Width = CGRectGetWidth(v39);
      v40.origin.x = v21;
      v40.origin.y = v23;
      v40.size.width = v25;
      v40.size.height = v27;
      Height = CGRectGetHeight(v40);
      [(PSAppleIDSplashViewController *)self _heightForCreateNewAccountSpecifierWithWidth:Width];
      v31 = v30;
      [(PSAppleIDSplashViewController *)self _heightForCreateNewAccountFooterWithWidth:Width];
      v33 = Height - MaxY - v31 - v32 + -20.0;
      if (v33 >= 0.0)
      {
        v8 = v33;
      }

      else
      {
        v8 = 0.0;
      }
    }
  }

  return v8;
}

- (void)_setUsername:(id)a3 withSpecifier:(id)a4
{
  objc_storeStrong(&self->_username, a3);
  v6 = a3;
  password = self->_password;
  self->_password = 0;

  [(PSAppleIDSplashViewController *)self _cancelPasswordDelegateIfNecessary];

  [(PSAppleIDSplashViewController *)self _reloadPasswordSpecifier];
}

- (void)_signInWithUsername:(id)a3 password:(id)a4
{
  v6 = a3;
  v7 = a4;
  passwordHandler = self->_passwordHandler;
  if (passwordHandler)
  {
    passwordHandler[2](passwordHandler, v7, 0);
    v9 = self->_passwordHandler;
    self->_passwordHandler = 0;
  }

  else
  {
    v10 = _PSLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "User asked to sign. Calling out to AuthKit...", buf, 2u);
    }

    v11 = objc_alloc_init(getAKAppleIDAuthenticationInAppContextClass());
    [v11 _setPasswordDelegate:self];
    [v11 setPresentingViewController:self];
    [v11 setAuthenticationType:0];
    [v11 setIsUsernameEditable:1];
    [v11 setShouldUpdatePersistentServiceTokens:1];
    [v11 setFirstTimeLogin:1];
    if (v6)
    {
      [v11 setUsername:v6];
      [v11 setIsUsernameEditable:0];
    }

    if (v7)
    {
      [v11 _setPassword:v7];
    }

    [(PSAppleIDSplashViewController *)self willBeginAuthWithContext:v11];
    v12 = dispatch_get_global_queue(25, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__PSAppleIDSplashViewController__signInWithUsername_password___block_invoke;
    v14[3] = &unk_1E71DC570;
    v14[4] = self;
    v15 = v11;
    v13 = v11;
    dispatch_async(v12, v14);
  }
}

void __62__PSAppleIDSplashViewController__signInWithUsername_password___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authenticationController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__PSAppleIDSplashViewController__signInWithUsername_password___block_invoke_2;
  v4[3] = &unk_1E71DC548;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 authenticateWithContext:v5 completion:v4];
}

- (void)didFinishAuthWithContext:(id)a3 results:(id)a4 error:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = _PSLoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_18B008000, v11, OS_LOG_TYPE_DEFAULT, "No dice with auth: %@", buf, 0xCu);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__PSAppleIDSplashViewController_didFinishAuthWithContext_results_error___block_invoke_153;
    v13[3] = &unk_1E71DC598;
    v13[4] = self;
    v12 = &v14;
    v14 = v9;
    v15 = v10;
    v16 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v13);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__PSAppleIDSplashViewController_didFinishAuthWithContext_results_error___block_invoke;
    block[3] = &unk_1E71DC570;
    block[4] = self;
    v12 = &v18;
    v18 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __72__PSAppleIDSplashViewController_didFinishAuthWithContext_results_error___block_invoke_153(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PSAppleIDSplashViewController_didFinishAuthWithContext_results_error___block_invoke_2;
  aBlock[3] = &unk_1E71DC5C0;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = *(a1 + 40);
  v4 = getAKAuthenticationNewAppleIDSetupInfoKey();
  v5 = [v3 objectForKeyedSubscript:v4];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = [*(a1 + 48) domain];
  v8 = getAKAppleIDAuthenticationErrorDomain();
  if (![v7 isEqualToString:v8])
  {

LABEL_8:
LABEL_9:
    if ([*(a1 + 56) needsCredentialRecovery])
    {
      v15 = [*(a1 + 48) domain];
      v16 = getAKAppleIDAuthenticationErrorDomain();
      if ([v15 isEqualToString:v16])
      {
        v17 = [*(a1 + 48) code];

        if (v17 == -7017)
        {
          [*(a1 + 32) hideBusyUI];
          [*(a1 + 32) _openWebBasedCredentialRecoveryFlow];
          goto LABEL_20;
        }
      }

      else
      {
      }
    }

    if ([*(a1 + 56) needsNewAppleID])
    {
      v18 = [*(a1 + 48) domain];
      v19 = getAKAppleIDAuthenticationErrorDomain();
      if ([v18 isEqualToString:v19])
      {
        v20 = [*(a1 + 48) code];

        if (v20 == -7016)
        {
          [*(a1 + 32) createNewAppleIDWithCompletion:v2];
          goto LABEL_20;
        }
      }

      else
      {
      }
    }

    [*(a1 + 32) hideBusyUI];
    goto LABEL_20;
  }

  v9 = [*(a1 + 48) code];

  if (v9 != -7043)
  {
    goto LABEL_9;
  }

  v10 = _PSLoggingFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "AuthKit wants us to start the U-13 flow.", v21, 2u);
  }

  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = getAKAuthenticationNewAppleIDSetupInfoKey();
  v14 = [v11 objectForKey:v13];
  [v12 _beginiCloudCreationFlowWithContinuationData:v14 completion:v2];

LABEL_20:
}

void __72__PSAppleIDSplashViewController_didFinishAuthWithContext_results_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PSAppleIDSplashViewController_didFinishAuthWithContext_results_error___block_invoke_3;
  v14[3] = &unk_1E71DC598;
  v10 = *(a1 + 32);
  v15 = v9;
  v16 = v10;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __72__PSAppleIDSplashViewController_didFinishAuthWithContext_results_error___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) hideBusyUI];
    v2 = MEMORY[0x1E69DC650];
    v3 = PS_RebrandedKeyForAppleID(@"CREATE_ACCOUNT_FAILED_TITLE");
    v4 = PS_LocalizedStringForAppleID(v3);
    v5 = [*(a1 + 32) localizedDescription];
    v11 = [v2 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

    v6 = MEMORY[0x1E69DC648];
    v7 = PS_LocalizedStringForAppleID(@"OK_BUTTON");
    v8 = [v6 actionWithTitle:v7 style:1 handler:0];
    [v11 addAction:v8];

    [*(a1 + 40) presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    v9 = *(a1 + 40);
    if (*(a1 + 48))
    {

      [v9 _signInWithUsername:? password:?];
    }

    else
    {
      [v9 hideBusyUI];
      v10 = _PSLoggingFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "PSAppleIDSplashViewController: missing password for Apple ID creation!", buf, 2u);
      }
    }
  }
}

- (void)_beginiCloudCreationFlowWithContinuationData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PSAppleIDSplashViewController__beginiCloudCreationFlowWithContinuationData_completion___block_invoke;
  block[3] = &unk_1E71DC5E8;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __89__PSAppleIDSplashViewController__beginiCloudCreationFlowWithContinuationData_completion___block_invoke(uint64_t a1)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v2 = getAADeviceInfoClass_softClass;
  v35 = getAADeviceInfoClass_softClass;
  if (!getAADeviceInfoClass_softClass)
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __getAADeviceInfoClass_block_invoke;
    v30 = &unk_1E71DBC78;
    v31 = &v32;
    __getAADeviceInfoClass_block_invoke(&v27);
    v2 = v33[3];
  }

  v3 = v2;
  _Block_object_dispose(&v32, 8);
  v4 = objc_alloc_init(v2);
  v5 = MEMORY[0x1E695DFF8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v6 = getAAURLConfigurationClass_softClass;
  v35 = getAAURLConfigurationClass_softClass;
  if (!getAAURLConfigurationClass_softClass)
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __getAAURLConfigurationClass_block_invoke;
    v30 = &unk_1E71DBC78;
    v31 = &v32;
    __getAAURLConfigurationClass_block_invoke(&v27);
    v6 = v33[3];
  }

  v7 = v6;
  _Block_object_dispose(&v32, 8);
  v8 = [v6 urlConfiguration];
  v9 = [v8 repairCloudAccountUIURL];
  v10 = [v5 URLWithString:v9];

  v11 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v10 cachePolicy:1 timeoutInterval:30.0];
  [v11 setHTTPMethod:@"POST"];
  [v11 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  [v11 setValue:*(a1 + 32) forHTTPHeaderField:@"X-Apple-AK-Continuation-Data"];
  v12 = [v4 clientInfoHeader];
  [v11 setValue:v12 forHTTPHeaderField:@"X-MMe-Client-Info"];

  v13 = [MEMORY[0x1E695DF58] currentLocale];
  v14 = [v13 objectForKey:*MEMORY[0x1E695D978]];
  v15 = [v14 uppercaseString];
  [v11 setValue:v15 forHTTPHeaderField:@"X-MMe-Country"];

  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v16 = getRemoteUIControllerClass_softClass;
  v35 = getRemoteUIControllerClass_softClass;
  if (!getRemoteUIControllerClass_softClass)
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __getRemoteUIControllerClass_block_invoke;
    v30 = &unk_1E71DBC78;
    v31 = &v32;
    __getRemoteUIControllerClass_block_invoke(&v27);
    v16 = v33[3];
  }

  v17 = v16;
  _Block_object_dispose(&v32, 8);
  v18 = objc_alloc_init(v16);
  v19 = *(a1 + 40);
  v20 = *(v19 + 1592);
  *(v19 + 1592) = v18;

  [*(*(a1 + 40) + 1592) setDelegate:?];
  v21 = *(a1 + 40);
  v22 = v21[199];
  v23 = [v21 navigationController];
  [v22 setNavigationController:v23];

  v24 = [*(a1 + 48) copy];
  v25 = *(a1 + 40);
  v26 = *(v25 + 1600);
  *(v25 + 1600) = v24;

  [*(*(a1 + 40) + 1592) loadRequest:v11 completion:0];
}

- (void)createNewAppleIDWithCompletion:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A250];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = @"This feature is not supported yet.";
  v6 = MEMORY[0x1E695DF20];
  v7 = a3;
  v8 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = [v4 errorWithDomain:v5 code:0 userInfo:v8];
  (*(a3 + 2))(v7, 0, 0, v9);
}

- (void)_openWebBasedCredentialRecoveryFlow
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://iforgot.apple.com"];
  [v3 openURL:v2 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)_textFieldValueDidChange:(id)a3
{
  if ([(NSArray *)self->super._specifiers count])
  {
    v4 = 0;
    v5 = 0x1E71DA000uLL;
    do
    {
      v6 = [(NSArray *)self->super._specifiers objectAtIndex:v4];
      v7 = [(PSListController *)self indexPathForIndex:v4];
      v8 = [(UITableView *)self->super._table cellForRowAtIndexPath:v7];
      v9 = [v8 isEditing];

      if (v9)
      {
        v10 = [(UITableView *)self->super._table cellForRowAtIndexPath:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v5;
          v12 = [v6 propertyForKey:@"key"];
          v13 = [v10 textField];
          v14 = [v13 text];

          if ([v12 isEqualToString:@"PSSpecifierPassword"])
          {
            [(PSAppleIDSplashViewController *)self _setPassword:v14 withSpecifier:v6];
          }

          else if ([v12 isEqualToString:@"PSSpecifierUsername"])
          {
            [(PSAppleIDSplashViewController *)self _setUsername:v14 withSpecifier:v6];
          }

          v5 = v11;
        }
      }

      ++v4;
    }

    while ([(NSArray *)self->super._specifiers count]> v4);
  }

  [(PSAppleIDSplashViewController *)self _updateSignInButton];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = PSAppleIDSplashViewController;
  v8 = [(PSListController *)&v25 tableView:v6 cellForRowAtIndexPath:v7];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = [(PSListController *)self specifierAtIndex:[(PSListController *)self indexForIndexPath:v7]];
  v10 = [v9 propertyForKey:@"key"];
  if ([v10 isEqualToString:@"PSSpecifierPassword"])
  {
    v11 = PS_LocalizedStringForAppleID(@"PASSWORD_LABEL");
    [v8 setAccessibilityLabel:v11];
LABEL_6:

    goto LABEL_7;
  }

  if ([v10 isEqualToString:@"PSSpecifierUsername"])
  {
    v11 = PS_RebrandedKeyForAppleID(@"APPLE_ID_LABEL");
    v12 = PS_LocalizedStringForAppleID(v11);
    [v8 setAccessibilityLabel:v12];

    goto LABEL_6;
  }

LABEL_7:
  [v8 setSeparatorInset:{0.0, 70.0, 0.0, 0.0}];
  v13 = [v8 textField];
  if (v13)
  {
    v21 = v9;
    v14 = MEMORY[0x1E69DE5C0];
    if (self->_textFieldTextDidChangeObserver)
    {
      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      [v15 removeObserver:self->_textFieldTextDidChangeObserver name:*v14 object:v13];
    }

    objc_initWeak(&location, self);
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = *v14;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__PSAppleIDSplashViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v22[3] = &unk_1E71DC610;
    objc_copyWeak(&v23, &location);
    v18 = [v16 addObserverForName:v17 object:v13 queue:0 usingBlock:v22];
    textFieldTextDidChangeObserver = self->_textFieldTextDidChangeObserver;
    self->_textFieldTextDidChangeObserver = v18;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
    v9 = v21;
  }

LABEL_12:

  return v8;
}

void __65__PSAppleIDSplashViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _textFieldValueDidChange:v3];
}

- (void)_updateSignInButton
{
  v3 = [(NSString *)self->_username length];
  if (self->_isPresentedModally)
  {
    v4 = v3 != 0;
    v6 = [(PSAppleIDSplashViewController *)self navigationItem];
    v5 = [v6 rightBarButtonItem];
    [v5 setEnabled:v4];
  }
}

- (void)showBusyUI
{
  [(PSSpecifier *)self->_createNewAccountButtonSpecifier setProperty:MEMORY[0x1E695E110] forKey:@"enabled"];
  [(PSListController *)self reloadSpecifier:self->_createNewAccountButtonSpecifier];
  v3 = [(PSAppleIDSplashViewController *)self navigationItem];
  v4 = PS_LocalizedStringForAppleID(@"VERIFYING_TITLE");
  [v3 setTitle:v4];

  LODWORD(v4) = self->_isPresentedModally;
  v5 = [(PSAppleIDSplashViewController *)self navigationItem];
  v6 = v5;
  if (v4 == 1)
  {
    [v5 setLeftBarButtonItem:0 animated:1];
  }

  else
  {
    [v5 setHidesBackButton:1 animated:1];
  }

  v7 = [(PSAppleIDSplashViewController *)self navigationItem];
  [v7 setRightBarButtonItem:self->_spinnerBarItem animated:1];

  [(UIActivityIndicatorView *)self->_spinner startAnimating];

  [(PSAppleIDSplashViewController *)self _setInteractionEnabled:0];
}

- (void)hideBusyUI
{
  [(PSSpecifier *)self->_createNewAccountButtonSpecifier setProperty:MEMORY[0x1E695E118] forKey:@"enabled"];
  [(PSListController *)self reloadSpecifier:self->_createNewAccountButtonSpecifier];
  v3 = [(PSAppleIDSplashViewController *)self navigationItem];
  v4 = [(PSAppleIDSplashViewController *)self serviceName];
  [v3 setTitle:v4];

  LODWORD(v4) = self->_isPresentedModally;
  v5 = [(PSAppleIDSplashViewController *)self navigationItem];
  v6 = v5;
  if (v4 == 1)
  {
    [v5 setLeftBarButtonItem:self->_cancelButtonBarItem animated:1];
  }

  else
  {
    [v5 setHidesBackButton:0 animated:1];
  }

  v7 = [(PSAppleIDSplashViewController *)self navigationItem];
  [v7 setRightBarButtonItem:self->_nextButtonBarItem animated:1];

  [(UIActivityIndicatorView *)self->_spinner stopAnimating];

  [(PSAppleIDSplashViewController *)self _setInteractionEnabled:1];
}

- (void)setSpecifier:(id)a3
{
  v11.receiver = self;
  v11.super_class = PSAppleIDSplashViewController;
  v4 = a3;
  [(PSListController *)&v11 setSpecifier:v4];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:@"account"];

  v7 = [v6 username];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 accountPropertyForKey:@"ACUISaysNotToSaveThis"];

    if (v9)
    {
      self->_comingFromModernAddFlow = 1;
      v10 = [v6 username];
      [(PSAppleIDSplashViewController *)self setUsername:v10];

      [(PSAppleIDSplashViewController *)self _signInButtonWasTapped:self->_nextButtonBarItem];
    }
  }
}

- (void)setUsername:(id)a3
{
  objc_storeStrong(&self->_username, a3);
  [(PSAppleIDSplashViewController *)self _updateSignInButton];
  [(PSAppleIDSplashViewController *)self _cancelPasswordDelegateIfNecessary];

  [(PSAppleIDSplashViewController *)self _reloadPasswordSpecifier];
}

- (void)setUsernameEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PSListController *)self specifierForID:@"PSSpecifierUsername"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 setProperty:v4 forKey:@"enabled"];
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = PSAppleIDSplashViewController;
  [(PSAppleIDSplashViewController *)&v5 willMoveToParentViewController:?];
  if (!a3)
  {
    [(PSAppleIDSplashViewController *)self _setInteractionEnabled:1];
  }
}

- (void)_setInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PSAppleIDSplashViewController *)self view];
  [v5 setUserInteractionEnabled:v3];

  v8 = [(PSAppleIDSplashViewController *)self splitViewController];
  v6 = [v8 masterViewController];
  v7 = [v6 view];
  [v7 setUserInteractionEnabled:v3];
}

- (void)_iForgotButtonWasTapped:(id)a3
{
  v4 = objc_alloc_init(getAKAppleIDAuthenticationInAppContextClass());
  [v4 setUsername:self->_username];
  [v4 setNeedsCredentialRecovery:1];
  [v4 setPresentingViewController:self];
  [(PSAppleIDSplashViewController *)self willBeginAuthWithContext:v4];
  v5 = [(PSAppleIDSplashViewController *)self authenticationController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PSAppleIDSplashViewController__iForgotButtonWasTapped___block_invoke;
  v7[3] = &unk_1E71DC548;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 authenticateWithContext:v6 completion:v7];
}

- (void)_createNewAppleIDButtonWasTapped:(id)a3
{
  v4 = objc_alloc_init(getAKAppleIDAuthenticationInAppContextClass());
  [v4 setNeedsNewAppleID:1];
  [v4 setPresentingViewController:self];
  [(PSAppleIDSplashViewController *)self willBeginAuthWithContext:v4];
  v5 = [(PSAppleIDSplashViewController *)self authenticationController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PSAppleIDSplashViewController__createNewAppleIDButtonWasTapped___block_invoke;
  v7[3] = &unk_1E71DC548;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 authenticateWithContext:v6 completion:v7];
}

- (void)_createICloudMailButtonWasTapped:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E6959A48] defaultStore];
  v6 = [v5 aa_primaryAppleAccount];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v7 = getiCloudMailAccountProviderClass_softClass;
  v17 = getiCloudMailAccountProviderClass_softClass;
  if (!getiCloudMailAccountProviderClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getiCloudMailAccountProviderClass_block_invoke;
    v13[3] = &unk_1E71DBC78;
    v13[4] = &v14;
    __getiCloudMailAccountProviderClass_block_invoke(v13);
    v7 = v15[3];
  }

  v8 = v7;
  _Block_object_dispose(&v14, 8);
  v9 = [[v7 alloc] initWithAccountStore:v5 appleAccount:v6 presenter:self];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PSAppleIDSplashViewController__createICloudMailButtonWasTapped___block_invoke;
  v11[3] = &unk_1E71DC570;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 presentWithAlert:0 completionHandler:v11];
}

- (void)_enableICloudMailButtonWasTapped:(id)a3
{
  v4 = [MEMORY[0x1E6959A48] defaultStore];
  v5 = [v4 aa_primaryAppleAccount];
  [v5 setEnabled:1 forDataclass:*MEMORY[0x1E6959698]];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PSAppleIDSplashViewController__enableICloudMailButtonWasTapped___block_invoke;
  v7[3] = &unk_1E71DC638;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [v4 saveAccount:v6 withDataclassActions:0 doVerify:0 completion:v7];
}

void __66__PSAppleIDSplashViewController__enableICloudMailButtonWasTapped___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __66__PSAppleIDSplashViewController__enableICloudMailButtonWasTapped___block_invoke_2;
    v3[3] = &unk_1E71DC570;
    v2 = *(a1 + 40);
    v3[4] = *(a1 + 32);
    v4 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], v3);
  }
}

- (void)_cancelButtonWasTapped:(id)a3
{
  v3 = [(PSAppleIDSplashViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_signInButtonWasTapped:(id)a3
{
  v4 = [(UITableView *)self->super._table firstResponder];
  [v4 resignFirstResponder];

  [(PSAppleIDSplashViewController *)self showBusyUI];
  username = self->_username;
  password = self->_password;

  [(PSAppleIDSplashViewController *)self _signInWithUsername:username password:password];
}

- (void)_presentInvalidUsernameAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PS_RebrandedKeyForAppleID(@"INVALID_USERNAME_TITLE");
  v5 = PS_LocalizedStringForAppleID(v4);
  v6 = PS_RebrandedKeyForAppleID(@"INVALID_USERNAME_MESSAGE");
  v7 = PS_LocalizedStringForAppleID(v6);
  v14 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v8 = MEMORY[0x1E69DC648];
  v9 = PS_LocalizedStringForAppleID(@"OK_BUTTON");
  v10 = [v8 actionWithTitle:v9 style:0 handler:0];
  [v14 addAction:v10];

  v11 = MEMORY[0x1E69DC648];
  v12 = PS_LocalizedStringForAppleID(@"LEARN_MORE_BUTTON");
  v13 = [v11 actionWithTitle:v12 style:1 handler:&__block_literal_global_10];
  [v14 addAction:v13];

  [(PSAppleIDSplashViewController *)self presentViewController:v14 animated:1 completion:0];
}

void __61__PSAppleIDSplashViewController__presentInvalidUsernameAlert__block_invoke()
{
  v1 = [MEMORY[0x1E69DC668] sharedApplication];
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.me.com/findmyiphone/account"];
  [v1 openURL:v0 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (AKAppleIDAuthenticationController)authenticationController
{
  authController = self->_authController;
  if (!authController)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getAKAppleIDAuthenticationControllerClass_softClass;
    v13 = getAKAppleIDAuthenticationControllerClass_softClass;
    if (!getAKAppleIDAuthenticationControllerClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getAKAppleIDAuthenticationControllerClass_block_invoke;
      v9[3] = &unk_1E71DBC78;
      v9[4] = &v10;
      __getAKAppleIDAuthenticationControllerClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_authController;
    self->_authController = v6;

    authController = self->_authController;
  }

  return authController;
}

- (BOOL)_runningInMail
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.mobilemail"];

  return v4;
}

- (void)remoteUIControllerDidDismiss:(id)a3
{
  remoteUICompletion = self->_remoteUICompletion;
  if (remoteUICompletion)
  {
    (*(remoteUICompletion + 2))(remoteUICompletion, 0, 0, 0);
    v5 = self->_remoteUICompletion;
    self->_remoteUICompletion = 0;
  }
}

- (void)context:(id)a3 needsPasswordWithCompletion:(id)a4
{
  if (a4)
  {
    v5 = a4;
    [(PSAppleIDSplashViewController *)self hideBusyUI];
    v6 = _Block_copy(v5);

    passwordHandler = self->_passwordHandler;
    self->_passwordHandler = v6;

    [(PSAppleIDSplashViewController *)self _reloadPasswordSpecifier];
  }
}

- (void)_cancelPasswordDelegateIfNecessary
{
  passwordHandler = self->_passwordHandler;
  if (passwordHandler)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = getAKAppleIDAuthenticationErrorDomain();
    v6 = [v4 errorWithDomain:v5 code:-7003 userInfo:0];
    passwordHandler[2](passwordHandler, 0, v6);

    v7 = self->_passwordHandler;
    self->_passwordHandler = 0;

    password = self->_password;
    self->_password = 0;
  }
}

@end