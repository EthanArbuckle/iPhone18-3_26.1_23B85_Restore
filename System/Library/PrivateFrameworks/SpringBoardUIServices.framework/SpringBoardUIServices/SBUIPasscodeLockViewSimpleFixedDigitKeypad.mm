@interface SBUIPasscodeLockViewSimpleFixedDigitKeypad
- (SBUIPasscodeLockViewSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)style numberOfDigits:(unint64_t)digits;
- (SBUIPasscodeLockViewSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)style providesDimming:(BOOL)dimming numberOfDigits:(unint64_t)digits;
- (double)_entryFieldBottomYDistanceFromNumberPadTopButton;
- (id)_newEntryField;
@end

@implementation SBUIPasscodeLockViewSimpleFixedDigitKeypad

- (double)_entryFieldBottomYDistanceFromNumberPadTopButton
{
  v2 = MEMORY[0x1E69D3FE8];
  _isBoundsPortraitOriented = [(SBUIPasscodeLockViewBase *)self _isBoundsPortraitOriented];

  [v2 pinFixedDigitEntryFieldBottomYDistanceFromNumberPadTopButton:_isBoundsPortraitOriented];
  return result;
}

- (id)_newEntryField
{
  v3 = [SBUISimpleFixedDigitPasscodeEntryField alloc];
  _usesLightStyle = [(SBUIPasscodeLockViewWithKeypad *)self _usesLightStyle];
  numberOfDigits = self->_numberOfDigits;

  return [(SBUISimpleFixedDigitPasscodeEntryField *)v3 initWithDefaultSizeAndLightStyle:_usesLightStyle numberOfDigits:numberOfDigits];
}

- (SBUIPasscodeLockViewSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)style numberOfDigits:(unint64_t)digits
{
  styleCopy = style;
  providesDimmingByDefault = [objc_opt_class() providesDimmingByDefault];

  return [(SBUIPasscodeLockViewSimpleFixedDigitKeypad *)self initWithLightStyle:styleCopy providesDimming:providesDimmingByDefault numberOfDigits:digits];
}

- (SBUIPasscodeLockViewSimpleFixedDigitKeypad)initWithLightStyle:(BOOL)style providesDimming:(BOOL)dimming numberOfDigits:(unint64_t)digits
{
  self->_numberOfDigits = digits;
  v9.receiver = self;
  v9.super_class = SBUIPasscodeLockViewSimpleFixedDigitKeypad;
  v6 = [(SBUIPasscodeLockViewWithKeypad *)&v9 initWithLightStyle:style providesDimming:dimming];
  if (v6)
  {
    if (style)
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