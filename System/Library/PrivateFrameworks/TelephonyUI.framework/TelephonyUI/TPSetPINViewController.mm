@interface TPSetPINViewController
- (TPSetPINViewController)init;
- (double)numberPadTopConstraintConstant;
- (void)_cancelButtonTapped;
- (void)_doneButtonTapped;
- (void)_updateDeleteAllowed;
- (void)_updateNavBarButtons;
- (void)_updateStatusLabel;
- (void)_updateUIForStateChange;
- (void)dealloc;
- (void)loadView;
- (void)resetWithErrorPrompt:(id)prompt title:(id)title;
- (void)setPromptTextForConfirmingNewPIN:(id)n;
- (void)setPromptTextForNewPIN:(id)n;
- (void)setPromptTextForOldPIN:(id)n;
- (void)setPromptTextForSavingPIN:(id)n;
- (void)setState:(int)state;
- (void)simpleNumberPad:(id)pad buttonPressedWithCharacter:(id)character;
- (void)simpleNumberPadDeletePressed:(id)pressed;
@end

@implementation TPSetPINViewController

- (TPSetPINViewController)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Please don't call -[PHVoicemailSetupPinViewController init]"];
  NSLog(&cfstr_TuassertionFai.isa, v4);

  if (_TUAssertShouldCrashApplication())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TPSetPINViewController.m" lineNumber:72 description:@"Please don't call -[PHVoicemailSetupPinViewController init]"];
  }

  return 0;
}

- (void)dealloc
{
  [(TPSimpleNumberPad *)self->_numberPad setDelegate:0];
  v3.receiver = self;
  v3.super_class = TPSetPINViewController;
  [(TPSetPINViewController *)&v3 dealloc];
}

