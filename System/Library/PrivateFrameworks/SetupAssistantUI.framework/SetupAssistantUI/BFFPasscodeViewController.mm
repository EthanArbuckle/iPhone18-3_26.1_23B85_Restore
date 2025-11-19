@interface BFFPasscodeViewController
+ (BOOL)allowSkip;
- (BFFPasscodeViewControllerDelegate)passcodeCreationDelegate;
- (BOOL)_allowSkip;
- (id)_firstEntryInstructions;
- (id)_passcodeInputViewForState:(unint64_t)a3;
- (id)instructionsForState:(unint64_t)a3;
- (id)passcodeInputView;
- (id)passcodeOptionAlertController;
- (id)titleForState:(unint64_t)a3;
- (void)_animatedPasscodeViewTransitionToState:(unint64_t)a3 animation:(unint64_t)a4;
- (void)_commitPasscodeEntryTypeChange;
- (void)_finishedWithPasscode:(id)a3;
- (void)_setupFirstEntry;
- (void)_showPasscodeOptionsSheet;
- (void)_showSkipPasscodeAlert;
- (void)_showWeakWarningAlert;
- (void)_updateNextButton;
- (void)_updateNextButtonForPasscode:(id)a3;
- (void)clear;
- (void)configurePasscodeTypeUsingAnimations:(BOOL)a3;
- (void)dealloc;
- (void)loadView;
- (void)nextButtonPressed;
- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4;
- (void)passcodeInput:(id)a3 tappedFooterButton:(id)a4;
- (void)passcodeManager:(id)a3 didSetPasscodeWithSuccess:(BOOL)a4 error:(id)a5;
- (void)passcodeManager:(id)a3 didTransitionFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)passcodeManagerWillSetPasscode:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BFFPasscodeViewController

+ (BOOL)allowSkip
{
  if (PSHasStockholmPass())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v3 = [MEMORY[0x277D262A0] sharedConnection];
    v2 = [v3 isPasscodeRequired] ^ 1;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(BFFPasscodeViewController *)self passcodeManager];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = BFFPasscodeViewController;
  [(BFFPasscodeViewController *)&v4 dealloc];
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = BFFPasscodeViewController;
  [(BFFPasscodeViewController *)&v7 loadView];
  v3 = [BFFPasscodeView alloc];
  v4 = [(BFFPasscodeView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(BFFPasscodeView *)v4 setAutoresizingMask:18];
  [(BFFPasscodeView *)v4 setPasscodeViewController:self];
  [(BFFPasscodeViewController *)self setView:v4];
  v5 = +[BFFStyle sharedStyle];
  v6 = [(BFFPasscodeViewController *)self navigationItem];
  [v5 applyAutomaticScrollToEdgeBehaviorOnNavigationItem:v6];
}

