@interface PKNewDevicePasscodeViewController
- (PKNewDevicePasscodeViewController)initWithContext:(int64_t)context minimumPasscodeLength:(int64_t)length currentPasscode:(id)passcode delegate:(id)delegate;
- (id)_instructionsForState:(unint64_t)state;
- (id)_passcodeInputViewForPasscodeInputState:(unint64_t)state passcodeInputScreenType:(unint64_t)type;
- (id)_passcodeOptionAlertController;
- (id)_titleForState:(unint64_t)state;
- (unint64_t)_passcodeInputScreenTypeForUnlockScreenType:(int)type;
- (void)_applyPasscode;
- (void)_configureNavigationItemForPasscodeInputScreenType:(unint64_t)type animated:(BOOL)animated;
- (void)_handleTransitionFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)_nextButtonPressed;
- (void)_setNavigationBarEnabled:(BOOL)enabled;
- (void)_setPasscodeInputState:(unint64_t)state forceUpdate:(BOOL)update;
- (void)_transitionToNextStateForPasscodeInput:(id)input;
- (void)_transitionToPasscodeInputScreenType:(unint64_t)type;
- (void)_updateNextButton;
- (void)_updateNextButtonForPasscode:(id)passcode;
- (void)loadView;
- (void)passcodeInput:(id)input enteredPasscode:(id)passcode;
- (void)passcodeInput:(id)input tappedFooterButton:(id)button;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKNewDevicePasscodeViewController

