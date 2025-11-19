@interface SBExternalDisplayRuntimeAvailabilitySettings
+ (id)_moduleWithSectionTitle:(id)a3;
- (void)setDefaultValues;
@end

@implementation SBExternalDisplayRuntimeAvailabilitySettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBExternalDisplayRuntimeAvailabilitySettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBExternalDisplayRuntimeAvailabilitySettings *)self setRequirePointer:1];
  [(SBExternalDisplayRuntimeAvailabilitySettings *)self setRequireHardwareKeyboard:1];
}

+ (id)_moduleWithSectionTitle:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = [v3 predicateWithValue:SBFIsChamoisExternalDisplayControllerAvailable()];
  v6 = [MEMORY[0x277D432A8] rowWithTitle:@"Pointer" valueKeyPath:@"requirePointer"];
  v7 = [v6 condition:v5];

  v8 = [MEMORY[0x277D432A8] rowWithTitle:@"Hardware Keyboard" valueKeyPath:@"requireHardwareKeyboard"];
  v9 = [v8 condition:v5];

  v10 = MEMORY[0x277D43210];
  v16[0] = v7;
  v16[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v12 = [v10 sectionWithRows:v11 title:v4];

  v17[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v14 = [v10 moduleWithTitle:0 contents:v13];

  return v14;
}

@end