- (void)_setupFirstEntry
{
  v3 = +[BFFPasscodeCreationManager sharedPasscodeManager];
  [(BFFPasscodeViewController *)self setPasscodeManager:v3];

  v4 = [(BFFPasscodeViewController *)self passcodeManager];
  [v4 reset];

  v5 = [(BFFPasscodeViewController *)self passcodeManager];
  [v5 setDelegate:self];

  v21 = 0;
  v6 = [MEMORY[0x277D262A0] sharedConnection];
  v7 = [v6 minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v21];

  if (v7)
  {
    v8 = [(BFFPasscodeViewController *)self passcodeManager];
    [v8 setNumericPasscodeEntry:0];

    v9 = [(BFFPasscodeViewController *)self passcodeManager];
    [v9 setSimplePasscodeEntryLength:0];
  }

  else
  {
    if (PSSupportsMesa())
    {
      v10 = 1;
    }

    else
    {
      v10 = MGGetBoolAnswer();
    }

    v11 = (v21 == 1) | v10;
    v12 = [(BFFPasscodeViewController *)self passcodeManager];
    v13 = v12;
    if (v11)
    {
      v14 = 6;
    }

    else
    {
      v14 = 4;
    }

    [v12 setSimplePasscodeEntryLength:v14];

    v9 = [(BFFPasscodeViewController *)self passcodeManager];
    [v9 setNumericPasscodeEntry:1];
  }

  [(BFFPasscodeViewController *)self configurePasscodeTypeUsingAnimations:0];
  v15 = [(BFFPasscodeViewController *)self passcodeManager];
  v16 = [v15 passcodeState];

  v17 = [(BFFPasscodeViewController *)self view];
  v18 = [(BFFPasscodeViewController *)self titleForState:v16];
  [v17 setTitle:v18];

  v19 = [(BFFPasscodeViewController *)self _passcodeInputViewForState:v16];
  v20 = [(BFFPasscodeViewController *)self view];
  [v20 transitionToPasscodeInput:v19 delegate:self];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BFFPasscodeViewController;
  [(BFFPasscodeViewController *)&v3 viewDidLoad];
  [(BFFPasscodeViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  [(BFFPasscodeViewController *)self _setupFirstEntry];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = BFFPasscodeViewController;
  [(BFFPasscodeViewController *)&v7 viewWillAppear:a3];
  v4 = [(BFFPasscodeViewController *)self view];
  v5 = [v4 passcodeInputView];

  [v5 becomeFirstResponder];
  v6 = [v5 passcode];
  [(BFFPasscodeViewController *)self _updateNextButtonForPasscode:v6];
}

- (void)viewDidAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = BFFPasscodeViewController;
  [(BFFPasscodeViewController *)&v11 viewDidAppear:a3];
  v4 = [(BFFPasscodeViewController *)self view];
  [v4 contentSize];
  v6 = v5;
  v7 = [(BFFPasscodeViewController *)self view];
  [v7 frame];
  v9 = v8;

  if (v6 > v9)
  {
    v10 = [(BFFPasscodeViewController *)self view];
    [v10 flashScrollIndicators];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BFFPasscodeViewController;
  [(BFFPasscodeViewController *)&v6 viewWillDisappear:a3];
  v4 = [(BFFPasscodeViewController *)self view];
  v5 = [v4 passcodeInputView];

  [v5 resignFirstResponder];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = BFFPasscodeViewController;
  [(BFFPasscodeViewController *)&v7 viewDidDisappear:a3];
  if (self->_showingSpinner)
  {
    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"SETUP_PASSCODE_VIEW_CONTROLLER"];
    self->_showingSpinner = 0;
  }

  v4 = +[BFFPasscodeCreationManager sharedPasscodeManager];
  v5 = [v4 passcodeState];

  if (v5 == 4)
  {
    [(BFFPasscodeViewController *)self clear];
  }

  else
  {
    v6 = +[BFFPasscodeCreationManager sharedPasscodeManager];
    [v6 reset];
  }
}

- (void)nextButtonPressed
{
  v3 = [(BFFPasscodeViewController *)self view];
  v4 = [v3 passcodeInputView];
  v6 = [v4 passcode];

  v5 = [(BFFPasscodeViewController *)self passcodeManager];
  [v5 transitionToNextPasscodeStateForInput:v6];
}

- (void)_updateNextButton
{
  v3 = [(BFFPasscodeViewController *)self view];
  v5 = [v3 passcodeInputView];

  v4 = [v5 passcode];
  [(BFFPasscodeViewController *)self _updateNextButtonForPasscode:v4];
}

- (void)_updateNextButtonForPasscode:(id)a3
{
  v9 = a3;
  if ([v9 length])
  {
    v4 = [MEMORY[0x277D262A0] sharedConnection];
    v5 = [v4 passcode:v9 meetsCurrentConstraintsOutError:0];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BFFPasscodeViewController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:v5];

  v8 = [MEMORY[0x277D75658] activeKeyboard];
  [v8 setReturnKeyEnabled:v5];
}

- (BOOL)_allowSkip
{
  v3 = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
    v6 = [v5 passcodeViewControllerAllowSkip:self];

    return v6;
  }

  else
  {

    return +[BFFPasscodeViewController allowSkip];
  }
}

- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4
{
  v6 = a4;
  v7 = [a3 passcodeField];
  [v7 forceDisplayIfNeeded];

  v8 = dispatch_time(0, 76000000);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__BFFPasscodeViewController_passcodeInput_enteredPasscode___block_invoke;
  v10[3] = &unk_279BB4A70;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_after(v8, MEMORY[0x277D85CD0], v10);
}

void __59__BFFPasscodeViewController_passcodeInput_enteredPasscode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passcodeManager];
  [v2 transitionToNextPasscodeStateForInput:*(a1 + 40)];
}

