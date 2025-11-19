@interface SBUIPasscodeTextField
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (void)_disableAutomaticAppearance;
- (void)_enableAutomaticAppearance;
- (void)_handleKeyUIEvent:(id)a3;
- (void)dealloc;
@end

@implementation SBUIPasscodeTextField

- (BOOL)becomeFirstResponder
{
  if (!self->_showsSystemKeyboard)
  {
    v3 = [MEMORY[0x1E69DD2E8] keyWindow];
    v4 = [v3 firstResponder];
    self->_previousResponderRequiresKeyboard = [v4 _requiresKeyboardWhenFirstResponder];

    [(SBUIPasscodeTextField *)self _disableAutomaticAppearance];
  }

  v7.receiver = self;
  v7.super_class = SBUIPasscodeTextField;
  v5 = [(SBUIPasscodeTextField *)&v7 becomeFirstResponder];
  if (!v5 && !self->_showsSystemKeyboard)
  {
    [(SBUIPasscodeTextField *)self _enableAutomaticAppearance];
  }

  return v5;
}

- (void)_disableAutomaticAppearance
{
  if (self->_previousResponderRequiresKeyboard)
  {
    v3 = [MEMORY[0x1E69DCD68] sharedInstance];
    v4 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [v3 _preserveInputViewsWithId:v4 animated:1];
  }

  v5 = +[SBUIKeyboardEnablementManager sharedInstance];
  [v5 disableAutomaticAppearanceForContext:self];
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = SBUIPasscodeTextField;
  v3 = [(SBUIPasscodeTextField *)&v5 resignFirstResponder];
  if (v3 && !self->_showsSystemKeyboard)
  {
    [(SBUIPasscodeTextField *)self _enableAutomaticAppearance];
  }

  return v3;
}

- (void)_enableAutomaticAppearance
{
  v3 = +[SBUIKeyboardEnablementManager sharedInstance];
  [v3 enableAutomaticAppearanceForContext:self];

  if (self->_previousResponderRequiresKeyboard)
  {
    v5 = [MEMORY[0x1E69DCD68] sharedInstance];
    v4 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [v5 _restoreInputViewsWithId:v4 animated:1];
  }
}

- (void)dealloc
{
  [(SBUIPasscodeTextField *)self _enableAutomaticAppearance];
  v3.receiver = self;
  v3.super_class = SBUIPasscodeTextField;
  [(SBUIPasscodeTextField *)&v3 dealloc];
}

- (void)_handleKeyUIEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  if (![v4 _hidEvent])
  {
    [v5 _isKeyDown];
LABEL_9:
    v10.receiver = self;
    v10.super_class = SBUIPasscodeTextField;
    [(SBUIPasscodeTextField *)&v10 _handleKeyUIEvent:v5];
    goto LABEL_10;
  }

  v6 = BKSHIDEventGetBaseAttributes();
  v7 = [v6 source];

  if (![v5 _isKeyDown] || (v7 & 0xFFFFFFFD) != 1)
  {
    goto LABEL_9;
  }

  v8 = [v5 _modifiedInput];
  if (([v8 isEqualToString:@"\r"] & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", @"\n"))
  {

    goto LABEL_9;
  }

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:@"SBUIHardwareKeyboardReturnKeyPressedNotification" object:self];

LABEL_10:
}

@end