- (PKNewDevicePasscodeViewController)initWithContext:(int64_t)context minimumPasscodeLength:(int64_t)length currentPasscode:(id)passcode delegate:(id)delegate
{
  passcodeCopy = passcode;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = PKNewDevicePasscodeViewController;
  v12 = [(PKNewDevicePasscodeViewController *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_context = context;
    v12->_minimumPasscodeLength = length;
    pk_zString = [passcodeCopy pk_zString];
    currentPasscode = v13->_currentPasscode;
    v13->_currentPasscode = pk_zString;

    v13->_passcodeInputState = 0;
    objc_storeWeak(&v13->_delegate, delegateCopy);
    if ((_UISolariumEnabled() & 1) == 0)
    {
      navigationItem = [(PKNewDevicePasscodeViewController *)v13 navigationItem];
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v13->_paymentService;
    v13->_paymentService = paymentService;
  }

  return v13;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKNewDevicePasscodeViewController;
  [(PKNewDevicePasscodeViewController *)&v5 loadView];
  v3 = [objc_alloc(getBFFPasscodeViewClass[0]()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  passcodeView = self->_passcodeView;
  self->_passcodeView = v3;

  [(BFFPasscodeView *)self->_passcodeView setAutoresizingMask:18];
  [(BFFPasscodeView *)self->_passcodeView setPasscodeViewController:self];
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts]&& (PKPaymentSetupContextIsSetupAssistant() & 1) == 0)
  {
    [(BFFPasscodeView *)self->_passcodeView setScrollEnabled:0];
  }

  [(PKNewDevicePasscodeViewController *)self setView:self->_passcodeView];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PKNewDevicePasscodeViewController;
  [(PKNewDevicePasscodeViewController *)&v9 viewDidLoad];
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v4 = [mEMORY[0x1E69ADFB8] minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:0];

  v5 = [(PKNewDevicePasscodeViewController *)self _passcodeInputScreenTypeForUnlockScreenType:v4];
  self->_passcodeInputScreenType = v5;
  [(PKNewDevicePasscodeViewController *)self _configureNavigationItemForPasscodeInputScreenType:v5 animated:0];
  passcodeView = self->_passcodeView;
  v7 = [(PKNewDevicePasscodeViewController *)self _titleForState:self->_passcodeInputState];
  [(BFFPasscodeView *)passcodeView setTitle:v7];

  v8 = [(PKNewDevicePasscodeViewController *)self _passcodeInputViewForPasscodeInputState:self->_passcodeInputState passcodeInputScreenType:self->_passcodeInputScreenType];
  [(BFFPasscodeView *)self->_passcodeView transitionToPasscodeInput:v8 delegate:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PKNewDevicePasscodeViewController;
  [(PKNewDevicePasscodeViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKNewDevicePasscodeViewController;
  [(PKNewDevicePasscodeViewController *)&v6 viewDidAppear:appear];
  passcodeInputView = [(BFFPasscodeView *)self->_passcodeView passcodeInputView];
  [passcodeInputView becomeFirstResponder];
  passcode = [passcodeInputView passcode];
  [(PKNewDevicePasscodeViewController *)self _updateNextButtonForPasscode:passcode];

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PKNewDevicePasscodeViewController;
  [(PKNewDevicePasscodeViewController *)&v5 viewWillDisappear:disappear];
  passcodeInputView = [(BFFPasscodeView *)self->_passcodeView passcodeInputView];
  [passcodeInputView resignFirstResponder];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PKNewDevicePasscodeViewController;
  [(PKNewDevicePasscodeViewController *)&v6 viewDidDisappear:disappear];
  [(BFFPasscodeView *)self->_passcodeView transitionToPasscodeInput:0 delegate:0];
  currentPasscode = self->_currentPasscode;
  self->_currentPasscode = 0;

  newPasscode = self->_newPasscode;
  self->_newPasscode = 0;
}

- (void)passcodeInput:(id)input enteredPasscode:(id)passcode
{
  passcodeCopy = passcode;
  passcodeField = [input passcodeField];
  [passcodeField forceDisplayIfNeeded];

  v8 = dispatch_time(0, 76000000);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__PKNewDevicePasscodeViewController_passcodeInput_enteredPasscode___block_invoke;
  v10[3] = &unk_1E8010A10;
  v10[4] = self;
  v11 = passcodeCopy;
  v9 = passcodeCopy;
  dispatch_after(v8, MEMORY[0x1E69E96A0], v10);
}

void __67__PKNewDevicePasscodeViewController_passcodeInput_enteredPasscode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) pk_zString];
  [v1 _transitionToNextStateForPasscodeInput:v2];
}

- (void)passcodeInput:(id)input tappedFooterButton:(id)button
{
  v8 = [(PKNewDevicePasscodeViewController *)self _passcodeOptionAlertController:input];
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts]|| _UISolariumFeatureFlagEnabled())
  {
    if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      [v8 setModalPresentationStyle:7];
    }

    popoverPresentationController = [v8 popoverPresentationController];
    passcodeInputView = [(BFFPasscodeView *)self->_passcodeView passcodeInputView];
    footerButton = [passcodeInputView footerButton];

    [popoverPresentationController setPermittedArrowDirections:2];
    [popoverPresentationController setSourceView:footerButton];
    [footerButton bounds];
    [popoverPresentationController setSourceRect:?];
  }

  [(PKNewDevicePasscodeViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)_nextButtonPressed
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  passcodeInputView = [(BFFPasscodeView *)self->_passcodeView passcodeInputView];
  passcode = [passcodeInputView passcode];
  pk_zString = [passcode pk_zString];

  [(PKNewDevicePasscodeViewController *)self _transitionToNextStateForPasscodeInput:pk_zString];
}

- (void)_updateNextButton
{
  passcodeInputView = [(BFFPasscodeView *)self->_passcodeView passcodeInputView];
  passcode = [passcodeInputView passcode];
  [(PKNewDevicePasscodeViewController *)self _updateNextButtonForPasscode:passcode];
}

- (void)_updateNextButtonForPasscode:(id)passcode
{
  passcodeCopy = passcode;
  if ([passcodeCopy length] >= self->_minimumPasscodeLength)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    v4 = [mEMORY[0x1E69ADFB8] passcode:passcodeCopy meetsCurrentConstraintsOutError:0];
  }

  else
  {
    v4 = 0;
  }

  navigationItem = [(PKNewDevicePasscodeViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v4];

  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  [activeKeyboard setReturnKeyEnabled:v4];
}