- (id)passcodeInputView
{
  v3 = [(BFFPasscodeViewController *)self passcodeManager];
  v4 = [v3 isSimplePasscodeEntry];

  if (v4)
  {
    v5 = [BFFSimplePasscodeInputView alloc];
    v6 = [(BFFPasscodeViewController *)self passcodeManager];
    v7 = [v6 simplePasscodeEntryLength];
    v8 = [(BFFSimplePasscodeInputView *)v5 initWithFrame:v7 numberOfEntryFields:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

    [(BFFSimplePasscodeInputView *)v8 setLimitCharactersToNumbers:0];
  }

  else
  {
    v9 = [BFFComplexPasscodeInputView alloc];
    v10 = [(BFFPasscodeViewController *)self passcodeManager];
    v11 = [v10 isNumericPasscodeEntry];
    v8 = [(BFFComplexPasscodeInputView *)v9 initWithFrame:v11 numericOnly:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  return v8;
}

- (id)_passcodeInputViewForState:(unint64_t)a3
{
  v5 = [(BFFPasscodeViewController *)self passcodeInputView];
  if (a3 == 3 || !a3)
  {
    v6 = [(BFFPasscodeViewController *)self passcodeOptionAlertController];
    v7 = [v6 actions];

    if ([v7 count] == 2)
    {
      v8 = [(BFFPasscodeViewController *)self _allowSkip];
      self->_footerButtonIsSkip = v8;
      if (v8)
      {
        v9 = @"DO_NOT_ADD_PASSCODE";
        goto LABEL_9;
      }
    }

    else
    {
      self->_footerButtonIsSkip = 0;
    }

    if ([v7 count] < 2)
    {
LABEL_10:

      goto LABEL_11;
    }

    v9 = @"PASSCODE_OPTIONS";
LABEL_9:
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:v9 value:&stru_287761F90 table:@"Localizable"];
    [v5 setFooterButtonText:v11];

    goto LABEL_10;
  }

LABEL_11:
  v12 = [v5 instructions];
  v13 = [(BFFPasscodeViewController *)self instructionsForState:a3];
  [v12 setText:v13];

  return v5;
}

- (void)_animatedPasscodeViewTransitionToState:(unint64_t)a3 animation:(unint64_t)a4
{
  v7 = [(BFFPasscodeViewController *)self _passcodeInputViewForState:a3];
  v6 = [(BFFPasscodeViewController *)self view];
  [v6 animateTransitionToPasscodeInput:v7 animation:a4];
}

- (void)passcodeManager:(id)a3 didTransitionFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v8 = [(BFFPasscodeViewController *)self view];
  v9 = [(BFFPasscodeViewController *)self titleForState:a5];
  [v8 setTitle:v9];

  if (!a5)
  {
    v13 = [(BFFPasscodeViewController *)self view];
    v14 = [v13 passcodeInputView];
    [v14 setPasscode:&stru_287761F90];

    if (a4 == 1)
    {
      goto LABEL_10;
    }

    v11 = self;
    v12 = 0;
    v10 = 3;
    goto LABEL_9;
  }

  if ((a5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (a5 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    v11 = self;
    v12 = a5;
LABEL_9:
    [(BFFPasscodeViewController *)v11 _animatedPasscodeViewTransitionToState:v12 animation:v10];
    goto LABEL_10;
  }

  if (a5 == 4)
  {
    v15 = [(BFFPasscodeViewController *)self passcodeManager];
    v16 = [v15 passcode];
    [(BFFPasscodeViewController *)self _finishedWithPasscode:v16];
  }

  else if (a5 == 1)
  {
    [(BFFPasscodeViewController *)self _showWeakWarningAlert];
  }

LABEL_10:

  [(BFFPasscodeViewController *)self _updateNextButton];
}

- (void)passcodeManagerWillSetPasscode:(id)a3
{
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:self identifier:@"SETUP_PASSCODE_VIEW_CONTROLLER"];
  self->_showingSpinner = 1;
  v4 = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
    [v6 passcodeViewControllerWillSetPasscode:self];
  }
}

- (void)passcodeManager:(id)a3 didSetPasscodeWithSuccess:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v13 = a3;
  v8 = a5;
  if (self->_showingSpinner)
  {
    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"SETUP_PASSCODE_VIEW_CONTROLLER"];
    self->_showingSpinner = 0;
  }

  if (v6)
  {
    v9 = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
      v12 = [v13 passcode];
      [v11 passcodeViewController:self didSetPasscode:v12];
    }
  }
}

