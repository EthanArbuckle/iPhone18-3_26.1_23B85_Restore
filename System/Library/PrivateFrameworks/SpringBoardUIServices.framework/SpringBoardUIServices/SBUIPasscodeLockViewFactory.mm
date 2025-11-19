@interface SBUIPasscodeLockViewFactory
+ (id)_defaultPasscodeBiometricResource;
+ (id)_passcodeLockViewForStyle:(int)a3 withLightStyle:(BOOL)a4 dimmed:(BOOL)a5;
+ (id)installTonightPasscodeLockViewForUsersCurrentStyle;
+ (id)lightPasscodeLockViewForUsersCurrentStyle;
+ (id)passcodeLockViewForUsersCurrentStyle;
+ (id)undimmedLightPasscodeLockViewForUsersCurrentStyle;
+ (id)undimmedPasscodeLockViewForUsersCurrentStyle;
+ (void)_commonInitPasscodeView:(id)a3 forStyle:(int)a4;
+ (void)setPasscodeBiometricResource:(id)a3;
@end

@implementation SBUIPasscodeLockViewFactory

+ (id)passcodeLockViewForUsersCurrentStyle
{
  v2 = SBUICurrentPasscodeStyleForUser();

  return [SBUIPasscodeLockViewFactory passcodeLockViewForStyle:v2];
}

+ (id)_defaultPasscodeBiometricResource
{
  if (_defaultPasscodeBiometricResource___once != -1)
  {
    +[SBUIPasscodeLockViewFactory _defaultPasscodeBiometricResource];
  }

  if (_passcodeBiometricResource)
  {
    v3 = _passcodeBiometricResource;
  }

  else
  {
    v3 = _defaultPasscodeBiometricResource__defaultPasscodeBiometricResource;
  }

  return v3;
}

void __64__SBUIPasscodeLockViewFactory__defaultPasscodeBiometricResource__block_invoke()
{
  v0 = [SBUIPasscodeBiometricResource alloc];
  v3 = +[SBUIBiometricResource sharedInstance];
  v1 = [(SBUIPasscodeBiometricResource *)v0 initWithBiometricResource:v3 overrideMatchingAssertionFactory:0];
  v2 = _defaultPasscodeBiometricResource__defaultPasscodeBiometricResource;
  _defaultPasscodeBiometricResource__defaultPasscodeBiometricResource = v1;
}

+ (id)undimmedPasscodeLockViewForUsersCurrentStyle
{
  v2 = SBUICurrentPasscodeStyleForUser();

  return [SBUIPasscodeLockViewFactory undimmedPasscodeLockViewForStyle:v2];
}

+ (id)lightPasscodeLockViewForUsersCurrentStyle
{
  v2 = SBUICurrentPasscodeStyleForUser();

  return [SBUIPasscodeLockViewFactory lightPasscodeLockViewForStyle:v2];
}

+ (id)undimmedLightPasscodeLockViewForUsersCurrentStyle
{
  v2 = SBUICurrentPasscodeStyleForUser();

  return [SBUIPasscodeLockViewFactory undimmedLightPasscodeLockViewForStyle:v2];
}

+ (id)installTonightPasscodeLockViewForUsersCurrentStyle
{
  v3 = SBUICurrentPasscodeStyleForUser();
  v4 = v3;
  switch(v3)
  {
    case 2:
      v8 = SBUIPasscodeLockViewInstallTonightLongNumericKeypad;
      break;
    case 1:
      v5 = [SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad alloc];
      v6 = 6;
      goto LABEL_6;
    case 0:
      v5 = [SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad alloc];
      v6 = 4;
LABEL_6:
      v7 = [(SBUIPasscodeLockViewInstallTonightSimpleFixedDigitKeypad *)v5 initWithLightStyle:0 numberOfDigits:v6];
      goto LABEL_10;
    default:
      v8 = SBUIPasscodeLockViewInstallTonightWithKeyboard;
      break;
  }

  v7 = [[v8 alloc] initWithLightStyle:0];
LABEL_10:
  v9 = v7;
  [a1 _commonInitPasscodeView:v7 forStyle:v4];

  return v9;
}

+ (id)_passcodeLockViewForStyle:(int)a3 withLightStyle:(BOOL)a4 dimmed:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = *&a3;
  switch(a3)
  {
    case 2:
      v13 = [[SBUIPasscodeLockViewLongNumericKeypad alloc] initWithLightStyle:a4 providesDimming:a5];
      break;
    case 1:
      v9 = [SBUIPasscodeLockViewSimpleFixedDigitKeypad alloc];
      v10 = v6;
      v11 = v5;
      v12 = 6;
      goto LABEL_6;
    case 0:
      v9 = [SBUIPasscodeLockViewSimpleFixedDigitKeypad alloc];
      v10 = v6;
      v11 = v5;
      v12 = 4;
LABEL_6:
      v13 = [(SBUIPasscodeLockViewSimpleFixedDigitKeypad *)v9 initWithLightStyle:v10 providesDimming:v11 numberOfDigits:v12];
      break;
    default:
      v13 = [[SBUIPasscodeLockViewWithKeyboard alloc] initWithLightStyle:a4];
      break;
  }

  v14 = v13;
  [a1 _commonInitPasscodeView:v13 forStyle:v7];

  return v14;
}

+ (void)_commonInitPasscodeView:(id)a3 forStyle:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  [v6 setStyle:v4];
  v7 = [a1 _defaultPasscodeBiometricResource];
  [v6 setBiometricResource:v7];
}

+ (void)setPasscodeBiometricResource:(id)a3
{
  v4 = a3;
  if (_passcodeBiometricResource != v4)
  {
    v5 = v4;
    objc_storeStrong(&_passcodeBiometricResource, a3);
    v4 = v5;
  }
}

@end