- (void)_transitionToNextStateForPasscodeInput:(id)input
{
  inputCopy = input;
  v6 = inputCopy;
  passcodeInputState = self->_passcodeInputState;
  switch(passcodeInputState)
  {
    case 2uLL:
      goto LABEL_4;
    case 1uLL:
      if (![(NSString *)self->_newPasscode isEqualToString:inputCopy])
      {
        passcodeInputState = 2;
        break;
      }

      v8 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v8];
      navigationItem = [(PKNewDevicePasscodeViewController *)self navigationItem];
      [navigationItem setRightBarButtonItem:v12];

      [v8 startAnimating];
      [(PKNewDevicePasscodeViewController *)self _setNavigationBarEnabled:0];
      [(PKNewDevicePasscodeViewController *)self _applyPasscode];

      goto LABEL_12;
    case 0uLL:
LABEL_4:
      if ([inputCopy length] < self->_minimumPasscodeLength)
      {
        v8 = 0;
        goto LABEL_6;
      }

      mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
      v21 = 0;
      v15 = [mEMORY[0x1E69ADFB8] passcode:v6 meetsCurrentConstraintsOutError:&v21];
      v8 = v21;

      if (!v15)
      {
        if (v8)
        {
          domain = [v8 domain];
          v18 = [domain isEqualToString:*MEMORY[0x1E69ADFA8]];

          if (v18)
          {
            localizedDescription = [v8 localizedDescription];
            constraintFailedInstructions = self->_constraintFailedInstructions;
            self->_constraintFailedInstructions = localizedDescription;

            goto LABEL_7;
          }
        }

LABEL_6:
        mEMORY[0x1E69ADFB8]2 = [MEMORY[0x1E69ADFB8] sharedConnection];
        localizedDescriptionOfCurrentPasscodeConstraints = [mEMORY[0x1E69ADFB8]2 localizedDescriptionOfCurrentPasscodeConstraints];
        v11 = self->_constraintFailedInstructions;
        self->_constraintFailedInstructions = localizedDescriptionOfCurrentPasscodeConstraints;

LABEL_7:
        passcodeInputState = 0;
        break;
      }

      objc_storeStrong(&self->_newPasscode, input);
      v16 = self->_constraintFailedInstructions;
      self->_constraintFailedInstructions = 0;

LABEL_12:
      passcodeInputState = 1;
      break;
  }

  [(PKNewDevicePasscodeViewController *)self _setPasscodeInputState:passcodeInputState forceUpdate:0];
}

