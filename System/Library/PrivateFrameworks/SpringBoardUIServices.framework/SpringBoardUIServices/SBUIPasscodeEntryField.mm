@interface SBUIPasscodeEntryField
- (BOOL)_hasAnyCharacters;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)shouldInsertPasscodeText:(id)a3;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (CGSize)_viewSize;
- (SBUIPasscodeEntryField)initWithDefaultSizeAndLightStyle:(BOOL)a3;
- (SBUIPasscodeEntryFieldDelegate)delegate;
- (void)_appendString:(id)a3;
- (void)_autofillForBiometricAuthenticationWithCompletion:(id)a3;
- (void)_deleteLastCharacter;
- (void)_resetForFailedPasscode:(BOOL)a3;
- (void)appendString:(id)a3;
- (void)notePasscodeFieldDidAcceptEntry;
- (void)notePasscodeFieldTextDidChange;
- (void)reset;
- (void)setFont:(id)a3;
- (void)setStringValue:(id)a3;
- (void)textFieldDidResignFirstResponder:(id)a3;
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
  v3 = [(SBUIPasscodeEntryField *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 passcodeEntryFieldShouldShowSystemKeyboard:self];
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

    v5 = [(SBUIPasscodeTextField *)self->_textField becomeFirstResponder];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBUIPasscodeEntryField;
    v5 = [(SBUIPasscodeEntryField *)&v8 becomeFirstResponder];
  }

  v6 = v5;
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
  v3 = [(SBUIPasscodeEntryField *)self stringValue];
  v4 = [v3 length];

  [(SBUIPasscodeTextField *)self->_textField setText:0];
  self->_ignoreCallbacks = 0;
  if (v4)
  {

    [(SBUIPasscodeEntryField *)self notePasscodeFieldTextDidChange];
  }
}

- (SBUIPasscodeEntryField)initWithDefaultSizeAndLightStyle:(BOOL)a3
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
    if (a3)
    {
      v15 = [MEMORY[0x1E69DC888] blackColor];
      v16 = 0;
    }

    else
    {
      v15 = [MEMORY[0x1E69DC888] whiteColor];
      v16 = 127;
    }

    [(SBUIPasscodeTextField *)v14 setTextColor:v15];

    [(SBUIPasscodeTextField *)v7->_textField setSecureTextEntry:1];
    [(SBUIPasscodeTextField *)v7->_textField setUndoEnabled:0];
    [(SBUIPasscodeTextField *)v7->_textField setHidden:0];
    [(SBUIPasscodeTextField *)v7->_textField setAlpha:1.0];
    [(SBUIPasscodeTextField *)v7->_textField setDelegate:v7];
    [(SBUIPasscodeTextField *)v7->_textField setKeyboardAppearance:v16];
    v17 = v7->_textField;
    if (a3)
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
    v20 = [MEMORY[0x1E69DC888] clearColor];
    [(SBUIPasscodeTextField *)v19 setBackgroundColor:v20];

    [(SBUIPasscodeEntryField *)v7 addSubview:v7->_textField];
    v21 = [(SBUIPasscodeTextField *)v7->_textField textInputTraits];
    if (a3)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v22 = ;
    [v21 setInsertionPointColor:v22];

    [v21 setKeyboardType:0];
    [v21 setKeyboardAppearance:v16];
    [v21 setAutocorrectionType:1];
    [v21 setTextLoupeVisibility:1];
    [v21 setShortcutConversionType:1];
    [v21 setLearnsCorrections:0];
    [v21 setSecureTextEntry:1];
    [v21 setDevicePasscodeEntry:1];
    [v21 setDisableInputBars:1];
    [(SBUIPasscodeEntryField *)v7 setUserInteractionEnabled:1];
  }

  return v7;
}

- (void)setFont:(id)a3
{
  [(SBUIPasscodeTextField *)self->_textField setFont:a3];

  [(SBUIPasscodeEntryField *)self setNeedsLayout];
}

- (void)appendString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(SBUIPasscodeEntryField *)self shouldInsertPasscodeText:v4];
    v5 = v6;
    if (v4)
    {
      v4 = [(SBUIPasscodeEntryField *)self _appendString:v6];
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setStringValue:(id)a3
{
  textField = self->_textField;
  v5 = a3;
  [(SBUIPasscodeTextField *)textField setText:0];
  [(SBUIPasscodeEntryField *)self appendString:v5];
}

- (void)_appendString:(id)a3
{
  [(SBUIPasscodeTextField *)self->_textField insertText:a3];

  [(SBUIPasscodeEntryField *)self notePasscodeFieldTextDidChange];
}

- (void)_deleteLastCharacter
{
  [(SBUIPasscodeTextField *)self->_textField deleteBackward];

  [(SBUIPasscodeEntryField *)self notePasscodeFieldTextDidChange];
}

- (BOOL)_hasAnyCharacters
{
  v2 = [(SBUIPasscodeEntryField *)self _textField];
  v3 = [v2 text];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)_resetForFailedPasscode:(BOOL)a3
{
  if (a3)
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

- (void)_autofillForBiometricAuthenticationWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (BOOL)shouldInsertPasscodeText:(id)a3
{
  v4 = a3;
  if (self->_ignoreCallbacks)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(SBUIPasscodeEntryField *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v6 passcodeEntryField:self shouldInsertText:v4];
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
    v4 = [(SBUIPasscodeEntryField *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 passcodeEntryFieldTextDidChange:self];
    }
  }
}

- (void)notePasscodeFieldDidAcceptEntry
{
  if (!self->_ignoreCallbacks)
  {
    v6 = [(SBUIPasscodeEntryField *)self delegate];
    v4 = [(SBUIPasscodeEntryField *)self stringValue];
    v5 = [v4 length];

    if ((objc_opt_respondsToSelector() & 1) == 0 || v5)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && v5)
      {
        [v6 passcodeEntryFieldDidAcceptEntry:self];
      }
    }

    else
    {
      [v6 passcodeEntryFieldDidCancelEntry:self];
    }
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a5;
  v9 = [(SBUIPasscodeEntryField *)self stringValue];
  v10 = [v9 length];
  v11 = [v8 length];
  if (v11 && location == v10 && !length)
  {
    [(SBUIPasscodeEntryField *)self appendString:v8];
  }

  else if (!v11 && location == v10 - 1 && length == 1)
  {
    [(SBUIPasscodeEntryField *)self deleteLastCharacter];
  }

  return 0;
}

- (void)textFieldDidResignFirstResponder:(id)a3
{
  v4 = [(SBUIPasscodeEntryField *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 passcodeEntryFieldDidResignFirstResponder:self];
  }
}

@end