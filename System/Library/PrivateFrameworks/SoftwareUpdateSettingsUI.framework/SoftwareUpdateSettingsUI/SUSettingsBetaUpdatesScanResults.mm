@interface SUSettingsBetaUpdatesScanResults
- (id)description;
- (id)initFromScanParam:(id)a3 withUUID:(id)a4;
@end

@implementation SUSettingsBetaUpdatesScanResults

- (id)initFromScanParam:(id)a3 withUUID:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v4 = v15;
  v15 = 0;
  v12.receiver = v4;
  v12.super_class = SUSettingsBetaUpdatesScanResults;
  v11 = [(SUSettingsBetaUpdatesScanResults *)&v12 init];
  v15 = v11;
  objc_storeStrong(&v15, v11);
  if (v11)
  {
    [(SUSettingsBetaUpdatesScanResults *)v15 setScanUUID:v13];
    v7 = [location[0] enrolledBetaProgram];
    [(SUSettingsBetaUpdatesScanResults *)v15 setEnrolledBetaProgram:?];
    MEMORY[0x277D82BD8](v7);
    v8 = [location[0] betaPrograms];
    [(SUSettingsBetaUpdatesScanResults *)v15 setBetaPrograms:?];
    MEMORY[0x277D82BD8](v8);
    v9 = [location[0] currentSeedingDevice];
    [(SUSettingsBetaUpdatesScanResults *)v15 setCurrentSeedingDevice:?];
    MEMORY[0x277D82BD8](v9);
  }

  v6 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v6;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v2 = objc_opt_class();
  v9 = NSStringFromClass(v2);
  v8 = [(SUSettingsBetaUpdatesScanResults *)self scanUUID];
  v7 = [(SUSettingsBetaUpdatesScanResults *)self enrolledBetaProgram];
  v6 = [(SUSettingsBetaUpdatesScanResults *)self betaPrograms];
  v5 = [(SUSettingsBetaUpdatesScanResults *)self currentSeedingDevice];
  v10 = [v4 stringWithFormat:@"<%@: %p, \n\tscanUUID: %@, \n\tenrolledBetaProgram: %@, \n\tbetaPrograms: %@, \n\tcurrentSeedingDevice: %@ >", v9, self, v8, v7, v6, v5];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);

  return v10;
}

@end