- (void)_handleTransitionFromState:(unint64_t)state toState:(unint64_t)toState
{
  passcodeView = self->_passcodeView;
  v7 = [(PKNewDevicePasscodeViewController *)self _titleForState:toState];
  [(BFFPasscodeView *)passcodeView setTitle:v7];

  if (!toState)
  {
    passcodeInputView = [(BFFPasscodeView *)self->_passcodeView passcodeInputView];
    [passcodeInputView setPasscode:&stru_1F3BD7330];

    v15 = self->_passcodeView;
    navigationItem = [(PKNewDevicePasscodeViewController *)self _passcodeInputViewForPasscodeInputState:0 passcodeInputScreenType:self->_passcodeInputScreenType];
    v11 = v15;
    v12 = navigationItem;
    v13 = 3;
LABEL_8:
    [(BFFPasscodeView *)v11 animateTransitionToPasscodeInput:v12 animation:v13];
LABEL_9:

    goto LABEL_10;
  }

  if (toState <= 2)
  {
    if (toState == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = self->_passcodeView;
    navigationItem = [(PKNewDevicePasscodeViewController *)self _passcodeInputViewForPasscodeInputState:toState passcodeInputScreenType:self->_passcodeInputScreenType];
    v11 = v9;
    v12 = navigationItem;
    v13 = v8;
    goto LABEL_8;
  }

  if (toState == 3)
  {
    navigationItem = [(PKNewDevicePasscodeViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:0];
    goto LABEL_9;
  }

LABEL_10:

  [(PKNewDevicePasscodeViewController *)self _updateNextButton];
}

- (void)_setPasscodeInputState:(unint64_t)state forceUpdate:(BOOL)update
{
  passcodeInputState = self->_passcodeInputState;
  self->_passcodeInputState = state;
  if (passcodeInputState != state || update)
  {
    [PKNewDevicePasscodeViewController _handleTransitionFromState:"_handleTransitionFromState:toState:" toState:?];
  }
}

- (id)_passcodeInputViewForPasscodeInputState:(unint64_t)state passcodeInputScreenType:(unint64_t)type
{
  if (type)
  {
    v6 = [objc_alloc(off_1EE9A1C90[0]()) initWithFrame:type == 1 numericOnly:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  else
  {
    v6 = [objc_alloc(_MergedGlobals_3_8[0]()) initWithFrame:6 numberOfEntryFields:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  v7 = v6;
  if ((state & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    _passcodeOptionAlertController = [(PKNewDevicePasscodeViewController *)self _passcodeOptionAlertController];
    actions = [_passcodeOptionAlertController actions];

    if ([actions count] >= 2)
    {
      v10 = PKLocalizedPaymentString(&cfstr_PasscodeUpgrad_2.isa);
      [v7 setFooterButtonText:v10];
    }
  }

  instructions = [v7 instructions];
  v12 = [(PKNewDevicePasscodeViewController *)self _instructionsForState:self->_passcodeInputState];
  [instructions setText:v12];

  return v7;
}

- (void)_configureNavigationItemForPasscodeInputScreenType:(unint64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  if (type)
  {
    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = PKLocalizedPaymentString(&cfstr_PasscodeUpgrad_3.isa);
    navigationItem2 = [v6 initWithTitle:v7 style:2 target:self action:sel__nextButtonPressed];

    navigationItem = [(PKNewDevicePasscodeViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:navigationItem2 animated:animatedCopy];

    [(PKNewDevicePasscodeViewController *)self _updateNextButton];
  }

  else
  {
    navigationItem2 = [(PKNewDevicePasscodeViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0 animated:animatedCopy];
  }
}

- (id)_passcodeOptionAlertController
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v4 = [mEMORY[0x1E69ADFB8] minimumNewPasscodeEntryScreenTypeWithOutSimplePasscodeType:0];

  v5 = [(PKNewDevicePasscodeViewController *)self _passcodeInputScreenTypeForUnlockScreenType:v4];
  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  if (v5)
  {
    if (v5 > 2)
    {
      goto LABEL_11;
    }
  }

  else if (self->_passcodeInputScreenType)
  {
    v7 = MEMORY[0x1E69DC648];
    v8 = PKLocalizedPaymentString(&cfstr_PasscodeUpgrad_4.isa);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __67__PKNewDevicePasscodeViewController__passcodeOptionAlertController__block_invoke;
    v22[3] = &unk_1E80112E8;
    v22[4] = self;
    v9 = [v7 actionWithTitle:v8 style:0 handler:v22];
    [v6 addAction:v9];
  }

  if (self->_passcodeInputScreenType != 2)
  {
    v10 = MEMORY[0x1E69DC648];
    v11 = PKLocalizedPaymentString(&cfstr_PasscodeUpgrad_5.isa);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __67__PKNewDevicePasscodeViewController__passcodeOptionAlertController__block_invoke_2;
    v21[3] = &unk_1E80112E8;
    v21[4] = self;
    v12 = [v10 actionWithTitle:v11 style:0 handler:v21];
    [v6 addAction:v12];
  }

  if (v5 <= 1 && self->_passcodeInputScreenType != 1)
  {
    v13 = MEMORY[0x1E69DC648];
    v14 = PKLocalizedPaymentString(&cfstr_PasscodeUpgrad_6.isa);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67__PKNewDevicePasscodeViewController__passcodeOptionAlertController__block_invoke_3;
    v20[3] = &unk_1E80112E8;
    v20[4] = self;
    v15 = [v13 actionWithTitle:v14 style:0 handler:v20];
    [v6 addAction:v15];
  }

LABEL_11:
  v16 = MEMORY[0x1E69DC648];
  v17 = PKLocalizedPaymentString(&cfstr_PasscodeUpgrad_7.isa);
  v18 = [v16 actionWithTitle:v17 style:1 handler:0];
  [v6 addAction:v18];

  return v6;
}

- (void)_transitionToPasscodeInputScreenType:(unint64_t)type
{
  if (self->_passcodeInputScreenType != type)
  {
    self->_passcodeInputScreenType = type;
    [PKNewDevicePasscodeViewController _configureNavigationItemForPasscodeInputScreenType:"_configureNavigationItemForPasscodeInputScreenType:animated:" animated:?];

    [(PKNewDevicePasscodeViewController *)self _setPasscodeInputState:0 forceUpdate:1];
  }
}

- (void)_applyPasscode
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  block[6] = MEMORY[0x1E69E9820];
  block[7] = 3221225472;
  block[8] = __51__PKNewDevicePasscodeViewController__applyPasscode__block_invoke;
  block[9] = &unk_1E8011A18;
  block[10] = v5;
  v6 = PKBeginBackgroundTask();
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PKNewDevicePasscodeViewController__applyPasscode__block_invoke_2;
  block[3] = &unk_1E80153C8;
  block[4] = self;
  block[5] = v5;
  dispatch_async(v3, block);

  _Block_object_dispose(v5, 8);
}

uint64_t __51__PKNewDevicePasscodeViewController__applyPasscode__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69BB788];
  if (result != *MEMORY[0x1E69BB788])
  {
    result = PKEndBackgroundTask();
    *(*(*(a1 + 32) + 8) + 24) = v3;
  }

  return result;
}

uint64_t __51__PKNewDevicePasscodeViewController__applyPasscode__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 32);
  v3 = v2[133];
  v4 = v2[129];
  v5 = v2[130];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PKNewDevicePasscodeViewController__applyPasscode__block_invoke_3;
  v7[3] = &unk_1E80153A0;
  v8 = v1;
  return [v3 changePasscodeFrom:v4 toPasscode:v5 completion:v7];
}

void __51__PKNewDevicePasscodeViewController__applyPasscode__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PKNewDevicePasscodeViewController__applyPasscode__block_invoke_4;
  v8[3] = &unk_1E8015378;
  v11 = a2;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __51__PKNewDevicePasscodeViewController__applyPasscode__block_invoke_4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
    [v2 saveDeviceUnlockPasscodeInputModes];
  }

  [*(a1 + 32) _setPasscodeInputState:3 forceUpdate:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1024));
  [WeakRetained newDevicePasscodeViewController:*(a1 + 32) didFinishSettingPasscode:*(a1 + 56) withError:*(a1 + 40)];

  result = *(*(*(a1 + 48) + 8) + 24);
  if (result != *MEMORY[0x1E69BB788])
  {

    return PKEndBackgroundTask();
  }

  return result;
}

