@interface SBExternalWifiDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBExternalWifiDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"wifiEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"wifi-network" toDefaultValue:MEMORY[0x277CBEC28] options:1];
}

@end