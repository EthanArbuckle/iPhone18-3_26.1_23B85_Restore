@interface DBSReferenceAndCalibrationController
- (id)getProModeEnabled;
- (id)specifiers;
- (void)presentModalFineTuneController;
- (void)setProModeEnabled:(BOOL)a3;
- (void)setProModeEnabled:(id)a3 forSpecifier:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = DBSReferenceAndCalibrationController;
  [(DBSReferenceAndCalibrationController *)&v3 viewWillAppear:a3];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ADVANCED_DETAIL_GROUP_ID"];
    v7 = DBS_LocalizedStringForDisplays(@"PRO_MODE_FOOTER");
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [v5 addObject:v6];
    v8 = MEMORY[0x277D3FAD8];
    v9 = DBS_LocalizedStringForDisplays(@"PRO_MODE");
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:sel_setProModeEnabled_forSpecifier_ get:sel_getProModeEnabled_ detail:0 cell:6 edit:0];
    proModeSwitchSpecifier = self->_proModeSwitchSpecifier;
    self->_proModeSwitchSpecifier = v10;

    v12 = *MEMORY[0x277D3FFB8];
    [(PSSpecifier *)self->_proModeSwitchSpecifier setObject:@"PRO_MODE_SWITCH" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
    [v5 addObject:self->_proModeSwitchSpecifier];
    v13 = MEMORY[0x277D3FAD8];
    v14 = DBS_LocalizedStringForDisplays(@"FINE_TUNE");
    v15 = [v13 preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:2 edit:0];
    fineTuneSpecifier = self->_fineTuneSpecifier;
    self->_fineTuneSpecifier = v15;

    [(PSSpecifier *)self->_fineTuneSpecifier setButtonAction:sel_presentModalFineTuneController];
    [(PSSpecifier *)self->_fineTuneSpecifier setObject:@"FINE_TUNE" forKeyedSubscript:v12];
    [(PSSpecifier *)self->_fineTuneSpecifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    v17 = [(DBSReferenceAndCalibrationController *)self getProModeEnabled];
    LODWORD(v13) = [v17 BOOLValue];

    if (v13)
    {
      [v5 addObject:self->_fineTuneSpecifier];
    }

    v18 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

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
  v3 = [MEMORY[0x277CD9E40] mainDisplay];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "isReference")}];

  return v4;
}

- (void)setProModeEnabled:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 BOOLValue];

  [(DBSReferenceAndCalibrationController *)self setProModeEnabled:v5];
}

- (void)setProModeEnabled:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CD9E40] mainDisplay];
  v6 = [v5 isReference];

  if (v6 != v3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [MEMORY[0x277CD9E40] mainDisplay];
    v8 = [v7 availablePresets];

    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 isReference] == v3)
          {
            v14 = [MEMORY[0x277CD9E40] mainDisplay];
            [v14 setCurrentPreset:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    fineTuneSpecifier = self->_fineTuneSpecifier;
    if (v3)
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