- (void)passcodeInput:(id)a3 tappedFooterButton:(id)a4
{
  if (self->_footerButtonIsSkip)
  {
    [(BFFPasscodeViewController *)self _showSkipPasscodeAlert:a3];
  }

  else
  {
    [(BFFPasscodeViewController *)self _showPasscodeOptionsSheet:a3];
  }
}

- (void)clear
{
  v3 = [(BFFPasscodeViewController *)self view];
  [v3 transitionToPasscodeInput:0 delegate:0];

  v4 = [(BFFPasscodeViewController *)self passcodeManager];
  [v4 setDelegate:0];

  [(BFFPasscodeViewController *)self setPasscodeManager:0];
}

- (void)_finishedWithPasscode:(id)a3
{
  v4 = a3;
  v5 = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
  [v5 passcodeViewController:self didFinishWithPasscodeCreation:v4];
}

- (id)titleForState:(unint64_t)a3
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"CREATE_PASSCODE"];
  v5 = [v3 localizedStringForKey:v4 value:&stru_287761F90 table:@"Localizable"];

  return v5;
}

- (id)instructionsForState:(unint64_t)a3
{
  if (a3 == 3)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v7;
    v8 = @"PASSCODES_FAILED_TO_MATCH";
    goto LABEL_9;
  }

  if (a3 == 2)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v7;
    v8 = @"RE_ENTER_PASSCODE";
LABEL_9:
    v6 = [(__CFString *)v7 localizedStringForKey:v8 value:&stru_287761F90 table:@"Localizable"];
    goto LABEL_10;
  }

  if (a3)
  {
    v5 = &stru_287761F90;
  }

  else
  {
    v4 = [(BFFPasscodeViewController *)self passcodeManager];
    v5 = [v4 constraintInstructions];

    if (!v5 || ![(__CFString *)v5 length])
    {
      v6 = [(BFFPasscodeViewController *)self _firstEntryInstructions];
LABEL_10:
      v9 = v6;

      v5 = v9;
    }
  }

  return v5;
}

- (id)_firstEntryInstructions
{
  v3 = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || (-[BFFPasscodeViewController passcodeCreationDelegate](self, "passcodeCreationDelegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 passcodeViewControllerCustomFirstEntryInstructions:self], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"PASSCODE_DESCRIPTION"];
    v6 = [v7 localizedStringForKey:v8 value:&stru_287761F90 table:@"Localizable"];
  }

  return v6;
}

- (void)configurePasscodeTypeUsingAnimations:(BOOL)a3
{
  v3 = a3;
  v5 = [(BFFPasscodeViewController *)self passcodeManager];
  v6 = [v5 isSimplePasscodeEntry];

  if (v6)
  {
    v11 = [(BFFPasscodeViewController *)self navigationItem];
    [v11 setRightBarButtonItem:0 animated:v3];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D751E0]);
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"NEXT" value:&stru_287761F90 table:@"Localizable"];
    v11 = [v7 initWithTitle:v9 style:2 target:self action:sel_nextButtonPressed];

    v10 = [(BFFPasscodeViewController *)self navigationItem];
    [v10 setRightBarButtonItem:v11 animated:v3];

    [(BFFPasscodeViewController *)self _updateNextButton];
  }
}

- (void)_showWeakWarningAlert
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"WEAK_PASSCODE_DETAILS"];
  v17 = [v3 localizedStringForKey:v4 value:&stru_287761F90 table:@"Localizable"];

  v5 = MEMORY[0x277D75110];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"WEAK_PASSCODE" value:&stru_287761F90 table:@"Localizable"];
  v8 = [v5 alertControllerWithTitle:v7 message:v17 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CHANGE_PASSCODE" value:&stru_287761F90 table:@"Localizable"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __50__BFFPasscodeViewController__showWeakWarningAlert__block_invoke;
  v19[3] = &unk_279BB4A98;
  v19[4] = self;
  v12 = [v9 actionWithTitle:v11 style:1 handler:v19];
  [v8 addAction:v12];

  v13 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"USE_WEAK_PASSCODE_ANYWAY" value:&stru_287761F90 table:@"Localizable"];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__BFFPasscodeViewController__showWeakWarningAlert__block_invoke_2;
  v18[3] = &unk_279BB4A98;
  v18[4] = self;
  v16 = [v13 actionWithTitle:v15 style:0 handler:v18];
  [v8 addAction:v16];

  [(BFFPasscodeViewController *)self presentViewController:v8 animated:1 completion:0];
}

