@interface SBVoiceControlDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBVoiceControlDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableVoiceControlForBluetoothRequests"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBJibblerBluetoothDisabled" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableHandlerActions"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBVoiceControlDisableHandlerActions" toDefaultValue:v4 options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"voiceControlLoggingEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBJibblerLogging" toDefaultValue:v4 options:1];
}

@end