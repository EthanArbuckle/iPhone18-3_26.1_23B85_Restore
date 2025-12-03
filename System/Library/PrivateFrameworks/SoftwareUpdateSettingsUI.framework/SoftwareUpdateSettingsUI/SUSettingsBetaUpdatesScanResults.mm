@interface SUSettingsBetaUpdatesScanResults
- (id)description;
- (id)initFromScanParam:(id)param withUUID:(id)d;
@end

@implementation SUSettingsBetaUpdatesScanResults

- (id)initFromScanParam:(id)param withUUID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, param);
  v13 = 0;
  objc_storeStrong(&v13, d);
  v4 = selfCopy;
  selfCopy = 0;
  v12.receiver = v4;
  v12.super_class = SUSettingsBetaUpdatesScanResults;
  v11 = [(SUSettingsBetaUpdatesScanResults *)&v12 init];
  selfCopy = v11;
  objc_storeStrong(&selfCopy, v11);
  if (v11)
  {
    [(SUSettingsBetaUpdatesScanResults *)selfCopy setScanUUID:v13];
    enrolledBetaProgram = [location[0] enrolledBetaProgram];
    [(SUSettingsBetaUpdatesScanResults *)selfCopy setEnrolledBetaProgram:?];
    MEMORY[0x277D82BD8](enrolledBetaProgram);
    betaPrograms = [location[0] betaPrograms];
    [(SUSettingsBetaUpdatesScanResults *)selfCopy setBetaPrograms:?];
    MEMORY[0x277D82BD8](betaPrograms);
    currentSeedingDevice = [location[0] currentSeedingDevice];
    [(SUSettingsBetaUpdatesScanResults *)selfCopy setCurrentSeedingDevice:?];
    MEMORY[0x277D82BD8](currentSeedingDevice);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v2 = objc_opt_class();
  v9 = NSStringFromClass(v2);
  scanUUID = [(SUSettingsBetaUpdatesScanResults *)self scanUUID];
  enrolledBetaProgram = [(SUSettingsBetaUpdatesScanResults *)self enrolledBetaProgram];
  betaPrograms = [(SUSettingsBetaUpdatesScanResults *)self betaPrograms];
  currentSeedingDevice = [(SUSettingsBetaUpdatesScanResults *)self currentSeedingDevice];
  v10 = [v4 stringWithFormat:@"<%@: %p, \n\tscanUUID: %@, \n\tenrolledBetaProgram: %@, \n\tbetaPrograms: %@, \n\tcurrentSeedingDevice: %@ >", v9, self, scanUUID, enrolledBetaProgram, betaPrograms, currentSeedingDevice];
  MEMORY[0x277D82BD8](currentSeedingDevice);
  MEMORY[0x277D82BD8](betaPrograms);
  MEMORY[0x277D82BD8](enrolledBetaProgram);
  MEMORY[0x277D82BD8](scanUUID);
  MEMORY[0x277D82BD8](v9);

  return v10;
}

@end