void __50__BFFPasscodeViewController__showWeakWarningAlert__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) passcodeManager];
  [v1 acceptWeakPasscode:0];
}

void __50__BFFPasscodeViewController__showWeakWarningAlert__block_invoke_2(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_265AC5000, v2, OS_LOG_TYPE_DEFAULT, "User accepted weak passcode", v4, 2u);
  }

  v3 = [*(a1 + 32) passcodeManager];
  [v3 acceptWeakPasscode:1];
}

- (void)_showSkipPasscodeAlert
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"SKIP_PASSCODE_DESCRIPTION"];
  v4 = [v2 localizedStringForKey:v3 value:&stru_287761F90 table:@"Localizable"];

  v5 = MEMORY[0x277D75110];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SKIP_PASSCODE" value:&stru_287761F90 table:@"Localizable"];
  v8 = [v5 alertControllerWithTitle:v7 message:v4 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"SKIP_OPTION_CREATE_PASSCODE" value:&stru_287761F90 table:@"Localizable"];
  v12 = [v9 actionWithTitle:v11 style:1 handler:0];
  [v8 addAction:v12];

  v13 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"SKIP_OPTION_DONT_USE_PASSCODE" value:&stru_287761F90 table:@"Localizable"];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__BFFPasscodeViewController__showSkipPasscodeAlert__block_invoke;
  v18[3] = &unk_279BB4A98;
  v18[4] = self;
  v16 = [v13 actionWithTitle:v15 style:0 handler:v18];
  [v8 addAction:v16];

  [(BFFPasscodeViewController *)self presentViewController:v8 animated:1 completion:0];
}

uint64_t __51__BFFPasscodeViewController__showSkipPasscodeAlert__block_invoke(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_265AC5000, v2, OS_LOG_TYPE_DEFAULT, "User opted out of passcode", v4, 2u);
  }

  return [*(a1 + 32) _finishedWithPasscode:0];
}

- (void)_commitPasscodeEntryTypeChange
{
  [(BFFPasscodeViewController *)self configurePasscodeTypeUsingAnimations:1];
  v3 = [(BFFPasscodeViewController *)self passcodeManager];
  [v3 setPasscodeState:0];
}