- (void)_setNavigationBarEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationController = [(PKNewDevicePasscodeViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setUserInteractionEnabled:enabledCopy];

  interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:enabledCopy];

  navigationItem = [(PKNewDevicePasscodeViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:enabledCopy];

  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:enabledCopy];
}

- (unint64_t)_passcodeInputScreenTypeForUnlockScreenType:(int)type
{
  if (type == 2)
  {
    return 2;
  }

  if (type == 1)
  {
    return 1;
  }

  if (type)
  {
    return 0;
  }

  return self->_minimumPasscodeLength > 6;
}

- (id)_titleForState:(unint64_t)state
{
  if (state <= 3)
  {
    self = PKLocalizedPaymentString(&off_1E80153E8[state]->isa);
  }

  return self;
}

- (id)_instructionsForState:(unint64_t)state
{
  if (state == 2)
  {
    v5 = @"PASSCODE_UPGRADE_PASSCODES_FAILED_TO_MATCH";
    goto LABEL_8;
  }

  if (state == 1)
  {
    v5 = @"PASSCODE_UPGRADE_RE_ENTER_PASSCODE";
LABEL_8:
    v4 = PKLocalizedPaymentString(&v5->isa);
    goto LABEL_9;
  }

  if (state)
  {
    v6 = &stru_1F3BD7330;
  }

  else
  {
    if ([(NSString *)self->_constraintFailedInstructions length])
    {
      v4 = self->_constraintFailedInstructions;
LABEL_9:
      v6 = v4;
      goto LABEL_12;
    }

    v7 = MEMORY[0x1E696ADA0];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_minimumPasscodeLength];
    v9 = [v7 localizedStringFromNumber:v8 numberStyle:5];

    v10 = PKDeviceSpecificLocalizedStringKeyForKey(@"PASSCODE_UPGRADE_REQUIRED_BODY", 0);
    v6 = PKLocalizedPaymentString(v10, &stru_1F3BD5BF0.isa, v9);
  }

LABEL_12:

  return v6;
}

@end