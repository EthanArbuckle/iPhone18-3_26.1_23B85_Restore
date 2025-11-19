@interface SUSUISoftwareUpdateSelfServicesController
- (id)specifiers;
- (void)setupBatteryStatusSpecifier;
- (void)setupGroupSpecifier;
- (void)setupStorageStatusSpecifier;
- (void)updateFooter;
- (void)viewDidLoad;
@end

@implementation SUSUISoftwareUpdateSelfServicesController

- (void)viewDidLoad
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = SUSUISoftwareUpdateSelfServicesController;
  [(SUSUISoftwareUpdateSelfServicesController *)&v5 viewDidLoad];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"SELF_SERVICES_TITLE" value:&stru_287B79370 table:@"Software Update"];
  v2 = [(SUSUISoftwareUpdateSelfServicesController *)v7 navigationItem];
  [v2 setTitle:v3];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
}

- (id)specifiers
{
  v15 = self;
  v14[1] = a2;
  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    v16 = MEMORY[0x277D82BE0](*(&v15->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]));
  }

  else
  {
    [(SUSUISoftwareUpdateSelfServicesController *)v15 setupGroupSpecifier];
    [(SUSUISoftwareUpdateSelfServicesController *)v15 setupBatteryStatusSpecifier];
    [(SUSUISoftwareUpdateSelfServicesController *)v15 setupStorageStatusSpecifier];
    [(SUSUISoftwareUpdateSelfServicesController *)v15 updateFooter];
    v14[0] = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    v7 = v14[0];
    v8 = [(SUSUISoftwareUpdateSelfServicesController *)v15 groupSpecifier];
    [v7 addObject:?];
    MEMORY[0x277D82BD8](v8);
    v9 = v14[0];
    v10 = [(SUSUISoftwareUpdateSelfServicesController *)v15 batteryStatusSpecifier];
    [v9 addObject:?];
    MEMORY[0x277D82BD8](v10);
    v11 = v14[0];
    v12 = [(SUSUISoftwareUpdateSelfServicesController *)v15 storageStatusSpecifier];
    [v11 addObject:?];
    MEMORY[0x277D82BD8](v12);
    v2 = [MEMORY[0x277CBEA60] arrayWithArray:v14[0]];
    v13 = MEMORY[0x277D3FC48];
    v3 = (v15 + *MEMORY[0x277D3FC48]);
    v4 = *v3;
    *v3 = v2;
    MEMORY[0x277D82BD8](v4);
    v16 = MEMORY[0x277D82BE0](*(&v15->super.super.super.super.super.isa + *v13));
    objc_storeStrong(v14, 0);
  }

  v5 = v16;

  return v5;
}

- (void)setupGroupSpecifier
{
  v10 = self;
  v9 = a2;
  v8 = [(SUSUISoftwareUpdateSelfServicesController *)self groupSpecifier];
  MEMORY[0x277D82BD8](v8);
  if (!v8)
  {
    v3 = MEMORY[0x277D3FAD8];
    v2 = MEMORY[0x277CCA8D8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"SELF_SERVICES_GROUP_TITLE" value:&stru_287B79370 table:@"Software Update"];
    v4 = [v3 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [(SUSUISoftwareUpdateSelfServicesController *)v10 setGroupSpecifier:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    v7 = [(SUSUISoftwareUpdateSelfServicesController *)v10 groupSpecifier];
    [(PSSpecifier *)v7 setProperty:@"SELF_SERVICES_GROUP" forKey:*MEMORY[0x277D3FFB8]];
    MEMORY[0x277D82BD8](v7);
  }
}

- (void)setupStorageStatusSpecifier
{
  v10 = self;
  v9 = a2;
  v8 = [(SUSUISoftwareUpdateSelfServicesController *)self storageStatusSpecifier];
  MEMORY[0x277D82BD8](v8);
  if (!v8)
  {
    v3 = MEMORY[0x277D3FAD8];
    v2 = MEMORY[0x277CCA8D8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"SELF_SERVICES_STORAGE_TITLE" value:&stru_287B79370 table:@"Software Update"];
    v4 = [v3 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [(SUSUISoftwareUpdateSelfServicesController *)v10 setStorageStatusSpecifier:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    v7 = [(SUSUISoftwareUpdateSelfServicesController *)v10 storageStatusSpecifier];
    [(PSSpecifier *)v7 setProperty:@"SELF_SERVICES_STORAGE_ID" forKey:*MEMORY[0x277D3FFB8]];
    MEMORY[0x277D82BD8](v7);
  }
}

- (void)setupBatteryStatusSpecifier
{
  v25 = self;
  v24[1] = a2;
  v8 = [(SUSUISoftwareUpdateSelfServicesController *)self batteryStatusSpecifier];
  MEMORY[0x277D82BD8](v8);
  if (!v8)
  {
    v24[0] = [MEMORY[0x277D75418] currentDevice];
    [v24[0] setBatteryMonitoringEnabled:1];
    v23 = [v24[0] batteryState];
    [v24[0] batteryLevel];
    v22 = 100 * v2;
    v19 = 0;
    v17 = 0;
    v15 = 0;
    v13 = 0;
    v11 = 0;
    v9 = 0;
    if (v23 == 2 || v23 == 3)
    {
      v6 = MEMORY[0x277CCACA8];
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = 1;
      v18 = [v20 localizedStringForKey:@"SELF_SERVICES_BATTERY_TITLE" value:&stru_287B79370 table:@"Software Update"];
      v17 = 1;
      v16 = [v6 stringWithFormat:@"%@: Charging, %d%%", v18, v22];
      v15 = 1;
      v7 = v16;
    }

    else
    {
      v5 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = 1;
      v12 = [v14 localizedStringForKey:@"SELF_SERVICES_BATTERY_TITLE" value:&stru_287B79370 table:@"Software Update"];
      v11 = 1;
      v10 = [v5 stringWithFormat:@"%@ %d%%", v12, v22];
      v9 = 1;
      v7 = v10;
    }

    v21 = MEMORY[0x277D82BE0](v7);
    if (v9)
    {
      MEMORY[0x277D82BD8](v10);
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    if (v17)
    {
      MEMORY[0x277D82BD8](v18);
    }

    if (v19)
    {
      MEMORY[0x277D82BD8](v20);
    }

    v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v21 target:0 set:0 get:0 detail:0 cell:13 edit:0];
    [(SUSUISoftwareUpdateSelfServicesController *)v25 setBatteryStatusSpecifier:?];
    MEMORY[0x277D82BD8](v3);
    v4 = [(SUSUISoftwareUpdateSelfServicesController *)v25 batteryStatusSpecifier];
    [(PSSpecifier *)v4 setProperty:@"SELF_SERVICES_BATTERY_ID" forKey:*MEMORY[0x277D3FFB8]];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(v24, 0);
  }
}

- (void)updateFooter
{
  v8 = self;
  v7[1] = a2;
  v7[0] = MEMORY[0x277D82BE0](&stru_287B79370);
  v5 = [(SUSUISoftwareUpdateSelfServicesController *)v8 groupSpecifier];
  v2 = objc_opt_class();
  v4 = NSStringFromClass(v2);
  v3 = *MEMORY[0x277D3FF48];
  [PSSpecifier setProperty:v5 forKey:"setProperty:forKey:"];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  v6 = [(SUSUISoftwareUpdateSelfServicesController *)v8 groupSpecifier];
  [(PSSpecifier *)v6 setProperty:v7[0] forKey:*MEMORY[0x277D3FF70]];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(v7, 0);
}

@end