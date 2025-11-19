@interface SBAmbientDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBAmbientDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"qiChargingIdleTimerDuration"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBAmbientQiChargingIdleTimerDuration" toDefaultValue:&unk_1F3D3EF38 options:1];
}

@end