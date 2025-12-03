@interface SBUIPasscodeEntryField
- (BOOL)_hasAnyCharacters;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)shouldInsertPasscodeText:(id)text;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (CGSize)_viewSize;
- (SBUIPasscodeEntryField)initWithDefaultSizeAndLightStyle:(BOOL)style;
- (SBUIPasscodeEntryFieldDelegate)delegate;
- (void)_appendString:(id)string;
- (void)_autofillForBiometricAuthenticationWithCompletion:(id)completion;
- (void)_deleteLastCharacter;
- (void)_resetForFailedPasscode:(BOOL)passcode;
- (void)appendString:(id)string;
- (void)notePasscodeFieldDidAcceptEntry;
- (void)notePasscodeFieldTextDidChange;
- (void)reset;
- (void)setFont:(id)font;
- (void)setStringValue:(id)value;
- (void)textFieldDidResignFirstResponder:(id)responder;
@end

@implementation SBUIPasscodeEntryField

- (BOOL)isFirstResponder
{
  if ([objc_opt_class() _usesTextFieldForFirstResponder])
  {
    textField = self->_textField;

    return [(SBUIPasscodeTextField *)textField isFirstResponder];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBUIPasscodeEntryField;
    return [(SBUIPasscodeEntryField *)&v5 isFirstResponder];
  }
}

- (BOOL)becomeFirstResponder
{
  delegate = [(SBUIPasscodeEntryField *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate passcodeEntryFieldShouldShowSystemKeyboard:self];
  }

  else
  {
    v4 = 0;
  }

  [(SBUIPasscodeTextField *)self->_textField setShowsSystemKeyboard:v4];
  if ([objc_opt_class() _usesTextFieldForFirstResponder])
  {
    if (![(SBUIPasscodeEntryField *)self canBecomeFirstResponder])
    {
      v6 = 0;
      goto LABEL_10;
    }

    becomeFirstResponder = [(SBUIPasscodeTextField *)self->_textField becomeFirstResponder];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBUIPasscodeEntryField;
    becomeFirstResponder = [(SBUIPasscodeEntryField *)&v8 becomeFirstResponder];
  }

  v6 = becomeFirstResponder;
LABEL_10:

  return v6;
}

- (SBUIPasscodeEntryFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)canBecomeFirstResponder
{
  if ([objc_opt_class() _usesTextFieldForFirstResponder])
  {
    if (self->_resigningFirstResponder)
    {
      return 0;
    }

    else
    {
      textField = self->_textField;

      return [(SBUIPasscodeTextField *)textField canBecomeFirstResponder];
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBUIPasscodeEntryField;
    return [(SBUIPasscodeEntryField *)&v5 canBecomeFirstResponder];
  }
}

- (BOOL)resignFirstResponder
{
  if ([objc_opt_class() _usesTextFieldForFirstResponder])
  {
    self->_resigningFirstResponder = 1;
    result = [(SBUIPasscodeTextField *)self->_textField resignFirstResponder];
    self->_resigningFirstResponder = 0;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBUIPasscodeEntryField;
    return [(SBUIPasscodeEntryField *)&v4 resignFirstResponder];
  }

  return result;
}

- (void)reset
{
  self->_ignoreCallbacks = 1;
  stringValue = [(SBUIPasscodeEntryField *)self stringValue];
  v4 = [stringValue length];

  [(SBUIPasscodeTextField *)self->_textField setText:0];
  self->_ignoreCallbacks = 0;
  if (v4)
  {

    [(SBUIPasscodeEntryField *)self notePasscodeFieldTextDidChange];
  }
}

- (SBUIPasscodeEntryField)initWithDefaultSizeAndLightStyle:(BOOL)style
{
  v24.receiver = self;
  v24.super_class = SBUIPasscodeEntryField;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = [(SBUIPasscodeEntryField *)&v24 initWithFrame:*MEMORY[0x1E695F058], v5, *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    [(SBUIPasscodeEntryField *)v6 _viewSize];
    v9 = v8;
    v11 = v10;
    [(SBUIPasscodeEntryField *)v7 setFrame:v4, v5, v8, v10];
    v12 = [[SBUIPasscodeTextField alloc] initWithFrame:v4, v5, v9, v11];
    textField = v7->_textField;
    v7->_textField = v12;

    [(SBUIPasscodeTextField *)v7->_textField setBorderStyle:3];
    v14 = v7->_textField;
    if (style)
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v16 = 0;
    }

    else
    {
      blackColor = [MEMORY[0x1E69DC888] whiteColor];
      v16 = 127;
    }

    [(SBUIPasscodeTextField *)v14 setTextColor:blackColor];

    [(SBUIPasscodeTextField *)v7->_textField setSecureTextEntry:1];
    [(SBUIPasscodeTextField *)v7->_textField setUndoEnabled:0];
    [(SBUIPasscodeTextField *)v7->_textField setHidden:0];
    [(SBUIPasscodeTextField *)v7->_textField setAlpha:1.0];
    [(SBUIPasscodeTextField *)v7->_textField setDelegate:v7];
    [(SBUIPasscodeTextField *)v7->_textField setKeyboardAppearance:v16];
    v17 = v7->_textField;
    if (style)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v18 = ;
    [(SBUIPasscodeTextField *)v17 setInsertionPointColor:v18];

    v19 = v7->_textField;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SBUIPasscodeTextField *)v19 setBackgroundColor:clearColor];

    [(SBUIPasscodeEntryField *)v7 addSubview:v7->_textField];
    textInputTraits = [(SBUIPasscodeTextField *)v7->_textField textInputTraits];
    if (style)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v22 = ;
    [textInputTraits setInsertionPointColor:v22];

    [textInputTraits setKeyboardType:0];
    [textInputTraits setKeyboardAppearance:v16];
    [textInputTraits setAutocorrectionType:1];
    [textInputTraits setTextLoupeVisibility:1];
    [textInputTraits setShortcutConversionType:1];
    [textInputTraits setLearnsCorrections:0];
    [textInputTraits setSecureTextEntry:1];
    [textInputTraits setDevicePasscodeEntry:1];
    [textInputTraits setDisableInputBars:1];
    [(SBUIPasscodeEntryField *)v7 setUserInteractionEnabled:1];
  }

  return v7;
}

