@interface SBUIPasscodeTextField
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (void)_disableAutomaticAppearance;
- (void)_enableAutomaticAppearance;
- (void)_handleKeyUIEvent:(id)event;
- (void)dealloc;
@end

@implementation SBUIPasscodeTextField

- (BOOL)becomeFirstResponder
{
  if (!self->_showsSystemKeyboard)
  {
    keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
    firstResponder = [keyWindow firstResponder];
    self->_previousResponderRequiresKeyboard = [firstResponder _requiresKeyboardWhenFirstResponder];

    [(SBUIPasscodeTextField *)self _disableAutomaticAppearance];
  }

  v7.receiver = self;
  v7.super_class = SBUIPasscodeTextField;
  becomeFirstResponder = [(SBUIPasscodeTextField *)&v7 becomeFirstResponder];
  if (!becomeFirstResponder && !self->_showsSystemKeyboard)
  {
    [(SBUIPasscodeTextField *)self _enableAutomaticAppearance];
  }

  return becomeFirstResponder;
}

- (void)_disableAutomaticAppearance
{
  if (self->_previousResponderRequiresKeyboard)
  {
    mEMORY[0x1E69DCD68] = [MEMORY[0x1E69DCD68] sharedInstance];
    v4 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [mEMORY[0x1E69DCD68] _preserveInputViewsWithId:v4 animated:1];
  }

  v5 = +[SBUIKeyboardEnablementManager sharedInstance];
  [v5 disableAutomaticAppearanceForContext:self];
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = SBUIPasscodeTextField;
  resignFirstResponder = [(SBUIPasscodeTextField *)&v5 resignFirstResponder];
  if (resignFirstResponder && !self->_showsSystemKeyboard)
  {
    [(SBUIPasscodeTextField *)self _enableAutomaticAppearance];
  }

  return resignFirstResponder;
}

- (void)_enableAutomaticAppearance
{
  v3 = +[SBUIKeyboardEnablementManager sharedInstance];
  [v3 enableAutomaticAppearanceForContext:self];

  if (self->_previousResponderRequiresKeyboard)
  {
    mEMORY[0x1E69DCD68] = [MEMORY[0x1E69DCD68] sharedInstance];
    v4 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [mEMORY[0x1E69DCD68] _restoreInputViewsWithId:v4 animated:1];
  }
}

- (void)dealloc
{
  [(SBUIPasscodeTextField *)self _enableAutomaticAppearance];
  v3.receiver = self;
  v3.super_class = SBUIPasscodeTextField;
  [(SBUIPasscodeTextField *)&v3 dealloc];
}

- (void)_handleKeyUIEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (!eventCopy)
  {
    goto LABEL_9;
  }

  if (![eventCopy _hidEvent])
  {
    [v5 _isKeyDown];
LABEL_9:
    v10.receiver = self;
    v10.super_class = SBUIPasscodeTextField;
    [(SBUIPasscodeTextField *)&v10 _handleKeyUIEvent:v5];
    goto LABEL_10;
  }

  v6 = BKSHIDEventGetBaseAttributes();
  source = [v6 source];

  if (![v5 _isKeyDown] || (source & 0xFFFFFFFD) != 1)
  {
    goto LABEL_9;
  }

  _modifiedInput = [v5 _modifiedInput];
  if (([_modifiedInput isEqualToString:@"\r"] & 1) == 0 && !objc_msgSend(_modifiedInput, "isEqualToString:", @"\n"))
  {

    goto LABEL_9;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SBUIHardwareKeyboardReturnKeyPressedNotification" object:self];

LABEL_10:
}

@end