@interface SBUINumericPasscodeEntryFieldBase
- (BOOL)resignFirstResponder;
- (BOOL)shouldInsertPasscodeText:(id)text;
- (SBUINumericPasscodeEntryFieldBase)initWithDefaultSizeAndLightStyle:(BOOL)style;
- (void)_appendString:(id)string;
- (void)_deleteLastCharacter;
- (void)_reallyAppendString:(id)string;
- (void)setAllowsNewlineAcceptance:(BOOL)acceptance;
@end

@implementation SBUINumericPasscodeEntryFieldBase

- (BOOL)resignFirstResponder
{
  if ([objc_opt_class() _shouldResetAutoAcceptWhenMaxNumbersMetInResignFirstResponder])
  {
    [(SBUINumericPasscodeEntryFieldBase *)self setAutoAcceptWhenMaxNumbersMet:1];
  }

  v4.receiver = self;
  v4.super_class = SBUINumericPasscodeEntryFieldBase;
  return [(SBUIPasscodeEntryField *)&v4 resignFirstResponder];
}

- (SBUINumericPasscodeEntryFieldBase)initWithDefaultSizeAndLightStyle:(BOOL)style
{
  v9.receiver = self;
  v9.super_class = SBUINumericPasscodeEntryFieldBase;
  v3 = [(SBUIPasscodeEntryField *)&v9 initWithDefaultSizeAndLightStyle:style];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD48]);
    numericTrimmingSet = v3->_numericTrimmingSet;
    v3->_numericTrimmingSet = v4;

    v6 = v3->_numericTrimmingSet;
    decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    [(NSMutableCharacterSet *)v6 formUnionWithCharacterSet:decimalDigitCharacterSet];

    v3->_allowsNewlineAcceptance = 0;
    v3->_maxNumbersAllowed = -1;
    v3->_autoAcceptWhenMaxNumbersMet = 1;
  }

  return v3;
}

- (void)setAllowsNewlineAcceptance:(BOOL)acceptance
{
  if (self->_allowsNewlineAcceptance != acceptance)
  {
    self->_allowsNewlineAcceptance = acceptance;
    numericTrimmingSet = self->_numericTrimmingSet;
    if (acceptance)
    {
      newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
      [(NSMutableCharacterSet *)numericTrimmingSet formUnionWithCharacterSet:?];
    }

    else
    {
      newlineCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
      [(NSMutableCharacterSet *)numericTrimmingSet formIntersectionWithCharacterSet:?];
    }
  }
}

- (BOOL)shouldInsertPasscodeText:(id)text
{
  textCopy = text;
  v7.receiver = self;
  v7.super_class = SBUINumericPasscodeEntryFieldBase;
  if ([(SBUIPasscodeEntryField *)&v7 shouldInsertPasscodeText:textCopy])
  {
    v5 = [textCopy isSingleCharacterAndMemberOfSet:self->_numericTrimmingSet];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_deleteLastCharacter
{
  _textField = [(SBUIPasscodeEntryField *)self _textField];
  text = [_textField text];
  if ([text length])
  {
    _stringByTrimmingLastCharacter = [text _stringByTrimmingLastCharacter];
    [_textField setText:_stringByTrimmingLastCharacter];

    [(SBUIPasscodeEntryField *)self notePasscodeFieldTextDidChange];
  }
}

- (void)_appendString:(id)string
{
  stringCopy = string;
  stringValue = [(SBUIPasscodeEntryField *)self stringValue];
  v5 = [stringValue length];

  if (![(SBUINumericPasscodeEntryFieldBase *)self _hasMaxDigitsSpecified])
  {
    if (!v5 || ![stringCopy isNewline] || !-[SBUINumericPasscodeEntryFieldBase allowsNewlineAcceptance](self, "allowsNewlineAcceptance"))
    {
      [(SBUINumericPasscodeEntryFieldBase *)self _reallyAppendString:stringCopy];
      goto LABEL_12;
    }

LABEL_10:
    [(SBUIPasscodeEntryField *)self notePasscodeFieldDidAcceptEntry];
    goto LABEL_12;
  }

  if ([stringCopy length] + v5 <= self->_maxNumbersAllowed)
  {
    [(SBUINumericPasscodeEntryFieldBase *)self _reallyAppendString:stringCopy];
  }

  if (self->_autoAcceptWhenMaxNumbersMet)
  {
    stringValue2 = [(SBUIPasscodeEntryField *)self stringValue];
    v7 = [stringValue2 length];
    maxNumbersAllowed = self->_maxNumbersAllowed;

    if (v7 >= maxNumbersAllowed)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
}

- (void)_reallyAppendString:(id)string
{
  stringCopy = string;
  _textField = [(SBUIPasscodeEntryField *)self _textField];
  text = [_textField text];
  if (text)
  {
    v6 = text;
    v7 = [text stringByAppendingString:stringCopy];
  }

  else
  {
    v7 = stringCopy;
  }

  [_textField setText:v7];
  [(SBUIPasscodeEntryField *)self notePasscodeFieldTextDidChange];
}

@end