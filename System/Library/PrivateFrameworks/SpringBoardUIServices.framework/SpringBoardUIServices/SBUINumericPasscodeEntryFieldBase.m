@interface SBUINumericPasscodeEntryFieldBase
- (BOOL)resignFirstResponder;
- (BOOL)shouldInsertPasscodeText:(id)a3;
- (SBUINumericPasscodeEntryFieldBase)initWithDefaultSizeAndLightStyle:(BOOL)a3;
- (void)_appendString:(id)a3;
- (void)_deleteLastCharacter;
- (void)_reallyAppendString:(id)a3;
- (void)setAllowsNewlineAcceptance:(BOOL)a3;
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

- (SBUINumericPasscodeEntryFieldBase)initWithDefaultSizeAndLightStyle:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = SBUINumericPasscodeEntryFieldBase;
  v3 = [(SBUIPasscodeEntryField *)&v9 initWithDefaultSizeAndLightStyle:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD48]);
    numericTrimmingSet = v3->_numericTrimmingSet;
    v3->_numericTrimmingSet = v4;

    v6 = v3->_numericTrimmingSet;
    v7 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    [(NSMutableCharacterSet *)v6 formUnionWithCharacterSet:v7];

    v3->_allowsNewlineAcceptance = 0;
    v3->_maxNumbersAllowed = -1;
    v3->_autoAcceptWhenMaxNumbersMet = 1;
  }

  return v3;
}

- (void)setAllowsNewlineAcceptance:(BOOL)a3
{
  if (self->_allowsNewlineAcceptance != a3)
  {
    self->_allowsNewlineAcceptance = a3;
    numericTrimmingSet = self->_numericTrimmingSet;
    if (a3)
    {
      v5 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      [(NSMutableCharacterSet *)numericTrimmingSet formUnionWithCharacterSet:?];
    }

    else
    {
      v5 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
      [(NSMutableCharacterSet *)numericTrimmingSet formIntersectionWithCharacterSet:?];
    }
  }
}

- (BOOL)shouldInsertPasscodeText:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBUINumericPasscodeEntryFieldBase;
  if ([(SBUIPasscodeEntryField *)&v7 shouldInsertPasscodeText:v4])
  {
    v5 = [v4 isSingleCharacterAndMemberOfSet:self->_numericTrimmingSet];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_deleteLastCharacter
{
  v5 = [(SBUIPasscodeEntryField *)self _textField];
  v3 = [v5 text];
  if ([v3 length])
  {
    v4 = [v3 _stringByTrimmingLastCharacter];
    [v5 setText:v4];

    [(SBUIPasscodeEntryField *)self notePasscodeFieldTextDidChange];
  }
}

- (void)_appendString:(id)a3
{
  v9 = a3;
  v4 = [(SBUIPasscodeEntryField *)self stringValue];
  v5 = [v4 length];

  if (![(SBUINumericPasscodeEntryFieldBase *)self _hasMaxDigitsSpecified])
  {
    if (!v5 || ![v9 isNewline] || !-[SBUINumericPasscodeEntryFieldBase allowsNewlineAcceptance](self, "allowsNewlineAcceptance"))
    {
      [(SBUINumericPasscodeEntryFieldBase *)self _reallyAppendString:v9];
      goto LABEL_12;
    }

LABEL_10:
    [(SBUIPasscodeEntryField *)self notePasscodeFieldDidAcceptEntry];
    goto LABEL_12;
  }

  if ([v9 length] + v5 <= self->_maxNumbersAllowed)
  {
    [(SBUINumericPasscodeEntryFieldBase *)self _reallyAppendString:v9];
  }

  if (self->_autoAcceptWhenMaxNumbersMet)
  {
    v6 = [(SBUIPasscodeEntryField *)self stringValue];
    v7 = [v6 length];
    maxNumbersAllowed = self->_maxNumbersAllowed;

    if (v7 >= maxNumbersAllowed)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
}

- (void)_reallyAppendString:(id)a3
{
  v8 = a3;
  v4 = [(SBUIPasscodeEntryField *)self _textField];
  v5 = [v4 text];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 stringByAppendingString:v8];
  }

  else
  {
    v7 = v8;
  }

  [v4 setText:v7];
  [(SBUIPasscodeEntryField *)self notePasscodeFieldTextDidChange];
}

@end