- (void)loadView
{
  v42.receiver = self;
  v42.super_class = TPSetPINViewController;
  [(TPSetPINViewController *)&v42 loadView];
  view = [(TPSetPINViewController *)self view];
  dynamicBackgroundColor = [MEMORY[0x1E69DC888] dynamicBackgroundColor];
  [view setBackgroundColor:dynamicBackgroundColor];

  v5 = [TPSetPINKeyPadNumberPad alloc];
  traitCollection = [(TPSetPINViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [(TPSimpleNumberPad *)v5 initWithFrame:userInterfaceStyle style:*MEMORY[0x1E695F058], v9, v10, v11];

  [(TPSetPINKeyPadNumberPad *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v13) = 1148846080;
  [(TPSetPINKeyPadNumberPad *)v12 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [(TPSetPINKeyPadNumberPad *)v12 setContentCompressionResistancePriority:1 forAxis:v14];
  LODWORD(v15) = 1148846080;
  [(TPSetPINKeyPadNumberPad *)v12 setContentHuggingPriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [(TPSetPINKeyPadNumberPad *)v12 setContentHuggingPriority:1 forAxis:v16];
  [(TPSimpleNumberPad *)v12 setDelegate:self];
  [view addSubview:v12];
  [(TPSetPINViewController *)self setNumberPad:v12];
  v17 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
  [v17 setNumberOfLines:2];
  [v17 setTextAlignment:1];
  v18 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
  [v17 setFont:v18];

  dynamicLabelColor = [MEMORY[0x1E69DC888] dynamicLabelColor];
  [v17 setTextColor:dynamicLabelColor];

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v20) = 1132068864;
  [v17 setContentCompressionResistancePriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v21];
  [view addSubview:v17];
  [(TPSetPINViewController *)self setStatusLabel:v17];
  v22 = [[TPPasscodeView alloc] initWithFrame:v8, v9, v10, v11];
  [(TPPasscodeView *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v23) = 1148846080;
  [(TPPasscodeView *)v22 setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [(TPPasscodeView *)v22 setContentCompressionResistancePriority:1 forAxis:v24];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [(TPPasscodeView *)v22 setBackgroundColor:blackColor];

  [view addSubview:v22];
  [(TPSetPINViewController *)self setPasscodeView:v22];
  v26 = [MEMORY[0x1E696ACD8] constraintWithItem:v17 attribute:9 relatedBy:0 toItem:view attribute:9 multiplier:1.0 constant:0.0];
  [view addConstraint:v26];

  v27 = [MEMORY[0x1E696ACD8] constraintWithItem:v17 attribute:5 relatedBy:1 toItem:view attribute:5 multiplier:1.0 constant:27.0];
  [view addConstraint:v27];

  v28 = [MEMORY[0x1E696ACD8] constraintWithItem:v17 attribute:6 relatedBy:-1 toItem:view attribute:6 multiplier:1.0 constant:-27.0];
  [view addConstraint:v28];

  v29 = MEMORY[0x1E696ACD8];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  isUserInterfaceIdiomPad = [mainScreen isUserInterfaceIdiomPad];
  v33 = 79.0;
  if (!isUserInterfaceIdiomPad)
  {
    v33 = 109.0;
  }

  LODWORD(v32) = 1144750080;
  v34 = [v29 constraintWithItem:v17 attribute:10 relatedBy:0 toItem:view attribute:3 multiplier:1.0 constant:v33 priority:v32];
  [view addConstraint:v34];

  v35 = [MEMORY[0x1E696ACD8] constraintWithItem:v22 attribute:9 relatedBy:0 toItem:view attribute:9 multiplier:1.0 constant:0.0];
  [view addConstraint:v35];

  LODWORD(v36) = 1148846080;
  v37 = [MEMORY[0x1E696ACD8] constraintWithItem:v22 attribute:3 relatedBy:0 toItem:v17 attribute:11 multiplier:1.0 constant:14.0 priority:v36];
  [view addConstraint:v37];

  v38 = [MEMORY[0x1E696ACD8] constraintWithItem:v12 attribute:9 relatedBy:0 toItem:view attribute:9 multiplier:1.0 constant:0.0];
  [view addConstraint:v38];

  v39 = MEMORY[0x1E696ACD8];
  [(TPSetPINViewController *)self numberPadTopConstraintConstant];
  v41 = [v39 constraintWithItem:v12 attribute:3 relatedBy:0 toItem:v22 attribute:4 multiplier:1.0 constant:v40];
  [view addConstraint:v41];

  [(TPSetPINViewController *)self setState:[(TPSetPINViewController *)self initialState]];
  [(TPSetPINViewController *)self _updateUIForStateChange];
}

- (double)numberPadTopConstraintConstant
{
  result = *&numberPadTopConstraintConstant_topConstraintConstant;
  if (*&numberPadTopConstraintConstant_topConstraintConstant == 0.0)
  {
    numberPadTopConstraintConstant_topConstraintConstant = 0x404E000000000000;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    if ([mainScreen screenSizeCategory] == 1)
    {

LABEL_5:
      numberPadTopConstraintConstant_topConstraintConstant = 0x4034000000000000;
      return 20.0;
    }

    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    isUserInterfaceIdiomPad = [mainScreen2 isUserInterfaceIdiomPad];

    if (isUserInterfaceIdiomPad)
    {
      goto LABEL_5;
    }

    return *&numberPadTopConstraintConstant_topConstraintConstant;
  }

  return result;
}

- (void)resetWithErrorPrompt:(id)prompt title:(id)title
{
  promptCopy = prompt;
  titleCopy = title;
  v8 = titleCopy;
  if (promptCopy)
  {
    v9 = MEMORY[0x1E69DC650];
    if ([titleCopy length])
    {
      v10 = [v9 alertControllerWithTitle:v8 message:promptCopy preferredStyle:1];
    }

    else
    {
      v11 = TelephonyUIBundle();
      v12 = [v11 localizedStringForKey:@"ERROR" value:&stru_1F2CA8008 table:@"General"];
      v10 = [v9 alertControllerWithTitle:v12 message:promptCopy preferredStyle:1];
    }

    v13 = MEMORY[0x1E69DC648];
    v14 = TelephonyUIBundle();
    v15 = [v14 localizedStringForKey:@"OK" value:&stru_1F2CA8008 table:@"General"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__TPSetPINViewController_resetWithErrorPrompt_title___block_invoke;
    v17[3] = &unk_1E7C0C5A8;
    v17[4] = self;
    v16 = [v13 actionWithTitle:v15 style:0 handler:v17];
    [v10 addAction:v16];

    [(TPSetPINViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    [(TPSetPINViewController *)self setState:[(TPSetPINViewController *)self initialState]];
  }
}

uint64_t __53__TPSetPINViewController_resetWithErrorPrompt_title___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) initialState];
  v3 = *(a1 + 32);

  return [v3 setState:v2];
}

- (void)setPromptTextForOldPIN:(id)n
{
  nCopy = n;
  if (!nCopy || ([(TPSetPINViewController *)self promptTextForOldPIN], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    promptTextForOldPIN = [(TPSetPINViewController *)self promptTextForOldPIN];
    v6 = [promptTextForOldPIN isEqualToString:nCopy] ^ 1;

    if (!nCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_6:
  promptTextForOldPIN = self->_promptTextForOldPIN;
  self->_promptTextForOldPIN = nCopy;

  if (v6)
  {

    [(TPSetPINViewController *)self _updateStatusLabel];
  }
}

- (void)setPromptTextForNewPIN:(id)n
{
  nCopy = n;
  if (!nCopy || ([(TPSetPINViewController *)self promptTextForNewPIN], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    promptTextForNewPIN = [(TPSetPINViewController *)self promptTextForNewPIN];
    v6 = [promptTextForNewPIN isEqualToString:nCopy] ^ 1;

    if (!nCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_6:
  promptTextForNewPIN = self->_promptTextForNewPIN;
  self->_promptTextForNewPIN = nCopy;

  if (v6)
  {

    [(TPSetPINViewController *)self _updateStatusLabel];
  }
}

- (void)setPromptTextForConfirmingNewPIN:(id)n
{
  nCopy = n;
  if (!nCopy || ([(TPSetPINViewController *)self promptTextForConfirmingNewPIN], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    promptTextForConfirmingNewPIN = [(TPSetPINViewController *)self promptTextForConfirmingNewPIN];
    v6 = [promptTextForConfirmingNewPIN isEqualToString:nCopy] ^ 1;

    if (!nCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_6:
  promptTextForConfirmingNewPIN = self->_promptTextForConfirmingNewPIN;
  self->_promptTextForConfirmingNewPIN = nCopy;

  if (v6)
  {

    [(TPSetPINViewController *)self _updateStatusLabel];
  }
}

- (void)setPromptTextForSavingPIN:(id)n
{
  nCopy = n;
  if (!nCopy || ([(TPSetPINViewController *)self promptTextForSavingPIN], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    promptTextForSavingPIN = [(TPSetPINViewController *)self promptTextForSavingPIN];
    v6 = [promptTextForSavingPIN isEqualToString:nCopy] ^ 1;

    if (!nCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_6:
  promptTextForSavingPIN = self->_promptTextForSavingPIN;
  self->_promptTextForSavingPIN = nCopy;

  if (v6)
  {

    [(TPSetPINViewController *)self _updateStatusLabel];
  }
}

- (void)_doneButtonTapped
{
  state = [(TPSetPINViewController *)self state];
  if (state == 2)
  {
    passcodeView = [(TPSetPINViewController *)self passcodeView];
    passcodeString = [passcodeView passcodeString];

    unconfirmedPIN = [(TPSetPINViewController *)self unconfirmedPIN];
    v13 = [passcodeString isEqualToString:unconfirmedPIN];

    if (v13)
    {
      [(TPSetPINViewController *)self setState:3];
      delegate = [(TPSetPINViewController *)self delegate];

      if (!delegate)
      {
        goto LABEL_19;
      }

      delegate2 = [(TPSetPINViewController *)self delegate];
      oldPIN = [(TPSetPINViewController *)self oldPIN];
      unconfirmedPIN2 = [(TPSetPINViewController *)self unconfirmedPIN];
      [delegate2 setPINViewControllerFinished:self success:1 oldPIN:oldPIN newPIN:unconfirmedPIN2];
    }

    else
    {
      delegate2 = TelephonyUIBundle();
      oldPIN = [delegate2 localizedStringForKey:@"MISMATCH" value:&stru_1F2CA8008 table:@"General"];
      unconfirmedPIN2 = TelephonyUIBundle();
      v19 = [unconfirmedPIN2 localizedStringForKey:@"ERROR" value:&stru_1F2CA8008 table:@"General"];
      [(TPSetPINViewController *)self resetWithErrorPrompt:oldPIN title:v19];
    }

    goto LABEL_18;
  }

  if (state != 1)
  {
    if (state)
    {
      return;
    }

    passcodeView2 = [(TPSetPINViewController *)self passcodeView];
    passcodeString2 = [passcodeView2 passcodeString];
    [(TPSetPINViewController *)self setOldPIN:passcodeString2];

    selfCopy2 = self;
    v7 = 1;
    goto LABEL_7;
  }

  confirmPIN = [(TPSetPINViewController *)self confirmPIN];
  passcodeView3 = [(TPSetPINViewController *)self passcodeView];
  passcodeString3 = [passcodeView3 passcodeString];
  passcodeString = passcodeString3;
  if (confirmPIN)
  {
    [(TPSetPINViewController *)self setUnconfirmedPIN:passcodeString3];

    selfCopy2 = self;
    v7 = 2;
LABEL_7:

    [(TPSetPINViewController *)selfCopy2 setState:v7];
    return;
  }

  [(TPSetPINViewController *)self setState:3];
  delegate3 = [(TPSetPINViewController *)self delegate];

  if (delegate3)
  {
    delegate2 = [(TPSetPINViewController *)self delegate];
    oldPIN = [(TPSetPINViewController *)self oldPIN];
    [delegate2 setPINViewControllerFinished:self success:1 oldPIN:oldPIN newPIN:passcodeString];
LABEL_18:
  }

LABEL_19:
}

- (void)_cancelButtonTapped
{
  delegate = [(TPSetPINViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(TPSetPINViewController *)self delegate];
    [delegate2 setPINViewControllerFinished:self success:0 oldPIN:0 newPIN:0];
  }
}

- (void)simpleNumberPad:(id)pad buttonPressedWithCharacter:(id)character
{
  characterCopy = character;
  passcodeView = [(TPSetPINViewController *)self passcodeView];
  passcodeString = [passcodeView passcodeString];
  v7 = [passcodeString length];
  maxPINLength = [(TPSetPINViewController *)self maxPINLength];

  if (v7 < maxPINLength)
  {
    passcodeView2 = [(TPSetPINViewController *)self passcodeView];
    [passcodeView2 appendCharacter:characterCopy];

    [(TPSetPINViewController *)self _updateDeleteAllowed];
    [(TPSetPINViewController *)self _updateNavBarButtons];
  }

  numberPad = [(TPSetPINViewController *)self numberPad];
  passcodeView3 = [(TPSetPINViewController *)self passcodeView];
  passcodeString2 = [passcodeView3 passcodeString];
  [numberPad setNumberButtonsEnabled:{objc_msgSend(passcodeString2, "length") < -[TPSetPINViewController maxPINLength](self, "maxPINLength")}];
}

- (void)simpleNumberPadDeletePressed:(id)pressed
{
  passcodeView = [(TPSetPINViewController *)self passcodeView];
  [passcodeView deleteLastCharacter];

  numberPad = [(TPSetPINViewController *)self numberPad];
  passcodeView2 = [(TPSetPINViewController *)self passcodeView];
  passcodeString = [passcodeView2 passcodeString];
  [numberPad setNumberButtonsEnabled:{objc_msgSend(passcodeString, "length") < -[TPSetPINViewController maxPINLength](self, "maxPINLength")}];

  [(TPSetPINViewController *)self _updateDeleteAllowed];

  [(TPSetPINViewController *)self _updateNavBarButtons];
}

- (void)setState:(int)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(TPSetPINViewController *)self _updateUIForStateChange];
  }
}

- (void)_updateDeleteAllowed
{
  passcodeView = [(TPSetPINViewController *)self passcodeView];
  passcodeString = [passcodeView passcodeString];
  v4 = [passcodeString length] != 0;
  numberPad = [(TPSetPINViewController *)self numberPad];
  [numberPad setShowsDeleteButton:v4];
}

- (void)_updateNavBarButtons
{
  passcodeView = [(TPSetPINViewController *)self passcodeView];
  passcodeString = [passcodeView passcodeString];
  v5 = [passcodeString length];
  v6 = v5 >= [(TPSetPINViewController *)self minPINLength];
  navigationItem = [(TPSetPINViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v6];

  v9 = [(TPSetPINViewController *)self state]!= 3;
  navigationItem2 = [(TPSetPINViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem2 leftBarButtonItem];
  [leftBarButtonItem setEnabled:v9];
}

- (void)_updateStatusLabel
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateUIForStateChange
{
  passcodeView = [(TPSetPINViewController *)self passcodeView];
  [passcodeView clear];

  numberPad = [(TPSetPINViewController *)self numberPad];
  [numberPad setNumberButtonsEnabled:1];

  [(TPSetPINViewController *)self _updateDeleteAllowed];
  [(TPSetPINViewController *)self _updateNavBarButtons];

  [(TPSetPINViewController *)self _updateStatusLabel];
}

@end