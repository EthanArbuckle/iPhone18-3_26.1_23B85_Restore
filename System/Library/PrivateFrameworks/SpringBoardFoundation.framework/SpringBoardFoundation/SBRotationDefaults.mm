@interface SBRotationDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBRotationDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lastLockedOrientation"];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      v4 = @"SBLastRotationLockedOrientationiPad";
    }

    else
    {
      v4 = @"SBLastRotationLockedOrientation";
    }

    [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:v4 toDefaultValue:&unk_1F3D3E790 options:1];
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      v6 = @"SBLastRotationLockedOrientationiPad";
    }

    else
    {
      v6 = @"SBLastRotationLockedOrientation";
    }

    [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:v6 toDefaultValue:&unk_1F3D3E790 options:1];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoRotationEnabled"];
  v8 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBEnableVideoRotation" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"postModernRotationForciblyEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBPostModernRotationForciblyEnabled" toDefaultValue:v8 options:1];
}

@end