- (void)setFont:(id)font
{
  [(SBUIPasscodeTextField *)self->_textField setFont:font];

  [(SBUIPasscodeEntryField *)self setNeedsLayout];
}

- (void)appendString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy)
  {
    v6 = stringCopy;
    stringCopy = [(SBUIPasscodeEntryField *)self shouldInsertPasscodeText:stringCopy];
    v5 = v6;
    if (stringCopy)
    {
      stringCopy = [(SBUIPasscodeEntryField *)self _appendString:v6];
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](stringCopy, v5);
}

- (void)setStringValue:(id)value
{
  textField = self->_textField;
  valueCopy = value;
  [(SBUIPasscodeTextField *)textField setText:0];
  [(SBUIPasscodeEntryField *)self appendString:valueCopy];
}

- (void)_appendString:(id)string
{
  [(SBUIPasscodeTextField *)self->_textField insertText:string];

  [(SBUIPasscodeEntryField *)self notePasscodeFieldTextDidChange];
}

- (void)_deleteLastCharacter
{
  [(SBUIPasscodeTextField *)self->_textField deleteBackward];

  [(SBUIPasscodeEntryField *)self notePasscodeFieldTextDidChange];
}

- (BOOL)_hasAnyCharacters
{
  _textField = [(SBUIPasscodeEntryField *)self _textField];
  text = [_textField text];
  v4 = [text length] != 0;

  return v4;
}

- (void)_resetForFailedPasscode:(BOOL)passcode
{
  if (passcode)
  {
    [(SBUIPasscodeEntryField *)self reset];
  }
}

- (CGSize)_viewSize
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_autofillForBiometricAuthenticationWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (BOOL)shouldInsertPasscodeText:(id)text
{
  textCopy = text;
  if (self->_ignoreCallbacks)
  {
    v5 = 0;
  }

  else
  {
    delegate = [(SBUIPasscodeEntryField *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [delegate passcodeEntryField:self shouldInsertText:textCopy];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)notePasscodeFieldTextDidChange
{
  if (!self->_ignoreCallbacks)
  {
    delegate = [(SBUIPasscodeEntryField *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate passcodeEntryFieldTextDidChange:self];
    }
  }
}

- (void)notePasscodeFieldDidAcceptEntry
{
  if (!self->_ignoreCallbacks)
  {
    delegate = [(SBUIPasscodeEntryField *)self delegate];
    stringValue = [(SBUIPasscodeEntryField *)self stringValue];
    v5 = [stringValue length];

    if ((objc_opt_respondsToSelector() & 1) == 0 || v5)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && v5)
      {
        [delegate passcodeEntryFieldDidAcceptEntry:self];
      }
    }

    else
    {
      [delegate passcodeEntryFieldDidCancelEntry:self];
    }
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  stringValue = [(SBUIPasscodeEntryField *)self stringValue];
  v10 = [stringValue length];
  v11 = [stringCopy length];
  if (v11 && location == v10 && !length)
  {
    [(SBUIPasscodeEntryField *)self appendString:stringCopy];
  }

  else if (!v11 && location == v10 - 1 && length == 1)
  {
    [(SBUIPasscodeEntryField *)self deleteLastCharacter];
  }

  return 0;
}

- (void)textFieldDidResignFirstResponder:(id)responder
{
  delegate = [(SBUIPasscodeEntryField *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passcodeEntryFieldDidResignFirstResponder:self];
  }
}

@end