@interface BFFPasscodeViewController
+ (BOOL)allowSkip;
- (BFFPasscodeViewControllerDelegate)passcodeCreationDelegate;
- (BOOL)_allowSkip;
- (id)_firstEntryInstructions;
- (id)_passcodeInputViewForState:(unint64_t)state;
- (id)instructionsForState:(unint64_t)state;
- (id)passcodeInputView;
- (id)passcodeOptionAlertController;
- (id)titleForState:(unint64_t)state;
- (void)_animatedPasscodeViewTransitionToState:(unint64_t)state animation:(unint64_t)animation;
- (void)_commitPasscodeEntryTypeChange;
- (void)_finishedWithPasscode:(id)passcode;
- (void)_setupFirstEntry;
- (void)_showPasscodeOptionsSheet;
- (void)_showSkipPasscodeAlert;
- (void)_showWeakWarningAlert;
- (void)_updateNextButton;
- (void)_updateNextButtonForPasscode:(id)passcode;
- (void)clear;
- (void)configurePasscodeTypeUsingAnimations:(BOOL)animations;
- (void)dealloc;
- (void)loadView;
- (void)nextButtonPressed;
- (void)passcodeInput:(id)input enteredPasscode:(id)passcode;
- (void)passcodeInput:(id)input tappedFooterButton:(id)button;
- (void)passcodeManager:(id)manager didSetPasscodeWithSuccess:(BOOL)success error:(id)error;
- (void)passcodeManager:(id)manager didTransitionFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)passcodeManagerWillSetPasscode:(id)passcode;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v2 = [mEMORY[0x277D262A0] isPasscodeRequired] ^ 1;
  }

  return v2;
}

- (void)dealloc
{
  passcodeManager = [(BFFPasscodeViewController *)self passcodeManager];
  [passcodeManager setDelegate:0];

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
  navigationItem = [(BFFPasscodeViewController *)self navigationItem];
  [v5 applyAutomaticScrollToEdgeBehaviorOnNavigationItem:navigationItem];
}

- (void)_setupFirstEntry
{
  v3 = +[BFFPasscodeCreationManager sharedPasscodeManager];
  [(BFFPasscodeViewController *)self setPasscodeManager:v3];

  passcodeManager = [(BFFPasscodeViewController *)self passcodeManager];
  [passcodeManager reset];

  passcodeManager2 = [(BFFPasscodeViewController *)self passcodeManager];
  [passcodeManager2 setDelegate:self];

  v21 = 0;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v7 = [mEMORY[0x277D262A0] minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:&v21];

  if (v7)
  {
    passcodeManager3 = [(BFFPasscodeViewController *)self passcodeManager];
    [passcodeManager3 setNumericPasscodeEntry:0];

    passcodeManager4 = [(BFFPasscodeViewController *)self passcodeManager];
    [passcodeManager4 setSimplePasscodeEntryLength:0];
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
    passcodeManager5 = [(BFFPasscodeViewController *)self passcodeManager];
    v13 = passcodeManager5;
    if (v11)
    {
      v14 = 6;
    }

    else
    {
      v14 = 4;
    }

    [passcodeManager5 setSimplePasscodeEntryLength:v14];

    passcodeManager4 = [(BFFPasscodeViewController *)self passcodeManager];
    [passcodeManager4 setNumericPasscodeEntry:1];
  }

  [(BFFPasscodeViewController *)self configurePasscodeTypeUsingAnimations:0];
  passcodeManager6 = [(BFFPasscodeViewController *)self passcodeManager];
  passcodeState = [passcodeManager6 passcodeState];

  view = [(BFFPasscodeViewController *)self view];
  v18 = [(BFFPasscodeViewController *)self titleForState:passcodeState];
  [view setTitle:v18];

  v19 = [(BFFPasscodeViewController *)self _passcodeInputViewForState:passcodeState];
  view2 = [(BFFPasscodeViewController *)self view];
  [view2 transitionToPasscodeInput:v19 delegate:self];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BFFPasscodeViewController;
  [(BFFPasscodeViewController *)&v3 viewDidLoad];
  [(BFFPasscodeViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  [(BFFPasscodeViewController *)self _setupFirstEntry];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = BFFPasscodeViewController;
  [(BFFPasscodeViewController *)&v7 viewWillAppear:appear];
  view = [(BFFPasscodeViewController *)self view];
  passcodeInputView = [view passcodeInputView];

  [passcodeInputView becomeFirstResponder];
  passcode = [passcodeInputView passcode];
  [(BFFPasscodeViewController *)self _updateNextButtonForPasscode:passcode];
}

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = BFFPasscodeViewController;
  [(BFFPasscodeViewController *)&v11 viewDidAppear:appear];
  view = [(BFFPasscodeViewController *)self view];
  [view contentSize];
  v6 = v5;
  view2 = [(BFFPasscodeViewController *)self view];
  [view2 frame];
  v9 = v8;

  if (v6 > v9)
  {
    view3 = [(BFFPasscodeViewController *)self view];
    [view3 flashScrollIndicators];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = BFFPasscodeViewController;
  [(BFFPasscodeViewController *)&v6 viewWillDisappear:disappear];
  view = [(BFFPasscodeViewController *)self view];
  passcodeInputView = [view passcodeInputView];

  [passcodeInputView resignFirstResponder];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = BFFPasscodeViewController;
  [(BFFPasscodeViewController *)&v7 viewDidDisappear:disappear];
  if (self->_showingSpinner)
  {
    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"SETUP_PASSCODE_VIEW_CONTROLLER"];
    self->_showingSpinner = 0;
  }

  v4 = +[BFFPasscodeCreationManager sharedPasscodeManager];
  passcodeState = [v4 passcodeState];

  if (passcodeState == 4)
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
  view = [(BFFPasscodeViewController *)self view];
  passcodeInputView = [view passcodeInputView];
  passcode = [passcodeInputView passcode];

  passcodeManager = [(BFFPasscodeViewController *)self passcodeManager];
  [passcodeManager transitionToNextPasscodeStateForInput:passcode];
}

- (void)_updateNextButton
{
  view = [(BFFPasscodeViewController *)self view];
  passcodeInputView = [view passcodeInputView];

  passcode = [passcodeInputView passcode];
  [(BFFPasscodeViewController *)self _updateNextButtonForPasscode:passcode];
}

- (void)_updateNextButtonForPasscode:(id)passcode
{
  passcodeCopy = passcode;
  if ([passcodeCopy length])
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v5 = [mEMORY[0x277D262A0] passcode:passcodeCopy meetsCurrentConstraintsOutError:0];
  }

  else
  {
    v5 = 0;
  }

  navigationItem = [(BFFPasscodeViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v5];

  activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
  [activeKeyboard setReturnKeyEnabled:v5];
}

- (BOOL)_allowSkip
{
  passcodeCreationDelegate = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    passcodeCreationDelegate2 = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
    v6 = [passcodeCreationDelegate2 passcodeViewControllerAllowSkip:self];

    return v6;
  }

  else
  {

    return +[BFFPasscodeViewController allowSkip];
  }
}

