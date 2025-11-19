@interface SBCameraHardwareButtonDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBCameraHardwareButtonDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shutterButtonLongPressTimeout"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBCameraShutterButtonLongPressTimeout" toDefaultValue:&unk_1F3D3F368 options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shutterButtonLongPressCancellationTimeout"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBCameraShutterButtonLongPressCancellationTimeout" toDefaultValue:&unk_1F3D3F378 options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shutterButtonShouldUsePocketDetection"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBCameraShutterButtonShouldUsePocketDetection" toDefaultValue:MEMORY[0x1E695E110] options:1];
}

@end