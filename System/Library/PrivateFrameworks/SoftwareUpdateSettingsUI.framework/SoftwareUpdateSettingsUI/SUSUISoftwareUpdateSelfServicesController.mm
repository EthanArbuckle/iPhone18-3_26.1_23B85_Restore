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
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = SUSUISoftwareUpdateSelfServicesController;
  [(SUSUISoftwareUpdateSelfServicesController *)&v5 viewDidLoad];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"SELF_SERVICES_TITLE" value:&stru_287B79370 table:@"Software Update"];
  navigationItem = [(SUSUISoftwareUpdateSelfServicesController *)selfCopy navigationItem];
  [navigationItem setTitle:v3];
  MEMORY[0x277D82BD8](navigationItem);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
}

- (id)specifiers
{
  selfCopy = self;
  v14[1] = a2;
  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    v16 = MEMORY[0x277D82BE0](*(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]));
  }

  else
  {
    [(SUSUISoftwareUpdateSelfServicesController *)selfCopy setupGroupSpecifier];
    [(SUSUISoftwareUpdateSelfServicesController *)selfCopy setupBatteryStatusSpecifier];
    [(SUSUISoftwareUpdateSelfServicesController *)selfCopy setupStorageStatusSpecifier];
    [(SUSUISoftwareUpdateSelfServicesController *)selfCopy updateFooter];
    v14[0] = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    v7 = v14[0];
    groupSpecifier = [(SUSUISoftwareUpdateSelfServicesController *)selfCopy groupSpecifier];
    [v7 addObject:?];
    MEMORY[0x277D82BD8](groupSpecifier);
    v9 = v14[0];
    batteryStatusSpecifier = [(SUSUISoftwareUpdateSelfServicesController *)selfCopy batteryStatusSpecifier];
    [v9 addObject:?];
    MEMORY[0x277D82BD8](batteryStatusSpecifier);
    v11 = v14[0];
    storageStatusSpecifier = [(SUSUISoftwareUpdateSelfServicesController *)selfCopy storageStatusSpecifier];
    [v11 addObject:?];
    MEMORY[0x277D82BD8](storageStatusSpecifier);
    v2 = [MEMORY[0x277CBEA60] arrayWithArray:v14[0]];
    v13 = MEMORY[0x277D3FC48];
    v3 = (selfCopy + *MEMORY[0x277D3FC48]);
    v4 = *v3;
    *v3 = v2;
    MEMORY[0x277D82BD8](v4);
    v16 = MEMORY[0x277D82BE0](*(&selfCopy->super.super.super.super.super.isa + *v13));
    objc_storeStrong(v14, 0);
  }

  v5 = v16;

  return v5;
}

- (void)setupGroupSpecifier
{
  selfCopy = self;
  v9 = a2;
  groupSpecifier = [(SUSUISoftwareUpdateSelfServicesController *)self groupSpecifier];
  MEMORY[0x277D82BD8](groupSpecifier);
  if (!groupSpecifier)
  {
    v3 = MEMORY[0x277D3FAD8];
    v2 = MEMORY[0x277CCA8D8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"SELF_SERVICES_GROUP_TITLE" value:&stru_287B79370 table:@"Software Update"];
    v4 = [v3 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [(SUSUISoftwareUpdateSelfServicesController *)selfCopy setGroupSpecifier:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    groupSpecifier2 = [(SUSUISoftwareUpdateSelfServicesController *)selfCopy groupSpecifier];
    [(PSSpecifier *)groupSpecifier2 setProperty:@"SELF_SERVICES_GROUP" forKey:*MEMORY[0x277D3FFB8]];
    MEMORY[0x277D82BD8](groupSpecifier2);
  }
}

- (void)setupStorageStatusSpecifier
{
  selfCopy = self;
  v9 = a2;
  storageStatusSpecifier = [(SUSUISoftwareUpdateSelfServicesController *)self storageStatusSpecifier];
  MEMORY[0x277D82BD8](storageStatusSpecifier);
  if (!storageStatusSpecifier)
  {
    v3 = MEMORY[0x277D3FAD8];
    v2 = MEMORY[0x277CCA8D8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 localizedStringForKey:@"SELF_SERVICES_STORAGE_TITLE" value:&stru_287B79370 table:@"Software Update"];
    v4 = [v3 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [(SUSUISoftwareUpdateSelfServicesController *)selfCopy setStorageStatusSpecifier:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    storageStatusSpecifier2 = [(SUSUISoftwareUpdateSelfServicesController *)selfCopy storageStatusSpecifier];
    [(PSSpecifier *)storageStatusSpecifier2 setProperty:@"SELF_SERVICES_STORAGE_ID" forKey:*MEMORY[0x277D3FFB8]];
    MEMORY[0x277D82BD8](storageStatusSpecifier2);
  }
}

- (void)setupBatteryStatusSpecifier
{
  selfCopy = self;
  v24[1] = a2;
  batteryStatusSpecifier = [(SUSUISoftwareUpdateSelfServicesController *)self batteryStatusSpecifier];
  MEMORY[0x277D82BD8](batteryStatusSpecifier);
  if (!batteryStatusSpecifier)
  {
    v24[0] = [MEMORY[0x277D75418] currentDevice];
    [v24[0] setBatteryMonitoringEnabled:1];
    batteryState = [v24[0] batteryState];
    [v24[0] batteryLevel];
    v22 = 100 * v2;
    v19 = 0;
    v17 = 0;
    v15 = 0;
    v13 = 0;
    v11 = 0;
    v9 = 0;
    if (batteryState == 2 || batteryState == 3)
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
    [(SUSUISoftwareUpdateSelfServicesController *)selfCopy setBatteryStatusSpecifier:?];
    MEMORY[0x277D82BD8](v3);
    batteryStatusSpecifier2 = [(SUSUISoftwareUpdateSelfServicesController *)selfCopy batteryStatusSpecifier];
    [(PSSpecifier *)batteryStatusSpecifier2 setProperty:@"SELF_SERVICES_BATTERY_ID" forKey:*MEMORY[0x277D3FFB8]];
    MEMORY[0x277D82BD8](batteryStatusSpecifier2);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(v24, 0);
  }
}

- (void)updateFooter
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = MEMORY[0x277D82BE0](&stru_287B79370);
  groupSpecifier = [(SUSUISoftwareUpdateSelfServicesController *)selfCopy groupSpecifier];
  v2 = objc_opt_class();
  v4 = NSStringFromClass(v2);
  v3 = *MEMORY[0x277D3FF48];
  [PSSpecifier setProperty:groupSpecifier forKey:"setProperty:forKey:"];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](groupSpecifier);
  groupSpecifier2 = [(SUSUISoftwareUpdateSelfServicesController *)selfCopy groupSpecifier];
  [(PSSpecifier *)groupSpecifier2 setProperty:v7[0] forKey:*MEMORY[0x277D3FF70]];
  MEMORY[0x277D82BD8](groupSpecifier2);
  objc_storeStrong(v7, 0);
}

@end