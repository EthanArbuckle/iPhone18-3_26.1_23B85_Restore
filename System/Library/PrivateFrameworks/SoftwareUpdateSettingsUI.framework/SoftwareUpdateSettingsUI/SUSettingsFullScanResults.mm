@interface SUSettingsFullScanResults
- (id)description;
- (id)initFromScanParam:(id)param withUUID:(id)d;
@end

@implementation SUSettingsFullScanResults

- (id)initFromScanParam:(id)param withUUID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, param);
  v22 = 0;
  objc_storeStrong(&v22, d);
  v4 = selfCopy;
  selfCopy = 0;
  v21.receiver = v4;
  v21.super_class = SUSettingsFullScanResults;
  v20 = [(SUSettingsScanResults *)&v21 initFromScanParam:location[0] withUUID:v22];
  selfCopy = v20;
  objc_storeStrong(&selfCopy, v20);
  if (v20)
  {
    preferredDescriptor = [location[0] preferredDescriptor];
    [(SUSettingsFullScanResults *)selfCopy setPreferredDescriptor:?];
    MEMORY[0x277D82BD8](preferredDescriptor);
    alternateDescriptor = [location[0] alternateDescriptor];
    [(SUSettingsFullScanResults *)selfCopy setAlternateDescriptor:?];
    MEMORY[0x277D82BD8](alternateDescriptor);
    latestDescriptor = [location[0] latestDescriptor];
    [(SUSettingsFullScanResults *)selfCopy setLatestDescriptor:?];
    MEMORY[0x277D82BD8](latestDescriptor);
    scanError = [location[0] scanError];
    [(SUSettingsFullScanResults *)selfCopy setScanError:?];
    MEMORY[0x277D82BD8](scanError);
    mdmPathRestrictions = [location[0] mdmPathRestrictions];
    [(SUSettingsFullScanResults *)selfCopy setMdmPathRestrictions:mdmPathRestrictions];
    isDelayingUpdate = [location[0] isDelayingUpdate];
    [(SUSettingsFullScanResults *)selfCopy setIsDelayingUpdate:isDelayingUpdate];
    isRollingBack = [location[0] isRollingBack];
    [(SUSettingsFullScanResults *)selfCopy setIsRollingBack:isRollingBack];
    rollbackDescriptor = [location[0] rollbackDescriptor];
    [(SUSettingsFullScanResults *)selfCopy setRollbackDescriptor:?];
    MEMORY[0x277D82BD8](rollbackDescriptor);
    currentSeedingDevice = [location[0] currentSeedingDevice];
    [(SUSettingsFullScanResults *)selfCopy setCurrentSeedingDevice:?];
    MEMORY[0x277D82BD8](currentSeedingDevice);
    betaPrograms = [location[0] betaPrograms];
    [(SUSettingsFullScanResults *)selfCopy setBetaPrograms:?];
    MEMORY[0x277D82BD8](betaPrograms);
    enrolledBetaProgram = [location[0] enrolledBetaProgram];
    [(SUSettingsFullScanResults *)selfCopy setEnrolledBetaProgram:?];
    MEMORY[0x277D82BD8](enrolledBetaProgram);
    ddmDeclaration = [location[0] ddmDeclaration];
    [(SUSettingsFullScanResults *)selfCopy setDDMDeclaration:?];
    MEMORY[0x277D82BD8](ddmDeclaration);
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (id)description
{
  v80 = &v100;
  selfCopy = self;
  v100 = a2;
  location = MEMORY[0x277D82BE0](@"(null)");
  currentDownload = [(SUSettingsScanResults *)selfCopy currentDownload];
  v97 = 0;
  v95 = 0;
  v82 = 0;
  if (currentDownload)
  {
    currentDownload2 = [v80[1] currentDownload];
    v79 = 1;
    v97 = 1;
    descriptor = [currentDownload2 descriptor];
    v95 = 1;
    v82 = descriptor != 0;
  }

  v78 = v82;
  if (v95)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  if (v97)
  {
    MEMORY[0x277D82BD8](currentDownload2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  if (v78)
  {
    v71 = MEMORY[0x277CCACA8];
    currentDownload3 = [v80[1] currentDownload];
    descriptor2 = [currentDownload3 descriptor];
    humanReadableUpdateName = [descriptor2 humanReadableUpdateName];
    currentDownload4 = [v80[1] currentDownload];
    currentDownload5 = [v80[1] currentDownload];
    progress = [currentDownload5 progress];
    v2 = [v71 stringWithFormat:@"%@ (%p) (progess: %@)", humanReadableUpdateName, currentDownload4, progress];
    v3 = location;
    location = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](progress);
    MEMORY[0x277D82BD8](currentDownload5);
    MEMORY[0x277D82BD8](currentDownload4);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](currentDownload3);
  }

  v66 = MEMORY[0x277CCACA8];
  v4 = v80[1];
  v5 = objc_opt_class();
  v67 = NSStringFromClass(v5);
  v68 = v80[1];
  scanUUID = [v80[1] scanUUID];
  preferredDescriptor = [v80[1] preferredDescriptor];
  v93 = 0;
  v91 = 0;
  if (preferredDescriptor)
  {
    preferredDescriptor2 = [v80[1] preferredDescriptor];
    v64 = 1;
    v93 = 1;
    humanReadableUpdateName2 = [preferredDescriptor2 humanReadableUpdateName];
    v91 = 1;
    v65 = humanReadableUpdateName2;
  }

  else
  {
    v65 = @"(null)";
  }

  v61 = v65;
  preferredDescriptor3 = [v80[1] preferredDescriptor];
  alternateDescriptor = [v80[1] alternateDescriptor];
  v89 = 0;
  v87 = 0;
  if (alternateDescriptor)
  {
    alternateDescriptor2 = [v80[1] alternateDescriptor];
    v59 = 1;
    v89 = 1;
    humanReadableUpdateName3 = [alternateDescriptor2 humanReadableUpdateName];
    v87 = 1;
    v60 = humanReadableUpdateName3;
  }

  else
  {
    v60 = @"(null)";
  }

  v56 = v60;
  alternateDescriptor3 = [v80[1] alternateDescriptor];
  latestDescriptor = [v80[1] latestDescriptor];
  v85 = 0;
  v83 = 0;
  if (latestDescriptor)
  {
    latestDescriptor2 = [v80[1] latestDescriptor];
    v54 = 1;
    v85 = 1;
    humanReadableUpdateName4 = [latestDescriptor2 humanReadableUpdateName];
    v83 = 1;
    v55 = humanReadableUpdateName4;
  }

  else
  {
    v55 = @"(null)";
  }

  latestDescriptor3 = [v80[1] latestDescriptor];
  v53 = latestDescriptor3;
  scanError = [v80[1] scanError];
  v52 = scanError;
  emptyScanResults = [v80[1] emptyScanResults];
  v30 = "NO";
  v31 = "YES";
  if (emptyScanResults)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  if ([v80[1] preferredUpdateDownloadable])
  {
    v10 = v31;
  }

  else
  {
    v10 = v30;
  }

  if ([v80[1] alternateUpdateDownloadable])
  {
    v11 = v31;
  }

  else
  {
    v11 = v30;
  }

  preferredUpdateDownloadError = [v80[1] preferredUpdateDownloadError];
  v51 = preferredUpdateDownloadError;
  alternateUpdateDownloadError = [v80[1] alternateUpdateDownloadError];
  v50 = alternateUpdateDownloadError;
  agreementManager = [v80[1] agreementManager];
  v49 = agreementManager;
  isClearingSpaceForDownload = [v80[1] isClearingSpaceForDownload];
  v32 = location;
  [v80[1] mdmPathRestrictions];
  v48 = SUStringFromMDMSUPath();
  mdmPathRestrictions = [v80[1] mdmPathRestrictions];
  ddmDeclaration = [v80[1] ddmDeclaration];
  isDelayingUpdate = [v80[1] isDelayingUpdate];
  v17 = v31;
  if ((isDelayingUpdate & 1) == 0)
  {
    v17 = v30;
  }

  v34 = v17;
  isRollingBack = [v80[1] isRollingBack];
  v19 = v31;
  if ((isRollingBack & 1) == 0)
  {
    v19 = v30;
  }

  v35 = v19;
  rollbackDescriptor = [v80[1] rollbackDescriptor];
  currentSeedingDevice = [v80[1] currentSeedingDevice];
  betaPrograms = [v80[1] betaPrograms];
  betaPrograms2 = [v80[1] betaPrograms];
  v36 = [betaPrograms2 count];
  enrolledBetaProgram = [v80[1] enrolledBetaProgram];
  isAutoUpdateScheduled = [v80[1] isAutoUpdateScheduled];
  v21 = v31;
  if ((isAutoUpdateScheduled & 1) == 0)
  {
    v21 = v30;
  }

  v37 = v21;
  currentAutoInstallOperation = [v80[1] currentAutoInstallOperation];
  isUpdateReadyForInstallation = [v80[1] isUpdateReadyForInstallation];
  v23 = v31;
  if ((isUpdateReadyForInstallation & 1) == 0)
  {
    v23 = v30;
  }

  v38 = v23;
  updateInstallationError = [v80[1] updateInstallationError];
  v39 = &v28;
  v29 = isClearingSpaceForDownload & 1;
  v24 = [v66 stringWithFormat:@"<%@: %p, \n\tscanUUID: %@, \n\tpreferredDescriptor: %@ (%p), \n\talternateDescriptor: %@ (%p), \n\tlatestUpdateDescriptor: %@ (%p), \n\tscanError: %@, \n\temptyScanResults: %s, \n\tpreferredUpdateDownloadable: %s, \n\talternateUpdateDownloadable: %s, \n\tpreferredUpdateDownloadError: %@, \n\talternateUpdateDownloadError: %@, \n\tagreementManager: %@, \n\tisClearingSpaceForDownload: %d, \n\tcurrentDownload: %@, \n\tmdmPathRestrictions: %@ (%ld), \n\tddmDeclaration: %p\n\tisDelayingUpdate: %s\n\tisRollingBack: %s\n\trollbackDescriptor: %p\n\tcurrentSeedingDevice: %p\n\tbetaPrograms: %p (count: %ld)\n\tenrolledBetaProgram: %p\n\tautoUpdateScheduled: %s (%p)\n\tisUpdateReadyForInstallation: %s\n\tupdateInstallationError: %@>", v67, v68, scanUUID, v61, preferredDescriptor3, v56, alternateDescriptor3, v55, latestDescriptor3, scanError, v9, v10, v11, preferredUpdateDownloadError, alternateUpdateDownloadError, agreementManager, v29, v32, v48, mdmPathRestrictions, ddmDeclaration, v34, v35, rollbackDescriptor, currentSeedingDevice, betaPrograms, v36, enrolledBetaProgram, v37, currentAutoInstallOperation, v38, updateInstallationError];
  v25 = updateInstallationError;
  v80[2] = v24;
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](currentAutoInstallOperation);
  MEMORY[0x277D82BD8](enrolledBetaProgram);
  MEMORY[0x277D82BD8](betaPrograms2);
  MEMORY[0x277D82BD8](betaPrograms);
  MEMORY[0x277D82BD8](currentSeedingDevice);
  MEMORY[0x277D82BD8](rollbackDescriptor);
  MEMORY[0x277D82BD8](ddmDeclaration);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  if (v83)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName4);
  }

  if (v85)
  {
    MEMORY[0x277D82BD8](latestDescriptor2);
  }

  MEMORY[0x277D82BD8](latestDescriptor);
  MEMORY[0x277D82BD8](alternateDescriptor3);
  if (v87)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
  }

  if (v89)
  {
    MEMORY[0x277D82BD8](alternateDescriptor2);
  }

  MEMORY[0x277D82BD8](alternateDescriptor);
  MEMORY[0x277D82BD8](preferredDescriptor3);
  if (v91)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
  }

  if (v93)
  {
    MEMORY[0x277D82BD8](preferredDescriptor2);
  }

  MEMORY[0x277D82BD8](preferredDescriptor);
  MEMORY[0x277D82BD8](scanUUID);
  MEMORY[0x277D82BD8](v67);
  objc_storeStrong(&location, 0);
  v26 = v80[2];

  return v26;
}

@end