@interface DBSReferenceAndCalibrationController
- (id)getProModeEnabled;
- (id)specifiers;
- (void)presentModalFineTuneController;
- (void)setProModeEnabled:(BOOL)enabled;
- (void)setProModeEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DBSReferenceAndCalibrationController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = DBSReferenceAndCalibrationController;
  [(DBSReferenceAndCalibrationController *)&v4 viewDidLoad];
  v3 = DBS_LocalizedStringForDisplays(@"ADVANCED");
  [(DBSReferenceAndCalibrationController *)self setTitle:v3];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = DBSReferenceAndCalibrationController;
  [(DBSReferenceAndCalibrationController *)&v3 viewWillAppear:appear];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ADVANCED_DETAIL_GROUP_ID"];
    v7 = DBS_LocalizedStringForDisplays(@"PRO_MODE_FOOTER");
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [array addObject:v6];
    v8 = MEMORY[0x277D3FAD8];
    v9 = DBS_LocalizedStringForDisplays(@"PRO_MODE");
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:sel_setProModeEnabled_forSpecifier_ get:sel_getProModeEnabled_ detail:0 cell:6 edit:0];
    proModeSwitchSpecifier = self->_proModeSwitchSpecifier;
    self->_proModeSwitchSpecifier = v10;

    v12 = *MEMORY[0x277D3FFB8];
    [(PSSpecifier *)self->_proModeSwitchSpecifier setObject:@"PRO_MODE_SWITCH" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    [array addObject:self->_proModeSwitchSpecifier];
    v13 = MEMORY[0x277D3FAD8];
    v14 = DBS_LocalizedStringForDisplays(@"FINE_TUNE");
    v15 = [v13 preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:2 edit:0];
    fineTuneSpecifier = self->_fineTuneSpecifier;
    self->_fineTuneSpecifier = v15;

    [(PSSpecifier *)self->_fineTuneSpecifier setButtonAction:sel_presentModalFineTuneController];
    [(PSSpecifier *)self->_fineTuneSpecifier setObject:@"FINE_TUNE" forKeyedSubscript:v12];
    [(PSSpecifier *)self->_fineTuneSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    getProModeEnabled = [(DBSReferenceAndCalibrationController *)self getProModeEnabled];
    LODWORD(v13) = [getProModeEnabled BOOLValue];

    if (v13)
    {
      [array addObject:self->_fineTuneSpecifier];
    }

    v18 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)presentModalFineTuneController
{
  v7 = objc_alloc_init(MEMORY[0x277D3FAC8]);
  v3 = *MEMORY[0x277D3FD20];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setProperty:v6 forKey:*MEMORY[0x277D400B8]];

  [v7 setSpecifier:*(&self->super.super.super.super.super.isa + v3)];
  [v7 setParentController:self];
  [v7 setupController];
  [v7 setModalPresentationStyle:2];
  [(DBSReferenceAndCalibrationController *)self presentViewController:v7 animated:1 completion:0];
}

- (id)getProModeEnabled
{
  v2 = MEMORY[0x277CCABB0];
  mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
  v4 = [v2 numberWithBool:{objc_msgSend(mainDisplay, "isReference")}];

  return v4;
}

- (void)setProModeEnabled:(id)enabled forSpecifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];

  [(DBSReferenceAndCalibrationController *)self setProModeEnabled:bOOLValue];
}

- (void)setProModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v21 = *MEMORY[0x277D85DE8];
  mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
  isReference = [mainDisplay isReference];

  if (isReference != enabledCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    mainDisplay2 = [MEMORY[0x277CD9E40] mainDisplay];
    availablePresets = [mainDisplay2 availablePresets];

    v9 = [availablePresets countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(availablePresets);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 isReference] == enabledCopy)
          {
            mainDisplay3 = [MEMORY[0x277CD9E40] mainDisplay];
            [mainDisplay3 setCurrentPreset:v13];
          }
        }

        v10 = [availablePresets countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    fineTuneSpecifier = self->_fineTuneSpecifier;
    if (enabledCopy)
    {
      [(DBSReferenceAndCalibrationController *)self insertSpecifier:fineTuneSpecifier afterSpecifier:self->_proModeSwitchSpecifier animated:1];
    }

    else
    {
      [(DBSReferenceAndCalibrationController *)self removeSpecifier:fineTuneSpecifier animated:1];
    }
  }
}

@end