@interface SBUIPasscodeLockViewLongNumericKeypad
- (SBUIPasscodeLockViewLongNumericKeypad)initWithLightStyle:(BOOL)style;
- (SBUIPasscodeLockViewLongNumericKeypad)initWithLightStyle:(BOOL)style providesDimming:(BOOL)dimming;
- (double)_entryFieldBottomYDistanceFromNumberPadTopButton;
- (id)_newEntryField;
- (void)_setHasInput:(BOOL)input;
@end

@implementation SBUIPasscodeLockViewLongNumericKeypad

- (SBUIPasscodeLockViewLongNumericKeypad)initWithLightStyle:(BOOL)style
{
  styleCopy = style;
  providesDimmingByDefault = [objc_opt_class() providesDimmingByDefault];

  return [(SBUIPasscodeLockViewLongNumericKeypad *)self initWithLightStyle:styleCopy providesDimming:providesDimmingByDefault];
}

- (SBUIPasscodeLockViewLongNumericKeypad)initWithLightStyle:(BOOL)style providesDimming:(BOOL)dimming
{
  v8.receiver = self;
  v8.super_class = SBUIPasscodeLockViewLongNumericKeypad;
  v5 = [(SBUIPasscodeLockViewWithKeypad *)&v8 initWithLightStyle:style providesDimming:dimming];
  if (v5)
  {
    if (style)
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v6 = ;
    [(SBUIPasscodeLockViewBase *)v5 setCustomBackgroundColor:v6];
  }

  return v5;
}

- (id)_newEntryField
{
  v3 = [SBUILongNumericPasscodeEntryField alloc];
  _usesLightStyle = [(SBUIPasscodeLockViewWithKeypad *)self _usesLightStyle];

  return [(SBUILongNumericPasscodeEntryField *)v3 initWithDefaultSizeAndLightStyle:_usesLightStyle];
}

- (void)_setHasInput:(BOOL)input
{
  v7.receiver = self;
  v7.super_class = SBUIPasscodeLockViewLongNumericKeypad;
  [(SBUIPasscodeLockViewWithKeypad *)&v7 _setHasInput:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SBUIPasscodeLockViewLongNumericKeypad__setHasInput___block_invoke;
  v5[3] = &unk_1E789DA60;
  v5[4] = self;
  inputCopy = input;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0.25];
}

void __54__SBUIPasscodeLockViewLongNumericKeypad__setHasInput___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _longNumericEntryField];
  [v2 setShowsOkButton:*(a1 + 40)];
}

- (double)_entryFieldBottomYDistanceFromNumberPadTopButton
{
  v2 = MEMORY[0x1E69D3FE8];
  _isBoundsPortraitOriented = [(SBUIPasscodeLockViewBase *)self _isBoundsPortraitOriented];

  [v2 pinLongNumericEntryFieldBottomYDistanceFromNumberPadTopButton:_isBoundsPortraitOriented];
  return result;
}

@end