- (id)passcodeOptionAlertController
{
  v45[0] = 0;
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:v45];

  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v6 = [(BFFPasscodeViewController *)self passcodeManager];
  v7 = [v6 isNumericPasscodeEntry];

  if (v7)
  {
    v8 = MEMORY[0x277D750F8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"CUSTOM_ALPHANUMERIC_CODE" value:&stru_287761F90 table:@"Localizable"];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __58__BFFPasscodeViewController_passcodeOptionAlertController__block_invoke;
    v44[3] = &unk_279BB4A98;
    v44[4] = self;
    v11 = [v8 actionWithTitle:v10 style:0 handler:v44];
    [v5 addAction:v11];
  }

  if (v4 <= 1)
  {
    v12 = [(BFFPasscodeViewController *)self passcodeManager];
    if ([v12 isNumericPasscodeEntry])
    {
      v13 = [(BFFPasscodeViewController *)self passcodeManager];
      v14 = [v13 simplePasscodeEntryLength];

      if (v14 < 1)
      {
        if (v4)
        {
          goto LABEL_15;
        }

LABEL_10:
        v19 = [(BFFPasscodeViewController *)self passcodeManager];
        v20 = [v19 simplePasscodeEntryLength];

        if (v20 != 6)
        {
          v21 = MEMORY[0x277D750F8];
          v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = [v22 localizedStringForKey:@"6_DIGIT_CODE" value:&stru_287761F90 table:@"Localizable"];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __58__BFFPasscodeViewController_passcodeOptionAlertController__block_invoke_3;
          v42[3] = &unk_279BB4A98;
          v42[4] = self;
          v24 = [v21 actionWithTitle:v23 style:0 handler:v42];
          [v5 addAction:v24];
        }

        if (!v45[0])
        {
          v25 = [(BFFPasscodeViewController *)self passcodeManager];
          v26 = [v25 simplePasscodeEntryLength];

          if (v26 != 4)
          {
            v27 = MEMORY[0x277D750F8];
            v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v29 = [v28 localizedStringForKey:@"4_DIGIT_CODE" value:&stru_287761F90 table:@"Localizable"];
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __58__BFFPasscodeViewController_passcodeOptionAlertController__block_invoke_4;
            v41[3] = &unk_279BB4A98;
            v41[4] = self;
            v30 = [v27 actionWithTitle:v29 style:0 handler:v41];
            [v5 addAction:v30];
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v15 = MEMORY[0x277D750F8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"CUSTOM_NUMERIC_CODE" value:&stru_287761F90 table:@"Localizable"];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __58__BFFPasscodeViewController_passcodeOptionAlertController__block_invoke_2;
    v43[3] = &unk_279BB4A98;
    v43[4] = self;
    v18 = [v15 actionWithTitle:v17 style:0 handler:v43];
    [v5 addAction:v18];

    if (v4)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_15:
  if ([(BFFPasscodeViewController *)self _allowSkip])
  {
    v31 = MEMORY[0x277D750F8];
    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"DO_NOT_ADD_PASSCODE" value:&stru_287761F90 table:@"Localizable"];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __58__BFFPasscodeViewController_passcodeOptionAlertController__block_invoke_5;
    v40[3] = &unk_279BB4A98;
    v40[4] = self;
    v34 = [v31 actionWithTitle:v33 style:0 handler:v40];
    [v5 addAction:v34];
  }

  v35 = MEMORY[0x277D750F8];
  v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v37 = [v36 localizedStringForKey:@"CANCEL" value:&stru_287761F90 table:@"Localizable"];
  v38 = [v35 actionWithTitle:v37 style:1 handler:0];
  [v5 addAction:v38];

  return v5;
}

uint64_t __58__BFFPasscodeViewController_passcodeOptionAlertController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passcodeManager];
  [v2 setNumericPasscodeEntry:0];

  v3 = [*(a1 + 32) passcodeManager];
  [v3 setSimplePasscodeEntryLength:0];

  v4 = *(a1 + 32);

  return [v4 _commitPasscodeEntryTypeChange];
}

uint64_t __58__BFFPasscodeViewController_passcodeOptionAlertController__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) passcodeManager];
  [v2 setNumericPasscodeEntry:1];

  v3 = [*(a1 + 32) passcodeManager];
  [v3 setSimplePasscodeEntryLength:0];

  v4 = *(a1 + 32);

  return [v4 _commitPasscodeEntryTypeChange];
}

uint64_t __58__BFFPasscodeViewController_passcodeOptionAlertController__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) passcodeManager];
  [v2 setNumericPasscodeEntry:1];

  v3 = [*(a1 + 32) passcodeManager];
  [v3 setSimplePasscodeEntryLength:6];

  v4 = *(a1 + 32);

  return [v4 _commitPasscodeEntryTypeChange];
}

uint64_t __58__BFFPasscodeViewController_passcodeOptionAlertController__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) passcodeManager];
  [v2 setNumericPasscodeEntry:1];

  v3 = [*(a1 + 32) passcodeManager];
  [v3 setSimplePasscodeEntryLength:4];

  v4 = *(a1 + 32);

  return [v4 _commitPasscodeEntryTypeChange];
}

- (void)_showPasscodeOptionsSheet
{
  v7 = [(BFFPasscodeViewController *)self passcodeOptionAlertController];
  if (BFFIsiPad())
  {
    [v7 setModalPresentationStyle:7];
    v3 = [v7 popoverPresentationController];
    v4 = [(BFFPasscodeViewController *)self view];
    v5 = [v4 passcodeInputView];
    v6 = [v5 footerButton];

    [v3 setPermittedArrowDirections:2];
    [v3 setSourceView:v6];
    [v6 bounds];
    [v3 setSourceRect:?];
  }

  [(BFFPasscodeViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (BFFPasscodeViewControllerDelegate)passcodeCreationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeCreationDelegate);

  return WeakRetained;
}

@end