@interface SUSettingsScanParam
- (SUSettingsScanParam)initWithError:(id)error;
- (SUSettingsScanParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andLatestDescriptor:(id)latestDescriptor;
- (SUSettingsScanParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andLatestDescriptor:(id)latestDescriptor previouslyDiscoveredDownloadedUpdate:(id)update encounteredError:(id)error;
- (SUSettingsScanParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andLatestDescriptor:(id)latestDescriptor previouslyDiscoveredDownloadedUpdate:(id)update previouslyDiscoveredAutoInstallOperation:(id)operation encounteredError:(id)error;
- (SUSettingsScanParam)initWithScanOptions:(id)options;
- (id)description;
@end

@implementation SUSettingsScanParam

- (SUSettingsScanParam)initWithScanOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = SUSettingsScanParam;
  v6 = [(SUSettingsScanParam *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    [(SUSettingsScanParam *)selfCopy setOptions:location[0]];
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (SUSettingsScanParam)initWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = SUSettingsScanParam;
  v6 = [(SUSettingsScanParam *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    [(SUSettingsScanParam *)selfCopy setOperationError:location[0]];
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (SUSettingsScanParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andLatestDescriptor:(id)latestDescriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v13 = 0;
  objc_storeStrong(&v13, alternateDescriptor);
  v12 = 0;
  objc_storeStrong(&v12, latestDescriptor);
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = SUSettingsScanParam;
  v10 = [(SUSettingsScanParam *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    [(SUSettingsScanParam *)selfCopy setPreferredDescriptor:location[0]];
    [(SUSettingsScanParam *)selfCopy setAlternateDescriptor:v13];
    [(SUSettingsScanParam *)selfCopy setLatestDescriptor:v12];
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (SUSettingsScanParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andLatestDescriptor:(id)latestDescriptor previouslyDiscoveredDownloadedUpdate:(id)update previouslyDiscoveredAutoInstallOperation:(id)operation encounteredError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v21 = 0;
  objc_storeStrong(&v21, alternateDescriptor);
  v20 = 0;
  objc_storeStrong(&v20, latestDescriptor);
  v19 = 0;
  objc_storeStrong(&v19, update);
  v18 = 0;
  objc_storeStrong(&v18, operation);
  v17 = 0;
  objc_storeStrong(&v17, error);
  v8 = selfCopy;
  selfCopy = 0;
  v16 = [(SUSettingsScanParam *)v8 initWithPreferredDescriptor:location[0] alternateDescriptor:v21 andLatestDescriptor:v20];
  selfCopy = v16;
  objc_storeStrong(&selfCopy, v16);
  if (v16)
  {
    [(SUSettingsScanParam *)selfCopy setCurrentDownload:v19];
    [(SUSettingsScanParam *)selfCopy setCurrentAutoInstallOperation:v18];
    [(SUSettingsScanParam *)selfCopy setIsAutoUpdateScheduled:v18 != 0];
    [(SUSettingsScanParam *)selfCopy setOperationError:v17];
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (SUSettingsScanParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andLatestDescriptor:(id)latestDescriptor previouslyDiscoveredDownloadedUpdate:(id)update encounteredError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v18 = 0;
  objc_storeStrong(&v18, alternateDescriptor);
  v17 = 0;
  objc_storeStrong(&v17, latestDescriptor);
  v16 = 0;
  objc_storeStrong(&v16, update);
  v15 = 0;
  objc_storeStrong(&v15, error);
  v7 = selfCopy;
  selfCopy = 0;
  v14 = [(SUSettingsScanParam *)v7 initWithPreferredDescriptor:location[0] alternateDescriptor:v18 andLatestDescriptor:v17];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    [(SUSettingsScanParam *)selfCopy setCurrentDownload:v16];
    [(SUSettingsScanParam *)selfCopy setOperationError:v15];
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (id)description
{
  v78 = &v98;
  selfCopy = self;
  v98 = a2;
  location = MEMORY[0x277D82BE0](@"(null)");
  currentDownload = [(SUSettingsScanParam *)selfCopy currentDownload];
  v95 = 0;
  v93 = 0;
  v80 = 0;
  if (currentDownload)
  {
    currentDownload2 = [v78[1] currentDownload];
    v77 = 1;
    v95 = 1;
    descriptor = [currentDownload2 descriptor];
    v93 = 1;
    v80 = descriptor != 0;
  }

  v76 = v80;
  if (v93)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  if (v95)
  {
    MEMORY[0x277D82BD8](currentDownload2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  if (v76)
  {
    v69 = MEMORY[0x277CCACA8];
    currentDownload3 = [v78[1] currentDownload];
    descriptor2 = [currentDownload3 descriptor];
    humanReadableUpdateName = [descriptor2 humanReadableUpdateName];
    currentDownload4 = [v78[1] currentDownload];
    currentDownload5 = [v78[1] currentDownload];
    progress = [currentDownload5 progress];
    v2 = [v69 stringWithFormat:@"%@ (%p) (progess: %@)", humanReadableUpdateName, currentDownload4, progress];
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

  v63 = MEMORY[0x277CCACA8];
  v4 = v78[1];
  v5 = objc_opt_class();
  v64 = NSStringFromClass(v5);
  v65 = v78[1];
  options = [v78[1] options];
  operationError = [v78[1] operationError];
  preferredDescriptor = [v78[1] preferredDescriptor];
  v91 = 0;
  v89 = 0;
  if (preferredDescriptor)
  {
    preferredDescriptor2 = [v78[1] preferredDescriptor];
    v61 = 1;
    v91 = 1;
    humanReadableUpdateName2 = [preferredDescriptor2 humanReadableUpdateName];
    v89 = 1;
    v62 = humanReadableUpdateName2;
  }

  else
  {
    v62 = @"(null)";
  }

  v58 = v62;
  preferredDescriptor3 = [v78[1] preferredDescriptor];
  alternateDescriptor = [v78[1] alternateDescriptor];
  v87 = 0;
  v85 = 0;
  if (alternateDescriptor)
  {
    alternateDescriptor2 = [v78[1] alternateDescriptor];
    v56 = 1;
    v87 = 1;
    humanReadableUpdateName3 = [alternateDescriptor2 humanReadableUpdateName];
    v85 = 1;
    v57 = humanReadableUpdateName3;
  }

  else
  {
    v57 = @"(null)";
  }

  v53 = v57;
  alternateDescriptor3 = [v78[1] alternateDescriptor];
  latestDescriptor = [v78[1] latestDescriptor];
  v83 = 0;
  v81 = 0;
  if (latestDescriptor)
  {
    latestDescriptor2 = [v78[1] latestDescriptor];
    v51 = 1;
    v83 = 1;
    humanReadableUpdateName4 = [latestDescriptor2 humanReadableUpdateName];
    v81 = 1;
    v52 = humanReadableUpdateName4;
  }

  else
  {
    v52 = @"(null)";
  }

  latestDescriptor3 = [v78[1] latestDescriptor];
  v50 = latestDescriptor3;
  scanError = [v78[1] scanError];
  v49 = scanError;
  emptyScanResults = [v78[1] emptyScanResults];
  v28 = "NO";
  v29 = "YES";
  if (emptyScanResults)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  if ([v78[1] preferredUpdateDownloadable])
  {
    v10 = v29;
  }

  else
  {
    v10 = v28;
  }

  if ([v78[1] alternateUpdateDownloadable])
  {
    v11 = v29;
  }

  else
  {
    v11 = v28;
  }

  preferredUpdateDownloadError = [v78[1] preferredUpdateDownloadError];
  v48 = preferredUpdateDownloadError;
  alternateUpdateDownloadError = [v78[1] alternateUpdateDownloadError];
  v47 = alternateUpdateDownloadError;
  agreementManager = [v78[1] agreementManager];
  isClearingSpaceForDownload = [v78[1] isClearingSpaceForDownload];
  v31 = location;
  [v78[1] mdmPathRestrictions];
  v45 = SUStringFromMDMSUPath();
  mdmPathRestrictions = [v78[1] mdmPathRestrictions];
  isDelayingUpdate = [v78[1] isDelayingUpdate];
  v15 = v29;
  if ((isDelayingUpdate & 1) == 0)
  {
    v15 = v28;
  }

  v33 = v15;
  isRollingBack = [v78[1] isRollingBack];
  v17 = v29;
  if ((isRollingBack & 1) == 0)
  {
    v17 = v28;
  }

  v34 = v17;
  rollbackDescriptor = [v78[1] rollbackDescriptor];
  currentSeedingDevice = [v78[1] currentSeedingDevice];
  betaPrograms = [v78[1] betaPrograms];
  betaPrograms2 = [v78[1] betaPrograms];
  v35 = [betaPrograms2 count];
  enrolledBetaProgram = [v78[1] enrolledBetaProgram];
  isAutoUpdateScheduled = [v78[1] isAutoUpdateScheduled];
  v19 = v29;
  if ((isAutoUpdateScheduled & 1) == 0)
  {
    v19 = v28;
  }

  v36 = v19;
  isUpdateReadyForInstallation = [v78[1] isUpdateReadyForInstallation];
  v21 = v29;
  if ((isUpdateReadyForInstallation & 1) == 0)
  {
    v21 = v28;
  }

  v37 = v21;
  updateInstallationError = [v78[1] updateInstallationError];
  v38 = &v26;
  v27 = isClearingSpaceForDownload & 1;
  v22 = [v63 stringWithFormat:@"<%@: %p, \n\tscanOptions: %@\n\toperationError: %@\n\tpreferredDescriptor: %@ (%p), \n\talternateDescriptor: %@ (%p), \n\tlatestDescriptor: %@ (%p), \n\tscanError: %@, \n\temptyScanResults: %s, \n\tpreferredUpdateDownloadable: %s, \n\talternateUpdateDownloadable: %s, \n\tpreferredUpdateDownloadError: %@, \n\talternateUpdateDownloadError: %@, \n\tagreementManager: %@, \n\tisClearingSpaceForDownload: %d, \n\tcurrentDownload: %@, \n\tmdmPathRestrictions: %@ (%ld), \n\tisDelayingUpdate: %s\n\tisRollingBack: %s\n\trollbackDescriptor: %p\n\tcurrentSeedingDevice: %p\n\tbetaPrograms: %p (count: %ld)\n\tenrolledBetaProgram: %p\n\tautoUpdateScheduled: %s\n\tisUpdateReadyForInstallation: %s\n\tupdateInstallationError: %@>", v64, v65, options, operationError, v58, preferredDescriptor3, v53, alternateDescriptor3, v52, latestDescriptor3, scanError, v9, v10, v11, preferredUpdateDownloadError, alternateUpdateDownloadError, agreementManager, v27, v31, v45, mdmPathRestrictions, v33, v34, rollbackDescriptor, currentSeedingDevice, betaPrograms, v35, enrolledBetaProgram, v36, v37, updateInstallationError];
  v23 = updateInstallationError;
  v78[2] = v22;
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](enrolledBetaProgram);
  MEMORY[0x277D82BD8](betaPrograms2);
  MEMORY[0x277D82BD8](betaPrograms);
  MEMORY[0x277D82BD8](currentSeedingDevice);
  MEMORY[0x277D82BD8](rollbackDescriptor);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](agreementManager);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  if (v81)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName4);
  }

  if (v83)
  {
    MEMORY[0x277D82BD8](latestDescriptor2);
  }

  MEMORY[0x277D82BD8](latestDescriptor);
  MEMORY[0x277D82BD8](alternateDescriptor3);
  if (v85)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
  }

  if (v87)
  {
    MEMORY[0x277D82BD8](alternateDescriptor2);
  }

  MEMORY[0x277D82BD8](alternateDescriptor);
  MEMORY[0x277D82BD8](preferredDescriptor3);
  if (v89)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
  }

  if (v91)
  {
    MEMORY[0x277D82BD8](preferredDescriptor2);
  }

  MEMORY[0x277D82BD8](preferredDescriptor);
  MEMORY[0x277D82BD8](operationError);
  MEMORY[0x277D82BD8](options);
  MEMORY[0x277D82BD8](v64);
  objc_storeStrong(&location, 0);
  v24 = v78[2];

  return v24;
}

@end