- (void)passcodeInput:(id)input enteredPasscode:(id)passcode
{
  passcodeCopy = passcode;
  passcodeField = [input passcodeField];
  [passcodeField forceDisplayIfNeeded];

  v8 = dispatch_time(0, 76000000);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__BFFPasscodeViewController_passcodeInput_enteredPasscode___block_invoke;
  v10[3] = &unk_279BB4A70;
  v10[4] = self;
  v11 = passcodeCopy;
  v9 = passcodeCopy;
  dispatch_after(v8, MEMORY[0x277D85CD0], v10);
}

void __59__BFFPasscodeViewController_passcodeInput_enteredPasscode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passcodeManager];
  [v2 transitionToNextPasscodeStateForInput:*(a1 + 40)];
}

- (id)passcodeInputView
{
  passcodeManager = [(BFFPasscodeViewController *)self passcodeManager];
  isSimplePasscodeEntry = [passcodeManager isSimplePasscodeEntry];

  if (isSimplePasscodeEntry)
  {
    v5 = [BFFSimplePasscodeInputView alloc];
    passcodeManager2 = [(BFFPasscodeViewController *)self passcodeManager];
    simplePasscodeEntryLength = [passcodeManager2 simplePasscodeEntryLength];
    v8 = [(BFFSimplePasscodeInputView *)v5 initWithFrame:simplePasscodeEntryLength numberOfEntryFields:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

    [(BFFSimplePasscodeInputView *)v8 setLimitCharactersToNumbers:0];
  }

  else
  {
    v9 = [BFFComplexPasscodeInputView alloc];
    passcodeManager3 = [(BFFPasscodeViewController *)self passcodeManager];
    isNumericPasscodeEntry = [passcodeManager3 isNumericPasscodeEntry];
    v8 = [(BFFComplexPasscodeInputView *)v9 initWithFrame:isNumericPasscodeEntry numericOnly:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  return v8;
}

- (id)_passcodeInputViewForState:(unint64_t)state
{
  passcodeInputView = [(BFFPasscodeViewController *)self passcodeInputView];
  if (state == 3 || !state)
  {
    passcodeOptionAlertController = [(BFFPasscodeViewController *)self passcodeOptionAlertController];
    actions = [passcodeOptionAlertController actions];

    if ([actions count] == 2)
    {
      _allowSkip = [(BFFPasscodeViewController *)self _allowSkip];
      self->_footerButtonIsSkip = _allowSkip;
      if (_allowSkip)
      {
        v9 = @"DO_NOT_ADD_PASSCODE";
        goto LABEL_9;
      }
    }

    else
    {
      self->_footerButtonIsSkip = 0;
    }

    if ([actions count] < 2)
    {
LABEL_10:

      goto LABEL_11;
    }

    v9 = @"PASSCODE_OPTIONS";
LABEL_9:
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:v9 value:&stru_287761F90 table:@"Localizable"];
    [passcodeInputView setFooterButtonText:v11];

    goto LABEL_10;
  }

LABEL_11:
  instructions = [passcodeInputView instructions];
  v13 = [(BFFPasscodeViewController *)self instructionsForState:state];
  [instructions setText:v13];

  return passcodeInputView;
}

- (void)_animatedPasscodeViewTransitionToState:(unint64_t)state animation:(unint64_t)animation
{
  v7 = [(BFFPasscodeViewController *)self _passcodeInputViewForState:state];
  view = [(BFFPasscodeViewController *)self view];
  [view animateTransitionToPasscodeInput:v7 animation:animation];
}

- (void)passcodeManager:(id)manager didTransitionFromState:(unint64_t)state toState:(unint64_t)toState
{
  view = [(BFFPasscodeViewController *)self view];
  v9 = [(BFFPasscodeViewController *)self titleForState:toState];
  [view setTitle:v9];

  if (!toState)
  {
    view2 = [(BFFPasscodeViewController *)self view];
    passcodeInputView = [view2 passcodeInputView];
    [passcodeInputView setPasscode:&stru_287761F90];

    if (state == 1)
    {
      goto LABEL_10;
    }

    selfCopy2 = self;
    toStateCopy = 0;
    v10 = 3;
    goto LABEL_9;
  }

  if ((toState & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (toState == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    selfCopy2 = self;
    toStateCopy = toState;
LABEL_9:
    [(BFFPasscodeViewController *)selfCopy2 _animatedPasscodeViewTransitionToState:toStateCopy animation:v10];
    goto LABEL_10;
  }

  if (toState == 4)
  {
    passcodeManager = [(BFFPasscodeViewController *)self passcodeManager];
    passcode = [passcodeManager passcode];
    [(BFFPasscodeViewController *)self _finishedWithPasscode:passcode];
  }

  else if (toState == 1)
  {
    [(BFFPasscodeViewController *)self _showWeakWarningAlert];
  }

LABEL_10:

  [(BFFPasscodeViewController *)self _updateNextButton];
}

- (void)passcodeManagerWillSetPasscode:(id)passcode
{
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:self identifier:@"SETUP_PASSCODE_VIEW_CONTROLLER"];
  self->_showingSpinner = 1;
  passcodeCreationDelegate = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    passcodeCreationDelegate2 = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
    [passcodeCreationDelegate2 passcodeViewControllerWillSetPasscode:self];
  }
}

- (void)passcodeManager:(id)manager didSetPasscodeWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  managerCopy = manager;
  errorCopy = error;
  if (self->_showingSpinner)
  {
    [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"SETUP_PASSCODE_VIEW_CONTROLLER"];
    self->_showingSpinner = 0;
  }

  if (successCopy)
  {
    passcodeCreationDelegate = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      passcodeCreationDelegate2 = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
      passcode = [managerCopy passcode];
      [passcodeCreationDelegate2 passcodeViewController:self didSetPasscode:passcode];
    }
  }
}

