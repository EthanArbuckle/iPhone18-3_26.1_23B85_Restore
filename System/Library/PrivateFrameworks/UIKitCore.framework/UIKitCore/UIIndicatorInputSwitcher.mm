@interface UIIndicatorInputSwitcher
- (BOOL)isVisibleOrHiding;
- (BOOL)switchMode:(id)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5;
- (void)dismissSwitcher:(BOOL)a3;
- (void)dismissSwitcherWithDelay:(double)a3;
@end

@implementation UIIndicatorInputSwitcher

- (BOOL)isVisibleOrHiding
{
  v2 = [(UIIndicatorInputSwitcher *)self inputModeSelectorAssertion];
  v3 = v2 != 0;

  return v3;
}

- (void)dismissSwitcher:(BOOL)a3
{
  v4 = [(UIIndicatorInputSwitcher *)self inputModeSelectorAssertion];
  [v4 invalidate];

  [(UIIndicatorInputSwitcher *)self setInputModeSelectorAssertion:0];
  v5 = [(UIIndicatorInputSwitcher *)self inputModeAssertion];
  [v5 invalidate];

  [(UIIndicatorInputSwitcher *)self setInputModeAssertion:0];
}

- (void)dismissSwitcherWithDelay:(double)a3
{
  self->super.super.m_state = 0;
  v4 = dispatch_time(0, (a3 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__UIIndicatorInputSwitcher_dismissSwitcherWithDelay___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

- (BOOL)switchMode:(id)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5
{
  v5 = a4;
  v26[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  [(UIInlineInputSwitcher *)self updateInputModes:v7 withHUD:v5];
  v8 = [(UIInlineInputSwitcher *)self availableInputModes];
  v9 = [v8 count];

  if (!v9)
  {
    goto LABEL_15;
  }

  [(UIInputSwitcher *)self setLoadedIdentifier:v7];
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
  v11 = [(UIIndicatorInputSwitcher *)self inputModeAssertion];

  if (!v11)
  {
    v12 = +[UIKeyboardImpl activeInstance];
    v13 = [v12 _activeAssertionController];
    v14 = [v13 activeInputModeAssertionWithReason:@"UIInputSwitcher"];
    [(UIIndicatorInputSwitcher *)self setInputModeAssertion:v14];
  }

  v15 = [(UIIndicatorInputSwitcher *)self inputModeSelectorAssertion];
  if (v15)
  {
  }

  else if (![(UIInputSwitcher *)self showsLanguageIndicatorOnly])
  {
    v16 = +[UIDictationController isRunning];
    v17 = +[UIKeyboardImpl activeInstance];
    v18 = [v17 _activeAssertionController];
    v25[0] = @"_UITextCursorKeyboardIndicatorUserInfoKey";
    v19 = [MEMORY[0x1E696AD98] numberWithBool:v16];
    v25[1] = @"_UITextCursorInputModeSwitcherUserInfoKey";
    v26[0] = v19;
    v26[1] = MEMORY[0x1E695E118];
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v21 = [v18 inputModeSelectorAssertionWithReason:@"UIInputSwticher" userInfo:v20];
    [(UIIndicatorInputSwitcher *)self setInputModeSelectorAssertion:v21];
  }

  v22 = +[UIKeyboardImpl activeInstance];
  v23 = [v22 _activeAssertionController];
  [v23 _updateSubjectWithAssertionState];

LABEL_15:
  return v9 != 0;
}

@end