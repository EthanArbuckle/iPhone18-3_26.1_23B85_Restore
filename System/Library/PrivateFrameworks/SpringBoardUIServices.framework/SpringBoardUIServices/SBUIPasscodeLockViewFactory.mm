@interface SBUIPasscodeLockViewFactory
+ (id)_defaultPasscodeBiometricResource;
+ (id)_passcodeLockViewForStyle:(int)style withLightStyle:(BOOL)lightStyle dimmed:(BOOL)dimmed;
+ (id)installTonightPasscodeLockViewForUsersCurrentStyle;
+ (id)lightPasscodeLockViewForUsersCurrentStyle;
+ (id)passcodeLockViewForUsersCurrentStyle;
+ (id)undimmedLightPasscodeLockViewForUsersCurrentStyle;
+ (id)undimmedPasscodeLockViewForUsersCurrentStyle;
+ (void)_commonInitPasscodeView:(id)view forStyle:(int)style;
+ (void)setPasscodeBiometricResource:(id)resource;
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
  [self _commonInitPasscodeView:v7 forStyle:v4];

  return v9;
}

+ (id)_passcodeLockViewForStyle:(int)style withLightStyle:(BOOL)lightStyle dimmed:(BOOL)dimmed
{
  dimmedCopy = dimmed;
  lightStyleCopy = lightStyle;
  v7 = *&style;
  switch(style)
  {
    case 2:
      v13 = [[SBUIPasscodeLockViewLongNumericKeypad alloc] initWithLightStyle:lightStyle providesDimming:dimmed];
      break;
    case 1:
      v9 = [SBUIPasscodeLockViewSimpleFixedDigitKeypad alloc];
      v10 = lightStyleCopy;
      v11 = dimmedCopy;
      v12 = 6;
      goto LABEL_6;
    case 0:
      v9 = [SBUIPasscodeLockViewSimpleFixedDigitKeypad alloc];
      v10 = lightStyleCopy;
      v11 = dimmedCopy;
      v12 = 4;
LABEL_6:
      v13 = [(SBUIPasscodeLockViewSimpleFixedDigitKeypad *)v9 initWithLightStyle:v10 providesDimming:v11 numberOfDigits:v12];
      break;
    default:
      v13 = [[SBUIPasscodeLockViewWithKeyboard alloc] initWithLightStyle:lightStyle];
      break;
  }

  v14 = v13;
  [self _commonInitPasscodeView:v13 forStyle:v7];

  return v14;
}

+ (void)_commonInitPasscodeView:(id)view forStyle:(int)style
{
  v4 = *&style;
  viewCopy = view;
  [viewCopy setStyle:v4];
  _defaultPasscodeBiometricResource = [self _defaultPasscodeBiometricResource];
  [viewCopy setBiometricResource:_defaultPasscodeBiometricResource];
}

+ (void)setPasscodeBiometricResource:(id)resource
{
  resourceCopy = resource;
  if (_passcodeBiometricResource != resourceCopy)
  {
    v5 = resourceCopy;
    objc_storeStrong(&_passcodeBiometricResource, resource);
    resourceCopy = v5;
  }
}

@end