- (void)passcodeInput:(id)input tappedFooterButton:(id)button
{
  if (self->_footerButtonIsSkip)
  {
    [(BFFPasscodeViewController *)self _showSkipPasscodeAlert:input];
  }

  else
  {
    [(BFFPasscodeViewController *)self _showPasscodeOptionsSheet:input];
  }
}

- (void)clear
{
  view = [(BFFPasscodeViewController *)self view];
  [view transitionToPasscodeInput:0 delegate:0];

  passcodeManager = [(BFFPasscodeViewController *)self passcodeManager];
  [passcodeManager setDelegate:0];

  [(BFFPasscodeViewController *)self setPasscodeManager:0];
}

- (void)_finishedWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
  passcodeCreationDelegate = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
  [passcodeCreationDelegate passcodeViewController:self didFinishWithPasscodeCreation:passcodeCopy];
}

- (id)titleForState:(unint64_t)state
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"CREATE_PASSCODE"];
  v5 = [v3 localizedStringForKey:v4 value:&stru_287761F90 table:@"Localizable"];

  return v5;
}

- (id)instructionsForState:(unint64_t)state
{
  if (state == 3)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    constraintInstructions = v7;
    v8 = @"PASSCODES_FAILED_TO_MATCH";
    goto LABEL_9;
  }

  if (state == 2)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    constraintInstructions = v7;
    v8 = @"RE_ENTER_PASSCODE";
