@interface SBExternalSoundsDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBExternalSoundsDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"keyboardPlaysSounds"];
  v4 = MEMORY[0x277CBEC38];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"keyboard" toDefaultValue:MEMORY[0x277CBEC38] options:1];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"systemHapticsEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"effects-haptic" toDefaultValue:v4 options:1];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"buttonsCanChangeRingerVolume"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"buttons-can-change-ringer-volume" toDefaultValue:MEMORY[0x277CBEC28] options:1];
}

@end