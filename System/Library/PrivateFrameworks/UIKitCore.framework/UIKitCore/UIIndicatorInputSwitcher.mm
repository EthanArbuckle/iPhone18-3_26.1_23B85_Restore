@interface UIIndicatorInputSwitcher
- (BOOL)isVisibleOrHiding;
- (BOOL)switchMode:(id)mode withHUD:(BOOL)d withDelay:(BOOL)delay;
- (void)dismissSwitcher:(BOOL)switcher;
- (void)dismissSwitcherWithDelay:(double)delay;
@end

@implementation UIIndicatorInputSwitcher

- (BOOL)isVisibleOrHiding
{
  inputModeSelectorAssertion = [(UIIndicatorInputSwitcher *)self inputModeSelectorAssertion];
  v3 = inputModeSelectorAssertion != 0;

  return v3;
}

- (void)dismissSwitcher:(BOOL)switcher
{
  inputModeSelectorAssertion = [(UIIndicatorInputSwitcher *)self inputModeSelectorAssertion];
  [inputModeSelectorAssertion invalidate];

  [(UIIndicatorInputSwitcher *)self setInputModeSelectorAssertion:0];
  inputModeAssertion = [(UIIndicatorInputSwitcher *)self inputModeAssertion];
  [inputModeAssertion invalidate];

  [(UIIndicatorInputSwitcher *)self setInputModeAssertion:0];
}

- (void)dismissSwitcherWithDelay:(double)delay
{
  self->super.super.m_state = 0;
  v4 = dispatch_time(0, (delay * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__UIIndicatorInputSwitcher_dismissSwitcherWithDelay___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

- (BOOL)switchMode:(id)mode withHUD:(BOOL)d withDelay:(BOOL)delay
{
  dCopy = d;
  v26[2] = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  [(UIInlineInputSwitcher *)self updateInputModes:modeCopy withHUD:dCopy];
  availableInputModes = [(UIInlineInputSwitcher *)self availableInputModes];
  v9 = [availableInputModes count];

  if (!v9)
  {
    goto LABEL_15;
  }

  [(UIInputSwitcher *)self setLoadedIdentifier:modeCopy];
  m_state = self->super.super.m_state;
  if (m_state != 2)
  {
    if (m_state != 1)
    {
      if (!m_state)
      {
        [(UIInputSwitcher *)self touchShowSwitcherTimer];
        self->super.super.m_state = 1;
      }

      goto LABEL_8;
    }

    self->super.super.m_state = 2;
  }

  [(UIInputSwitcher *)self cancelShowSwitcherTimer];
LABEL_8:
  inputModeAssertion = [(UIIndicatorInputSwitcher *)self inputModeAssertion];

  if (!inputModeAssertion)
  {
    v12 = +[UIKeyboardImpl activeInstance];
    _activeAssertionController = [v12 _activeAssertionController];
    v14 = [_activeAssertionController activeInputModeAssertionWithReason:@"UIInputSwitcher"];
    [(UIIndicatorInputSwitcher *)self setInputModeAssertion:v14];
  }

  inputModeSelectorAssertion = [(UIIndicatorInputSwitcher *)self inputModeSelectorAssertion];
  if (inputModeSelectorAssertion)
  {
  }

  else if (![(UIInputSwitcher *)self showsLanguageIndicatorOnly])
  {
    v16 = +[UIDictationController isRunning];
    v17 = +[UIKeyboardImpl activeInstance];
    _activeAssertionController2 = [v17 _activeAssertionController];
    v25[0] = @"_UITextCursorKeyboardIndicatorUserInfoKey";
    v19 = [MEMORY[0x1E696AD98] numberWithBool:v16];
    v25[1] = @"_UITextCursorInputModeSwitcherUserInfoKey";
    v26[0] = v19;
    v26[1] = MEMORY[0x1E695E118];
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v21 = [_activeAssertionController2 inputModeSelectorAssertionWithReason:@"UIInputSwticher" userInfo:v20];
    [(UIIndicatorInputSwitcher *)self setInputModeSelectorAssertion:v21];
  }

  v22 = +[UIKeyboardImpl activeInstance];
  _activeAssertionController3 = [v22 _activeAssertionController];
  [_activeAssertionController3 _updateSubjectWithAssertionState];

LABEL_15:
  return v9 != 0;
}

@end