LABEL_9:
    _firstEntryInstructions = [(__CFString *)v7 localizedStringForKey:v8 value:&stru_287761F90 table:@"Localizable"];
    goto LABEL_10;
  }

  if (state)
  {
    constraintInstructions = &stru_287761F90;
  }

  else
  {
    passcodeManager = [(BFFPasscodeViewController *)self passcodeManager];
    constraintInstructions = [passcodeManager constraintInstructions];

    if (!constraintInstructions || ![(__CFString *)constraintInstructions length])
    {
      _firstEntryInstructions = [(BFFPasscodeViewController *)self _firstEntryInstructions];
LABEL_10:
      v9 = _firstEntryInstructions;

      constraintInstructions = v9;
    }
  }

  return constraintInstructions;
}

- (id)_firstEntryInstructions
{
  passcodeCreationDelegate = [(BFFPasscodeViewController *)self passcodeCreationDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || (-[BFFPasscodeViewController passcodeCreationDelegate](self, "passcodeCreationDelegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 passcodeViewControllerCustomFirstEntryInstructions:self], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"PASSCODE_DESCRIPTION"];
    v6 = [v7 localizedStringForKey:v8 value:&stru_287761F90 table:@"Localizable"];
  }

  return v6;
}

- (void)configurePasscodeTypeUsingAnimations:(BOOL)animations
{
  animationsCopy = animations;
  passcodeManager = [(BFFPasscodeViewController *)self passcodeManager];
  isSimplePasscodeEntry = [passcodeManager isSimplePasscodeEntry];

  if (isSimplePasscodeEntry)
  {
    navigationItem = [(BFFPasscodeViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:0 animated:animationsCopy];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D751E0]);
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"NEXT" value:&stru_287761F90 table:@"Localizable"];
    navigationItem = [v7 initWithTitle:v9 style:2 target:self action:sel_nextButtonPressed];

    navigationItem2 = [(BFFPasscodeViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:navigationItem animated:animationsCopy];

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
  passcodeManager = [(BFFPasscodeViewController *)self passcodeManager];
  [passcodeManager setPasscodeState:0];
}

- (id)passcodeOptionAlertController
{
  v45[0] = 0;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [mEMORY[0x277D262A0] minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:v45];

  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  passcodeManager = [(BFFPasscodeViewController *)self passcodeManager];
  isNumericPasscodeEntry = [passcodeManager isNumericPasscodeEntry];

  if (isNumericPasscodeEntry)
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
    passcodeManager2 = [(BFFPasscodeViewController *)self passcodeManager];
    if ([passcodeManager2 isNumericPasscodeEntry])
    {
      passcodeManager3 = [(BFFPasscodeViewController *)self passcodeManager];
      simplePasscodeEntryLength = [passcodeManager3 simplePasscodeEntryLength];

      if (simplePasscodeEntryLength < 1)
      {
        if (v4)
        {
          goto LABEL_15;
        }

LABEL_10:
        passcodeManager4 = [(BFFPasscodeViewController *)self passcodeManager];
        simplePasscodeEntryLength2 = [passcodeManager4 simplePasscodeEntryLength];

        if (simplePasscodeEntryLength2 != 6)
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
          passcodeManager5 = [(BFFPasscodeViewController *)self passcodeManager];
          simplePasscodeEntryLength3 = [passcodeManager5 simplePasscodeEntryLength];

          if (simplePasscodeEntryLength3 != 4)
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
  passcodeOptionAlertController = [(BFFPasscodeViewController *)self passcodeOptionAlertController];
  if (BFFIsiPad())
  {
    [passcodeOptionAlertController setModalPresentationStyle:7];
    popoverPresentationController = [passcodeOptionAlertController popoverPresentationController];
    view = [(BFFPasscodeViewController *)self view];
    passcodeInputView = [view passcodeInputView];
    footerButton = [passcodeInputView footerButton];

    [popoverPresentationController setPermittedArrowDirections:2];
    [popoverPresentationController setSourceView:footerButton];
    [footerButton bounds];
    [popoverPresentationController setSourceRect:?];
  }

  [(BFFPasscodeViewController *)self presentViewController:passcodeOptionAlertController animated:1 completion:0];
}

- (BFFPasscodeViewControllerDelegate)passcodeCreationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeCreationDelegate);

  return WeakRetained;
}

@end