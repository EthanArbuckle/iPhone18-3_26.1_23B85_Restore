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
- (void)resetWithErrorPrompt:(id)a3 title:(id)a4;
- (void)setPromptTextForConfirmingNewPIN:(id)a3;
- (void)setPromptTextForNewPIN:(id)a3;
- (void)setPromptTextForOldPIN:(id)a3;
- (void)setPromptTextForSavingPIN:(id)a3;
- (void)setState:(int)a3;
- (void)simpleNumberPad:(id)a3 buttonPressedWithCharacter:(id)a4;
- (void)simpleNumberPadDeletePressed:(id)a3;
@end

@implementation TPSetPINViewController

- (TPSetPINViewController)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Please don't call -[PHVoicemailSetupPinViewController init]"];
  NSLog(&cfstr_TuassertionFai.isa, v4);

  if (_TUAssertShouldCrashApplication())
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"TPSetPINViewController.m" lineNumber:72 description:@"Please don't call -[PHVoicemailSetupPinViewController init]"];
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
  v3 = [(TPSetPINViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] dynamicBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [TPSetPINKeyPadNumberPad alloc];
  v6 = [(TPSetPINViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [(TPSimpleNumberPad *)v5 initWithFrame:v7 style:*MEMORY[0x1E695F058], v9, v10, v11];

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
  [v3 addSubview:v12];
  [(TPSetPINViewController *)self setNumberPad:v12];
  v17 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
  [v17 setNumberOfLines:2];
  [v17 setTextAlignment:1];
  v18 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
  [v17 setFont:v18];

  v19 = [MEMORY[0x1E69DC888] dynamicLabelColor];
  [v17 setTextColor:v19];

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v20) = 1132068864;
  [v17 setContentCompressionResistancePriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v21];
  [v3 addSubview:v17];
  [(TPSetPINViewController *)self setStatusLabel:v17];
  v22 = [[TPPasscodeView alloc] initWithFrame:v8, v9, v10, v11];
  [(TPPasscodeView *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v23) = 1148846080;
  [(TPPasscodeView *)v22 setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [(TPPasscodeView *)v22 setContentCompressionResistancePriority:1 forAxis:v24];
  v25 = [MEMORY[0x1E69DC888] blackColor];
  [(TPPasscodeView *)v22 setBackgroundColor:v25];

  [v3 addSubview:v22];
  [(TPSetPINViewController *)self setPasscodeView:v22];
  v26 = [MEMORY[0x1E696ACD8] constraintWithItem:v17 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v26];

  v27 = [MEMORY[0x1E696ACD8] constraintWithItem:v17 attribute:5 relatedBy:1 toItem:v3 attribute:5 multiplier:1.0 constant:27.0];
  [v3 addConstraint:v27];

  v28 = [MEMORY[0x1E696ACD8] constraintWithItem:v17 attribute:6 relatedBy:-1 toItem:v3 attribute:6 multiplier:1.0 constant:-27.0];
  [v3 addConstraint:v28];

  v29 = MEMORY[0x1E696ACD8];
  v30 = [MEMORY[0x1E69DCEB0] mainScreen];
  v31 = [v30 isUserInterfaceIdiomPad];
  v33 = 79.0;
  if (!v31)
  {
    v33 = 109.0;
  }

  LODWORD(v32) = 1144750080;
  v34 = [v29 constraintWithItem:v17 attribute:10 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:v33 priority:v32];
  [v3 addConstraint:v34];

  v35 = [MEMORY[0x1E696ACD8] constraintWithItem:v22 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v35];

  LODWORD(v36) = 1148846080;
  v37 = [MEMORY[0x1E696ACD8] constraintWithItem:v22 attribute:3 relatedBy:0 toItem:v17 attribute:11 multiplier:1.0 constant:14.0 priority:v36];
  [v3 addConstraint:v37];

  v38 = [MEMORY[0x1E696ACD8] constraintWithItem:v12 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v38];

  v39 = MEMORY[0x1E696ACD8];
  [(TPSetPINViewController *)self numberPadTopConstraintConstant];
  v41 = [v39 constraintWithItem:v12 attribute:3 relatedBy:0 toItem:v22 attribute:4 multiplier:1.0 constant:v40];
  [v3 addConstraint:v41];

  [(TPSetPINViewController *)self setState:[(TPSetPINViewController *)self initialState]];
  [(TPSetPINViewController *)self _updateUIForStateChange];
}

- (double)numberPadTopConstraintConstant
{
  result = *&numberPadTopConstraintConstant_topConstraintConstant;
  if (*&numberPadTopConstraintConstant_topConstraintConstant == 0.0)
  {
    numberPadTopConstraintConstant_topConstraintConstant = 0x404E000000000000;
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    if ([v3 screenSizeCategory] == 1)
    {

LABEL_5:
      numberPadTopConstraintConstant_topConstraintConstant = 0x4034000000000000;
      return 20.0;
    }

    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    v5 = [v4 isUserInterfaceIdiomPad];

    if (v5)
    {
      goto LABEL_5;
    }

    return *&numberPadTopConstraintConstant_topConstraintConstant;
  }

  return result;
}

- (void)resetWithErrorPrompt:(id)a3 title:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = MEMORY[0x1E69DC650];
    if ([v7 length])
    {
      v10 = [v9 alertControllerWithTitle:v8 message:v6 preferredStyle:1];
    }

    else
    {
      v11 = TelephonyUIBundle();
      v12 = [v11 localizedStringForKey:@"ERROR" value:&stru_1F2CA8008 table:@"General"];
      v10 = [v9 alertControllerWithTitle:v12 message:v6 preferredStyle:1];
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

- (void)setPromptTextForOldPIN:(id)a3
{
  v5 = a3;
  if (!v5 || ([(TPSetPINViewController *)self promptTextForOldPIN], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(TPSetPINViewController *)self promptTextForOldPIN];
    v6 = [v7 isEqualToString:v5] ^ 1;

    if (!v5)
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
  self->_promptTextForOldPIN = v5;

  if (v6)
  {

    [(TPSetPINViewController *)self _updateStatusLabel];
  }
}

- (void)setPromptTextForNewPIN:(id)a3
{
  v5 = a3;
  if (!v5 || ([(TPSetPINViewController *)self promptTextForNewPIN], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(TPSetPINViewController *)self promptTextForNewPIN];
    v6 = [v7 isEqualToString:v5] ^ 1;

    if (!v5)
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
  self->_promptTextForNewPIN = v5;

  if (v6)
  {

    [(TPSetPINViewController *)self _updateStatusLabel];
  }
}

- (void)setPromptTextForConfirmingNewPIN:(id)a3
{
  v5 = a3;
  if (!v5 || ([(TPSetPINViewController *)self promptTextForConfirmingNewPIN], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(TPSetPINViewController *)self promptTextForConfirmingNewPIN];
    v6 = [v7 isEqualToString:v5] ^ 1;

    if (!v5)
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
  self->_promptTextForConfirmingNewPIN = v5;

  if (v6)
  {

    [(TPSetPINViewController *)self _updateStatusLabel];
  }
}

- (void)setPromptTextForSavingPIN:(id)a3
{
  v5 = a3;
  if (!v5 || ([(TPSetPINViewController *)self promptTextForSavingPIN], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(TPSetPINViewController *)self promptTextForSavingPIN];
    v6 = [v7 isEqualToString:v5] ^ 1;

    if (!v5)
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
  self->_promptTextForSavingPIN = v5;

  if (v6)
  {

    [(TPSetPINViewController *)self _updateStatusLabel];
  }
}

- (void)_doneButtonTapped
{
  v3 = [(TPSetPINViewController *)self state];
  if (v3 == 2)
  {
    v11 = [(TPSetPINViewController *)self passcodeView];
    v20 = [v11 passcodeString];

    v12 = [(TPSetPINViewController *)self unconfirmedPIN];
    v13 = [v20 isEqualToString:v12];

    if (v13)
    {
      [(TPSetPINViewController *)self setState:3];
      v14 = [(TPSetPINViewController *)self delegate];

      if (!v14)
      {
        goto LABEL_19;
      }

      v15 = [(TPSetPINViewController *)self delegate];
      v16 = [(TPSetPINViewController *)self oldPIN];
      v17 = [(TPSetPINViewController *)self unconfirmedPIN];
      [v15 setPINViewControllerFinished:self success:1 oldPIN:v16 newPIN:v17];
    }

    else
    {
      v15 = TelephonyUIBundle();
      v16 = [v15 localizedStringForKey:@"MISMATCH" value:&stru_1F2CA8008 table:@"General"];
      v17 = TelephonyUIBundle();
      v19 = [v17 localizedStringForKey:@"ERROR" value:&stru_1F2CA8008 table:@"General"];
      [(TPSetPINViewController *)self resetWithErrorPrompt:v16 title:v19];
    }

    goto LABEL_18;
  }

  if (v3 != 1)
  {
    if (v3)
    {
      return;
    }

    v4 = [(TPSetPINViewController *)self passcodeView];
    v5 = [v4 passcodeString];
    [(TPSetPINViewController *)self setOldPIN:v5];

    v6 = self;
    v7 = 1;
    goto LABEL_7;
  }

  v8 = [(TPSetPINViewController *)self confirmPIN];
  v9 = [(TPSetPINViewController *)self passcodeView];
  v10 = [v9 passcodeString];
  v20 = v10;
  if (v8)
  {
    [(TPSetPINViewController *)self setUnconfirmedPIN:v10];

    v6 = self;
    v7 = 2;
LABEL_7:

    [(TPSetPINViewController *)v6 setState:v7];
    return;
  }

  [(TPSetPINViewController *)self setState:3];
  v18 = [(TPSetPINViewController *)self delegate];

  if (v18)
  {
    v15 = [(TPSetPINViewController *)self delegate];
    v16 = [(TPSetPINViewController *)self oldPIN];
    [v15 setPINViewControllerFinished:self success:1 oldPIN:v16 newPIN:v20];
LABEL_18:
  }

LABEL_19:
}

- (void)_cancelButtonTapped
{
  v3 = [(TPSetPINViewController *)self delegate];

  if (v3)
  {
    v4 = [(TPSetPINViewController *)self delegate];
    [v4 setPINViewControllerFinished:self success:0 oldPIN:0 newPIN:0];
  }
}

- (void)simpleNumberPad:(id)a3 buttonPressedWithCharacter:(id)a4
{
  v13 = a4;
  v5 = [(TPSetPINViewController *)self passcodeView];
  v6 = [v5 passcodeString];
  v7 = [v6 length];
  v8 = [(TPSetPINViewController *)self maxPINLength];

  if (v7 < v8)
  {
    v9 = [(TPSetPINViewController *)self passcodeView];
    [v9 appendCharacter:v13];

    [(TPSetPINViewController *)self _updateDeleteAllowed];
    [(TPSetPINViewController *)self _updateNavBarButtons];
  }

  v10 = [(TPSetPINViewController *)self numberPad];
  v11 = [(TPSetPINViewController *)self passcodeView];
  v12 = [v11 passcodeString];
  [v10 setNumberButtonsEnabled:{objc_msgSend(v12, "length") < -[TPSetPINViewController maxPINLength](self, "maxPINLength")}];
}

- (void)simpleNumberPadDeletePressed:(id)a3
{
  v4 = [(TPSetPINViewController *)self passcodeView];
  [v4 deleteLastCharacter];

  v5 = [(TPSetPINViewController *)self numberPad];
  v6 = [(TPSetPINViewController *)self passcodeView];
  v7 = [v6 passcodeString];
  [v5 setNumberButtonsEnabled:{objc_msgSend(v7, "length") < -[TPSetPINViewController maxPINLength](self, "maxPINLength")}];

  [(TPSetPINViewController *)self _updateDeleteAllowed];

  [(TPSetPINViewController *)self _updateNavBarButtons];
}

- (void)setState:(int)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(TPSetPINViewController *)self _updateUIForStateChange];
  }
}

- (void)_updateDeleteAllowed
{
  v6 = [(TPSetPINViewController *)self passcodeView];
  v3 = [v6 passcodeString];
  v4 = [v3 length] != 0;
  v5 = [(TPSetPINViewController *)self numberPad];
  [v5 setShowsDeleteButton:v4];
}

- (void)_updateNavBarButtons
{
  v3 = [(TPSetPINViewController *)self passcodeView];
  v4 = [v3 passcodeString];
  v5 = [v4 length];
  v6 = v5 >= [(TPSetPINViewController *)self minPINLength];
  v7 = [(TPSetPINViewController *)self navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setEnabled:v6];

  v9 = [(TPSetPINViewController *)self state]!= 3;
  v11 = [(TPSetPINViewController *)self navigationItem];
  v10 = [v11 leftBarButtonItem];
  [v10 setEnabled:v9];
}

- (void)_updateStatusLabel
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateUIForStateChange
{
  v3 = [(TPSetPINViewController *)self passcodeView];
  [v3 clear];

  v4 = [(TPSetPINViewController *)self numberPad];
  [v4 setNumberButtonsEnabled:1];

  [(TPSetPINViewController *)self _updateDeleteAllowed];
  [(TPSetPINViewController *)self _updateNavBarButtons];

  [(TPSetPINViewController *)self _updateStatusLabel];
}

@end