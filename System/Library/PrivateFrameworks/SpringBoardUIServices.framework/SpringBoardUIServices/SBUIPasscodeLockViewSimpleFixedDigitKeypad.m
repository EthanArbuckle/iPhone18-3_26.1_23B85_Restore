@interface SBUIPasscodeLockViewSimpleFixedDigitKeypad
- (SBUIPasscodeLockViewSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)a3 numberOfDigits:(unint64_t)a4;
- (SBUIPasscodeLockViewSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)a3 providesDimming:(BOOL)a4 numberOfDigits:(unint64_t)a5;
- (double)_entryFieldBottomYDistanceFromNumberPadTopButton;
- (id)_newEntryField;
@end

@implementation SBUIPasscodeLockViewSimpleFixedDigitKeypad

- (double)_entryFieldBottomYDistanceFromNumberPadTopButton
{
  v2 = MEMORY[0x1E69D3FE8];
  v3 = [(SBUIPasscodeLockViewBase *)self _isBoundsPortraitOriented];

  [v2 pinFixedDigitEntryFieldBottomYDistanceFromNumberPadTopButton:v3];
  return result;
}

- (id)_newEntryField
{
  v3 = [SBUISimpleFixedDigitPasscodeEntryField alloc];
  v4 = [(SBUIPasscodeLockViewWithKeypad *)self _usesLightStyle];
  numberOfDigits = self->_numberOfDigits;

  return [(SBUISimpleFixedDigitPasscodeEntryField *)v3 initWithDefaultSizeAndLightStyle:v4 numberOfDigits:numberOfDigits];
}

- (SBUIPasscodeLockViewSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)a3 numberOfDigits:(unint64_t)a4
{
  v5 = a3;
  v7 = [objc_opt_class() providesDimmingByDefault];

  return [(SBUIPasscodeLockViewSimpleFixedDigitKeypad *)self initWithLightStyle:v5 providesDimming:v7 numberOfDigits:a4];
}

- (SBUIPasscodeLockViewSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)a3 providesDimming:(BOOL)a4 numberOfDigits:(unint64_t)a5
{
  self->_numberOfDigits = a5;
  v9.receiver = self;
  v9.super_class = SBUIPasscodeLockViewSimpleFixedDigitKeypad;
  v6 = [(SBUIPasscodeLockViewWithKeypad *)&v9 initWithLightStyle:a3 providesDimming:a4];
  if (v6)
  {
    if (a3)
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v7 = ;
    [(SBUIPasscodeLockViewBase *)v6 setCustomBackgroundColor:v7];
  }

  return v6;
}

@end